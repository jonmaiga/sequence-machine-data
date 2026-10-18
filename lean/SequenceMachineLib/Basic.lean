import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Data.Int.Bitwise
import Mathlib.Data.Int.Sqrt
import Mathlib.Data.Nat.Choose.Basic
import Mathlib.Data.Nat.Digits.Defs
import Mathlib.Data.Nat.Factorial.Basic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Log
import Mathlib.Data.Nat.Nth
import Mathlib.Data.Rat.Floor
import Mathlib.NumberTheory.Divisors
import Std.Data.HashMap

/-!
# SequenceMachineLib

Lean counterparts of the sequencedb operations whose semantics have no exact equivalent in
Mathlib. The generated program definitions only use Mathlib, Lean core and this library.

Conventions shared with the generator:
* A program is a function `a : ℕ → T` in program indexing (`n = 0` is the first term).
* Values whose interpreter semantics would fail (e.g. a negative index) are junk values.
-/

namespace SequenceMachineLib

/-- How far the Lean definition of a sequence is known to be the OEIS sequence, strongest first. Each
generated sequence `Axxxxxx` has `Axxxxxx.provenance`. A proof that a program equals `Axxxxxx` shows
that the program is correct when the definition is `verified`, correct assuming the OEIS formulas
when it is `assumedProven`, and otherwise only that the program agrees with the definition. -/
inductive Provenance where
  /-- An anchor theorem `Axxxxxx.anchor` proves, in Lean, that the definition is a mathematical
  definition (e.g. from Mathlib). -/
  | verified
  /-- Defined by an OEIS formula that is not marked as a conjecture, and every sequence it uses is
  verified or assumed proven. Lean has not checked the formula. -/
  | assumedProven
  /-- Defined by an OEIS formula that is not marked as a conjecture, but it uses the definitions of
  sequences that are only conditional or conjectured, the definition is correct if theirs are (the
  formula itself is proven). -/
  | conditional
  /-- Defined by a program that matched the known terms, but is not a formula assumed to be proven. -/
  | conjectured
  /-- No definition, the sequence can be referenced but nothing is known about it. -/
  | undefined
  deriving DecidableEq, Repr

/-- Round half away from zero, as `std::round` and `mpfr_round`. The interpreter also uses it to
convert integral real values into integers (`nearest::toIntegral`). -/
def roundAway {α : Type*} [Field α] [LinearOrder α] [IsStrictOrderedRing α] [FloorRing α]
    (x : α) : ℤ :=
  if 0 ≤ x then ⌊x + 1 / 2⌋ else -⌊-x + 1 / 2⌋

/-- The digital root of `|n|`: `0` for `0`, otherwise `1 + (|n| - 1) % 9`. -/
def digitalRoot (n : ℤ) : ℕ :=
  if n = 0 then 0 else 1 + (n.natAbs - 1) % 9

/-- The largest `e` such that `r ^ e ∣ l`, for `0 < l` and `2 ≤ r` (`r` need not be prime).
Outside that domain the interpreter fails and the value is `0`. -/
def valuation (l r : ℕ) : ℕ :=
  if h : 2 ≤ r ∧ 0 < l ∧ r ∣ l then valuation (l / r) r + 1 else 0
termination_by l
decreasing_by exact Nat.div_lt_self h.2.1 (by omega)

/-- The base 10 digits of `m`, least significant first. Unlike `Nat.digits`, `0` has the single
digit `0`. -/
def digits10 (m : ℕ) : List ℕ :=
  if m = 0 then [0] else Nat.digits 10 m

@[noinline]
private unsafe def newCache {α : Type} (_ : ℕ → α) : BaseIO (IO.Ref (Std.HashMap ℕ α)) :=
  IO.mkRef {}

@[noinline]
private unsafe def newValues {α : Type} (_ : ℕ → (ℕ → α) → α) : BaseIO (IO.Ref (Array α)) :=
  IO.mkRef #[]

/-- Executable implementation of `rec`: the values are computed once, in order, and kept for later
calls of the same sequence. -/
private unsafe def recImpl {α : Type} [Zero α] (seeds : List α) (step : ℕ → (ℕ → α) → α) : ℕ → α :=
  let cache := unsafeBaseIO (newValues step)
  fun n => unsafeBaseIO do
    let mut values ← cache.get
    for i in [values.size:n + 1] do
      let v := if h : i < seeds.length then seeds[i] else step i fun j => if j < i then values.getD j 0 else 0
      values := values.push v
    cache.set values
    return values.getD n 0

private unsafe def memoImpl {α : Type} (f : ℕ → α) : ℕ → α :=
  let cache := unsafeBaseIO (newCache f)
  fun n => unsafeBaseIO do
    if let some v := (← cache.get)[n]? then
      return v
    let v := f n
    cache.modify (·.insert n v)
    return v

/-- The definition of `rec` by well-founded recursion. -/
def recWF {α : Type} [Zero α] (seeds : List α) (step : ℕ → (ℕ → α) → α) (n : ℕ) : α :=
  if h : n < seeds.length then seeds[n] else
    step n fun i => if i < n then recWF seeds step i else 0
termination_by n

/-- Seeded strong recursion. `rec seeds step n` is `seeds[n]` for `n < seeds.length`, otherwise
`step n prev`, where `prev i` is the value at `i` for `i < n` (and `0` for `i ≥ n`, where the
interpreter would fail). Unfold it with `rec_of_lt` and `rec_of_le`. -/
@[implemented_by recImpl]
def rec {α : Type} [Zero α] (seeds : List α) (step : ℕ → (ℕ → α) → α) (n : ℕ) : α :=
  recWF seeds step n

theorem rec_of_lt {α : Type} [Zero α] (seeds : List α) (step : ℕ → (ℕ → α) → α) {n : ℕ}
    (h : n < seeds.length) : rec seeds step n = seeds[n] := by
  rw [rec, recWF]
  simp [h]

theorem rec_of_le {α : Type} [Zero α] (seeds : List α) (step : ℕ → (ℕ → α) → α) {n : ℕ}
    (h : seeds.length ≤ n) :
    rec seeds step n = step n fun i => if i < n then rec seeds step i else 0 := by
  rw [rec, recWF]
  simp [Nat.not_lt.mpr h, rec]

/-- `memo f` is `f`. When evaluated, the values of `f` are cached, which keeps definitions that
use other sequences many times (sums, searches, references of references) fast to evaluate. -/
@[reducible, implemented_by memoImpl]
def memo {α : Type} (f : ℕ → α) : ℕ → α :=
  f

@[simp]
theorem memo_apply {α : Type} (f : ℕ → α) (n : ℕ) : memo f n = f n :=
  rfl

/-- The expansion of the ordinary generating function `P(x)/Q(x)`, the polynomials given by their
coefficients (`num[i]` and `den[i]` of `x^i`) with `den[0] = 1`: from `Q(x) * ∑ a n * x^n = P(x)`,
`a n = num[n] - ∑_{i < n} den[n - i] * a i`. `SequenceMachineLib.ogf_eq_coeff` (in
`SequenceMachineLib.Ogf`) proves that the values are the coefficients of the power series. Unfold it with
`ogf_apply`. -/
def ogf (num den : List ℤ) : ℕ → ℤ :=
  rec [] fun n a => num.getD n 0 - ∑ i ∈ Finset.range n, den.getD (n - i) 0 * a i

theorem ogf_apply (num den : List ℤ) (n : ℕ) :
    ogf num den n = num.getD n 0 - ∑ i ∈ Finset.range n, den.getD (n - i) 0 * ogf num den i := by
  rw [ogf, rec_of_le _ _ (by simp)]
  congr 1
  refine Finset.sum_congr rfl fun i hi => ?_
  simp [Finset.mem_range.mp hi]

/-- Reports `ok name` when the values are the expected terms, otherwise `fail name values`. The line
is appended to the file named by `SEQUENCE_MACHINE_CHECK_OUT` right away (the checker follows it to
time out slow checks), or printed when it is not set. -/
def check {α : Type} [BEq α] [ToString α] (name : String) (values expected : List α) : IO Unit := do
  let line := if values == expected then s!"ok {name}" else s!"fail {name} {values}"
  match ← IO.getEnv "SEQUENCE_MACHINE_CHECK_OUT" with
  | some path => IO.FS.withFile path .append fun h => h.putStrLn line
  | none => IO.println line

/-- Executable implementation of `nth`: a linear search that does not terminate when there are
fewer than `k + 1` indices satisfying `p`. -/
partial def nthImpl (p : ℕ → Prop) [DecidablePred p] (k : ℕ) : ℕ :=
  go 0 k
where
  go (i k : ℕ) : ℕ :=
    if p i then (if k = 0 then i else go (i + 1) (k - 1)) else go (i + 1) k

/-- The `k`-th (0-based) natural number satisfying `p`, i.e. `Nat.nth p k`. It carries an
executable implementation so that definitions using it can be evaluated. -/
@[implemented_by nthImpl]
def nth (p : ℕ → Prop) [DecidablePred p] (k : ℕ) : ℕ :=
  Nat.nth p k

theorem nth_eq (p : ℕ → Prop) [DecidablePred p] (k : ℕ) : nth p k = Nat.nth p k :=
  rfl

end SequenceMachineLib

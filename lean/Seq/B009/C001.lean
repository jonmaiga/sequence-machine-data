import SequenceMachineLib.Basic
import Seq.B000.C038
import Seq.B001.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B004.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A392262.P13598658566703554878

`filter[A388427(n+1), A373252(#)]`
-/

namespace A392262.P13598658566703554878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A392262.P13598658566703554878

noncomputable section

/-- A392262: Even composite numbers that are squarefree or powers of 2.

Offset 1, canonical program `A392262.P13598658566703554878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262 (n : ℕ) : ℤ :=
  A392262.P13598658566703554878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392008.P17754512782616058179

`filter[A216918(n+1), A323154(#)]`
-/

namespace A392008.P17754512782616058179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A392008.P17754512782616058179

noncomputable section

/-- A392008: Odd squarefree integers with at least 3 prime factors.

Offset 1, canonical program `A392008.P17754512782616058179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A392008 (n : ℕ) : ℤ :=
  A392008.P17754512782616058179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A392008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392109.P12073788639795556872

`∑{p}[A249740(n+1), #]`
-/

namespace A392109.P12073788639795556872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P12073788639795556872

noncomputable section

/-- A392109: a(n) = largest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

Offset 1, canonical program `A392109.P12073788639795556872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109 (n : ℕ) : ℤ :=
  (A392109.P12073788639795556872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392871.P11237529172868183968

`eq[1, A392865(n+1)]+1`
-/

namespace A392871.P11237529172868183968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392871.P11237529172868183968

noncomputable section

/-- A392871: Numbers k such that k == 1 mod A117366(k), where A117366(n) gives the smallest prime greater than the largest prime dividing n.

Offset 1, canonical program `A392871.P11237529172868183968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871 (n : ℕ) : ℤ :=
  (A392871.P11237529172868183968.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A392871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394383.P17827104241650237715

`A006530(n+1)^A052126(n+1)`
-/

namespace A394383.P17827104241650237715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P17827104241650237715

noncomputable section

/-- A394383: a(n) = f^(n/f), where f is the largest prime factor of n.

Offset 1, canonical program `A394383.P17827104241650237715`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394383 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394383.P17827104241650237715.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394383.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390665.P2218711322630550871

`A034448(A053149(n+1))`
-/

namespace A390665.P2218711322630550871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A053149 (n + 1)).toNat

end

end A390665.P2218711322630550871

noncomputable section

/-- A390665: The sum of the unitary divisors of the smallest cube divisible by n.

Offset 1, canonical program `A390665.P2218711322630550871`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665 (n : ℕ) : ℤ :=
  A390665.P2218711322630550871.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390665.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390754.P7808372230478735667

`A000010(A053149(n+1))`
-/

namespace A390754.P7808372230478735667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A053149 (n + 1)).toNat

end

end A390754.P7808372230478735667

noncomputable section

/-- A390754: The Euler totient of the smallest cube divisible by n.

Offset 1, canonical program `A390754.P7808372230478735667`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390754 (n : ℕ) : ℤ :=
  A390754.P7808372230478735667.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392088.P2713772725741587424

`A047994(A053149(n+1))`
-/

namespace A392088.P2713772725741587424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053149 (n + 1)).toNat

end

end A392088.P2713772725741587424

noncomputable section

/-- A392088: The unitary totient of the smallest cube divisible by n.

Offset 1, canonical program `A392088.P2713772725741587424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392088 (n : ℕ) : ℤ :=
  A392088.P2713772725741587424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047994, A053149, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392169.P12898871919302007808

`A001615(A053149(n+1))`
-/

namespace A392169.P12898871919302007808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053149 (n + 1)).toNat

end

end A392169.P12898871919302007808

noncomputable section

/-- A392169: The Dedekind psi function value of the smallest cube divisible by n.

Offset 1, canonical program `A392169.P12898871919302007808`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169 (n : ℕ) : ℤ :=
  A392169.P12898871919302007808.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392169.provenance : SequenceMachineLib.Provenance := .conditional


import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C008
import Seq.B000.C024
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B002.C000
import Seq.B002.C006
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A385614.P9354234976025821991

`A066846(lt[1, A173075(n)])`
-/

namespace A385614.P9354234976025821991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A385614.P9354234976025821991

noncomputable section

/-- A385614: Numbers of the form x^x + y^y, 1 < x < y.

Offset 1, canonical program `A385614.P9354234976025821991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614 (n : ℕ) : ℤ :=
  A385614.P9354234976025821991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391184.P7621874213617609093

`∑{d}[n+1, A391183(#)]`
-/

namespace A391184.P7621874213617609093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A391183 d

end

end A391184.P7621874213617609093

noncomputable section

/-- A391184: The number of divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391184.P7621874213617609093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391184 (n : ℕ) : ℤ :=
  A391184.P7621874213617609093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391185.P10323156669665891004

`∑{d}[n+1, #*A391183(#)]`
-/

namespace A391185.P10323156669665891004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A391183 d

end

end A391185.P10323156669665891004

noncomputable section

/-- A391185: The sum of the divisors of n that are of the form x^2 + 2*y^2 (A002479).

Offset 1, canonical program `A391185.P10323156669665891004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391185 (n : ℕ) : ℤ :=
  A391185.P10323156669665891004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394579.P10493215658390247642

`filter[A081754(n+2), A212793(#)]`
-/

namespace A394579.P10493215658390247642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A394579.P10493215658390247642

noncomputable section

/-- A394579: Moduli m in which a multiplicative square-root function exists over the ring of integers Z_m.

Offset 1, canonical program `A394579.P10493215658390247642`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. -/
def A394579 (n : ℕ) : ℤ :=
  A394579.P10493215658390247642.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8769 terms. -/
def A394579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383589.P15006316624676943189

`A378762(A381662(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383589.P15006316624676943189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378762 (A381662 (n + 1)).toNat

end

end A383589.P15006316624676943189

noncomputable section

/-- A383589: a(n) = A378762(A381662(n)).

Offset 1, canonical program `A383589.P15006316624676943189`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378762, A381662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383589 (n : ℕ) : ℤ :=
  A383589.P15006316624676943189.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378762, A381662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A383589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383667.P532673511746496279

`A007088(A383666(n+1))`
-/

namespace A383667.P532673511746496279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A383666 (n + 1)).toNat

end

end A383667.P532673511746496279

noncomputable section

/-- A383667: Binary words beginning with 1 in which no binary digit occurs only once.

Offset 1, canonical program `A383667.P532673511746496279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383667 (n : ℕ) : ℤ :=
  A383667.P532673511746496279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375339.P15531892333472399892

`A005361(n+1)*A359466(n+1)`
-/

namespace A375339.P15531892333472399892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A359466 (n + 1)

end

end A375339.P15531892333472399892

noncomputable section

/-- A375339: If n has exactly one non-unitary prime factor then a(n) is the exponent of the highest power of this prime that divides n, otherwise a(n) = 0.

Offset 1, canonical program `A375339.P15531892333472399892`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A359466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375339 (n : ℕ) : ℤ :=
  A375339.P15531892333472399892.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A359466, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375339.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375342.P14847801276659262859

`A051903(A375142(n+1))`
-/

namespace A375342.P14847801276659262859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375142 (n + 1)).toNat

end

end A375342.P14847801276659262859

noncomputable section

/-- A375342: The maximum exponent in the prime factorization of the numbers whose powerful part is a power of a squarefree number that is larger than 1.

Offset 1, canonical program `A375342.P14847801276659262859`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375342 (n : ℕ) : ℤ :=
  A375342.P14847801276659262859.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379008.P3415151612252478945

`A324348(A253551(n+1))`
-/

namespace A379008.P3415151612252478945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324348 (A253551 (n + 1)).toNat

end

end A379008.P3415151612252478945

noncomputable section

/-- A379008: Square array A(n, k) = A294898(A246278(n, k)), read by falling antidiagonals; Difference A005187(n)-A000203(n) applied to the prime shift array.

Offset 1, canonical program `A379008.P3415151612252478945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A379008 (n : ℕ) : ℤ :=
  A379008.P3415151612252478945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A379008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379010.P3489266451828955209

`A290077(A253551(n+1))`
-/

namespace A379010.P3489266451828955209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290077 (A253551 (n + 1)).toNat

end

end A379010.P3489266451828955209

noncomputable section

/-- A379010: Square array A(n, k) = phi(A246278(n, k)), read by falling antidiagonals; Euler totient function applied to the prime shift array.

Offset 1, canonical program `A379010.P3489266451828955209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A379010 (n : ℕ) : ℤ :=
  A379010.P3489266451828955209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A379010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382255.P11079232135365074107

`A246029(A035327(2*n+1))*A246029(n)`
-/

namespace A382255.P11079232135365074107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A035327 (2 * n + 1)).toNat * A246029 n

end

end A382255.P11079232135365074107

noncomputable section

/-- A382255: Heinz number of the partition corresponding to run lengths in the bits of n.

Offset 0, canonical program `A382255.P11079232135365074107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A382255 (n : ℕ) : ℤ :=
  A382255.P11079232135365074107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A382255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384519.P13348821675057678145

`∩[A072587(n+1), A375142(n+1)]`
-/

namespace A384519.P13348821675057678145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384519.P13348821675057678145

noncomputable section

/-- A384519: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an even power (A384517).

Offset 1, canonical program `A384519.P13348821675057678145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. -/
def A384519 (n : ℕ) : ℤ :=
  (A384519.P13348821675057678145.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7347 terms. -/
def A384519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384520.P4473728622954603946

`filter[A375142(n+1), A295316(#)]`
-/

namespace A384520.P4473728622954603946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A384520.P4473728622954603946

noncomputable section

/-- A384520: Numbers whose powerful part (A057521) is greater than 1 and is equal to a squarefree number raised to an odd power (A384518).

Offset 1, canonical program `A384520.P4473728622954603946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A384520 (n : ℕ) : ℤ :=
  A384520.P4473728622954603946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2653 terms. -/
def A384520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384667.P10362112052039593468

`A354353(n+1)+A010055(n+1)`
-/

namespace A384667.P10362112052039593468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354353 (n + 1) + A010055 (n + 1)

end

end A384667.P10362112052039593468

noncomputable section

/-- A384667: Characteristic function of powers of squarefree numbers (A072774).

Offset 1, canonical program `A384667.P10362112052039593468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384667 (n : ℕ) : ℤ :=
  A384667.P10362112052039593468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390312.P4179282321994300031

`lt[0, A336352(n+1)]+1`
-/

namespace A390312.P4179282321994300031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336352 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A390312.P4179282321994300031

noncomputable section

/-- A390312: Numbers k such that sigma(k) has at least one prime factor larger than the largest prime factor of k.

Offset 1, canonical program `A390312.P4179282321994300031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A390312 (n : ℕ) : ℤ :=
  (A390312.P4179282321994300031.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. -/
def A390312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390694.P8682946174690617644

`(n+1)*A390692(n+1)`
-/

namespace A390694.P8682946174690617644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390692 (n + 1)

end

end A390694.P8682946174690617644

noncomputable section

/-- A390694: The smallest multiple of n that is a Loeschian number (A003136).

Offset 1, canonical program `A390694.P8682946174690617644`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390694 (n : ℕ) : ℤ :=
  A390694.P8682946174690617644.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393697.P7831953345102612304

`A393562(n)-A172471(n)`
-/

namespace A393697.P7831953345102612304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393562 n - A172471 n

end

end A393697.P7831953345102612304

noncomputable section

/-- A393697: a(n) is the number of unit squares in the square lattice, divided by 4, that have 1 vertex strictly inside and 3 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393697.P7831953345102612304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697 (n : ℕ) : ℤ :=
  A393697.P7831953345102612304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398316.P8351843934457800232

`filter[A396269(n+1), A359466(#)]`
-/

namespace A398316.P8351843934457800232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A398316.P8351843934457800232

noncomputable section

/-- A398316: Numbers of the form p^2*s, where p is prime, s is squarefree, gcd(p,s) = 1, and A001221(s) >= 2.

Offset 1, canonical program `A398316.P8351843934457800232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. -/
def A398316 (n : ℕ) : ℤ :=
  A398316.P8351843934457800232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8673 terms. -/
def A398316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378309.P13305048339565942399

`A010051(n+1)+A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378309.P13305048339565942399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A001222 (n + 1)

end

end A378309.P13305048339565942399

noncomputable section

/-- A378309: a(n) = A010051(n) + A001222(n).

Offset 1, canonical program `A378309.P13305048339565942399`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378309 (n : ℕ) : ℤ :=
  A378309.P13305048339565942399.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379681.P11517682224062848711

`A056239(n+1)+A003963(n+1)`
-/

namespace A379681.P11517682224062848711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A003963 (n + 1)

end

end A379681.P11517682224062848711

noncomputable section

/-- A379681: Sum plus product of the multiset of prime indices of n.

Offset 1, canonical program `A379681.P11517682224062848711`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379681 (n : ℕ) : ℤ :=
  A379681.P11517682224062848711.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A056239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380344.P8003750175292629096

`A003963(n+1)-A001414(n+1)`
-/

namespace A380344.P8003750175292629096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) - A001414 (n + 1)

end

end A380344.P8003750175292629096

noncomputable section

/-- A380344: Product of prime indices minus sum of prime factors of n.

Offset 1, canonical program `A380344.P8003750175292629096`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380344 (n : ℕ) : ℤ :=
  A380344.P8003750175292629096.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380344.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380345.P3416860299638001481

`n+1+A056239(n+1)`
-/

namespace A380345.P3416860299638001481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A056239 (n + 1)

end

end A380345.P3416860299638001481

noncomputable section

/-- A380345: a(n) = n + sum of prime indices of n.

Offset 1, canonical program `A380345.P3416860299638001481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380345 (n : ℕ) : ℤ :=
  A380345.P3416860299638001481.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380345.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380409.P2904522340196299969

`A003963(n+1)+A001414(n+1)`
-/

namespace A380409.P2904522340196299969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1) + A001414 (n + 1)

end

end A380409.P2904522340196299969

noncomputable section

/-- A380409: Product of prime indices plus sum of prime factors.

Offset 1, canonical program `A380409.P2904522340196299969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380409 (n : ℕ) : ℤ :=
  A380409.P2904522340196299969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003963, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380409.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381312.P9121051860855082325

`filter[A377844(n+1), A359466(#)]`
-/

namespace A381312.P9121051860855082325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A381312.P9121051860855082325

noncomputable section

/-- A381312: Numbers whose powerful part (A057521) is a power of a prime with an odd exponent >= 3 (A056824).

Offset 1, canonical program `A381312.P9121051860855082325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. -/
def A381312 (n : ℕ) : ℤ :=
  A381312.P9121051860855082325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8129 terms. -/
def A381312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382413.P15062099165486915148

`comp[A382412(n+1)]`
-/

namespace A382413.P15062099165486915148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382413.P15062099165486915148

noncomputable section

/-- A382413: Numbers with at least one zero in their base-7 representation.

Offset 1, canonical program `A382413.P15062099165486915148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382413 (n : ℕ) : ℤ :=
  (A382413.P15062099165486915148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386572.P15637048353248042012

`comp[n-A001222(n+1)]+1`
-/

namespace A386572.P15637048353248042012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386572.P15637048353248042012

noncomputable section

/-- A386572: Numbers that are not of the form k - Omega(k), where Omega(k) is the number of prime factors of k counted with multiplicity.

Offset 1, canonical program `A386572.P15637048353248042012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386572 (n : ℕ) : ℤ :=
  (A386572.P15637048353248042012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390691.P14711029984836863784

`(n+1)/A390692(n+1)`
-/

namespace A390691.P14711029984836863784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A390692 (n + 1) : ℚ)

end

end A390691.P14711029984836863784

noncomputable section

/-- A390691: The largest divisor of n that is a Loeschian number (A003136).

Offset 1, canonical program `A390691.P14711029984836863784`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390691 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390691.P14711029984836863784.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A390692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391900.P11135445181283333301

`A001222(A005361(n+1))`
-/

namespace A391900.P11135445181283333301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005361 (n + 1)).toNat

end

end A391900.P11135445181283333301

noncomputable section

/-- A391900: The total number of prime factors (counted with multiplicity) of the prime factorization exponents of n.

Offset 1, canonical program `A391900.P11135445181283333301`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391900 (n : ℕ) : ℤ :=
  A391900.P11135445181283333301.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A005361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391900.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395282.P4869537209626327474

`∑{d}[n+1, A008683(#)*A048575((n+1)/#-1)]`
-/

namespace A395282.P4869537209626327474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A395282.P4869537209626327474

noncomputable section

/-- A395282: a(n) = Sum_{d|n} mu(d)*Fibonacci(2*(n/d)+1).

Offset 1, canonical program `A395282.P4869537209626327474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A395282 (n : ℕ) : ℤ :=
  A395282.P4869537209626327474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A395282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398543.P3266382039981285700

`A008683(A000026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398543.P3266382039981285700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000026 (n + 1)).toNat

end

end A398543.P3266382039981285700

noncomputable section

/-- A398543: a(n) = A008683(A000026(n)).

Offset 1, canonical program `A398543.P3266382039981285700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398543 (n : ℕ) : ℤ :=
  A398543.P3266382039981285700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000026, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385777.P3819637133373039858

`∩[A386087(n+1), A386106(n+1)]`
-/

namespace A385777.P3819637133373039858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P3819637133373039858

noncomputable section

/-- A385777: Primes having only {1, 3, 6} as digits.

Offset 1, canonical program `A385777.P3819637133373039858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. -/
def A385777 (n : ℕ) : ℤ :=
  (A385777.P3819637133373039858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. -/
def A385777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386573.P13918329885309829820

`A351113(∏{p}[n+1, #])`
-/

namespace A386573.P13918329885309829820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351113 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386573.P13918329885309829820

noncomputable section

/-- A386573: Sum of the squarefree balanced divisors of n.

Offset 1, canonical program `A386573.P13918329885309829820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573 (n : ℕ) : ℤ :=
  A386573.P13918329885309829820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386574.P1108007266045445128

`A351112(∏{p}[n+1, #])`
-/

namespace A386574.P1108007266045445128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351112 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A386574.P1108007266045445128

noncomputable section

/-- A386574: Number of squarefree balanced divisors of n.

Offset 1, canonical program `A386574.P1108007266045445128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574 (n : ℕ) : ℤ :=
  A386574.P1108007266045445128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386589.P14364682863583384821

`A000005(n+1)+A351113(n+1)-A351112(n+1)`
-/

namespace A386589.P14364682863583384821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A351113 (n + 1) - A351112 (n + 1)

end

end A386589.P14364682863583384821

noncomputable section

/-- A386589: a(n) = Sum_{d|n} d^c(d), where c = A351114.

Offset 1, canonical program `A386589.P14364682863583384821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589 (n : ℕ) : ℤ :=
  A386589.P14364682863583384821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386589.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386591.P14499915022508730926

`A000005(n+1)-A351112(n+1)`
-/

namespace A386591.P14499915022508730926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A351112 (n + 1)

end

end A386591.P14499915022508730926

noncomputable section

/-- A386591: Number of divisors of n that are not balanced numbers.

Offset 1, canonical program `A386591.P14499915022508730926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386591 (n : ℕ) : ℤ :=
  A386591.P14499915022508730926.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A351112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386592.P13459167421288589562

`A000203(n+1)-A351113(n+1)`
-/

namespace A386592.P13459167421288589562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A351113 (n + 1)

end

end A386592.P13459167421288589562

noncomputable section

/-- A386592: Sum of the divisors of n that are not balanced numbers.

Offset 1, canonical program `A386592.P13459167421288589562`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592 (n : ℕ) : ℤ :=
  A386592.P13459167421288589562.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351113, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386592.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394683.P11002460213357766663

`A382617(n+1)²+1`
-/

namespace A394683.P11002460213357766663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382617 (n + 1) ^ 2 + 1

end

end A394683.P11002460213357766663

noncomputable section

/-- A394683: a(n) = (m*p)^2 + 1 where p = A002496(n) is the n-th prime of the form m^2 + 1.

Offset 1, canonical program `A394683.P11002460213357766663`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394683 (n : ℕ) : ℤ :=
  A394683.P11002460213357766663.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382617, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394683.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375145.P4922130066098864515

`eq[1, A295659(n+1)]+1`
-/

namespace A375145.P4922130066098864515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375145.P4922130066098864515

noncomputable section

/-- A375145: Numbers whose prime factorization has exactly one exponent that is larger than 2.

Offset 1, canonical program `A375145.P4922130066098864515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8078 terms. -/
def A375145 (n : ℕ) : ℤ :=
  (A375145.P4922130066098864515.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8078 terms. -/
def A375145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380397.P18209740756317370687

`A061704(n+1)-A380395(n+1)`
-/

namespace A380397.P18209740756317370687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1) - A380395 (n + 1)

end

end A380397.P18209740756317370687

noncomputable section

/-- A380397: The number of nonunitary divisors of n that are cubes.

Offset 1, canonical program `A380397.P18209740756317370687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, A380395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380397 (n : ℕ) : ℤ :=
  A380397.P18209740756317370687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, A380395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380397.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389212.P149666161201515317

`lt[A325978(n+1), A347871(n+1)]+1`
-/

namespace A389212.P149666161201515317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A389212.P149666161201515317

noncomputable section

/-- A389212: Numbers k such that A048146(k)+A162296(k) > 2*k, where A048146 is the sum of non-unitary divisors of n, and A162296 is the sum of divisors of n that have a square factor.

Offset 1, canonical program `A389212.P149666161201515317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. -/
def A389212 (n : ℕ) : ℤ :=
  (A389212.P149666161201515317.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4496 terms. -/
def A389212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390259.P10734854539263460431

`2*A061704(8*(n+1))-3*A061704(n+1)`
-/

namespace A390259.P10734854539263460431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061704 (8 * (n + 1)) - 3 * A061704 (n + 1)

end

end A390259.P10734854539263460431

noncomputable section

/-- A390259: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^3)/(1-x^(k^3)).

Offset 1, canonical program `A390259.P10734854539263460431`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390259 (n : ℕ) : ℤ :=
  A390259.P10734854539263460431.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061704, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383764.P4000777454404002987

`A071974((n+1)*A365683(n+1))`
-/

namespace A383764.P4000777454404002987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 ((n + 1 : ℤ) * A365683 (n + 1)).toNat

end

end A383764.P4000777454404002987

noncomputable section

/-- A383764: The largest unitary divisor of n that is an exponentially squarefree number.

Offset 1, canonical program `A383764.P4000777454404002987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A383764 (n : ℕ) : ℤ :=
  A383764.P4000777454404002987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A383764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386468.P12637838022396373735

`A051903(A365683(n+1))`
-/

namespace A386468.P12637838022396373735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A365683 (n + 1)).toNat

end

end A386468.P12637838022396373735

noncomputable section

/-- A386468: The maximum exponent in the prime factorization of the largest exponentially squarefree divisor of n.

Offset 1, canonical program `A386468.P12637838022396373735`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386468 (n : ℕ) : ℤ :=
  A386468.P12637838022396373735.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A365683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383906.P235347200383278698

`∩[A001358(n+1), A036301(n+1)]`
-/

namespace A383906.P235347200383278698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383906.P235347200383278698

noncomputable section

/-- A383906: Semiprimes k such that the sums of the even digits of k and of the odd digits of k are equal.

Offset 1, canonical program `A383906.P235347200383278698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A383906 (n : ℕ) : ℤ :=
  (A383906.P235347200383278698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 709 terms. -/
def A383906.provenance : SequenceMachineLib.Provenance := .conjectured


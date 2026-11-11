import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C009
import Seq.B000.C017
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A389072.P9493856441358522576

`n+1-A388286(n+1)`
-/

namespace A389072.P9493856441358522576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A388286 (n + 1)

end

end A389072.P9493856441358522576

noncomputable section

/-- A389072: Möbius transform of A325974, where A325974 is the arithmetic mean of {sum of non-unitary divisors} and {sum of nonsquarefree divisors}.

Offset 1, canonical program `A389072.P9493856441358522576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389072 (n : ℕ) : ℤ :=
  A389072.P9493856441358522576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389905.P14127833197963390982

`A107078(n+1)*(1-A112526(n+1))`
-/

namespace A389905.P14127833197963390982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) * (1 - A112526 (n + 1))

end

end A389905.P14127833197963390982

noncomputable section

/-- A389905: a(n) = 1 if n is neither squarefree nor powerful, otherwise 0.

Offset 1, canonical program `A389905.P14127833197963390982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389905 (n : ℕ) : ℤ :=
  A389905.P14127833197963390982.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389905.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390260.P12756077447559123677

`2*A063775(16*(n+1))-3*A063775(n+1)`
-/

namespace A390260.P12756077447559123677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063775 (16 * (n + 1)) - 3 * A063775 (n + 1)

end

end A390260.P12756077447559123677

noncomputable section

/-- A390260: Expansion of Sum_{k>=1} (-1)^(k+1)*x^(k^4)/(1-x^(k^4)).

Offset 1, canonical program `A390260.P12756077447559123677`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390260 (n : ℕ) : ℤ :=
  A390260.P12756077447559123677.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390299.P4751859419815564239

`A002472(n+1)*A100063(n+1)`
-/

namespace A390299.P4751859419815564239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1) * A100063 (n + 1)

end

end A390299.P4751859419815564239

noncomputable section

/-- A390299: Number of positive z <= n such that z^2 - 9^g is relatively prime to n (for any particular positive integer g).

Offset 1, canonical program `A390299.P4751859419815564239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390299 (n : ℕ) : ℤ :=
  A390299.P4751859419815564239.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390299.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391597.P14152947396835619235

`2*(A006218(n+1)+A061201(n+1))+A013936(n+1)-(n+1)`
-/

namespace A391597.P14152947396835619235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006218 (n + 1) + A061201 (n + 1)) + A013936 (n + 1) - (n + 1 : ℤ)

end

end A391597.P14152947396835619235

noncomputable section

/-- A391597: a(n) is the number of quadratic polynomials with coefficients in {-n, ..., n}, positive leading coefficient, and having two integer roots.

Offset 1, canonical program `A391597.P14152947396835619235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391597 (n : ℕ) : ℤ :=
  A391597.P14152947396835619235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391597.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398463.P753977206100688951

`A360969(n+1)*(n+1)`
-/

namespace A398463.P753977206100688951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360969 (n + 1) * (n + 1 : ℤ)

end

end A398463.P753977206100688951

noncomputable section

/-- A398463: Multiplicative with a(p^e) = e^2 * p^e.

Offset 1, canonical program `A398463.P753977206100688951`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398463 (n : ℕ) : ℤ :=
  A398463.P753977206100688951.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398463.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A398543.P3266382039981285700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398543 (n : ℕ) : ℤ :=
  A398543.P3266382039981285700.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398576.P17709678476820359098

`A008836(A000026(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398576.P17709678476820359098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A000026 (n + 1)).toNat

end

end A398576.P17709678476820359098

noncomputable section

/-- A398576: a(n) = A008836(A000026(n)).

Offset 1, canonical program `A398576.P17709678476820359098`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398576 (n : ℕ) : ℤ :=
  A398576.P17709678476820359098.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398576.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389162.P5482749429256733056

`A034448(n+1)-A048250(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389162.P5482749429256733056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A048250 (n + 1)

end

end A389162.P5482749429256733056

noncomputable section

/-- A389162: a(n) = A034448(n) - A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389162.P5482749429256733056`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389162 (n : ℕ) : ℤ :=
  A389162.P5482749429256733056.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389162.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389462.P16419255327458964044

`∪[A013929(n+1), A023196(n+1)]`
-/

namespace A389462.P16419255327458964044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389462.P16419255327458964044

noncomputable section

/-- A389462: Numbers whose sum of proper divisors (A001065) is equal to or greater than their squarefree kernel (A007947).

Offset 1, canonical program `A389462.P16419255327458964044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389462 (n : ℕ) : ℤ :=
  (A389462.P16419255327458964044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389532.P10753604552045848373

`eq[1-(val(n, 2)-a(n-1)), A087117(n)]` with `a(0)=2, a(1)=0`
-/

namespace A389532.P10753604552045848373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  1 - ((SequenceMachineLib.valuation n 2 : ℤ) - f1 (n - 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389532.P10753604552045848373

noncomputable section

/-- A389532: Standard composition numbers of integer compositions with maximum = length.

Offset 1, canonical program `A389532.P10753604552045848373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A389532 (n : ℕ) : ℤ :=
  (A389532.P10753604552045848373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 843 terms. -/
def A389532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390329.P2105305109020500693

`lt[A067434(1+n)%2, 1]+1`
-/

namespace A390329.P2105305109020500693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (1 + n)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390329.P2105305109020500693

noncomputable section

/-- A390329: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is even.

Offset 1, canonical program `A390329.P2105305109020500693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329 (n : ℕ) : ℤ :=
  (A390329.P2105305109020500693.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A390329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390330.P15860536857581709408

`lt[0, A067434(n+1)%2]+1`
-/

namespace A390330.P15860536857581709408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067434 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A390330.P15860536857581709408

noncomputable section

/-- A390330: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is odd.

Offset 0, canonical program `A390330.P15860536857581709408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A390330 (n : ℕ) : ℤ :=
  (A390330.P15860536857581709408.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A390330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390554.P5277183224943981996

`A000203((n+1)/A007947(n+1))*A034448((n+1)*A007947(n+1))`
-/

namespace A390554.P5277183224943981996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat * A034448 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A390554.P5277183224943981996

noncomputable section

/-- A390554: a(n) is the sum of the bi-unitary divisors of n^2.

Offset 1, canonical program `A390554.P5277183224943981996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390554 (n : ℕ) : ℤ :=
  A390554.P5277183224943981996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390613.P13768311840881029602

`∩[A034961(n+1), A166039(n+1)]`
-/

namespace A390613.P13768311840881029602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390613.P13768311840881029602

noncomputable section

/-- A390613: Numbers that are the sum of three consecutive primes and also the sum of three consecutive composites.

Offset 1, canonical program `A390613.P13768311840881029602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613 (n : ℕ) : ℤ :=
  (A390613.P13768311840881029602.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 507 terms. -/
def A390613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390800.P11464708806357456531

`(n+1+A010055(n+1))*A131233(n+1)/2`
-/

namespace A390800.P11464708806357456531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A010055 (n + 1)) * A131233 (n + 1) : ℚ) / 2

end

end A390800.P11464708806357456531

noncomputable section

/-- A390800: The sum of the integers k from 1 to n such that gcd(n, k) is a power of a prime (A000961).

Offset 1, canonical program `A390800.P11464708806357456531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390800 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390800.P11464708806357456531.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390800.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390958.P3512256824104388828

`A390957(A072587(n+1))`
-/

namespace A390958.P3512256824104388828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390957 (A072587 (n + 1)).toNat

end

end A390958.P3512256824104388828

noncomputable section

/-- A390958: The number of non-bi-unitary divisors of the numbers that are not exponentially odd.

Offset 1, canonical program `A390958.P3512256824104388828`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390958 (n : ℕ) : ℤ :=
  A390958.P3512256824104388828.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072587, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391747.P12893955322545124689

`∏{p}[A195017(n+1), A056674(#)]`
-/

namespace A391747.P12893955322545124689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A056674 p

end

end A391747.P12893955322545124689

noncomputable section

/-- A391747: a(n) = 1 if -1 <= A195017(n) <= 1, otherwise 0, where A195017(n) = Sum_{k >= 1} c_k*((-1)^(k-1)), when n = Product_{k >= 1} (p_k)^(c_k), with p_k the k-th prime.

Offset 1, canonical program `A391747.P12893955322545124689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391747 (n : ℕ) : ℤ :=
  A391747.P12893955322545124689.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393211.P7893023393097711899

`n-A176965(A087230(1+n))+1`
-/

namespace A393211.P7893023393097711899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A176965 (A087230 (1 + n)).toNat + 1

end

end A393211.P7893023393097711899

noncomputable section

/-- A393211: Number computed by Wolfram's 2-state 2-symbol Turing machine 773 when started with n on the tape.

Offset 1, canonical program `A393211.P7893023393097711899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211 (n : ℕ) : ℤ :=
  A393211.P7893023393097711899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393232.P14261252287719027146

`A047241(A087230(n+1))`
-/

namespace A393232.P14261252287719027146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (A087230 (n + 1)).toNat

end

end A393232.P14261252287719027146

noncomputable section

/-- A393232: Halting time for Wolfram's 2-state 2-symbol Turing machine 897 when started with n on the tape.

Offset 1, canonical program `A393232.P14261252287719027146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232 (n : ℕ) : ℤ :=
  A393232.P14261252287719027146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393233.P12718541263085678576

`A163980(A087230(n+1))`
-/

namespace A393233.P12718541263085678576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A087230 (n + 1)).toNat

end

end A393233.P12718541263085678576

noncomputable section

/-- A393233: Halting time for Wolfram's 2-state 2-symbol Turing machine 919 when started with n on the tape.

Offset 1, canonical program `A393233.P12718541263085678576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233 (n : ℕ) : ℤ :=
  A393233.P12718541263085678576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394481.P10475431677930788014

`A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394481.P10475431677930788014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) + A000005 (n + 1) - A000005 (A007947 (n + 1)).toNat

end

end A394481.P10475431677930788014

noncomputable section

/-- A394481: a(n) = usigma(n) + tau(n) - tau(rad(n)).

Offset 1, canonical program `A394481.P10475431677930788014`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394481 (n : ℕ) : ℤ :=
  A394481.P10475431677930788014.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A394481.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394619.P12031009564495718433

`A391713(A126706(n+1))`
-/

namespace A394619.P12031009564495718433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (A126706 (n + 1)).toNat

end

end A394619.P12031009564495718433

noncomputable section

/-- A394619: Number of divisors d | k such that d is neither squarefree nor squareful (in A332785) and k = A126706(n).

Offset 1, canonical program `A394619.P12031009564495718433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619 (n : ℕ) : ℤ :=
  A394619.P12031009564495718433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3866 terms. -/
def A394619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395435.P18346761836883339857

`A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395435.P18346761836883339857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A034448 (n + 1) + A000005 (A007947 (n + 1)).toNat

end

end A395435.P18346761836883339857

noncomputable section

/-- A395435: a(n) = sigma(n) - usigma(n) + tau(rad(n)).

Offset 1, canonical program `A395435.P18346761836883339857`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395435 (n : ℕ) : ℤ :=
  A395435.P18346761836883339857.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395435.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396336.P13045972141286078433

`∑{d}[n+1, A055615(#)*A333645((n+1)/#)]`
-/

namespace A396336.P13045972141286078433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396336.P13045972141286078433

noncomputable section

/-- A396336: Dirichlet convolution of A047994 with A023900.

Offset 1, canonical program `A396336.P13045972141286078433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336 (n : ℕ) : ℤ :=
  A396336.P13045972141286078433.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397412.P16519194348179518311

`A071773(n+1)*A112526(n+1)`
-/

namespace A397412.P16519194348179518311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) * A112526 (n + 1)

end

end A397412.P16519194348179518311

noncomputable section

/-- A397412: Dirichlet g.f.: zeta(s) * Product_{p prime} (1 - 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397412.P16519194348179518311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412 (n : ℕ) : ℤ :=
  A397412.P16519194348179518311.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397518.P10071459291646654644

`2*A133827(n)`
-/

namespace A397518.P10071459291646654644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133827 n

end

end A397518.P10071459291646654644

noncomputable section

/-- A397518: a(n) is the number of integer solutions of x^2 + 7*y^2 = 2*n + 1.

Offset 0, canonical program `A397518.P10071459291646654644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397518 (n : ℕ) : ℤ :=
  A397518.P10071459291646654644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398923.P3360523914965098453

`∑[A398922(1+n)]`
-/

namespace A398923.P3360523914965098453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398922 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398923.P3360523914965098453

noncomputable section

/-- A398923: Number of distinct acute lattice trapezia of area at most n/2 with horizontal base.

Offset 1, canonical program `A398923.P3360523914965098453`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398923 (n : ℕ) : ℤ :=
  A398923.P3360523914965098453.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399227.P5856305221868028917

`(2*(n+2)-1)*2^(val(A034448(2*(n+2)-1), 2)-1)`
-/

namespace A399227.P5856305221868028917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) : ℤ) - 1 : ℚ) * (2 : ℚ) ^ ((SequenceMachineLib.valuation (A034448 (2 * (n + 2) - 1)).toNat 2 : ℤ) - 1 : ℤ)

end

end A399227.P5856305221868028917

noncomputable section

/-- A399227: a(n) = (2*n-1)*2^(w(2*n-1)-1) where w(m) = v_2(usigma(m)) = A007814(A034448(m)) for odd m.

Offset 2, canonical program `A399227.P5856305221868028917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399227.P5856305221868028917.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399227.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399733.P11103501656133543636

`(n+1)*A034448(n+1)/A363289(n+1)`
-/

namespace A399733.P11103501656133543636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P11103501656133543636

noncomputable section

/-- A399733: The sum of the unitary divisors d of n such that n/d is a powerful number (A001694).

Offset 1, canonical program `A399733.P11103501656133543636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A363289, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399733.P11103501656133543636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A363289, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399733.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399829.P142880181418372781

`∑{d}[n+1, A056671(#)*A112526((n+1)/#)]`
-/

namespace A399829.P142880181418372781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056671 d * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399829.P142880181418372781

noncomputable section

/-- A399829: The number of divisors d of n such that gcud(d, n/d) is a powerful number (A001694), where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399829.P142880181418372781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399829 (n : ℕ) : ℤ :=
  A399829.P142880181418372781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399829.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400251.P8247026051378105687

`lt[A400249(2*(n+1)), A400249(n+1)]+1`
-/

namespace A400251.P8247026051378105687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A400251.P8247026051378105687

noncomputable section

/-- A400251: Numbers k for which A400249(k) is not zero, where A400249 is Möbius transform of A085731, with A085731(n) = gcd(n,n'), and n' the arithmetic derivative of n.

Offset 1, canonical program `A400251.P8247026051378105687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A400251 (n : ℕ) : ℤ :=
  (A400251.P8247026051378105687.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A400251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401505.P12185595390029850357

`log2(A307848(n+1))`
-/

namespace A401505.P12185595390029850357
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A307848 (n + 1) : ℝ)

end

end A401505.P12185595390029850357

noncomputable section

/-- A401505: a(n) = log_2(A307848(n)).

Offset 1, canonical program `A401505.P12185595390029850357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401505.P12185595390029850357.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390379.P7564342032490603690

`∪[A389947(n+1), A392564(n+1)]`
-/

namespace A390379.P7564342032490603690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P7564342032490603690

noncomputable section

/-- A390379: Powers k^m, 2 <= m <= 3, with k neither squarefree nor squareful.

Offset 1, canonical program `A390379.P7564342032490603690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379 (n : ℕ) : ℤ :=
  (A390379.P7564342032490603690.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391355.P541142668147716780

`∩[2*n, A390789(n+1)]/2`
-/

namespace A391355.P541142668147716780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390789 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A391355.P541142668147716780

noncomputable section

/-- A391355: Numbers k such that 4*k - (greatest prime < 4*k) = (least prime > 4*k) - 4*k.

Offset 1, canonical program `A391355.P541142668147716780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A391355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391355.P541142668147716780.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5008 terms. -/
def A391355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391356.P14254972347099434704

`∩[A000027(2*(n+2)), A390790(n+1)]/2`
-/

namespace A391356.P14254972347099434704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390790 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A391356.P14254972347099434704

noncomputable section

/-- A391356: Numbers k such that 4*k - (greatest prime < 4*k) > (least prime > 4*k) - 4*k.

Offset 1, canonical program `A391356.P14254972347099434704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A391356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391356.P14254972347099434704.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4981 terms. -/
def A391356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391989.P6110167778232670407

`A049419(A130897(n+1))-A278908(A130897(n+1))`
-/

namespace A391989.P6110167778232670407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A130897 (n + 1)).toNat - A278908 (A130897 (n + 1)).toNat

end

end A391989.P6110167778232670407

noncomputable section

/-- A391989: The difference between the number of exponential divisors and the number of exponential unitary divisors for numbers that are not exponentially squarefree.

Offset 1, canonical program `A391989.P6110167778232670407`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989 (n : ℕ) : ℤ :=
  A391989.P6110167778232670407.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, A130897, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A394997.P14454066831357329865

`A337524(n+1)-A063647(n+1)`
-/

namespace A394997.P14454066831357329865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337524 (n + 1) - A063647 (n + 1)

end

end A394997.P14454066831357329865

noncomputable section

/-- A394997: Wiener index of the divisor prime graph of n.

Offset 1, canonical program `A394997.P14454066831357329865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997 (n : ℕ) : ℤ :=
  A394997.P14454066831357329865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063647, A337524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A394997.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397450.P7401832557812972848

`A102548(n+1)-A398671(floor(sqrt(n+1)))`
-/

namespace A397450.P7401832557812972848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102548 (n + 1) - A398671 (Nat.sqrt (n + 1))

end

end A397450.P7401832557812972848

noncomputable section

/-- A397450: a(n) is the number of positive integers <= n that are the sum of 2 nonzero squares.

Offset 1, canonical program `A397450.P7401832557812972848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, A398671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A397450 (n : ℕ) : ℤ :=
  A397450.P7401832557812972848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102548, A398671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A397450.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397643.P3349127362596892915

`floor(A052217(n+2)/9)`
-/

namespace A397643.P3349127362596892915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052217 (n + 2) : ℚ) / 9⌋

end

end A397643.P3349127362596892915

noncomputable section

/-- A397643: Numbers with digits in nondecreasing order having only digits 1 through 3.

Offset 1, canonical program `A397643.P3349127362596892915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A397643 (n : ℕ) : ℤ :=
  A397643.P3349127362596892915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A397643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398162.P3763435141426022406

`filter[eq[1, A295316(n+1)]+1, A401088(#+1)]`
-/

namespace A398162.P3763435141426022406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A401088 (f1 j + 1) = 1) n)

end

end A398162.P3763435141426022406

noncomputable section

/-- A398162: Exponentially odd numbers k such that the prime factorization exponents of k+1 are either 1 or even.

Offset 1, canonical program `A398162.P3763435141426022406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A398162 (n : ℕ) : ℤ :=
  (A398162.P3763435141426022406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6083 terms. -/
def A398162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401106.P552550023882447853

`a(n-1)+A141100(2^(n-1))` with `a(0)=0`
-/

namespace A401106.P552550023882447853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A141100 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A401106.P552550023882447853

noncomputable section

/-- A401106: Number of unordered representations of 2^n as a sum of two distinct positive integers, each an odd composite number multiplied by a power of 2.

Offset 0, canonical program `A401106.P552550023882447853`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401106 (n : ℕ) : ℤ :=
  A401106.P552550023882447853.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141100, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401106.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401390.P6643161535037238982

`(n+1)*A401375((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401390.P6643161535037238982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A401375 ((n + 1) ^ 2)

end

end A401390.P6643161535037238982

noncomputable section

/-- A401390: a(n) = n * A401375(n^2), where A401375 is the largest divisor of sigma(n) coprime with n, and sigma is the sum of divisors function.

Offset 1, canonical program `A401390.P6643161535037238982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401390 (n : ℕ) : ℤ :=
  A401390.P6643161535037238982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A401375, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390788.P4885482979136990160

`lt[A056139(2*(n+1)), 0]+1`
-/

namespace A390788.P4885482979136990160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390788.P4885482979136990160

noncomputable section

/-- A390788: Numbers k such that 2*k - (greatest prime < 2*k) < (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390788.P4885482979136990160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390788 (n : ℕ) : ℤ :=
  (A390788.P4885482979136990160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391351.P8606578630690309772

`lt[A056139(3*(n+1)), 1]+1`
-/

namespace A391351.P8606578630690309772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391351.P8606578630690309772

noncomputable section

/-- A391351: Numbers k such that 3*k - (greatest prime < 3*k) < (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391351.P8606578630690309772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8965 terms. -/
def A391351 (n : ℕ) : ℤ :=
  (A391351.P8606578630690309772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8965 terms. -/
def A391351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391353.P10543922163305761280

`lt[8, A056139(n+2*(n+1))]+1`
-/

namespace A391353.P10543922163305761280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056139 (n + 2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391353.P10543922163305761280

noncomputable section

/-- A391353: Numbers k such that 3*k - (greatest prime < 3*k) > (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391353.P10543922163305761280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8964 terms. -/
def A391353 (n : ℕ) : ℤ :=
  (A391353.P10543922163305761280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8964 terms. -/
def A391353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391415.P5836961313597618473

`record[A052410(A378767(n+1))]`
-/

namespace A391415.P5836961313597618473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A378767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391415.P5836961313597618473

noncomputable section

/-- A391415: Nonsquarefree numbers that are neither cubefree nor perfect powers.

Offset 1, canonical program `A391415.P5836961313597618473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. -/
def A391415 (n : ℕ) : ℤ :=
  A391415.P5836961313597618473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9902 terms. -/
def A391415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391497.P15735606706962389679

`∩[A362148(n+1), A375072(n+1)]`
-/

namespace A391497.P15735606706962389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391497.P15735606706962389679

noncomputable section

/-- A391497: Biquadratefree numbers that are neither cubefree nor cubefull.

Offset 1, canonical program `A391497.P15735606706962389679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497 (n : ℕ) : ℤ :=
  (A391497.P15735606706962389679.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5507 terms. -/
def A391497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393564.P18420932766056836635

`A273190(n)-A025435(n)`
-/

namespace A393564.P18420932766056836635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 n - A025435 n

end

end A393564.P18420932766056836635

noncomputable section

/-- A393564: a(n) is the number of unit squares in the square lattice, divided by 8, that have 2 vertices strictly inside and 2 vertices strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393564.P18420932766056836635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393564 (n : ℕ) : ℤ :=
  A393564.P18420932766056836635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394266.P11615888605151437702

`Δ[n²]*A189176(n)`
-/

namespace A394266.P11615888605151437702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A189176 n

end

end A394266.P11615888605151437702

noncomputable section

/-- A394266: Number of induced cubes in the n-odd graph.

Offset 1, canonical program `A394266.P11615888605151437702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A394266 (n : ℕ) : ℤ :=
  A394266.P11615888605151437702.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A394266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400145.P3159819875312283188

`A000593(n+1)*A193231(A006519(n+1))`
-/

namespace A400145.P3159819875312283188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A193231 (A006519 (n + 1)).toNat

end

end A400145.P3159819875312283188

noncomputable section

/-- A400145: The sum of divisors d of n such that gcid(d, n/d) is odd, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400145.P3159819875312283188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400145 (n : ℕ) : ℤ :=
  A400145.P3159819875312283188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400452.P2876507164572676616

`A007875(n+1)*A046660(n+1)`
-/

namespace A400452.P2876507164572676616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (n + 1) * A046660 (n + 1)

end

end A400452.P2876507164572676616

noncomputable section

/-- A400452: The number of divisors d of n such that gcd(d, n/d) is a prime power (A246655).

Offset 1, canonical program `A400452.P2876507164572676616`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400452 (n : ℕ) : ℤ :=
  A400452.P2876507164572676616.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007875, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400452.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391183.P15661351532640137144

`char[A002479(1+n)]`
-/

namespace A391183.P15661351532640137144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002479 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A391183.P15661351532640137144

noncomputable section

/-- A391183: a(n) = 1 if n is a number of the form x^2 + 2*y^2, and otherwise 0.

Offset 0, canonical program `A391183.P15661351532640137144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183 (n : ℕ) : ℤ :=
  (A391183.P15661351532640137144.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398227.P17637420504566668872

`comp[A398228(1+n)]`
-/

namespace A398227.P17637420504566668872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398228 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398227.P17637420504566668872

noncomputable section

/-- A398227: Nonnegative numbers that are not the sum of two Lucas numbers.

Offset 1, canonical program `A398227.P17637420504566668872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398227 (n : ℕ) : ℤ :=
  (A398227.P17637420504566668872.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398227.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391396.P17946055764684849709

`∩[A377562(n+1)-1, A377562(n+2)]`
-/

namespace A391396.P17946055764684849709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377562 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391396.P17946055764684849709

noncomputable section

/-- A391396: Numbers k such that k and k+1 are both numbers whose number of divisors is 3 times a power of 2 (A377562).

Offset 1, canonical program `A391396.P17946055764684849709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A391396 (n : ℕ) : ℤ :=
  (A391396.P17946055764684849709.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A391396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392055.P15206338133621600335

`A014963(A354031(n+1)+n+1)`
-/

namespace A392055.P15206338133621600335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A354031 (n + 1) + (n + 1 : ℤ)).toNat

end

end A392055.P15206338133621600335

noncomputable section

/-- A392055: a(n) = p if n = p^k is a perfect power of either a ramified or inert prime in the Gaussian integers and 1 otherwise.

Offset 1, canonical program `A392055.P15206338133621600335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055 (n : ℕ) : ℤ :=
  A392055.P15206338133621600335.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395792.P15440842927184700187

`∩[A087695(n+1), A392199(n+1)]`
-/

namespace A395792.P15440842927184700187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A395792.P15440842927184700187

noncomputable section

/-- A395792: Numbers k such that k-3 and k+3 are prime and gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A395792.P15440842927184700187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A395792 (n : ℕ) : ℤ :=
  (A395792.P15440842927184700187.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 522 terms. -/
def A395792.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399714.P16102988508626292463

`A000225(n+1)-A178841(n+2)`
-/

namespace A399714.P16102988508626292463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A178841 (n + 2)

end

end A399714.P16102988508626292463

noncomputable section

/-- A399714: a(n) = -1 - A010815(n-1) - Sum_{k=1..n-2} A010815(k)*2^(n-2-k) for n >= 3.

Offset 3, canonical program `A399714.P16102988508626292463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399714 (n : ℕ) : ℤ :=
  A399714.P16102988508626292463.a (n - 3)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178841, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399828.P9872746706796566562

`A366147(n+1)*A368172(n+1)`
-/

namespace A399828.P9872746706796566562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366147 (n + 1) * A368172 (n + 1)

end

end A399828.P9872746706796566562

noncomputable section

/-- A399828: The number of divisors d of n such that gcud(d, n/d) is squarefree, where gcud is the greatest common unitary divisor.

Offset 1, canonical program `A399828.P9872746706796566562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399828 (n : ℕ) : ℤ :=
  A399828.P9872746706796566562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400143.P16016371540924763515

`A000005(n+1)*A037445(n+1)/A400142(n+1)`
-/

namespace A400143.P16016371540924763515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A037445 (n + 1) : ℚ) / (A400142 (n + 1) : ℚ)

end

end A400143.P16016371540924763515

noncomputable section

/-- A400143: The number of divisors d of n such that gcid(d, n/d) is a power of 2, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400143.P16016371540924763515`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400143.P16016371540924763515.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400380.P12678580713622150380

`A255848(A087695(n+1))`
-/

namespace A400380.P12678580713622150380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255848 (A087695 (n + 1)).toNat

end

end A400380.P12678580713622150380

noncomputable section

/-- A400380: Sum of squares of the n-th sexy prime pair (p, p+6).

Offset 1, canonical program `A400380.P12678580713622150380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A400380 (n : ℕ) : ℤ :=
  A400380.P12678580713622150380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A400380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400948.P2250991978134965370

`∩[A000040(n+1), A223134(A167171(n+1))]`
-/

namespace A400948.P2250991978134965370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A167171 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A400948.P2250991978134965370

noncomputable section

/-- A400948: Primes p such that (p-1)/2 is either prime or a squarefree semiprime.

Offset 1, canonical program `A400948.P2250991978134965370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A400948 (n : ℕ) : ℤ :=
  (A400948.P2250991978134965370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A400948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401425.P10919295985849016461

`A053165((n+1)*A350388(n+1))`
-/

namespace A401425.P10919295985849016461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 ((n + 1 : ℤ) * A350388 (n + 1)).toNat

end

end A401425.P10919295985849016461

noncomputable section

/-- A401425: The largest infinitary divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A401425.P10919295985849016461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A401425 (n : ℕ) : ℤ :=
  A401425.P10919295985849016461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A401425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389903.P8692946444750893676

`min(n+1, A059893(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389903.P8692946444750893676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A059893 (n + 1))

end

end A389903.P8692946444750893676

noncomputable section

/-- A389903: a(n) = min(n, A059893(n)), where A059893 reverses the order of all but the most significant bit in binary expansion of n.

Offset 1, canonical program `A389903.P8692946444750893676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389903 (n : ℕ) : ℤ :=
  A389903.P8692946444750893676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389903.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A393980.P14400587957278650939

`A153154(A233280(n))`
-/

namespace A393980.P14400587957278650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A233280 n).toNat

end

end A393980.P14400587957278650939

noncomputable section

/-- A393980: On the nonnegative integer number line, go to the first next unused power of 2 minus 1, then spiral back to pick up any skipped numbers, and repeat.

Offset 0, canonical program `A393980.P14400587957278650939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980 (n : ℕ) : ℤ :=
  A393980.P14400587957278650939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A393980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396919.P3561420194489919644

`filter[A054753(n+1), A359770(#)]`
-/

namespace A396919.P3561420194489919644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A396919.P3561420194489919644

noncomputable section

/-- A396919: Numbers of the form 4*p or 2*p^2, where p is an odd prime.

Offset 1, canonical program `A396919.P3561420194489919644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A396919 (n : ℕ) : ℤ :=
  A396919.P3561420194489919644.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2808 terms. -/
def A396919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398818.P2247325722849130262

`record[lcm(A007947(n+1), A008834(n+1))]`
-/

namespace A398818.P2247325722849130262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007947 (n + 1)) (A008834 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398818.P2247325722849130262

noncomputable section

/-- A398818: Numbers whose powerful part (A057521) is a cube.

Offset 1, canonical program `A398818.P2247325722849130262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6933 terms. -/
def A398818 (n : ℕ) : ℤ :=
  (A398818.P2247325722849130262.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6933 terms. -/
def A398818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389007.P15467769822345660334

`∩[A001358(n+1), A084374(n+1)]`
-/

namespace A389007.P15467769822345660334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389007.P15467769822345660334

noncomputable section

/-- A389007: Semiprimes whose least decimal digit is 2.

Offset 1, canonical program `A389007.P15467769822345660334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3316 terms. -/
def A389007 (n : ℕ) : ℤ :=
  (A389007.P15467769822345660334.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3316 terms. -/
def A389007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391254.P635341094671507549

`∩[A001358(1+n), A325559(n+1)]`
-/

namespace A391254.P635341094671507549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391254.P635341094671507549

noncomputable section

/-- A391254: Semiprimes k = p*q such that neither k = A048720(p,x) nor k = A048720(q,x) for any x, where A048720 is the carryless binary multiplication.

Offset 1, canonical program `A391254.P635341094671507549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391254 (n : ℕ) : ℤ :=
  (A391254.P635341094671507549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398131.P3205953752780474683

`A151800(A001358(n+1))`
-/

namespace A398131.P3205953752780474683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001358 (n + 1)).toNat

end

end A398131.P3205953752780474683

noncomputable section

/-- A398131: Next prime after the n-th semiprime.

Offset 1, canonical program `A398131.P3205953752780474683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398131 (n : ℕ) : ℤ :=
  A398131.P3205953752780474683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399276.P15390692254121348607

`A061358(A001358(n+1))`
-/

namespace A399276.P15390692254121348607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A001358 (n + 1)).toNat

end

end A399276.P15390692254121348607

noncomputable section

/-- A399276: Number of ways writing the n-th semiprime as a sum of two primes.

Offset 1, canonical program `A399276.P15390692254121348607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399276 (n : ℕ) : ℤ :=
  A399276.P15390692254121348607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399276.provenance : SequenceMachineLib.Provenance := .conditional


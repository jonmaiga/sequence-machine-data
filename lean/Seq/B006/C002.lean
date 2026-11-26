import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C009
import Seq.B000.C011
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
import Seq.B001.C009
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A392609.P5703285042212479298

`A001221(n+1)-A392608(n+1)`
-/

namespace A392609.P5703285042212479298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A392608 (n + 1)

end

end A392609.P5703285042212479298

noncomputable section

/-- A392609: Number of prime factors of n that do not divide A276086(n), where A276086 is the primorial base exp-function.

Offset 1, canonical program `A392609.P5703285042212479298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392609 (n : ℕ) : ℤ :=
  A392609.P5703285042212479298.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392610.P420670172486878094

`A267263(n)-A392608(n)`
-/

namespace A392610.P420670172486878094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 n - A392608 n

end

end A392610.P420670172486878094

noncomputable section

/-- A392610: Number of nonzero digits in the primorial base representation of n (A049345) such that their corresponding radix prime does not divide n.

Offset 0, canonical program `A392610.P420670172486878094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392610 (n : ℕ) : ℤ :=
  A392610.P420670172486878094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400258.P3398933769381967192

`A267263(A003415(n))`
-/

namespace A400258.P3398933769381967192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (A003415 n).toNat

end

end A400258.P3398933769381967192

noncomputable section

/-- A400258: Number of nonzero digits in primorial base representation of n' [where n' stands for the arithmetic derivative of n, A003415].

Offset 0, canonical program `A400258.P3398933769381967192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400258 (n : ℕ) : ℤ :=
  A400258.P3398933769381967192.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400258.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401912.P12126294774194375001

`A401911(n+1)/A369008(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401912.P12126294774194375001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401911 (n + 1) : ℚ) / (A369008 (n + 1) : ℚ)

end

end A401912.P12126294774194375001

noncomputable section

/-- A401912: a(n) = A401911(n) / A369008(n).

Offset 1, canonical program `A401912.P12126294774194375001`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401912 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401912.P12126294774194375001.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401917.P10147892513690949782

`A059841(A347395(n+1))`
-/

namespace A401917.P10147892513690949782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A347395 (n + 1)).toNat

end

end A401917.P10147892513690949782

noncomputable section

/-- A401917: a(n) = 1 if A347395(n) is even, and 0 if it is odd, where A347395 is the Dirichlet convolution of Liouville's lambda (A008836) with A342001.

Offset 1, canonical program `A401917.P10147892513690949782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401917 (n : ℕ) : ℤ :=
  A401917.P10147892513690949782.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401917.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A390554.P5277183224943981996`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390554 (n : ℕ) : ℤ :=
  A390554.P5277183224943981996.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390554.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 1, canonical program `A394481.P10475431677930788014`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))` (program `A394481.P10475431677930788014`, by `A394481.P10475431677930788014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394481 (n : ℕ) : ℤ :=
  A394481.P10475431677930788014.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A034448(n+1)+A000005(n+1)-A000005(A007947(n+1))` (program `A394481.P10475431677930788014`, by `A394481.P10475431677930788014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394481.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A395435.P18346761836883339857`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))` (program `A395435.P18346761836883339857`, by `A395435.P18346761836883339857.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395435 (n : ℕ) : ℤ :=
  A395435.P18346761836883339857.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A034448(n+1)+A000005(A007947(n+1))` (program `A395435.P18346761836883339857`, by `A395435.P18346761836883339857.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395435.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 2, canonical program `A399227.P5856305221868028917`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399227 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399227.P5856305221868028917.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399227.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A398750.P8364193390251612125

`∩[A002378(n), A013929(n+1)]`
-/

namespace A398750.P8364193390251612125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398750.P8364193390251612125

noncomputable section

/-- A398750: Nonsquarefree oblong numbers.

Offset 1, canonical program `A398750.P8364193390251612125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A398750 (n : ℕ) : ℤ :=
  (A398750.P8364193390251612125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A398750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398753.P7244774305929382009

`filter[A308874(n+1), A008966(#)]`
-/

namespace A398753.P7244774305929382009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A398753.P7244774305929382009

noncomputable section

/-- A398753: Squarefree composite numbers that are not also oblong.

Offset 1, canonical program `A398753.P7244774305929382009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5626 terms. -/
def A398753 (n : ℕ) : ℤ :=
  A398753.P7244774305929382009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5626 terms. -/
def A398753.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A399733.P11103501656133543636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399733 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A399733.P11103501656133543636.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
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

/-! ## A391354.P14107166252607901053

`∩[A000027(2*(n+2)), A390788(n+1)]/2`
-/

namespace A391354.P14107166252607901053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A391354.P14107166252607901053

noncomputable section

/-- A391354: Numbers k such that 4*k - (greatest prime < 4*k) < (least prime > 4*k) - 4*k.

Offset 1, canonical program `A391354.P14107166252607901053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. -/
def A391354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391354.P14107166252607901053.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5027 terms. -/
def A391354.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392113.P11389348547885282117

`∩[A000027(3*(n+1)), A390788(n+1)]/3`
-/

namespace A392113.P11389348547885282117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390788 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A392113.P11389348547885282117

noncomputable section

/-- A392113: Numbers k such that 6*k - (greatest prime < 6*n) < (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392113.P11389348547885282117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3087 terms. -/
def A392113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392113.P11389348547885282117.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3087 terms. -/
def A392113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392115.P8839572050383417587

`∩[A000027(2*(n+2)), A391353(n+1)]/2`
-/

namespace A392115.P8839572050383417587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391353 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A392115.P8839572050383417587

noncomputable section

/-- A392115: Numbers k such that 6*k - (greatest prime < 6*n) > (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392115.P8839572050383417587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A392115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392115.P8839572050383417587.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. -/
def A392115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392867.P13474362034397928387

`lt[0, A393067(n+1)]+1`
-/

namespace A392867.P13474362034397928387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A392867.P13474362034397928387

noncomputable section

/-- A392867: Numbers k such that A276086(A003415(k)) <= k, where A003415 is the arithmetic derivative and A276086 is the primorial base exp-function.

Offset 1, canonical program `A392867.P13474362034397928387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6140 terms. -/
def A392867 (n : ℕ) : ℤ :=
  (A392867.P13474362034397928387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6140 terms. -/
def A392867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393056.P16602812559602995251

`a(n-1)+(1-A353558(n+1))*A393067(n+1)` with `a(0)=1`
-/

namespace A393056.P16602812559602995251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A353558 (n + 1)) * A393067 (n + 1)

end

end A393056.P16602812559602995251

noncomputable section

/-- A393056: Number of terms of A392867 <= n that are not odd numbers with an odd number of prime factors (A067019).

Offset 1, canonical program `A393056.P16602812559602995251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393056 (n : ℕ) : ℤ :=
  A393056.P16602812559602995251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393056.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393057.P765751024542709318

`a(n-1)+A393067(n+1)` with `a(0)=1`
-/

namespace A393057.P765751024542709318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A393067 (n + 1)

end

end A393057.P765751024542709318

noncomputable section

/-- A393057: Number of terms of A392867 <= n.

Offset 1, canonical program `A393057.P765751024542709318`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393057 (n : ℕ) : ℤ :=
  A393057.P765751024542709318.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A393067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393057.provenance : SequenceMachineLib.Provenance := .conditional

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


import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A099200: Number of partitions of n into distinct odd triangular numbers.

The programs for A099200, there is no canonical definition to state claims against.
-/

/-! ## A099200.P2385707486944823175

`A000035(A319256(n+1))`
-/

namespace A099200.P2385707486944823175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A319256 (n + 1)).toNat

end

end A099200.P2385707486944823175

/-! ## A099200.P18008354134490458231

`A188014(A360254(n+4)+A001318(2*n+1))`
-/

namespace A099200.P18008354134490458231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A360254 (n + 4) + A001318 (2 * n + 1)).toNat

end

end A099200.P18008354134490458231

/-! ## A099200.P3947824974499170859

`A257800(A329687(n+1))`
-/

namespace A099200.P3947824974499170859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257800 (A329687 (n + 1)).toNat

end

end A099200.P3947824974499170859

/-! ## A099200.P7966172881566837999

`A010060(and(A000534(n+4), A133025(n+1)))`
-/

namespace A099200.P7966172881566837999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.land (A000534 (n + 4)) (A133025 (n + 1))).toNat

end

end A099200.P7966172881566837999

/-! ## A099200.P11089715759283502152

`A011655(A000290(2*n+1)*A074279(n+1))`
-/

namespace A099200.P11089715759283502152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A000290 (2 * n + 1) * A074279 (n + 1)).toNat

end

end A099200.P11089715759283502152

/-!
# A099201: A bisection of A002807.

The programs for A099201, there is no canonical definition to state claims against.
-/

/-! ## A099201.P4190055171975418984

`A002807(Δ[n²])`
-/

namespace A099201.P4190055171975418984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099201.P4190055171975418984

/-! ## A099201.P7072853137542959216

`A119913(Δ[n²])/2`
-/

namespace A099201.P7072853137542959216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119913 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A099201.P7072853137542959216

/-! ## A099201.P7159938772465949751

`record[n%2*A002807(n)]`
-/

namespace A099201.P7159938772465949751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A002807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099201.P7159938772465949751

/-! ## A099201.P8980596855091963550

`1/2*A119913(2*n+1)`
-/

namespace A099201.P8980596855091963550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A119913 (2 * n + 1) : ℚ)

end

end A099201.P8980596855091963550

/-! ## A099201.P16556625154025034994

`record[A002807(abs(A009001(n)))]`
-/

namespace A099201.P16556625154025034994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 |A009001 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099201.P16556625154025034994

/-!
# A099202: a(n) = 2^floor(n^2/2).

The programs for A099202, the canonical program `A099202.P2511305183935106863` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099202 has offset 0).

The definition of A099202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099202.P14717466240843944639

`2^floor(n²/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099202.P14717466240843944639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n ^ 2 : ℚ) / 2⌋ : ℤ)

end

end A099202.P14717466240843944639

namespace A099202

/-- `2^floor(n²/2)` -/
def P14717466240843944639.Spec : Prop :=
  ∀ n, P14717466240843944639.a n = (A099202 n : ℚ)

end A099202

/-! ## A099202.P2511305183935106863

`A016116(n)*A006125(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099202

/-- `A016116(n)*A006125(n)` -/
def P2511305183935106863.Spec : Prop :=
  ∀ n, P2511305183935106863.a n = A099202 n

theorem P2511305183935106863.correct : P2511305183935106863.Spec := by
  intro n
  simp only [A099202]

end A099202

/-! ## A099202.P4207353837122206757

`∏[2^and(62, n)]`
-/

namespace A099202.P4207353837122206757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land 62 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099202.P4207353837122206757

namespace A099202

/-- `∏[2^and(62, n)]` -/
def P4207353837122206757.Spec : Prop :=
  ∀ n, (P4207353837122206757.a n : ℤ) = A099202 n

end A099202

/-! ## A099202.P2562401744736854148

`∏[2^(or(1, n)-1)]`
-/

namespace A099202.P2562401744736854148
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.lor 1 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099202.P2562401744736854148

namespace A099202

/-- `∏[2^(or(1, n)-1)]` -/
def P2562401744736854148.Spec : Prop :=
  ∀ n, P2562401744736854148.a n = (A099202 n : ℚ)

end A099202

/-!
# A099203: Integers divisible by 7 which are sequentially obtained from the decimal expansion of sqrt(2) = 1.4142135...

The programs for A099203, there is no canonical definition to state claims against.
-/

/-! ## A099203.P1798173374002864040

`7*A099205(n+1)`
-/

namespace A099203.P1798173374002864040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A099205 (n + 1)

end

end A099203.P1798173374002864040

/-!
# A099204: A variation on Flavius's sieve (A000960): Start with the natural numbers; at the k-th sieving step, remove every p-th term of the sequence remaining after the (k-1)-st sieving step, where p is the k-th prime; iterate.

The programs for A099204, there is no canonical definition to state claims against.
-/

/-! ## A099204.P11470245748682943953

`A000720(A099243(n+1))`
-/

namespace A099204.P11470245748682943953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A099243 (n + 1)).toNat

end

end A099204.P11470245748682943953

/-! ## A099204.P6881883543641879526

`A061395(p?[A099243(n+1)])`
-/

namespace A099204.P6881883543641879526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A099204.P6881883543641879526

/-! ## A099204.P9383952900540326426

`∑{d}[A099243(n+1), A061395(#)]`
-/

namespace A099204.P9383952900540326426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A099204.P9383952900540326426

/-! ## A099204.P15280757820175459877

`A061395(∑{p}[A099243(n+1), #])`
-/

namespace A099204.P15280757820175459877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A099204.P15280757820175459877

/-! ## A099204.P12033482268552971488

`A061395(A099243(n+1)%A153636(n+1))`
-/

namespace A099204.P12033482268552971488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A099243 (n + 1)) (A153636 (n + 1))).toNat

end

end A099204.P12033482268552971488

/-! ## A099204.P1505700111873619107

`A061395(A099243(n+1))%A176681(n+1)`
-/

namespace A099204.P1505700111873619107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A099243 (n + 1)).toNat) (A176681 (n + 1))

end

end A099204.P1505700111873619107

/-! ## A099204.P8238174912571727286

`A061395(2*A099243(n+1))`
-/

namespace A099204.P8238174912571727286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A099243 (n + 1)).toNat

end

end A099204.P8238174912571727286

/-! ## A099204.P17088580648714069690

`A061395(lcm(2, A099243(n+1)))`
-/

namespace A099204.P17088580648714069690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A099243 (n + 1)))

end

end A099204.P17088580648714069690

/-! ## A099204.P13148886677505529156

`A049084(p?[A099243(n+1)])`
-/

namespace A099204.P13148886677505529156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A099204.P13148886677505529156

/-! ## A099204.P10798676883564432584

`A064839(p?[A099243(n+1)])`
-/

namespace A099204.P10798676883564432584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A099204.P10798676883564432584

/-! ## A099204.P4623738108814044201

`A036234(A099243(n+1)-1)`
-/

namespace A099204.P4623738108814044201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A099243 (n + 1) - 1).toNat

end

end A099204.P4623738108814044201

/-! ## A099204.P3278713939760158383

`∑{d}[A099243(n+1), A049084(#)]`
-/

namespace A099204.P3278713939760158383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A099204.P3278713939760158383

/-! ## A099204.P7998794528017259532

`A049084(∑{p}[A099243(n+1), #])`
-/

namespace A099204.P7998794528017259532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A099204.P7998794528017259532

/-! ## A099204.P15831404741198842090

`A049084(A099243(n+1))%A014206(n)`
-/

namespace A099204.P15831404741198842090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A099243 (n + 1)).toNat) (A014206 n)

end

end A099204.P15831404741198842090

/-! ## A099204.P6883126636236991429

`A049084(A099243(n+1)%A017464(n))`
-/

namespace A099204.P6883126636236991429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A099243 (n + 1)) (A017464 n)).toNat

end

end A099204.P6883126636236991429

/-! ## A099204.P13635387689321088605

`or(A000007(n), A049084(A099243(n+1)))`
-/

namespace A099204.P13635387689321088605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A049084 (A099243 (n + 1)).toNat)

end

end A099204.P13635387689321088605

/-! ## A099204.P6089194238159293265

`A064839(2*A099243(n+1)-A099243(n+1))`
-/

namespace A099204.P6089194238159293265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (2 * A099243 (n + 1) - A099243 (n + 1)).toNat

end

end A099204.P6089194238159293265

/-!
# A099205: a(n) = A099203(n)/7.

The programs for A099205, there is no canonical definition to state claims against.
-/

/-! ## A099205.P5914894895169102472

`A099203(n+1)/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099205.P5914894895169102472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099203 (n + 1) : ℚ) / 7

end

end A099205.P5914894895169102472

/-!
# A099206: Expansion of x^2*(2*x^11+2*x^9+2*x^8+x^7+2*x^6+x^5+x^4+x^3-x^2-x-1) / (x^9+x^6+2*x^3-1).

The programs for A099206, the canonical program `A099206.P723422205982860566` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099206 has offset 1).

The definition of A099206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^2+x^3-x^4-x^5-x^6-2x^7-x^8-2x^9-2x^10-2x^12)/(1-2x^3-x^6-x^9))` (program `A099206.P723422205982860566`, by `A099206.P723422205982860566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099206.P723422205982860566

`ogf((x+x^2+x^3-x^4-x^5-x^6-2x^7-x^8-2x^9-2x^10-2x^12)/(1-2x^3-x^6-x^9))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099206

/-- `ogf((x+x^2+x^3-x^4-x^5-x^6-2x^7-x^8-2x^9-2x^10-2x^12)/(1-2x^3-x^6-x^9))` -/
def P723422205982860566.Spec : Prop :=
  ∀ n, P723422205982860566.a n = A099206 (n + 1)

theorem P723422205982860566.correct : P723422205982860566.Spec := by
  intro n
  simp only [A099206, Nat.add_sub_cancel]

end A099206

/-! ## A099206.P15028957570522263137

`A007305(and(A000975(n), A045883(n)))`
-/

namespace A099206.P15028957570522263137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (Int.land (A000975 n) (A045883 n)).toNat

end

end A099206.P15028957570522263137

namespace A099206

/-- `A007305(and(A000975(n), A045883(n)))` -/
def P15028957570522263137.Spec : Prop :=
  ∀ n, P15028957570522263137.a n = A099206 (n + 1)

end A099206

/-!
# A099207: A variation on Flavius's sieve (A000960): Start with the primes; at the k-th sieving step, remove every (k+1)-st term of the sequence remaining after the (k-1)-st sieving step; iterate.

The programs for A099207, there is no canonical definition to state claims against.
-/

/-! ## A099207.P10054340242198957498

`A001748(A000960(n+1))/3`
-/

namespace A099207.P10054340242198957498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (A000960 (n + 1)).toNat : ℚ) / 3

end

end A099207.P10054340242198957498

/-! ## A099207.P12155933861747776944

`A000040(A000960(n+1))`
-/

namespace A099207.P12155933861747776944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000960 (n + 1)).toNat

end

end A099207.P12155933861747776944

/-! ## A099207.P2868711930413431151

`A000040(A278484(n)+1)`
-/

namespace A099207.P2868711930413431151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A278484 n + 1).toNat

end

end A099207.P2868711930413431151

/-! ## A099207.P10534470076829270312

`A008578(A278484(n)+2)`
-/

namespace A099207.P10534470076829270312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A278484 n + 2).toNat

end

end A099207.P10534470076829270312

/-! ## A099207.P7423055150950275882

`A000040(or(1, A278484(n)))`
-/

namespace A099207.P7423055150950275882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.lor 1 (A278484 n)).toNat

end

end A099207.P7423055150950275882

/-! ## A099207.P12379288708972643681

`A000040(xor(1, A278484(n)))`
-/

namespace A099207.P12379288708972643681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.xor 1 (A278484 n)).toNat

end

end A099207.P12379288708972643681

/-! ## A099207.P5221086407330403814

`A000040(A278505(∑[n+1]))`
-/

namespace A099207.P5221086407330403814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A278505 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A099207.P5221086407330403814

/-! ## A099207.P13898931939067703290

`A000040(A278503(∑[n]+1))`
-/

namespace A099207.P13898931939067703290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A278503 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A099207.P13898931939067703290

/-! ## A099207.P18038371970196648408

`A008578(A000960(n+1)+1)`
-/

namespace A099207.P18038371970196648408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000960 (n + 1) + 1).toNat

end

end A099207.P18038371970196648408

/-! ## A099207.P3186923450464894711

`A000040(eq[2, A100002(n+1)])`
-/

namespace A099207.P3186923450464894711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099207.P3186923450464894711

/-! ## A099207.P16968073087728892882

`A000040(lt[A278529(n+1), 1]+1)`
-/

namespace A099207.P16968073087728892882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A099207.P16968073087728892882

/-! ## A099207.P1863378009310023902

`A000040(A278503(C(n+1, 2)+1)%(n+2)²)`
-/

namespace A099207.P1863378009310023902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A278503 (Nat.choose (n + 1) 2 + 1)) ((n + 2) ^ 2 : ℤ)).toNat

end

end A099207.P1863378009310023902

/-! ## A099207.P5250112356923796132

`A000040(A004442(A278484(n)))`
-/

namespace A099207.P5250112356923796132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004442 (A278484 n).toNat).toNat

end

end A099207.P5250112356923796132

/-! ## A099207.P5115476745109187573

`A000040(∑[A056526(n+1)]+1-A056526(n+1))`
-/

namespace A099207.P5115476745109187573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A056526 (n + 1))).toNat

end

end A099207.P5115476745109187573

/-!
# A099208: In canonical prime-factorization of n replace prime(k)^e with prime(k+e-1).

The programs for A099208, there is no canonical definition to state claims against.
-/

/-! ## A099208.P1867189812688965526

`A000196(or((n+1)*∏{p}[n+1, #], A249870(3*n)))`
-/

namespace A099208.P1867189812688965526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A249870 (3 * n))).toNat

end

end A099208.P1867189812688965526

/-! ## A099208.P7603775210980064800

`A097246(n+1)-A279372(A094683(n))`
-/

namespace A099208.P7603775210980064800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097246 (n + 1) - A279372 (A094683 n).toNat

end

end A099208.P7603775210980064800

/-! ## A099208.P9193095661909412379

`A353832(A234741(n+1)%A059802(n+1))`
-/

namespace A099208.P9193095661909412379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353832 (Int.tmod (A234741 (n + 1)) (A059802 (n + 1))).toNat

end

end A099208.P9193095661909412379

/-! ## A099208.P10535387974604885766

`A085310(n+1)-A318983(A252615(n+1))`
-/

namespace A099208.P10535387974604885766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085310 (n + 1) - A318983 (A252615 (n + 1)).toNat

end

end A099208.P10535387974604885766

/-! ## A099208.P16385618983416164088

`A073353(n+1)-A051903(A217308(n+2))*A085310(n+1)`
-/

namespace A099208.P16385618983416164088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A051903 (A217308 (n + 2)).toNat * A085310 (n + 1)

end

end A099208.P16385618983416164088

/-!
# A099209: A099208(A099208(n)).

The programs for A099209, there is no canonical definition to state claims against.
-/

/-! ## A099209.P18095912185103892950

`A099208(A099208(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099209.P18095912185103892950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099208 (A099208 (n + 1)).toNat

end

end A099209.P18095912185103892950

/-!
# A099210: a(n)=(P(n)*P(n+2))^5 with P(i)=i-th prime.

The programs for A099210, the canonical program `A099210.P13481430447248408214` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099210 has offset 1).

The definition of A099210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099210.P13481430447248408214

`A090076(n+1)^5`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A099210

/-- `A090076(n+1)^5` -/
def P13481430447248408214.Spec : Prop :=
  ∀ n, P13481430447248408214.a n = A099210 (n + 1)

theorem P13481430447248408214.correct : P13481430447248408214.Spec := by
  intro n
  simp only [A099210, Nat.add_sub_cancel]

end A099210

/-! ## A099210.P9861626641712927850

`A090076(n+1)*A096968(n+1)`
-/

namespace A099210.P9861626641712927850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) * A096968 (n + 1)

end

end A099210.P9861626641712927850

namespace A099210

/-- `A090076(n+1)*A096968(n+1)` -/
def P9861626641712927850.Spec : Prop :=
  ∀ n, P9861626641712927850.a n = A099210 (n + 1)

end A099210

/-! ## A099210.P18318887493596484778

`A176098(n+3)^5`
-/

namespace A099210.P18318887493596484778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (n + 3) ^ 5

end

end A099210.P18318887493596484778

namespace A099210

/-- `A176098(n+3)^5` -/
def P18318887493596484778.Spec : Prop :=
  ∀ n, P18318887493596484778.a n = A099210 (n + 1)

end A099210

/-! ## A099210.P5159753868729938156

`A050997(n+1)*A050997(n+3)`
-/

namespace A099210.P5159753868729938156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) * A050997 (n + 3)

end

end A099210.P5159753868729938156

namespace A099210

/-- `A050997(n+1)*A050997(n+3)` -/
def P5159753868729938156.Spec : Prop :=
  ∀ n, P5159753868729938156.a n = A099210 (n + 1)

end A099210

/-! ## A099210.P379720552679512983

`A013638(A000040(n+2))^5`
-/

namespace A099210.P379720552679512983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013638 (A000040 (n + 2)).toNat ^ 5

end

end A099210.P379720552679512983

namespace A099210

/-- `A013638(A000040(n+2))^5` -/
def P379720552679512983.Spec : Prop :=
  ∀ n, P379720552679512983.a n = A099210 (n + 1)

end A099210

/-!
# A099211: a(n) = -2*a(n-1) + 4*a(n-3), with a(0) = 1, a(1) = -2, a(2) = 4.

The programs for A099211, the canonical program `A099211.P5111544093573773600` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099211 has offset 0).

The definition of A099211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099211.P9001809157438777549

`ogf(1/(1+2x-4x^3))`
-/

namespace A099211.P9001809157438777549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 0, -4] n

end

end A099211.P9001809157438777549

namespace A099211

/-- `ogf(1/(1+2x-4x^3))` -/
def P9001809157438777549.Spec : Prop :=
  ∀ n, P9001809157438777549.a n = A099211 n

end A099211

/-! ## A099211.P5111544093573773600

`2*(2*a(n-3)-a(n-1))` with `a(0)=1, a(1)=-2, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099211

/-- `2*(2*a(n-3)-a(n-1))` -/
def P5111544093573773600.Spec : Prop :=
  ∀ n, P5111544093573773600.a n = A099211 n

theorem P5111544093573773600.correct : P5111544093573773600.Spec := by
  intro n
  simp only [A099211]

end A099211

/-! ## A099211.P10757386250491695663

`A099212(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A099211.P10757386250491695663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099212 n - 2 * a (n - 1)

end

end A099211.P10757386250491695663

namespace A099211

/-- `A099212(n)-2*a(n-1)` -/
def P10757386250491695663.Spec : Prop :=
  ∀ n, P10757386250491695663.a n = A099211 n

end A099211

/-! ## A099211.P11951061549619417283

`A099212(n+3)/4`
-/

namespace A099211.P11951061549619417283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099212 (n + 3) : ℚ) / 4

end

end A099211.P11951061549619417283

namespace A099211

/-- `A099212(n+3)/4` -/
def P11951061549619417283.Spec : Prop :=
  ∀ n, P11951061549619417283.a n = (A099211 n : ℚ)

end A099211

/-!
# A099212: a(n) = -2*a(n-1) + 4*a(n-3), with a(0) = 1, a(1) = a(2) = 0.

The programs for A099212, the canonical program `A099212.P9044348352718787957` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099212 has offset 0).

The definition of A099212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099212.P9044348352718787957

`2*(2*a(n-3)-a(n-1))` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099212

/-- `2*(2*a(n-3)-a(n-1))` -/
def P9044348352718787957.Spec : Prop :=
  ∀ n, P9044348352718787957.a n = A099212 n

theorem P9044348352718787957.correct : P9044348352718787957.Spec := by
  intro n
  simp only [A099212]

end A099212

/-! ## A099212.P16973130573727416865

`ogf((1+2x)/(1+2x-4x^3))`
-/

namespace A099212.P16973130573727416865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 2, 0, -4] n

end

end A099212.P16973130573727416865

namespace A099212

/-- `ogf((1+2x)/(1+2x-4x^3))` -/
def P16973130573727416865.Spec : Prop :=
  ∀ n, P16973130573727416865.a n = A099212 n

end A099212

/-! ## A099212.P2658673278409356775

`∑[A099211(n+2)/4]`
-/

namespace A099212.P2658673278409356775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099211 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099212.P2658673278409356775

namespace A099212

/-- `∑[A099211(n+2)/4]` -/
def P2658673278409356775.Spec : Prop :=
  ∀ n, P2658673278409356775.a n = (A099212 n : ℚ)

end A099212

/-!
# A099213: a(n) = a(n-1)+a(n-2)+3a(n-3), with a(0)=a(1)=a(2)=1.

The programs for A099213, the canonical program `A099213.P15234927761229543964` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099213 has offset 0).

The definition of A099213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+3*a(n-3)` (program `A099213.P15234927761229543964`, by `A099213.P15234927761229543964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099213.P15234927761229543964

`a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099213

/-- `a(n-1)+a(n-2)+3*a(n-3)` -/
def P15234927761229543964.Spec : Prop :=
  ∀ n, (P15234927761229543964.a n : ℤ) = A099213 n

theorem P15234927761229543964.correct : P15234927761229543964.Spec := by
  intro n
  simp only [A099213]

end A099213

/-! ## A099213.P10208067680206985551

`ogf((-1+x^2)/(-1+x+x^2+3x^3))`
-/

namespace A099213.P10208067680206985551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -1, -3] n

end

end A099213.P10208067680206985551

namespace A099213

/-- `ogf((-1+x^2)/(-1+x+x^2+3x^3))` -/
def P10208067680206985551.Spec : Prop :=
  ∀ n, P10208067680206985551.a n = A099213 n

end A099213

/-! ## A099213.P1388814819266478778

`a(n-1)+a(n-3)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A099213.P1388814819266478778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 3) + (a (n - 2) + a (n - 3))))

end

end A099213.P1388814819266478778

namespace A099213

/-- `a(n-1)+a(n-3)+a(n-3)+a(n-2)+a(n-3)` -/
def P1388814819266478778.Spec : Prop :=
  ∀ n, (P1388814819266478778.a n : ℤ) = A099213 n

end A099213

/-! ## A099213.P8816086090519356713

`A123102(n)+Δ[A103143(n)]`
-/

namespace A099213.P8816086090519356713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123102 n + (f1 (n + 1) - f1 n)

end

end A099213.P8816086090519356713

namespace A099213

/-- `A123102(n)+Δ[A103143(n)]` -/
def P8816086090519356713.Spec : Prop :=
  ∀ n, P8816086090519356713.a n = A099213 n

end A099213

/-! ## A099213.P12567128731196740025

`A103143(n+2)-A103143(n)`
-/

namespace A099213.P12567128731196740025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 (n + 2) - A103143 n

end

end A099213.P12567128731196740025

namespace A099213

/-- `A103143(n+2)-A103143(n)` -/
def P12567128731196740025.Spec : Prop :=
  ∀ n, P12567128731196740025.a n = A099213 n

end A099213

/-! ## A099213.P5979970192019176706

`A247594(n)-A123102(n+1)`
-/

namespace A099213.P5979970192019176706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247594 n - A123102 (n + 1)

end

end A099213.P5979970192019176706

namespace A099213

/-- `A247594(n)-A123102(n+1)` -/
def P5979970192019176706.Spec : Prop :=
  ∀ n, P5979970192019176706.a n = A099213 n

end A099213

/-! ## A099213.P15411949421251216790

`A356411(n)-2*A123102(n)`
-/

namespace A099213.P15411949421251216790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356411 n - 2 * A123102 n

end

end A099213.P15411949421251216790

namespace A099213

/-- `A356411(n)-2*A123102(n)` -/
def P15411949421251216790.Spec : Prop :=
  ∀ n, P15411949421251216790.a n = A099213 n

end A099213

/-! ## A099213.P16351718811188426082

`Δ[A103143(n+1)+A103143(n)]`
-/

namespace A099213.P16351718811188426082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 (n + 1) + A103143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099213.P16351718811188426082

namespace A099213

/-- `Δ[A103143(n+1)+A103143(n)]` -/
def P16351718811188426082.Spec : Prop :=
  ∀ n, P16351718811188426082.a n = A099213 n

end A099213

/-!
# A099214: a(n)=4a(n-1)-4a(n-2)+4a(n-3).

The programs for A099214, the canonical program `A099214.P10336736604028864255` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099214 has offset 0).

The definition of A099214 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+4*a(n-3)` (program `A099214.P10336736604028864255`, by `A099214.P10336736604028864255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099214.P10336736604028864255

`4*a(n-1)-4*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099214

/-- `4*a(n-1)-4*a(n-2)+4*a(n-3)` -/
def P10336736604028864255.Spec : Prop :=
  ∀ n, P10336736604028864255.a n = A099214 n

theorem P10336736604028864255.correct : P10336736604028864255.Spec := by
  intro n
  simp only [A099214]

end A099214

/-! ## A099214.P17622997778000809721

`ogf((1-2x)/(1-4x+4x^2-4x^3))`
-/

namespace A099214.P17622997778000809721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, -4] n

end

end A099214.P17622997778000809721

namespace A099214

/-- `ogf((1-2x)/(1-4x+4x^2-4x^3))` -/
def P17622997778000809721.Spec : Prop :=
  ∀ n, P17622997778000809721.a n = A099214 n

end A099214

/-! ## A099214.P3825568129507017184

`4*(a(n-1)+a(n-3)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A099214.P3825568129507017184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  4 * (a (n - 1) + (a (n - 3) - a (n - 2)))

end

end A099214.P3825568129507017184

namespace A099214

/-- `4*(a(n-1)+a(n-3)-a(n-2))` -/
def P3825568129507017184.Spec : Prop :=
  ∀ n, P3825568129507017184.a n = A099214 n

end A099214

/-! ## A099214.P4988590047533303243

`A052907(2*n)`
-/

namespace A099214.P4988590047533303243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 (2 * n)

end

end A099214.P4988590047533303243

namespace A099214

/-- `A052907(2*n)` -/
def P4988590047533303243.Spec : Prop :=
  ∀ n, P4988590047533303243.a n = A099214 n

end A099214

/-! ## A099214.P11862872612861193026

`record[∑[A078025(n)]]`
-/

namespace A099214.P11862872612861193026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078025 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099214.P11862872612861193026

namespace A099214

/-- `record[∑[A078025(n)]]` -/
def P11862872612861193026.Spec : Prop :=
  ∀ n, P11862872612861193026.a n = A099214 n

end A099214

/-! ## A099214.P14290317585575499553

`A247302(6*n+1)`
-/

namespace A099214.P14290317585575499553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247302 (6 * n + 1)

end

end A099214.P14290317585575499553

namespace A099214

/-- `A247302(6*n+1)` -/
def P14290317585575499553.Spec : Prop :=
  ∀ n, P14290317585575499553.a n = A099214 n

end A099214

/-! ## A099214.P15759090946489836120

`record[A052907(n)/(-1)^n]`
-/

namespace A099214.P15759090946489836120
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052907 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099214.P15759090946489836120

namespace A099214

/-- `record[A052907(n)/(-1)^n]` -/
def P15759090946489836120.Spec : Prop :=
  ∀ n, P15759090946489836120.a n = (A099214 n : ℚ)

end A099214

/-! ## A099214.P3271218313047873770

`record[A052907(lcm(n+1, n%2))]`
-/

namespace A099214.P3271218313047873770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 (Nat.lcm (n + 1) (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099214.P3271218313047873770

namespace A099214

/-- `record[A052907(lcm(n+1, n%2))]` -/
def P3271218313047873770.Spec : Prop :=
  ∀ n, P3271218313047873770.a n = A099214 n

end A099214

/-! ## A099214.P6943667103076794812

`∑[A107383(2*n+1)-A107383(2*n)]`
-/

namespace A099214.P6943667103076794812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 (2 * n + 1) - A107383 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099214.P6943667103076794812

namespace A099214

/-- `∑[A107383(2*n+1)-A107383(2*n)]` -/
def P6943667103076794812.Spec : Prop :=
  ∀ n, P6943667103076794812.a n = A099214 n

end A099214

/-! ## A099214.P2634217884031444308

`Δ[A107383(2*n)]-A107383(2*n)`
-/

namespace A099214.P2634217884031444308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107383 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A107383 (2 * n)

end

end A099214.P2634217884031444308

namespace A099214

/-- `Δ[A107383(2*n)]-A107383(2*n)` -/
def P2634217884031444308.Spec : Prop :=
  ∀ n, P2634217884031444308.a n = A099214 n

end A099214

/-! ## A099214.P9336338135631114123

`A061279(2*n+1)-(A107383(2*n)+A061279(2*n))`
-/

namespace A099214.P9336338135631114123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (2 * n + 1) - (A107383 (2 * n) + A061279 (2 * n))

end

end A099214.P9336338135631114123

namespace A099214

/-- `A061279(2*n+1)-(A107383(2*n)+A061279(2*n))` -/
def P9336338135631114123.Spec : Prop :=
  ∀ n, P9336338135631114123.a n = A099214 n

end A099214

/-! ## A099214.P2244536831024266004

`Δ[A061279(2*(n+1))]%A061279(2*(n+1))`
-/

namespace A099214.P2244536831024266004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061279 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A061279 (2 * (n + 1)))

end

end A099214.P2244536831024266004

namespace A099214

/-- `Δ[A061279(2*(n+1))]%A061279(2*(n+1))` -/
def P2244536831024266004.Spec : Prop :=
  ∀ n, P2244536831024266004.a n = A099214 n

end A099214

/-!
# A099215: a(n) = 4*a(n-1) - 4*a(n-2) + 3*a(n-3).

The programs for A099215, the canonical program `A099215.P11615568029934766663` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099215 has offset 0).

The definition of A099215 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+3*a(n-3)` (program `A099215.P11615568029934766663`, by `A099215.P11615568029934766663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099215.P11615568029934766663

`4*a(n-1)-4*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099215

/-- `4*a(n-1)-4*a(n-2)+3*a(n-3)` -/
def P11615568029934766663.Spec : Prop :=
  ∀ n, P11615568029934766663.a n = A099215 n

theorem P11615568029934766663.correct : P11615568029934766663.Spec := by
  intro n
  simp only [A099215]

end A099215

/-! ## A099215.P60713557788227885

`ogf((1-2x)/(1-4x+4x^2-3x^3))`
-/

namespace A099215.P60713557788227885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, -3] n

end

end A099215.P60713557788227885

namespace A099215

/-- `ogf((1-2x)/(1-4x+4x^2-3x^3))` -/
def P60713557788227885.Spec : Prop :=
  ∀ n, P60713557788227885.a n = A099215 n

end A099215

/-! ## A099215.P4717638320847109843

`3^(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A099215.P4717638320847109843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (a (n - 1) - a (n - 2))

end

end A099215.P4717638320847109843

namespace A099215

/-- `3^(n-1)+a(n-1)-a(n-2)` -/
def P4717638320847109843.Spec : Prop :=
  ∀ n, P4717638320847109843.a n = (A099215 n : ℚ)

end A099215

/-! ## A099215.P14118607019660303201

`A139782(n)-(A133405(n+1)+A133405(n))`
-/

namespace A099215.P14118607019660303201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139782 n - (A133405 (n + 1) + A133405 n)

end

end A099215.P14118607019660303201

namespace A099215

/-- `A139782(n)-(A133405(n+1)+A133405(n))` -/
def P14118607019660303201.Spec : Prop :=
  ∀ n, P14118607019660303201.a n = A099215 n

end A099215

/-! ## A099215.P679896524938144876

`A178703(n+1)+A010892(n)-A178703(n)`
-/

namespace A099215.P679896524938144876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178703 (n + 1) + (A010892 n - A178703 n)

end

end A099215.P679896524938144876

namespace A099215

/-- `A178703(n+1)+A010892(n)-A178703(n)` -/
def P679896524938144876.Spec : Prop :=
  ∀ n, P679896524938144876.a n = A099215 n

end A099215

/-! ## A099215.P13260659389883643111

`Δ[Δ[round(3^n/7)]]-round(3^n/7)`
-/

namespace A099215.P13260659389883643111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - SequenceMachineLib.roundAway ((3 ^ n : ℚ) / 7)

end

end A099215.P13260659389883643111

namespace A099215

/-- `Δ[Δ[round(3^n/7)]]-round(3^n/7)` -/
def P13260659389883643111.Spec : Prop :=
  ∀ n, P13260659389883643111.a n = A099215 n

end A099215

/-!
# A099216: a(n)=4a(n-1)-4a(n-2)+2a(n-3).

The programs for A099216, the canonical program `A099216.P661228070680486149` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099216 has offset 0).

The definition of A099216 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+2*a(n-3)` (program `A099216.P661228070680486149`, by `A099216.P661228070680486149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099216.P661228070680486149

`4*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099216

/-- `4*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P661228070680486149.Spec : Prop :=
  ∀ n, P661228070680486149.a n = A099216 n

theorem P661228070680486149.correct : P661228070680486149.Spec := by
  intro n
  simp only [A099216]

end A099216

/-! ## A099216.P8287348565380067278

`ogf((1-2x)/(1-4x+4x^2-2x^3))`
-/

namespace A099216.P8287348565380067278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, -2] n

end

end A099216.P8287348565380067278

namespace A099216

/-- `ogf((1-2x)/(1-4x+4x^2-2x^3))` -/
def P8287348565380067278.Spec : Prop :=
  ∀ n, P8287348565380067278.a n = A099216 n

end A099216

/-! ## A099216.P1383138840805212118

`∑[A078484(n)]+1`
-/

namespace A099216.P1383138840805212118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099216.P1383138840805212118

namespace A099216

/-- `∑[A078484(n)]+1` -/
def P1383138840805212118.Spec : Prop :=
  ∀ n, P1383138840805212118.a n = A099216 n

end A099216

/-! ## A099216.P6134364835606855669

`∑[A103685(n)+1]`
-/

namespace A099216.P6134364835606855669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P6134364835606855669

namespace A099216

/-- `∑[A103685(n)+1]` -/
def P6134364835606855669.Spec : Prop :=
  ∀ n, P6134364835606855669.a n = A099216 n

end A099216

/-! ## A099216.P10161392687925293007

`∑[∑[A115390(n)]+1]`
-/

namespace A099216.P10161392687925293007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115390 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P10161392687925293007

namespace A099216

/-- `∑[∑[A115390(n)]+1]` -/
def P10161392687925293007.Spec : Prop :=
  ∀ n, P10161392687925293007.a n = A099216 n

end A099216

/-! ## A099216.P3213314266116198508

`∑[A078484(A028310(n))]`
-/

namespace A099216.P3213314266116198508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P3213314266116198508

namespace A099216

/-- `∑[A078484(A028310(n))]` -/
def P3213314266116198508.Spec : Prop :=
  ∀ n, P3213314266116198508.a n = A099216 n

end A099216

/-! ## A099216.P12555440596629245438

`A117189(n)-A115390(n)`
-/

namespace A099216.P12555440596629245438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - A115390 n

end

end A099216.P12555440596629245438

namespace A099216

/-- `A117189(n)-A115390(n)` -/
def P12555440596629245438.Spec : Prop :=
  ∀ n, P12555440596629245438.a n = A099216 n

end A099216

/-! ## A099216.P6939820107871270453

`∑[A117189(n)-A073357(n)]`
-/

namespace A099216.P6939820107871270453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117189 n - A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P6939820107871270453

namespace A099216

/-- `∑[A117189(n)-A073357(n)]` -/
def P6939820107871270453.Spec : Prop :=
  ∀ n, P6939820107871270453.a n = A099216 n

end A099216

/-! ## A099216.P7383043269643826175

`∑[A078484(or(n, A000007(n)))]`
-/

namespace A099216.P7383043269643826175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P7383043269643826175

namespace A099216

/-- `∑[A078484(or(n, A000007(n)))]` -/
def P7383043269643826175.Spec : Prop :=
  ∀ n, P7383043269643826175.a n = A099216 n

end A099216

/-! ## A099216.P1840245467091942103

`A159035(n+1)-A115390(n)`
-/

namespace A099216.P1840245467091942103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) - A115390 n

end

end A099216.P1840245467091942103

namespace A099216

/-- `A159035(n+1)-A115390(n)` -/
def P1840245467091942103.Spec : Prop :=
  ∀ n, P1840245467091942103.a n = A099216 n

end A099216

/-! ## A099216.P15899277334872812456

`A036453(n+1)*A159035(n)`
-/

namespace A099216.P15899277334872812456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A159035 n

end

end A099216.P15899277334872812456

namespace A099216

/-- `A036453(n+1)*A159035(n)` -/
def P15899277334872812456.Spec : Prop :=
  ∀ n, P15899277334872812456.a n = A099216 n

end A099216

/-! ## A099216.P6856841481336177614

`∑[A159035(n+1)-A073357(n)]`
-/

namespace A099216.P6856841481336177614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159035 (n + 1) - A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P6856841481336177614

namespace A099216

/-- `∑[A159035(n+1)-A073357(n)]` -/
def P6856841481336177614.Spec : Prop :=
  ∀ n, P6856841481336177614.a n = A099216 n

end A099216

/-! ## A099216.P14012160571670323136

`2-∑[A000007(n)-A078484(n)]`
-/

namespace A099216.P14012160571670323136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A078484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P14012160571670323136

namespace A099216

/-- `2-∑[A000007(n)-A078484(n)]` -/
def P14012160571670323136.Spec : Prop :=
  ∀ n, P14012160571670323136.a n = A099216 n

end A099216

/-! ## A099216.P8459991423365346236

`A000124(n)-∑[n-A078484(n)]`
-/

namespace A099216.P8459991423365346236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A078484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P8459991423365346236

namespace A099216

/-- `A000124(n)-∑[n-A078484(n)]` -/
def P8459991423365346236.Spec : Prop :=
  ∀ n, P8459991423365346236.a n = A099216 n

end A099216

/-! ## A099216.P1136827823050207894

`Δ[A073357(n)]-A115390(n)`
-/

namespace A099216.P1136827823050207894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A115390 n

end

end A099216.P1136827823050207894

namespace A099216

/-- `Δ[A073357(n)]-A115390(n)` -/
def P1136827823050207894.Spec : Prop :=
  ∀ n, P1136827823050207894.a n = A099216 n

end A099216

/-! ## A099216.P1138972275458280383

`A073357(n+1)-∑[A073357(n)]`
-/

namespace A099216.P1138972275458280383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099216.P1138972275458280383

namespace A099216

/-- `A073357(n+1)-∑[A073357(n)]` -/
def P1138972275458280383.Spec : Prop :=
  ∀ n, P1138972275458280383.a n = A099216 n

end A099216

/-! ## A099216.P5146016716244623522

`A073357(n+1)-Δ[A103685(n)]`
-/

namespace A099216.P5146016716244623522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1) - (f1 (n + 1) - f1 n)

end

end A099216.P5146016716244623522

namespace A099216

/-- `A073357(n+1)-Δ[A103685(n)]` -/
def P5146016716244623522.Spec : Prop :=
  ∀ n, P5146016716244623522.a n = A099216 n

end A099216

/-! ## A099216.P4080700272584948085

`A073357(n+1)-A115390(n+1)`
-/

namespace A099216.P4080700272584948085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073357 (n + 1) - A115390 (n + 1)

end

end A099216.P4080700272584948085

namespace A099216

/-- `A073357(n+1)-A115390(n+1)` -/
def P4080700272584948085.Spec : Prop :=
  ∀ n, P4080700272584948085.a n = A099216 n

end A099216

/-! ## A099216.P17290061790338428040

`A078484(n+1)-2*A115390(n)`
-/

namespace A099216.P17290061790338428040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078484 (n + 1) - 2 * A115390 n

end

end A099216.P17290061790338428040

namespace A099216

/-- `A078484(n+1)-2*A115390(n)` -/
def P17290061790338428040.Spec : Prop :=
  ∀ n, P17290061790338428040.a n = A099216 n

end A099216

/-!
# A099227: Primes of the form m^k+k, with m and k > 1.

The programs for A099227, there is no canonical definition to state claims against.
-/

/-! ## A099227.P9121514150503889973

`∩[A099225(n+1), A344990(n+1)]`
-/

namespace A099227.P9121514150503889973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099227.P9121514150503889973

/-! ## A099227.P11079236029978684209

`p?[A099225(n+1)]`
-/

namespace A099227.P11079236029978684209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099227.P11079236029978684209

/-! ## A099227.P7455102623762154648

`or(1, p?[A099225(A028310(n))])`
-/

namespace A099227.P7455102623762154648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099225 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A099227.P7455102623762154648

/-! ## A099227.P9445104426458796772

`p?[A033999(n)*A099225(A008619(n))]`
-/

namespace A099227.P9445104426458796772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099225 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099227.P9445104426458796772

/-! ## A099227.P17326563297612732584

`p?[A099225(A028310(n))%A008384(n)]`
-/

namespace A099227.P17326563297612732584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099225 (A028310 n).toNat) (A008384 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099227.P17326563297612732584

/-!
# A099228: Primes of the form m^k-k, with m and k > 1.

The programs for A099228, there is no canonical definition to state claims against.
-/

/-! ## A099228.P8413574008153406552

`∩[A057897(n+1), A344990(n+1)]`
-/

namespace A099228.P8413574008153406552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099228.P8413574008153406552

/-! ## A099228.P2730416950374368488

`p?[A057897(n+1)]`
-/

namespace A099228.P2730416950374368488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P2730416950374368488

/-! ## A099228.P13239939150992199200

`p?[and(1, n)*A057897(A008619(n))]`
-/

namespace A099228.P13239939150992199200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A057897 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P13239939150992199200

/-! ## A099228.P14633348204191906738

`p?[A057897(A028310(n))-A000007(n)]`
-/

namespace A099228.P14633348204191906738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P14633348204191906738

/-! ## A099228.P14064831737445264981

`p?[A057897(A028310(n))-A000038(n)]`
-/

namespace A099228.P14064831737445264981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P14064831737445264981

/-! ## A099228.P12228820117648095106

`p?[A000035(n)*A057897(A008619(n))]`
-/

namespace A099228.P12228820117648095106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A057897 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P12228820117648095106

/-! ## A099228.P3899560256954021710

`p?[A033999(n)*A057897(A008619(n))]`
-/

namespace A099228.P3899560256954021710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A057897 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P3899560256954021710

/-! ## A099228.P17853912574166168895

`p?[A057897(A028310(n))%A001769(n)]`
-/

namespace A099228.P17853912574166168895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057897 (A028310 n).toNat) (A001769 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P17853912574166168895

/-! ## A099228.P2775911017333361727

`p?[A057897(A028310(n))-A130706(2*n)]`
-/

namespace A099228.P2775911017333361727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (A028310 n).toNat - A130706 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A099228.P2775911017333361727

/-! ## A099228.P12917779465998382984

`∩[A057897(n+1), A216881(n+1)]`
-/

namespace A099228.P12917779465998382984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099228.P12917779465998382984

/-!
# A099232: a(n) = 2*a(n-1) + 2*a(n-2) - 3*a(n-3), with a(0) = 0, a(1) = 1, a(2) = 2.

The programs for A099232, the canonical program `A099232.P8825957034618178774` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099232 has offset 0).

The definition of A099232 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)-3*a(n-3)` (program `A099232.P8825957034618178774`, by `A099232.P8825957034618178774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099232.P2877835516925262939

`a(n-1)+3*a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A099232.P2877835516925262939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + 3 * a (n - 2) + 1

end

end A099232.P2877835516925262939

namespace A099232

/-- `a(n-1)+3*a(n-2)+1` -/
def P2877835516925262939.Spec : Prop :=
  ∀ n, (P2877835516925262939.a n : ℤ) = A099232 n

end A099232

/-! ## A099232.P8825957034618178774

`2*a(n-1)+2*a(n-2)-3*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099232

/-- `2*a(n-1)+2*a(n-2)-3*a(n-3)` -/
def P8825957034618178774.Spec : Prop :=
  ∀ n, P8825957034618178774.a n = A099232 n

theorem P8825957034618178774.correct : P8825957034618178774.Spec := by
  intro n
  simp only [A099232]

end A099232

/-! ## A099232.P11044424201859208895

`ogf(x/(1-2x-2x^2+3x^3))`
-/

namespace A099232.P11044424201859208895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -2, 3] n

end

end A099232.P11044424201859208895

namespace A099232

/-- `ogf(x/(1-2x-2x^2+3x^3))` -/
def P11044424201859208895.Spec : Prop :=
  ∀ n, P11044424201859208895.a n = A099232 n

end A099232

/-! ## A099232.P3066504100478686680

`∑[a(n-1)+3*a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A099232.P3066504100478686680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P3066504100478686680

namespace A099232

/-- `∑[a(n-1)+3*a(n-2)]` -/
def P3066504100478686680.Spec : Prop :=
  ∀ n, (P3066504100478686680.a n : ℤ) = A099232 n

end A099232

/-! ## A099232.P8703583843064025973

`∑[a(n-1)+lcm(3, a(n-2))]` with `a(0)=0, a(1)=1`
-/

namespace A099232.P8703583843064025973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + Nat.lcm 3 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P8703583843064025973

namespace A099232

/-- `∑[a(n-1)+lcm(3, a(n-2))]` -/
def P8703583843064025973.Spec : Prop :=
  ∀ n, (P8703583843064025973.a n : ℤ) = A099232 n

end A099232

/-! ## A099232.P5844287100822402765

`3*a(n-2)-xor(-1, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A099232.P5844287100822402765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 2) - Int.xor (-1) (a (n - 1))

end

end A099232.P5844287100822402765

namespace A099232

/-- `3*a(n-2)-xor(-1, a(n-1))` -/
def P5844287100822402765.Spec : Prop :=
  ∀ n, P5844287100822402765.a n = A099232 n

end A099232

/-! ## A099232.P8632583086027380336

`4-(3*(1-a(n-2))-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A099232.P8632583086027380336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 - (3 * (1 - a (n - 2)) - a (n - 1))

end

end A099232.P8632583086027380336

namespace A099232

/-- `4-(3*(1-a(n-2))-a(n-1))` -/
def P8632583086027380336.Spec : Prop :=
  ∀ n, P8632583086027380336.a n = A099232 n

end A099232

/-! ## A099232.P10555703849633521846

`∑[a(n-2)+a(n-2)+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A099232.P10555703849633521846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + (f1 (n - 1) + f1 (n - 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P10555703849633521846

namespace A099232

/-- `∑[a(n-2)+a(n-2)+a(n-1)+a(n-2)]` -/
def P10555703849633521846.Spec : Prop :=
  ∀ n, (P10555703849633521846.a n : ℤ) = A099232 n

end A099232

/-! ## A099232.P17902096333606602532

`a(n-1)+a(n-2)+a(n-2)+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A099232.P17902096333606602532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 2) + 1)))

end

end A099232.P17902096333606602532

namespace A099232

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-2)+1` -/
def P17902096333606602532.Spec : Prop :=
  ∀ n, (P17902096333606602532.a n : ℤ) = A099232 n

end A099232

/-! ## A099232.P14628910397901074704

`∑[abs(A182228(n))]`
-/

namespace A099232.P14628910397901074704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182228 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P14628910397901074704

namespace A099232

/-- `∑[abs(A182228(n))]` -/
def P14628910397901074704.Spec : Prop :=
  ∀ n, P14628910397901074704.a n = A099232 n

end A099232

/-! ## A099232.P18265843026079952716

`∑[A052533(n+1)/3]`
-/

namespace A099232.P18265843026079952716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052533 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P18265843026079952716

namespace A099232

/-- `∑[A052533(n+1)/3]` -/
def P18265843026079952716.Spec : Prop :=
  ∀ n, P18265843026079952716.a n = (A099232 n : ℚ)

end A099232

/-! ## A099232.P15594461606604331645

`∑[∑[A052533(n)]-A052533(n)]`
-/

namespace A099232.P15594461606604331645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A052533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P15594461606604331645

namespace A099232

/-- `∑[∑[A052533(n)]-A052533(n)]` -/
def P15594461606604331645.Spec : Prop :=
  ∀ n, P15594461606604331645.a n = A099232 n

end A099232

/-! ## A099232.P17455682193327636300

`∑[∑[A105476(n)]-A006130(n)]`
-/

namespace A099232.P17455682193327636300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099232.P17455682193327636300

namespace A099232

/-- `∑[∑[A105476(n)]-A006130(n)]` -/
def P17455682193327636300.Spec : Prop :=
  ∀ n, P17455682193327636300.a n = A099232 n

end A099232

/-! ## A099232.P2171304877962384000

`(A006130(n+1)-1)/3`
-/

namespace A099232.P2171304877962384000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006130 (n + 1) - 1 : ℚ) / 3

end

end A099232.P2171304877962384000

namespace A099232

/-- `(A006130(n+1)-1)/3` -/
def P2171304877962384000.Spec : Prop :=
  ∀ n, P2171304877962384000.a n = (A099232 n : ℚ)

end A099232

/-! ## A099232.P10871154178897577109

`A019485(n)%A006138(n)`
-/

namespace A099232.P10871154178897577109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019485 n) (A006138 n)

end

end A099232.P10871154178897577109

namespace A099232

/-- `A019485(n)%A006138(n)` -/
def P10871154178897577109.Spec : Prop :=
  ∀ n, P10871154178897577109.a n = A099232 n

end A099232

/-! ## A099232.P7695801243662300746

`∑[A006130(n)]-A006130(n)`
-/

namespace A099232.P7695801243662300746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A006130 n

end

end A099232.P7695801243662300746

namespace A099232

/-- `∑[A006130(n)]-A006130(n)` -/
def P7695801243662300746.Spec : Prop :=
  ∀ n, P7695801243662300746.a n = A099232 n

end A099232

/-! ## A099232.P16272694795511413080

`A288309(n)-A019525(n+1)`
-/

namespace A099232.P16272694795511413080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288309 n - A019525 (n + 1)

end

end A099232.P16272694795511413080

namespace A099232

/-- `A288309(n)-A019525(n+1)` -/
def P16272694795511413080.Spec : Prop :=
  ∀ n, P16272694795511413080.a n = A099232 n

end A099232

/-! ## A099232.P15929046925130968305

`record[∑[A112883(n)]-A112883(n)²]`
-/

namespace A099232.P15929046925130968305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112883 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A112883 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099232.P15929046925130968305

namespace A099232

/-- `record[∑[A112883(n)]-A112883(n)²]` -/
def P15929046925130968305.Spec : Prop :=
  ∀ n, P15929046925130968305.a n = A099232 n

end A099232

/-!
# A099233: Square array read by antidiagonals associated to sections of 1/(1-x-x^k).

The programs for A099233, there is no canonical definition to state claims against.
-/

/-! ## A099233.P13164885853782189938

`A293551(n)+A240467(∑[A002865(n)])`
-/

namespace A099233.P13164885853782189938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n + A240467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099233.P13164885853782189938

/-! ## A099233.P4307734008757059748

`A316865(A195644(n+1))+A096751(n)`
-/

namespace A099233.P4307734008757059748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 (A195644 (n + 1)).toNat + A096751 n

end

end A099233.P4307734008757059748

/-! ## A099233.P566130851087200624

`A293551(n)+A240467(∑{d}[n+1, A133732(#)])`
-/

namespace A099233.P566130851087200624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n + A240467 (∑ d ∈ Nat.divisors (f1 n), A133732 d).toNat

end

end A099233.P566130851087200624

/-! ## A099233.P5207511125738445001

`A293551(n)+A240467(A039900(n)+A003106(n))`
-/

namespace A099233.P5207511125738445001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n + A240467 (A039900 n + A003106 n).toNat

end

end A099233.P5207511125738445001

/-! ## A099233.P16255196421794228044

`A293551(n)+A240467(A047967(n)+A000009(n))`
-/

namespace A099233.P16255196421794228044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 n + A240467 (A047967 n + A000009 n).toNat

end

end A099233.P16255196421794228044

/-!
# A099234: A trisection of 1/(1-x-x^4).

The programs for A099234, the canonical program `A099234.P7723489567506522734` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099234 has offset 0).

The definition of A099234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099234.P7723489567506522734

`a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099234

/-- `a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` -/
def P7723489567506522734.Spec : Prop :=
  ∀ n, (P7723489567506522734.a n : ℤ) = A099234 n

theorem P7723489567506522734.correct : P7723489567506522734.Spec := by
  intro n
  simp only [A099234]

end A099234

/-! ## A099234.P11616629034852296727

`ogf(-1/(-1+x+3x^2+3x^3+x^4))`
-/

namespace A099234.P11616629034852296727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -3, -3, -1] n

end

end A099234.P11616629034852296727

namespace A099234

/-- `ogf(-1/(-1+x+3x^2+3x^3+x^4))` -/
def P11616629034852296727.Spec : Prop :=
  ∀ n, P11616629034852296727.a n = A099234 n

end A099234

/-! ## A099234.P18212116560253681658

`A003269(3*n+1)`
-/

namespace A099234.P18212116560253681658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (3 * n + 1)

end

end A099234.P18212116560253681658

namespace A099234

/-- `A003269(3*n+1)` -/
def P18212116560253681658.Spec : Prop :=
  ∀ n, P18212116560253681658.a n = A099234 n

end A099234

/-! ## A099234.P12434820342825250541

`A017898(3*n+4)`
-/

namespace A099234.P12434820342825250541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017898 (3 * n + 4)

end

end A099234.P12434820342825250541

namespace A099234

/-- `A017898(3*n+4)` -/
def P12434820342825250541.Spec : Prop :=
  ∀ n, P12434820342825250541.a n = A099234 n

end A099234

/-! ## A099234.P9003265662611360295

`A122522(6*n+1)`
-/

namespace A099234.P9003265662611360295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122522 (6 * n + 1)

end

end A099234.P9003265662611360295

namespace A099234

/-- `A122522(6*n+1)` -/
def P9003265662611360295.Spec : Prop :=
  ∀ n, P9003265662611360295.a n = A099234 n

end A099234

/-! ## A099234.P8986183973241864541

`A226517(6*n+11)`
-/

namespace A099234.P8986183973241864541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226517 (6 * n + 11)

end

end A099234.P8986183973241864541

namespace A099234

/-- `A226517(6*n+11)` -/
def P8986183973241864541.Spec : Prop :=
  ∀ n, P8986183973241864541.a n = A099234 n

end A099234

/-! ## A099234.P2594737800088598842

`Δ[A017819(2*n+1+n)]`
-/

namespace A099234.P2594737800088598842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017819 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099234.P2594737800088598842

namespace A099234

/-- `Δ[A017819(2*n+1+n)]` -/
def P2594737800088598842.Spec : Prop :=
  ∀ n, P2594737800088598842.a n = A099234 n

end A099234

/-! ## A099234.P17049092597604627507

`gcd(A000038(n), A003269(A016777(n)))`
-/

namespace A099234.P17049092597604627507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A003269 (A016777 n).toNat)

end

end A099234.P17049092597604627507

namespace A099234

/-- `gcd(A000038(n), A003269(A016777(n)))` -/
def P17049092597604627507.Spec : Prop :=
  ∀ n, (P17049092597604627507.a n : ℤ) = A099234 n

end A099234

/-! ## A099234.P16299846109209743834

`A003269(A016777(n))+A000038(n+1)`
-/

namespace A099234.P16299846109209743834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A016777 n).toNat + A000038 (n + 1)

end

end A099234.P16299846109209743834

namespace A099234

/-- `A003269(A016777(n))+A000038(n+1)` -/
def P16299846109209743834.Spec : Prop :=
  ∀ n, P16299846109209743834.a n = A099234 n

end A099234

/-! ## A099234.P8596884003453039062

`A003269(A016777(n))-A000038(n)*A003269(n)`
-/

namespace A099234.P8596884003453039062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (A016777 n).toNat - A000038 n * A003269 n

end

end A099234.P8596884003453039062

namespace A099234

/-- `A003269(A016777(n))-A000038(n)*A003269(n)` -/
def P8596884003453039062.Spec : Prop :=
  ∀ n, P8596884003453039062.a n = A099234 n

end A099234

/-! ## A099234.P1654055469525985117

`A099233(A052905(n+1)+1)`
-/

namespace A099234.P1654055469525985117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (A052905 (n + 1) + 1).toNat

end

end A099234.P1654055469525985117

namespace A099234

/-- `A099233(A052905(n+1)+1)` -/
def P1654055469525985117.Spec : Prop :=
  ∀ n, P1654055469525985117.a n = A099234 n

end A099234

/-! ## A099234.P507291515593962643

`sqrt(A224808(6*n))`
-/

namespace A099234.P507291515593962643
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A224808 (6 * n) : ℝ)

end

end A099234.P507291515593962643

namespace A099234

/-- `sqrt(A224808(6*n))` -/
def P507291515593962643.Spec : Prop :=
  ∀ n, P507291515593962643.a n = (A099234 n : ℝ)

end A099234

/-!
# A099235: A quadrisection of 1/(1-x-x^5).

The programs for A099235, the canonical program `A099235.P16405638371814562940` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099235 has offset 0).

The definition of A099235 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099235.P16405638371814562940

`a(n-1)+4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=15, a(4)=45`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099235

/-- `a(n-1)+4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` -/
def P16405638371814562940.Spec : Prop :=
  ∀ n, (P16405638371814562940.a n : ℤ) = A099235 n

theorem P16405638371814562940.correct : P16405638371814562940.Spec := by
  intro n
  simp only [A099235]

end A099235

/-! ## A099235.P646693863190495221

`A003520(4*n)`
-/

namespace A099235.P646693863190495221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (4 * n)

end

end A099235.P646693863190495221

namespace A099235

/-- `A003520(4*n)` -/
def P646693863190495221.Spec : Prop :=
  ∀ n, P646693863190495221.a n = A099235 n

end A099235

/-! ## A099235.P17544099973628891196

`ogf(-1/(-1+x+4x^2+6x^3+4x^4+x^5))`
-/

namespace A099235.P17544099973628891196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -4, -6, -4, -1] n

end

end A099235.P17544099973628891196

namespace A099235

/-- `ogf(-1/(-1+x+4x^2+6x^3+4x^4+x^5))` -/
def P17544099973628891196.Spec : Prop :=
  ∀ n, P17544099973628891196.a n = A099235 n

end A099235

/-! ## A099235.P16036029333961549389

`A193147(2*n)`
-/

namespace A099235.P16036029333961549389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193147 (2 * n)

end

end A099235.P16036029333961549389

namespace A099235

/-- `A193147(2*n)` -/
def P16036029333961549389.Spec : Prop :=
  ∀ n, P16036029333961549389.a n = A099235 n

end A099235

/-! ## A099235.P10938786331620931125

`A017899(4*n+5)`
-/

namespace A099235.P10938786331620931125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (4 * n + 5)

end

end A099235.P10938786331620931125

namespace A099235

/-- `A017899(4*n+5)` -/
def P10938786331620931125.Spec : Prop :=
  ∀ n, P10938786331620931125.a n = A099235 n

end A099235

/-! ## A099235.P11395114322636501933

`A226516(9*(n+1)+2-n)`
-/

namespace A099235.P11395114322636501933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226516 ((9 * (n + 1) : ℤ) + (2 - (n : ℤ))).toNat

end

end A099235.P11395114322636501933

namespace A099235

/-- `A226516(9*(n+1)+2-n)` -/
def P11395114322636501933.Spec : Prop :=
  ∀ n, P11395114322636501933.a n = A099235 n

end A099235

/-! ## A099235.P13398709512849309469

`Δ[A017830(4*n+1)]`
-/

namespace A099235.P13398709512849309469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017830 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099235.P13398709512849309469

namespace A099235

/-- `Δ[A017830(4*n+1)]` -/
def P13398709512849309469.Spec : Prop :=
  ∀ n, P13398709512849309469.a n = A099235 n

end A099235

/-! ## A099235.P3754590114689508454

`A099233(A052905(n+2))`
-/

namespace A099235.P3754590114689508454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (A052905 (n + 2)).toNat

end

end A099235.P3754590114689508454

namespace A099235

/-- `A099233(A052905(n+2))` -/
def P3754590114689508454.Spec : Prop :=
  ∀ n, P3754590114689508454.a n = A099235 n

end A099235

/-! ## A099235.P7184845621884272704

`A373717((2*n+1)*(n+3))`
-/

namespace A099235.P7184845621884272704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373717 ((2 * n + 1) * (n + 3))

end

end A099235.P7184845621884272704

namespace A099235

/-- `A373717((2*n+1)*(n+3))` -/
def P7184845621884272704.Spec : Prop :=
  ∀ n, P7184845621884272704.a n = A099235 n

end A099235

/-!
# A099236: Sums of antidiagonals of A099233.

The programs for A099236, there is no canonical definition to state claims against.
-/

/-! ## A099236.P14702574335852656214

`A066339(A120227(n+2)+A007239(n+1))`
-/

namespace A099236.P14702574335852656214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A120227 (n + 2) + A007239 (n + 1)).toNat

end

end A099236.P14702574335852656214

/-! ## A099236.P11182644485499702744

`∑[A257639(∑[A103941(n)])]`
-/

namespace A099236.P11182644485499702744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099236.P11182644485499702744

/-! ## A099236.P11986594552979939613

`∑[A185714(2*(A097085(n)+2))]+1`
-/

namespace A099236.P11986594552979939613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (2 * (A097085 n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A099236.P11986594552979939613

/-! ## A099236.P9047874421325683015

`A097332(n)+A030706(A036647(n+2))`
-/

namespace A099236.P9047874421325683015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n + A030706 ((A036647 (n + 2)).toNat + 1)

end

end A099236.P9047874421325683015

/-! ## A099236.P12528229707204194138

`A026819(A128726(n)+A011782(n+2))`
-/

namespace A099236.P12528229707204194138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A128726 n + A011782 (n + 2)).toNat

end

end A099236.P12528229707204194138

/-!
# A099237: a(n) = Sum_{k=0..n} binomial(n*(n-k), k).

The programs for A099237, there is no canonical definition to state claims against.
-/

/-! ## A099237.P5819869829539424004

`A362079(∑[n+1]+n)`
-/

namespace A099237.P5819869829539424004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362079 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A099237.P5819869829539424004

/-! ## A099237.P10665378969508812122

`A099233(∑[4*n])`
-/

namespace A099237.P10665378969508812122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099237.P10665378969508812122

/-! ## A099237.P11553916812520300846

`A099233(A046092(n))+A000086(3*n+2)`
-/

namespace A099237.P11553916812520300846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (A046092 n).toNat + A000086 (3 * n + 2)

end

end A099237.P11553916812520300846

/-! ## A099237.P8561826588735550216

`A099233(A046092(n))+A025431(∑{d}[n+1, #%2])`
-/

namespace A099237.P8561826588735550216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099233 (A046092 n).toNat + A025431 (∑ d ∈ Nat.divisors (f1 n), d % 2)

end

end A099237.P8561826588735550216

/-! ## A099237.P14689892178385180021

`A099233(A046092(n))%(3*A357209(n))`
-/

namespace A099237.P14689892178385180021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099233 (A046092 n).toNat) (3 * A357209 n)

end

end A099237.P14689892178385180021

/-!
# A099238: Square array read by antidiagonals with rows generated by 1/(1-x-x^(k+1)).

The programs for A099238, there is no canonical definition to state claims against.
-/

/-! ## A099238.P6057860490659837773

`floor(sqrt(A247489(n)²+1))`
-/

namespace A099238.P6057860490659837773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A247489 n ^ 2 + 1)

end

end A099238.P6057860490659837773

/-! ## A099238.P12213153211430045952

`A028310(A247489(n))`
-/

namespace A099238.P12213153211430045952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A247489 n).toNat

end

end A099238.P12213153211430045952

/-! ## A099238.P2576250866822939297

`A062050(∑[A125104(n)])`
-/

namespace A099238.P2576250866822939297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A099238.P2576250866822939297

/-! ## A099238.P1598596550617873004

`A393918(A038722(n+1))`
-/

namespace A099238.P1598596550617873004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393918 (A038722 (n + 1)).toNat

end

end A099238.P1598596550617873004

/-! ## A099238.P13413705686484827929

`A065033(2*A247489(n))`
-/

namespace A099238.P13413705686484827929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * A247489 n).toNat

end

end A099238.P13413705686484827929

/-! ## A099238.P1591096267844877418

`A123108(2*A247489(n))`
-/

namespace A099238.P1591096267844877418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A247489 n).toNat

end

end A099238.P1591096267844877418

/-! ## A099238.P8586031323229478950

`A247489(n*A340507(n))`
-/

namespace A099238.P8586031323229478950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247489 ((n : ℤ) * A340507 n).toNat

end

end A099238.P8586031323229478950

/-! ## A099238.P6390322976639835174

`gcd(A247489(n), A380959(n))`
-/

namespace A099238.P6390322976639835174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A247489 n) (A380959 n)

end

end A099238.P6390322976639835174

/-! ## A099238.P11162222052049952196

`A247489(lcm(n, A187034(n)))`
-/

namespace A099238.P11162222052049952196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247489 (Int.lcm (n : ℤ) (A187034 n))

end

end A099238.P11162222052049952196

/-! ## A099238.P6506139998869848441

`∏{d}[A247489(n), A014963(#)]`
-/

namespace A099238.P6506139998869848441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A099238.P6506139998869848441

/-!
# A099239: Square array read by antidiagonals associated with sections of 1/(1-x-x^k).

The programs for A099239, there is no canonical definition to state claims against.
-/

/-! ## A099239.P13192437052565203322

`A137743(n+1)+A010054(A168292(n))`
-/

namespace A099239.P13192437052565203322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (n + 1) + A010054 (A168292 n).toNat

end

end A099239.P13192437052565203322

/-! ## A099239.P16601224838231353200

`A185284(A017900(n))+A137743(n+1)`
-/

namespace A099239.P16601224838231353200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A017900 n).toNat + A137743 (n + 1)

end

end A099239.P16601224838231353200

/-! ## A099239.P5565409999159593511

`A185284(A025148(n))+A137743(n+1)`
-/

namespace A099239.P5565409999159593511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A025148 n).toNat + A137743 (n + 1)

end

end A099239.P5565409999159593511

/-! ## A099239.P15506818883512074976

`A137743(n+1)+A102683(A185044(n))`
-/

namespace A099239.P15506818883512074976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137743 (n + 1) + A102683 (A185044 n).toNat

end

end A099239.P15506818883512074976

/-! ## A099239.P10745009151616931567

`or(A102683(A138526(n)), A137743(n+1))`
-/

namespace A099239.P10745009151616931567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 (A138526 n).toNat) (A137743 (n + 1))

end

end A099239.P10745009151616931567

/-!
# A099240: Main diagonal of A099239.

The programs for A099240, there is no canonical definition to state claims against.
-/

/-! ## A099240.P3470996994928318767

`A099239(∑[4*n])`
-/

namespace A099240.P3470996994928318767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099240.P3470996994928318767

/-! ## A099240.P11256501443981454163

`record[A099239(∑[A071045(n)])]`
-/

namespace A099240.P11256501443981454163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099240.P11256501443981454163

/-! ## A099240.P16536663182764603768

`record[A003982(n)*A099239(n)]`
-/

namespace A099240.P16536663182764603768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A099239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099240.P16536663182764603768

/-! ## A099240.P16269992312386509009

`record[A099239(∑[A064455(n+1)])]`
-/

namespace A099240.P16269992312386509009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099240.P16269992312386509009

/-! ## A099240.P15594551130341082321

`record[A099239((n+1)*A004526(n))]`
-/

namespace A099240.P15594551130341082321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099239 ((n + 1 : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099240.P15594551130341082321

/-!
# A099241: Sums of antidiagonals of A099239.

The programs for A099241, there is no canonical definition to state claims against.
-/

/-! ## A099241.P10681370669983043817

`A307372(A076014(n+1))+2^n-A158499(n)`
-/

namespace A099241.P10681370669983043817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307372 (A076014 (n + 1)).toNat + ((2 ^ n : ℤ) - A158499 n)

end

end A099241.P10681370669983043817

/-! ## A099241.P17015525744069748054

`A375433(A084816(n+2))`
-/

namespace A099241.P17015525744069748054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375433 (A084816 (n + 2)).toNat

end

end A099241.P17015525744069748054

/-! ## A099241.P8447058202402643850

`∑[A308273(n)%A308316(n+1)]`
-/

namespace A099241.P8447058202402643850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308273 n) (A308316 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099241.P8447058202402643850

/-! ## A099241.P14909717670482586567

`∑[A308273(n)]%A162820(3*n+1)`
-/

namespace A099241.P14909717670482586567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A162820 (3 * n + 1))

end

end A099241.P14909717670482586567

/-!
# A099242: (6n+5)-th terms of expansion of 1/(1 - x - x^6).

The programs for A099242, the canonical program `A099242.P10278770644118872281` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099242 has offset 0).

The definition of A099242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099242.P10278770644118872281

`Δ[A371125(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099242

/-- `Δ[A371125(n)]` -/
def P10278770644118872281.Spec : Prop :=
  ∀ n, P10278770644118872281.a n = A099242 n

theorem P10278770644118872281.correct : P10278770644118872281.Spec := by
  intro n
  simp only [A099242]

end A099242

/-! ## A099242.P9160562194770013564

`∑[A373302(n+1)]`
-/

namespace A099242.P9160562194770013564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099242.P9160562194770013564

namespace A099242

/-- `∑[A373302(n+1)]` -/
def P9160562194770013564.Spec : Prop :=
  ∀ n, P9160562194770013564.a n = A099242 n

end A099242

/-! ## A099242.P3264661728792179312

`Δ[A373638(2*n)]`
-/

namespace A099242.P3264661728792179312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P3264661728792179312

namespace A099242

/-- `Δ[A373638(2*n)]` -/
def P3264661728792179312.Spec : Prop :=
  ∀ n, P3264661728792179312.a n = A099242 n

end A099242

/-! ## A099242.P6718632571595297614

`Δ[A373639(3*n)]`
-/

namespace A099242.P6718632571595297614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373639 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P6718632571595297614

namespace A099242

/-- `Δ[A373639(3*n)]` -/
def P6718632571595297614.Spec : Prop :=
  ∀ n, P6718632571595297614.a n = A099242 n

end A099242

/-! ## A099242.P7180063747431351264

`Δ[A005708(6*n)]`
-/

namespace A099242.P7180063747431351264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P7180063747431351264

namespace A099242

/-- `Δ[A005708(6*n)]` -/
def P7180063747431351264.Spec : Prop :=
  ∀ n, P7180063747431351264.a n = A099242 n

end A099242

/-! ## A099242.P11006611631729113703

`A373653(2*(n+1))`
-/

namespace A099242.P11006611631729113703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373653 (2 * (n + 1))

end

end A099242.P11006611631729113703

namespace A099242

/-- `A373653(2*(n+1))` -/
def P11006611631729113703.Spec : Prop :=
  ∀ n, P11006611631729113703.a n = A099242 n

end A099242

/-! ## A099242.P7750785466403013115

`A373654(3*(n+1))`
-/

namespace A099242.P7750785466403013115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373654 (3 * (n + 1))

end

end A099242.P7750785466403013115

namespace A099242

/-- `A373654(3*(n+1))` -/
def P7750785466403013115.Spec : Prop :=
  ∀ n, P7750785466403013115.a n = A099242 n

end A099242

/-! ## A099242.P6438328321892477854

`A005708(6*n+5)`
-/

namespace A099242.P6438328321892477854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * n + 5)

end

end A099242.P6438328321892477854

namespace A099242

/-- `A005708(6*n+5)` -/
def P6438328321892477854.Spec : Prop :=
  ∀ n, P6438328321892477854.a n = A099242 n

end A099242

/-! ## A099242.P8595988776314474334

`A017900(6*n+11)`
-/

namespace A099242.P8595988776314474334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (6 * n + 11)

end

end A099242.P8595988776314474334

namespace A099242

/-- `A017900(6*n+11)` -/
def P8595988776314474334.Spec : Prop :=
  ∀ n, P8595988776314474334.a n = A099242 n

end A099242

/-! ## A099242.P13926154856719632099

`∑[∑[A373958(n+1)]]`
-/

namespace A099242.P13926154856719632099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373958 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099242.P13926154856719632099

namespace A099242

/-- `∑[∑[A373958(n+1)]]` -/
def P13926154856719632099.Spec : Prop :=
  ∀ n, P13926154856719632099.a n = A099242 n

end A099242

/-! ## A099242.P6347282374028238205

`∑[∑[A373638(2*n+1)]]`
-/

namespace A099242.P6347282374028238205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373638 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099242.P6347282374028238205

namespace A099242

/-- `∑[∑[A373638(2*n+1)]]` -/
def P6347282374028238205.Spec : Prop :=
  ∀ n, P6347282374028238205.a n = A099242 n

end A099242

/-! ## A099242.P4085769726399746029

`Δ[A017900(A008458(n+1))]`
-/

namespace A099242.P4085769726399746029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A008458 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P4085769726399746029

namespace A099242

/-- `Δ[A017900(A008458(n+1))]` -/
def P4085769726399746029.Spec : Prop :=
  ∀ n, P4085769726399746029.a n = A099242 n

end A099242

/-! ## A099242.P17097840619634121282

`Δ[A017900(A016969(n)+1)]`
-/

namespace A099242.P17097840619634121282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A016969 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P17097840619634121282

namespace A099242

/-- `Δ[A017900(A016969(n)+1)]` -/
def P17097840619634121282.Spec : Prop :=
  ∀ n, P17097840619634121282.a n = A099242 n

end A099242

/-! ## A099242.P12493577735554582887

`A371125(n+1)-A371125(n)`
-/

namespace A099242.P12493577735554582887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371125 (n + 1) - A371125 n

end

end A099242.P12493577735554582887

namespace A099242

/-- `A371125(n+1)-A371125(n)` -/
def P12493577735554582887.Spec : Prop :=
  ∀ n, P12493577735554582887.a n = A099242 n

theorem P12493577735554582887.correct : P12493577735554582887.Spec := by
  intro n
  simp only [A099242, Nat.add_sub_cancel, A099242.P12493577735554582887.a, A099242.P10278770644118872281.f1, A099242.P10278770644118872281.a, SequenceMachineLib.memo_apply]

end A099242

/-! ## A099242.P9223480751377297429

`Δ[A017900(A153152(A016969(n)))]`
-/

namespace A099242.P9223480751377297429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017900 (A153152 (A016969 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099242.P9223480751377297429

namespace A099242

/-- `Δ[A017900(A153152(A016969(n)))]` -/
def P9223480751377297429.Spec : Prop :=
  ∀ n, P9223480751377297429.a n = A099242 n

end A099242

/-!
# A099243: A variation on Flavius's sieve (A000960): Start with the primes; at the k-th sieving step, remove every p-th term of the sequence remaining after the (k-1)-st sieving step, where p is the k-th prime; iterate.

The programs for A099243, there is no canonical definition to state claims against.
-/

/-! ## A099243.P17140045879946246799

`A000040(A099204(n+1))`
-/

namespace A099243.P17140045879946246799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099204 (n + 1)).toNat

end

end A099243.P17140045879946246799

/-! ## A099243.P11526039324947964774

`A008578(A099204(n+1)+1)`
-/

namespace A099243.P11526039324947964774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099204 (n + 1) + 1).toNat

end

end A099243.P11526039324947964774

/-! ## A099243.P6466626516795137331

`A006005(A099204(n+1))*A027642(2*n+1)`
-/

namespace A099243.P6466626516795137331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A099204 (n + 1)).toNat * A027642 (2 * n + 1)

end

end A099243.P6466626516795137331

/-! ## A099243.P12418479037038779893

`A006093(A099204(n+1))+A001221(A152468(n+1))`
-/

namespace A099243.P12418479037038779893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A099204 (n + 1)).toNat + A001221 (A152468 (n + 1)).toNat

end

end A099243.P12418479037038779893

/-! ## A099243.P16930341658083693534

`A006093(A099204(n+1))+A001221(A152471(n+1))`
-/

namespace A099243.P16930341658083693534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A099204 (n + 1)).toNat + A001221 (A152471 (n + 1)).toNat

end

end A099243.P16930341658083693534

/-! ## A099243.P3408324288275206420

`A006093(A099204(n+1))+A001221(A069549(n+1))`
-/

namespace A099243.P3408324288275206420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A099204 (n + 1)).toNat + A001221 (A069549 (n + 1)).toNat

end

end A099243.P3408324288275206420

/-! ## A099243.P13955131398526727526

`A000720(p?[A006450(A099204(n+1))])`
-/

namespace A099243.P13955131398526727526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A099204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A099243.P13955131398526727526

/-!
# A099244: Greatest common divisor of length of n in binary representation and its number of ones.

The programs for A099244, the canonical program `A099244.P17531829888969145965` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099244 has offset 1).

The definition of A099244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099244.P472049028062829660

`gcd(∑[char[2^n]], A000120(n+1))`
-/

namespace A099244.P472049028062829660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000120 (n + 1))

end

end A099244.P472049028062829660

namespace A099244

/-- `gcd(∑[char[2^n]], A000120(n+1))` -/
def P472049028062829660.Spec : Prop :=
  ∀ n, (P472049028062829660.a n : ℤ) = A099244 (n + 1)

end A099244

/-! ## A099244.P872168257600273799

`A161789(A073137(n+1))`
-/

namespace A099244.P872168257600273799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161789 (A073137 (n + 1)).toNat

end

end A099244.P872168257600273799

namespace A099244

/-- `A161789(A073137(n+1))` -/
def P872168257600273799.Spec : Prop :=
  ∀ n, P872168257600273799.a n = A099244 (n + 1)

end A099244

/-! ## A099244.P17531829888969145965

`gcd(A000120(n+1), A070939(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099244

/-- `gcd(A000120(n+1), A070939(n))` -/
def P17531829888969145965.Spec : Prop :=
  ∀ n, (P17531829888969145965.a n : ℤ) = A099244 (n + 1)

theorem P17531829888969145965.correct : P17531829888969145965.Spec := by
  intro n
  simp only [A099244, Nat.add_sub_cancel]

end A099244

/-! ## A099244.P12973412988487117353

`gcd(Δ[A083652(n)], A023416(n+1))`
-/

namespace A099244.P12973412988487117353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A023416 (n + 1))

end

end A099244.P12973412988487117353

namespace A099244

/-- `gcd(Δ[A083652(n)], A023416(n+1))` -/
def P12973412988487117353.Spec : Prop :=
  ∀ n, (P12973412988487117353.a n : ℤ) = A099244 (n + 1)

end A099244

/-! ## A099244.P6673893863564086917

`A000120(n+1)/A099245(n+1)`
-/

namespace A099244.P6673893863564086917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (n + 1) : ℚ) / (A099245 (n + 1) : ℚ)

end

end A099244.P6673893863564086917

namespace A099244

/-- `A000120(n+1)/A099245(n+1)` -/
def P6673893863564086917.Spec : Prop :=
  ∀ n, P6673893863564086917.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P7178964911350534410

`gcd(A037861(n+1), A080791(n+1))`
-/

namespace A099244.P7178964911350534410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037861 (n + 1)) (A080791 (n + 1))

end

end A099244.P7178964911350534410

namespace A099244

/-- `gcd(A037861(n+1), A080791(n+1))` -/
def P7178964911350534410.Spec : Prop :=
  ∀ n, (P7178964911350534410.a n : ℤ) = A099244 (n + 1)

end A099244

/-! ## A099244.P13960988049787028502

`gcd(A113473(n+1), A152723(n+1))`
-/

namespace A099244.P13960988049787028502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113473 (n + 1)) (A152723 (n + 1))

end

end A099244.P13960988049787028502

namespace A099244

/-- `gcd(A113473(n+1), A152723(n+1))` -/
def P13960988049787028502.Spec : Prop :=
  ∀ n, (P13960988049787028502.a n : ℤ) = A099244 (n + 1)

end A099244

/-! ## A099244.P4995262666553858470

`log2(A001316(n+1))/A099245(n+1)`
-/

namespace A099244.P4995262666553858470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (n + 1) : ℝ) / (A099245 (n + 1) : ℝ)

end

end A099244.P4995262666553858470

namespace A099244

/-- `log2(A001316(n+1))/A099245(n+1)` -/
def P4995262666553858470.Spec : Prop :=
  ∀ n, P4995262666553858470.a n = (A099244 (n + 1) : ℝ)

end A099244

/-! ## A099244.P9854988219699601975

`(A000523(n+1)+1)/A099246(n+1)`
-/

namespace A099244.P9854988219699601975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (n + 1) + 1 : ℚ) / (A099246 (n + 1) : ℚ)

end

end A099244.P9854988219699601975

namespace A099244

/-- `(A000523(n+1)+1)/A099246(n+1)` -/
def P9854988219699601975.Spec : Prop :=
  ∀ n, P9854988219699601975.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P13658427676140779431

`gcd(A000005(A048896(n)), A070939(n))`
-/

namespace A099244.P13658427676140779431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A048896 n).toNat) (A070939 n)

end

end A099244.P13658427676140779431

namespace A099244

/-- `gcd(A000005(A048896(n)), A070939(n))` -/
def P13658427676140779431.Spec : Prop :=
  ∀ n, (P13658427676140779431.a n : ℤ) = A099244 (n + 1)

end A099244

/-! ## A099244.P14265835403764382446

`gcd(A077168(A048881(n)), A080791(n+1))`
-/

namespace A099244.P14265835403764382446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077168 (A048881 n).toNat) (A080791 (n + 1))

end

end A099244.P14265835403764382446

namespace A099244

/-- `gcd(A077168(A048881(n)), A080791(n+1))` -/
def P14265835403764382446.Spec : Prop :=
  ∀ n, (P14265835403764382446.a n : ℤ) = A099244 (n + 1)

end A099244

/-! ## A099244.P14107707972326311136

`(A000788(n+1)-A000788(n))/A099245(n+1)`
-/

namespace A099244.P14107707972326311136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000788 (n + 1) - A000788 n : ℚ) / (A099245 (n + 1) : ℚ)

end

end A099244.P14107707972326311136

namespace A099244

/-- `(A000788(n+1)-A000788(n))/A099245(n+1)` -/
def P14107707972326311136.Spec : Prop :=
  ∀ n, P14107707972326311136.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P16333236797540038939

`(A023416(n+1)+A000120(n+1))/A099246(n+1)`
-/

namespace A099244.P16333236797540038939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023416 (n + 1) + A000120 (n + 1) : ℚ) / (A099246 (n + 1) : ℚ)

end

end A099244.P16333236797540038939

namespace A099244

/-- `(A023416(n+1)+A000120(n+1))/A099246(n+1)` -/
def P16333236797540038939.Spec : Prop :=
  ∀ n, P16333236797540038939.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P15760721159774677660

`A356352(A073138(n+1))`
-/

namespace A099244.P15760721159774677660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356352 (A073138 (n + 1)).toNat

end

end A099244.P15760721159774677660

namespace A099244

/-- `A356352(A073138(n+1))` -/
def P15760721159774677660.Spec : Prop :=
  ∀ n, P15760721159774677660.a n = A099244 (n + 1)

end A099244

/-! ## A099244.P7674963334729192970

`A070939(n+1)/A099246(n+1)`
-/

namespace A099244.P7674963334729192970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 (n + 1) : ℚ) / (A099246 (n + 1) : ℚ)

end

end A099244.P7674963334729192970

namespace A099244

/-- `A070939(n+1)/A099246(n+1)` -/
def P7674963334729192970.Spec : Prop :=
  ∀ n, P7674963334729192970.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P8182949955701756841

`A029837(n+2)/A099246(n+1)`
-/

namespace A099244.P8182949955701756841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 2) : ℚ) / (A099246 (n + 1) : ℚ)

end

end A099244.P8182949955701756841

namespace A099244

/-- `A029837(n+2)/A099246(n+1)` -/
def P8182949955701756841.Spec : Prop :=
  ∀ n, P8182949955701756841.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P17567331070820594552

`log2(A062383(n+1))/A099246(n+1)`
-/

namespace A099244.P17567331070820594552
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 (n + 1) : ℝ) / (A099246 (n + 1) : ℝ)

end

end A099244.P17567331070820594552

namespace A099244

/-- `log2(A062383(n+1))/A099246(n+1)` -/
def P17567331070820594552.Spec : Prop :=
  ∀ n, P17567331070820594552.a n = (A099244 (n + 1) : ℝ)

end A099244

/-! ## A099244.P17018240672172690599

`A000120(A003817(n+1))/A099246(n+1)`
-/

namespace A099244.P17018240672172690599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A003817 (n + 1)).toNat : ℚ) / (A099246 (n + 1) : ℚ)

end

end A099244.P17018240672172690599

namespace A099244

/-- `A000120(A003817(n+1))/A099246(n+1)` -/
def P17018240672172690599.Spec : Prop :=
  ∀ n, P17018240672172690599.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P15948394160822856184

`A005811(A006068(n+1))/A099245(n+1)`
-/

namespace A099244.P15948394160822856184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005811 (A006068 (n + 1)).toNat : ℚ) / (A099245 (n + 1) : ℚ)

end

end A099244.P15948394160822856184

namespace A099244

/-- `A005811(A006068(n+1))/A099245(n+1)` -/
def P15948394160822856184.Spec : Prop :=
  ∀ n, P15948394160822856184.a n = (A099244 (n + 1) : ℚ)

end A099244

/-! ## A099244.P11329239975547402800

`A005811(A341916(n+1))/A099245(n+1)`
-/

namespace A099244.P11329239975547402800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005811 (A341916 (n + 1)).toNat : ℚ) / (A099245 (n + 1) : ℚ)

end

end A099244.P11329239975547402800

namespace A099244

/-- `A005811(A341916(n+1))/A099245(n+1)` -/
def P11329239975547402800.Spec : Prop :=
  ∀ n, P11329239975547402800.a n = (A099244 (n + 1) : ℚ)

end A099244

/-!
# A099245: Numerator of relative frequency of number of ones in the binary representation of n.

The programs for A099245, the canonical program `A099245.P15585639647905873699` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099245 has offset 0).

The definition of A099245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099246, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A099245.P15585639647905873699

`A099246(n)*A000120(n)/A070939(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A099245

/-- `A099246(n)*A000120(n)/A070939(n)` -/
def P15585639647905873699.Spec : Prop :=
  ∀ n, P15585639647905873699.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P6277994506724470894

`A000120(n)/A099244(A028310(n))`
-/

namespace A099245.P6277994506724470894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (A099244 (A028310 n).toNat : ℚ)

end

end A099245.P6277994506724470894

namespace A099245

/-- `A000120(n)/A099244(A028310(n))` -/
def P6277994506724470894.Spec : Prop :=
  ∀ n, P6277994506724470894.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P12338852618130509390

`A000120(n)/A099244(A000038(n)+n)`
-/

namespace A099245.P12338852618130509390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (A099244 (A000038 n + (n : ℤ)).toNat : ℚ)

end

end A099245.P12338852618130509390

namespace A099245

/-- `A000120(n)/A099244(A000038(n)+n)` -/
def P12338852618130509390.Spec : Prop :=
  ∀ n, P12338852618130509390.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P16835989946130232493

`A000120(n)/gcd(A000120(n), A023416(n))`
-/

namespace A099245.P16835989946130232493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (Int.gcd (A000120 n) (A023416 n) : ℚ)

end

end A099245.P16835989946130232493

namespace A099245

/-- `A000120(n)/gcd(A000120(n), A023416(n))` -/
def P16835989946130232493.Spec : Prop :=
  ∀ n, P16835989946130232493.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P8552897101879663407

`A000120(n)/gcd(A037861(n), A080791(n))`
-/

namespace A099245.P8552897101879663407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (Int.gcd (A037861 n) (A080791 n) : ℚ)

end

end A099245.P8552897101879663407

namespace A099245

/-- `A000120(n)/gcd(A037861(n), A080791(n))` -/
def P8552897101879663407.Spec : Prop :=
  ∀ n, P8552897101879663407.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P6080208036298051747

`A000120(n)/A099244(A233583(n+1))`
-/

namespace A099245.P6080208036298051747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (A099244 (A233583 (n + 1)).toNat : ℚ)

end

end A099245.P6080208036298051747

namespace A099245

/-- `A000120(n)/A099244(A233583(n+1))` -/
def P6080208036298051747.Spec : Prop :=
  ∀ n, P6080208036298051747.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P6162751314807860007

`A000120(n)/A253641(A176893(n))`
-/

namespace A099245.P6162751314807860007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) / (A253641 (A176893 n).toNat : ℚ)

end

end A099245.P6162751314807860007

namespace A099245

/-- `A000120(n)/A253641(A176893(n))` -/
def P6162751314807860007.Spec : Prop :=
  ∀ n, P6162751314807860007.a n = (A099245 n : ℚ)

end A099245

/-! ## A099245.P6597240652090781849

`A099246(A124108(n))-A099246(n)`
-/

namespace A099245.P6597240652090781849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A124108 n).toNat - A099246 n

end

end A099245.P6597240652090781849

namespace A099245

/-- `A099246(A124108(n))-A099246(n)` -/
def P6597240652090781849.Spec : Prop :=
  ∀ n, P6597240652090781849.a n = A099245 n

end A099245

/-! ## A099245.P15646643240865075553

`A099246(n*A001316(n))-A099246(n)`
-/

namespace A099245.P15646643240865075553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 ((n : ℤ) * A001316 n).toNat - A099246 n

end

end A099245.P15646643240865075553

namespace A099245

/-- `A099246(n*A001316(n))-A099246(n)` -/
def P15646643240865075553.Spec : Prop :=
  ∀ n, P15646643240865075553.a n = A099245 n

end A099245

/-! ## A099245.P10613631900801251475

`A360614(A057335(n))`
-/

namespace A099245.P10613631900801251475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A057335 n).toNat

end

end A099245.P10613631900801251475

namespace A099245

/-- `A360614(A057335(n))` -/
def P10613631900801251475.Spec : Prop :=
  ∀ n, P10613631900801251475.a n = A099245 n

end A099245

/-!
# A099246: Denominator of relative frequency of number of ones in the binary representation of n.

The programs for A099246, the canonical program `A099246.P4737145265859464127` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099246 has offset 0).

The definition of A099246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099246.P4737145265859464127

`A070939(n)/A099244(A000007(n)+n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099246

/-- `A070939(n)/A099244(A000007(n)+n)` -/
def P4737145265859464127.Spec : Prop :=
  ∀ n, P4737145265859464127.a n = (A099246 n : ℚ)

end A099246

/-! ## A099246.P2616722094515396557

`A070939(n)/gcd(A000120(n), A023416(n))`
-/

namespace A099246.P2616722094515396557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (Int.gcd (A000120 n) (A023416 n) : ℚ)

end

end A099246.P2616722094515396557

namespace A099246

/-- `A070939(n)/gcd(A000120(n), A023416(n))` -/
def P2616722094515396557.Spec : Prop :=
  ∀ n, P2616722094515396557.a n = (A099246 n : ℚ)

end A099246

/-! ## A099246.P17025857123776657942

`A070939(n)/gcd(A070939(n), A080791(n))`
-/

namespace A099246.P17025857123776657942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (Int.gcd (A070939 n) (A080791 n) : ℚ)

end

end A099246.P17025857123776657942

namespace A099246

/-- `A070939(n)/gcd(A070939(n), A080791(n))` -/
def P17025857123776657942.Spec : Prop :=
  ∀ n, P17025857123776657942.a n = (A099246 n : ℚ)

end A099246

/-! ## A099246.P9699552899336362337

`(A000523(n+1)+1)/gcd(A000523(n+1)+1, A023416(2*n+1))`
-/

namespace A099246.P9699552899336362337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (n + 1) + 1 : ℚ) / (Int.gcd (A000523 (n + 1) + 1) (A023416 (2 * n + 1)) : ℚ)

end

end A099246.P9699552899336362337

namespace A099246

/-- `(A000523(n+1)+1)/gcd(A000523(n+1)+1, A023416(2*n+1))` -/
def P9699552899336362337.Spec : Prop :=
  ∀ n, P9699552899336362337.a n = (A099246 n : ℚ)

end A099246

/-! ## A099246.P11904979425487653319

`A070939(n)/A099244(A233583(n+1))`
-/

namespace A099246.P11904979425487653319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (A099244 (A233583 (n + 1)).toNat : ℚ)

end

end A099246.P11904979425487653319

namespace A099246

/-- `A070939(n)/A099244(A233583(n+1))` -/
def P11904979425487653319.Spec : Prop :=
  ∀ n, P11904979425487653319.a n = (A099246 n : ℚ)

end A099246

/-! ## A099246.P7031832888201962647

`A123529(A176893(n))`
-/

namespace A099246.P7031832888201962647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (A176893 n).toNat

end

end A099246.P7031832888201962647

namespace A099246

/-- `A123529(A176893(n))` -/
def P7031832888201962647.Spec : Prop :=
  ∀ n, P7031832888201962647.a n = A099246 n

end A099246

/-! ## A099246.P7529170824996824884

`A326700(A374625(n))`
-/

namespace A099246.P7529170824996824884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326700 (A374625 n).toNat

end

end A099246.P7529170824996824884

namespace A099246

/-- `A326700(A374625(n))` -/
def P7529170824996824884.Spec : Prop :=
  ∀ n, P7529170824996824884.a n = A099246 n

end A099246

/-! ## A099246.P8573933336786915039

`A099245(A196168(n))`
-/

namespace A099246.P8573933336786915039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (A196168 n).toNat

end

end A099246.P8573933336786915039

namespace A099246

/-- `A099245(A196168(n))` -/
def P8573933336786915039.Spec : Prop :=
  ∀ n, P8573933336786915039.a n = A099246 n

end A099246

/-! ## A099246.P2904685404092206473

`A070939(n)/A099244(A196168(n))`
-/

namespace A099246.P2904685404092206473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 n : ℚ) / (A099244 (A196168 n).toNat : ℚ)

end

end A099246.P2904685404092206473

namespace A099246

/-- `A070939(n)/A099244(A196168(n))` -/
def P2904685404092206473.Spec : Prop :=
  ∀ n, P2904685404092206473.a n = (A099246 n : ℚ)

end A099246

/-! ## A099246.P10534982092851531183

`gcd(A070939(n), A107345(A124108(n)))`
-/

namespace A099246.P10534982092851531183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070939 n) (A107345 (A124108 n).toNat)

end

end A099246.P10534982092851531183

namespace A099246

/-- `gcd(A070939(n), A107345(A124108(n)))` -/
def P10534982092851531183.Spec : Prop :=
  ∀ n, (P10534982092851531183.a n : ℤ) = A099246 n

end A099246

/-! ## A099246.P8931009601063429848

`A099245(A000225(A070939(n))*A001316(n))`
-/

namespace A099246.P8931009601063429848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (A000225 (A070939 n).toNat * A001316 n).toNat

end

end A099246.P8931009601063429848

namespace A099246

/-- `A099245(A000225(A070939(n))*A001316(n))` -/
def P8931009601063429848.Spec : Prop :=
  ∀ n, P8931009601063429848.a n = A099246 n

end A099246

/-!
# A099247: Numbers such that, in binary representation, the length and the number of ones are coprime.

The programs for A099247, the canonical program `A099247.P16575120211893436647` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099247 has offset 1).

The definition of A099247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099247.P16575120211893436647

`eq[1, A099244(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099247

/-- `eq[1, A099244(n+1)]+1` -/
def P16575120211893436647.Spec : Prop :=
  ∀ n, (P16575120211893436647.a n : ℤ) = A099247 (n + 1)

theorem P16575120211893436647.correct : P16575120211893436647.Spec := by
  intro n
  simp only [A099247, Nat.add_sub_cancel]

end A099247

/-! ## A099247.P5549802373494959326

`record[n/a(A099244(n))]` with `a(0)=1, a(1)=1`
-/

namespace A099247.P5549802373494959326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℚ) / f1 (A099244 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099247.P5549802373494959326

namespace A099247

/-- `record[n/a(A099244(n))]` -/
def P5549802373494959326.Spec : Prop :=
  ∀ n, P5549802373494959326.a n = (A099247 (n + 1) : ℚ)

end A099247

/-! ## A099247.P863160792790714752

`lt[A000120(n), 2*A099245(n)]`
-/

namespace A099247.P863160792790714752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099247.P863160792790714752

namespace A099247

/-- `lt[A000120(n), 2*A099245(n)]` -/
def P863160792790714752.Spec : Prop :=
  ∀ n, (P863160792790714752.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P2452225188715362473

`eq[1, gcd(A000120(n), A080791(n))]`
-/

namespace A099247.P2452225188715362473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 n) (A080791 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099247.P2452225188715362473

namespace A099247

/-- `eq[1, gcd(A000120(n), A080791(n))]` -/
def P2452225188715362473.Spec : Prop :=
  ∀ n, (P2452225188715362473.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P3747630248900769367

`record[A000027(n+1)/A099244(n+1)]`
-/

namespace A099247.P3747630248900769367
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A099244 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099247.P3747630248900769367

namespace A099247

/-- `record[A000027(n+1)/A099244(n+1)]` -/
def P3747630248900769367.Spec : Prop :=
  ∀ n, P3747630248900769367.a n = (A099247 (n + 1) : ℚ)

end A099247

/-! ## A099247.P11359669791354659400

`eq[A000120(n+1), A099245(n+1)]+1`
-/

namespace A099247.P11359669791354659400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A099247.P11359669791354659400

namespace A099247

/-- `eq[A000120(n+1), A099245(n+1)]+1` -/
def P11359669791354659400.Spec : Prop :=
  ∀ n, (P11359669791354659400.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P4378262693678185398

`record[(n+1)/A033047(A099244(n+1)²)]`
-/

namespace A099247.P4378262693678185398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033047 (A099244 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099247.P4378262693678185398

namespace A099247

/-- `record[(n+1)/A033047(A099244(n+1)²)]` -/
def P4378262693678185398.Spec : Prop :=
  ∀ n, P4378262693678185398.a n = (A099247 (n + 1) : ℚ)

end A099247

/-! ## A099247.P7995802166519638393

`eq[A000120(n), A099245(A028310(n))]`
-/

namespace A099247.P7995802166519638393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099247.P7995802166519638393

namespace A099247

/-- `eq[A000120(n), A099245(A028310(n))]` -/
def P7995802166519638393.Spec : Prop :=
  ∀ n, (P7995802166519638393.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P14832920685480605334

`eq[log2(A062383(n)), A099246(n)]`
-/

namespace A099247.P14832920685480605334
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A099247.P14832920685480605334

namespace A099247

/-- `eq[log2(A062383(n)), A099246(n)]` -/
def P14832920685480605334.Spec : Prop :=
  ∀ n, (P14832920685480605334.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P11244445778458577877

`eq[A029837(n+1), A099246(n)]`
-/

namespace A099247.P11244445778458577877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099247.P11244445778458577877

namespace A099247

/-- `eq[A029837(n+1), A099246(n)]` -/
def P11244445778458577877.Spec : Prop :=
  ∀ n, (P11244445778458577877.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P8408145670994320377

`eq[A070939(n+1), A099246(n+1)]+1`
-/

namespace A099247.P8408145670994320377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A099247.P8408145670994320377

namespace A099247

/-- `eq[A070939(n+1), A099246(n+1)]+1` -/
def P8408145670994320377.Spec : Prop :=
  ∀ n, (P8408145670994320377.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P14108778400292879101

`record[(n+1)/A099244(n+1)^A099244(n+2)]`
-/

namespace A099247.P14108778400292879101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A099244 (n + 1) : ℚ) ^ (A099244 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099247.P14108778400292879101

namespace A099247

/-- `record[(n+1)/A099244(n+1)^A099244(n+2)]` -/
def P14108778400292879101.Spec : Prop :=
  ∀ n, P14108778400292879101.a n = (A099247 (n + 1) : ℚ)

end A099247

/-! ## A099247.P17780997395410797085

`A028310(eq[A070939(n+1), A099246(n)])`
-/

namespace A099247.P17780997395410797085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A099247.P17780997395410797085

namespace A099247

/-- `A028310(eq[A070939(n+1), A099246(n)])` -/
def P17780997395410797085.Spec : Prop :=
  ∀ n, P17780997395410797085.a n = A099247 (n + 1)

end A099247

/-! ## A099247.P9639482347051382379

`A028310(lt[A000523(n+1), A099246(n)])`
-/

namespace A099247.P9639482347051382379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A099247.P9639482347051382379

namespace A099247

/-- `A028310(lt[A000523(n+1), A099246(n)])` -/
def P9639482347051382379.Spec : Prop :=
  ∀ n, P9639482347051382379.a n = A099247 (n + 1)

end A099247

/-! ## A099247.P12066042575313369558

`eq[A000120(A003817(n)), A099246(n)]`
-/

namespace A099247.P12066042575313369558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099247.P12066042575313369558

namespace A099247

/-- `eq[A000120(A003817(n)), A099246(n)]` -/
def P12066042575313369558.Spec : Prop :=
  ∀ n, (P12066042575313369558.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P14001547112082303869

`lt[A005811(A006068(n)), 2*A099245(n)]`
-/

namespace A099247.P14001547112082303869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099247.P14001547112082303869

namespace A099247

/-- `lt[A005811(A006068(n)), 2*A099245(n)]` -/
def P14001547112082303869.Spec : Prop :=
  ∀ n, (P14001547112082303869.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P1552259830605210152

`lt[A005811(A341916(n)), 2*A099245(n)]`
-/

namespace A099247.P1552259830605210152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099247.P1552259830605210152

namespace A099247

/-- `lt[A005811(A341916(n)), 2*A099245(n)]` -/
def P1552259830605210152.Spec : Prop :=
  ∀ n, (P1552259830605210152.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P8742518330393233423

`eq[A324467(A028310(n))/3, A099245(n)]`
-/

namespace A099247.P8742518330393233423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 (A028310 n).toNat : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A099247.P8742518330393233423

namespace A099247

/-- `eq[A324467(A028310(n))/3, A099245(n)]` -/
def P8742518330393233423.Spec : Prop :=
  ∀ n, (P8742518330393233423.a n : ℤ) = A099247 (n + 1)

end A099247

/-! ## A099247.P9696020449760730639

`eq[1, gcd(A000120(2*n), A023416(2*n+1))]`
-/

namespace A099247.P9696020449760730639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (2 * n)) (A023416 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A099247.P9696020449760730639

namespace A099247

/-- `eq[1, gcd(A000120(2*n), A023416(2*n+1))]` -/
def P9696020449760730639.Spec : Prop :=
  ∀ n, (P9696020449760730639.a n : ℤ) = A099247 (n + 1)

end A099247

/-!
# A099248: Numbers such that length in binary representation and number of ones have a common divisor greater than 1.

The programs for A099248, the canonical program `A099248.P2494552930136649206` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099248 has offset 1).

The definition of A099248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099248.P4851318578790112045

`lt[A099246(n)!, n]`
-/

namespace A099248.P4851318578790112045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A099246 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P4851318578790112045

namespace A099248

/-- `lt[A099246(n)!, n]` -/
def P4851318578790112045.Spec : Prop :=
  ∀ n, (P4851318578790112045.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P2494552930136649206

`lt[1, A099244(n+1)]+1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099248

/-- `lt[1, A099244(n+1)]+1` -/
def P2494552930136649206.Spec : Prop :=
  ∀ n, (P2494552930136649206.a n : ℤ) = A099248 (n + 1)

theorem P2494552930136649206.correct : P2494552930136649206.Spec := by
  intro n
  simp only [A099248, Nat.add_sub_cancel]

end A099248

/-! ## A099248.P2790972538791262912

`lt[A099245(n), A000120(n)]`
-/

namespace A099248.P2790972538791262912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P2790972538791262912

namespace A099248

/-- `lt[A099245(n), A000120(n)]` -/
def P2790972538791262912.Spec : Prop :=
  ∀ n, (P2790972538791262912.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P13606177591667494946

`lt[A099246(n), A070939(n)]`
-/

namespace A099248.P13606177591667494946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P13606177591667494946

namespace A099248

/-- `lt[A099246(n), A070939(n)]` -/
def P13606177591667494946.Spec : Prop :=
  ∀ n, (P13606177591667494946.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P4728259838653419987

`lt[A099245(n), log2(A001316(n))]`
-/

namespace A099248.P4728259838653419987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A099248.P4728259838653419987

namespace A099248

/-- `lt[A099245(n), log2(A001316(n))]` -/
def P4728259838653419987.Spec : Prop :=
  ∀ n, (P4728259838653419987.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P14356125401380514045

`lt[A099246(n), A000523(n+1)]`
-/

namespace A099248.P14356125401380514045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P14356125401380514045

namespace A099248

/-- `lt[A099246(n), A000523(n+1)]` -/
def P14356125401380514045.Spec : Prop :=
  ∀ n, (P14356125401380514045.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P17507564725117329880

`eq[1, A099244(a(A099244(n)))]` with `a(0)=2, a(1)=3`
-/

namespace A099248.P17507564725117329880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  A099244 (f2 (A099244 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A099248.P17507564725117329880

namespace A099248

/-- `eq[1, A099244(a(A099244(n)))]` -/
def P17507564725117329880.Spec : Prop :=
  ∀ n, (P17507564725117329880.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P10042987808324813737

`eq[0, A087003(A099244(n+1)²)]+1`
-/

namespace A099248.P10042987808324813737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A099244 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A099248.P10042987808324813737

namespace A099248

/-- `eq[0, A087003(A099244(n+1)²)]+1` -/
def P10042987808324813737.Spec : Prop :=
  ∀ n, (P10042987808324813737.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P10932105196636454794

`lt[A099245(n), A002487(A001316(n)-1)]`
-/

namespace A099248.P10932105196636454794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A001316 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P10932105196636454794

namespace A099248

/-- `lt[A099245(n), A002487(A001316(n)-1)]` -/
def P10932105196636454794.Spec : Prop :=
  ∀ n, (P10932105196636454794.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P17043771728000237545

`lt[A099246(n)-1, A000523(A028310(n))]`
-/

namespace A099248.P17043771728000237545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P17043771728000237545

namespace A099248

/-- `lt[A099246(n)-1, A000523(A028310(n))]` -/
def P17043771728000237545.Spec : Prop :=
  ∀ n, (P17043771728000237545.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P16139364871291744758

`lt[A099246(n), A023416(n)+A000120(n)]`
-/

namespace A099248.P16139364871291744758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P16139364871291744758

namespace A099248

/-- `lt[A099246(n), A023416(n)+A000120(n)]` -/
def P16139364871291744758.Spec : Prop :=
  ∀ n, (P16139364871291744758.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P3637937387343085605

`lt[A099245(n)+A023416(n), A070939(n)]`
-/

namespace A099248.P3637937387343085605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n + A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P3637937387343085605

namespace A099248

/-- `lt[A099245(n)+A023416(n), A070939(n)]` -/
def P3637937387343085605.Spec : Prop :=
  ∀ n, (P3637937387343085605.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P8338460442544636121

`lt[A099245(n), A160385(n)+A160383(n)]`
-/

namespace A099248.P8338460442544636121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P8338460442544636121

namespace A099248

/-- `lt[A099245(n), A160385(n)+A160383(n)]` -/
def P8338460442544636121.Spec : Prop :=
  ∀ n, (P8338460442544636121.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P9447718040682093212

`lt[A099245(n), A324467(n)/3]`
-/

namespace A099248.P9447718040682093212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A099248.P9447718040682093212

namespace A099248

/-- `lt[A099245(n), A324467(n)/3]` -/
def P9447718040682093212.Spec : Prop :=
  ∀ n, (P9447718040682093212.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P11366363824663046611

`lt[A099245(n), A005811(A006068(n))]`
-/

namespace A099248.P11366363824663046611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P11366363824663046611

namespace A099248

/-- `lt[A099245(n), A005811(A006068(n))]` -/
def P11366363824663046611.Spec : Prop :=
  ∀ n, (P11366363824663046611.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P11625150868368406811

`lt[A099245(n), A005811(A341916(n))]`
-/

namespace A099248.P11625150868368406811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P11625150868368406811

namespace A099248

/-- `lt[A099245(n), A005811(A341916(n))]` -/
def P11625150868368406811.Spec : Prop :=
  ∀ n, (P11625150868368406811.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P8503220183793213106

`lt[A099245(n), A160385(2*n)]`
-/

namespace A099248.P8503220183793213106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P8503220183793213106

namespace A099248

/-- `lt[A099245(n), A160385(2*n)]` -/
def P8503220183793213106.Spec : Prop :=
  ∀ n, (P8503220183793213106.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P13788092741130632699

`lt[A099245(n), A001222(A278222(n))]`
-/

namespace A099248.P13788092741130632699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099248.P13788092741130632699

namespace A099248

/-- `lt[A099245(n), A001222(A278222(n))]` -/
def P13788092741130632699.Spec : Prop :=
  ∀ n, (P13788092741130632699.a n : ℤ) = A099248 (n + 1)

end A099248

/-! ## A099248.P4694401224128492743

`lt[1, A253641(A176893(n))]`
-/

namespace A099248.P4694401224128492743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A176893 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A099248.P4694401224128492743

namespace A099248

/-- `lt[1, A253641(A176893(n))]` -/
def P4694401224128492743.Spec : Prop :=
  ∀ n, (P4694401224128492743.a n : ℤ) = A099248 (n + 1)

end A099248

/-!
# A099249: Number of numbers not greater than n such that length in binary representation and number of ones are coprime.

The programs for A099249, the canonical program `A099249.P2801010478195518826` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099249 has offset 1).

The definition of A099249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099249.P2801010478195518826

`∑[A063524(A099244(n+1))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A099249

/-- `∑[A063524(A099244(n+1))]` -/
def P2801010478195518826.Spec : Prop :=
  ∀ n, P2801010478195518826.a n = A099249 (n + 1)

theorem P2801010478195518826.correct : P2801010478195518826.Spec := by
  intro n
  simp only [A099249, Nat.add_sub_cancel]

end A099249

/-! ## A099249.P523219744524836320

`∑[A008966(A099244(n+1)²)]`
-/

namespace A099249.P523219744524836320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A099244 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P523219744524836320

namespace A099249

/-- `∑[A008966(A099244(n+1)²)]` -/
def P523219744524836320.Spec : Prop :=
  ∀ n, P523219744524836320.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P7556315815555221508

`∑[A087003(A099244(n+1)²)]`
-/

namespace A099249.P7556315815555221508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (A099244 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P7556315815555221508

namespace A099249

/-- `∑[A087003(A099244(n+1)²)]` -/
def P7556315815555221508.Spec : Prop :=
  ∀ n, P7556315815555221508.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P18359665618634539284

`∑[A010052(A099244(n+1)²-1)]`
-/

namespace A099249.P18359665618634539284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A099244 (n + 1) ^ 2 - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P18359665618634539284

namespace A099249

/-- `∑[A010052(A099244(n+1)²-1)]` -/
def P18359665618634539284.Spec : Prop :=
  ∀ n, P18359665618634539284.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P16201571308993314395

`∑[A105700(2*A099244(n+1)²)]`
-/

namespace A099249.P16201571308993314395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (2 * A099244 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P16201571308993314395

namespace A099249

/-- `∑[A105700(2*A099244(n+1)²)]` -/
def P16201571308993314395.Spec : Prop :=
  ∀ n, P16201571308993314395.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P8420305169193113541

`∑[A129360(or(1, A099244(n+1))²)]`
-/

namespace A099249.P8420305169193113541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129360 (Int.lor 1 (A099244 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P8420305169193113541

namespace A099249

/-- `∑[A129360(or(1, A099244(n+1))²)]` -/
def P8420305169193113541.Spec : Prop :=
  ∀ n, P8420305169193113541.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P6857439631016973177

`∑[A010054(A099244(n+1)^4)]`
-/

namespace A099249.P6857439631016973177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A099244 (n + 1) ^ 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P6857439631016973177

namespace A099249

/-- `∑[A010054(A099244(n+1)^4)]` -/
def P6857439631016973177.Spec : Prop :=
  ∀ n, P6857439631016973177.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P10618117313248449148

`∑[A010054(A099244(n+1)²²)]`
-/

namespace A099249.P10618117313248449148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A099244 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P10618117313248449148

namespace A099249

/-- `∑[A010054(A099244(n+1)²²)]` -/
def P10618117313248449148.Spec : Prop :=
  ∀ n, P10618117313248449148.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P14454797779082699516

`∑[A099244(n+1)^(2-A205986(n+1))]`
-/

namespace A099249.P14454797779082699516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099244 (n + 1) : ℚ) ^ (2 - A205986 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P14454797779082699516

namespace A099249

/-- `∑[A099244(n+1)^(2-A205986(n+1))]` -/
def P14454797779082699516.Spec : Prop :=
  ∀ n, P14454797779082699516.a n = (A099249 (n + 1) : ℚ)

end A099249

/-! ## A099249.P987514937578285352

`∑[A278085(xor(3, 2^A099244(n+1))+1)]`
-/

namespace A099249.P987514937578285352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (Int.xor 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A099244 (n + 1) : ℤ))) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P987514937578285352

namespace A099249

/-- `∑[A278085(xor(3, 2^A099244(n+1))+1)]` -/
def P987514937578285352.Spec : Prop :=
  ∀ n, P987514937578285352.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P5044328778243598015

`∑[A087003(A099244(n+1)!)]`
-/

namespace A099249.P5044328778243598015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087003 (Nat.factorial (A099244 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P5044328778243598015

namespace A099249

/-- `∑[A087003(A099244(n+1)!)]` -/
def P5044328778243598015.Spec : Prop :=
  ∀ n, P5044328778243598015.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P5218290906980639333

`∑[A010052(n*(n+1-A099244(n+1)))]`
-/

namespace A099249.P5218290906980639333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n : ℤ) * ((n + 1 : ℤ) - A099244 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P5218290906980639333

namespace A099249

/-- `∑[A010052(n*(n+1-A099244(n+1)))]` -/
def P5218290906980639333.Spec : Prop :=
  ∀ n, P5218290906980639333.a n = A099249 (n + 1)

end A099249

/-! ## A099249.P17040236457491367741

`∑[A010052((n+1)*(A099244(n+1)+n))]`
-/

namespace A099249.P17040236457491367741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1 : ℤ) * (A099244 (n + 1) + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099249.P17040236457491367741

namespace A099249

/-- `∑[A010052((n+1)*(A099244(n+1)+n))]` -/
def P17040236457491367741.Spec : Prop :=
  ∀ n, P17040236457491367741.a n = A099249 (n + 1)

end A099249

/-!
# A099250: Bisection of Motzkin numbers A001006.

The programs for A099250, the canonical program `A099250.P11271761103759966923` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099250 has offset 0).

The definition of A099250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099250.P11271761103759966923

`A001006(Δ[n²])`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A099250

/-- `A001006(Δ[n²])` -/
def P11271761103759966923.Spec : Prop :=
  ∀ n, P11271761103759966923.a n = A099250 n

theorem P11271761103759966923.correct : P11271761103759966923.Spec := by
  intro n
  simp only [A099250]

end A099250

/-! ## A099250.P7711284631756734792

`record[Δ[A366403(n)]]`
-/

namespace A099250.P7711284631756734792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366403 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099250.P7711284631756734792

namespace A099250

/-- `record[Δ[A366403(n)]]` -/
def P7711284631756734792.Spec : Prop :=
  ∀ n, P7711284631756734792.a n = A099250 n

end A099250

/-! ## A099250.P6663063513590442309

`Δ[A082395(Δ[n²])]`
-/

namespace A099250.P6663063513590442309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099250.P6663063513590442309

namespace A099250

/-- `Δ[A082395(Δ[n²])]` -/
def P6663063513590442309.Spec : Prop :=
  ∀ n, P6663063513590442309.a n = A099250 n

end A099250

/-! ## A099250.P12307417828065416624

`A086246(2*n+3)`
-/

namespace A099250.P12307417828065416624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (2 * n + 3)

end

end A099250.P12307417828065416624

namespace A099250

/-- `A086246(2*n+3)` -/
def P12307417828065416624.Spec : Prop :=
  ∀ n, P12307417828065416624.a n = A099250 n

end A099250

/-! ## A099250.P10349910787328751294

`A168049(2*n+3)`
-/

namespace A099250.P10349910787328751294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (2 * n + 3)

end

end A099250.P10349910787328751294

namespace A099250

/-- `A168049(2*n+3)` -/
def P10349910787328751294.Spec : Prop :=
  ∀ n, P10349910787328751294.a n = A099250 n

end A099250

/-! ## A099250.P2410662946087360479

`record[-A166587(n+2)]`
-/

namespace A099250.P2410662946087360479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166587 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099250.P2410662946087360479

namespace A099250

/-- `record[-A166587(n+2)]` -/
def P2410662946087360479.Spec : Prop :=
  ∀ n, P2410662946087360479.a n = A099250 n

end A099250

/-! ## A099250.P13211708953514294577

`record[Δ[A099323(n+2)]]`
-/

namespace A099250.P13211708953514294577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099250.P13211708953514294577

namespace A099250

/-- `record[Δ[A099323(n+2)]]` -/
def P13211708953514294577.Spec : Prop :=
  ∀ n, P13211708953514294577.a n = A099250 n

end A099250

/-! ## A099250.P13182317398172821189

`abs(A166587(2*(n+1)))`
-/

namespace A099250.P13182317398172821189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (2 * (n + 1))|

end

end A099250.P13182317398172821189

namespace A099250

/-- `abs(A166587(2*(n+1)))` -/
def P13182317398172821189.Spec : Prop :=
  ∀ n, P13182317398172821189.a n = A099250 n

end A099250

/-! ## A099250.P6578207509961568862

`∏[abs(ratio[A166587(2*n)])]`
-/

namespace A099250.P6578207509961568862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℚ) / (f2 n : ℚ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A099250.P6578207509961568862

namespace A099250

/-- `∏[abs(ratio[A166587(2*n)])]` -/
def P6578207509961568862.Spec : Prop :=
  ∀ n, P6578207509961568862.a n = (A099250 n : ℚ)

end A099250

/-! ## A099250.P18062864783490525943

`A007971(2*n+3)/2`
-/

namespace A099250.P18062864783490525943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007971 (2 * n + 3) : ℚ) / 2

end

end A099250.P18062864783490525943

namespace A099250

/-- `A007971(2*n+3)/2` -/
def P18062864783490525943.Spec : Prop :=
  ∀ n, P18062864783490525943.a n = (A099250 n : ℚ)

end A099250

/-! ## A099250.P16706984340357143072

`A126068(2*n+3)/2`
-/

namespace A099250.P16706984340357143072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126068 (2 * n + 3) : ℚ) / 2

end

end A099250.P16706984340357143072

namespace A099250

/-- `A126068(2*n+3)/2` -/
def P16706984340357143072.Spec : Prop :=
  ∀ n, P16706984340357143072.a n = (A099250 n : ℚ)

end A099250

/-! ## A099250.P16849094250242276413

`A168055(2*n+3)/2`
-/

namespace A099250.P16849094250242276413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168055 (2 * n + 3) : ℚ) / 2

end

end A099250.P16849094250242276413

namespace A099250

/-- `A168055(2*n+3)/2` -/
def P16849094250242276413.Spec : Prop :=
  ∀ n, P16849094250242276413.a n = (A099250 n : ℚ)

end A099250

/-! ## A099250.P2411099122728806560

`A168073(2*n+3)/3`
-/

namespace A099250.P2411099122728806560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168073 (2 * n + 3) : ℚ) / 3

end

end A099250.P2411099122728806560

namespace A099250

/-- `A168073(2*n+3)/3` -/
def P2411099122728806560.Spec : Prop :=
  ∀ n, P2411099122728806560.a n = (A099250 n : ℚ)

end A099250

/-! ## A099250.P4758726718825924894

`root(A001006(2*n+1), 2)²`
-/

namespace A099250.P4758726718825924894
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A001006 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A099250.P4758726718825924894

namespace A099250

/-- `root(A001006(2*n+1), 2)²` -/
def P4758726718825924894.Spec : Prop :=
  ∀ n, P4758726718825924894.a n = (A099250 n : ℝ)

end A099250

/-! ## A099250.P15214914861787682898

`A217526(2*n+3)+n+1`
-/

namespace A099250.P15214914861787682898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217526 (2 * n + 3) + (n + 1 : ℤ)

end

end A099250.P15214914861787682898

namespace A099250

/-- `A217526(2*n+3)+n+1` -/
def P15214914861787682898.Spec : Prop :=
  ∀ n, P15214914861787682898.a n = A099250 n

end A099250

/-! ## A099250.P2201264579070265820

`A102071(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A099250.P2201264579070265820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102071 (2 * n) + a (n - 1)

end

end A099250.P2201264579070265820

namespace A099250

/-- `A102071(2*n)+a(n-1)` -/
def P2201264579070265820.Spec : Prop :=
  ∀ n, P2201264579070265820.a n = A099250 n

end A099250

/-! ## A099250.P1156160978017366894

`record[A001006(A026741(n))]`
-/

namespace A099250.P1156160978017366894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099250.P1156160978017366894

namespace A099250

/-- `record[A001006(A026741(n))]` -/
def P1156160978017366894.Spec : Prop :=
  ∀ n, P1156160978017366894.a n = A099250 n

end A099250

/-! ## A099250.P272782480045555699

`record[A001006(A014681(n)+1)]`
-/

namespace A099250.P272782480045555699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099250.P272782480045555699

namespace A099250

/-- `record[A001006(A014681(n)+1)]` -/
def P272782480045555699.Spec : Prop :=
  ∀ n, P272782480045555699.a n = A099250 n

end A099250

/-! ## A099250.P14036262769192331690

`record[A001006(A196020(n+1))]`
-/

namespace A099250.P14036262769192331690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (A196020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099250.P14036262769192331690

namespace A099250

/-- `record[A001006(A196020(n+1))]` -/
def P14036262769192331690.Spec : Prop :=
  ∀ n, P14036262769192331690.a n = A099250 n

end A099250

/-! ## A099250.P17537860719337926923

`A099252(n)+A099251(n+1)`
-/

namespace A099250.P17537860719337926923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099252 n + A099251 (n + 1)

end

end A099250.P17537860719337926923

namespace A099250

/-- `A099252(n)+A099251(n+1)` -/
def P17537860719337926923.Spec : Prop :=
  ∀ n, P17537860719337926923.a n = A099250 n

end A099250

/-!
# A099251: Bisection of Motzkin sums (A005043).

The programs for A099251, the canonical program `A099251.P14211630278922990924` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099251 has offset 0).

The definition of A099251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099251.P14211630278922990924

`A005043(2*n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099251

/-- `A005043(2*n)` -/
def P14211630278922990924.Spec : Prop :=
  ∀ n, P14211630278922990924.a n = A099251 n

theorem P14211630278922990924.correct : P14211630278922990924.Spec := by
  intro n
  simp only [A099251]

end A099251

/-! ## A099251.P3330702956576251902

`A099323(Δ[n²])`
-/

namespace A099251.P3330702956576251902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A099251.P3330702956576251902

namespace A099251

/-- `A099323(Δ[n²])` -/
def P3330702956576251902.Spec : Prop :=
  ∀ n, P3330702956576251902.a n = A099251 n

end A099251

/-! ## A099251.P11532412693561896070

`∑[A105695(2*n)]`
-/

namespace A099251.P11532412693561896070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099251.P11532412693561896070

namespace A099251

/-- `∑[A105695(2*n)]` -/
def P11532412693561896070.Spec : Prop :=
  ∀ n, P11532412693561896070.a n = A099251 n

end A099251

/-! ## A099251.P9329306000497575792

`abs(record[-A174297(n)])`
-/

namespace A099251.P9329306000497575792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A099251.P9329306000497575792

namespace A099251

/-- `abs(record[-A174297(n)])` -/
def P9329306000497575792.Spec : Prop :=
  ∀ n, P9329306000497575792.a n = A099251 n

end A099251

/-! ## A099251.P18030753671989518171

`A366403(Δ[n²])-1`
-/

namespace A099251.P18030753671989518171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366403 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A099251.P18030753671989518171

namespace A099251

/-- `A366403(Δ[n²])-1` -/
def P18030753671989518171.Spec : Prop :=
  ∀ n, P18030753671989518171.a n = A099251 n

end A099251

/-! ## A099251.P14799764966516051133

`A372023(Δ[n²])/2`
-/

namespace A099251.P14799764966516051133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372023 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A099251.P14799764966516051133

namespace A099251

/-- `A372023(Δ[n²])/2` -/
def P14799764966516051133.Spec : Prop :=
  ∀ n, P14799764966516051133.a n = (A099251 n : ℚ)

end A099251

/-! ## A099251.P7820864924700918699

`abs(A099323(comp[2*n]))`
-/

namespace A099251.P7820864924700918699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A099251.P7820864924700918699

namespace A099251

/-- `abs(A099323(comp[2*n]))` -/
def P7820864924700918699.Spec : Prop :=
  ∀ n, P7820864924700918699.a n = A099251 n

end A099251

/-! ## A099251.P15498247107353150336

`or(1, record[a(n-1)-A166587(n-1)])` with `a(0)=0, a(1)=1`
-/

namespace A099251.P15498247107353150336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - A166587 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A099251.P15498247107353150336

namespace A099251

/-- `or(1, record[a(n-1)-A166587(n-1)])` -/
def P15498247107353150336.Spec : Prop :=
  ∀ n, P15498247107353150336.a n = A099251 n

end A099251

/-! ## A099251.P8529586819317828520

`A342912(A004275(n))`
-/

namespace A099251.P8529586819317828520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 (A004275 n).toNat

end

end A099251.P8529586819317828520

namespace A099251

/-- `A342912(A004275(n))` -/
def P8529586819317828520.Spec : Prop :=
  ∀ n, P8529586819317828520.a n = A099251 n

end A099251

/-! ## A099251.P11337557015150364323

`or(1, A005043(A004277(n)))`
-/

namespace A099251.P11337557015150364323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005043 (A004277 n).toNat)

end

end A099251.P11337557015150364323

namespace A099251

/-- `or(1, A005043(A004277(n)))` -/
def P11337557015150364323.Spec : Prop :=
  ∀ n, P11337557015150364323.a n = A099251 n

end A099251

/-! ## A099251.P8510062330287325315

`A001006(2*n)-A099252(n)`
-/

namespace A099251.P8510062330287325315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) - A099252 n

end

end A099251.P8510062330287325315

namespace A099251

/-- `A001006(2*n)-A099252(n)` -/
def P8510062330287325315.Spec : Prop :=
  ∀ n, P8510062330287325315.a n = A099251 n

end A099251

/-! ## A099251.P11793224276588405541

`A099323(2*n+1)+A000007(n+1)`
-/

namespace A099251.P11793224276588405541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (2 * n + 1) + A000007 (n + 1)

end

end A099251.P11793224276588405541

namespace A099251

/-- `A099323(2*n+1)+A000007(n+1)` -/
def P11793224276588405541.Spec : Prop :=
  ∀ n, P11793224276588405541.a n = A099251 n

end A099251

/-! ## A099251.P9382007055313522486

`A099323(2*n+1)*A178334(n+1)`
-/

namespace A099251.P9382007055313522486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (2 * n + 1) * A178334 (n + 1)

end

end A099251.P9382007055313522486

namespace A099251

/-- `A099323(2*n+1)*A178334(n+1)` -/
def P9382007055313522486.Spec : Prop :=
  ∀ n, P9382007055313522486.a n = A099251 n

end A099251

/-! ## A099251.P1482019332404993455

`A309303(2*n+1)+A309303(2*n)`
-/

namespace A099251.P1482019332404993455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309303 (2 * n + 1) + A309303 (2 * n)

end

end A099251.P1482019332404993455

namespace A099251

/-- `A309303(2*n+1)+A309303(2*n)` -/
def P1482019332404993455.Spec : Prop :=
  ∀ n, P1482019332404993455.a n = A099251 n

end A099251

/-! ## A099251.P7568112217069908477

`A001006(2*n)+1-A187306(2*n)`
-/

namespace A099251.P7568112217069908477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) + (1 - A187306 (2 * n))

end

end A099251.P7568112217069908477

namespace A099251

/-- `A001006(2*n)+1-A187306(2*n)` -/
def P7568112217069908477.Spec : Prop :=
  ∀ n, P7568112217069908477.a n = A099251 n

end A099251

/-! ## A099251.P16819445624495951574

`A099323(2*n+1)/A020985(n+1)²`
-/

namespace A099251.P16819445624495951574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099323 (2 * n + 1) : ℚ) / (A020985 (n + 1) ^ 2 : ℚ)

end

end A099251.P16819445624495951574

namespace A099251

/-- `A099323(2*n+1)/A020985(n+1)²` -/
def P16819445624495951574.Spec : Prop :=
  ∀ n, P16819445624495951574.a n = (A099251 n : ℚ)

end A099251

/-! ## A099251.P12450081395450510725

`∑[A086246(2*n+1)-A086246(2*n)]`
-/

namespace A099251.P12450081395450510725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (2 * n + 1) - A086246 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099251.P12450081395450510725

namespace A099251

/-- `∑[A086246(2*n+1)-A086246(2*n)]` -/
def P12450081395450510725.Spec : Prop :=
  ∀ n, P12450081395450510725.a n = A099251 n

end A099251

/-! ## A099251.P16833205305238603993

`A082395(2*n+1)+A001006(2*n)-A082395(2*(n+1))`
-/

namespace A099251.P16833205305238603993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (2 * n + 1) + (A001006 (2 * n) - A082395 (2 * (n + 1)))

end

end A099251.P16833205305238603993

namespace A099251

/-- `A082395(2*n+1)+A001006(2*n)-A082395(2*(n+1))` -/
def P16833205305238603993.Spec : Prop :=
  ∀ n, P16833205305238603993.a n = A099251 n

end A099251

/-! ## A099251.P6989222631974388671

`A342912(2*n)-A002026(2*n)`
-/

namespace A099251.P6989222631974388671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 (2 * n) - A002026 (2 * n)

end

end A099251.P6989222631974388671

namespace A099251

/-- `A342912(2*n)-A002026(2*n)` -/
def P6989222631974388671.Spec : Prop :=
  ∀ n, P6989222631974388671.a n = A099251 n

end A099251

/-! ## A099251.P11945226375880271635

`record[A099323(n)]-Δ[A099323(2*n+1)]`
-/

namespace A099251.P11945226375880271635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (f2 (n + 1) - f2 n)

end

end A099251.P11945226375880271635

namespace A099251

/-- `record[A099323(n)]-Δ[A099323(2*n+1)]` -/
def P11945226375880271635.Spec : Prop :=
  ∀ n, P11945226375880271635.a n = A099251 n

end A099251

/-!
# A099252: Bisection of A005043.

The programs for A099252, the canonical program `A099252.P12031571717558512345` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099252 has offset 0).

The definition of A099252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099252.P12031571717558512345

`A005043(Δ[n²])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099252

/-- `A005043(Δ[n²])` -/
def P12031571717558512345.Spec : Prop :=
  ∀ n, P12031571717558512345.a n = A099252 n

theorem P12031571717558512345.correct : P12031571717558512345.Spec := by
  intro n
  simp only [A099252]

end A099252

/-! ## A099252.P2026876364745374240

`record[1-A366403(n)]`
-/

namespace A099252.P2026876364745374240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A366403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099252.P2026876364745374240

namespace A099252

/-- `record[1-A366403(n)]` -/
def P2026876364745374240.Spec : Prop :=
  ∀ n, P2026876364745374240.a n = A099252 n

end A099252

/-! ## A099252.P119151286447012494

`record[A174297(n+3)]`
-/

namespace A099252.P119151286447012494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099252.P119151286447012494

namespace A099252

/-- `record[A174297(n+3)]` -/
def P119151286447012494.Spec : Prop :=
  ∀ n, P119151286447012494.a n = A099252 n

end A099252

/-! ## A099252.P5455992293966530732

`∑[A105695(Δ[n²])]`
-/

namespace A099252.P5455992293966530732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099252.P5455992293966530732

namespace A099252

/-- `∑[A105695(Δ[n²])]` -/
def P5455992293966530732.Spec : Prop :=
  ∀ n, P5455992293966530732.a n = A099252 n

end A099252

/-! ## A099252.P16720777488187326788

`A187306(2*n)-1`
-/

namespace A099252.P16720777488187326788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187306 (2 * n) - 1

end

end A099252.P16720777488187326788

namespace A099252

/-- `A187306(2*n)-1` -/
def P16720777488187326788.Spec : Prop :=
  ∀ n, P16720777488187326788.a n = A099252 n

end A099252

/-! ## A099252.P2858230064214753854

`A174297(2*n+3)`
-/

namespace A099252.P2858230064214753854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174297 (2 * n + 3)

end

end A099252.P2858230064214753854

namespace A099252

/-- `A174297(2*n+3)` -/
def P2858230064214753854.Spec : Prop :=
  ∀ n, P2858230064214753854.a n = A099252 n

end A099252

/-! ## A099252.P14466532431069759304

`A103872(2*n)/2`
-/

namespace A099252.P14466532431069759304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103872 (2 * n) : ℚ) / 2

end

end A099252.P14466532431069759304

namespace A099252

/-- `A103872(2*n)/2` -/
def P14466532431069759304.Spec : Prop :=
  ∀ n, P14466532431069759304.a n = (A099252 n : ℚ)

end A099252

/-! ## A099252.P12630915906381046184

`record[-A099323(n+2)]`
-/

namespace A099252.P12630915906381046184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099323 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099252.P12630915906381046184

namespace A099252

/-- `record[-A099323(n+2)]` -/
def P12630915906381046184.Spec : Prop :=
  ∀ n, P12630915906381046184.a n = A099252 n

end A099252

/-! ## A099252.P3361416861691133670

`∑[A244884(2*n)]-1`
-/

namespace A099252.P3361416861691133670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A099252.P3361416861691133670

namespace A099252

/-- `∑[A244884(2*n)]-1` -/
def P3361416861691133670.Spec : Prop :=
  ∀ n, P3361416861691133670.a n = A099252 n

end A099252

/-! ## A099252.P7305562363314054351

`1-A366403(2*(n+1))`
-/

namespace A099252.P7305562363314054351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A366403 (2 * (n + 1))

end

end A099252.P7305562363314054351

namespace A099252

/-- `1-A366403(2*(n+1))` -/
def P7305562363314054351.Spec : Prop :=
  ∀ n, P7305562363314054351.a n = A099252 n

end A099252

/-! ## A099252.P13459651035039200305

`lcm(n, A005043(2*n+1))`
-/

namespace A099252.P13459651035039200305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A005043 (2 * n + 1))

end

end A099252.P13459651035039200305

namespace A099252

/-- `lcm(n, A005043(2*n+1))` -/
def P13459651035039200305.Spec : Prop :=
  ∀ n, (P13459651035039200305.a n : ℤ) = A099252 n

end A099252

/-! ## A099252.P16992231772907957780

`∑[A002026(A004273(n))]`
-/

namespace A099252.P16992231772907957780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099252.P16992231772907957780

namespace A099252

/-- `∑[A002026(A004273(n))]` -/
def P16992231772907957780.Spec : Prop :=
  ∀ n, P16992231772907957780.a n = A099252 n

end A099252

/-! ## A099252.P16826461544425473739

`A026945(n)-A005043(2*n)`
-/

namespace A099252.P16826461544425473739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026945 n - A005043 (2 * n)

end

end A099252.P16826461544425473739

namespace A099252

/-- `A026945(n)-A005043(2*n)` -/
def P16826461544425473739.Spec : Prop :=
  ∀ n, P16826461544425473739.a n = A099252 n

end A099252

/-! ## A099252.P5186269980446188604

`A001006(2*n)-A005043(2*n)`
-/

namespace A099252.P5186269980446188604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) - A005043 (2 * n)

end

end A099252.P5186269980446188604

namespace A099252

/-- `A001006(2*n)-A005043(2*n)` -/
def P5186269980446188604.Spec : Prop :=
  ∀ n, P5186269980446188604.a n = A099252 n

end A099252

/-! ## A099252.P2974859867185677483

`A244884(2*n)-A099323(2*n)`
-/

namespace A099252.P2974859867185677483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (2 * n) - A099323 (2 * n)

end

end A099252.P2974859867185677483

namespace A099252

/-- `A244884(2*n)-A099323(2*n)` -/
def P2974859867185677483.Spec : Prop :=
  ∀ n, P2974859867185677483.a n = A099252 n

end A099252

/-! ## A099252.P3384063587661145657

`A005043(2*n+1)+A000007(n+1)`
-/

namespace A099252.P3384063587661145657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (2 * n + 1) + A000007 (n + 1)

end

end A099252.P3384063587661145657

namespace A099252

/-- `A005043(2*n+1)+A000007(n+1)` -/
def P3384063587661145657.Spec : Prop :=
  ∀ n, P3384063587661145657.a n = A099252 n

end A099252

/-! ## A099252.P13480399162637504881

`A001006(2*n)-A099323(2*n+1)`
-/

namespace A099252.P13480399162637504881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (2 * n) - A099323 (2 * n + 1)

end

end A099252.P13480399162637504881

namespace A099252

/-- `A001006(2*n)-A099323(2*n+1)` -/
def P13480399162637504881.Spec : Prop :=
  ∀ n, P13480399162637504881.a n = A099252 n

end A099252

/-! ## A099252.P10106741631850557921

`A103872(2*n)-A005043(2*n+1)`
-/

namespace A099252.P10106741631850557921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103872 (2 * n) - A005043 (2 * n + 1)

end

end A099252.P10106741631850557921

namespace A099252

/-- `A103872(2*n)-A005043(2*n+1)` -/
def P10106741631850557921.Spec : Prop :=
  ∀ n, P10106741631850557921.a n = A099252 n

end A099252

/-! ## A099252.P13093608643678334436

`A005043(2*n+1)*A033999(2*n)`
-/

namespace A099252.P13093608643678334436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (2 * n + 1) * A033999 (2 * n)

end

end A099252.P13093608643678334436

namespace A099252

/-- `A005043(2*n+1)*A033999(2*n)` -/
def P13093608643678334436.Spec : Prop :=
  ∀ n, P13093608643678334436.a n = A099252 n

end A099252

/-! ## A099252.P9393973293759533103

`A005043(2*n+1)*A059841(2*n)`
-/

namespace A099252.P9393973293759533103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (2 * n + 1) * A059841 (2 * n)

end

end A099252.P9393973293759533103

namespace A099252

/-- `A005043(2*n+1)*A059841(2*n)` -/
def P9393973293759533103.Spec : Prop :=
  ∀ n, P9393973293759533103.a n = A099252 n

end A099252

/-!
# A099253: (7*n+6)-th terms of expansion of 1/(1-x-x^7).

The programs for A099253, the canonical program `A099253.P15001147378275106417` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099253 has offset 0).

The definition of A099253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099253.P15001147378275106417

`Δ[A373907(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099253

/-- `Δ[A373907(n)]` -/
def P15001147378275106417.Spec : Prop :=
  ∀ n, P15001147378275106417.a n = A099253 n

theorem P15001147378275106417.correct : P15001147378275106417.Spec := by
  intro n
  simp only [A099253]

end A099253

/-! ## A099253.P9096315407368621306

`∑[A373928(n+1)]`
-/

namespace A099253.P9096315407368621306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099253.P9096315407368621306

namespace A099253

/-- `∑[A373928(n+1)]` -/
def P9096315407368621306.Spec : Prop :=
  ∀ n, P9096315407368621306.a n = A099253 n

end A099253

/-! ## A099253.P5289337875474826226

`Δ[A005709(7*n)]`
-/

namespace A099253.P5289337875474826226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099253.P5289337875474826226

namespace A099253

/-- `Δ[A005709(7*n)]` -/
def P5289337875474826226.Spec : Prop :=
  ∀ n, P5289337875474826226.a n = A099253 n

end A099253

/-! ## A099253.P15418940943357626913

`∑[∑[A373929(n+1)]]`
-/

namespace A099253.P15418940943357626913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373929 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099253.P15418940943357626913

namespace A099253

/-- `∑[∑[A373929(n+1)]]` -/
def P15418940943357626913.Spec : Prop :=
  ∀ n, P15418940943357626913.a n = A099253 n

end A099253

/-! ## A099253.P10603365441116123174

`∑[A005709(7*n+5)]`
-/

namespace A099253.P10603365441116123174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099253.P10603365441116123174

namespace A099253

/-- `∑[A005709(7*n+5)]` -/
def P10603365441116123174.Spec : Prop :=
  ∀ n, P10603365441116123174.a n = A099253 n

end A099253

/-! ## A099253.P5728901978895481435

`A005709(5*(n+1)+2*n+1)`
-/

namespace A099253.P5728901978895481435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (5 * (n + 1) + (2 * n + 1))

end

end A099253.P5728901978895481435

namespace A099253

/-- `A005709(5*(n+1)+2*n+1)` -/
def P5728901978895481435.Spec : Prop :=
  ∀ n, P5728901978895481435.a n = A099253 n

end A099253

/-! ## A099253.P11135821402369604168

`A017901(A017053(n+1))`
-/

namespace A099253.P11135821402369604168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017053 (n + 1)).toNat

end

end A099253.P11135821402369604168

namespace A099253

/-- `A017901(A017053(n+1))` -/
def P11135821402369604168.Spec : Prop :=
  ∀ n, P11135821402369604168.a n = A099253 n

end A099253

/-! ## A099253.P16193081815079886563

`A017901(A017041(n+1)+1)`
-/

namespace A099253.P16193081815079886563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017041 (n + 1) + 1).toNat

end

end A099253.P16193081815079886563

namespace A099253

/-- `A017901(A017041(n+1)+1)` -/
def P16193081815079886563.Spec : Prop :=
  ∀ n, P16193081815079886563.a n = A099253 n

end A099253

/-! ## A099253.P11520954643846943019

`A017901(A017029(n+1)+2)`
-/

namespace A099253.P11520954643846943019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017901 (A017029 (n + 1) + 2).toNat

end

end A099253.P11520954643846943019

namespace A099253

/-- `A017901(A017029(n+1)+2)` -/
def P11520954643846943019.Spec : Prop :=
  ∀ n, P11520954643846943019.a n = A099253 n

end A099253

/-! ## A099253.P3855601574640314143

`A373907(n+1)-A373907(n)`
-/

namespace A099253.P3855601574640314143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373907 (n + 1) - A373907 n

end

end A099253.P3855601574640314143

namespace A099253

/-- `A373907(n+1)-A373907(n)` -/
def P3855601574640314143.Spec : Prop :=
  ∀ n, P3855601574640314143.a n = A099253 n

theorem P3855601574640314143.correct : P3855601574640314143.Spec := by
  intro n
  simp only [A099253, Nat.add_sub_cancel, A099253.P3855601574640314143.a, A099253.P15001147378275106417.f1, A099253.P15001147378275106417.a, SequenceMachineLib.memo_apply]

end A099253

/-! ## A099253.P4599927066131148610

`∑[∑[A005709(A017053(n)-2)]]`
-/

namespace A099253.P4599927066131148610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (A017053 n - 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099253.P4599927066131148610

namespace A099253

/-- `∑[∑[A005709(A017053(n)-2)]]` -/
def P4599927066131148610.Spec : Prop :=
  ∀ n, P4599927066131148610.a n = A099253 n

end A099253

/-!
# A099254: Self-convolution of A010892. The g.f. is 1/(Alexander polynomial of granny knot).

The programs for A099254, the canonical program `A099254.P6132378684276804127` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099254 has offset 0).

The definition of A099254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099254.P6132378684276804127

`2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099254

/-- `2*a(n-1)-3*a(n-2)+2*a(n-3)-a(n-4)` -/
def P6132378684276804127.Spec : Prop :=
  ∀ n, P6132378684276804127.a n = A099254 n

theorem P6132378684276804127.correct : P6132378684276804127.Spec := by
  intro n
  simp only [A099254]

end A099254

/-! ## A099254.P17844818012995170007

`ogf(1/(1-2x+3x^2-2x^3+x^4))`
-/

namespace A099254.P17844818012995170007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 3, -2, 1] n

end

end A099254.P17844818012995170007

namespace A099254

/-- `ogf(1/(1-2x+3x^2-2x^3+x^4))` -/
def P17844818012995170007.Spec : Prop :=
  ∀ n, P17844818012995170007.a n = A099254 n

end A099254

/-! ## A099254.P7187978214371253065

`(a(n-2)-(n+1)*a(n-3))%(n+1)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A099254.P7187978214371253065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  Int.tmod (a (n - 2) - (n + 1 : ℤ) * a (n - 3)) (n + 1 : ℤ)

end

end A099254.P7187978214371253065

namespace A099254

/-- `(a(n-2)-(n+1)*a(n-3))%(n+1)` -/
def P7187978214371253065.Spec : Prop :=
  ∀ n, P7187978214371253065.a n = A099254 n

end A099254

/-! ## A099254.P13661248245955520019

`Δ[-A099471(n)]`
-/

namespace A099254.P13661248245955520019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099254.P13661248245955520019

namespace A099254

/-- `Δ[-A099471(n)]` -/
def P13661248245955520019.Spec : Prop :=
  ∀ n, P13661248245955520019.a n = A099254 n

end A099254

/-! ## A099254.P11867828086877779339

`-A099470(n+1)`
-/

namespace A099254.P11867828086877779339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099470 (n + 1)

end

end A099254.P11867828086877779339

namespace A099254

/-- `-A099470(n+1)` -/
def P11867828086877779339.Spec : Prop :=
  ∀ n, P11867828086877779339.a n = A099254 n

end A099254

/-! ## A099254.P1073105619199979805

`∑[A076118(n+1)]`
-/

namespace A099254.P1073105619199979805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099254.P1073105619199979805

namespace A099254

/-- `∑[A076118(n+1)]` -/
def P1073105619199979805.Spec : Prop :=
  ∀ n, P1073105619199979805.a n = A099254 n

end A099254

/-! ## A099254.P3545511209961612706

`A165202(n)-a(n-1)` with `a(0)=1`
-/

namespace A099254.P3545511209961612706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A165202 n - a (n - 1)

end

end A099254.P3545511209961612706

namespace A099254

/-- `A165202(n)-a(n-1)` -/
def P3545511209961612706.Spec : Prop :=
  ∀ n, P3545511209961612706.a n = A099254 n

end A099254

/-! ## A099254.P9158928328631217942

`A057079(n)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A099254.P9158928328631217942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A057079 n - a (n - 3)

end

end A099254.P9158928328631217942

namespace A099254

/-- `A057079(n)-a(n-3)` -/
def P9158928328631217942.Spec : Prop :=
  ∀ n, P9158928328631217942.a n = A099254 n

end A099254

/-! ## A099254.P7706144654463104093

`A076118(n)+A010892(n)`
-/

namespace A099254.P7706144654463104093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076118 n + A010892 n

end

end A099254.P7706144654463104093

namespace A099254

/-- `A076118(n)+A010892(n)` -/
def P7706144654463104093.Spec : Prop :=
  ∀ n, P7706144654463104093.a n = A099254 n

end A099254

/-! ## A099254.P9499699362327092261

`A128504(n)-A104555(n)`
-/

namespace A099254.P9499699362327092261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128504 n - A104555 n

end

end A099254.P9499699362327092261

namespace A099254

/-- `A128504(n)-A104555(n)` -/
def P9499699362327092261.Spec : Prop :=
  ∀ n, P9499699362327092261.a n = A099254 n

end A099254

/-! ## A099254.P1951000829782461147

`A008620(n)*A057079(n)`
-/

namespace A099254.P1951000829782461147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A057079 n

end

end A099254.P1951000829782461147

namespace A099254

/-- `A008620(n)*A057079(n)` -/
def P1951000829782461147.Spec : Prop :=
  ∀ n, P1951000829782461147.a n = A099254 n

end A099254

/-! ## A099254.P14655101770590427863

`A104581(n)*A131713(n)`
-/

namespace A099254.P14655101770590427863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 n * A131713 n

end

end A099254.P14655101770590427863

namespace A099254

/-- `A104581(n)*A131713(n)` -/
def P14655101770590427863.Spec : Prop :=
  ∀ n, P14655101770590427863.a n = A099254 n

end A099254

/-! ## A099254.P18092259354393714254

`A087627(n)/A132367(n)`
-/

namespace A099254.P18092259354393714254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087627 n : ℚ) / (A132367 n : ℚ)

end

end A099254.P18092259354393714254

namespace A099254

/-- `A087627(n)/A132367(n)` -/
def P18092259354393714254.Spec : Prop :=
  ∀ n, P18092259354393714254.a n = (A099254 n : ℚ)

end A099254

/-! ## A099254.P6898702935531215079

`A099471(n)-A099471(n+1)`
-/

namespace A099254.P6898702935531215079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099471 n - A099471 (n + 1)

end

end A099254.P6898702935531215079

namespace A099254

/-- `A099471(n)-A099471(n+1)` -/
def P6898702935531215079.Spec : Prop :=
  ∀ n, P6898702935531215079.a n = A099254 n

end A099254

/-! ## A099254.P131528328195976506

`(A002264(n)+1)*A057079(n)`
-/

namespace A099254.P131528328195976506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002264 n + 1) * A057079 n

end

end A099254.P131528328195976506

namespace A099254

/-- `(A002264(n)+1)*A057079(n)` -/
def P131528328195976506.Spec : Prop :=
  ∀ n, P131528328195976506.a n = A099254 n

end A099254

/-! ## A099254.P6946013031408638704

`n*A000007(n)-A099470(n+1)`
-/

namespace A099254.P6946013031408638704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000007 n - A099470 (n + 1)

end

end A099254.P6946013031408638704

namespace A099254

/-- `n*A000007(n)-A099470(n+1)` -/
def P6946013031408638704.Spec : Prop :=
  ∀ n, P6946013031408638704.a n = A099254 n

end A099254

/-! ## A099254.P9609992911236682205

`A008611(Δ[A008611(n)]²)-A099470(n+1)`
-/

namespace A099254.P9609992911236682205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((f1 (n + 1) - f1 n) ^ 2).toNat - A099470 (n + 1)

end

end A099254.P9609992911236682205

namespace A099254

/-- `A008611(Δ[A008611(n)]²)-A099470(n+1)` -/
def P9609992911236682205.Spec : Prop :=
  ∀ n, P9609992911236682205.a n = A099254 n

end A099254

/-! ## A099254.P235235284380426350

`A099470(n+1)/A099470(Δ[A008611(n)]²)`
-/

namespace A099254.P235235284380426350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099470 (n + 1) : ℚ) / (A099470 ((f1 (n + 1) - f1 n) ^ 2).toNat : ℚ)

end

end A099254.P235235284380426350

namespace A099254

/-- `A099470(n+1)/A099470(Δ[A008611(n)]²)` -/
def P235235284380426350.Spec : Prop :=
  ∀ n, P235235284380426350.a n = (A099254 n : ℚ)

end A099254

/-! ## A099254.P6000443064022728779

`round(A164611(n+1)/3)`
-/

namespace A099254.P6000443064022728779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A164611 (n + 1) : ℚ) / 3)

end

end A099254.P6000443064022728779

namespace A099254

/-- `round(A164611(n+1)/3)` -/
def P6000443064022728779.Spec : Prop :=
  ∀ n, P6000443064022728779.a n = A099254 n

end A099254

/-! ## A099254.P1296063871191340778

`∑[A104555(n+1)]-A104555(n)`
-/

namespace A099254.P1296063871191340778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104555 n

end

end A099254.P1296063871191340778

namespace A099254

/-- `∑[A104555(n+1)]-A104555(n)` -/
def P1296063871191340778.Spec : Prop :=
  ∀ n, P1296063871191340778.a n = A099254 n

end A099254

/-!
# A099255: Expansion of g.f. (7+6*x-6*x^2-3*x^3)/((x^2+x-1)*(x^2-x-1)).

The programs for A099255, the canonical program `A099255.P4766766728232310194` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099255 has offset 0).

The definition of A099255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((7+6x-6x^2-3x^3)/(1-3x^2+x^4))` (program `A099255.P4766766728232310194`, by `A099255.P4766766728232310194.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099255.P4766766728232310194

`ogf((7+6x-6x^2-3x^3)/(1-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099255

/-- `ogf((7+6x-6x^2-3x^3)/(1-3x^2+x^4))` -/
def P4766766728232310194.Spec : Prop :=
  ∀ n, P4766766728232310194.a n = A099255 n

theorem P4766766728232310194.correct : P4766766728232310194.Spec := by
  intro n
  simp only [A099255]

end A099255

/-! ## A099255.P7898401293449603562

`A061084(n+1)+A013655(n+2)`
-/

namespace A099255.P7898401293449603562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A013655 (n + 2)

end

end A099255.P7898401293449603562

namespace A099255

/-- `A061084(n+1)+A013655(n+2)` -/
def P7898401293449603562.Spec : Prop :=
  ∀ n, P7898401293449603562.a n = A099255 n

end A099255

/-! ## A099255.P16992968950688619456

`A061084(n+1)+A001060(n+1)`
-/

namespace A099255.P16992968950688619456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + A001060 (n + 1)

end

end A099255.P16992968950688619456

namespace A099255

/-- `A061084(n+1)+A001060(n+1)` -/
def P16992968950688619456.Spec : Prop :=
  ∀ n, P16992968950688619456.a n = A099255 n

end A099255

/-! ## A099255.P11271386216094031233

`A001060(n+1)+∑[A075193(n)]+1`
-/

namespace A099255.P11271386216094031233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A099255.P11271386216094031233

namespace A099255

/-- `A001060(n+1)+∑[A075193(n)]+1` -/
def P11271386216094031233.Spec : Prop :=
  ∀ n, P11271386216094031233.a n = A099255 n

end A099255

/-! ## A099255.P9417407708171953440

`A212804(n)+A022112(A109613(n))`
-/

namespace A099255.P9417407708171953440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022112 (A109613 n).toNat

end

end A099255.P9417407708171953440

namespace A099255

/-- `A212804(n)+A022112(A109613(n))` -/
def P9417407708171953440.Spec : Prop :=
  ∀ n, P9417407708171953440.a n = A099255 n

end A099255

/-! ## A099255.P15256325504333311865

`A001060(n+1)-(A075193(n+1)+A075193(n))`
-/

namespace A099255.P15256325504333311865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) - (A075193 (n + 1) + A075193 n)

end

end A099255.P15256325504333311865

namespace A099255

/-- `A001060(n+1)-(A075193(n+1)+A075193(n))` -/
def P15256325504333311865.Spec : Prop :=
  ∀ n, P15256325504333311865.a n = A099255 n

end A099255

/-! ## A099255.P17710742891639277519

`A022121(n+1)-A203976(n+1)`
-/

namespace A099255.P17710742891639277519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 (n + 1) - A203976 (n + 1)

end

end A099255.P17710742891639277519

namespace A099255

/-- `A022121(n+1)-A203976(n+1)` -/
def P17710742891639277519.Spec : Prop :=
  ∀ n, P17710742891639277519.a n = A099255 n

end A099255

/-! ## A099255.P10464837072469578472

`A061084(n+1)+A099256(n)+A061084(n+1)`
-/

namespace A099255.P10464837072469578472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) + (A099256 n + A061084 (n + 1))

end

end A099255.P10464837072469578472

namespace A099255

/-- `A061084(n+1)+A099256(n)+A061084(n+1)` -/
def P10464837072469578472.Spec : Prop :=
  ∀ n, P10464837072469578472.a n = A099255 n

end A099255

/-! ## A099255.P10972325535543233998

`A022097(n+1)+A061084(n+1)-A000032(n)`
-/

namespace A099255.P10972325535543233998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (n + 1) + (A061084 (n + 1) - A000032 n)

end

end A099255.P10972325535543233998

namespace A099255

/-- `A022097(n+1)+A061084(n+1)-A000032(n)` -/
def P10972325535543233998.Spec : Prop :=
  ∀ n, P10972325535543233998.a n = A099255 n

end A099255

/-! ## A099255.P7778612493483968335

`A001060(n+1)+A001060(n+1)-A099256(n)`
-/

namespace A099255.P7778612493483968335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) + (A001060 (n + 1) - A099256 n)

end

end A099255.P7778612493483968335

namespace A099255

/-- `A001060(n+1)+A001060(n+1)-A099256(n)` -/
def P7778612493483968335.Spec : Prop :=
  ∀ n, P7778612493483968335.a n = A099255 n

end A099255

/-! ## A099255.P6455862295716464289

`A022121(n+1)+A061084(n+1)-A000204(n+2)`
-/

namespace A099255.P6455862295716464289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 (n + 1) + (A061084 (n + 1) - A000204 (n + 2))

end

end A099255.P6455862295716464289

namespace A099255

/-- `A022121(n+1)+A061084(n+1)-A000204(n+2)` -/
def P6455862295716464289.Spec : Prop :=
  ∀ n, P6455862295716464289.a n = A099255 n

end A099255

/-! ## A099255.P15990940373596338886

`A022382(n+1)-A099256(n)`
-/

namespace A099255.P15990940373596338886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 (n + 1) - A099256 n

end

end A099255.P15990940373596338886

namespace A099255

/-- `A022382(n+1)-A099256(n)` -/
def P15990940373596338886.Spec : Prop :=
  ∀ n, P15990940373596338886.a n = A099255 n

end A099255

/-! ## A099255.P5571313865302250311

`A022380(n+1)-(A099256(n)+A000032(n))`
-/

namespace A099255.P5571313865302250311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022380 (n + 1) - (A099256 n + A000032 n)

end

end A099255.P5571313865302250311

namespace A099255

/-- `A022380(n+1)-(A099256(n)+A000032(n))` -/
def P5571313865302250311.Spec : Prop :=
  ∀ n, P5571313865302250311.a n = A099255 n

end A099255

/-!
# A099256: Expansion of g.f. (3-x)*(1+3*x+x^2)/((1-x-x^2)*(1+x-x^2)).

The programs for A099256, the canonical program `A099256.P10871644872277900959` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099256 has offset 0).

The definition of A099256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+8x-x^3)/(1-3x^2+x^4))` (program `A099256.P10871644872277900959`, by `A099256.P10871644872277900959.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A099256.P10871644872277900959

`ogf((3+8x-x^3)/(1-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099256

/-- `ogf((3+8x-x^3)/(1-3x^2+x^4))` -/
def P10871644872277900959.Spec : Prop :=
  ∀ n, P10871644872277900959.a n = A099256 n

theorem P10871644872277900959.correct : P10871644872277900959.Spec := by
  intro n
  simp only [A099256]

end A099256

/-! ## A099256.P18427718199767948414

`A013655(n+2)-A061084(n+1)`
-/

namespace A099256.P18427718199767948414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 2) - A061084 (n + 1)

end

end A099256.P18427718199767948414

namespace A099256

/-- `A013655(n+2)-A061084(n+1)` -/
def P18427718199767948414.Spec : Prop :=
  ∀ n, P18427718199767948414.a n = A099256 n

end A099256

/-! ## A099256.P5971813421905191441

`A203976(n+1)+A020695(n)`
-/

namespace A099256.P5971813421905191441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1) + A020695 n

end

end A099256.P5971813421905191441

namespace A099256

/-- `A203976(n+1)+A020695(n)` -/
def P5971813421905191441.Spec : Prop :=
  ∀ n, P5971813421905191441.a n = A099256 n

end A099256

/-! ## A099256.P7404458630626549208

`A203976(n+1)+Δ[A020701(n)]`
-/

namespace A099256.P7404458630626549208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1) + (f1 (n + 1) - f1 n)

end

end A099256.P7404458630626549208

namespace A099256

/-- `A203976(n+1)+Δ[A020701(n)]` -/
def P7404458630626549208.Spec : Prop :=
  ∀ n, P7404458630626549208.a n = A099256 n

end A099256

/-! ## A099256.P16719524164096477971

`A087123(n)+∑[2*A087123(n)]`
-/

namespace A099256.P16719524164096477971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099256.P16719524164096477971

namespace A099256

/-- `A087123(n)+∑[2*A087123(n)]` -/
def P16719524164096477971.Spec : Prop :=
  ∀ n, P16719524164096477971.a n = A099256 n

end A099256

/-! ## A099256.P3613264407875097618

`A001060(n+1)-A061084(n+1)`
-/

namespace A099256.P3613264407875097618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) - A061084 (n + 1)

end

end A099256.P3613264407875097618

namespace A099256

/-- `A001060(n+1)-A061084(n+1)` -/
def P3613264407875097618.Spec : Prop :=
  ∀ n, P3613264407875097618.a n = A099256 n

end A099256

/-! ## A099256.P8626230749672993606

`A203976(n+1)+A000045(n+3)`
-/

namespace A099256.P8626230749672993606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1) + A000045 (n + 3)

end

end A099256.P8626230749672993606

namespace A099256

/-- `A203976(n+1)+A000045(n+3)` -/
def P8626230749672993606.Spec : Prop :=
  ∀ n, P8626230749672993606.a n = A099256 n

end A099256

/-! ## A099256.P4090431044387571802

`Δ[A228210(n+1)]+A000045(n+3)`
-/

namespace A099256.P4090431044387571802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000045 (n + 3)

end

end A099256.P4090431044387571802

namespace A099256

/-- `Δ[A228210(n+1)]+A000045(n+3)` -/
def P4090431044387571802.Spec : Prop :=
  ∀ n, P4090431044387571802.a n = A099256 n

end A099256

/-! ## A099256.P18020782728146557321

`A022097(n+1)-(A061084(n+1)+A000032(n))`
-/

namespace A099256.P18020782728146557321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (n + 1) - (A061084 (n + 1) + A000032 n)

end

end A099256.P18020782728146557321

namespace A099256

/-- `A022097(n+1)-(A061084(n+1)+A000032(n))` -/
def P18020782728146557321.Spec : Prop :=
  ∀ n, P18020782728146557321.a n = A099256 n

end A099256

/-! ## A099256.P11870306042272916587

`A001060(n+1)+A001060(n+1)-A099255(n)`
-/

namespace A099256.P11870306042272916587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 (n + 1) + (A001060 (n + 1) - A099255 n)

end

end A099256.P11870306042272916587

namespace A099256

/-- `A001060(n+1)+A001060(n+1)-A099255(n)` -/
def P11870306042272916587.Spec : Prop :=
  ∀ n, P11870306042272916587.a n = A099256 n

end A099256

/-! ## A099256.P13385841459411078010

`A099255(n)-(A061084(n+1)+A061084(n+1))`
-/

namespace A099256.P13385841459411078010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099255 n - (A061084 (n + 1) + A061084 (n + 1))

end

end A099256.P13385841459411078010

namespace A099256

/-- `A099255(n)-(A061084(n+1)+A061084(n+1))` -/
def P13385841459411078010.Spec : Prop :=
  ∀ n, P13385841459411078010.a n = A099256 n

end A099256

/-! ## A099256.P11557251036788026188

`A022121(n+1)-(A061084(n+1)+A000204(n+2))`
-/

namespace A099256.P11557251036788026188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 (n + 1) - (A061084 (n + 1) + A000204 (n + 2))

end

end A099256.P11557251036788026188

namespace A099256

/-- `A022121(n+1)-(A061084(n+1)+A000204(n+2))` -/
def P11557251036788026188.Spec : Prop :=
  ∀ n, P11557251036788026188.a n = A099256 n

end A099256

/-! ## A099256.P3435199953051823967

`Δ[A020701(n)+∑[A203976(n)]]`
-/

namespace A099256.P3435199953051823967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A099256.P3435199953051823967

namespace A099256

/-- `Δ[A020701(n)+∑[A203976(n)]]` -/
def P3435199953051823967.Spec : Prop :=
  ∀ n, P3435199953051823967.a n = A099256 n

end A099256

/-!
# A099259: A100287(n+1) - A000960(n).

The programs for A099259, there is no canonical definition to state claims against.
-/

/-! ## A099259.P10804699162747425550

`A100287(n+2)-A000960(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099259.P10804699162747425550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 2) - A000960 (n + 1)

end

end A099259.P10804699162747425550

/-! ## A099259.P16059808389986196446

`A278507(∑[n+1])-A000960(n+1)`
-/

namespace A099259.P16059808389986196446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278507 (∑ j ∈ Finset.range (n + 1), f1 j) - A000960 (n + 1)

end

end A099259.P16059808389986196446

/-! ## A099259.P16507697347575551106

`A278505(∑[n+2])-A000960(n+1)`
-/

namespace A099259.P16507697347575551106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (∑ j ∈ Finset.range (n + 1), f1 j) - A000960 (n + 1)

end

end A099259.P16507697347575551106

/-! ## A099259.P2220009981024160284

`A100287(n+2)-A278505(∑[n+1])`
-/

namespace A099259.P2220009981024160284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 2) - A278505 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A099259.P2220009981024160284

/-! ## A099259.P17726151751931654589

`A100287(n+2)-A278503(∑[n]+1)`
-/

namespace A099259.P17726151751931654589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 2) - A278503 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A099259.P17726151751931654589

/-! ## A099259.P12775636859023113870

`A278505(∑[n+2])-A278505(∑[n+1])`
-/

namespace A099259.P12775636859023113870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (∑ j ∈ Finset.range (n + 1), f1 j) - A278505 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A099259.P12775636859023113870

/-! ## A099259.P11400783464099508993

`A278508(A000124(n))-A000960(n+1)`
-/

namespace A099259.P11400783464099508993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278508 (A000124 n).toNat - A000960 (n + 1)

end

end A099259.P11400783464099508993

/-! ## A099259.P15781435290060069338

`A100287(n+2)-A004442(A278484(n))`
-/

namespace A099259.P15781435290060069338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 2) - A004442 (A278484 n).toNat

end

end A099259.P15781435290060069338

/-! ## A099259.P4093828606891587105

`A278508(A000124(n))-A278503(A000124(n))`
-/

namespace A099259.P4093828606891587105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278508 (A000124 n).toNat - A278503 (A000124 n).toNat

end

end A099259.P4093828606891587105

/-! ## A099259.P7903045039608293028

`A100287(n+2)-(A100287(n+1)+A099264(n+1))`
-/

namespace A099259.P7903045039608293028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 2) - (A100287 (n + 1) + A099264 (n + 1))

end

end A099259.P7903045039608293028

/-!
# A099260: Number of decimal digits in (10^n)-th prime number.

The programs for A099260, there is no canonical definition to state claims against.
-/

/-! ## A099260.P11240804379117673080

`comp[floor(5*n^π)]`
-/

namespace A099260.P11240804379117673080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (n : ℝ) ^ Real.pi⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A099260.P11240804379117673080

/-! ## A099260.P3647341488613657320

`comp[xor(4, 47*n)]+1`
-/

namespace A099260.P3647341488613657320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (47 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A099260.P3647341488613657320

/-! ## A099260.P5015814285967040108

`comp[C(∑[lcm(2, n)], 2)]-1`
-/

namespace A099260.P5015814285967040108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 1

end

end A099260.P5015814285967040108

/-! ## A099260.P10540699308950982505

`lt[5, n*(9*n)%44]`
-/

namespace A099260.P10540699308950982505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (9 * n % 44)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099260.P10540699308950982505

/-! ## A099260.P13273326311187846694

`lt[cot(sqrt(or(1, n)+n)), n]`
-/

namespace A099260.P13273326311187846694
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.sqrt (Nat.lor 1 n + n : ℝ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A099260.P13273326311187846694

/-! ## A099260.P2886393112297316907

`comp[C(C(n, 3), 2)-2]+1`
-/

namespace A099260.P2886393112297316907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose n 3) 2 : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A099260.P2886393112297316907

/-! ## A099260.P3144245851064946349

`comp[a(n-1)+39]+1` with `a(0)=4`
-/

namespace A099260.P3144245851064946349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 39

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A099260.P3144245851064946349

/-! ## A099260.P2549938912713487863

`floor(∑[(atan(9)+n)/(n+1)])`
-/

namespace A099260.P2549938912713487863
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.arctan (9 : ℝ) + (n : ℝ)) / (n + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A099260.P2549938912713487863

/-! ## A099260.P18007497016218364234

`ceil(log2(A121485(n+3)))`
-/

namespace A099260.P18007497016218364234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A121485 (n + 3) : ℝ)⌉

end

end A099260.P18007497016218364234

/-!
# A099261: Length in bits of (10^n)-th prime number.

The programs for A099261, there is no canonical definition to state claims against.
-/

/-! ## A099261.P6274516106389013083

`ceil(log2(A092251(n)))`
-/

namespace A099261.P6274516106389013083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A092251 n : ℝ)⌉

end

end A099261.P6274516106389013083

/-! ## A099261.P2960826403401266328

`floor(log2(A006988(n)))+1`
-/

namespace A099261.P2960826403401266328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A006988 n).toNat + 1

end

end A099261.P2960826403401266328

/-! ## A099261.P11325041616195813250

`A020725(floor(log2(A006988(n))))`
-/

namespace A099261.P11325041616195813250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (Nat.log 2 (A006988 n).toNat)

end

end A099261.P11325041616195813250

/-! ## A099261.P3742420159092046292

`4*n+2-A069010(A135351(n))`
-/

namespace A099261.P3742420159092046292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A069010 (A135351 n).toNat

end

end A099261.P3742420159092046292

/-! ## A099261.P1688255099591286108

`A081604(A295053(n))+A016777(n)`
-/

namespace A099261.P1688255099591286108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A295053 n).toNat + A016777 n

end

end A099261.P1688255099591286108

/-!
# A099262: a(n) = (1/5040)*7^n + (1/240)*5^n + (1/72)*4^n + (1/16)*3^n + (11/60)*2^n + 53/144. Partial sum of Stirling numbers of second kind S(n,i), i=1..7 (i.e., a(n) = Sum_{i=1..7} S(n,i)).

The programs for A099262, there is no canonical definition to state claims against.
-/

/-! ## A099262.P2606036214393441648

`A222890(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A099262.P2606036214393441648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A222890 (n + 2) - a (n - 1)

end

end A099262.P2606036214393441648

/-! ## A099262.P6751764808502285881

`A203647(A052905(n+3))`
-/

namespace A099262.P6751764808502285881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A052905 (n + 3)).toNat

end

end A099262.P6751764808502285881

/-! ## A099262.P14624372499649593960

`A203647(eq[3, A219347(n)])`
-/

namespace A099262.P14624372499649593960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099262.P14624372499649593960

/-! ## A099262.P1146782690866267324

`A203647(A055998(n+4)-2)`
-/

namespace A099262.P1146782690866267324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A055998 (n + 4) - 2).toNat

end

end A099262.P1146782690866267324

/-! ## A099262.P16428368103339146352

`A203647(A000217(n+6)-5)`
-/

namespace A099262.P16428368103339146352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000217 (n + 6) - 5).toNat

end

end A099262.P16428368103339146352

/-! ## A099262.P15237224079210141684

`A203647(A000124(n+6)-6)`
-/

namespace A099262.P15237224079210141684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000124 (n + 6) - 6).toNat

end

end A099262.P15237224079210141684

/-! ## A099262.P16794909560390602158

`A203647(A000096(n+4)+n+2)`
-/

namespace A099262.P16794909560390602158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000096 (n + 4) + (n + 2 : ℤ)).toNat

end

end A099262.P16794909560390602158

/-!
# A099263: a(n) = (1/40320)*8^n + (1/1440)*6^n + (1/360)*5^n + (1/64)*4^n + (11/180)*3^n + (53/288)*2^n + 103/280. Partial sum of Stirling numbers of second kind S(n,i), i=1..8 (i.e., a(n) = Sum_{i=1..8} S(n,i)).

The programs for A099263, there is no canonical definition to state claims against.
-/

/-! ## A099263.P16521019633454161039

`A203647(A055999(n+4))`
-/

namespace A099263.P16521019633454161039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A055999 (n + 4)).toNat

end

end A099263.P16521019633454161039

/-! ## A099263.P6479659722541911723

`A203647(eq[4, A219347(n)])`
-/

namespace A099263.P6479659722541911723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099263.P6479659722541911723

/-! ## A099263.P13045704243943115257

`A137855(eq[5, A219347(n)])`
-/

namespace A099263.P13045704243943115257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099263.P13045704243943115257

/-! ## A099263.P12914917116583816223

`A137855(eq[7, A193592(n)])`
-/

namespace A099263.P12914917116583816223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A099263.P12914917116583816223

/-! ## A099263.P13568944479192434351

`A203647(A000124(n+7)-7)`
-/

namespace A099263.P13568944479192434351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A000124 (n + 7) - 7).toNat

end

end A099263.P13568944479192434351

/-!
# A099264: A000960(n) - A100287(n).

The programs for A099264, there is no canonical definition to state claims against.
-/

/-! ## A099264.P16420436627863420354

`A000960(n+1)-A100287(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A099264.P16420436627863420354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000960 (n + 1) - A100287 (n + 1)

end

end A099264.P16420436627863420354

/-! ## A099264.P4467189498400665873

`A278484(n)+1-A100287(n+1)`
-/

namespace A099264.P4467189498400665873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278484 n + (1 - A100287 (n + 1))

end

end A099264.P4467189498400665873

/-! ## A099264.P6410914969834731688

`A278505(∑[n+1])-A100287(n+1)`
-/

namespace A099264.P6410914969834731688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278505 (∑ j ∈ Finset.range (n + 1), f1 j) - A100287 (n + 1)

end

end A099264.P6410914969834731688

/-! ## A099264.P9681797265149790130

`A278503(∑[n]+1)-A100287(n+1)`
-/

namespace A099264.P9681797265149790130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278503 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A100287 (n + 1)

end

end A099264.P9681797265149790130

/-! ## A099264.P8767193158884905215

`Δ[A100287(n+1)]-A099259(n+1)`
-/

namespace A099264.P8767193158884905215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099259 (n + 1)

end

end A099264.P8767193158884905215

/-! ## A099264.P2671589559595061007

`A004442(A278484(n))-A100287(n+1)`
-/

namespace A099264.P2671589559595061007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A278484 n).toNat - A100287 (n + 1)

end

end A099264.P2671589559595061007

/-! ## A099264.P14174184057480175352

`A000960(A000027(n+1))%A100287(n+1)`
-/

namespace A099264.P14174184057480175352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000960 (A000027 (n + 1)).toNat) (A100287 (n + 1))

end

end A099264.P14174184057480175352

/-! ## A099264.P15136639596957462625

`A100287(n+2)-(A100287(n+1)+A099259(n+1))`
-/

namespace A099264.P15136639596957462625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100287 (n + 2) - (A100287 (n + 1) + A099259 (n + 1))

end

end A099264.P15136639596957462625

/-! ## A099264.P17840493497288307012

`(A000960(n+1)%A100287(n+1))%A000040(n+1)`
-/

namespace A099264.P17840493497288307012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000960 (n + 1)) (A100287 (n + 1))) (A000040 (n + 1))

end

end A099264.P17840493497288307012

/-!
# A099265: Partial sums of A056272.

The programs for A099265, the canonical program `A099265.P5234640297294895287` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099265 has offset 1).

The definition of A099265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A099265.P5234640297294895287

`∑[A056272(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A099265

/-- `∑[A056272(n+1)]` -/
def P5234640297294895287.Spec : Prop :=
  ∀ n, P5234640297294895287.a n = A099265 (n + 1)

theorem P5234640297294895287.correct : P5234640297294895287.Spec := by
  intro n
  simp only [A099265, Nat.add_sub_cancel]

end A099265

/-! ## A099265.P9250260309036576885

`∑[A056470(Δ[n²])]`
-/

namespace A099265.P9250260309036576885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056470 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099265.P9250260309036576885

namespace A099265

/-- `∑[A056470(Δ[n²])]` -/
def P9250260309036576885.Spec : Prop :=
  ∀ n, P9250260309036576885.a n = A099265 (n + 1)

end A099265

/-! ## A099265.P15300366301493295212

`A243515(n+1)-2`
-/

namespace A099265.P15300366301493295212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243515 (n + 1) - 2

end

end A099265.P15300366301493295212

namespace A099265

/-- `A243515(n+1)-2` -/
def P15300366301493295212.Spec : Prop :=
  ∀ n, P15300366301493295212.a n = A099265 (n + 1)

end A099265

/-! ## A099265.P2853600972394593365

`∑[A056506(2*n+1)]`
-/

namespace A099265.P2853600972394593365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056506 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099265.P2853600972394593365

namespace A099265

/-- `∑[A056506(2*n+1)]` -/
def P2853600972394593365.Spec : Prop :=
  ∀ n, P2853600972394593365.a n = A099265 (n + 1)

end A099265

/-! ## A099265.P5261950836299816966

`∑[∑{d}[n+1, A056276(#)]]`
-/

namespace A099265.P5261950836299816966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A056276 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099265.P5261950836299816966

namespace A099265

/-- `∑[∑{d}[n+1, A056276(#)]]` -/
def P5261950836299816966.Spec : Prop :=
  ∀ n, P5261950836299816966.a n = A099265 (n + 1)

end A099265

/-! ## A099265.P3078689178427823215

`∑[∑{d}[2*n+1, A056516(#)]]`
-/

namespace A099265.P3078689178427823215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A056516 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099265.P3078689178427823215

namespace A099265

/-- `∑[∑{d}[2*n+1, A056516(#)]]` -/
def P3078689178427823215.Spec : Prop :=
  ∀ n, P3078689178427823215.a n = A099265 (n + 1)

end A099265

/-!
# A099266: Partial sums of A056273.

The programs for A099266, there is no canonical definition to state claims against.
-/

/-! ## A099266.P12867697681192555599

`∑[A056273(n+1)]`
-/

namespace A099266.P12867697681192555599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P12867697681192555599

/-! ## A099266.P11319071270757543959

`A243516(n+1)-2`
-/

namespace A099266.P11319071270757543959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243516 (n + 1) - 2

end

end A099266.P11319071270757543959

/-! ## A099266.P1305215938695625836

`∑[A056471(2*(n+1))]`
-/

namespace A099266.P1305215938695625836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056471 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P1305215938695625836

/-! ## A099266.P3590919720682811113

`∑[A056507(2*n+1)]`
-/

namespace A099266.P3590919720682811113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P3590919720682811113

/-! ## A099266.P9956896066946077581

`∑[record[A056507(A004442(n))]]`
-/

namespace A099266.P9956896066946077581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P9956896066946077581

/-! ## A099266.P13299501801215505781

`∑[record[A056273(A008612(n))]]`
-/

namespace A099266.P13299501801215505781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P13299501801215505781

/-! ## A099266.P10702535560575574575

`∑[record[A056507(A026741(n))]]`
-/

namespace A099266.P10702535560575574575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056507 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P10702535560575574575

/-! ## A099266.P7118673461169306295

`∑[A203647(A060577(n+4))]`
-/

namespace A099266.P7118673461169306295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A060577 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099266.P7118673461169306295

/-! ## A099266.P4467254627951907030

`record[A243519(A055999(n+1))-2]`
-/

namespace A099266.P4467254627951907030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243519 (A055999 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099266.P4467254627951907030

/-!
# A099267: Numbers generated by the golden sieve.

The programs for A099267, the canonical program `A099267.P5228168782742476517` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099267 has offset 1).

The definition of A099267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099267.P5228168782742476517

`floor((n+1)*ϕ+2-ϕ)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099267

/-- `floor((n+1)*ϕ+2-ϕ)` -/
def P5228168782742476517.Spec : Prop :=
  ∀ n, P5228168782742476517.a n = A099267 (n + 1)

theorem P5228168782742476517.correct : P5228168782742476517.Spec := by
  intro n
  simp only [A099267, Nat.add_sub_cancel]

end A099267

/-! ## A099267.P697449875130253739

`∑[2^dr(Δ[floor((n-1)/ϕ)])]`
-/

namespace A099267.P697449875130253739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.digitalRoot (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P697449875130253739

namespace A099267

/-- `∑[2^dr(Δ[floor((n-1)/ϕ)])]` -/
def P697449875130253739.Spec : Prop :=
  ∀ n, (P697449875130253739.a n : ℤ) = A099267 (n + 1)

end A099267

/-! ## A099267.P17119577372227055700

`ceil(a(n-1)/ϕ²+n+1)` with `a(0)=2`
-/

namespace A099267.P17119577372227055700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(a (n - 1) : ℝ) / Real.goldenRatio ^ 2 + (n + 1 : ℝ)⌉

end

end A099267.P17119577372227055700

namespace A099267

/-- `ceil(a(n-1)/ϕ²+n+1)` -/
def P17119577372227055700.Spec : Prop :=
  ∀ n, P17119577372227055700.a n = A099267 (n + 1)

end A099267

/-! ## A099267.P8752775232688994537

`ceil(n²/a(n-1)+n+1)` with `a(0)=2`
-/

namespace A099267.P8752775232688994537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(n ^ 2 : ℚ) / (a (n - 1) : ℚ) + (n + 1 : ℚ)⌉

end

end A099267.P8752775232688994537

namespace A099267

/-- `ceil(n²/a(n-1)+n+1)` -/
def P8752775232688994537.Spec : Prop :=
  ∀ n, P8752775232688994537.a n = A099267 (n + 1)

end A099267

/-! ## A099267.P11142993190229351190

`(A130568(n)+3)/2`
-/

namespace A099267.P11142993190229351190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130568 n + 3 : ℚ) / 2

end

end A099267.P11142993190229351190

namespace A099267

/-- `(A130568(n)+3)/2` -/
def P11142993190229351190.Spec : Prop :=
  ∀ n, P11142993190229351190.a n = (A099267 (n + 1) : ℚ)

end A099267

/-! ## A099267.P7877269996986811529

`∑[A001468(abs(1-n))]`
-/

namespace A099267.P7877269996986811529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P7877269996986811529

namespace A099267

/-- `∑[A001468(abs(1-n))]` -/
def P7877269996986811529.Spec : Prop :=
  ∀ n, P7877269996986811529.a n = A099267 (n + 1)

end A099267

/-! ## A099267.P14961770294008946597

`∑[A014675(abs(2-n))]`
-/

namespace A099267.P14961770294008946597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P14961770294008946597

namespace A099267

/-- `∑[A014675(abs(2-n))]` -/
def P14961770294008946597.Spec : Prop :=
  ∀ n, P14961770294008946597.a n = A099267 (n + 1)

end A099267

/-! ## A099267.P1856425638241342729

`∑[char[A004956(n)]+1]`
-/

namespace A099267.P1856425638241342729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P1856425638241342729

namespace A099267

/-- `∑[char[A004956(n)]+1]` -/
def P1856425638241342729.Spec : Prop :=
  ∀ n, (P1856425638241342729.a n : ℤ) = A099267 (n + 1)

end A099267

/-! ## A099267.P7117256938512470782

`∑[A287523(n+1)+1]`
-/

namespace A099267.P7117256938512470782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287523 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P7117256938512470782

namespace A099267

/-- `∑[A287523(n+1)+1]` -/
def P7117256938512470782.Spec : Prop :=
  ∀ n, P7117256938512470782.a n = A099267 (n + 1)

end A099267

/-! ## A099267.P2482862968508395807

`∑[2-A189661(n+1)]`
-/

namespace A099267.P2482862968508395807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A189661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P2482862968508395807

namespace A099267

/-- `∑[2-A189661(n+1)]` -/
def P2482862968508395807.Spec : Prop :=
  ∀ n, P2482862968508395807.a n = A099267 (n + 1)

end A099267

/-! ## A099267.P11410521571403083969

`(A047924(n)+1-n)/2`
-/

namespace A099267.P11410521571403083969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047924 n + (1 - (n : ℤ)) : ℚ) / 2

end

end A099267.P11410521571403083969

namespace A099267

/-- `(A047924(n)+1-n)/2` -/
def P11410521571403083969.Spec : Prop :=
  ∀ n, P11410521571403083969.a n = (A099267 (n + 1) : ℚ)

end A099267

/-! ## A099267.P9013411324595797663

`∑[A000005(Δ[floor(ϕ*(n-ϕ))])]`
-/

namespace A099267.P9013411324595797663
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * ((n : ℝ) - Real.goldenRatio)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A099267.P9013411324595797663

namespace A099267

/-- `∑[A000005(Δ[floor(ϕ*(n-ϕ))])]` -/
def P9013411324595797663.Spec : Prop :=
  ∀ n, P9013411324595797663.a n = A099267 (n + 1)

end A099267

/-!
# A099268: For each single digit {0,1,...,9} record the smallest prime made up of copies of that digit or 0 if no such prime exists; repeat for all of the C(10,2) = 45 pairs of distinct decimal digits; then for all triples; etc.

The programs for A099268, there is no canonical definition to state claims against.
-/

/-! ## A099268.P11464074244334137920

`A010051(∑[A004148(n)])*A062584(n)`
-/

namespace A099268.P11464074244334137920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A062584 n

end

end A099268.P11464074244334137920

/-! ## A099268.P6396964183069229016

`A061397(A062584(n)^A118458(n))`
-/

namespace A099268.P6396964183069229016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (SequenceMachineLib.roundAway ((A062584 n : ℚ) ^ (A118458 n : ℤ))).toNat

end

end A099268.P6396964183069229016

/-! ## A099268.P7364403312282506590

`lcm(A062584(n), A157658(A018018(n)))`
-/

namespace A099268.P7364403312282506590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062584 n) (A157658 (A018018 n).toNat)

end

end A099268.P7364403312282506590

/-!
# A099269: A sequence derived from a matrix using "0,1,2,3,4,5,6".

The programs for A099269, the canonical program `A099269.P18208156332293249520` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099269 has offset 1).

The definition of A099269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099269.P18208156332293249520

`7*a(n-1)+4*a(n-2)-18*a(n-3)` with `a(0)=1, a(1)=4, a(2)=32`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099269

/-- `7*a(n-1)+4*a(n-2)-18*a(n-3)` -/
def P18208156332293249520.Spec : Prop :=
  ∀ n, P18208156332293249520.a n = A099269 (n + 1)

theorem P18208156332293249520.correct : P18208156332293249520.Spec := by
  intro n
  simp only [A099269, Nat.add_sub_cancel]

end A099269

/-!
# A099270: Unsigned member r=-12 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099270, the canonical program `A099270.P14044969252410304007` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099270 has offset 0).

The definition of A099270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099270.P14044969252410304007

`14*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099270

/-- `14*a(n-1)-a(n-2)-2*(-1)^n` -/
def P14044969252410304007.Spec : Prop :=
  ∀ n, P14044969252410304007.a n = A099270 n

theorem P14044969252410304007.correct : P14044969252410304007.Spec := by
  intro n
  simp only [A099270]

end A099270

/-! ## A099270.P17259767266987924308

`13*a(n-1)+13*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A099270.P17259767266987924308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12] fun n a =>
  13 * a (n - 1) + 13 * a (n - 2) - a (n - 3)

end

end A099270.P17259767266987924308

namespace A099270

/-- `13*a(n-1)+13*a(n-2)-a(n-3)` -/
def P17259767266987924308.Spec : Prop :=
  ∀ n, P17259767266987924308.a n = A099270 n

end A099270

/-! ## A099270.P2083204441989789583

`floor((A001075(n)/2)²)`
-/

namespace A099270.P2083204441989789583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001075 n : ℚ) / 2) ^ 2⌋

end

end A099270.P2083204441989789583

namespace A099270

/-- `floor((A001075(n)/2)²)` -/
def P2083204441989789583.Spec : Prop :=
  ∀ n, P2083204441989789583.a n = A099270 n

end A099270

/-! ## A099270.P8046437326125058494

`floor((A003500(n)/4)²)`
-/

namespace A099270.P8046437326125058494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A003500 n : ℚ) / 4) ^ 2⌋

end

end A099270.P8046437326125058494

namespace A099270

/-- `floor((A003500(n)/4)²)` -/
def P8046437326125058494.Spec : Prop :=
  ∀ n, P8046437326125058494.a n = A099270 n

end A099270

/-! ## A099270.P13004776506831445197

`A001570(n)-a(n-1)` with `a(0)=0`
-/

namespace A099270.P13004776506831445197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001570 n - a (n - 1)

end

end A099270.P13004776506831445197

namespace A099270

/-- `A001570(n)-a(n-1)` -/
def P13004776506831445197.Spec : Prop :=
  ∀ n, P13004776506831445197.a n = A099270 n

end A099270

/-! ## A099270.P3319707621596275838

`floor((A002531(2*n)/2)²)`
-/

namespace A099270.P3319707621596275838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A002531 (2 * n) : ℚ) / 2) ^ 2⌋

end

end A099270.P3319707621596275838

namespace A099270

/-- `floor((A002531(2*n)/2)²)` -/
def P3319707621596275838.Spec : Prop :=
  ∀ n, P3319707621596275838.a n = A099270 n

end A099270

/-! ## A099270.P12718567237242955800

`floor((A151961(n+1)/6)²)`
-/

namespace A099270.P12718567237242955800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A151961 (n + 1) : ℚ) / 6) ^ 2⌋

end

end A099270.P12718567237242955800

namespace A099270

/-- `floor((A151961(n+1)/6)²)` -/
def P12718567237242955800.Spec : Prop :=
  ∀ n, P12718567237242955800.a n = A099270 n

end A099270

/-! ## A099270.P10502647171043970748

`floor((A005246(2*n+1)/2)²)`
-/

namespace A099270.P10502647171043970748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A005246 (2 * n + 1) : ℚ) / 2) ^ 2⌋

end

end A099270.P10502647171043970748

namespace A099270

/-- `floor((A005246(2*n+1)/2)²)` -/
def P10502647171043970748.Spec : Prop :=
  ∀ n, P10502647171043970748.a n = A099270 n

end A099270

/-! ## A099270.P12626176905468015239

`round((A026150(2*n)/A000079(n+1))²)`
-/

namespace A099270.P12626176905468015239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A026150 (2 * n) : ℚ) / (A000079 (n + 1) : ℚ)) ^ 2)

end

end A099270.P12626176905468015239

namespace A099270

/-- `round((A026150(2*n)/A000079(n+1))²)` -/
def P12626176905468015239.Spec : Prop :=
  ∀ n, P12626176905468015239.a n = A099270 n

end A099270

/-! ## A099270.P13302453606955027980

`(A144536(n+1)-A144535(n+1))*A144535(n)`
-/

namespace A099270.P13302453606955027980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A144536 (n + 1) - A144535 (n + 1)) * A144535 n

end

end A099270.P13302453606955027980

namespace A099270

/-- `(A144536(n+1)-A144535(n+1))*A144535(n)` -/
def P13302453606955027980.Spec : Prop :=
  ∀ n, P13302453606955027980.a n = A099270 n

end A099270

/-!
# A099271: Unsigned member r=-13 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099271, the canonical program `A099271.P11252854710048074350` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099271 has offset 0).

The definition of A099271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099271.P11252854710048074350

`14*a(n-1)+14*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099271

/-- `14*a(n-1)+14*a(n-2)-a(n-3)` -/
def P11252854710048074350.Spec : Prop :=
  ∀ n, P11252854710048074350.a n = A099271 n

theorem P11252854710048074350.correct : P11252854710048074350.Spec := by
  intro n
  simp only [A099271]

end A099271

/-! ## A099271.P11812945680808325160

`15*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099271.P11812945680808325160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  15 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099271.P11812945680808325160

namespace A099271

/-- `15*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P11812945680808325160.Spec : Prop :=
  ∀ n, P11812945680808325160.a n = A099271 n

end A099271

/-! ## A099271.P3572139527767113970

`round(A078365(n)/17)`
-/

namespace A099271.P3572139527767113970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078365 n : ℚ) / 17)

end

end A099271.P3572139527767113970

namespace A099271

/-- `round(A078365(n)/17)` -/
def P3572139527767113970.Spec : Prop :=
  ∀ n, P3572139527767113970.a n = A099271 n

end A099271

/-! ## A099271.P2167424339524968321

`round((13*A098302(n)+2)/17)`
-/

namespace A099271.P2167424339524968321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((13 * A098302 n + 2 : ℚ) / 17)

end

end A099271.P2167424339524968321

namespace A099271

/-- `round((13*A098302(n)+2)/17)` -/
def P2167424339524968321.Spec : Prop :=
  ∀ n, P2167424339524968321.a n = A099271 n

end A099271

/-! ## A099271.P929884805360788744

`round((A160682(n+1)+A160682(A028310(n)))/17)`
-/

namespace A099271.P929884805360788744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A160682 (n + 1) + A160682 (A028310 n).toNat : ℚ) / 17)

end

end A099271.P929884805360788744

namespace A099271

/-- `round((A160682(n+1)+A160682(A028310(n)))/17)` -/
def P929884805360788744.Spec : Prop :=
  ∀ n, P929884805360788744.a n = A099271 n

end A099271

/-!
# A099272: Unsigned member r=-14 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099272, the canonical program `A099272.P1075970356419243974` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099272 has offset 0).

The definition of A099272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099272.P1075970356419243974

`15*a(n-1)+15*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=14`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099272

/-- `15*a(n-1)+15*a(n-2)-a(n-3)` -/
def P1075970356419243974.Spec : Prop :=
  ∀ n, P1075970356419243974.a n = A099272 n

theorem P1075970356419243974.correct : P1075970356419243974.Spec := by
  intro n
  simp only [A099272]

end A099272

/-! ## A099272.P10522019512485988703

`16*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099272.P10522019512485988703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  16 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099272.P10522019512485988703

namespace A099272

/-- `16*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P10522019512485988703.Spec : Prop :=
  ∀ n, P10522019512485988703.a n = A099272 n

end A099272

/-! ## A099272.P9320151074197523603

`A157456(n)-a(n-1)` with `a(0)=0`
-/

namespace A099272.P9320151074197523603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A157456 n - a (n - 1)

end

end A099272.P9320151074197523603

namespace A099272

/-- `A157456(n)-a(n-1)` -/
def P9320151074197523603.Spec : Prop :=
  ∀ n, P9320151074197523603.a n = A099272 n

end A099272

/-! ## A099272.P16705090355452836927

`round(A001081(n)/9)`
-/

namespace A099272.P16705090355452836927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001081 n : ℚ) / 9)

end

end A099272.P16705090355452836927

namespace A099272

/-- `round(A001081(n)/9)` -/
def P16705090355452836927.Spec : Prop :=
  ∀ n, P16705090355452836927.a n = A099272 n

end A099272

/-! ## A099272.P11565082510853333003

`round(A090727(n)/18)`
-/

namespace A099272.P11565082510853333003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090727 n : ℚ) / 18)

end

end A099272.P11565082510853333003

namespace A099272

/-- `round(A090727(n)/18)` -/
def P11565082510853333003.Spec : Prop :=
  ∀ n, P11565082510853333003.a n = A099272 n

end A099272

/-! ## A099272.P6946820145571308497

`A157456(n+1)%(A041111(n)*A243469(n+1))`
-/

namespace A099272.P6946820145571308497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157456 (n + 1)) (A041111 n * A243469 (n + 1))

end

end A099272.P6946820145571308497

namespace A099272

/-- `A157456(n+1)%(A041111(n)*A243469(n+1))` -/
def P6946820145571308497.Spec : Prop :=
  ∀ n, P6946820145571308497.a n = A099272 n

end A099272

/-! ## A099272.P10757866179355773739

`A157456(n+1)-A243469(n+1)*A243470(n+1)`
-/

namespace A099272.P10757866179355773739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157456 (n + 1) - A243469 (n + 1) * A243470 (n + 1)

end

end A099272.P10757866179355773739

namespace A099272

/-- `A157456(n+1)-A243469(n+1)*A243470(n+1)` -/
def P10757866179355773739.Spec : Prop :=
  ∀ n, P10757866179355773739.a n = A099272 n

end A099272

/-!
# A099273: Unsigned member r=-15 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099273, the canonical program `A099273.P12931323563485274699` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099273 has offset 0).

The definition of A099273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099273.P12931323563485274699

`16*a(n-1)+16*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=15`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099273

/-- `16*a(n-1)+16*a(n-2)-a(n-3)` -/
def P12931323563485274699.Spec : Prop :=
  ∀ n, P12931323563485274699.a n = A099273 n

theorem P12931323563485274699.correct : P12931323563485274699.Spec := by
  intro n
  simp only [A099273]

end A099273

/-! ## A099273.P12031447925417037406

`17*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099273.P12031447925417037406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  17 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099273.P12031447925417037406

namespace A099273

/-- `17*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P12031447925417037406.Spec : Prop :=
  ∀ n, P12031447925417037406.a n = A099273 n

end A099273

/-! ## A099273.P18107222450634817167

`round(A078367(n)/19)`
-/

namespace A099273.P18107222450634817167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078367 n : ℚ) / 19)

end

end A099273.P18107222450634817167

namespace A099273

/-- `round(A078367(n)/19)` -/
def P18107222450634817167.Spec : Prop :=
  ∀ n, P18107222450634817167.a n = A099273 n

end A099273

/-! ## A099273.P5916422983330603822

`A078367(n)-a(n-1)-A161595(n+1)` with `a(0)=0`
-/

namespace A099273.P5916422983330603822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078367 n - a (n - 1) - A161595 (n + 1)

end

end A099273.P5916422983330603822

namespace A099273

/-- `A078367(n)-a(n-1)-A161595(n+1)` -/
def P5916422983330603822.Spec : Prop :=
  ∀ n, P5916422983330603822.a n = A099273 n

end A099273

/-! ## A099273.P320864921564319358

`round(A161583(n+1)/∑[A161599(n+1)])`
-/

namespace A099273.P320864921564319358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161583 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A099273.P320864921564319358

namespace A099273

/-- `round(A161583(n+1)/∑[A161599(n+1)])` -/
def P320864921564319358.Spec : Prop :=
  ∀ n, P320864921564319358.a n = A099273 n

end A099273

/-!
# A099274: Sum of the prime(n) primes following prime(n).

The programs for A099274, there is no canonical definition to state claims against.
-/

/-! ## A099274.P7798230194705252066

`A036660(n+1)/Δ[A007504(n)]`
-/

namespace A099274.P7798230194705252066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036660 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A099274.P7798230194705252066

/-! ## A099274.P16932213192508697054

`A036660(n+1)/A000040(n+1)`
-/

namespace A099274.P16932213192508697054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036660 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A099274.P16932213192508697054

/-! ## A099274.P15109923216596341791

`A036660(n+1)/record[A006530(n+2)]`
-/

namespace A099274.P15109923216596341791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036660 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A099274.P15109923216596341791

/-! ## A099274.P9306234983217256474

`A036660(n+1)/record[A020639(n+2)]`
-/

namespace A099274.P9306234983217256474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036660 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A099274.P9306234983217256474

/-! ## A099274.P5519463123301665756

`A036660(n+1)/(A006093(n+1)+1)`
-/

namespace A099274.P5519463123301665756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036660 (n + 1) : ℚ) / (A006093 (n + 1) + 1 : ℚ)

end

end A099274.P5519463123301665756

/-!
# A099275: Unsigned member r=-17 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099275, the canonical program `A099275.P3716018538567399460` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099275 has offset 0).

The definition of A099275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099275.P3716018538567399460

`18*a(n-1)+18*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=17`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099275

/-- `18*a(n-1)+18*a(n-2)-a(n-3)` -/
def P3716018538567399460.Spec : Prop :=
  ∀ n, P3716018538567399460.a n = A099275 n

theorem P3716018538567399460.correct : P3716018538567399460.Spec := by
  intro n
  simp only [A099275]

end A099275

/-! ## A099275.P17979025861706185230

`19*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099275.P17979025861706185230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  19 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099275.P17979025861706185230

namespace A099275

/-- `19*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P17979025861706185230.Spec : Prop :=
  ∀ n, P17979025861706185230.a n = A099275 n

end A099275

/-! ## A099275.P11939463052976364866

`round(A078369(n)/21)`
-/

namespace A099275.P11939463052976364866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078369 n : ℚ) / 21)

end

end A099275.P11939463052976364866

namespace A099275

/-- `round(A078369(n)/21)` -/
def P11939463052976364866.Spec : Prop :=
  ∀ n, P11939463052976364866.a n = A099275 n

end A099275

/-!
# A099276: Unsigned member r=-18 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099276, the canonical program `A099276.P10353124585844017550` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099276 has offset 0).

The definition of A099276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099276.P10353124585844017550

`19*a(n-1)+19*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=18`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099276

/-- `19*a(n-1)+19*a(n-2)-a(n-3)` -/
def P10353124585844017550.Spec : Prop :=
  ∀ n, P10353124585844017550.a n = A099276 n

theorem P10353124585844017550.correct : P10353124585844017550.Spec := by
  intro n
  simp only [A099276]

end A099276

/-! ## A099276.P15297694539550268000

`20*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099276.P15297694539550268000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  20 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099276.P15297694539550268000

namespace A099276

/-- `20*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P15297694539550268000.Spec : Prop :=
  ∀ n, P15297694539550268000.a n = A099276 n

end A099276

/-! ## A099276.P10761202254813109359

`round(A001085(n)/11)`
-/

namespace A099276.P10761202254813109359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001085 n : ℚ) / 11)

end

end A099276.P10761202254813109359

namespace A099276

/-- `round(A001085(n)/11)` -/
def P10761202254813109359.Spec : Prop :=
  ∀ n, P10761202254813109359.a n = A099276 n

end A099276

/-! ## A099276.P906095554209590527

`A135030(n)/A011782(n)*A135030(n)`
-/

namespace A099276.P906095554209590527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135030 n : ℚ) / (A011782 n : ℚ) * (A135030 n : ℚ)

end

end A099276.P906095554209590527

namespace A099276

/-- `A135030(n)/A011782(n)*A135030(n)` -/
def P906095554209590527.Spec : Prop :=
  ∀ n, P906095554209590527.a n = (A099276 n : ℚ)

end A099276

/-! ## A099276.P7121246365353380690

`Δ[A075843(n)]%A041015(n)²`
-/

namespace A099276.P7121246365353380690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A041015 n ^ 2)

end

end A099276.P7121246365353380690

namespace A099276

/-- `Δ[A075843(n)]%A041015(n)²` -/
def P7121246365353380690.Spec : Prop :=
  ∀ n, P7121246365353380690.a n = A099276 n

end A099276

/-! ## A099276.P10585684194738414693

`A041015(A005843(n))%A041015(n)²`
-/

namespace A099276.P10585684194738414693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041015 (A005843 n).toNat) (A041015 n ^ 2)

end

end A099276.P10585684194738414693

namespace A099276

/-- `A041015(A005843(n))%A041015(n)²` -/
def P10585684194738414693.Spec : Prop :=
  ∀ n, P10585684194738414693.a n = A099276 n

end A099276

/-! ## A099276.P4232736486817924468

`A135030(n)²/A011782(n)`
-/

namespace A099276.P4232736486817924468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135030 n ^ 2 : ℚ) / (A011782 n : ℚ)

end

end A099276.P4232736486817924468

namespace A099276

/-- `A135030(n)²/A011782(n)` -/
def P4232736486817924468.Spec : Prop :=
  ∀ n, P4232736486817924468.a n = (A099276 n : ℚ)

end A099276

/-! ## A099276.P13172722826656472573

`2/A000079(n)*A135030(n)²`
-/

namespace A099276.P13172722826656472573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000079 n : ℚ) * (A135030 n ^ 2 : ℚ)

end

end A099276.P13172722826656472573

namespace A099276

/-- `2/A000079(n)*A135030(n)²` -/
def P13172722826656472573.Spec : Prop :=
  ∀ n, P13172722826656472573.a n = (A099276 n : ℚ)

end A099276

/-!
# A099277: Unsigned member r=-19 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099277, the canonical program `A099277.P14775747911193338073` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099277 has offset 0).

The definition of A099277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099277.P14775747911193338073

`20*a(n-1)+20*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=19`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099277

/-- `20*a(n-1)+20*a(n-2)-a(n-3)` -/
def P14775747911193338073.Spec : Prop :=
  ∀ n, P14775747911193338073.a n = A099277 n

theorem P14775747911193338073.correct : P14775747911193338073.Spec := by
  intro n
  simp only [A099277]

end A099277

/-! ## A099277.P11375387252288565793

`21*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099277.P11375387252288565793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  21 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099277.P11375387252288565793

namespace A099277

/-- `21*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P11375387252288565793.Spec : Prop :=
  ∀ n, P11375387252288565793.a n = A099277 n

end A099277

/-! ## A099277.P10654752345204874879

`round(A090729(n)/23)`
-/

namespace A099277.P10654752345204874879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090729 n : ℚ) / 23)

end

end A099277.P10654752345204874879

namespace A099277

/-- `round(A090729(n)/23)` -/
def P10654752345204874879.Spec : Prop :=
  ∀ n, P10654752345204874879.a n = A099277 n

end A099277

/-!
# A099278: Unsigned member r=-20 of the family of Chebyshev sequences S_r(n) defined in A092184.

The programs for A099278, the canonical program `A099278.P583954602051020871` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099278 has offset 0).

The definition of A099278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099278.P583954602051020871

`21*a(n-1)+21*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099278

/-- `21*a(n-1)+21*a(n-2)-a(n-3)` -/
def P583954602051020871.Spec : Prop :=
  ∀ n, P583954602051020871.a n = A099278 n

theorem P583954602051020871.correct : P583954602051020871.Spec := by
  intro n
  simp only [A099278]

end A099278

/-! ## A099278.P5211924197365950433

`22*a(n-1)-(a(n-2)+2*(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A099278.P5211924197365950433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  22 * a (n - 1) - (a (n - 2) + 2 * (-1) ^ n)

end

end A099278.P5211924197365950433

namespace A099278

/-- `22*a(n-1)-(a(n-2)+2*(-1)^n)` -/
def P5211924197365950433.Spec : Prop :=
  ∀ n, P5211924197365950433.a n = A099278 n

end A099278

/-! ## A099278.P14021712138091987169

`ceil(A322707(n)/6)`
-/

namespace A099278.P14021712138091987169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322707 n : ℚ) / 6⌉

end

end A099278.P14021712138091987169

namespace A099278

/-- `ceil(A322707(n)/6)` -/
def P14021712138091987169.Spec : Prop :=
  ∀ n, P14021712138091987169.a n = A099278 n

end A099278

/-! ## A099278.P10202030402977440627

`round(A077422(n)/12)`
-/

namespace A099278.P10202030402977440627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077422 n : ℚ) / 12)

end

end A099278.P10202030402977440627

namespace A099278

/-- `round(A077422(n)/12)` -/
def P10202030402977440627.Spec : Prop :=
  ∀ n, P10202030402977440627.a n = A099278 n

end A099278

/-! ## A099278.P16233892714362859019

`round(A090730(n)/24)`
-/

namespace A099278.P16233892714362859019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090730 n : ℚ) / 24)

end

end A099278.P16233892714362859019

namespace A099278

/-- `round(A090730(n)/24)` -/
def P16233892714362859019.Spec : Prop :=
  ∀ n, P16233892714362859019.a n = A099278 n

end A099278

/-! ## A099278.P4838102676959390102

`A157014(n+1)%A041049(n)²`
-/

namespace A099278.P4838102676959390102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157014 (n + 1)) (A041049 n ^ 2)

end

end A099278.P4838102676959390102

namespace A099278

/-- `A157014(n+1)%A041049(n)²` -/
def P4838102676959390102.Spec : Prop :=
  ∀ n, P4838102676959390102.a n = A099278 n

end A099278

/-!
# A099279: Squares of A001076.

The programs for A099279, the canonical program `A099279.P15388785970826882492` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A099279 has offset 0).

The definition of A099279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A099279.P15388785970826882492

`18*a(n-1)-a(n-2)-2*(-1)^n` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A099279

/-- `18*a(n-1)-a(n-2)-2*(-1)^n` -/
def P15388785970826882492.Spec : Prop :=
  ∀ n, P15388785970826882492.a n = A099279 n

theorem P15388785970826882492.correct : P15388785970826882492.Spec := by
  intro n
  simp only [A099279]

end A099279

/-! ## A099279.P1618412651818888165

`17*a(n-1)+17*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=16`
-/

namespace A099279.P1618412651818888165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 16] fun n a =>
  17 * a (n - 1) + 17 * a (n - 2) - a (n - 3)

end

end A099279.P1618412651818888165

namespace A099279

/-- `17*a(n-1)+17*a(n-2)-a(n-3)` -/
def P1618412651818888165.Spec : Prop :=
  ∀ n, P1618412651818888165.a n = A099279 n

end A099279

/-! ## A099279.P11450326283631530944

`A001076(n)²`
-/

namespace A099279.P11450326283631530944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n ^ 2

end

end A099279.P11450326283631530944

namespace A099279

/-- `A001076(n)²` -/
def P11450326283631530944.Spec : Prop :=
  ∀ n, P11450326283631530944.a n = A099279 n

end A099279

/-! ## A099279.P16288988535489313096

`a(n-1)+A001654(3*n-2)` with `a(0)=0`
-/

namespace A099279.P16288988535489313096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001654 (3 * n - 2)

end

end A099279.P16288988535489313096

namespace A099279

/-- `a(n-1)+A001654(3*n-2)` -/
def P16288988535489313096.Spec : Prop :=
  ∀ n, P16288988535489313096.a n = A099279 n

end A099279

/-! ## A099279.P6694362511430586815

`∑[a(n-2)+4*a(n-1)]²` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A099279.P6694362511430586815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  f1 (n - 2) + 4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A099279.P6694362511430586815

namespace A099279

/-- `∑[a(n-2)+4*a(n-1)]²` -/
def P6694362511430586815.Spec : Prop :=
  ∀ n, (P6694362511430586815.a n : ℤ) = A099279 n

end A099279

/-! ## A099279.P9355002486317536680

`A014729(n)/4`
-/

namespace A099279.P9355002486317536680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014729 n : ℚ) / 4

end

end A099279.P9355002486317536680

namespace A099279

/-- `A014729(n)/4` -/
def P9355002486317536680.Spec : Prop :=
  ∀ n, P9355002486317536680.a n = (A099279 n : ℚ)

end A099279

/-! ## A099279.P7105371155083344808

`A059973(2*n)²`
-/

namespace A099279.P7105371155083344808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (2 * n) ^ 2

end

end A099279.P7105371155083344808

namespace A099279

/-- `A059973(2*n)²` -/
def P7105371155083344808.Spec : Prop :=
  ∀ n, P7105371155083344808.a n = A099279 n

end A099279

/-! ## A099279.P6251619652846531302

`A004695(3*n)²`
-/

namespace A099279.P6251619652846531302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n) ^ 2

end

end A099279.P6251619652846531302

namespace A099279

/-- `A004695(3*n)²` -/
def P6251619652846531302.Spec : Prop :=
  ∀ n, P6251619652846531302.a n = A099279 n

end A099279

/-! ## A099279.P8608218128062729775

`(A014445(n)/2)²`
-/

namespace A099279.P8608218128062729775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014445 n : ℚ) / 2) ^ 2

end

end A099279.P8608218128062729775

namespace A099279

/-- `(A014445(n)/2)²` -/
def P8608218128062729775.Spec : Prop :=
  ∀ n, P8608218128062729775.a n = (A099279 n : ℚ)

end A099279

/-! ## A099279.P5532421024432650659

`A167808(3*n)²`
-/

namespace A099279.P5532421024432650659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n) ^ 2

end

end A099279.P5532421024432650659

namespace A099279

/-- `A167808(3*n)²` -/
def P5532421024432650659.Spec : Prop :=
  ∀ n, P5532421024432650659.a n = A099279 n

end A099279

/-!
# A099280: 2^n-th palindromic number.

The programs for A099280, there is no canonical definition to state claims against.
-/

/-! ## A099280.P11155683410687379874

`A002113(2^n+1)`
-/

namespace A099280.P11155683410687379874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (2 ^ n + 1)

end

end A099280.P11155683410687379874

/-! ## A099280.P15569655469815390030

`A002113(2^n-log2(1/2))%(12*4^n)`
-/

namespace A099280.P15569655469815390030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002113 (SequenceMachineLib.roundAway ((2 ^ n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat) (12 * 4 ^ n : ℤ)

end

end A099280.P15569655469815390030

/-! ## A099280.P11265945889558389317

`record[A002113(A052552(n))]`
-/

namespace A099280.P11265945889558389317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A052552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099280.P11265945889558389317

/-! ## A099280.P9582442171698037487

`record[A002113(A271709(n))]`
-/

namespace A099280.P9582442171698037487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (A271709 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A099280.P9582442171698037487

/-! ## A099280.P5763989744441919668

`and(-1, A002113(A000051(n)))`
-/

namespace A099280.P5763989744441919668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002113 (A000051 n).toNat)

end

end A099280.P5763989744441919668

/-!
# A099286: Decimal expansion of the error function at 1.

The programs for A099286, there is no canonical definition to state claims against.
-/

/-! ## A099286.P10598955023841624713

`9-A099287(n)`
-/

namespace A099286.P10598955023841624713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A099287 n

end

end A099286.P10598955023841624713

/-!
# A099287: Decimal expansion of the complementary error function at 1.

The programs for A099287, there is no canonical definition to state claims against.
-/

/-! ## A099287.P6416103338368316328

`9-A099286(n)`
-/

namespace A099287.P6416103338368316328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A099286 n

end

end A099287.P6416103338368316328

/-!
# A099291: Number of times the digit 0 appears in the first 10^n digits of Pi.

The programs for A099291, there is no canonical definition to state claims against.
-/

/-! ## A099291.P9840536478394673069

`A002283(n)-A061358(A186676(n+1))`
-/

namespace A099291.P9840536478394673069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A061358 (A186676 (n + 1)).toNat

end

end A099291.P9840536478394673069

/-!
# A099297: Number of times the digit 6 appears in the first 10^n digits of Pi.

The programs for A099297, there is no canonical definition to state claims against.
-/

/-! ## A099297.P2778900558557410102

`or(A003462(n), A064789(10^n))`
-/

namespace A099297.P2778900558557410102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003462 n) (A064789 (10 ^ n))

end

end A099297.P2778900558557410102


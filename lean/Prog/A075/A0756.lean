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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A075603: Number of relatively prime numbers using all digits of n.

The programs for A075603, there is no canonical definition to state claims against.
-/

/-! ## A075603.P12501861283241423240

`A285305(A106706(n+1))`
-/

namespace A075603.P12501861283241423240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A106706 (n + 1)).toNat

end

end A075603.P12501861283241423240

/-! ## A075603.P9345284030671599210

`A284775(A106706(n+1)+1)`
-/

namespace A075603.P9345284030671599210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A106706 (n + 1) + 1).toNat

end

end A075603.P9345284030671599210

/-! ## A075603.P14927646947987156494

`A232991(A351081(n+1)-A289813(n))`
-/

namespace A075603.P14927646947987156494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232991 (A351081 (n + 1) - A289813 n).toNat

end

end A075603.P14927646947987156494

/-! ## A075603.P2197489848416017958

`and(A277246(n), A331048(3*n+4))`
-/

namespace A075603.P2197489848416017958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277246 n) (A331048 (3 * n + 4))

end

end A075603.P2197489848416017958

/-! ## A075603.P2740682477792935870

`and(1, A114411(n)*A124317(n+1))`
-/

namespace A075603.P2740682477792935870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A114411 n * A124317 (n + 1))

end

end A075603.P2740682477792935870

/-!
# A075605: Smallest k not a palindrome and not divisible by 10 such that k and R(k) (A004086) both are divisible by the n-th prime.

The programs for A075605, there is no canonical definition to state claims against.
-/

/-! ## A075605.P13854433201912108889

`A075606(p?[comp[n²]])`
-/

namespace A075605.P13854433201912108889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075606 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A075605.P13854433201912108889

/-! ## A075605.P13895317213380689764

`A075606(Δ[A007504(n)])`
-/

namespace A075605.P13895317213380689764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075606 (f1 (n + 1) - f1 n).toNat

end

end A075605.P13895317213380689764

/-! ## A075605.P12484336753012656819

`A075606(A000040(n+1))`
-/

namespace A075605.P12484336753012656819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075606 (A000040 (n + 1)).toNat

end

end A075605.P12484336753012656819

/-! ## A075605.P6692458800061401133

`A075606(A008578(n+2))`
-/

namespace A075605.P6692458800061401133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075606 (A008578 (n + 2)).toNat

end

end A075605.P6692458800061401133

/-! ## A075605.P2955598469440232353

`A075606(A182986(n+2))`
-/

namespace A075605.P2955598469440232353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075606 (A182986 (n + 2)).toNat

end

end A075605.P2955598469440232353

/-!
# A075609: a(1) = 1, a(n) = smallest prime number not occurring earlier such that the concatenation a(n-1) and a(n) is a prime.

The programs for A075609, there is no canonical definition to state claims against.
-/

/-! ## A075609.P14208689798296814902

`lcm(2, A073641(n+1))/2`
-/

namespace A075609.P14208689798296814902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A073641 (n + 1)) : ℚ) / 2

end

end A075609.P14208689798296814902

/-! ## A075609.P10113085039662926834

`A073641(gcd(n+1, (n+1)*a(n-1)))` with `a(0)=1`
-/

namespace A075609.P10113085039662926834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073641 (Int.gcd (n + 1 : ℤ) ((n + 1 : ℤ) * a (n - 1)))

end

end A075609.P10113085039662926834

/-! ## A075609.P13805166181944653293

`A073641(n+1)-A000007(n)`
-/

namespace A075609.P13805166181944653293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073641 (n + 1) - A000007 n

end

end A075609.P13805166181944653293

/-! ## A075609.P978970615898694181

`A073641(n+1)/A054977(n)`
-/

namespace A075609.P978970615898694181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073641 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A075609.P978970615898694181

/-! ## A075609.P13865816391700650442

`A000265(A073641(n+1))`
-/

namespace A075609.P13865816391700650442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073641 (n + 1)).toNat

end

end A075609.P13865816391700650442

/-! ## A075609.P13392645896989732493

`A346599(A073641(n+1)-1)`
-/

namespace A075609.P13392645896989732493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (A073641 (n + 1) - 1).toNat

end

end A075609.P13392645896989732493

/-! ## A075609.P499352025043638811

`A065475(A073641(n+1)-1)`
-/

namespace A075609.P499352025043638811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A073641 (n + 1) - 1).toNat

end

end A075609.P499352025043638811

/-! ## A075609.P15907888149408458631

`A028234(2*A073641(n+1))`
-/

namespace A075609.P15907888149408458631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A073641 (n + 1)).toNat

end

end A075609.P15907888149408458631

/-! ## A075609.P6771352943660309187

`A163575(2*A073641(n+1))`
-/

namespace A075609.P6771352943660309187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (2 * A073641 (n + 1)).toNat

end

end A075609.P6771352943660309187

/-! ## A075609.P17244954016227479669

`A073675(lcm(2, A073641(n+1)))`
-/

namespace A075609.P17244954016227479669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (Int.lcm 2 (A073641 (n + 1)))

end

end A075609.P17244954016227479669

/-!
# A075611: a(1) = 1, a(n) = smallest number > a(n-1) such that concatenation a(k) a(n) is prime for all k = 1 to n-1. Stop if no such number exists.

The programs for A075611, there is no canonical definition to state claims against.
-/

/-! ## A075611.P10913511394815629258

`A088647(n+1)`
-/

namespace A075611.P10913511394815629258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088647 (n + 1)

end

end A075611.P10913511394815629258

/-! ## A075611.P2244797008455967498

`record[A088647(∏{digits}[n, #])]`
-/

namespace A075611.P2244797008455967498
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088647 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075611.P2244797008455967498

/-! ## A075611.P3565831074940851178

`record[A088647(n)-char[1]]`
-/

namespace A075611.P3565831074940851178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088647 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075611.P3565831074940851178

/-! ## A075611.P6812804555123915044

`record[A088647(ceil(xor(1, n)/2))]`
-/

namespace A075611.P6812804555123915044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088647 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075611.P6812804555123915044

/-! ## A075611.P15538140734467829395

`record[A088647(Δ[ceil(n^(3/2))])]`
-/

namespace A075611.P15538140734467829395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088647 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075611.P15538140734467829395

/-!
# A075613: Triangular array read by rows, giving coefficients of P(n,X) = Product_{i=1..2n+1} (X - 1/cos(Pi*k/(2n+1))), a polynomial with integer coefficients.

The programs for A075613, the canonical program `A075613.P2820217756380276824` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075613 has offset 1).

The definition of A075613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1639 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075613.P2820217756380276824

`A117438(A061579(∑[char[2*n]]))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075613

/-- `A117438(A061579(∑[char[2*n]]))` -/
def P2820217756380276824.Spec : Prop :=
  ∀ n, P2820217756380276824.a n = A075613 (n + 1)

theorem P2820217756380276824.correct : P2820217756380276824.Spec := by
  intro n
  simp only [A075613, Nat.add_sub_cancel]

end A075613

/-!
# A075614: Let P(k,X) = 4^k*Product_{i=1..k} (X - cos(Pi*i/k)) (which is a polynomial with integer coefficients). Sequence gives maximum absolute values of coefficients of P(n,X).

The programs for A075614, there is no canonical definition to state claims against.
-/

/-! ## A075614.P9099911655932931401

`A011782(2*n+1)*A194882(A350249(n))`
-/

namespace A075614.P9099911655932931401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) * A194882 (A350249 n).toNat

end

end A075614.P9099911655932931401

/-! ## A075614.P10864540084283533098

`A000302(n)*A361248(A250263(n))`
-/

namespace A075614.P10864540084283533098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A361248 (A250263 n).toNat

end

end A075614.P10864540084283533098

/-! ## A075614.P6668928715877776965

`(A060500(A319365(n))+3)*A000302(n)`
-/

namespace A075614.P6668928715877776965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060500 (A319365 n).toNat + 3) * A000302 n

end

end A075614.P6668928715877776965

/-!
# A075617: Rearrangement of natural numbers so that starting with a(n) the concatenation of n numbers gives a composite number.

The programs for A075617, there is no canonical definition to state claims against.
-/

/-! ## A075617.P16905843195158538240

`A077172(n+3)-2%A077174(n+6)`
-/

namespace A075617.P16905843195158538240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (n + 3) - Int.tmod 2 (A077174 (n + 6))

end

end A075617.P16905843195158538240

/-!
# A075618: Rearrangement of natural numbers so that starting with a(n) the concatenation of n numbers is divisible by n. Choose the smallest number that has not already appeared if there is a choice.

The programs for A075618, there is no canonical definition to state claims against.
-/

/-! ## A075618.P1172138642154017587

`A105366(n+1)-A105367(A105373(3*n+1))`
-/

namespace A075618.P1172138642154017587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105366 (n + 1) - A105367 (A105373 (3 * n + 1)).toNat

end

end A075618.P1172138642154017587

/-! ## A075618.P8057726186562322849

`A095689(or(n+1, A185293(n)))`
-/

namespace A075618.P8057726186562322849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095689 (Int.lor (n + 1 : ℤ) (A185293 n)).toNat

end

end A075618.P8057726186562322849

/-! ## A075618.P15221631631574250174

`A061395(p?[A031285(∑[char[∑[n]]]²-n)])`
-/

namespace A075618.P15221631631574250174
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075618.P15221631631574250174

/-! ## A075618.P15195206604329185344

`A095689(or(A185293(n), A291769(n)))`
-/

namespace A075618.P15195206604329185344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095689 (Int.lor (A185293 n) (A291769 n)).toNat

end

end A075618.P15195206604329185344

/-! ## A075618.P15585899691269143017

`A095689(or(A185293(n), A348553(n)))`
-/

namespace A075618.P15585899691269143017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095689 (Int.lor (A185293 n) (A348553 n)).toNat

end

end A075618.P15585899691269143017

/-!
# A075619: Concatenation of n numbers mentioned in A075618, divided by n.

The programs for A075619, there is no canonical definition to state claims against.
-/

/-! ## A075619.P5376836904292938498

`A083195(n+1)/(n+1)`
-/

namespace A075619.P5376836904292938498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083195 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075619.P5376836904292938498

/-!
# A075621: Group the natural numbers so that the n-th group contains n numbers whose concatenation is divisible by n: (1), (2, 4), (3, 5, 7), (6, 8, 9, 12), (10, 11, 13, 14, 15), (16, 17, 18, 19, 20, 24), ... Sequence gives numbers formed by the concatenation.

The programs for A075621, there is no canonical definition to state claims against.
-/

/-! ## A075621.P7032207505518795175

`(n+1)*A075622(n+1)`
-/

namespace A075621.P7032207505518795175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075622 (n + 1)

end

end A075621.P7032207505518795175

/-!
# A075622: Concatenation of n-th group in A075621 divided by n.

The programs for A075622, there is no canonical definition to state claims against.
-/

/-! ## A075622.P14189982700298474651

`A075621(n+1)/(n+1)`
-/

namespace A075622.P14189982700298474651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075621 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075622.P14189982700298474651

/-!
# A075623: Initial terms of groups in A075621.

The programs for A075623, there is no canonical definition to state claims against.
-/

/-! ## A075623.P3484111575733313719

`A058840(A182901(n))+∑[n]`
-/

namespace A075623.P3484111575733313719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058840 (A182901 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075623.P3484111575733313719

/-! ## A075623.P597779815962253597

`A055088(A360785(n))+∑[n]`
-/

namespace A075623.P597779815962253597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055088 (A360785 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075623.P597779815962253597

/-! ## A075623.P3400964794042489841

`A373834(A297301(n+1))+A000217(n)`
-/

namespace A075623.P3400964794042489841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373834 (A297301 (n + 1)).toNat + A000217 n

end

end A075623.P3400964794042489841

/-! ## A075623.P5677785183999545292

`A187950(A283177(n))+A000217(n)`
-/

namespace A075623.P5677785183999545292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187950 (A283177 n).toNat + A000217 n

end

end A075623.P5677785183999545292

/-! ## A075623.P11668363833368779128

`A152948(n+2)-A000002(A383494(n))`
-/

namespace A075623.P11668363833368779128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152948 (n + 2) - A000002 (A383494 n).toNat

end

end A075623.P11668363833368779128

/-!
# A075624: Final terms of groups in A075621.

The programs for A075624, there is no canonical definition to state claims against.
-/

/-! ## A075624.P13429517591102204130

`∑[A001650(A175012(n)!)]`
-/

namespace A075624.P13429517591102204130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (Nat.factorial (A175012 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075624.P13429517591102204130

/-! ## A075624.P494741166038090431

`∑[A048691(A000120(3^n))]`
-/

namespace A075624.P494741166038090431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A000120 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075624.P494741166038090431

/-! ## A075624.P15051002993668801178

`∑[A000005(∑[A245910(n)]²)]`
-/

namespace A075624.P15051002993668801178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245910 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075624.P15051002993668801178

/-! ## A075624.P9889316104467083596

`∑[A035218(A258974(n+1)²)]`
-/

namespace A075624.P9889316104467083596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A258974 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075624.P9889316104467083596

/-! ## A075624.P8813823996866775090

`∑[A000005(A000120(3^n)²)]`
-/

namespace A075624.P8813823996866775090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000120 (3 ^ n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075624.P8813823996866775090

/-!
# A075625: Sums of terms of groups in A075621.

The programs for A075625, there is no canonical definition to state claims against.
-/

/-! ## A075625.P155295464739860748

`A275367(4*C(2^n+1, 2))+∑[∑[3*n]]`
-/

namespace A075625.P155295464739860748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275367 (4 * Nat.choose (2 ^ n + 1) 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075625.P155295464739860748

/-! ## A075625.P10956114539542994300

`∑[A120401(∑[A000010(3*n+2)])]`
-/

namespace A075625.P10956114539542994300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120401 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075625.P10956114539542994300

/-! ## A075625.P8370254398273788868

`A247619(n)-A220136(A377039(2*(n+1)))`
-/

namespace A075625.P8370254398273788868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247619 n - A220136 (A377039 (2 * (n + 1))).toNat

end

end A075625.P8370254398273788868

/-!
# A075627: Initial terms of groups in A075626.

The programs for A075627, there is no canonical definition to state claims against.
-/

/-! ## A075627.P3330603241202872593

`A075626(∑[n]+1)`
-/

namespace A075627.P3330603241202872593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075627.P3330603241202872593

/-! ## A075627.P11317011888369211230

`A075626(A000124(n))%A033567(n+1)`
-/

namespace A075627.P11317011888369211230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075626 (A000124 n).toNat) (A033567 (n + 1))

end

end A075627.P11317011888369211230

/-! ## A075627.P16236903852128231422

`A075626(A000124(n))+char[A030638(n+1)]`
-/

namespace A075627.P16236903852128231422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A075627.P16236903852128231422

/-! ## A075627.P14152782148156190059

`A075626(A000124(n))+A000007(3*n+2)`
-/

namespace A075627.P14152782148156190059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000124 n).toNat + A000007 (3 * n + 2)

end

end A075627.P14152782148156190059

/-! ## A075627.P3259287328347581673

`A075626(A000124(n))+char[A099977(2*n+3)]`
-/

namespace A075627.P3259287328347581673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099977 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A075627.P3259287328347581673

/-! ## A075627.P15634509061138723588

`A075626(A000124(n))*A220777(A125184(n))`
-/

namespace A075627.P15634509061138723588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000124 n).toNat * A220777 (A125184 n).toNat

end

end A075627.P15634509061138723588

/-! ## A075627.P10933829801496830528

`A075626(A000124(n))+A067742(A033299(n+1))`
-/

namespace A075627.P10933829801496830528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000124 n).toNat + A067742 (A033299 (n + 1)).toNat

end

end A075627.P10933829801496830528

/-! ## A075627.P14596900529717686352

`A112298(A141785(n+1))+A075626(A000124(n))`
-/

namespace A075627.P14596900529717686352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112298 (A141785 (n + 1)).toNat + A075626 (A000124 n).toNat

end

end A075627.P14596900529717686352

/-! ## A075627.P17171403983488564492

`A075626(A000124(n))-A130706(3*A248596(n+1))`
-/

namespace A075627.P17171403983488564492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000124 n).toNat - A130706 (3 * A248596 (n + 1)).toNat

end

end A075627.P17171403983488564492

/-! ## A075627.P16621058074114589220

`A308844(A112298(2*n+3))+A075626(A000124(n))`
-/

namespace A075627.P16621058074114589220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308844 (A112298 (2 * n + 3)).toNat + A075626 (A000124 n).toNat

end

end A075627.P16621058074114589220

/-!
# A075628: Final terms of groups in A075626.

The programs for A075628, there is no canonical definition to state claims against.
-/

/-! ## A075628.P16190953930678150230

`A075626(∑[n+1])`
-/

namespace A075628.P16190953930678150230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075628.P16190953930678150230

/-! ## A075628.P9551612956182274932

`A075626(A000217(n+1))*A288554(C(2, n))`
-/

namespace A075628.P9551612956182274932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000217 (n + 1)).toNat * A288554 (Nat.choose 2 n)

end

end A075628.P9551612956182274932

/-! ## A075628.P1603974455826459611

`A075626(A000217(n+1))*A356692(C(2, n))`
-/

namespace A075628.P1603974455826459611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000217 (n + 1)).toNat * A356692 (Nat.choose 2 n)

end

end A075628.P1603974455826459611

/-! ## A075628.P6324672193720474143

`A075626(A000217(n+1))*A384893(C(2, n))`
-/

namespace A075628.P6324672193720474143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000217 (n + 1)).toNat * A384893 (Nat.choose 2 n)

end

end A075628.P6324672193720474143

/-! ## A075628.P6312912855155537008

`A075626(A000217(n+1))*A097325(2*n+1)`
-/

namespace A075628.P6312912855155537008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075626 (A000217 (n + 1)).toNat * A097325 (2 * n + 1)

end

end A075628.P6312912855155537008

/-! ## A075628.P1203411807473730970

`A061347(A069099(n+1))*A075626(A000217(n+1))`
-/

namespace A075628.P1203411807473730970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (A069099 (n + 1)).toNat * A075626 (A000217 (n + 1)).toNat

end

end A075628.P1203411807473730970

/-!
# A075629: Sums of terms of groups in A075626.

The programs for A075629, there is no canonical definition to state claims against.
-/

/-! ## A075629.P16043620712767292664

`(n+1)*A075630(n+1)`
-/

namespace A075629.P16043620712767292664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075630 (n + 1)

end

end A075629.P16043620712767292664

/-!
# A075630: (1/n) times sum of terms of n-th group in A075626.

The programs for A075630, there is no canonical definition to state claims against.
-/

/-! ## A075630.P13274638772469658426

`A075629(n+1)/(n+1)`
-/

namespace A075630.P13274638772469658426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075629 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075630.P13274638772469658426

/-!
# A075631: Group the natural numbers so that the n-th group contains smallest set of consecutive numbers whose sum is a multiple of the sum for the previous group: (1), (2), (3, 4, 5), (6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18), (19, 20, ... Sequence gives sums of terms of the groups.

The programs for A075631, there is no canonical definition to state claims against.
-/

/-! ## A075631.P4587409401302654559

`∏[A075632(n+1)]`
-/

namespace A075631.P4587409401302654559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A075631.P4587409401302654559

/-! ## A075631.P1571186391772121063

`Δ[C(A075633(n+1), 2)]`
-/

namespace A075631.P1571186391772121063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A075633 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075631.P1571186391772121063

/-! ## A075631.P3032200575855028294

`a(A023443(n))*A075632(n+1)` with `a(0)=1`
-/

namespace A075631.P3032200575855028294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A023443 n).toNat * A075632 (n + 1)

end

end A075631.P3032200575855028294

/-!
# A075632: a(1) = 1, then {sum of terms of the n-th group in A075631}/{sum of (n-1)-th group}.

The programs for A075632, there is no canonical definition to state claims against.
-/

/-! ## A075632.P8507216640125803523

`ratio[A075631(A028310(n))]`
-/

namespace A075632.P8507216640125803523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075631 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A075632.P8507216640125803523

/-! ## A075632.P10011016527650763361

`ratio[A075631(A193739(∑[n]))]`
-/

namespace A075632.P10011016527650763361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075631 (A193739 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A075632.P10011016527650763361

/-! ## A075632.P6400306811202668494

`ratio[A075631(A193592(∑[n+2]+4))]`
-/

namespace A075632.P6400306811202668494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075631 (A193592 (∑ j ∈ Finset.range (n + 1), f2 j + 4)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A075632.P6400306811202668494

/-! ## A075632.P17466139033794358588

`A075631(n+1)/A075631(round(sqrt(n²+1)))`
-/

namespace A075632.P17466139033794358588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075631 (n + 1) : ℚ) / (A075631 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A075632.P17466139033794358588

/-! ## A075632.P14149638228816066503

`ratio[A075631(A114806(n))]`
-/

namespace A075632.P14149638228816066503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075631 (A114806 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A075632.P14149638228816066503

/-!
# A075633: Initial terms of groups in A075631.

The programs for A075633, there is no canonical definition to state claims against.
-/

/-! ## A075633.P15344124165673425333

`A075634(floor(C(n, a(n-1))/2+n))+1` with `a(0)=1`
-/

namespace A075633.P15344124165673425333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075634 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat + 1

end

end A075633.P15344124165673425333

/-! ## A075633.P17052058111074223281

`∑{e}[A007283(n), A075634(#)]`
-/

namespace A075633.P17052058111074223281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A075634 (Nat.factorization (f1 n).natAbs p)

end

end A075633.P17052058111074223281

/-! ## A075633.P14270964256910868197

`A075634(A028310(n))-(floor(acot(n))-1)`
-/

namespace A075633.P14270964256910868197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075634 (A028310 n).toNat - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A075633.P14270964256910868197

/-! ## A075633.P2248898859784502260

`A075634(A028310(n))+A057427(n)`
-/

namespace A075633.P2248898859784502260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075634 (A028310 n).toNat + A057427 n

end

end A075633.P2248898859784502260

/-! ## A075633.P1856061767445957804

`A178334(n)+A075634(A028310(n))`
-/

namespace A075633.P1856061767445957804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A075634 (A028310 n).toNat

end

end A075633.P1856061767445957804

/-!
# A075634: Final terms of groups in A075631.

The programs for A075634, there is no canonical definition to state claims against.
-/

/-! ## A075634.P18420704967928122630

`A075633(n+2)-1`
-/

namespace A075634.P18420704967928122630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075633 (n + 2) - 1

end

end A075634.P18420704967928122630

/-! ## A075634.P6560348419625680495

`∑[abs(Δ[A075633(n+1)])]`
-/

namespace A075634.P6560348419625680495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075633 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075634.P6560348419625680495

/-! ## A075634.P9983569120826294186

`record[Δ[A075633(A010766(n+1))]]`
-/

namespace A075634.P9983569120826294186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075633 (A010766 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075634.P9983569120826294186

/-! ## A075634.P9181278644147283781

`record[Δ[A075633(A083368(n+1))]]`
-/

namespace A075634.P9181278644147283781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075633 (A083368 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075634.P9181278644147283781

/-! ## A075634.P1261521042949894448

`A118830(2*n+1)+A075633(n+2)`
-/

namespace A075634.P1261521042949894448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A075633 (n + 2)

end

end A075634.P1261521042949894448

/-!
# A075636: Sums of groups in A075635.

The programs for A075636, there is no canonical definition to state claims against.
-/

/-! ## A075636.P13228911883998372178

`A340104(A168285(n+1)+A045925(n))`
-/

namespace A075636.P13228911883998372178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340104 (A168285 (n + 1) + A045925 n).toNat

end

end A075636.P13228911883998372178

/-!
# A075637: Initial terms of groups in A075635.

The programs for A075637, there is no canonical definition to state claims against.
-/

/-! ## A075637.P13765088177867448727

`A075635(∑[n]+1)`
-/

namespace A075637.P13765088177867448727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075637.P13765088177867448727

/-! ## A075637.P3859067383135936194

`record[A010054(n)*A075635(n+1)]`
-/

namespace A075637.P3859067383135936194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A075635 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075637.P3859067383135936194

/-! ## A075637.P8719231394608521209

`record[A075635(n+1)/A055450(n)]`
-/

namespace A075637.P8719231394608521209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075635 (n + 1) : ℚ) / (A055450 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075637.P8719231394608521209

/-! ## A075637.P12047029995789442752

`A080846(3*n+4)+A075635(A000217(n)+1)`
-/

namespace A075637.P12047029995789442752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (3 * n + 4) + A075635 (A000217 n + 1).toNat

end

end A075637.P12047029995789442752

/-! ## A075637.P17063854629756623346

`record[A075635(n+1)/A013612(n)]`
-/

namespace A075637.P17063854629756623346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075635 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075637.P17063854629756623346

/-! ## A075637.P15701508103102128394

`record[A075635(n+1)/A013616(n)]`
-/

namespace A075637.P15701508103102128394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075635 (n + 1) : ℚ) / (A013616 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075637.P15701508103102128394

/-!
# A075638: Final terms of groups in A075635.

The programs for A075638, there is no canonical definition to state claims against.
-/

/-! ## A075638.P17739253074264120082

`A075635(∑[n+1])`
-/

namespace A075638.P17739253074264120082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075638.P17739253074264120082

/-! ## A075638.P4380376759180082851

`A075635(A008805(2*n+1))%A097823(n+1)`
-/

namespace A075638.P4380376759180082851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075635 (A008805 (2 * n + 1)).toNat) (A097823 (n + 1))

end

end A075638.P4380376759180082851

/-! ## A075638.P16836298450531488458

`A075635(A001971(2*n+3))%A075654(n+1)`
-/

namespace A075638.P16836298450531488458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075635 (A001971 (2 * n + 3)).toNat) (A075654 (n + 1))

end

end A075638.P16836298450531488458

/-!
# A075640: Sums of groups in A075639.

The programs for A075640, there is no canonical definition to state claims against.
-/

/-! ## A075640.P17968322743981012354

`A268597(n*∑[∑[(1-n)²%3]])`
-/

namespace A075640.P17968322743981012354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((1 - (n : ℤ)) ^ 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268597 ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A075640.P17968322743981012354

/-!
# A075641: Initial terms of groups in A075639.

The programs for A075641, there is no canonical definition to state claims against.
-/

/-! ## A075641.P3489476333599710857

`A075639(∑[n]+1)`
-/

namespace A075641.P3489476333599710857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075641.P3489476333599710857

/-! ## A075641.P15201471280464638759

`record[A010054(n)*A075639(n+1)]`
-/

namespace A075641.P15201471280464638759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A075639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075641.P15201471280464638759

/-! ## A075641.P12914821592075521358

`record[A075639(n+1)/A013611(n)]`
-/

namespace A075641.P12914821592075521358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075639 (n + 1) : ℚ) / (A013611 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075641.P12914821592075521358

/-! ## A075641.P16115027433295462694

`record[gcd(A075639(n+1), A182042(n))]`
-/

namespace A075641.P16115027433295462694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075639 (n + 1)) (A182042 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075641.P16115027433295462694

/-!
# A075642: Final terms of groups in A075639.

The programs for A075642, there is no canonical definition to state claims against.
-/

/-! ## A075642.P15798267104287549461

`A075639(∑[n+1])`
-/

namespace A075642.P15798267104287549461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075642.P15798267104287549461

/-! ## A075642.P9683960386564730535

`record[A075639(A038722(n+1))]`
-/

namespace A075642.P9683960386564730535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075639 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075642.P9683960386564730535

/-! ## A075642.P13651035947189646950

`record[A075639(A066182(n+1))]`
-/

namespace A075642.P13651035947189646950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075639 (A066182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075642.P13651035947189646950

/-! ## A075642.P1665844271090514518

`record[A075639(n+1)/A039598(n)]`
-/

namespace A075642.P1665844271090514518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075639 (n + 1) : ℚ) / (A039598 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075642.P1665844271090514518

/-! ## A075642.P7395988722304472459

`record[A010054(n+1)*A075639(n+1)]`
-/

namespace A075642.P7395988722304472459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A075639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075642.P7395988722304472459

/-! ## A075642.P966161280446535171

`record[A075639(n+1)^A155031(n+1)]`
-/

namespace A075642.P966161280446535171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075639 (n + 1) : ℚ) ^ (A155031 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075642.P966161280446535171

/-!
# A075643: Group the natural numbers so that the n-th group contains n numbers one each of a multiple of numbers from 1 to n so that the group sum is a multiple of (n+1): (2), (1, 8), (3, 4, 9), (5, 6, 12, 32), (7, 10, 15, 16, 30), (11, 14, 18, 20, 25, 24), ... Sequence gives initial terms of groups.

The programs for A075643, the canonical program `A075643.P5171669184174618456` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075643 has offset 1).

The definition of A075643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075643.P9989247537358799619

`p?[floor(n-sqrt(n))]-char[1]`
-/

namespace A075643.P9989247537358799619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) - Real.sqrt (n : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A075643.P9989247537358799619

namespace A075643

/-- `p?[floor(n-sqrt(n))]-char[1]` -/
def P9989247537358799619.Spec : Prop :=
  ∀ n, P9989247537358799619.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P3594641514017317816

`p?[ceil((n-1)/gcd(2, n))]^(1-char[1])`
-/

namespace A075643.P3594641514017317816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / (Nat.gcd 2 n : ℚ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A075643.P3594641514017317816

namespace A075643

/-- `p?[ceil((n-1)/gcd(2, n))]^(1-char[1])` -/
def P3594641514017317816.Spec : Prop :=
  ∀ n, P3594641514017317816.a n = (A075643 (n + 1) : ℚ)

end A075643

/-! ## A075643.P6259264895891923883

`p?[a(n-1)+2]^(1-char[1])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A075643.P6259264895891923883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) ^ (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A075643.P6259264895891923883

namespace A075643

/-- `p?[a(n-1)+2]^(1-char[1])` -/
def P6259264895891923883.Spec : Prop :=
  ∀ n, P6259264895891923883.a n = (A075643 (n + 1) : ℚ)

end A075643

/-! ## A075643.P12949444718973019830

`C(p?[a(n-1)+2], 1-char[1])` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A075643.P12949444718973019830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A075643.P12949444718973019830

namespace A075643

/-- `C(p?[a(n-1)+2], 1-char[1])` -/
def P12949444718973019830.Spec : Prop :=
  ∀ n, (P12949444718973019830.a n : ℤ) = A075643 (n + 1)

end A075643

/-! ## A075643.P2625537625972949651

`A151800(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P2625537625972949651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A151800 (a (n - 1)).toNat

end

end A075643.P2625537625972949651

namespace A075643

/-- `A151800(a(n-1))` -/
def P2625537625972949651.Spec : Prop :=
  ∀ n, P2625537625972949651.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P10800340022272331531

`A162753(2*n+1)-char[1]`
-/

namespace A075643.P10800340022272331531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A075643.P10800340022272331531

namespace A075643

/-- `A162753(2*n+1)-char[1]` -/
def P10800340022272331531.Spec : Prop :=
  ∀ n, P10800340022272331531.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P8159355259564135794

`A026234(A065090(n+1))`
-/

namespace A075643.P8159355259564135794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A065090 (n + 1)).toNat

end

end A075643.P8159355259564135794

namespace A075643

/-- `A026234(A065090(n+1))` -/
def P8159355259564135794.Spec : Prop :=
  ∀ n, P8159355259564135794.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P445586586970379650

`A134735(A004274(n+1))`
-/

namespace A075643.P445586586970379650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A004274 (n + 1)).toNat

end

end A075643.P445586586970379650

namespace A075643

/-- `A134735(A004274(n+1))` -/
def P445586586970379650.Spec : Prop :=
  ∀ n, P445586586970379650.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P6138706242967532819

`A134735(A004280(n+1))`
-/

namespace A075643.P6138706242967532819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A004280 (n + 1)).toNat

end

end A075643.P6138706242967532819

namespace A075643

/-- `A134735(A004280(n+1))` -/
def P6138706242967532819.Spec : Prop :=
  ∀ n, P6138706242967532819.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P4666728203359572464

`A000040(A028310(n))-char[1]`
-/

namespace A075643.P4666728203359572464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028310 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A075643.P4666728203359572464

namespace A075643

/-- `A000040(A028310(n))-char[1]` -/
def P4666728203359572464.Spec : Prop :=
  ∀ n, P4666728203359572464.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P6705740083199200923

`filter[A353730(n+1), A323152(#)]`
-/

namespace A075643.P6705740083199200923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A075643.P6705740083199200923

namespace A075643

/-- `filter[A353730(n+1), A323152(#)]` -/
def P6705740083199200923.Spec : Prop :=
  ∀ n, P6705740083199200923.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P7974602375059054819

`filter[A353730(n+1), A389449(#)]`
-/

namespace A075643.P7974602375059054819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389449 (f1 j).toNat = 1) n)

end

end A075643.P7974602375059054819

namespace A075643

/-- `filter[A353730(n+1), A389449(#)]` -/
def P7974602375059054819.Spec : Prop :=
  ∀ n, P7974602375059054819.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P5171669184174618456

`gcd(A033322(n+1), A182986(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A075643

/-- `gcd(A033322(n+1), A182986(n+1))` -/
def P5171669184174618456.Spec : Prop :=
  ∀ n, (P5171669184174618456.a n : ℤ) = A075643 (n + 1)

theorem P5171669184174618456.correct : P5171669184174618456.Spec := by
  intro n
  simp only [A075643, Nat.add_sub_cancel]

end A075643

/-! ## A075643.P4287848312224545543

`A077017(n+1)/A077017(n+2)*A008578(n+2)`
-/

namespace A075643.P4287848312224545543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077017 (n + 1) : ℚ) / (A077017 (n + 2) : ℚ) * (A008578 (n + 2) : ℚ)

end

end A075643.P4287848312224545543

namespace A075643

/-- `A077017(n+1)/A077017(n+2)*A008578(n+2)` -/
def P4287848312224545543.Spec : Prop :=
  ∀ n, P4287848312224545543.a n = (A075643 (n + 1) : ℚ)

end A075643

/-! ## A075643.P13016812768477525892

`A067792(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P13016812768477525892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A067792 (a (n - 1)).toNat

end

end A075643.P13016812768477525892

namespace A075643

/-- `A067792(a(n-1))` -/
def P13016812768477525892.Spec : Prop :=
  ∀ n, P13016812768477525892.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P647910301997558979

`A074495(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P647910301997558979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A074495 (a (n - 1)).toNat

end

end A075643.P647910301997558979

namespace A075643

/-- `A074495(a(n-1))` -/
def P647910301997558979.Spec : Prop :=
  ∀ n, P647910301997558979.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P5293023391155544730

`A003961(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P5293023391155544730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A003961 (a (n - 1)).toNat

end

end A075643.P5293023391155544730

namespace A075643

/-- `A003961(a(n-1))` -/
def P5293023391155544730.Spec : Prop :=
  ∀ n, P5293023391155544730.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P10800592700324124042

`A045965(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P10800592700324124042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A045965 (a (n - 1)).toNat

end

end A075643.P10800592700324124042

namespace A075643

/-- `A045965(a(n-1))` -/
def P10800592700324124042.Spec : Prop :=
  ∀ n, P10800592700324124042.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P3185758747001517791

`A064802(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P3185758747001517791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A064802 (a (n - 1)).toNat

end

end A075643.P3185758747001517791

namespace A075643

/-- `A064802(a(n-1))` -/
def P3185758747001517791.Spec : Prop :=
  ∀ n, P3185758747001517791.a n = A075643 (n + 1)

end A075643

/-! ## A075643.P14197191351309256433

`A066169(a(n-1))` with `a(0)=2, a(1)=1, a(2)=3`
-/

namespace A075643.P14197191351309256433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 3] fun n a =>
  A066169 (a (n - 1)).toNat

end

end A075643.P14197191351309256433

namespace A075643

/-- `A066169(a(n-1))` -/
def P14197191351309256433.Spec : Prop :=
  ∀ n, P14197191351309256433.a n = A075643 (n + 1)

end A075643

/-!
# A075644: Final terms of groups in A075643.

The programs for A075644, there is no canonical definition to state claims against.
-/

/-! ## A075644.P10484146131547590851

`A075647(∑[n+1])`
-/

namespace A075644.P10484146131547590851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075644.P10484146131547590851

/-! ## A075644.P17041896806946268014

`A000027(A075647(record[C(n, 2)-n]+1))`
-/

namespace A075644.P17041896806946268014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A075647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat).toNat

end

end A075644.P17041896806946268014

/-! ## A075644.P13152626971061135480

`A075647(A000217(n+1))+A000007(2*n+3)`
-/

namespace A075644.P13152626971061135480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (A000217 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A075644.P13152626971061135480

/-! ## A075644.P686554818811632496

`A075647(A000217(n+1))+A007814(2*n+5)`
-/

namespace A075644.P686554818811632496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (A000217 (n + 1)).toNat + A007814 (2 * n + 5)

end

end A075644.P686554818811632496

/-! ## A075644.P1335920733606776110

`A075647(A000217(n+1))%(2-A102083(n+2))`
-/

namespace A075644.P1335920733606776110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075647 (A000217 (n + 1)).toNat) (2 - A102083 (n + 2))

end

end A075644.P1335920733606776110

/-! ## A075644.P4890217310639597674

`A075647(A001971(2*n+3))%A075654(n+1)`
-/

namespace A075644.P4890217310639597674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075647 (A001971 (2 * n + 3)).toNat) (A075654 (n + 1))

end

end A075644.P4890217310639597674

/-! ## A075644.P3948901195438826067

`A075647(A000217(n+1))+C(2, A025331(n+1))`
-/

namespace A075644.P3948901195438826067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (A000217 (n + 1)).toNat + (Nat.choose 2 (A025331 (n + 1)).toNat : ℤ)

end

end A075644.P3948901195438826067

/-! ## A075644.P12897002122683360894

`A075647(A000217(n+1))+C(2, A005900(3*n+4))`
-/

namespace A075644.P12897002122683360894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (A000217 (n + 1)).toNat + (Nat.choose 2 (A005900 (3 * n + 4)).toNat : ℤ)

end

end A075644.P12897002122683360894

/-! ## A075644.P11778109392307404195

`A075647(A000217(n+1))*A242093(A089052(n))`
-/

namespace A075644.P11778109392307404195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075647 (A000217 (n + 1)).toNat * A242093 (A089052 n).toNat

end

end A075644.P11778109392307404195

/-! ## A075644.P7076004959153043313

`A091400(A004215(n+1))+A075647(A000217(n+1))`
-/

namespace A075644.P7076004959153043313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (A004215 (n + 1)).toNat + A075647 (A000217 (n + 1)).toNat

end

end A075644.P7076004959153043313

/-!
# A075645: Sums of groups in A075643.

The programs for A075645, there is no canonical definition to state claims against.
-/

/-! ## A075645.P15650494127741655594

`(n+2)*A075646(n+1)`
-/

namespace A075645.P15650494127741655594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A075646 (n + 1)

end

end A075645.P15650494127741655594

/-! ## A075645.P15586964575840532516

`(n+2)*A064289(A036248(n+1))`
-/

namespace A075645.P15586964575840532516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A064289 (A036248 (n + 1)).toNat

end

end A075645.P15586964575840532516

/-!
# A075646: (Sum of n-th group in A075643)/(n+1).

The programs for A075646, there is no canonical definition to state claims against.
-/

/-! ## A075646.P1412345417792185474

`A075645(n+1)/(n+2)`
-/

namespace A075646.P1412345417792185474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075645 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A075646.P1412345417792185474

/-!
# A075648: Left side of the triangle A075652.

The programs for A075648, there is no canonical definition to state claims against.
-/

/-! ## A075648.P6312069379170333642

`A075649(n+1)-(n²+n)`
-/

namespace A075648.P6312069379170333642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075649 (n + 1) - (n ^ 2 + n : ℤ)

end

end A075648.P6312069379170333642

/-! ## A075648.P8169726675375147256

`A075649(n+1)-A000217(n)-A000217(n)`
-/

namespace A075648.P8169726675375147256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075649 (n + 1) - A000217 n - A000217 n

end

end A075648.P8169726675375147256

/-! ## A075648.P16608991001410333094

`A075650(n+1)/(n+1)-∑[n]`
-/

namespace A075648.P16608991001410333094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075650 (n + 1) : ℚ) / (n + 1 : ℚ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A075648.P16608991001410333094

/-! ## A075648.P14316756919148639723

`A075651(n+1)-∑[n]`
-/

namespace A075648.P14316756919148639723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075651 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075648.P14316756919148639723

/-! ## A075648.P2631596460964473975

`A075651(n+1)-A000124(n)+1`
-/

namespace A075648.P2631596460964473975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075651 (n + 1) - A000124 n + 1

end

end A075648.P2631596460964473975

/-! ## A075648.P10294643407966054079

`A075652(∑[n]+1)`
-/

namespace A075648.P10294643407966054079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A075648.P10294643407966054079

/-! ## A075648.P9647248039810226896

`and(-1, A075652(A000124(n)))`
-/

namespace A075648.P9647248039810226896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A075652 (A000124 n).toNat)

end

end A075648.P9647248039810226896

/-! ## A075648.P1376232894805689229

`or(char[2], A075652(A000217(n)+1))`
-/

namespace A075648.P1376232894805689229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A075652 (A000217 n + 1).toNat)

end

end A075648.P1376232894805689229

/-! ## A075648.P11979248734478439893

`A075652(A000124(n))%A001513(n)`
-/

namespace A075648.P11979248734478439893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075652 (A000124 n).toNat) (A001513 n)

end

end A075648.P11979248734478439893

/-! ## A075648.P17965302948886569983

`gcd(A000038(n), A075652(A000124(n)))`
-/

namespace A075648.P17965302948886569983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A075652 (A000124 n).toNat)

end

end A075648.P17965302948886569983

/-! ## A075648.P16618681390130472941

`A007318(C(2, n))*A075652(A000124(n))`
-/

namespace A075648.P16618681390130472941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A075652 (A000124 n).toNat

end

end A075648.P16618681390130472941

/-! ## A075648.P16864443069864898387

`A075652(A000124(n))^A004525(floor(n^(3/11)))`
-/

namespace A075648.P16864443069864898387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075652 (A000124 n).toNat : ℚ) ^ (A004525 ⌊(n : ℝ) ^ ((3 : ℚ) / 11 : ℝ)⌋.toNat : ℤ)

end

end A075648.P16864443069864898387

/-! ## A075648.P11839903025473453675

`A003958(A061142(n+1))*A075652(A000124(n))`
-/

namespace A075648.P11839903025473453675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A061142 (n + 1)).toNat * A075652 (A000124 n).toNat

end

end A075648.P11839903025473453675

/-! ## A075648.P7114544845572116310

`A014963(A000217(n+10))*A075652(A000124(n))`
-/

namespace A075648.P7114544845572116310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 10)).toNat * A075652 (A000124 n).toNat

end

end A075648.P7114544845572116310

/-! ## A075648.P15095483218915815772

`A075652(A000217(n)+1)%A000040((n+1)²)`
-/

namespace A075648.P15095483218915815772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075652 (A000217 n + 1).toNat) (A000040 ((n + 1) ^ 2))

end

end A075648.P15095483218915815772

/-!
# A075649: Right side of the triangle A075652.

The programs for A075649, there is no canonical definition to state claims against.
-/

/-! ## A075649.P10491398934178008638

`A075648(n+1)+(n+1)*n`
-/

namespace A075649.P10491398934178008638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075648 (n + 1) + ((n + 1) * n : ℤ)

end

end A075649.P10491398934178008638

/-! ## A075649.P17130130048723462474

`∑[n]+A075648(n+1)+A000124(n)-1`
-/

namespace A075649.P17130130048723462474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A075648 (n + 1) + A000124 n - 1)

end

end A075649.P17130130048723462474

/-! ## A075649.P17679897162623182286

`A000217(n)+A075648(n+1)+A000217(n)`
-/

namespace A075649.P17679897162623182286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A075648 (n + 1) + A000217 n)

end

end A075649.P17679897162623182286

/-! ## A075649.P16912256727840199967

`∑[n]+A075650(n+1)/(n+1)`
-/

namespace A075649.P16912256727840199967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A075650 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075649.P16912256727840199967

/-! ## A075649.P4209613066731471609

`A075651(n+1)+∑[n]`
-/

namespace A075649.P4209613066731471609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075651 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075649.P4209613066731471609

/-! ## A075649.P17288893978231883237

`n²+A075652(A000124(n))+n`
-/

namespace A075649.P17288893978231883237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A075652 (A000124 n).toNat + (n : ℤ))

end

end A075649.P17288893978231883237

/-! ## A075649.P2201542606657195418

`A075652(∑[n+1])`
-/

namespace A075649.P2201542606657195418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A075649.P2201542606657195418

/-!
# A075650: Row sums of A075652.

The programs for A075650, there is no canonical definition to state claims against.
-/

/-! ## A075650.P166485487782465054

`(A075648(n+1)+A000217(n))*(n+1)`
-/

namespace A075650.P166485487782465054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075648 (n + 1) + A000217 n) * (n + 1 : ℤ)

end

end A075650.P166485487782465054

/-! ## A075650.P17375553137633046563

`A075651(n+1)*(n+1)`
-/

namespace A075650.P17375553137633046563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075651 (n + 1) * (n + 1 : ℤ)

end

end A075650.P17375553137633046563

/-! ## A075650.P788308905823948009

`(n+1)*(A075649(n+1)-∑[n])`
-/

namespace A075650.P788308905823948009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075649 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A075650.P788308905823948009

/-! ## A075650.P4934935736935398260

`(n+1)*(A161680(n+1)+A075648(n+1))`
-/

namespace A075650.P4934935736935398260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A161680 (n + 1) + A075648 (n + 1))

end

end A075650.P4934935736935398260

/-! ## A075650.P2283811169418382443

`(n+1)*(A075652(∑[n]+1)+∑[n])`
-/

namespace A075650.P2283811169418382443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075652 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A075650.P2283811169418382443

/-!
# A075651: Row average values of A075652.

The programs for A075651, there is no canonical definition to state claims against.
-/

/-! ## A075651.P9410023860445966779

`A075648(n+1)+A000217(n)`
-/

namespace A075651.P9410023860445966779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075648 (n + 1) + A000217 n

end

end A075651.P9410023860445966779

/-! ## A075651.P8217869380347754668

`(A075648(n+1)+A075649(n+1))/2`
-/

namespace A075651.P8217869380347754668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075648 (n + 1) + A075649 (n + 1) : ℚ) / 2

end

end A075651.P8217869380347754668

/-! ## A075651.P2565302801336109993

`A075649(n+1)-∑[n]`
-/

namespace A075651.P2565302801336109993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075649 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A075651.P2565302801336109993

/-! ## A075651.P5290149279302615849

`A075650(n+1)/(n+1)`
-/

namespace A075651.P5290149279302615849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075650 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A075651.P5290149279302615849

/-! ## A075651.P17953723694403562040

`A161680(n+1)+A075648(n+1)`
-/

namespace A075651.P17953723694403562040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + A075648 (n + 1)

end

end A075651.P17953723694403562040

/-! ## A075651.P652348310657248828

`A075648(n+1)+A000124(n)-1`
-/

namespace A075651.P652348310657248828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075648 (n + 1) + A000124 n - 1

end

end A075651.P652348310657248828

/-! ## A075651.P12156079661876789417

`A075652(∑[n]+1)+∑[n]`
-/

namespace A075651.P12156079661876789417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075652 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A075651.P12156079661876789417

/-!
# A075653: a(n) = n + sopf(n), where sopf is the sum of the distinct prime factors of n (A008472).

The programs for A075653, the canonical program `A075653.P2659253384492111030` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075653 has offset 1).

The definition of A075653 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A075653.P2659253384492111030

`n+1+A008472(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075653

/-- `n+1+A008472(n+1)` -/
def P2659253384492111030.Spec : Prop :=
  ∀ n, P2659253384492111030.a n = A075653 (n + 1)

theorem P2659253384492111030.correct : P2659253384492111030.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel]

end A075653

/-! ## A075653.P17519436803883549934

`∑{p}[n+1, #]+1+n`
-/

namespace A075653.P17519436803883549934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + 1 + n

end

end A075653.P17519436803883549934

namespace A075653

/-- `∑{p}[n+1, #]+1+n` -/
def P17519436803883549934.Spec : Prop :=
  ∀ n, (P17519436803883549934.a n : ℤ) = A075653 (n + 1)

theorem P17519436803883549934.correct : P17519436803883549934.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P17519436803883549934.f1, A075653.P17519436803883549934.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-! ## A075653.P9781720350222797024

`A254340(n+1)-1`
-/

namespace A075653.P9781720350222797024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254340 (n + 1) - 1

end

end A075653.P9781720350222797024

namespace A075653

/-- `A254340(n+1)-1` -/
def P9781720350222797024.Spec : Prop :=
  ∀ n, P9781720350222797024.a n = A075653 (n + 1)

theorem P9781720350222797024.correct : P9781720350222797024.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P9781720350222797024.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A254340, A254340.P17394909543363864002.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-! ## A075653.P15152683375344888762

`A074372(n+1)+n`
-/

namespace A075653.P15152683375344888762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + (n : ℤ)

end

end A075653.P15152683375344888762

namespace A075653

/-- `A074372(n+1)+n` -/
def P15152683375344888762.Spec : Prop :=
  ∀ n, P15152683375344888762.a n = A075653 (n + 1)

theorem P15152683375344888762.correct : P15152683375344888762.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P15152683375344888762.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A074372, A074372.P4137528993984796168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-! ## A075653.P8999297903835168527

`Δ[A024924(n)]+1+n`
-/

namespace A075653.P8999297903835168527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A075653.P8999297903835168527

namespace A075653

/-- `Δ[A024924(n)]+1+n` -/
def P8999297903835168527.Spec : Prop :=
  ∀ n, P8999297903835168527.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P14286167485960403628

`sqrt(A235323(n+1))+1+n`
-/

namespace A075653.P14286167485960403628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A075653.P14286167485960403628

namespace A075653

/-- `sqrt(A235323(n+1))+1+n` -/
def P14286167485960403628.Spec : Prop :=
  ∀ n, P14286167485960403628.a n = (A075653 (n + 1) : ℝ)

end A075653

/-! ## A075653.P7068996684787168756

`2*(n+1)-A076694(n+1)`
-/

namespace A075653.P7068996684787168756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A076694 (n + 1)

end

end A075653.P7068996684787168756

namespace A075653

/-- `2*(n+1)-A076694(n+1)` -/
def P7068996684787168756.Spec : Prop :=
  ∀ n, P7068996684787168756.a n = A075653 (n + 1)

theorem P7068996684787168756.correct : P7068996684787168756.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P7068996684787168756.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A076694, A076694.P8693598391704263352.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-! ## A075653.P16634207568443728782

`n+1+∑{d}[n+1, A061397(#)]`
-/

namespace A075653.P16634207568443728782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A075653.P16634207568443728782

namespace A075653

/-- `n+1+∑{d}[n+1, A061397(#)]` -/
def P16634207568443728782.Spec : Prop :=
  ∀ n, P16634207568443728782.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P3005047129053026639

`A001414(∏{p}[n+1, #])+n+1`
-/

namespace A075653.P3005047129053026639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 1 : ℤ)

end

end A075653.P3005047129053026639

namespace A075653

/-- `A001414(∏{p}[n+1, #])+n+1` -/
def P3005047129053026639.Spec : Prop :=
  ∀ n, P3005047129053026639.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P13053222311843130966

`A008475(∏{p}[n+1, #])+n+1`
-/

namespace A075653.P13053222311843130966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 1 : ℤ)

end

end A075653.P13053222311843130966

namespace A075653

/-- `A008475(∏{p}[n+1, #])+n+1` -/
def P13053222311843130966.Spec : Prop :=
  ∀ n, P13053222311843130966.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P15876214015445656730

`A023888(A007947(n+1))+n`
-/

namespace A075653.P15876214015445656730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A075653.P15876214015445656730

namespace A075653

/-- `A023888(A007947(n+1))+n` -/
def P15876214015445656730.Spec : Prop :=
  ∀ n, P15876214015445656730.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P1597915767581072532

`A100030(n+1)-A114285(n)`
-/

namespace A075653.P1597915767581072532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) - A114285 n

end

end A075653.P1597915767581072532

namespace A075653

/-- `A100030(n+1)-A114285(n)` -/
def P1597915767581072532.Spec : Prop :=
  ∀ n, P1597915767581072532.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P15942527837590512595

`Δ[A000096(n)-(n-A024924(n))]`
-/

namespace A075653.P15942527837590512595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - ((n : ℤ) - A024924 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075653.P15942527837590512595

namespace A075653

/-- `Δ[A000096(n)-(n-A024924(n))]` -/
def P15942527837590512595.Spec : Prop :=
  ∀ n, P15942527837590512595.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P9453573393994152752

`A069345(n+1)+A008474(n+1)`
-/

namespace A075653.P9453573393994152752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (n + 1) + A008474 (n + 1)

end

end A075653.P9453573393994152752

namespace A075653

/-- `A069345(n+1)+A008474(n+1)` -/
def P9453573393994152752.Spec : Prop :=
  ∀ n, P9453573393994152752.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P16083484898576046047

`A332775(n+1)+A001221(n+1)`
-/

namespace A075653.P16083484898576046047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332775 (n + 1) + A001221 (n + 1)

end

end A075653.P16083484898576046047

namespace A075653

/-- `A332775(n+1)+A001221(n+1)` -/
def P16083484898576046047.Spec : Prop :=
  ∀ n, P16083484898576046047.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P11040052974476494625

`A155085(n+1)-A023890(n+1)`
-/

namespace A075653.P11040052974476494625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A023890 (n + 1)

end

end A075653.P11040052974476494625

namespace A075653

/-- `A155085(n+1)-A023890(n+1)` -/
def P11040052974476494625.Spec : Prop :=
  ∀ n, P11040052974476494625.a n = A075653 (n + 1)

theorem P11040052974476494625.correct : P11040052974476494625.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P11040052974476494625.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023890, A023890.P4514850295399263827.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-! ## A075653.P3460416116144064919

`A075254(n+1)-A280292(n+1)`
-/

namespace A075653.P3460416116144064919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) - A280292 (n + 1)

end

end A075653.P3460416116144064919

namespace A075653

/-- `A075254(n+1)-A280292(n+1)` -/
def P3460416116144064919.Spec : Prop :=
  ∀ n, P3460416116144064919.a n = A075653 (n + 1)

theorem P3460416116144064919.correct : P3460416116144064919.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P3460416116144064919.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A075254, A075254.P6422447875050144596.a, A280292, A280292.P17147228295463227534.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-! ## A075653.P3730274308280145420

`A005069(n+1)+A010684(n)+n`
-/

namespace A075653.P3730274308280145420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (n + 1) + (A010684 n + (n : ℤ))

end

end A075653.P3730274308280145420

namespace A075653

/-- `A005069(n+1)+A010684(n)+n` -/
def P3730274308280145420.Spec : Prop :=
  ∀ n, P3730274308280145420.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P9761729827267684791

`A100030(n+1)+n-A033999(n)`
-/

namespace A075653.P9761729827267684791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) + ((n : ℤ) - A033999 n)

end

end A075653.P9761729827267684791

namespace A075653

/-- `A100030(n+1)+n-A033999(n)` -/
def P9761729827267684791.Spec : Prop :=
  ∀ n, P9761729827267684791.a n = A075653 (n + 1)

end A075653

/-! ## A075653.P10774717855426099499

`A155085(n+1)-(A023891(n+1)+1)`
-/

namespace A075653.P10774717855426099499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (A023891 (n + 1) + 1)

end

end A075653.P10774717855426099499

namespace A075653

/-- `A155085(n+1)-(A023891(n+1)+1)` -/
def P10774717855426099499.Spec : Prop :=
  ∀ n, P10774717855426099499.a n = A075653 (n + 1)

theorem P10774717855426099499.correct : P10774717855426099499.Spec := by
  intro n
  simp only [A075653, Nat.add_sub_cancel, A075653.P10774717855426099499.a, A075653.P2659253384492111030.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A023891, A023891.P8679455862173637145.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023890, A023890.P4514850295399263827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075653

/-!
# A075654: Numbers n such that n + sum of prime factors of n = (n+1) + sum of prime factors of (n+1).

The programs for A075654, there is no canonical definition to state claims against.
-/

/-! ## A075654.P1417251491867168473

`eq[A008472(A028310(n)), A074372(n+1)]`
-/

namespace A075654.P1417251491867168473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075654.P1417251491867168473

/-! ## A075654.P5792446741624945581

`eq[A008472(A257088(n)), A074372(n+1)]`
-/

namespace A075654.P5792446741624945581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075654.P5792446741624945581

/-! ## A075654.P3038137165762404171

`eq[A008472(A233583(n+1)), A074372(n+1)]`
-/

namespace A075654.P3038137165762404171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075654.P3038137165762404171

/-!
# A075655: Numbers n such that n + product of prime factors of n = (n+1) + product of prime factors of (n+1).

The programs for A075655, there is no canonical definition to state claims against.
-/

/-! ## A075655.P15322909498384024739

`record[A242985(n)%A147799(n+1)]`
-/

namespace A075655.P15322909498384024739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242985 n) (A147799 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075655.P15322909498384024739

/-!
# A075656: 

The programs for A075656, there is no canonical definition to state claims against.
-/

/-! ## A075656.P8646187054800717712

`∏{p}[n+1, #]+ceil(sqrt(∑[2*n]))`
-/

namespace A075656.P8646187054800717712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉

end

end A075656.P8646187054800717712

/-! ## A075656.P5612685408857383490

`∏{p}[n+1, #]%Δ[n²]+1+n`
-/

namespace A075656.P5612685408857383490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 1 + (n : ℤ)

end

end A075656.P5612685408857383490

/-! ## A075656.P1848023713527207089

`∏{p}[n+1, #]+1+n-floor(acot(n))`
-/

namespace A075656.P1848023713527207089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A075656.P1848023713527207089

/-! ## A075656.P9027190655675959807

`gcd(∏{p}[n+1, #]+1+n, floor(acot(n)))`
-/

namespace A075656.P9027190655675959807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n : ℕ) : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A075656.P9027190655675959807

/-! ## A075656.P11393841660643033396

`(∏{p}[n+1, #]+1+n)^ceil(abs(sin(n)))`
-/

namespace A075656.P11393841660643033396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n : ℕ) : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A075656.P11393841660643033396

/-! ## A075656.P8645242902579292592

`C(∏{p}[n+1, #]+1+n, floor(acot(n))+1)`
-/

namespace A075656.P8645242902579292592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n) (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 1).toNat

end

end A075656.P8645242902579292592

/-! ## A075656.P1129700697083949547

`(∏{p}[n+1, #]+1+n)%(2*or(2, a(n-1))+1)` with `a(0)=1`
-/

namespace A075656.P1129700697083949547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∏ p ∈ Nat.primeFactors (f1 n), p + 1 + n) % (2 * Nat.lor 2 (a (n - 1)) + 1)

end

end A075656.P1129700697083949547

/-! ## A075656.P8894684111327842015

`A007947(n+1)+ceil(abs(sin(n)))+n`
-/

namespace A075656.P8894684111327842015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + ⌈|Real.sin (n : ℝ)|⌉ + (n : ℤ)

end

end A075656.P8894684111327842015

/-! ## A075656.P13034473731069726554

`∏{p}[n+1, #]%A022425(n)+n+1`
-/

namespace A075656.P13034473731069726554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A022425 n) + (n + 1 : ℤ)

end

end A075656.P13034473731069726554

/-! ## A075656.P12437403324126337905

`A065475(A007947(n+1))+n`
-/

namespace A075656.P12437403324126337905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A007947 (n + 1)).toNat + (n : ℤ)

end

end A075656.P12437403324126337905

/-! ## A075656.P2951977312486104903

`A073353(n+1)-A000007(n)`
-/

namespace A075656.P2951977312486104903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073353 (n + 1) - A000007 n

end

end A075656.P2951977312486104903

/-! ## A075656.P9280804711267887784

`A103517(n)-A066503(n+1)`
-/

namespace A075656.P9280804711267887784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n - A066503 (n + 1)

end

end A075656.P9280804711267887784

/-! ## A075656.P13482166151072310701

`A073353(n+1)/A054977(n)`
-/

namespace A075656.P13482166151072310701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073353 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A075656.P13482166151072310701

/-! ## A075656.P9501116530776417287

`A087156(n+1)+A007947(n+1)`
-/

namespace A075656.P9501116530776417287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A007947 (n + 1)

end

end A075656.P9501116530776417287

/-! ## A075656.P10011571327160282028

`A075423(n+1)+A065475(n+1)`
-/

namespace A075656.P10011571327160282028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (n + 1) + A065475 (n + 1)

end

end A075656.P10011571327160282028

/-! ## A075656.P3412687187916241913

`A007947(n+1)+n-A057428(n)`
-/

namespace A075656.P3412687187916241913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + ((n : ℤ) - A057428 n)

end

end A075656.P3412687187916241913

/-! ## A075656.P7886571909117117283

`A073353(n+1)^A178334(A034968(n))`
-/

namespace A075656.P7886571909117117283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073353 (n + 1) : ℚ) ^ (A178334 (A034968 n).toNat : ℤ)

end

end A075656.P7886571909117117283

/-! ## A075656.P9443808156355932139

`A073353(n+1)^A178334(A056926(n))`
-/

namespace A075656.P9443808156355932139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073353 (n + 1) : ℚ) ^ (A178334 (A056926 n).toNat : ℤ)

end

end A075656.P9443808156355932139

/-! ## A075656.P3923102688748868757

`A005451(A073353(n+1))`
-/

namespace A075656.P3923102688748868757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A073353 (n + 1)).toNat

end

end A075656.P3923102688748868757

/-! ## A075656.P2740230925105494473

`A103889(A028310(n)+A007947(n+1))`
-/

namespace A075656.P2740230925105494473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A028310 n + A007947 (n + 1)).toNat

end

end A075656.P2740230925105494473

/-!
# A075658: Numbers k such that the sum of prime divisors of k (A008472) is composite.

The programs for A075658, the canonical program `A075658.P11409363872516740752` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075658 has offset 1).

The definition of A075658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075658.P14432998164620884694

`comp[A114522(n+1)-2]+2`
-/

namespace A075658.P14432998164620884694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A075658.P14432998164620884694

namespace A075658

/-- `comp[A114522(n+1)-2]+2` -/
def P14432998164620884694.Spec : Prop :=
  ∀ n, (P14432998164620884694.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P11409363872516740752

`lt[2, ∏{e}[∑{p}[n, #], #+1]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075658

/-- `lt[2, ∏{e}[∑{p}[n, #], #+1]]` -/
def P11409363872516740752.Spec : Prop :=
  ∀ n, (P11409363872516740752.a n : ℤ) = A075658 (n + 1)

theorem P11409363872516740752.correct : P11409363872516740752.Spec := by
  intro n
  simp only [A075658, Nat.add_sub_cancel]

end A075658

/-! ## A075658.P11283527300587453921

`lt[2, A321944(n+1)]+1`
-/

namespace A075658.P11283527300587453921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A075658.P11283527300587453921

namespace A075658

/-- `lt[2, A321944(n+1)]+1` -/
def P11283527300587453921.Spec : Prop :=
  ∀ n, (P11283527300587453921.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P13229524841955817916

`lt[2, A321944(A028310(n))]`
-/

namespace A075658.P13229524841955817916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075658.P13229524841955817916

namespace A075658

/-- `lt[2, A321944(A028310(n))]` -/
def P13229524841955817916.Spec : Prop :=
  ∀ n, (P13229524841955817916.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P10122633812929356132

`lt[2, A321944(A000007(n)+n)]`
-/

namespace A075658.P10122633812929356132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075658.P10122633812929356132

namespace A075658

/-- `lt[2, A321944(A000007(n)+n)]` -/
def P10122633812929356132.Spec : Prop :=
  ∀ n, (P10122633812929356132.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P9088024973241010910

`lt[2, A321944(or(n, A000007(n)))]`
-/

namespace A075658.P9088024973241010910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075658.P9088024973241010910

namespace A075658

/-- `lt[2, A321944(or(n, A000007(n)))]` -/
def P9088024973241010910.Spec : Prop :=
  ∀ n, (P9088024973241010910.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P7150891148610236930

`eq[char[A114522(n+1)], A130706(n)]`
-/

namespace A075658.P7150891148610236930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A075658.P7150891148610236930

namespace A075658

/-- `eq[char[A114522(n+1)], A130706(n)]` -/
def P7150891148610236930.Spec : Prop :=
  ∀ n, (P7150891148610236930.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P14982980786408405792

`eq[char[A114522(n+1)], A154955(n+1)]`
-/

namespace A075658.P14982980786408405792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114522 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A075658.P14982980786408405792

namespace A075658

/-- `eq[char[A114522(n+1)], A154955(n+1)]` -/
def P14982980786408405792.Spec : Prop :=
  ∀ n, (P14982980786408405792.a n : ℤ) = A075658 (n + 1)

end A075658

/-! ## A075658.P15140479390184886070

`eq[char[A047820(n+1)], A339579(n+1)]`
-/

namespace A075658.P15140479390184886070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047820 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A075658.P15140479390184886070

namespace A075658

/-- `eq[char[A047820(n+1)], A339579(n+1)]` -/
def P15140479390184886070.Spec : Prop :=
  ∀ n, (P15140479390184886070.a n : ℤ) = A075658 (n + 1)

end A075658

/-!
# A075660: Let f(n) = abs(lpd(n)-gpf(n)), where lpd(n) is the largest proper divisor of n and gpf(n) is the greatest prime factor of n. Sequence gives number of iterations for f(n) to reach zero.

The programs for A075660, there is no canonical definition to state claims against.
-/

/-! ## A075660.P12291415595616228326

`A076423(n+1)+A000122(A360850(2*n+5))`
-/

namespace A075660.P12291415595616228326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076423 (n + 1) + A000122 (A360850 (2 * n + 5)).toNat

end

end A075660.P12291415595616228326

/-! ## A075660.P15144272157823181078

`A318504(A280689(3*n+4))+A076423(n+1)`
-/

namespace A075660.P15144272157823181078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318504 (A280689 (3 * n + 4)).toNat + A076423 (n + 1)

end

end A075660.P15144272157823181078

/-! ## A075660.P14715396746110525625

`A086016(A204978(n+1))+A076423(n+1)`
-/

namespace A075660.P14715396746110525625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A204978 (n + 1)).toNat + A076423 (n + 1)

end

end A075660.P14715396746110525625

/-! ## A075660.P16992670955492764095

`A076423(n+1)+A024362(A268073(n+1))`
-/

namespace A075660.P16992670955492764095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076423 (n + 1) + A024362 (A268073 (n + 1)).toNat

end

end A075660.P16992670955492764095

/-! ## A075660.P8766191101957392896

`A099563(A162672(n)+A089830(n))`
-/

namespace A075660.P8766191101957392896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 (A162672 n + A089830 n).toNat

end

end A075660.P8766191101957392896

/-!
# A075661: Let f(n) = lcd(n)-lpf(n), where lcd(n) is the largest common difference between consecutive divisors of n (ordered by size) and lpf(n) is the largest prime factor of n. Sequence gives number of iterations for f(n) to reach 0 or -1.

The programs for A075661, there is no canonical definition to state claims against.
-/

/-! ## A075661.P9478513397867052445

`A001222(round(cosh(A083716(n+1))))`
-/

namespace A075661.P9478513397867052445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.cosh (A083716 (n + 1) : ℝ))).toNat

end

end A075661.P9478513397867052445

/-! ## A075661.P2718947705607744420

`A000194(lcm(A329382(n+1), A333381(3*n+2)))`
-/

namespace A075661.P2718947705607744420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.lcm (A329382 (n + 1)) (A333381 (3 * n + 2)))

end

end A075661.P2718947705607744420

/-! ## A075661.P1247459445040726524

`A001221(A078899(n+1)^(A302789(n+1)+2)+1)`
-/

namespace A075661.P1247459445040726524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A078899 (n + 1) : ℚ) ^ (A302789 (n + 1) + 2 : ℤ) + 1)).toNat

end

end A075661.P1247459445040726524

/-! ## A075661.P8109782819528839155

`A003056(gcd(A003056(n), A383706(3*(n+1))))`
-/

namespace A075661.P8109782819528839155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.gcd (A003056 n) (A383706 (3 * (n + 1))))

end

end A075661.P8109782819528839155

/-! ## A075661.P9855981329515461371

`A001222(A329620(A064989(A034386(A329620(n+1))+1)+1)+1)`
-/

namespace A075661.P9855981329515461371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329620 (A064989 (A034386 (A329620 (n + 1)).toNat + 1).toNat + 1).toNat + 1).toNat

end

end A075661.P9855981329515461371

/-!
# A075662: Where records occur in A063574.

The programs for A075662, there is no canonical definition to state claims against.
-/

/-! ## A075662.P14211244876767156518

`∑[A236689(A280532(n+1))]`
-/

namespace A075662.P14211244876767156518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236689 (A280532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075662.P14211244876767156518

/-! ## A075662.P3149727125244363819

`A010554(p?[∑[A157158(n+1)]])`
-/

namespace A075662.P3149727125244363819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157158 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A075662.P3149727125244363819

/-!
# A075663: Record high values in A063574.

The programs for A075663, there is no canonical definition to state claims against.
-/

/-! ## A075663.P16914680862095196131

`lt[A256696(A371981(3*n+5)), A077099(n+1)]`
-/

namespace A075663.P16914680862095196131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256696 (A371981 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075663.P16914680862095196131

/-! ## A075663.P16221290891229653366

`lt[A258831(A300930(n+1)), A280560(3*n+4)]`
-/

namespace A075663.P16221290891229653366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258831 (A300930 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A075663.P16221290891229653366

/-!
# A075664: Sum of next n cubes.

The programs for A075664, the canonical program `A075664.P444235001673420277` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075664 has offset 0).

The definition of A075664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075664.P444235001673420277

`n^3*(n²+1)*(n²+3)/8`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075664

/-- `n^3*(n²+1)*(n²+3)/8` -/
def P444235001673420277.Spec : Prop :=
  ∀ n, P444235001673420277.a n = (A075664 n : ℚ)

end A075664

/-! ## A075664.P18246751319141588343

`Δ[C(C(n, 2)+1, 2)²]`
-/

namespace A075664.P18246751319141588343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 1) 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075664.P18246751319141588343

namespace A075664

/-- `Δ[C(C(n, 2)+1, 2)²]` -/
def P18246751319141588343.Spec : Prop :=
  ∀ n, P18246751319141588343.a n = A075664 n

end A075664

/-! ## A075664.P974466477538496937

`∑[A380502(n)]-1`
-/

namespace A075664.P974466477538496937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A075664.P974466477538496937

namespace A075664

/-- `∑[A380502(n)]-1` -/
def P974466477538496937.Spec : Prop :=
  ∀ n, P974466477538496937.a n = A075664 n

end A075664

/-! ## A075664.P13440545741953068896

`Δ[C(A152947(n+1), 2)²]`
-/

namespace A075664.P13440545741953068896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152947 (n + 1)).toNat 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A075664.P13440545741953068896

namespace A075664

/-- `Δ[C(A152947(n+1), 2)²]` -/
def P13440545741953068896.Spec : Prop :=
  ∀ n, P13440545741953068896.a n = A075664 n

end A075664

/-! ## A075664.P16467815068053542011

`Δ[(A001296(n)-A005900(n))²]`
-/

namespace A075664.P16467815068053542011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001296 n - A005900 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075664.P16467815068053542011

namespace A075664

/-- `Δ[(A001296(n)-A005900(n))²]` -/
def P16467815068053542011.Spec : Prop :=
  ∀ n, P16467815068053542011.a n = A075664 n

end A075664

/-! ## A075664.P2704188490142800188

`Δ[A000217(A161680(n))²]`
-/

namespace A075664.P2704188490142800188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A161680 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075664.P2704188490142800188

namespace A075664

/-- `Δ[A000217(A161680(n))²]` -/
def P2704188490142800188.Spec : Prop :=
  ∀ n, P2704188490142800188.a n = A075664 n

end A075664

/-! ## A075664.P508617918305988855

`Δ[A000537(C(n, 2))]`
-/

namespace A075664.P508617918305988855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (Nat.choose n 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075664.P508617918305988855

namespace A075664

/-- `Δ[A000537(C(n, 2))]` -/
def P508617918305988855.Spec : Prop :=
  ∀ n, P508617918305988855.a n = A075664 n

end A075664

/-! ## A075664.P13691413826798544900

`Δ[A008795(A002061(n))²]`
-/

namespace A075664.P13691413826798544900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 (A002061 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075664.P13691413826798544900

namespace A075664

/-- `Δ[A008795(A002061(n))²]` -/
def P13691413826798544900.Spec : Prop :=
  ∀ n, P13691413826798544900.a n = A075664 n

end A075664

/-!
# A075665: Sum of next n 4th powers.

The programs for A075665, the canonical program `A075665.P17728322335461263225` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075665 has offset 1).

The definition of A075665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075665.P17728322335461263225

`(15*(n+1)^9+90*(n+1)^7+123*(n+1)^5+20*(n+1)^3-8*(n+1))/240`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075665

/-- `(15*(n+1)^9+90*(n+1)^7+123*(n+1)^5+20*(n+1)^3-8*(n+1))/240` -/
def P17728322335461263225.Spec : Prop :=
  ∀ n, P17728322335461263225.a n = (A075665 (n + 1) : ℚ)

end A075665

/-! ## A075665.P1061193580195464882

`Δ[A000538(∑[n])]`
-/

namespace A075665.P1061193580195464882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075665.P1061193580195464882

namespace A075665

/-- `Δ[A000538(∑[n])]` -/
def P1061193580195464882.Spec : Prop :=
  ∀ n, P1061193580195464882.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P7968121296326112056

`Δ[A267691(∑[n]+1)]`
-/

namespace A075665.P7968121296326112056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267691 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075665.P7968121296326112056

namespace A075665

/-- `Δ[A267691(∑[n]+1)]` -/
def P7968121296326112056.Spec : Prop :=
  ∀ n, P7968121296326112056.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P500650156089331567

`abs(Δ[A000538(A000217(n))])`
-/

namespace A075665.P500650156089331567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075665.P500650156089331567

namespace A075665

/-- `abs(Δ[A000538(A000217(n))])` -/
def P500650156089331567.Spec : Prop :=
  ∀ n, P500650156089331567.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P14922661087917546701

`Δ[record[A000538(A049780(n))]]`
-/

namespace A075665.P14922661087917546701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A049780 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075665.P14922661087917546701

namespace A075665

/-- `Δ[record[A000538(A049780(n))]]` -/
def P14922661087917546701.Spec : Prop :=
  ∀ n, P14922661087917546701.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P15515734883972894955

`Δ[A000538(C(n+1, 2))]*A177704(2*n)`
-/

namespace A075665.P15515734883972894955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A177704 (2 * n)

end

end A075665.P15515734883972894955

namespace A075665

/-- `Δ[A000538(C(n+1, 2))]*A177704(2*n)` -/
def P15515734883972894955.Spec : Prop :=
  ∀ n, P15515734883972894955.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P11186994384736654344

`Δ[A000538(A000217(n))*A057427(n)]`
-/

namespace A075665.P11186994384736654344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A000217 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075665.P11186994384736654344

namespace A075665

/-- `Δ[A000538(A000217(n))*A057427(n)]` -/
def P11186994384736654344.Spec : Prop :=
  ∀ n, P11186994384736654344.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P18013958104401450552

`A217221(2*n)+Δ[A000538(A000217(n))]`
-/

namespace A075665.P18013958104401450552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217221 (2 * n) + (f1 (n + 1) - f1 n)

end

end A075665.P18013958104401450552

namespace A075665

/-- `A217221(2*n)+Δ[A000538(A000217(n))]` -/
def P18013958104401450552.Spec : Prop :=
  ∀ n, P18013958104401450552.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P15883585997505757416

`Δ[A000538(A000217(n))]-A177704(2*n)+1`
-/

namespace A075665.P15883585997505757416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A177704 (2 * n) + 1

end

end A075665.P15883585997505757416

namespace A075665

/-- `Δ[A000538(A000217(n))]-A177704(2*n)+1` -/
def P15883585997505757416.Spec : Prop :=
  ∀ n, P15883585997505757416.a n = A075665 (n + 1)

end A075665

/-! ## A075665.P1632662299239077684

`Δ[A000538(A000217(n))]*A247004(2*n+1)`
-/

namespace A075665.P1632662299239077684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A247004 (2 * n + 1)

end

end A075665.P1632662299239077684

namespace A075665

/-- `Δ[A000538(A000217(n))]*A247004(2*n+1)` -/
def P1632662299239077684.Spec : Prop :=
  ∀ n, P1632662299239077684.a n = A075665 (n + 1)

end A075665

/-!
# A075666: Sum of next n 5th powers.

The programs for A075666, the canonical program `A075666.P10278036428958127094` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075666 has offset 1).

The definition of A075666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075666.P10278036428958127094

`(3*(n+1)^11+25*(n+1)^9+53*(n+1)^7+23*(n+1)^5-8*(n+1)^3)/96`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075666

/-- `(3*(n+1)^11+25*(n+1)^9+53*(n+1)^7+23*(n+1)^5-8*(n+1)^3)/96` -/
def P10278036428958127094.Spec : Prop :=
  ∀ n, P10278036428958127094.a n = (A075666 (n + 1) : ℚ)

end A075666

/-! ## A075666.P7923848154544666744

`Δ[A000539(∑[n])]`
-/

namespace A075666.P7923848154544666744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075666.P7923848154544666744

namespace A075666

/-- `Δ[A000539(∑[n])]` -/
def P7923848154544666744.Spec : Prop :=
  ∀ n, P7923848154544666744.a n = A075666 (n + 1)

end A075666

/-! ## A075666.P14649494332409845187

`Δ[A263689(∑[n]+1)]`
-/

namespace A075666.P14649494332409845187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263689 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075666.P14649494332409845187

namespace A075666

/-- `Δ[A263689(∑[n]+1)]` -/
def P14649494332409845187.Spec : Prop :=
  ∀ n, P14649494332409845187.a n = A075666 (n + 1)

end A075666

/-! ## A075666.P15421833494420150680

`abs(Δ[A000539(A000217(n))])`
-/

namespace A075666.P15421833494420150680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075666.P15421833494420150680

namespace A075666

/-- `abs(Δ[A000539(A000217(n))])` -/
def P15421833494420150680.Spec : Prop :=
  ∀ n, P15421833494420150680.a n = A075666 (n + 1)

end A075666

/-! ## A075666.P4281252044146051600

`Δ[record[A000539(A091018(n))]]`
-/

namespace A075666.P4281252044146051600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A091018 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075666.P4281252044146051600

namespace A075666

/-- `Δ[record[A000539(A091018(n))]]` -/
def P4281252044146051600.Spec : Prop :=
  ∀ n, P4281252044146051600.a n = A075666 (n + 1)

end A075666

/-! ## A075666.P18314701021594604855

`A033999(n)²*Δ[A000539(A000217(n))]`
-/

namespace A075666.P18314701021594604855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A075666.P18314701021594604855

namespace A075666

/-- `A033999(n)²*Δ[A000539(A000217(n))]` -/
def P18314701021594604855.Spec : Prop :=
  ∀ n, P18314701021594604855.a n = A075666 (n + 1)

end A075666

/-! ## A075666.P5772363740530455551

`A000035(2*n)+Δ[A000539(A000217(n))]`
-/

namespace A075666.P5772363740530455551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + (f1 (n + 1) - f1 n)

end

end A075666.P5772363740530455551

namespace A075666

/-- `A000035(2*n)+Δ[A000539(A000217(n))]` -/
def P5772363740530455551.Spec : Prop :=
  ∀ n, P5772363740530455551.a n = A075666 (n + 1)

end A075666

/-! ## A075666.P13796225423841690147

`Δ[A000539(A000217(n))]*A033999(2*n)`
-/

namespace A075666.P13796225423841690147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (2 * n)

end

end A075666.P13796225423841690147

namespace A075666

/-- `Δ[A000539(A000217(n))]*A033999(2*n)` -/
def P13796225423841690147.Spec : Prop :=
  ∀ n, P13796225423841690147.a n = A075666 (n + 1)

end A075666

/-!
# A075667: Sum of next n 6th powers.

The programs for A075667, the canonical program `A075667.P5473521888596357976` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075667 has offset 1).

The definition of A075667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075667.P5473521888596357976

`Δ[A000540(∑[n])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075667

/-- `Δ[A000540(∑[n])]` -/
def P5473521888596357976.Spec : Prop :=
  ∀ n, P5473521888596357976.a n = A075667 (n + 1)

theorem P5473521888596357976.correct : P5473521888596357976.Spec := by
  intro n
  simp only [A075667, Nat.add_sub_cancel]

end A075667

/-! ## A075667.P5717402183973192896

`abs(Δ[A000540(A000217(n))])`
-/

namespace A075667.P5717402183973192896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075667.P5717402183973192896

namespace A075667

/-- `abs(Δ[A000540(A000217(n))])` -/
def P5717402183973192896.Spec : Prop :=
  ∀ n, P5717402183973192896.a n = A075667 (n + 1)

end A075667

/-! ## A075667.P17216396729914240278

`Δ[record[A000540(A091018(n))]]`
-/

namespace A075667.P17216396729914240278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A091018 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075667.P17216396729914240278

namespace A075667

/-- `Δ[record[A000540(A091018(n))]]` -/
def P17216396729914240278.Spec : Prop :=
  ∀ n, P17216396729914240278.a n = A075667 (n + 1)

end A075667

/-! ## A075667.P1729030231258868719

`Δ[A000540(A000217(n))]^A000038(n)!`
-/

namespace A075667.P1729030231258868719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ Nat.factorial (A000038 n).toNat

end

end A075667.P1729030231258868719

namespace A075667

/-- `Δ[A000540(A000217(n))]^A000038(n)!` -/
def P1729030231258868719.Spec : Prop :=
  ∀ n, P1729030231258868719.a n = A075667 (n + 1)

end A075667

/-! ## A075667.P14180124168410772674

`A000007(n+1)+Δ[A000540(A000217(n))]`
-/

namespace A075667.P14180124168410772674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A075667.P14180124168410772674

namespace A075667

/-- `A000007(n+1)+Δ[A000540(A000217(n))]` -/
def P14180124168410772674.Spec : Prop :=
  ∀ n, P14180124168410772674.a n = A075667 (n + 1)

end A075667

/-! ## A075667.P8482872486226221203

`record[A000540(A093995(n+1)-n)-A000540(n)]`
-/

namespace A075667.P8482872486226221203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (A093995 (n + 1) - (n : ℤ)).toNat - A000540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075667.P8482872486226221203

namespace A075667

/-- `record[A000540(A093995(n+1)-n)-A000540(n)]` -/
def P8482872486226221203.Spec : Prop :=
  ∀ n, P8482872486226221203.a n = A075667 (n + 1)

end A075667

/-!
# A075668: Sum of next n 7th powers.

The programs for A075668, the canonical program `A075668.P16031332990849962930` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075668 has offset 1).

The definition of A075668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075668.P16031332990849962930

`Δ[A000541(∑[n])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075668

/-- `Δ[A000541(∑[n])]` -/
def P16031332990849962930.Spec : Prop :=
  ∀ n, P16031332990849962930.a n = A075668 (n + 1)

theorem P16031332990849962930.correct : P16031332990849962930.Spec := by
  intro n
  simp only [A075668, Nat.add_sub_cancel]

end A075668

/-! ## A075668.P10887814331299396472

`abs(Δ[A000541(A000217(n))])`
-/

namespace A075668.P10887814331299396472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075668.P10887814331299396472

namespace A075668

/-- `abs(Δ[A000541(A000217(n))])` -/
def P10887814331299396472.Spec : Prop :=
  ∀ n, P10887814331299396472.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P4940058455272814527

`A109613(n)%2*Δ[A000541(A000217(n))]`
-/

namespace A075668.P4940058455272814527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109613 n) 2 * (f1 (n + 1) - f1 n)

end

end A075668.P4940058455272814527

namespace A075668

/-- `A109613(n)%2*Δ[A000541(A000217(n))]` -/
def P4940058455272814527.Spec : Prop :=
  ∀ n, P4940058455272814527.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P9717736882742065624

`A126717(n)%2*Δ[A000541(A000217(n))]`
-/

namespace A075668.P9717736882742065624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126717 n) 2 * (f1 (n + 1) - f1 n)

end

end A075668.P9717736882742065624

namespace A075668

/-- `A126717(n)%2*Δ[A000541(A000217(n))]` -/
def P9717736882742065624.Spec : Prop :=
  ∀ n, P9717736882742065624.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P6044094813611232924

`A010054(6*n+5)+Δ[A000541(A000217(n))]`
-/

namespace A075668.P6044094813611232924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (6 * n + 5) + (f1 (n + 1) - f1 n)

end

end A075668.P6044094813611232924

namespace A075668

/-- `A010054(6*n+5)+Δ[A000541(A000217(n))]` -/
def P6044094813611232924.Spec : Prop :=
  ∀ n, P6044094813611232924.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P9502213898664681223

`A320927(6*n+5)+Δ[A000541(A000217(n))]`
-/

namespace A075668.P9502213898664681223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320927 (6 * n + 5) + (f1 (n + 1) - f1 n)

end

end A075668.P9502213898664681223

namespace A075668

/-- `A320927(6*n+5)+Δ[A000541(A000217(n))]` -/
def P9502213898664681223.Spec : Prop :=
  ∀ n, P9502213898664681223.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P15824784428092090216

`Δ[A000541(A000217(n))]*A135560(6*n+5)`
-/

namespace A075668.P15824784428092090216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135560 (6 * n + 5)

end

end A075668.P15824784428092090216

namespace A075668

/-- `Δ[A000541(A000217(n))]*A135560(6*n+5)` -/
def P15824784428092090216.Spec : Prop :=
  ∀ n, P15824784428092090216.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P8757297602804245363

`A276121(n+1)%2*Δ[A000541(A000217(n))]`
-/

namespace A075668.P8757297602804245363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276121 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A075668.P8757297602804245363

namespace A075668

/-- `A276121(n+1)%2*Δ[A000541(A000217(n))]` -/
def P8757297602804245363.Spec : Prop :=
  ∀ n, P8757297602804245363.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P449703460034902856

`A284631(n+1)%2*Δ[A000541(A000217(n))]`
-/

namespace A075668.P449703460034902856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284631 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A075668.P449703460034902856

namespace A075668

/-- `A284631(n+1)%2*Δ[A000541(A000217(n))]` -/
def P449703460034902856.Spec : Prop :=
  ∀ n, P449703460034902856.a n = A075668 (n + 1)

end A075668

/-! ## A075668.P13819412103456040106

`A329736(n+1)%2*Δ[A000541(A000217(n))]`
-/

namespace A075668.P13819412103456040106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329736 (n + 1)) 2 * (f1 (n + 1) - f1 n)

end

end A075668.P13819412103456040106

namespace A075668

/-- `A329736(n+1)%2*Δ[A000541(A000217(n))]` -/
def P13819412103456040106.Spec : Prop :=
  ∀ n, P13819412103456040106.a n = A075668 (n + 1)

end A075668

/-!
# A075669: Sum of next n 8th powers.

The programs for A075669, the canonical program `A075669.P8418588109550603356` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075669 has offset 1).

The definition of A075669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075669.P8418588109550603356

`Δ[A000542(∑[n])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075669

/-- `Δ[A000542(∑[n])]` -/
def P8418588109550603356.Spec : Prop :=
  ∀ n, P8418588109550603356.a n = A075669 (n + 1)

theorem P8418588109550603356.correct : P8418588109550603356.Spec := by
  intro n
  simp only [A075669, Nat.add_sub_cancel]

end A075669

/-! ## A075669.P12646628165049212004

`abs(Δ[A000542(A000217(n))])`
-/

namespace A075669.P12646628165049212004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075669.P12646628165049212004

namespace A075669

/-- `abs(Δ[A000542(A000217(n))])` -/
def P12646628165049212004.Spec : Prop :=
  ∀ n, P12646628165049212004.a n = A075669 (n + 1)

end A075669

/-! ## A075669.P7112104114548253598

`record[Δ[A000542(A057944(n))]]`
-/

namespace A075669.P7112104114548253598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (A057944 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075669.P7112104114548253598

namespace A075669

/-- `record[Δ[A000542(A057944(n))]]` -/
def P7112104114548253598.Spec : Prop :=
  ∀ n, P7112104114548253598.a n = A075669 (n + 1)

end A075669

/-! ## A075669.P49383819346716769

`A000542(A000217(n+1))-A000542(A000217(n))`
-/

namespace A075669.P49383819346716769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (A000217 (n + 1)).toNat - A000542 (A000217 n).toNat

end

end A075669.P49383819346716769

namespace A075669

/-- `A000542(A000217(n+1))-A000542(A000217(n))` -/
def P49383819346716769.Spec : Prop :=
  ∀ n, P49383819346716769.a n = A075669 (n + 1)

end A075669

/-! ## A075669.P7701884671685546976

`Δ[record[A000542(A351397(n+1))]]`
-/

namespace A075669.P7701884671685546976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (A351397 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075669.P7701884671685546976

namespace A075669

/-- `Δ[record[A000542(A351397(n+1))]]` -/
def P7701884671685546976.Spec : Prop :=
  ∀ n, P7701884671685546976.a n = A075669 (n + 1)

end A075669

/-!
# A075670: Sum of next n 9th powers.

The programs for A075670, the canonical program `A075670.P10395475035890779460` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075670 has offset 1).

The definition of A075670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075670.P10395475035890779460

`Δ[A007487(∑[n])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075670

/-- `Δ[A007487(∑[n])]` -/
def P10395475035890779460.Spec : Prop :=
  ∀ n, P10395475035890779460.a n = A075670 (n + 1)

theorem P10395475035890779460.correct : P10395475035890779460.Spec := by
  intro n
  simp only [A075670, Nat.add_sub_cancel]

end A075670

/-! ## A075670.P17039554292658944136

`abs(Δ[A007487(A000217(n))])`
-/

namespace A075670.P17039554292658944136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075670.P17039554292658944136

namespace A075670

/-- `abs(Δ[A007487(A000217(n))])` -/
def P17039554292658944136.Spec : Prop :=
  ∀ n, P17039554292658944136.a n = A075670 (n + 1)

end A075670

/-! ## A075670.P14549048905759704876

`Δ[A007487(A000217(n))*A057427(n)]`
-/

namespace A075670.P14549048905759704876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (A000217 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075670.P14549048905759704876

namespace A075670

/-- `Δ[A007487(A000217(n))*A057427(n)]` -/
def P14549048905759704876.Spec : Prop :=
  ∀ n, P14549048905759704876.a n = A075670 (n + 1)

end A075670

/-! ## A075670.P4872558946639998169

`A033999(n)²*Δ[A007487(A000217(n))]`
-/

namespace A075670.P4872558946639998169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A075670.P4872558946639998169

namespace A075670

/-- `A033999(n)²*Δ[A007487(A000217(n))]` -/
def P4872558946639998169.Spec : Prop :=
  ∀ n, P4872558946639998169.a n = A075670 (n + 1)

end A075670

/-! ## A075670.P15404206055234617437

`A007487(A000217(n+1))-A007487(A000217(n))`
-/

namespace A075670.P15404206055234617437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (A000217 (n + 1)).toNat - A007487 (A000217 n).toNat

end

end A075670.P15404206055234617437

namespace A075670

/-- `A007487(A000217(n+1))-A007487(A000217(n))` -/
def P15404206055234617437.Spec : Prop :=
  ∀ n, P15404206055234617437.a n = A075670 (n + 1)

end A075670

/-!
# A075671: Sum of next n 10th powers.

The programs for A075671, the canonical program `A075671.P12647582429914079415` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075671 has offset 1).

The definition of A075671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075671.P12647582429914079415

`Δ[A023002(∑[n])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075671

/-- `Δ[A023002(∑[n])]` -/
def P12647582429914079415.Spec : Prop :=
  ∀ n, P12647582429914079415.a n = A075671 (n + 1)

theorem P12647582429914079415.correct : P12647582429914079415.Spec := by
  intro n
  simp only [A075671, Nat.add_sub_cancel]

end A075671

/-! ## A075671.P9605036890249179880

`abs(Δ[A023002(A000217(n))])`
-/

namespace A075671.P9605036890249179880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075671.P9605036890249179880

namespace A075671

/-- `abs(Δ[A023002(A000217(n))])` -/
def P9605036890249179880.Spec : Prop :=
  ∀ n, P9605036890249179880.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P16395146694255971512

`Δ[A023002(A000217(n))*A057427(n)]`
-/

namespace A075671.P16395146694255971512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075671.P16395146694255971512

namespace A075671

/-- `Δ[A023002(A000217(n))*A057427(n)]` -/
def P16395146694255971512.Spec : Prop :=
  ∀ n, P16395146694255971512.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P12028582536589949409

`A000007(n+1)+Δ[A023002(A000217(n))]`
-/

namespace A075671.P12028582536589949409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f1 (n + 1) - f1 n)

end

end A075671.P12028582536589949409

namespace A075671

/-- `A000007(n+1)+Δ[A023002(A000217(n))]` -/
def P12028582536589949409.Spec : Prop :=
  ∀ n, P12028582536589949409.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P9841237130252230409

`Δ[A033999(2*n+1)+A023002(A000217(n))]`
-/

namespace A075671.P9841237130252230409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A023002 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075671.P9841237130252230409

namespace A075671

/-- `Δ[A033999(2*n+1)+A023002(A000217(n))]` -/
def P9841237130252230409.Spec : Prop :=
  ∀ n, P9841237130252230409.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P8584961437051834629

`A014963(6*(n+1))*Δ[A023002(A000217(n))]`
-/

namespace A075671.P8584961437051834629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * (f1 (n + 1) - f1 n)

end

end A075671.P8584961437051834629

namespace A075671

/-- `A014963(6*(n+1))*Δ[A023002(A000217(n))]` -/
def P8584961437051834629.Spec : Prop :=
  ∀ n, P8584961437051834629.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P15668911399355022030

`Δ[A023002(A000217(n))+A000045(((-1)^n)²)]`
-/

namespace A075671.P15668911399355022030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat + A000045 (((-1) ^ n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075671.P15668911399355022030

namespace A075671

/-- `Δ[A023002(A000217(n))+A000045(((-1)^n)²)]` -/
def P15668911399355022030.Spec : Prop :=
  ∀ n, P15668911399355022030.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P17733197124656059966

`Δ[A023002(A000217(n))+A000203(((-1)^n)²)]`
-/

namespace A075671.P17733197124656059966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat + A000203 (((-1) ^ n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075671.P17733197124656059966

namespace A075671

/-- `Δ[A023002(A000217(n))+A000203(((-1)^n)²)]` -/
def P17733197124656059966.Spec : Prop :=
  ∀ n, P17733197124656059966.a n = A075671 (n + 1)

end A075671

/-! ## A075671.P4096337709037516562

`A000032(((-1)^n)²)*Δ[A023002(A000217(n))]`
-/

namespace A075671.P4096337709037516562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * (f1 (n + 1) - f1 n)

end

end A075671.P4096337709037516562

namespace A075671

/-- `A000032(((-1)^n)²)*Δ[A023002(A000217(n))]` -/
def P4096337709037516562.Spec : Prop :=
  ∀ n, P4096337709037516562.a n = A075671 (n + 1)

end A075671

/-!
# A075673: Sum of next n integer interprimes (cf. A024675).

The programs for A075673, the canonical program `A075673.P275598027146111731` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075673 has offset 1).

The definition of A075673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075673.P275598027146111731

`Δ[A061802(∑[n]+1)]/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075673

/-- `Δ[A061802(∑[n]+1)]/2` -/
def P275598027146111731.Spec : Prop :=
  ∀ n, P275598027146111731.a n = (A075673 (n + 1) : ℚ)

end A075673

/-! ## A075673.P11444703923101252112

`Δ[A061802(A000124(n))/2]`
-/

namespace A075673.P11444703923101252112
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061802 (A000124 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075673.P11444703923101252112

namespace A075673

/-- `Δ[A061802(A000124(n))/2]` -/
def P11444703923101252112.Spec : Prop :=
  ∀ n, P11444703923101252112.a n = (A075673 (n + 1) : ℚ)

end A075673

/-! ## A075673.P15545271836129087121

`Δ[A102724(A000124(n))]/(2-A000007(n+1))`
-/

namespace A075673.P15545271836129087121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102724 (A000124 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 - A000007 (n + 1) : ℚ)

end

end A075673.P15545271836129087121

namespace A075673

/-- `Δ[A102724(A000124(n))]/(2-A000007(n+1))` -/
def P15545271836129087121.Spec : Prop :=
  ∀ n, P15545271836129087121.a n = (A075673 (n + 1) : ℚ)

end A075673

/-! ## A075673.P15400358393173684646

`Δ[A102724(A000124(n))]/A000034(2*n+1)`
-/

namespace A075673.P15400358393173684646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102724 (A000124 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A000034 (2 * n + 1) : ℚ)

end

end A075673.P15400358393173684646

namespace A075673

/-- `Δ[A102724(A000124(n))]/A000034(2*n+1)` -/
def P15400358393173684646.Spec : Prop :=
  ∀ n, P15400358393173684646.a n = (A075673 (n + 1) : ℚ)

end A075673

/-! ## A075673.P7344635806996131025

`Δ[A102724(A000124(n))]/A020639(2*(n+1))`
-/

namespace A075673.P7344635806996131025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102724 (A000124 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A075673.P7344635806996131025

namespace A075673

/-- `Δ[A102724(A000124(n))]/A020639(2*(n+1))` -/
def P7344635806996131025.Spec : Prop :=
  ∀ n, P7344635806996131025.a n = (A075673 (n + 1) : ℚ)

end A075673

/-!
# A075674: Sum of next n odd interprimes.

The programs for A075674, there is no canonical definition to state claims against.
-/

/-! ## A075674.P427190739101135757

`A166081(2*n+3)*A187471(A014090(n+2))`
-/

namespace A075674.P427190739101135757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166081 (2 * n + 3) * A187471 (A014090 (n + 2)).toNat

end

end A075674.P427190739101135757

/-!
# A075675: Sum of next n even interprimes.

The programs for A075675, there is no canonical definition to state claims against.
-/

/-! ## A075675.P6032733457057813456

`A350314(A061978(n+1))+A000837(3*(n+1))`
-/

namespace A075675.P6032733457057813456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350314 (A061978 (n + 1)).toNat + A000837 (3 * (n + 1))

end

end A075675.P6032733457057813456

/-!
# A075676: Sequences A001644 and A000073 interleaved.

The programs for A075676, the canonical program `A075676.P11663929086396868806` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075676 has offset 0).

The definition of A075676 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075676.P11663929086396868806

`3*a(n-2)+a(n-4)+a(n-6)` with `a(0)=3, a(1)=1, a(2)=3, a(3)=2, a(4)=11, a(5)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075676

/-- `3*a(n-2)+a(n-4)+a(n-6)` -/
def P11663929086396868806.Spec : Prop :=
  ∀ n, (P11663929086396868806.a n : ℤ) = A075676 n

theorem P11663929086396868806.correct : P11663929086396868806.Spec := by
  intro n
  simp only [A075676]

end A075676

/-! ## A075676.P12188858156638846210

`A274761(n)-(A075536(n)+A000073(n))`
-/

namespace A075676.P12188858156638846210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274761 n - (A075536 n + A000073 n)

end

end A075676.P12188858156638846210

namespace A075676

/-- `A274761(n)-(A075536(n)+A000073(n))` -/
def P12188858156638846210.Spec : Prop :=
  ∀ n, P12188858156638846210.a n = A075676 n

end A075676

/-! ## A075676.P8589760040287630011

`∑[A001590(n)]+A001644(n)-A075536(n)`
-/

namespace A075676.P8589760040287630011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A001644 n - A075536 n)

end

end A075676.P8589760040287630011

namespace A075676

/-- `∑[A001590(n)]+A001644(n)-A075536(n)` -/
def P8589760040287630011.Spec : Prop :=
  ∀ n, P8589760040287630011.a n = A075676 n

end A075676

/-! ## A075676.P12945455890641366318

`A000073(n+1)+A001644(n)-A075536(n)`
-/

namespace A075676.P12945455890641366318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1) + (A001644 n - A075536 n)

end

end A075676.P12945455890641366318

namespace A075676

/-- `A000073(n+1)+A001644(n)-A075536(n)` -/
def P12945455890641366318.Spec : Prop :=
  ∀ n, P12945455890641366318.a n = A075676 n

end A075676

/-! ## A075676.P14241909869196900841

`A280308(n)-(A075536(n)+A020992(n))`
-/

namespace A075676.P14241909869196900841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280308 n - (A075536 n + A020992 n)

end

end A075676.P14241909869196900841

namespace A075676

/-- `A280308(n)-(A075536(n)+A020992(n))` -/
def P14241909869196900841.Spec : Prop :=
  ∀ n, P14241909869196900841.a n = A075676 n

end A075676

/-!
# A075677: Reduced Collatz function R applied to the odd integers: a(n) = R(2n-1), where R(k) = (3k+1)/2^r, with r as large as possible.

The programs for A075677, the canonical program `A075677.P6882598793627865394` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075677 has offset 1).

The definition of A075677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075677.P7733009828808150212

`A000265(3*(n+1)-1)`
-/

namespace A075677.P7733009828808150212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (3 * (n + 1) - 1)

end

end A075677.P7733009828808150212

namespace A075677

/-- `A000265(3*(n+1)-1)` -/
def P7733009828808150212.Spec : Prop :=
  ∀ n, P7733009828808150212.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P6882598793627865394

`A139391(2*n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A075677

/-- `A139391(2*n+1)` -/
def P6882598793627865394.Spec : Prop :=
  ∀ n, P6882598793627865394.a n = A075677 (n + 1)

theorem P6882598793627865394.correct : P6882598793627865394.Spec := by
  intro n
  simp only [A075677, Nat.add_sub_cancel]

end A075677

/-! ## A075677.P9441711578907552453

`2*A173732(n)+1`
-/

namespace A075677.P9441711578907552453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173732 n + 1

end

end A075677.P9441711578907552453

namespace A075677

/-- `2*A173732(n)+1` -/
def P9441711578907552453.Spec : Prop :=
  ∀ n, P9441711578907552453.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P16458586711360331351

`A093411(3*n+2)`
-/

namespace A075677.P16458586711360331351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (3 * n + 2)

end

end A075677.P16458586711360331351

namespace A075677

/-- `A093411(3*n+2)` -/
def P16458586711360331351.Spec : Prop :=
  ∀ n, P16458586711360331351.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P13530290381853863282

`A328478(3*n+2)`
-/

namespace A075677.P13530290381853863282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (3 * n + 2)

end

end A075677.P13530290381853863282

namespace A075677

/-- `A328478(3*n+2)` -/
def P13530290381853863282.Spec : Prop :=
  ∀ n, P13530290381853863282.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P16495506079373021210

`(6*n+4)/2^A087230(n)`
-/

namespace A075677.P16495506079373021210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℚ) / (2 : ℚ) ^ (A087230 n : ℤ)

end

end A075677.P16495506079373021210

namespace A075677

/-- `(6*n+4)/2^A087230(n)` -/
def P16495506079373021210.Spec : Prop :=
  ∀ n, P16495506079373021210.a n = (A075677 (n + 1) : ℚ)

end A075677

/-! ## A075677.P17257585721521521650

`A165367(A350091(n))`
-/

namespace A075677.P17257585721521521650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A350091 n).toNat

end

end A075677.P17257585721521521650

namespace A075677

/-- `A165367(A350091(n))` -/
def P17257585721521521650.Spec : Prop :=
  ∀ n, P17257585721521521650.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P7384615069711987832

`A171435(A017029(n)-n)`
-/

namespace A075677.P7384615069711987832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017029 n - (n : ℤ)).toNat

end

end A075677.P7384615069711987832

namespace A075677

/-- `A171435(A017029(n)-n)` -/
def P7384615069711987832.Spec : Prop :=
  ∀ n, P7384615069711987832.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P15196339655707581880

`A007310(A254048(2*n+1))`
-/

namespace A075677.P15196339655707581880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A254048 (2 * n + 1)).toNat

end

end A075677.P15196339655707581880

namespace A075677

/-- `A007310(A254048(2*n+1))` -/
def P15196339655707581880.Spec : Prop :=
  ∀ n, P15196339655707581880.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P3648041998302967279

`A005843(A173732(n))+1`
-/

namespace A075677.P3648041998302967279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A173732 n).toNat + 1

end

end A075677.P3648041998302967279

namespace A075677

/-- `A005843(A173732(n))+1` -/
def P3648041998302967279.Spec : Prop :=
  ∀ n, P3648041998302967279.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P6984725104382445378

`A146535(A173732(n)+1)`
-/

namespace A075677.P6984725104382445378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A173732 n + 1).toNat

end

end A075677.P6984725104382445378

namespace A075677

/-- `A146535(A173732(n)+1)` -/
def P6984725104382445378.Spec : Prop :=
  ∀ n, P6984725104382445378.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P9064593995778548663

`A005408(A246425(n)+n)`
-/

namespace A075677.P9064593995778548663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A246425 n + (n : ℤ)).toNat

end

end A075677.P9064593995778548663

namespace A075677

/-- `A005408(A246425(n)+n)` -/
def P9064593995778548663.Spec : Prop :=
  ∀ n, P9064593995778548663.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P3048624396191570556

`A067745(A165367(n)-n)`
-/

namespace A075677.P3048624396191570556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (A165367 n - (n : ℤ)).toNat

end

end A075677.P3048624396191570556

namespace A075677

/-- `A067745(A165367(n)-n)` -/
def P3048624396191570556.Spec : Prop :=
  ∀ n, P3048624396191570556.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P4040074245250352781

`A067745(2*(n+1))`
-/

namespace A075677.P4040074245250352781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067745 (2 * (n + 1))

end

end A075677.P4040074245250352781

namespace A075677

/-- `A067745(2*(n+1))` -/
def P4040074245250352781.Spec : Prop :=
  ∀ n, P4040074245250352781.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P7600506457161286654

`A171435(A016777(Δ[n²]))`
-/

namespace A075677.P7600506457161286654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A016777 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A075677.P7600506457161286654

namespace A075677

/-- `A171435(A016777(Δ[n²]))` -/
def P7600506457161286654.Spec : Prop :=
  ∀ n, P7600506457161286654.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P4999482793217553068

`2*A025480(3*n+1)+1`
-/

namespace A075677.P4999482793217553068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 (3 * n + 1) + 1

end

end A075677.P4999482793217553068

namespace A075677

/-- `2*A025480(3*n+1)+1` -/
def P4999482793217553068.Spec : Prop :=
  ∀ n, P4999482793217553068.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P9105023788489504550

`A065330(3*n+2)`
-/

namespace A075677.P9105023788489504550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (3 * n + 2)

end

end A075677.P9105023788489504550

namespace A075677

/-- `A065330(3*n+2)` -/
def P9105023788489504550.Spec : Prop :=
  ∀ n, P9105023788489504550.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P16847446901991419602

`A214681(3*n+2)`
-/

namespace A075677.P16847446901991419602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (3 * n + 2)

end

end A075677.P16847446901991419602

namespace A075677

/-- `A214681(3*n+2)` -/
def P16847446901991419602.Spec : Prop :=
  ∀ n, P16847446901991419602.a n = A075677 (n + 1)

end A075677

/-! ## A075677.P1089140915790877275

`A166466(3*n+2)/3`
-/

namespace A075677.P1089140915790877275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (3 * n + 2) : ℚ) / 3

end

end A075677.P1089140915790877275

namespace A075677

/-- `A166466(3*n+2)/3` -/
def P1089140915790877275.Spec : Prop :=
  ∀ n, P1089140915790877275.a n = (A075677 (n + 1) : ℚ)

end A075677

/-! ## A075677.P13313122076960348437

`A153733(2*n+1+n)+1`
-/

namespace A075677.P13313122076960348437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (2 * n + 1 + n) + 1

end

end A075677.P13313122076960348437

namespace A075677

/-- `A153733(2*n+1+n)+1` -/
def P13313122076960348437.Spec : Prop :=
  ∀ n, P13313122076960348437.a n = A075677 (n + 1)

end A075677

/-!
# A075678: Number of fixed (orientation matters) polyominoids (shapes made of faces of cubes) with n squares.

The programs for A075678, there is no canonical definition to state claims against.
-/

/-! ## A075678.P1678362552211181212

`A385715(∑[n+1]+3)`
-/

namespace A075678.P1678362552211181212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385715 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A075678.P1678362552211181212

/-!
# A075679: Number of free (rotations and reflections count as same shape) polyominoids (shapes made of faces of cubes) with n squares.

The programs for A075679, there is no canonical definition to state claims against.
-/

/-! ## A075679.P9657869609779533458

`A387003(∑[n]+2)`
-/

namespace A075679.P9657869609779533458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387003 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A075679.P9657869609779533458

/-!
# A075680: For odd numbers 2n-1, the minimum number of iterations of the reduced Collatz function R required to yield 1. The function R is defined as R(k) = (3k+1)/2^r, with r as large as possible.

The programs for A075680, there is no canonical definition to state claims against.
-/

/-! ## A075680.P11838573319782318423

`A171870(n+1)+A057427(n)`
-/

namespace A075680.P11838573319782318423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171870 (n + 1) + A057427 n

end

end A075680.P11838573319782318423

/-! ## A075680.P14382937216138952840

`A171870(n+1)-A057428(n)`
-/

namespace A075680.P14382937216138952840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171870 (n + 1) - A057428 n

end

end A075680.P14382937216138952840

/-! ## A075680.P13561333511202349573

`A064685(n)-(A166549(n+1)+1)`
-/

namespace A075680.P13561333511202349573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064685 n - (A166549 (n + 1) + 1)

end

end A075680.P13561333511202349573

/-! ## A075680.P2122323845948989260

`A171870(n+1)+A122458(2*n)`
-/

namespace A075680.P2122323845948989260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171870 (n + 1) + A122458 (2 * n)

end

end A075680.P2122323845948989260

/-! ## A075680.P1488071425784888787

`A006667(Δ[n²])`
-/

namespace A075680.P1488071425784888787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075680.P1488071425784888787

/-! ## A075680.P9347779259391834209

`A286380(Δ[n²])`
-/

namespace A075680.P9347779259391834209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075680.P9347779259391834209

/-! ## A075680.P336745762311402323

`A078719(Δ[n²])-1`
-/

namespace A075680.P336745762311402323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A075680.P336745762311402323

/-! ## A075680.P7882421572735601263

`A220182(Δ[n²])/2`
-/

namespace A075680.P7882421572735601263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A075680.P7882421572735601263

/-! ## A075680.P4395025192095034719

`A023443(A078719(2*n+1))`
-/

namespace A075680.P4395025192095034719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078719 (2 * n + 1)).toNat

end

end A075680.P4395025192095034719

/-! ## A075680.P8367461929190472802

`A004526(A220182(2*n+1))`
-/

namespace A075680.P8367461929190472802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A220182 (2 * n + 1)).toNat

end

end A075680.P8367461929190472802

/-! ## A075680.P14519123638348087736

`A317640(A220182(n+1+n))`
-/

namespace A075680.P14519123638348087736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317640 (A220182 (n + 1 + n)).toNat

end

end A075680.P14519123638348087736

/-! ## A075680.P13782258837439735391

`A023444(A078719(2*n+1)+1)`
-/

namespace A075680.P13782258837439735391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A078719 (2 * n + 1) + 1).toNat

end

end A075680.P13782258837439735391

/-! ## A075680.P1676482828706042900

`A002265(2*A220182(2*n+1))`
-/

namespace A075680.P1676482828706042900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A220182 (2 * n + 1)).toNat

end

end A075680.P1676482828706042900

/-! ## A075680.P2454630581802424718

`A006370(2*A286380(2*n+1))`
-/

namespace A075680.P2454630581802424718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A286380 (2 * n + 1)).toNat

end

end A075680.P2454630581802424718

/-! ## A075680.P8652119280524157326

`A014682(2*A286380(2*n+1))`
-/

namespace A075680.P8652119280524157326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A286380 (2 * n + 1)).toNat

end

end A075680.P8652119280524157326

/-! ## A075680.P12019337065004072351

`A085062(2*A286380(2*n+1))`
-/

namespace A075680.P12019337065004072351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (2 * A286380 (2 * n + 1)).toNat

end

end A075680.P12019337065004072351

/-! ## A075680.P18097482286445830362

`A129760(A220182(2*n+1)+1)/2`
-/

namespace A075680.P18097482286445830362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129760 (A220182 (2 * n + 1) + 1).toNat : ℚ) / 2

end

end A075680.P18097482286445830362

/-! ## A075680.P955491359920543339

`A006577(2*n+1)-A166549(n+1)`
-/

namespace A075680.P955491359920543339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (2 * n + 1) - A166549 (n + 1)

end

end A075680.P955491359920543339

/-!
# A075681: a(n) = (n-1)*(n-2)^3 - A003878(n-3), with a(1) = a(2) = 0 and a(3) = 2.

The programs for A075681, there is no canonical definition to state claims against.
-/

/-! ## A075681.P2890006203273777968

`A075682(n)+a(n-1)` with `a(0)=0`
-/

namespace A075681.P2890006203273777968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A075682 n + a (n - 1)

end

end A075681.P2890006203273777968

/-! ## A075681.P15378888702242580922

`∑[A075682(A028310(n))]`
-/

namespace A075681.P15378888702242580922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P15378888702242580922

/-! ## A075681.P672813749652683007

`∑[A075682(sqrt(A253909(n)))]`
-/

namespace A075681.P672813749652683007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (SequenceMachineLib.roundAway (Real.sqrt (A253909 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P672813749652683007

/-! ## A075681.P18260036782810100340

`∑[A075682(A004277(n)-n)]`
-/

namespace A075681.P18260036782810100340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P18260036782810100340

/-! ## A075681.P15207719717458688423

`∑[A075682(n+1)]-A075682(n+1)`
-/

namespace A075681.P15207719717458688423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A075682 (n + 1)

end

end A075681.P15207719717458688423

/-! ## A075681.P16823137164194681377

`∑[A075682(A004525(A004277(n)))]`
-/

namespace A075681.P16823137164194681377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P16823137164194681377

/-! ## A075681.P15140982905930772151

`∑[A075682(A065033(2*n))]`
-/

namespace A075681.P15140982905930772151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P15140982905930772151

/-! ## A075681.P11791337872882787946

`∑[A075682(A007318(A000124(n)))]`
-/

namespace A075681.P11791337872882787946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P11791337872882787946

/-! ## A075681.P14079477984621449271

`∑[A075682(A134478(∑[n]))]`
-/

namespace A075681.P14079477984621449271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075682 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A075681.P14079477984621449271

/-!
# A075682: First differences of A075681.

The programs for A075682, there is no canonical definition to state claims against.
-/

/-! ## A075682.P272567669002854971

`Δ[A075681(n+1)]`
-/

namespace A075682.P272567669002854971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075682.P272567669002854971

/-! ## A075682.P16738077114258137857

`A075681(n+2)-A075681(n+1)`
-/

namespace A075682.P16738077114258137857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075681 (n + 2) - A075681 (n + 1)

end

end A075682.P16738077114258137857

/-! ## A075682.P15802487556139798994

`record[Δ[A075681(A008619(n))]]`
-/

namespace A075682.P15802487556139798994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075681 (A008619 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075682.P15802487556139798994

/-! ## A075682.P228753730792828085

`record[Δ[A075681(A065033(n))]]`
-/

namespace A075682.P228753730792828085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075681 (A065033 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075682.P228753730792828085

/-! ## A075682.P453947143667467720

`abs(Δ[A075681(A110514(2*n))])`
-/

namespace A075682.P453947143667467720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075681 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A075682.P453947143667467720

/-! ## A075682.P1956704666631098193

`record[Δ[A075681(A134478(n))]]`
-/

namespace A075682.P1956704666631098193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075681 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075682.P1956704666631098193

/-!
# A075683: 2nd differences of A075681.

The programs for A075683, the canonical program `A075683.P10402249999227935306` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075683 has offset 1).

The definition of A075683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075683.P10402249999227935306

`2*a(n-1)-a(n-2)` with `a(0)=2, a(1)=17, a(2)=20, a(3)=22, a(4)=25`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A075683

/-- `2*a(n-1)-a(n-2)` -/
def P10402249999227935306.Spec : Prop :=
  ∀ n, P10402249999227935306.a n = A075683 (n + 1)

theorem P10402249999227935306.correct : P10402249999227935306.Spec := by
  intro n
  simp only [A075683, Nat.add_sub_cancel]

end A075683

/-!
# A075684: For odd numbers 2n-1, the maximum number produced by iterating the reduced Collatz function R defined as R(k) = (3k+1)/2^r, with r as large as possible.

The programs for A075684, there is no canonical definition to state claims against.
-/

/-! ## A075684.P7257846922417564949

`A087232(Δ[n²])`
-/

namespace A075684.P7257846922417564949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A075684.P7257846922417564949

/-! ## A075684.P10424818985005949831

`or(1, A087232(2*n+1))`
-/

namespace A075684.P10424818985005949831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A087232 (2 * n + 1))

end

end A075684.P10424818985005949831

/-! ## A075684.P17948410522645459819

`floor(A056959(2*n+1)/3)`
-/

namespace A075684.P17948410522645459819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056959 (2 * n + 1) : ℚ) / 3⌋

end

end A075684.P17948410522645459819

/-! ## A075684.P956247289835964376

`A025586(2*n+1)-A226110(2*n+1)`
-/

namespace A075684.P956247289835964376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (2 * n + 1) - A226110 (2 * n + 1)

end

end A075684.P956247289835964376

/-! ## A075684.P9205469212216729794

`A087232(A005408(n))%A158738(n+1)`
-/

namespace A075684.P9205469212216729794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087232 (A005408 n).toNat) (A158738 (n + 1))

end

end A075684.P9205469212216729794

/-! ## A075684.P10038779045697189371

`A087232(n+1+n)/A318471(A000040(n+1))`
-/

namespace A075684.P10038779045697189371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087232 (n + 1 + n) : ℚ) / (A318471 (A000040 (n + 1)).toNat : ℚ)

end

end A075684.P10038779045697189371

/-! ## A075684.P17897323825643471751

`A051023(n*A051023(n))*A087232(A016825(n))`
-/

namespace A075684.P17897323825643471751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051023 ((n : ℤ) * A051023 n).toNat * A087232 (A016825 n).toNat

end

end A075684.P17897323825643471751

/-! ## A075684.P15146459228595671372

`A349407(A365478(2*n+1))`
-/

namespace A075684.P15146459228595671372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349407 (A365478 (2 * n + 1)).toNat

end

end A075684.P15146459228595671372

/-! ## A075684.P5820313109878018308

`A004523(A056959(2*n+1)/2)`
-/

namespace A075684.P5820313109878018308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (SequenceMachineLib.roundAway ((A056959 (2 * n + 1) : ℚ) / 2)).toNat

end

end A075684.P5820313109878018308

/-!
# A075685: Reverse and Add! carried out in base 4; number of steps needed to reach a palindrome, or -1 if no palindrome is ever reached.

The programs for A075685, there is no canonical definition to state claims against.
-/

/-! ## A075685.P13301186470231017268

`∑{e}[A002262(p?[A129601(n)]), #]`
-/

namespace A075685.P13301186470231017268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129601 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A075685.P13301186470231017268

/-! ## A075685.P11052411197488538981

`A068932(A002262(p?[A129601(n)]))`
-/

namespace A075685.P11052411197488538981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068932 (A002262 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A075685.P11052411197488538981

/-! ## A075685.P1888712965904651978

`A007968(and(A001045(n), A211440(n)))`
-/

namespace A075685.P1888712965904651978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007968 (Int.land (A001045 n) (A211440 n)).toNat

end

end A075685.P1888712965904651978

/-! ## A075685.P7713119712181228885

`lt[A331695(n+1), A331244(n+5)]%A070080(n+2)`
-/

namespace A075685.P7713119712181228885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331244 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) (A070080 (n + 2))

end

end A075685.P7713119712181228885

/-! ## A075685.P10035056202128530653

`A053838(A165012(n)^A005679(n+1))`
-/

namespace A075685.P10035056202128530653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 (SequenceMachineLib.roundAway ((A165012 n : ℚ) ^ (A005679 (n + 1) : ℤ))).toNat

end

end A075685.P10035056202128530653

/-!
# A075686: In base 4, n sets a new record for the number of Reverse and Add! steps needed to reach a palindrome starting with n.

The programs for A075686, there is no canonical definition to state claims against.
-/

/-! ## A075686.P4378567546821704916

`A077441(A075687(n))`
-/

namespace A075686.P4378567546821704916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077441 (A075687 n).toNat

end

end A075686.P4378567546821704916

/-! ## A075686.P11035342969927350884

`A077441(record[A075685(n)])`
-/

namespace A075686.P11035342969927350884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077441 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075686.P11035342969927350884

/-! ## A075686.P11721747644399283406

`record[A077441(n*A355449(A035082(n)))]`
-/

namespace A075686.P11721747644399283406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077441 ((n : ℤ) * A355449 (A035082 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075686.P11721747644399283406

/-!
# A075687: In base 4, records for the number of Reverse and Add! steps needed to reach a palindrome.

The programs for A075687, there is no canonical definition to state claims against.
-/

/-! ## A075687.P8721107370819013786

`eq[A067856(n+1), A067856(A164001(n+1))]`
-/

namespace A075687.P8721107370819013786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (A164001 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A075687.P8721107370819013786

/-! ## A075687.P3702972931089082410

`lt[A210791(∑[A210880(n+1)]), 32]`
-/

namespace A075687.P3702972931089082410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210880 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210791 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A075687.P3702972931089082410

/-! ## A075687.P12522728328515504072

`record[A240575(n)%A082467(A000040(n+5))]`
-/

namespace A075687.P12522728328515504072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240575 n) (A082467 (A000040 (n + 5)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075687.P12522728328515504072

/-!
# A075688: Pair sums are even interprimes.

The programs for A075688, there is no canonical definition to state claims against.
-/

/-! ## A075688.P16060980055247013553

`A194118(A194118(A091913(n²)))`
-/

namespace A075688.P16060980055247013553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194118 (A194118 (A091913 (n ^ 2)).toNat).toNat

end

end A075688.P16060980055247013553

/-!
# A075689: Even interprimes from A075688.

The programs for A075689, there is no canonical definition to state claims against.
-/

/-! ## A075689.P14190065845735547923

`A128338(A364350(3*n+2))+A000040(n+3)`
-/

namespace A075689.P14190065845735547923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128338 (A364350 (3 * n + 2)).toNat + A000040 (n + 3)

end

end A075689.P14190065845735547923

/-!
# A075690: a(n) = (n-1)*(n-2)^4 - A028294(n), for n > 4, with a(1) = a(2) = 0, a(3) = 2, and a(4) = 48.

The programs for A075690, there is no canonical definition to state claims against.
-/

/-! ## A075690.P1815283344597359053

`A172305(C(∑[n], 3))`
-/

namespace A075690.P1815283344597359053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172305 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A075690.P1815283344597359053

/-!
# A075691: Let M(k) be the k X k matrix m_(i,j) = i (mod j) - j (mod i); then a(n) = det(M(2*n)).

The programs for A075691, there is no canonical definition to state claims against.
-/

/-! ## A075691.P8765500286355257652

`A348363(round(n!/2)²)²`
-/

namespace A075691.P8765500286355257652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2) ^ 2).toNat ^ 2

end

end A075691.P8765500286355257652

/-! ## A075691.P1366463833137616037

`A348363(∏[gcd(n, C(2, n))]²)²`
-/

namespace A075691.P1366463833137616037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348363 ((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2

end

end A075691.P1366463833137616037

/-!
# A075693: Difference between 10-adic numbers defined in A018248 & A018247.

The programs for A075693, there is no canonical definition to state claims against.
-/

/-! ## A075693.P2772094107637967341

`A018248(n)-A018247(n)`
-/

namespace A075693.P2772094107637967341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - A018247 n

end

end A075693.P2772094107637967341

/-! ## A075693.P11754467808049488339

`9-2*A091664(n)`
-/

namespace A075693.P11754467808049488339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - 2 * A091664 n

end

end A075693.P11754467808049488339

/-! ## A075693.P13013073971567563358

`A091663(n)-A091664(n)`
-/

namespace A075693.P13013073971567563358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n - A091664 n

end

end A075693.P13013073971567563358

/-! ## A075693.P12397295378937815612

`or(1, A091663(n)-A018247(n))`
-/

namespace A075693.P12397295378937815612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A091663 n - A018247 n)

end

end A075693.P12397295378937815612

/-! ## A075693.P10787854170954059738

`A000007(n)+A091663(n)-A018247(n)`
-/

namespace A075693.P10787854170954059738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A091663 n - A018247 n)

end

end A075693.P10787854170954059738

/-! ## A075693.P11969844400344771994

`A018248(n)-(A091664(n)+A000007(n))`
-/

namespace A075693.P11969844400344771994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018248 n - (A091664 n + A000007 n)

end

end A075693.P11969844400344771994

/-! ## A075693.P8033434813499799278

`A091663(n)-and(A018247(n), A135179(n+1))`
-/

namespace A075693.P8033434813499799278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n - Int.land (A018247 n) (A135179 (n + 1))

end

end A075693.P8033434813499799278

/-! ## A075693.P15477392965387097242

`A091663(n)-and(A018247(n), A156760(n))`
-/

namespace A075693.P15477392965387097242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n - Int.land (A018247 n) (A156760 n)

end

end A075693.P15477392965387097242

/-! ## A075693.P5168562705794597984

`A091663(n)-and(A018247(n), A198694(n))`
-/

namespace A075693.P5168562705794597984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 n - Int.land (A018247 n) (A198694 n)

end

end A075693.P5168562705794597984

/-!
# A075694: a(1)=1, then "jump over next prime": a(n) = 2 nextprime(a(n-1))-a(n-1).

The programs for A075694, the canonical program `A075694.P11278241029682646582` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075694 has offset 1).

The definition of A075694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075694.P11278241029682646582

`2*A151800(a(n-1))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075694

/-- `2*A151800(a(n-1))-a(n-1)` -/
def P11278241029682646582.Spec : Prop :=
  ∀ n, P11278241029682646582.a n = A075694 (n + 1)

theorem P11278241029682646582.correct : P11278241029682646582.Spec := by
  intro n
  simp only [A075694, Nat.add_sub_cancel]

end A075694

/-! ## A075694.P12369223712391909632

`A005843(A151800(a(n-1))-a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A075694.P12369223712391909632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (A151800 (a (n - 1)).toNat - a (n - 1)).toNat + a (n - 1)

end

end A075694.P12369223712391909632

namespace A075694

/-- `A005843(A151800(a(n-1))-a(n-1))+a(n-1)` -/
def P12369223712391909632.Spec : Prop :=
  ∀ n, P12369223712391909632.a n = A075694 (n + 1)

end A075694

/-! ## A075694.P7067237049726445549

`A004273(A083569(record[A083569(n+1)]))`
-/

namespace A075694.P7067237049726445549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A083569 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A075694.P7067237049726445549

namespace A075694

/-- `A004273(A083569(record[A083569(n+1)]))` -/
def P7067237049726445549.Spec : Prop :=
  ∀ n, P7067237049726445549.a n = A075694 (n + 1)

end A075694

/-! ## A075694.P5461381586572220613

`A087030(a(n-1))` with `a(0)=1`
-/

namespace A075694.P5461381586572220613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087030 (a (n - 1)).toNat

end

end A075694.P5461381586572220613

namespace A075694

/-- `A087030(a(n-1))` -/
def P5461381586572220613.Spec : Prop :=
  ∀ n, P5461381586572220613.a n = A075694 (n + 1)

end A075694

/-! ## A075694.P3898822960631400935

`a(n-1)+2*A013632(a(n-1))` with `a(0)=1`
-/

namespace A075694.P3898822960631400935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A013632 (a (n - 1)).toNat

end

end A075694.P3898822960631400935

namespace A075694

/-- `a(n-1)+2*A013632(a(n-1))` -/
def P3898822960631400935.Spec : Prop :=
  ∀ n, P3898822960631400935.a n = A075694 (n + 1)

end A075694

/-! ## A075694.P18353038314304322559

`2*A000040(A230980(a(n-1))+1)-a(n-1)` with `a(0)=1`
-/

namespace A075694.P18353038314304322559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000040 (A230980 (a (n - 1)).toNat + 1).toNat - a (n - 1)

end

end A075694.P18353038314304322559

namespace A075694

/-- `2*A000040(A230980(a(n-1))+1)-a(n-1)` -/
def P18353038314304322559.Spec : Prop :=
  ∀ n, P18353038314304322559.a n = A075694 (n + 1)

end A075694

/-!
# A075695: a(1)=1, then "jump over two primes": a(n) = 2*nextprime(nextprime(a(n-1))) - a(n-1).

The programs for A075695, the canonical program `A075695.P3023950291633561010` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075695 has offset 1).

The definition of A075695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2546 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A075695.P3023950291633561010

`2*A151800(A151800(a(n-1)))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A075695

/-- `2*A151800(A151800(a(n-1)))-a(n-1)` -/
def P3023950291633561010.Spec : Prop :=
  ∀ n, P3023950291633561010.a n = A075695 (n + 1)

theorem P3023950291633561010.correct : P3023950291633561010.Spec := by
  intro n
  simp only [A075695, Nat.add_sub_cancel]

end A075695

/-! ## A075695.P9418683323307367616

`A101300(a(n-1))+A101300(a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A075695.P9418683323307367616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101300 (a (n - 1)).toNat + A101300 (a (n - 1)).toNat - a (n - 1)

end

end A075695.P9418683323307367616

namespace A075695

/-- `A101300(a(n-1))+A101300(a(n-1))-a(n-1)` -/
def P9418683323307367616.Spec : Prop :=
  ∀ n, P9418683323307367616.a n = A075695 (n + 1)

theorem P9418683323307367616.correct : P9418683323307367616.Spec := by
  intro n
  simp only [A075695, Nat.add_sub_cancel, A075695.P9418683323307367616.a, A075695.P3023950291633561010.a, A101300, A101300.P7599830743545042440.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A075695

/-!
# A075696: Sum-of-digits of k appears somewhere in prime(k).

The programs for A075696, there is no canonical definition to state claims against.
-/

/-! ## A075696.P2287338524544885588

`A000720(A075698(n+1))`
-/

namespace A075696.P2287338524544885588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075698 (n + 1)).toNat

end

end A075696.P2287338524544885588

/-! ## A075696.P15605025278221715489

`∑{d}[A075698(n+1), A360614(#)]`
-/

namespace A075696.P15605025278221715489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A360614 d

end

end A075696.P15605025278221715489

/-!
# A075697: a(n) = sum-of-digits(A075696(n)).

The programs for A075697, there is no canonical definition to state claims against.
-/

/-! ## A075697.P9897591547877212960

`∑{digits}[A075696(n+1), #]`
-/

namespace A075697.P9897591547877212960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075696 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A075697.P9897591547877212960

/-! ## A075697.P10020833008510363260

`A007953(A075696(n+1))`
-/

namespace A075697.P10020833008510363260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A075696 (n + 1)).toNat

end

end A075697.P10020833008510363260

/-! ## A075697.P16014242219835821215

`∑{digits}[A000720(A075698(n+1)), #]`
-/

namespace A075697.P16014242219835821215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A075698 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A075697.P16014242219835821215

/-! ## A075697.P17285541240117862356

`10*A075696(n+1)-A249121(10*A075696(n+1))`
-/

namespace A075697.P17285541240117862356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A075696 (n + 1) - A249121 (10 * A075696 (n + 1)).toNat

end

end A075697.P17285541240117862356

/-! ## A075697.P17958508456416726351

`A061762(10*A075696(n+1))`
-/

namespace A075697.P17958508456416726351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * A075696 (n + 1)).toNat

end

end A075697.P17958508456416726351

/-! ## A075697.P12933136023754032387

`A062329(10*A075696(n+1))`
-/

namespace A075697.P12933136023754032387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (10 * A075696 (n + 1)).toNat

end

end A075697.P12933136023754032387

/-!
# A075698: Primes of index m from A075696, a(n) = prime(A075696(n)).

The programs for A075698, there is no canonical definition to state claims against.
-/

/-! ## A075698.P17470980159094555379

`A000040(A075696(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075698.P17470980159094555379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075696 (n + 1)).toNat

end

end A075698.P17470980159094555379

/-! ## A075698.P6877785646699335207

`A045319(A075696(n+1)-1)`
-/

namespace A075698.P6877785646699335207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A075696 (n + 1) - 1).toNat

end

end A075698.P6877785646699335207

/-! ## A075698.P7237197867920313716

`A045344(A075696(n+1)-1)`
-/

namespace A075698.P7237197867920313716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A075696 (n + 1) - 1).toNat

end

end A075698.P7237197867920313716

/-! ## A075698.P15905779699729327850

`A065091(A075696(n+1)-1)`
-/

namespace A075698.P15905779699729327850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A075696 (n + 1) - 1).toNat

end

end A075698.P15905779699729327850

/-! ## A075698.P9125659711484204017

`A008578(A075696(n+1)+1)`
-/

namespace A075698.P9125659711484204017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A075696 (n + 1) + 1).toNat

end

end A075698.P9125659711484204017

/-!
# A075699: Number of primes in the interval (n,4n].

The programs for A075699, the canonical program `A075699.P3710310327471917167` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A075699 has offset 1).

The definition of A075699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A075699.P3710310327471917167

`A000720(4*(n+1))-A000720(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A075699

/-- `A000720(4*(n+1))-A000720(n+1)` -/
def P3710310327471917167.Spec : Prop :=
  ∀ n, P3710310327471917167.a n = A075699 (n + 1)

theorem P3710310327471917167.correct : P3710310327471917167.Spec := by
  intro n
  simp only [A075699, Nat.add_sub_cancel]

end A075699

/-! ## A075699.P10790191471856532081

`A108954(n+1)+A101909(n+1)`
-/

namespace A075699.P10790191471856532081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + A101909 (n + 1)

end

end A075699.P10790191471856532081

namespace A075699

/-- `A108954(n+1)+A101909(n+1)` -/
def P10790191471856532081.Spec : Prop :=
  ∀ n, P10790191471856532081.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P16773195510854210975

`A060715(n+1)+A035250(2*(n+1))`
-/

namespace A075699.P16773195510854210975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (n + 1) + A035250 (2 * (n + 1))

end

end A075699.P16773195510854210975

namespace A075699

/-- `A060715(n+1)+A035250(2*(n+1))` -/
def P16773195510854210975.Spec : Prop :=
  ∀ n, P16773195510854210975.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P6767131662270038146

`A101909(n+1)+A056171(2*(n+1))`
-/

namespace A075699.P6767131662270038146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101909 (n + 1) + A056171 (2 * (n + 1))

end

end A075699.P6767131662270038146

namespace A075699

/-- `A101909(n+1)+A056171(2*(n+1))` -/
def P6767131662270038146.Spec : Prop :=
  ∀ n, P6767131662270038146.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P17569196206092979273

`A108954(n+1)+A060715(2*(n+1))`
-/

namespace A075699.P17569196206092979273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + A060715 (2 * (n + 1))

end

end A075699.P17569196206092979273

namespace A075699

/-- `A108954(n+1)+A060715(2*(n+1))` -/
def P17569196206092979273.Spec : Prop :=
  ∀ n, P17569196206092979273.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P14862858348678698601

`A060715(2*(n+1))+A056171(2*(n+1))`
-/

namespace A075699.P14862858348678698601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (2 * (n + 1)) + A056171 (2 * (n + 1))

end

end A075699.P14862858348678698601

namespace A075699

/-- `A060715(2*(n+1))+A056171(2*(n+1))` -/
def P14862858348678698601.Spec : Prop :=
  ∀ n, P14862858348678698601.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P17896188676431321278

`A035250(n+1)+A101909(n+1)-A010051(n+1)`
-/

namespace A075699.P17896188676431321278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) + (A101909 (n + 1) - A010051 (n + 1))

end

end A075699.P17896188676431321278

namespace A075699

/-- `A035250(n+1)+A101909(n+1)-A010051(n+1)` -/
def P17896188676431321278.Spec : Prop :=
  ∀ n, P17896188676431321278.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P17768983456851724082

`A099802(n+1)+A101909(n+1)-A000720(n+1)`
-/

namespace A075699.P17768983456851724082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) + (A101909 (n + 1) - A000720 (n + 1))

end

end A075699.P17768983456851724082

namespace A075699

/-- `A099802(n+1)+A101909(n+1)-A000720(n+1)` -/
def P17768983456851724082.Spec : Prop :=
  ∀ n, P17768983456851724082.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P13949949398884428213

`A099801(2*n+1)-A230980(n+1)`
-/

namespace A075699.P13949949398884428213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (2 * n + 1) - A230980 (n + 1)

end

end A075699.P13949949398884428213

namespace A075699

/-- `A099801(2*n+1)-A230980(n+1)` -/
def P13949949398884428213.Spec : Prop :=
  ∀ n, P13949949398884428213.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P11148960664257317183

`A108954(2*(n+1))+A108954(n+1)`
-/

namespace A075699.P11148960664257317183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (2 * (n + 1)) + A108954 (n + 1)

end

end A075699.P11148960664257317183

namespace A075699

/-- `A108954(2*(n+1))+A108954(n+1)` -/
def P11148960664257317183.Spec : Prop :=
  ∀ n, P11148960664257317183.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P8748832998491904051

`A099802(2*(n+1))-A230980(n+1)`
-/

namespace A075699.P8748832998491904051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * (n + 1)) - A230980 (n + 1)

end

end A075699.P8748832998491904051

namespace A075699

/-- `A099802(2*(n+1))-A230980(n+1)` -/
def P8748832998491904051.Spec : Prop :=
  ∀ n, P8748832998491904051.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P3303267873973615502

`A099802(2*(n+1))-A056172(2*(n+1))`
-/

namespace A075699.P3303267873973615502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * (n + 1)) - A056172 (2 * (n + 1))

end

end A075699.P3303267873973615502

namespace A075699

/-- `A099802(2*(n+1))-A056172(2*(n+1))` -/
def P3303267873973615502.Spec : Prop :=
  ∀ n, P3303267873973615502.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P3801189701620676655

`A056171(A047268(2*(n+1)))+A056171(2*(n+1))`
-/

namespace A075699.P3801189701620676655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A047268 (2 * (n + 1))).toNat + A056171 (2 * (n + 1))

end

end A075699.P3801189701620676655

namespace A075699

/-- `A056171(A047268(2*(n+1)))+A056171(2*(n+1))` -/
def P3801189701620676655.Spec : Prop :=
  ∀ n, P3801189701620676655.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P15004677877346131167

`A056171(A103517(2*n+1))+A056171(2*(n+1))`
-/

namespace A075699.P15004677877346131167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A103517 (2 * n + 1)).toNat + A056171 (2 * (n + 1))

end

end A075699.P15004677877346131167

namespace A075699

/-- `A056171(A103517(2*n+1))+A056171(2*(n+1))` -/
def P15004677877346131167.Spec : Prop :=
  ∀ n, P15004677877346131167.a n = A075699 (n + 1)

end A075699

/-! ## A075699.P10316286879502582473

`A056171(A223134(2*n+1))+A056171(2*(n+1))`
-/

namespace A075699.P10316286879502582473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A223134 (2 * n + 1)).toNat + A056171 (2 * (n + 1))

end

end A075699.P10316286879502582473

namespace A075699

/-- `A056171(A223134(2*n+1))+A056171(2*(n+1))` -/
def P10316286879502582473.Spec : Prop :=
  ∀ n, P10316286879502582473.a n = A075699 (n + 1)

end A075699


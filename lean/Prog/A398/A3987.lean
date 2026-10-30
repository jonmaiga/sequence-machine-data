import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
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

/-!
# A398705: a(n) = denominator(Sum_{k=1..n} beta(floor(n/k))/floor(n/k)), where beta(n) = A206369(n) is the alternating sum of divisors of n.

The programs for A398705, there is no canonical definition to state claims against.
-/

/-! ## A398705.P9044104779775982413

`A398699(n+1)-A308975(A121412(n+1))`
-/

namespace A398705.P9044104779775982413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398699 (n + 1) - A308975 (A121412 (n + 1)).toNat

end

end A398705.P9044104779775982413

/-!
# A398709: a(n) = floor(((5 + sqrt(17))/2)^n).

The programs for A398709, the canonical program `A398709.P7989658470484696830` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398709 has offset 1).

The definition of A398709 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398709.P5232720446491502742

`ogf((4-4x+2x^2)/(1-6x+7x^2-2x^3))`
-/

namespace A398709.P5232720446491502742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 2] [1, -6, 7, -2] n

end

end A398709.P5232720446491502742

namespace A398709

/-- `ogf((4-4x+2x^2)/(1-6x+7x^2-2x^3))` -/
def P5232720446491502742.Spec : Prop :=
  ∀ n, P5232720446491502742.a n = A398709 (n + 1)

end A398709

/-! ## A398709.P7989658470484696830

`A159289(n)-1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A398709

/-- `A159289(n)-1` -/
def P7989658470484696830.Spec : Prop :=
  ∀ n, P7989658470484696830.a n = A398709 (n + 1)

theorem P7989658470484696830.correct : P7989658470484696830.Spec := by
  intro n
  simp only [A398709, Nat.add_sub_cancel]

end A398709

/-! ## A398709.P12599735014650633508

`∑[ogf((4-4x+2x^2)/(1-5x+2x^2))]`
-/

namespace A398709.P12599735014650633508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 2] [1, -5, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398709.P12599735014650633508

namespace A398709

/-- `∑[ogf((4-4x+2x^2)/(1-5x+2x^2))]` -/
def P12599735014650633508.Spec : Prop :=
  ∀ n, P12599735014650633508.a n = A398709 (n + 1)

end A398709

/-! ## A398709.P13466083646449612754

`xor(A000035(2*n+3), A159289(n))`
-/

namespace A398709.P13466083646449612754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 3)) (A159289 n)

end

end A398709.P13466083646449612754

namespace A398709

/-- `xor(A000035(2*n+3), A159289(n))` -/
def P13466083646449612754.Spec : Prop :=
  ∀ n, P13466083646449612754.a n = A398709 (n + 1)

end A398709

/-! ## A398709.P17713860072636135185

`floor(sqrt(A159289(2*n+1)))`
-/

namespace A398709.P17713860072636135185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A159289 (2 * n + 1))

end

end A398709.P17713860072636135185

namespace A398709

/-- `floor(sqrt(A159289(2*n+1)))` -/
def P17713860072636135185.Spec : Prop :=
  ∀ n, P17713860072636135185.a n = A398709 (n + 1)

end A398709

/-!
# A398710: Numbers > 100 such that all the substrings of length = 2 are primes and are all distinct.

The programs for A398710, there is no canonical definition to state claims against.
-/

/-! ## A398710.P13964702082082138547

`A341729(A211683(n+2))`
-/

namespace A398710.P13964702082082138547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341729 (A211683 (n + 2)).toNat

end

end A398710.P13964702082082138547

/-! ## A398710.P17588463054331865497

`A211683(n+2)+A024155(A211673(n+1))`
-/

namespace A398710.P17588463054331865497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 2) + A024155 (A211673 (n + 1)).toNat

end

end A398710.P17588463054331865497

/-! ## A398710.P14900378632465032554

`A211683(A387975(A131648(n+1))+n+1)`
-/

namespace A398710.P14900378632465032554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A387975 (A131648 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A398710.P14900378632465032554

/-! ## A398710.P14098690174617340385

`A211683(n+2)+A024155(A211681(n+1))`
-/

namespace A398710.P14098690174617340385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 2) + A024155 (A211681 (n + 1)).toNat

end

end A398710.P14098690174617340385

/-! ## A398710.P3699891457846105649

`A211683(A187829(n+2))`
-/

namespace A398710.P3699891457846105649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A187829 (n + 2)).toNat

end

end A398710.P3699891457846105649

/-!
# A398711: Number of unlabeled n-element posets whose linear-extension-majority digraph contains a simple directed cycle.

The programs for A398711, there is no canonical definition to state claims against.
-/

/-! ## A398711.P15930049326340775234

`A377128(A025047(n))`
-/

namespace A398711.P15930049326340775234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (A025047 n).toNat

end

end A398711.P15930049326340775234

/-! ## A398711.P15948986274976912119

`A377128(A050162(n+1))`
-/

namespace A398711.P15948986274976912119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (A050162 (n + 1)).toNat

end

end A398711.P15948986274976912119

/-! ## A398711.P11310971656271938701

`A377128(A093305(n+1))`
-/

namespace A398711.P11310971656271938701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377128 (A093305 (n + 1)).toNat

end

end A398711.P11310971656271938701

/-! ## A398711.P3492327834014070582

`A294076(A250286(n+1))`
-/

namespace A398711.P3492327834014070582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294076 (A250286 (n + 1)).toNat

end

end A398711.P3492327834014070582

/-! ## A398711.P9773950628604297075

`∑[A066417(5^A363128(n))]`
-/

namespace A398711.P9773950628604297075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A363128 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398711.P9773950628604297075

/-!
# A398717: Squares visited by a "Priest" (Fers + Knight) moving on a spirally numbered board always to the lowest available unvisited square.

The programs for A398717, there is no canonical definition to state claims against.
-/

/-! ## A398717.P14837710056726767002

`A399167(n+1)+A007814(A157149(n+1))`
-/

namespace A398717.P14837710056726767002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399167 (n + 1) + A007814 (A157149 (n + 1)).toNat

end

end A398717.P14837710056726767002

/-! ## A398717.P16222940135534037895

`A399167(n+1)+A007949(A299471(n+1))`
-/

namespace A398717.P16222940135534037895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399167 (n + 1) + A007949 (A299471 (n + 1)).toNat

end

end A398717.P16222940135534037895

/-! ## A398717.P3377624749028519681

`or(A399167(n+1), A400003(A399980(n+1)))`
-/

namespace A398717.P3377624749028519681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A399167 (n + 1)) (A400003 (A399980 (n + 1)).toNat)

end

end A398717.P3377624749028519681

/-! ## A398717.P2727427201373101873

`A399167(n+1)-A121373(A098859(3*n+4))`
-/

namespace A398717.P2727427201373101873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399167 (n + 1) - A121373 (A098859 (3 * n + 4)).toNat

end

end A398717.P2727427201373101873

/-! ## A398717.P10373659577979038645

`A399167(n+1)-A010815(A050409(n+2))`
-/

namespace A398717.P10373659577979038645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399167 (n + 1) - A010815 (A050409 (n + 2)).toNat

end

end A398717.P10373659577979038645

/-!
# A398718: Number of right-Euclidean relations on an n-element labeled set.

The programs for A398718, there is no canonical definition to state claims against.
-/

/-! ## A398718.P12696168248755946698

`A211862(A267367(n))`
-/

namespace A398718.P12696168248755946698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211862 (A267367 n).toNat

end

end A398718.P12696168248755946698

/-!
# A398719: Number of even words of length 2n over the positive integers such that no proper nonempty prefix is even and the letters first appear in increasing order.

The programs for A398719, there is no canonical definition to state claims against.
-/

/-! ## A398719.P3120392259387236144

`floor(∏{p}[(2*n)!, #/2]²)`
-/

namespace A398719.P3120392259387236144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / 2) ^ 2⌋

end

end A398719.P3120392259387236144

/-!
# A398722: Expansion of Pi in base sqrt(phi) where phi = (1 + sqrt(5))/2.

The programs for A398722, there is no canonical definition to state claims against.
-/

/-! ## A398722.P7730291809597098975

`A393064(A317475(n+1))`
-/

namespace A398722.P7730291809597098975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393064 (A317475 (n + 1)).toNat

end

end A398722.P7730291809597098975

/-! ## A398722.P7229329761817945543

`C(A372515(2*n+5), A181874(A057300(n)))`
-/

namespace A398722.P7229329761817945543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A372515 (2 * n + 5)).toNat (A181874 (A057300 n).toNat).toNat

end

end A398722.P7229329761817945543

/-! ## A398722.P8259617092827916342

`and(A029463(n+1), A359349(n+1))`
-/

namespace A398722.P8259617092827916342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029463 (n + 1)) (A359349 (n + 1))

end

end A398722.P8259617092827916342

/-! ## A398722.P6963713450435294332

`A185706(A049340(n+1)+A032302(n+2))`
-/

namespace A398722.P6963713450435294332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185706 (A049340 (n + 1) + A032302 (n + 2)).toNat

end

end A398722.P6963713450435294332

/-! ## A398722.P13631490415873142594

`A010057(A193179(n+2)*A290088(n+1))`
-/

namespace A398722.P13631490415873142594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A193179 (n + 2) * A290088 (n + 1)).toNat

end

end A398722.P13631490415873142594

/-!
# A398724: Number of partitions of n into parts congruent to 2, 3 or 7 (mod 8).

The programs for A398724, there is no canonical definition to state claims against.
-/

/-! ## A398724.P7449594002804020973

`abs(A131795(n))`
-/

namespace A398724.P7449594002804020973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131795 n|

end

end A398724.P7449594002804020973

/-! ## A398724.P10649434862079059275

`A033999(n)*A131795(n)`
-/

namespace A398724.P10649434862079059275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A131795 n

end

end A398724.P10649434862079059275

/-! ## A398724.P1467551869042539424

`gcd(A000038(n), A131795(n))`
-/

namespace A398724.P1467551869042539424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A131795 n)

end

end A398724.P1467551869042539424

/-! ## A398724.P7488887514779304696

`lcm(A020985(n), A131795(n))`
-/

namespace A398724.P7488887514779304696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A131795 n)

end

end A398724.P7488887514779304696

/-!
# A398726: Sum of the distinct cycle sizes over all permutations of [n].

The programs for A398726, there is no canonical definition to state claims against.
-/

/-! ## A398726.P8369379721890982818

`∑{#}[n-1, (#+1)*A293211(C(n, 2)+#+1)]`
-/

namespace A398726.P8369379721890982818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * A293211 (Nat.choose n 2 + (k + 1))

end

end A398726.P8369379721890982818

/-! ## A398726.P13228425625773579853

`A111852(A319209(n+2)+A001519(n+2))`
-/

namespace A398726.P13228425625773579853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111852 (A319209 (n + 2) + A001519 (n + 2)).toNat

end

end A398726.P13228425625773579853

/-!
# A398727: Lower (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398727, the canonical program `A398727.P4140299455966748439` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398727 has offset 0).

The definition of A398727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398727.P4140299455966748439

`ogf((3x+4x^2+2x^3+3x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398727

/-- `ogf((3x+4x^2+2x^3+3x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P4140299455966748439.Spec : Prop :=
  ∀ n, P4140299455966748439.a n = A398727 n

theorem P4140299455966748439.correct : P4140299455966748439.Spec := by
  intro n
  simp only [A398727]

end A398727

/-! ## A398727.P16389605396161258013

`floor(∑[n/2+3*n²])`
-/

namespace A398727.P16389605396161258013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (3 * n ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A398727.P16389605396161258013

namespace A398727

/-- `floor(∑[n/2+3*n²])` -/
def P16389605396161258013.Spec : Prop :=
  ∀ n, P16389605396161258013.a n = A398727 n

end A398727

/-! ## A398727.P16946313588813141005

`A397984(n)+n^3`
-/

namespace A398727.P16946313588813141005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397984 n + (n ^ 3 : ℤ)

end

end A398727.P16946313588813141005

namespace A398727

/-- `A397984(n)+n^3` -/
def P16946313588813141005.Spec : Prop :=
  ∀ n, P16946313588813141005.a n = A398727 n

end A398727

/-! ## A398727.P9881287324889272107

`A398665(n)+∑[n²]`
-/

namespace A398727.P9881287324889272107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398665 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398727.P9881287324889272107

namespace A398727

/-- `A398665(n)+∑[n²]` -/
def P9881287324889272107.Spec : Prop :=
  ∀ n, P9881287324889272107.a n = A398727 n

end A398727

/-! ## A398727.P16609016168998502646

`A231559(n)+A027444(n)`
-/

namespace A398727.P16609016168998502646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231559 n + A027444 n

end

end A398727.P16609016168998502646

namespace A398727

/-- `A231559(n)+A027444(n)` -/
def P16609016168998502646.Spec : Prop :=
  ∀ n, P16609016168998502646.a n = A398727 n

end A398727

/-! ## A398727.P9676185655668598163

`A281026(n)+A011379(n)`
-/

namespace A398727.P9676185655668598163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + A011379 n

end

end A398727.P9676185655668598163

namespace A398727

/-- `A281026(n)+A011379(n)` -/
def P9676185655668598163.Spec : Prop :=
  ∀ n, P9676185655668598163.a n = A398727 n

end A398727

/-! ## A398727.P8909854852406654801

`A398657(n)+A002411(n)`
-/

namespace A398727.P8909854852406654801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398657 n + A002411 n

end

end A398727.P8909854852406654801

namespace A398727

/-- `A398657(n)+A002411(n)` -/
def P8909854852406654801.Spec : Prop :=
  ∀ n, P8909854852406654801.a n = A398727 n

end A398727

/-! ## A398727.P5612980709712470246

`A398663(n)+A002412(n)`
-/

namespace A398727.P5612980709712470246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398663 n + A002412 n

end

end A398727.P5612980709712470246

namespace A398727

/-- `A398663(n)+A002412(n)` -/
def P5612980709712470246.Spec : Prop :=
  ∀ n, P5612980709712470246.a n = A398727 n

end A398727

/-! ## A398727.P11010452805995335335

`A398661(n)+A006331(n)`
-/

namespace A398727.P11010452805995335335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + A006331 n

end

end A398727.P11010452805995335335

namespace A398727

/-- `A398661(n)+A006331(n)` -/
def P11010452805995335335.Spec : Prop :=
  ∀ n, P11010452805995335335.a n = A398727 n

end A398727

/-! ## A398727.P17237431682178342075

`A398852(n)+A034262(n)`
-/

namespace A398727.P17237431682178342075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398852 n + A034262 n

end

end A398727.P17237431682178342075

namespace A398727

/-- `A398852(n)+A034262(n)` -/
def P17237431682178342075.Spec : Prop :=
  ∀ n, P17237431682178342075.a n = A398727 n

end A398727

/-! ## A398727.P13552984582032713981

`A301711(n)+A153257(n)`
-/

namespace A398727.P13552984582032713981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301711 n + A153257 n

end

end A398727.P13552984582032713981

namespace A398727

/-- `A301711(n)+A153257(n)` -/
def P13552984582032713981.Spec : Prop :=
  ∀ n, P13552984582032713981.a n = A398727 n

end A398727

/-! ## A398727.P10809656951872580561

`A398729(n)+A162148(n)`
-/

namespace A398727.P10809656951872580561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398729 n + A162148 n

end

end A398727.P10809656951872580561

namespace A398727

/-- `A398729(n)+A162148(n)` -/
def P10809656951872580561.Spec : Prop :=
  ∀ n, P10809656951872580561.a n = A398727 n

end A398727

/-! ## A398727.P12780330095528504700

`A051895(n)-A398728(n)`
-/

namespace A398727.P12780330095528504700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n - A398728 n

end

end A398727.P12780330095528504700

namespace A398727

/-- `A051895(n)-A398728(n)` -/
def P12780330095528504700.Spec : Prop :=
  ∀ n, P12780330095528504700.a n = A398727 n

end A398727

/-! ## A398727.P14543263773313672062

`A064043(n)-A398843(n)`
-/

namespace A398727.P14543263773313672062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064043 n - A398843 n

end

end A398727.P14543263773313672062

namespace A398727

/-- `A064043(n)-A398843(n)` -/
def P14543263773313672062.Spec : Prop :=
  ∀ n, P14543263773313672062.a n = A398727 n

end A398727

/-! ## A398727.P11269406174231184720

`A245301(n)-A398652(n)`
-/

namespace A398727.P11269406174231184720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245301 n - A398652 n

end

end A398727.P11269406174231184720

namespace A398727

/-- `A245301(n)-A398652(n)` -/
def P11269406174231184720.Spec : Prop :=
  ∀ n, P11269406174231184720.a n = A398727 n

end A398727

/-! ## A398727.P3771698928881913178

`A255211(n)-A398730(n)`
-/

namespace A398727.P3771698928881913178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n - A398730 n

end

end A398727.P3771698928881913178

namespace A398727

/-- `A255211(n)-A398730(n)` -/
def P3771698928881913178.Spec : Prop :=
  ∀ n, P3771698928881913178.a n = A398727 n

end A398727

/-! ## A398727.P5156436000328098377

`A331987(n)-A398662(n)`
-/

namespace A398727.P5156436000328098377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A398662 n

end

end A398727.P5156436000328098377

namespace A398727

/-- `A331987(n)-A398662(n)` -/
def P5156436000328098377.Spec : Prop :=
  ∀ n, P5156436000328098377.a n = A398727 n

end A398727

/-! ## A398727.P1393568258471068839

`A135036(n+1)-A398664(n)`
-/

namespace A398727.P1393568258471068839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135036 (n + 1) - A398664 n

end

end A398727.P1393568258471068839

namespace A398727

/-- `A135036(n+1)-A398664(n)` -/
def P1393568258471068839.Spec : Prop :=
  ∀ n, P1393568258471068839.a n = A398727 n

end A398727

/-! ## A398727.P2329913096661806856

`A144945(n+1)-A398666(n)`
-/

namespace A398727.P2329913096661806856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (n + 1) - A398666 n

end

end A398727.P2329913096661806856

namespace A398727

/-- `A144945(n+1)-A398666(n)` -/
def P2329913096661806856.Spec : Prop :=
  ∀ n, P2329913096661806856.a n = A398727 n

end A398727

/-! ## A398727.P10145135735043349426

`A398661(n)+A000330(n)+A000330(n)`
-/

namespace A398727.P10145135735043349426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398661 n + A000330 n + A000330 n

end

end A398727.P10145135735043349426

namespace A398727

/-- `A398661(n)+A000330(n)+A000330(n)` -/
def P10145135735043349426.Spec : Prop :=
  ∀ n, P10145135735043349426.a n = A398727 n

end A398727

/-!
# A398728: Upper (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398728, the canonical program `A398728.P18424042664954230036` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398728 has offset 0).

The definition of A398728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398728.P18424042664954230036

`ogf((4x+x^2+5x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398728

/-- `ogf((4x+x^2+5x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P18424042664954230036.Spec : Prop :=
  ∀ n, P18424042664954230036.a n = A398728 n

theorem P18424042664954230036.correct : P18424042664954230036.Spec := by
  intro n
  simp only [A398728]

end A398728

/-! ## A398728.P5225376407315214958

`ceil(∑[(6*n+1)*n]/2)`
-/

namespace A398728.P5225376407315214958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (6 * n + 1) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌉

end

end A398728.P5225376407315214958

namespace A398728

/-- `ceil(∑[(6*n+1)*n]/2)` -/
def P5225376407315214958.Spec : Prop :=
  ∀ n, P5225376407315214958.a n = A398728 n

end A398728

/-! ## A398728.P15705528160129535938

`A397985(n)+n^3`
-/

namespace A398728.P15705528160129535938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397985 n + (n ^ 3 : ℤ)

end

end A398728.P15705528160129535938

namespace A398728

/-- `A397985(n)+n^3` -/
def P15705528160129535938.Spec : Prop :=
  ∀ n, P15705528160129535938.a n = A398728 n

end A398728

/-! ## A398728.P14425222985355534545

`A398666(n)+∑[n²]`
-/

namespace A398728.P14425222985355534545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398666 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A398728.P14425222985355534545

namespace A398728

/-- `A398666(n)+∑[n²]` -/
def P14425222985355534545.Spec : Prop :=
  ∀ n, P14425222985355534545.a n = A398728 n

end A398728

/-! ## A398728.P4502078465387579311

`A398658(n)+n²*(n+1)/2`
-/

namespace A398728.P4502078465387579311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398658 n : ℚ) + (n ^ 2 * (n + 1) : ℚ) / 2

end

end A398728.P4502078465387579311

namespace A398728

/-- `A398658(n)+n²*(n+1)/2` -/
def P4502078465387579311.Spec : Prop :=
  ∀ n, P4502078465387579311.a n = (A398728 n : ℚ)

end A398728

/-! ## A398728.P13658296161407716770

`A059270(n)+∑[A004525(n)]`
-/

namespace A398728.P13658296161407716770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398728.P13658296161407716770

namespace A398728

/-- `A059270(n)+∑[A004525(n)]` -/
def P13658296161407716770.Spec : Prop :=
  ∀ n, P13658296161407716770.a n = A398728 n

end A398728

/-! ## A398728.P8121735985498177144

`∑[A056108(n)-A004525(n+2)]`
-/

namespace A398728.P8121735985498177144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056108 n - A004525 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398728.P8121735985498177144

namespace A398728

/-- `∑[A056108(n)-A004525(n+2)]` -/
def P8121735985498177144.Spec : Prop :=
  ∀ n, P8121735985498177144.a n = A398728 n

end A398728

/-! ## A398728.P17404129623411848124

`∑[A049450(n)+A004524(3*n+1)]`
-/

namespace A398728.P17404129623411848124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049450 n + A004524 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398728.P17404129623411848124

namespace A398728

/-- `∑[A049450(n)+A004524(3*n+1)]` -/
def P17404129623411848124.Spec : Prop :=
  ∀ n, P17404129623411848124.a n = A398728 n

end A398728

/-!
# A398729: Lower (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398729, the canonical program `A398729.P3114746797043780686` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398729 has offset 0).

The definition of A398729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398729.P3114746797043780686

`floor(∑[n²/2-n])`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398729

/-- `floor(∑[n²/2-n])` -/
def P3114746797043780686.Spec : Prop :=
  ∀ n, P3114746797043780686.a n = A398729 n

theorem P3114746797043780686.correct : P3114746797043780686.Spec := by
  intro n
  simp only [A398729]

end A398729

/-! ## A398729.P5647338901230435807

`∑[∑[n-gcd(2, a(n-1))]]` with `a(0)=0`
-/

namespace A398729.P5647338901230435807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (n : ℤ) - (Int.gcd 2 (f2 (n - 1)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398729.P5647338901230435807

namespace A398729

/-- `∑[∑[n-gcd(2, a(n-1))]]` -/
def P5647338901230435807.Spec : Prop :=
  ∀ n, P5647338901230435807.a n = A398729 n

end A398729

/-! ## A398729.P7687544692751857334

`∑[∑[∑[gcd(4, n)%4]]-2*n]`
-/

namespace A398729.P7687544692751857334
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398729.P7687544692751857334

namespace A398729

/-- `∑[∑[∑[gcd(4, n)%4]]-2*n]` -/
def P7687544692751857334.Spec : Prop :=
  ∀ n, P7687544692751857334.a n = A398729 n

end A398729

/-! ## A398729.P1693138756326386449

`∑[C(n, 2)-(floor(n/4)+ceil(n/4))]`
-/

namespace A398729.P1693138756326386449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398729.P1693138756326386449

namespace A398729

/-- `∑[C(n, 2)-(floor(n/4)+ceil(n/4))]` -/
def P1693138756326386449.Spec : Prop :=
  ∀ n, P1693138756326386449.a n = A398729 n

end A398729

/-! ## A398729.P6463879836666721609

`∑[n²]-A398652(n)`
-/

namespace A398729.P6463879836666721609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A398652 n

end

end A398729.P6463879836666721609

namespace A398729

/-- `∑[n²]-A398652(n)` -/
def P6463879836666721609.Spec : Prop :=
  ∀ n, P6463879836666721609.a n = A398729 n

end A398729

/-! ## A398729.P12152328765807801872

`A398651(n)-(n²+n)`
-/

namespace A398729.P12152328765807801872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398651 n - (n ^ 2 + n : ℤ)

end

end A398729.P12152328765807801872

namespace A398729

/-- `A398651(n)-(n²+n)` -/
def P12152328765807801872.Spec : Prop :=
  ∀ n, P12152328765807801872.a n = A398729 n

end A398729

/-! ## A398729.P18319763667515491185

`A212964(n)-A110655(n)`
-/

namespace A398729.P18319763667515491185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n - A110655 n

end

end A398729.P18319763667515491185

namespace A398729

/-- `A212964(n)-A110655(n)` -/
def P18319763667515491185.Spec : Prop :=
  ∀ n, P18319763667515491185.a n = A398729 n

end A398729

/-! ## A398729.P9811714460328151467

`A005581(n)-A340648(n)`
-/

namespace A398729.P9811714460328151467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n - A340648 n

end

end A398729.P9811714460328151467

namespace A398729

/-- `A005581(n)-A340648(n)` -/
def P9811714460328151467.Spec : Prop :=
  ∀ n, P9811714460328151467.a n = A398729 n

end A398729

/-! ## A398729.P3363569682962782796

`A002411(n)-A398662(n)`
-/

namespace A398729.P3363569682962782796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A398662 n

end

end A398729.P3363569682962782796

namespace A398729

/-- `A002411(n)-A398662(n)` -/
def P3363569682962782796.Spec : Prop :=
  ∀ n, P3363569682962782796.a n = A398729 n

end A398729

/-! ## A398729.P12870914718273598378

`A006002(n)-A398664(n)`
-/

namespace A398729.P12870914718273598378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - A398664 n

end

end A398729.P12870914718273598378

namespace A398729

/-- `A006002(n)-A398664(n)` -/
def P12870914718273598378.Spec : Prop :=
  ∀ n, P12870914718273598378.a n = A398729 n

end A398729

/-! ## A398729.P9672657092060992095

`A006331(n)-A398658(n)`
-/

namespace A398729.P9672657092060992095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A398658 n

end

end A398729.P9672657092060992095

namespace A398729

/-- `A006331(n)-A398658(n)` -/
def P9672657092060992095.Spec : Prop :=
  ∀ n, P9672657092060992095.a n = A398729 n

end A398729

/-! ## A398729.P10803114326159099480

`A398663(n)-A006503(n)`
-/

namespace A398729.P10803114326159099480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398663 n - A006503 n

end

end A398729.P10803114326159099480

namespace A398729

/-- `A398663(n)-A006503(n)` -/
def P10803114326159099480.Spec : Prop :=
  ∀ n, P10803114326159099480.a n = A398729 n

end A398729

/-! ## A398729.P15768939670527623653

`A398665(n)-A027480(n)`
-/

namespace A398729.P15768939670527623653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398665 n - A027480 n

end

end A398729.P15768939670527623653

namespace A398729

/-- `A398665(n)-A027480(n)` -/
def P15768939670527623653.Spec : Prop :=
  ∀ n, P15768939670527623653.a n = A398729 n

end A398729

/-! ## A398729.P880792066575596414

`A398727(n)-A162148(n)`
-/

namespace A398729.P880792066575596414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398727 n - A162148 n

end

end A398729.P880792066575596414

namespace A398729

/-- `A398727(n)-A162148(n)` -/
def P880792066575596414.Spec : Prop :=
  ∀ n, P880792066575596414.a n = A398729 n

end A398729

/-! ## A398729.P616158770663408542

`A255211(n)-A398728(n)`
-/

namespace A398729.P616158770663408542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n - A398728 n

end

end A398729.P616158770663408542

namespace A398729

/-- `A255211(n)-A398728(n)` -/
def P616158770663408542.Spec : Prop :=
  ∀ n, P616158770663408542.a n = A398729 n

end A398729

/-! ## A398729.P407026249924026241

`2*A000330(n)-A398658(n)`
-/

namespace A398729.P407026249924026241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000330 n - A398658 n

end

end A398729.P407026249924026241

namespace A398729

/-- `2*A000330(n)-A398658(n)` -/
def P407026249924026241.Spec : Prop :=
  ∀ n, P407026249924026241.a n = A398729 n

end A398729

/-! ## A398729.P2997508449230546541

`A391537(n+1)-A081498(n+1)`
-/

namespace A398729.P2997508449230546541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391537 (n + 1) - A081498 (n + 1)

end

end A398729.P2997508449230546541

namespace A398729

/-- `A391537(n+1)-A081498(n+1)` -/
def P2997508449230546541.Spec : Prop :=
  ∀ n, P2997508449230546541.a n = A398729 n

end A398729

/-! ## A398729.P16704701251168845147

`A398657(n)-A051925(n+1)`
-/

namespace A398729.P16704701251168845147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398657 n - A051925 (n + 1)

end

end A398729.P16704701251168845147

namespace A398729

/-- `A398657(n)-A051925(n+1)` -/
def P16704701251168845147.Spec : Prop :=
  ∀ n, P16704701251168845147.a n = A398729 n

end A398729

/-! ## A398729.P5554986647794482261

`A011886(n+1)-A390342(n+1)`
-/

namespace A398729.P5554986647794482261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (n + 1) - A390342 (n + 1)

end

end A398729.P5554986647794482261

namespace A398729

/-- `A011886(n+1)-A390342(n+1)` -/
def P5554986647794482261.Spec : Prop :=
  ∀ n, P5554986647794482261.a n = A398729 n

end A398729

/-! ## A398729.P8609695453053738446

`A011886(n+1)+A000292(n)-A390343(n+1)`
-/

namespace A398729.P8609695453053738446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 (n + 1) + A000292 n - A390343 (n + 1)

end

end A398729.P8609695453053738446

namespace A398729

/-- `A011886(n+1)+A000292(n)-A390343(n+1)` -/
def P8609695453053738446.Spec : Prop :=
  ∀ n, P8609695453053738446.a n = A398729 n

end A398729

/-!
# A398730: Upper (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398730, the canonical program `A398730.P14531345402756718380` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398730 has offset 0).

The definition of A398730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398730.P14531345402756718380

`ogf((x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398730

/-- `ogf((x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P14531345402756718380.Spec : Prop :=
  ∀ n, P14531345402756718380.a n = A398730 n

theorem P14531345402756718380.correct : P14531345402756718380.Spec := by
  intro n
  simp only [A398730]

end A398730

/-! ## A398730.P10485337616937206117

`ceil(∑[n²/2-n])`
-/

namespace A398730.P10485337616937206117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398730.P10485337616937206117

namespace A398730

/-- `ceil(∑[n²/2-n])` -/
def P10485337616937206117.Spec : Prop :=
  ∀ n, P10485337616937206117.a n = A398730 n

end A398730

/-! ## A398730.P16472132466089554090

`∑[(n-2)²-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A398730.P16472132466089554090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ((n : ℤ) - 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398730.P16472132466089554090

namespace A398730

/-- `∑[(n-2)²-a(n-2)]` -/
def P16472132466089554090.Spec : Prop :=
  ∀ n, P16472132466089554090.a n = A398730 n

end A398730

/-! ## A398730.P5282389700665911371

`∑[∑[a(n-4)+4]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A398730.P5282389700665911371
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n f2 =>
  f2 (n - 4) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398730.P5282389700665911371

namespace A398730

/-- `∑[∑[a(n-4)+4]]` -/
def P5282389700665911371.Spec : Prop :=
  ∀ n, (P5282389700665911371.a n : ℤ) = A398730 n

end A398730

/-! ## A398730.P890381813681087145

`∑[∑[∑[2-a(n-2)]]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A398730.P890381813681087145
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f3 =>
  2 - f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398730.P890381813681087145

namespace A398730

/-- `∑[∑[∑[2-a(n-2)]]]` -/
def P890381813681087145.Spec : Prop :=
  ∀ n, P890381813681087145.a n = A398730 n

end A398730

/-! ## A398730.P9412450719463428460

`∑[n²-A194274(n)]`
-/

namespace A398730.P9412450719463428460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A194274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398730.P9412450719463428460

namespace A398730

/-- `∑[n²-A194274(n)]` -/
def P9412450719463428460.Spec : Prop :=
  ∀ n, P9412450719463428460.a n = A398730 n

end A398730

/-! ## A398730.P6235366694329910307

`∑[n²]-A398651(n)`
-/

namespace A398730.P6235366694329910307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A398651 n

end

end A398730.P6235366694329910307

namespace A398730

/-- `∑[n²]-A398651(n)` -/
def P6235366694329910307.Spec : Prop :=
  ∀ n, P6235366694329910307.a n = A398730 n

end A398730

/-! ## A398730.P626421548663975017

`A398652(n)-(n²+n)`
-/

namespace A398730.P626421548663975017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398652 n - (n ^ 2 + n : ℤ)

end

end A398730.P626421548663975017

namespace A398730

/-- `A398652(n)-(n²+n)` -/
def P626421548663975017.Spec : Prop :=
  ∀ n, P626421548663975017.a n = A398730 n

end A398730

/-! ## A398730.P10692762411131506858

`A398651(A289207(n))`
-/

namespace A398730.P10692762411131506858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398651 (A289207 n).toNat

end

end A398730.P10692762411131506858

namespace A398730

/-- `A398651(A289207(n))` -/
def P10692762411131506858.Spec : Prop :=
  ∀ n, P10692762411131506858.a n = A398730 n

end A398730

/-! ## A398730.P2494852697507375150

`A005581(n)-A231559(n)`
-/

namespace A398730.P2494852697507375150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n - A231559 n

end

end A398730.P2494852697507375150

namespace A398730

/-- `A005581(n)-A231559(n)` -/
def P2494852697507375150.Spec : Prop :=
  ∀ n, P2494852697507375150.a n = A398730 n

end A398730

/-! ## A398730.P17581452026395524617

`A000292(n)-A281026(n)`
-/

namespace A398730.P17581452026395524617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - A281026 n

end

end A398730.P17581452026395524617

namespace A398730

/-- `A000292(n)-A281026(n)` -/
def P17581452026395524617.Spec : Prop :=
  ∀ n, P17581452026395524617.a n = A398730 n

end A398730

/-! ## A398730.P12391365640868368759

`A002411(n)-A398661(n)`
-/

namespace A398730.P12391365640868368759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n - A398661 n

end

end A398730.P12391365640868368759

namespace A398730

/-- `A002411(n)-A398661(n)` -/
def P12391365640868368759.Spec : Prop :=
  ∀ n, P12391365640868368759.a n = A398730 n

end A398730

/-! ## A398730.P1329426128515569301

`A006002(n)-A398663(n)`
-/

namespace A398730.P1329426128515569301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n - A398663 n

end

end A398730.P1329426128515569301

namespace A398730

/-- `A006002(n)-A398663(n)` -/
def P1329426128515569301.Spec : Prop :=
  ∀ n, P1329426128515569301.a n = A398730 n

end A398730

/-! ## A398730.P9870431410309642109

`A006331(n)-A398657(n)`
-/

namespace A398730.P9870431410309642109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n - A398657 n

end

end A398730.P9870431410309642109

namespace A398730

/-- `A006331(n)-A398657(n)` -/
def P9870431410309642109.Spec : Prop :=
  ∀ n, P9870431410309642109.a n = A398730 n

end A398730

/-! ## A398730.P14992566920549601927

`A398664(n)-A006503(n)`
-/

namespace A398730.P14992566920549601927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398664 n - A006503 n

end

end A398730.P14992566920549601927

namespace A398730

/-- `A398664(n)-A006503(n)` -/
def P14992566920549601927.Spec : Prop :=
  ∀ n, P14992566920549601927.a n = A398730 n

end A398730

/-! ## A398730.P9862478087609142424

`A398666(n)-A027480(n)`
-/

namespace A398730.P9862478087609142424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398666 n - A027480 n

end

end A398730.P9862478087609142424

namespace A398730

/-- `A398666(n)-A027480(n)` -/
def P9862478087609142424.Spec : Prop :=
  ∀ n, P9862478087609142424.a n = A398730 n

end A398730

/-! ## A398730.P17591252300987511447

`A398728(n)-A162148(n)`
-/

namespace A398730.P17591252300987511447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398728 n - A162148 n

end

end A398730.P17591252300987511447

namespace A398730

/-- `A398728(n)-A162148(n)` -/
def P17591252300987511447.Spec : Prop :=
  ∀ n, P17591252300987511447.a n = A398730 n

end A398730

/-! ## A398730.P5030469519547041888

`A255211(n)-A398727(n)`
-/

namespace A398730.P5030469519547041888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255211 n - A398727 n

end

end A398730.P5030469519547041888

namespace A398730

/-- `A255211(n)-A398727(n)` -/
def P5030469519547041888.Spec : Prop :=
  ∀ n, P5030469519547041888.a n = A398730 n

end A398730

/-! ## A398730.P14636046051578126030

`A000125(n)-A391537(n+1)`
-/

namespace A398730.P14636046051578126030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n - A391537 (n + 1)

end

end A398730.P14636046051578126030

namespace A398730

/-- `A000125(n)-A391537(n+1)` -/
def P14636046051578126030.Spec : Prop :=
  ∀ n, P14636046051578126030.a n = A398730 n

end A398730

/-! ## A398730.P8474258606461250093

`2*A000330(n)-A398657(n)`
-/

namespace A398730.P8474258606461250093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000330 n - A398657 n

end

end A398730.P8474258606461250093

namespace A398730

/-- `2*A000330(n)-A398657(n)` -/
def P8474258606461250093.Spec : Prop :=
  ∀ n, P8474258606461250093.a n = A398730 n

end A398730

/-!
# A398781: If k appears, 6*k does not.

The programs for A398781, there is no canonical definition to state claims against.
-/

/-! ## A398781.P8887142572417841680

`∑[runs[A020657(n+1)%2]]`
-/

namespace A398781.P8887142572417841680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020657 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398781.P8887142572417841680

/-! ## A398781.P15638358566018215272

`comp[6*A032741(A047791(n+1))]`
-/

namespace A398781.P15638358566018215272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A032741 (A047791 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398781.P15638358566018215272

/-! ## A398781.P17624934574539485378

`lt[A005169(A276094(n)), A115728(n)]`
-/

namespace A398781.P17624934574539485378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (A276094 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398781.P17624934574539485378

/-! ## A398781.P13451138594398434630

`lt[A000007(n), A156542(A167614(2*n+3))]`
-/

namespace A398781.P13451138594398434630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (A167614 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398781.P13451138594398434630

/-! ## A398781.P2882014322080618552

`lt[A000038(n), A156542(A167614(2*n+3))]`
-/

namespace A398781.P2882014322080618552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156542 (A167614 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398781.P2882014322080618552

/-! ## A398781.P5305896400033171778

`comp[6*comp[A239394(A042289(n))]]`
-/

namespace A398781.P5305896400033171778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239394 (A042289 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A398781.P5305896400033171778

/-! ## A398781.P7519521103822282055

`lt[A264756(n+3), A209320(A110660(3*(n+1)))]`
-/

namespace A398781.P7519521103822282055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264756 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209320 (A110660 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398781.P7519521103822282055

/-! ## A398781.P7920270045685936492

`lt[A263501(n+3), A034821(A325836(n))]`
-/

namespace A398781.P7920270045685936492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263501 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034821 (A325836 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398781.P7920270045685936492

/-! ## A398781.P9702304786073981757

`comp[A143427((n+1)²)]+1`
-/

namespace A398781.P9702304786073981757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143427 ((n + 1) ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A398781.P9702304786073981757

/-! ## A398781.P9279168562587200796

`comp[A007528(A400928(n))]+1`
-/

namespace A398781.P9279168562587200796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (A400928 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A398781.P9279168562587200796

/-!
# A398784: Number of integer partitions whose Bridge-and-Torch optimum crossing time is n.

The programs for A398784, there is no canonical definition to state claims against.
-/

/-! ## A398784.P16467921556447093946

`A204562(A022498(n+1))`
-/

namespace A398784.P16467921556447093946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204562 (A022498 (n + 1)).toNat

end

end A398784.P16467921556447093946

/-! ## A398784.P16236516868394225653

`A276611(A001792(n+1))`
-/

namespace A398784.P16236516868394225653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A001792 (n + 1)).toNat

end

end A398784.P16236516868394225653

/-! ## A398784.P14881907175205920929

`A276611(A132750(n+1))`
-/

namespace A398784.P14881907175205920929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A132750 (n + 1)).toNat

end

end A398784.P14881907175205920929

/-! ## A398784.P13367172791699911029

`A360924(A285446(n+1))`
-/

namespace A398784.P13367172791699911029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (A285446 (n + 1)).toNat

end

end A398784.P13367172791699911029

/-! ## A398784.P1589609914545711879

`A276611(A143099(n+2))`
-/

namespace A398784.P1589609914545711879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A143099 (n + 2)).toNat

end

end A398784.P1589609914545711879

/-!
# A398787: Even numbers m such that A001221(m) >= 3 and A001222(m) = A001221(m) + 1.

The programs for A398787, the canonical program `A398787.P8559661131929552719` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398787 has offset 1).

The definition of A398787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398787.P8559661131929552719

`∩[2*n, A398316(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A398787

/-- `∩[2*n, A398316(n+1)]` -/
def P8559661131929552719.Spec : Prop :=
  ∀ n, (P8559661131929552719.a n : ℤ) = A398787 (n + 1)

theorem P8559661131929552719.correct : P8559661131929552719.Spec := by
  intro n
  simp only [A398787, Nat.add_sub_cancel]

end A398787

/-! ## A398787.P14339604873572061355

`filter[A398316(n+1), A354034(#)]`
-/

namespace A398787.P14339604873572061355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A398787.P14339604873572061355

namespace A398787

/-- `filter[A398316(n+1), A354034(#)]` -/
def P14339604873572061355.Spec : Prop :=
  ∀ n, P14339604873572061355.a n = A398787 (n + 1)

end A398787

/-! ## A398787.P689844026202015117

`filter[A398316(n+1), A059841(#)]`
-/

namespace A398787.P689844026202015117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A398787.P689844026202015117

namespace A398787

/-- `filter[A398316(n+1), A059841(#)]` -/
def P689844026202015117.Spec : Prop :=
  ∀ n, P689844026202015117.a n = A398787 (n + 1)

end A398787

/-! ## A398787.P10415786346415827115

`filter[A398316(n+1), A135528(#)]`
-/

namespace A398787.P10415786346415827115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A398787.P10415786346415827115

namespace A398787

/-- `filter[A398316(n+1), A135528(#)]` -/
def P10415786346415827115.Spec : Prop :=
  ∀ n, P10415786346415827115.a n = A398787 (n + 1)

end A398787

/-! ## A398787.P1467300403811722746

`filter[A398316(n+1), A266591(#)]`
-/

namespace A398787.P1467300403811722746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A398787.P1467300403811722746

namespace A398787

/-- `filter[A398316(n+1), A266591(#)]` -/
def P1467300403811722746.Spec : Prop :=
  ∀ n, P1467300403811722746.a n = A398787 (n + 1)

end A398787

/-! ## A398787.P12745680007642242135

`filter[A398316(n+1), A267043(#)]`
-/

namespace A398787.P12745680007642242135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A398787.P12745680007642242135

namespace A398787

/-- `filter[A398316(n+1), A267043(#)]` -/
def P12745680007642242135.Spec : Prop :=
  ∀ n, P12745680007642242135.a n = A398787 (n + 1)

end A398787

/-!
# A398788: Minimum number of rainbow spanning trees of K_n, over all JL-colorings.

The programs for A398788, there is no canonical definition to state claims against.
-/

/-! ## A398788.P3699983882469378203

`A386912(n+2)/(n+2)`
-/

namespace A398788.P3699983882469378203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386912 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A398788.P3699983882469378203

/-! ## A398788.P6810142644009714902

`A342126(A125094(n+1))`
-/

namespace A398788.P6810142644009714902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342126 (A125094 (n + 1)).toNat

end

end A398788.P6810142644009714902

/-! ## A398788.P1004360951517515167

`A325762(A006544(n+1))`
-/

namespace A398788.P1004360951517515167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (A006544 (n + 1)).toNat

end

end A398788.P1004360951517515167

/-! ## A398788.P7192363623645442473

`A064527(A392511(n+1))`
-/

namespace A398788.P7192363623645442473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (A392511 (n + 1)).toNat

end

end A398788.P7192363623645442473

/-!
# A398790: Number of ways to tile a 1 X n strip using tiles of length 1 or 2, each tile colored red or blue, such that no two red tiles are adjacent.

The programs for A398790, the canonical program `A398790.P7603610696032174352` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398790 has offset 0).

The definition of A398790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398790.P7603610696032174352

`ogf((1+x+x^2)/(1-x-2x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A398790

/-- `ogf((1+x+x^2)/(1-x-2x^2-2x^3-x^4))` -/
def P7603610696032174352.Spec : Prop :=
  ∀ n, P7603610696032174352.a n = A398790 n

theorem P7603610696032174352.correct : P7603610696032174352.Spec := by
  intro n
  simp only [A398790]

end A398790

/-! ## A398790.P9575533797126248435

`a(n-1)+2*a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11`
-/

namespace A398790.P9575533797126248435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5, 11] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A398790.P9575533797126248435

namespace A398790

/-- `a(n-1)+2*a(n-2)+2*a(n-3)+a(n-4)` -/
def P9575533797126248435.Spec : Prop :=
  ∀ n, (P9575533797126248435.a n : ℤ) = A398790 n

end A398790

/-! ## A398790.P14710319938074329529

`round(ϕ*(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A398790.P14710319938074329529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) + a (n - 2) : ℝ))

end

end A398790.P14710319938074329529

namespace A398790

/-- `round(ϕ*(a(n-1)+a(n-2)))` -/
def P14710319938074329529.Spec : Prop :=
  ∀ n, P14710319938074329529.a n = A398790 n

end A398790

/-! ## A398790.P11223617954036485852

`record[Δ[A005908(n)]]`
-/

namespace A398790.P11223617954036485852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398790.P11223617954036485852

namespace A398790

/-- `record[Δ[A005908(n)]]` -/
def P11223617954036485852.Spec : Prop :=
  ∀ n, P11223617954036485852.a n = A398790 n

end A398790

/-! ## A398790.P4302465180702977973

`Δ[A005908(n+2)]`
-/

namespace A398790.P4302465180702977973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398790.P4302465180702977973

namespace A398790

/-- `Δ[A005908(n+2)]` -/
def P4302465180702977973.Spec : Prop :=
  ∀ n, P4302465180702977973.a n = A398790 n

end A398790

/-!
# A398792: Number of values 0 <= r < 2^n such that the trajectories of r and r+1 under the Collatz map f (A014682), satisfy f^(n)(r) = f^(n)(r+1) and contain the same number of odd terms among the first n iterates.

The programs for A398792, there is no canonical definition to state claims against.
-/

/-! ## A398792.P17859639958310369930

`A000006(A050383(n+1))-1`
-/

namespace A398792.P17859639958310369930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A050383 (n + 1)).toNat - 1

end

end A398792.P17859639958310369930

/-! ## A398792.P7508574920432914077

`A000225(n)-A135664(A091468(n+1))`
-/

namespace A398792.P7508574920432914077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A135664 (A091468 (n + 1)).toNat

end

end A398792.P7508574920432914077

/-! ## A398792.P11482572246464482029

`Δ[A089074(n)]-A090106(A129632(n+1))`
-/

namespace A398792.P11482572246464482029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A090106 (A129632 (n + 1)).toNat

end

end A398792.P11482572246464482029

/-!
# A398793: Number of residues r mod 2^(n+1) such that r and r+1 have the same image and the same number of odd terms after n+1 iterations of the Collatz map (A014682) and such that r mod 2^n does not already have this property at level n.

The programs for A398793, there is no canonical definition to state claims against.
-/

/-! ## A398793.P9657285030029017106

`A398792(n+2)-2*A398792(n+1)`
-/

namespace A398793.P9657285030029017106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398792 (n + 2) - 2 * A398792 (n + 1)

end

end A398793.P9657285030029017106

/-! ## A398793.P17392195494578831457

`Δ[A398792(n+1)]-A398792(n+1)`
-/

namespace A398793.P17392195494578831457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A398792 (n + 1)

end

end A398793.P17392195494578831457

/-!
# A398795: Number of values 0 <= r < 2^n such that the trajectories of r and r+1 under the map f(x) = x/2 for x even, (7*x+1)/2 for x odd, satisfy f^(n)(r) = f^(n)(r+1) and contain the same number of odd terms among the first n iterates.

The programs for A398795, there is no canonical definition to state claims against.
-/

/-! ## A398795.P18347968971732897677

`∑[A135661(A289604(n)+A000217(n+1))]`
-/

namespace A398795.P18347968971732897677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A289604 n + A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398795.P18347968971732897677

/-! ## A398795.P14962353830398318941

`A095861(A054515(n))`
-/

namespace A398795.P14962353830398318941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A054515 n).toNat

end

end A398795.P14962353830398318941

/-! ## A398795.P6232891825325978097

`A124196(A035055(n))`
-/

namespace A398795.P6232891825325978097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124196 (A035055 n).toNat

end

end A398795.P6232891825325978097

/-! ## A398795.P8909580031407015906

`A085141(A144035(n))`
-/

namespace A398795.P8909580031407015906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A144035 n).toNat

end

end A398795.P8909580031407015906

/-! ## A398795.P10324864303875444213

`A135661(A100446(n))`
-/

namespace A398795.P10324864303875444213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A100446 n).toNat

end

end A398795.P10324864303875444213


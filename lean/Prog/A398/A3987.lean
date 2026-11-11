import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C050
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C003
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C014
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

/-! ## A398705.P5306651383051897006

`lcm(A000005(A340355(n)), A017666(n+1))`
-/

namespace A398705.P5306651383051897006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A340355 n).toNat) (A017666 (n + 1))

end

end A398705.P5306651383051897006

/-! ## A398705.P9044104779775982413

`A398699(n+1)-A308975(A121412(n+1))`
-/

namespace A398705.P9044104779775982413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398699 (n + 1) - A308975 (A121412 (n + 1)).toNat

end

end A398705.P9044104779775982413

/-! ## A398705.P9479564228744456853

`A398699(n+1)/A384877(A068677(n+1))`
-/

namespace A398705.P9479564228744456853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A398699 (n + 1) : ℚ) / (A384877 (A068677 (n + 1)).toNat : ℚ)

end

end A398705.P9479564228744456853

/-! ## A398705.P5494603271251044768

`gcd(A146076(n+3)², A329378(A191836(n+2)))`
-/

namespace A398705.P5494603271251044768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A146076 (n + 3) ^ 2) (A329378 (A191836 (n + 2)).toNat)

end

end A398705.P5494603271251044768

/-! ## A398705.P17626270986387228332

`A329378(A191836(n+2))/A151162(A240923(n+1))`
-/

namespace A398705.P17626270986387228332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329378 (A191836 (n + 2)).toNat : ℚ) / (A151162 (A240923 (n + 1)).toNat : ℚ)

end

end A398705.P17626270986387228332

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

/-! ## A398709.P13202339039400634357

`∑{#}[n+1, C(n+1, #)*A206776(#)]-1`
-/

namespace A398709.P13202339039400634357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A206776 k - 1

end

end A398709.P13202339039400634357

namespace A398709

/-- `∑{#}[n+1, C(n+1, #)*A206776(#)]-1` -/
def P13202339039400634357.Spec : Prop :=
  ∀ n, P13202339039400634357.a n = A398709 (n + 1)

end A398709

/-! ## A398709.P14380272750514336248

`A052984(n)+Δ[A107839(n)]-1`
-/

namespace A398709.P14380272750514336248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052984 n + (f1 (n + 1) - f1 n) - 1

end

end A398709.P14380272750514336248

namespace A398709

/-- `A052984(n)+Δ[A107839(n)]-1` -/
def P14380272750514336248.Spec : Prop :=
  ∀ n, P14380272750514336248.a n = A398709 (n + 1)

end A398709

/-! ## A398709.P8877397835948421908

`A107839(n)+4*A052913(n)-1`
-/

namespace A398709.P8877397835948421908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107839 n + 4 * A052913 n - 1

end

end A398709.P8877397835948421908

namespace A398709

/-- `A107839(n)+4*A052913(n)-1` -/
def P8877397835948421908.Spec : Prop :=
  ∀ n, P8877397835948421908.a n = A398709 (n + 1)

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

/-! ## A398710.P7465611351254437043

`A211683((n+1)%(A131648(n+1)+1)+1)`
-/

namespace A398710.P7465611351254437043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (Int.tmod (n + 1 : ℤ) (A131648 (n + 1) + 1) + 1).toNat

end

end A398710.P7465611351254437043

/-! ## A398710.P14900378632465032554

`A211683(A387975(A131648(n+1))+n+1)`
-/

namespace A398710.P14900378632465032554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A387975 (A131648 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A398710.P14900378632465032554

/-! ## A398710.P884823532136505139

`A211683(n+2)+A085393(A372595(n)+1)`
-/

namespace A398710.P884823532136505139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 2) + A085393 (A372595 n + 1).toNat

end

end A398710.P884823532136505139

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

/-! ## A398718.P2894898403323472305

`A210380(round(a(n-1)*(4-6/(n+1))))+1` with `a(0)=1`
-/

namespace A398718.P2894898403323472305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210380 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) * (4 - 6 / (n + 1 : ℚ)))).toNat + 1

end

end A398718.P2894898403323472305

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
# A398721: Number of increasing 3-term arithmetic progressions in an n^4 hypercube.

The programs for A398721, there is no canonical definition to state claims against.
-/

/-! ## A398721.P1445138206850168982

`A397600(A055998(2+n))`
-/

namespace A398721.P1445138206850168982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (A055998 (2 + n)).toNat

end

end A398721.P1445138206850168982

/-! ## A398721.P3534966148087096491

`A397600(A034856(n+3)-1)`
-/

namespace A398721.P3534966148087096491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (A034856 (n + 3) - 1).toNat

end

end A398721.P3534966148087096491

/-!
# A398722: Expansion of Pi in base sqrt(phi) where phi = (1 + sqrt(5))/2.

The programs for A398722, there is no canonical definition to state claims against.
-/

/-! ## A398722.P12477416498050229944

`char[A373669(2*n+1)-A010815(3*n)]`
-/

namespace A398722.P12477416498050229944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373669 (2 * n + 1) - A010815 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A398722.P12477416498050229944

/-! ## A398722.P16625359337909336782

`A316336(n+1)%A002110(Δ[A380188(n+3)])`
-/

namespace A398722.P16625359337909336782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380188 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316336 (n + 1)) (A002110 (f1 (n + 1) - f1 n).toNat)

end

end A398722.P16625359337909336782

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

/-! ## A398724.P10569439086551385181

`A131795(n)*A363800(A274830(2*n+1))`
-/

namespace A398724.P10569439086551385181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131795 n * A363800 (A274830 (2 * n + 1)).toNat

end

end A398724.P10569439086551385181

/-!
# A398725: Number of increasing 3-term arithmetic progressions in an n^6 hypercube.

The programs for A398725, there is no canonical definition to state claims against.
-/

/-! ## A398725.P14051007627194104084

`A397600(A034856(n+5)-3)`
-/

namespace A398725.P14051007627194104084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (A034856 (n + 5) - 3).toNat

end

end A398725.P14051007627194104084

/-! ## A398725.P12525117401406942255

`A397600(Δ[A023551(n+1)]+1)`
-/

namespace A398725.P12525117401406942255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397600 (f1 (n + 1) - f1 n + 1).toNat

end

end A398725.P12525117401406942255

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

/-! ## A398726.P752453064830749894

`A111857(A224422(n)+A060206(n))`
-/

namespace A398726.P752453064830749894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (A224422 n + A060206 n).toNat

end

end A398726.P752453064830749894

/-!
# A398727: Lower (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398727, the canonical program `A398727.P4140299455966748439` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398727 has offset 0).

The definition of A398727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398727.P1334090659256378152

`floor(n*(n+1)*(4*n+3)/4)`
-/

namespace A398727.P1334090659256378152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (n + 1) * (4 * n + 3) : ℚ) / 4⌋

end

end A398727.P1334090659256378152

namespace A398727

/-- `floor(n*(n+1)*(4*n+3)/4)` -/
def P1334090659256378152.Spec : Prop :=
  ∀ n, P1334090659256378152.a n = A398727 n

end A398727

/-! ## A398727.P4140299455966748439

`ogf((3x+4x^2+2x^3+3x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398727

/-- `ogf((3x+4x^2+2x^3+3x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P4140299455966748439.Spec : Prop :=
  ∀ n, P4140299455966748439.a n = A398727 n

theorem P4140299455966748439.correct : P4140299455966748439.Spec := by
  intro n
  simp only [A398727]

end A398727

/-! ## A398727.P8877790411324361784

`∑[3*n²+∑[char[or(2, n)]]]`
-/

namespace A398727.P8877790411324361784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398727.P8877790411324361784

namespace A398727

/-- `∑[3*n²+∑[char[or(2, n)]]]` -/
def P8877790411324361784.Spec : Prop :=
  ∀ n, (P8877790411324361784.a n : ℤ) = A398727 n

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

/-! ## A398727.P1000080958685342311

`∑[C(7*n, 2)/7]-A398730(n)`
-/

namespace A398727.P1000080958685342311
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) 2 : ℚ) / 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A398730 n : ℚ)

end

end A398727.P1000080958685342311

namespace A398727

/-- `∑[C(7*n, 2)/7]-A398730(n)` -/
def P1000080958685342311.Spec : Prop :=
  ∀ n, P1000080958685342311.a n = (A398727 n : ℚ)

end A398727

/-! ## A398727.P9269271254844023354

`A398657(n)+(n²-C(n, 2))*n`
-/

namespace A398727.P9269271254844023354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398657 n + ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) * (n : ℤ)

end

end A398727.P9269271254844023354

namespace A398727

/-- `A398657(n)+(n²-C(n, 2))*n` -/
def P9269271254844023354.Spec : Prop :=
  ∀ n, P9269271254844023354.a n = A398727 n

end A398727

/-! ## A398727.P9718643235397436707

`∑[A049451(n)-(floor(n/4)+ceil(n/4))]`
-/

namespace A398727.P9718643235397436707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 n - (⌊(n : ℚ) / 4⌋ + ⌈(n : ℚ) / 4⌉)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398727.P9718643235397436707

namespace A398727

/-- `∑[A049451(n)-(floor(n/4)+ceil(n/4))]` -/
def P9718643235397436707.Spec : Prop :=
  ∀ n, P9718643235397436707.a n = A398727 n

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

/-!
# A398728: Upper (1/2, 3) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398728, the canonical program `A398728.P18424042664954230036` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398728 has offset 0).

The definition of A398728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398728.P18424042664954230036

`ogf((4x+x^2+5x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398728

/-- `ogf((4x+x^2+5x^3+2x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))` -/
def P18424042664954230036.Spec : Prop :=
  ∀ n, P18424042664954230036.a n = A398728 n

theorem P18424042664954230036.correct : P18424042664954230036.Spec := by
  intro n
  simp only [A398728]

end A398728

/-! ## A398728.P12634934351084364501

`ceil(∑[n/2+3*n²])`
-/

namespace A398728.P12634934351084364501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (3 * n ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A398728.P12634934351084364501

namespace A398728

/-- `ceil(∑[n/2+3*n²])` -/
def P12634934351084364501.Spec : Prop :=
  ∀ n, P12634934351084364501.a n = A398728 n

end A398728

/-! ## A398728.P16753232747053897978

`floor(((4*n+3)*C(n+1, 2)+1)/2)`
-/

namespace A398728.P16753232747053897978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((4 * n + 3) * Nat.choose (n + 1) 2 + 1 : ℚ) / 2⌋

end

end A398728.P16753232747053897978

namespace A398728

/-- `floor(((4*n+3)*C(n+1, 2)+1)/2)` -/
def P16753232747053897978.Spec : Prop :=
  ∀ n, P16753232747053897978.a n = A398728 n

end A398728

/-! ## A398728.P16059040441419916569

`∑[C(7*n, 2)/7]-floor(∑[n²/2-n])`
-/

namespace A398728.P16059040441419916569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n) 2 : ℚ) / 7

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ : ℚ)

end

end A398728.P16059040441419916569

namespace A398728

/-- `∑[C(7*n, 2)/7]-floor(∑[n²/2-n])` -/
def P16059040441419916569.Spec : Prop :=
  ∀ n, P16059040441419916569.a n = (A398728 n : ℚ)

end A398728

/-! ## A398728.P4098088590283738027

`round(A051895(n)/2)`
-/

namespace A398728.P4098088590283738027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A051895 n : ℚ) / 2)

end

end A398728.P4098088590283738027

namespace A398728

/-- `round(A051895(n)/2)` -/
def P4098088590283738027.Spec : Prop :=
  ∀ n, P4098088590283738027.a n = A398728 n

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

/-! ## A398728.P13570485337142598784

`round(∑[A049453(n)/2])`
-/

namespace A398728.P13570485337142598784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049453 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398728.P13570485337142598784

namespace A398728

/-- `round(∑[A049453(n)/2])` -/
def P13570485337142598784.Spec : Prop :=
  ∀ n, P13570485337142598784.a n = A398728 n

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

/-! ## A398728.P5293183245832141345

`∑[3*n²+A004525(n)]`
-/

namespace A398728.P5293183245832141345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n ^ 2 : ℤ) + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398728.P5293183245832141345

namespace A398728

/-- `∑[3*n²+A004525(n)]` -/
def P5293183245832141345.Spec : Prop :=
  ∀ n, P5293183245832141345.a n = A398728 n

end A398728

/-! ## A398728.P11814769683632108423

`round(∑[n/2+A033428(n)])`
-/

namespace A398728.P11814769683632108423
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (A033428 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A398728.P11814769683632108423

namespace A398728

/-- `round(∑[n/2+A033428(n)])` -/
def P11814769683632108423.Spec : Prop :=
  ∀ n, P11814769683632108423.a n = A398728 n

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

/-! ## A398728.P12334710310297839947

`A219085(n)+A008811(n)`
-/

namespace A398728.P12334710310297839947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219085 n + A008811 n

end

end A398728.P12334710310297839947

namespace A398728

/-- `A219085(n)+A008811(n)` -/
def P12334710310297839947.Spec : Prop :=
  ∀ n, P12334710310297839947.a n = A398728 n

end A398728

/-! ## A398728.P654467223937402007

`A340648(n)+A027444(n)`
-/

namespace A398728.P654467223937402007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340648 n + A027444 n

end

end A398728.P654467223937402007

namespace A398728

/-- `A340648(n)+A027444(n)` -/
def P654467223937402007.Spec : Prop :=
  ∀ n, P654467223937402007.a n = A398728 n

end A398728

/-! ## A398728.P14685043043236471318

`A398664(n)+A002412(n)`
-/

namespace A398728.P14685043043236471318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398664 n + A002412 n

end

end A398728.P14685043043236471318

namespace A398728

/-- `A398664(n)+A002412(n)` -/
def P14685043043236471318.Spec : Prop :=
  ∀ n, P14685043043236471318.a n = A398728 n

end A398728

/-! ## A398728.P6045402990234234722

`A398662(n)+A006331(n)`
-/

namespace A398728.P6045402990234234722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398662 n + A006331 n

end

end A398728.P6045402990234234722

namespace A398728

/-- `A398662(n)+A006331(n)` -/
def P6045402990234234722.Spec : Prop :=
  ∀ n, P6045402990234234722.a n = A398728 n

end A398728

/-! ## A398728.P4092562669071708510

`A398853(n)+A034262(n)`
-/

namespace A398728.P4092562669071708510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398853 n + A034262 n

end

end A398728.P4092562669071708510

namespace A398728

/-- `A398853(n)+A034262(n)` -/
def P4092562669071708510.Spec : Prop :=
  ∀ n, P4092562669071708510.a n = A398728 n

end A398728

/-! ## A398728.P3776619549441386840

`A301709(n)+A153257(n)`
-/

namespace A398728.P3776619549441386840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301709 n + A153257 n

end

end A398728.P3776619549441386840

namespace A398728

/-- `A301709(n)+A153257(n)` -/
def P3776619549441386840.Spec : Prop :=
  ∀ n, P3776619549441386840.a n = A398728 n

end A398728

/-! ## A398728.P13569309797159031941

`A398730(n)+A162148(n)`
-/

namespace A398728.P13569309797159031941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398730 n + A162148 n

end

end A398728.P13569309797159031941

namespace A398728

/-- `A398730(n)+A162148(n)` -/
def P13569309797159031941.Spec : Prop :=
  ∀ n, P13569309797159031941.a n = A398728 n

end A398728

/-! ## A398728.P15541794250025235935

`A051895(n)-A398727(n)`
-/

namespace A398728.P15541794250025235935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n - A398727 n

end

end A398728.P15541794250025235935

namespace A398728

/-- `A051895(n)-A398727(n)` -/
def P15541794250025235935.Spec : Prop :=
  ∀ n, P15541794250025235935.a n = A398728 n

end A398728

/-! ## A398728.P6268362561921922288

`A064043(n)-A398842(n)`
-/

namespace A398728.P6268362561921922288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064043 n - A398842 n

end

end A398728.P6268362561921922288

namespace A398728

/-- `A064043(n)-A398842(n)` -/
def P6268362561921922288.Spec : Prop :=
  ∀ n, P6268362561921922288.a n = A398728 n

end A398728

/-!
# A398729: Lower (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398729, the canonical program `A398729.P9295084079733988642` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398729 has offset 0).

The definition of A398729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398729.P9295084079733988642

`floor(n*(n+1)*(2*n-5)/12)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A398729

/-- `floor(n*(n+1)*(2*n-5)/12)` -/
def P9295084079733988642.Spec : Prop :=
  ∀ n, P9295084079733988642.a n = A398729 n

theorem P9295084079733988642.correct : P9295084079733988642.Spec := by
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

/-! ## A398729.P12383834225077506926

`floor(∑[lcm(n, n*n)]/2)-∑[n]`
-/

namespace A398729.P12383834225077506926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A398729.P12383834225077506926

namespace A398729

/-- `floor(∑[lcm(n, n*n)]/2)-∑[n]` -/
def P12383834225077506926.Spec : Prop :=
  ∀ n, P12383834225077506926.a n = A398729 n

end A398729

/-! ## A398729.P11948473769450129883

`∑[(n-2)²-a(n-2)]` with `a(0)=0, a(1)=-1`
-/

namespace A398729.P11948473769450129883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  ((n : ℤ) - 2) ^ 2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398729.P11948473769450129883

namespace A398729

/-- `∑[(n-2)²-a(n-2)]` -/
def P11948473769450129883.Spec : Prop :=
  ∀ n, P11948473769450129883.a n = A398729 n

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

/-!
# A398730: Upper (-1, 1/2) midsequence of triangular numbers (A000217) and tetrahedral numbers (A000330); see Comments.

The programs for A398730, the canonical program `A398730.P14531345402756718380` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398730 has offset 0).

The definition of A398730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398730.P14531345402756718380

`ogf((x^3+x^4)/(1-4x+7x^2-8x^3+7x^4-4x^5+x^6))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398730.P5965478863886490602

`∑[C(n, 2)]-floor(∑[n]/2)`
-/

namespace A398730.P5965478863886490602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 2⌋

end

end A398730.P5965478863886490602

namespace A398730

/-- `∑[C(n, 2)]-floor(∑[n]/2)` -/
def P5965478863886490602.Spec : Prop :=
  ∀ n, P5965478863886490602.a n = A398730 n

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

/-! ## A398730.P17223339408924160139

`∑[∑[n-gcd(2, a(n-1))]]` with `a(0)=0, a(1)=0`
-/

namespace A398730.P17223339408924160139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  (n : ℤ) - (Int.gcd 2 (f2 (n - 1)) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398730.P17223339408924160139

namespace A398730

/-- `∑[∑[n-gcd(2, a(n-1))]]` -/
def P17223339408924160139.Spec : Prop :=
  ∀ n, P17223339408924160139.a n = A398730 n

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

/-!
# A398734: a(0) = 1; a(n) = Sum_{k=1..n} binomial(2*n-1,k) * a(n-k).

The programs for A398734, there is no canonical definition to state claims against.
-/

/-! ## A398734.P8441475644420096703

`A125714(A149108(n))`
-/

namespace A398734.P8441475644420096703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125714 (A149108 n).toNat

end

end A398734.P8441475644420096703

/-!
# A398768: Numbers in A049102 without the digit '1'.

The programs for A398768, there is no canonical definition to state claims against.
-/

/-! ## A398768.P12870141631315104088

`∩[A049102(n+1), A172424(n+1)]`
-/

namespace A398768.P12870141631315104088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398768.P12870141631315104088

/-!
# A398781: If k appears, 6*k does not.

The programs for A398781, the canonical program `A398781.P5177835371061370946` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398781 has offset 1).

The definition of A398781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A398781.P5177835371061370946

`∑[runs[and(1, A053827(n))]]`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A398781

/-- `∑[runs[and(1, A053827(n))]]` -/
def P5177835371061370946.Spec : Prop :=
  ∀ n, (P5177835371061370946.a n : ℤ) = A398781 (n + 1)

theorem P5177835371061370946.correct : P5177835371061370946.Spec := by
  intro n
  simp only [A398781, Nat.add_sub_cancel]

end A398781

/-! ## A398781.P6336740875169166778

`∑[runs[A020657(1+n)%2]]`
-/

namespace A398781.P6336740875169166778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020657 (1 + n)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398781.P6336740875169166778

namespace A398781

/-- `∑[runs[A020657(1+n)%2]]` -/
def P6336740875169166778.Spec : Prop :=
  ∀ n, (P6336740875169166778.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P16747963044014934086

`lt[A073793(n), A073793(n+1)]+1`
-/

namespace A398781.P16747963044014934086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073793 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A398781.P16747963044014934086

namespace A398781

/-- `lt[A073793(n), A073793(n+1)]+1` -/
def P16747963044014934086.Spec : Prop :=
  ∀ n, (P16747963044014934086.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P17863400549774264981

`comp[6*comp[A087999(6*(A000045(n)+2))]]`
-/

namespace A398781.P17863400549774264981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (6 * (A000045 n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A398781.P17863400549774264981

namespace A398781

/-- `comp[6*comp[A087999(6*(A000045(n)+2))]]` -/
def P17863400549774264981.Spec : Prop :=
  ∀ n, (P17863400549774264981.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P10852433819829986424

`comp[6*comp[A087999(6*(A006753(2*(n+1))+2))]]`
-/

namespace A398781.P10852433819829986424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087999 (6 * (A006753 (2 * (n + 1)) + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A398781.P10852433819829986424

namespace A398781

/-- `comp[6*comp[A087999(6*(A006753(2*(n+1))+2))]]` -/
def P10852433819829986424.Spec : Prop :=
  ∀ n, (P10852433819829986424.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P13375257444224874103

`comp[A131290((n+3)²)*n]`
-/

namespace A398781.P13375257444224874103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131290 ((n + 3) ^ 2) * (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398781.P13375257444224874103

namespace A398781

/-- `comp[A131290((n+3)²)*n]` -/
def P13375257444224874103.Spec : Prop :=
  ∀ n, (P13375257444224874103.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P5195239828731448832

`comp[Δ[6*A248227(A179865(n+1)+2)]]`
-/

namespace A398781.P5195239828731448832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A248227 (A179865 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398781.P5195239828731448832

namespace A398781

/-- `comp[Δ[6*A248227(A179865(n+1)+2)]]` -/
def P5195239828731448832.Spec : Prop :=
  ∀ n, (P5195239828731448832.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P11152050132456171095

`comp[A017593(A388034(n+1))%A017593(n+2)]`
-/

namespace A398781.P11152050132456171095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017593 (A388034 (n + 1)).toNat) (A017593 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A398781.P11152050132456171095

namespace A398781

/-- `comp[A017593(A388034(n+1))%A017593(n+2)]` -/
def P11152050132456171095.Spec : Prop :=
  ∀ n, (P11152050132456171095.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P11222024239543729535

`comp[lcm(6, n-A025924(A347644(n)))]`
-/

namespace A398781.P11222024239543729535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 ((n : ℤ) - A025924 (A347644 n).toNat)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A398781.P11222024239543729535

namespace A398781

/-- `comp[lcm(6, n-A025924(A347644(n)))]` -/
def P11222024239543729535.Spec : Prop :=
  ∀ n, (P11222024239543729535.a n : ℤ) = A398781 (n + 1)

end A398781

/-! ## A398781.P4761975621630153583

`lt[A378929(2*n+3), A333257(A346468(n+1))]`
-/

namespace A398781.P4761975621630153583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378929 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333257 (A346468 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A398781.P4761975621630153583

namespace A398781

/-- `lt[A378929(2*n+3), A333257(A346468(n+1))]` -/
def P4761975621630153583.Spec : Prop :=
  ∀ n, (P4761975621630153583.a n : ℤ) = A398781 (n + 1)

end A398781

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

/-! ## A398787.P7646786213157420157

`filter[A398316(1+n), A059841(#)]`
-/

namespace A398787.P7646786213157420157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398316 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A398787.P7646786213157420157

namespace A398787

/-- `filter[A398316(1+n), A059841(#)]` -/
def P7646786213157420157.Spec : Prop :=
  ∀ n, P7646786213157420157.a n = A398787 (n + 1)

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

/-! ## A398788.P2486852403634640492

`A054785(A006882(n+2))/4`
-/

namespace A398788.P2486852403634640492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (A006882 (n + 2)).toNat : ℚ) / 4

end

end A398788.P2486852403634640492

/-! ## A398788.P1004360951517515167

`A325762(A006544(n+1))`
-/

namespace A398788.P1004360951517515167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325762 (A006544 (n + 1)).toNat

end

end A398788.P1004360951517515167

/-!
# A398790: Number of ways to tile a 1 X n strip using tiles of length 1 or 2, each tile colored red or blue, such that no two red tiles are adjacent.

The programs for A398790, the canonical program `A398790.P7603610696032174352` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A398790 has offset 0).

The definition of A398790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A398790.P7603610696032174352

`ogf((1+x+x^2)/(1-x-2x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C051`.
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

/-! ## A398790.P7151581050019862281

`Δ[A005908(2+n)]`
-/

namespace A398790.P7151581050019862281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005908 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A398790.P7151581050019862281

namespace A398790

/-- `Δ[A005908(2+n)]` -/
def P7151581050019862281.Spec : Prop :=
  ∀ n, P7151581050019862281.a n = A398790 n

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

/-! ## A398795.P7026660004080968334

`A000196(round(A001076(n)/10))`
-/

namespace A398795.P7026660004080968334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A001076 n : ℚ) / 10)).toNat

end

end A398795.P7026660004080968334

/-! ## A398795.P8962851989559628898

`floor(A376977(2*n+5)/A290114(n+3))`
-/

namespace A398795.P8962851989559628898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A376977 (2 * n + 5) : ℚ) / (A290114 (n + 3) : ℚ)⌋

end

end A398795.P8962851989559628898

/-! ## A398795.P3554102246041953605

`A003056(ceil(A384825(n)/A003946(n))-1)`
-/

namespace A398795.P3554102246041953605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌈(A384825 n : ℚ) / (A003946 n : ℚ)⌉ - 1).toNat

end

end A398795.P3554102246041953605

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

/-! ## A398795.P14425024903481810640

`A197128(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A398795.P14425024903481810640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A197128 (a (n - 1) + a (n - 2)).toNat

end

end A398795.P14425024903481810640


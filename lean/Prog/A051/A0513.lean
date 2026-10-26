import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B001.C011
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
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
# A051300: a(n) = a(n-1) + rotate( a(n-1), 1 digit right), a(1) = 1.

The programs for A051300, there is no canonical definition to state claims against.
-/

/-! ## A051300.P373118501706227607

`A374732(A365822(n+1))`
-/

namespace A051300.P373118501706227607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374732 (A365822 (n + 1)).toNat

end

end A051300.P373118501706227607

/-!
# A051301: Smallest prime factor of n!+1.

The programs for A051301, there is no canonical definition to state claims against.
-/

/-! ## A051301.P13097217397489011128

`A038507(n)/A056111(n)`
-/

namespace A051301.P13097217397489011128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038507 n : ℚ) / (A056111 n : ℚ)

end

end A051301.P13097217397489011128

/-! ## A051301.P9556940014037570089

`A155162(∑[n])/A056111(n)`
-/

namespace A051301.P9556940014037570089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155162 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A056111 n : ℚ)

end

end A051301.P9556940014037570089

/-! ## A051301.P11851297552695598091

`(A000142(n)+1)/A056111(n)`
-/

namespace A051301.P11851297552695598091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n + 1 : ℚ) / (A056111 n : ℚ)

end

end A051301.P11851297552695598091

/-! ## A051301.P901185055178058974

`A185387(n+1)/A056111(n)`
-/

namespace A051301.P901185055178058974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185387 (n + 1) : ℚ) / (A056111 n : ℚ)

end

end A051301.P901185055178058974

/-! ## A051301.P9291712865512764059

`(A033312(n)+2)/A056111(n)`
-/

namespace A051301.P9291712865512764059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033312 n + 2 : ℚ) / (A056111 n : ℚ)

end

end A051301.P9291712865512764059

/-! ## A051301.P15403806712562068660

`(Δ[A003422(n)]+1)/A056111(n)`
-/

namespace A051301.P15403806712562068660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / (A056111 n : ℚ)

end

end A051301.P15403806712562068660

/-! ## A051301.P1626964843783150853

`(∏[n+3-A157532(n+1)]+1)/A056111(n)`
-/

namespace A051301.P1626964843783150853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A157532 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / (A056111 n : ℚ)

end

end A051301.P1626964843783150853

/-! ## A051301.P11022423722036868115

`(A052898(n)-A000142(n))/A056111(n)`
-/

namespace A051301.P11022423722036868115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052898 n - A000142 n : ℚ) / (A056111 n : ℚ)

end

end A051301.P11022423722036868115

/-! ## A051301.P3616838474053752323

`(A066667(∑[n]-n)+1)/A056111(n)`
-/

namespace A051301.P3616838474053752323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066667 (∑ j ∈ Finset.range (n + 1), f1 j - n) + 1 : ℚ) / (A056111 n : ℚ)

end

end A051301.P3616838474053752323

/-!
# A051303: Number of 3-element proper antichains of an n-element set.

The programs for A051303, there is no canonical definition to state claims against.
-/

/-! ## A051303.P15639732539317336646

`A244157(n^n-(n-1))`
-/

namespace A051303.P15639732539317336646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244157 ((n ^ n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A051303.P15639732539317336646

/-! ## A051303.P1825520811298096095

`∑[∑[A079692(A054369(n))]]`
-/

namespace A051303.P1825520811298096095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (A054369 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051303.P1825520811298096095

/-!
# A051304: Number of 4-element proper antichains of an n-element set.

The programs for A051304, there is no canonical definition to state claims against.
-/

/-! ## A051304.P17572594286386180694

`∑{d}[(-5)^C(n, 4)/a(n-1), #]-1` with `a(0)=1`
-/

namespace A051304.P17572594286386180694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((-5) ^ Nat.choose n 4 : ℚ) / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ) - 1

end

end A051304.P17572594286386180694

/-! ## A051304.P4337123944818211401

`A238656(2^n-(n-2))`
-/

namespace A051304.P4337123944818211401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238656 ((2 ^ n : ℤ) - ((n : ℤ) - 2)).toNat

end

end A051304.P4337123944818211401

/-!
# A051305: Number of 5-element proper antichains of an n-element set.

The programs for A051305, there is no canonical definition to state claims against.
-/

/-! ## A051305.P6538098091155841240

`A059090(A000070(n))*A156878(2*n+3)`
-/

namespace A051305.P6538098091155841240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059090 (A000070 n).toNat * A156878 (2 * n + 3)

end

end A051305.P6538098091155841240

/-!
# A051308: Euclid-Mullin sequence (A000945) with initial value a(1)=5 instead of a(1)=2.

The programs for A051308, there is no canonical definition to state claims against.
-/

/-! ## A051308.P9445191637992309158

`p?[A281379(a(n-3)+1)+1]` with `a(0)=1, a(1)=5, a(2)=9`
-/

namespace A051308.P9445191637992309158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 9] fun n f1 =>
  A281379 (f1 (n - 3) + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051308.P9445191637992309158

/-!
# A051312: Euclid-Mullin sequence (A000945) with initial value a(1)=19 instead of a(1)=2.

The programs for A051312, there is no canonical definition to state claims against.
-/

/-! ## A051312.P5047908521483842216

`A001835(a(n-1)+1)` with `a(0)=19, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A051312.P5047908521483842216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [19, 2, 3, 5] fun n a =>
  A001835 (a (n - 1) + 1).toNat

end

end A051312.P5047908521483842216

/-!
# A051329: A generalized Thue-Morse sequence.

The programs for A051329, the canonical program `A051329.P676158539143154078` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051329 has offset 0).

The definition of A051329 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051329.P676158539143154078

`A053735(n)%4`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051329

/-- `A053735(n)%4` -/
def P676158539143154078.Spec : Prop :=
  ∀ n, P676158539143154078.a n = A051329 n

theorem P676158539143154078.correct : P676158539143154078.Spec := by
  intro n
  simp only [A051329]

end A051329

/-! ## A051329.P314467348940777676

`(a(floor(n/3))+n%3)%4` with `a(0)=0`
-/

namespace A051329.P314467348940777676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 3⌋.toNat + n % 3) % 4

end

end A051329.P314467348940777676

namespace A051329

/-- `(a(floor(n/3))+n%3)%4` -/
def P314467348940777676.Spec : Prop :=
  ∀ n, (P314467348940777676.a n : ℤ) = A051329 n

end A051329

/-! ## A051329.P5507978473930708611

`and(3, a(floor(n/3))+n-3*floor(n/3))` with `a(0)=0`
-/

namespace A051329.P5507978473930708611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land 3 (a ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋))

end

end A051329.P5507978473930708611

namespace A051329

/-- `and(3, a(floor(n/3))+n-3*floor(n/3))` -/
def P5507978473930708611.Spec : Prop :=
  ∀ n, P5507978473930708611.a n = A051329 n

end A051329

/-! ## A051329.P6323095764108279661

`A037314(n)%4`
-/

namespace A051329.P6323095764108279661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037314 n) 4

end

end A051329.P6323095764108279661

namespace A051329

/-- `A037314(n)%4` -/
def P6323095764108279661.Spec : Prop :=
  ∀ n, P6323095764108279661.a n = A051329 n

end A051329

/-! ## A051329.P12396170306506028685

`and(3, A065369(n))`
-/

namespace A051329.P12396170306506028685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A065369 n)

end

end A051329.P12396170306506028685

namespace A051329

/-- `and(3, A065369(n))` -/
def P12396170306506028685.Spec : Prop :=
  ∀ n, P12396170306506028685.a n = A051329 n

end A051329

/-! ## A051329.P17647504794180230366

`and(3, 2*A105186(n)-n)`
-/

namespace A051329.P17647504794180230366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (2 * A105186 n - (n : ℤ))

end

end A051329.P17647504794180230366

namespace A051329

/-- `and(3, 2*A105186(n)-n)` -/
def P17647504794180230366.Spec : Prop :=
  ∀ n, P17647504794180230366.a n = A051329 n

end A051329

/-! ## A051329.P7465399537454995921

`A010873(A053735(n))`
-/

namespace A051329.P7465399537454995921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A053735 n).toNat

end

end A051329.P7465399537454995921

namespace A051329

/-- `A010873(A053735(n))` -/
def P7465399537454995921.Spec : Prop :=
  ∀ n, P7465399537454995921.a n = A051329 n

end A051329

/-! ## A051329.P12118876573494692557

`A189480(A173523(n+1))`
-/

namespace A051329.P12118876573494692557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A173523 (n + 1)).toNat

end

end A051329.P12118876573494692557

namespace A051329

/-- `A189480(A173523(n+1))` -/
def P12118876573494692557.Spec : Prop :=
  ∀ n, P12118876573494692557.a n = A051329 n

end A051329

/-! ## A051329.P10107450787094704780

`and(A010693(n), A037314(n))`
-/

namespace A051329.P10107450787094704780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010693 n) (A037314 n)

end

end A051329.P10107450787094704780

namespace A051329

/-- `and(A010693(n), A037314(n))` -/
def P10107450787094704780.Spec : Prop :=
  ∀ n, P10107450787094704780.a n = A051329 n

end A051329

/-! ## A051329.P2211360220793665702

`and(A001539(n), A053735(n))`
-/

namespace A051329.P2211360220793665702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001539 n) (A053735 n)

end

end A051329.P2211360220793665702

namespace A051329

/-- `and(A001539(n), A053735(n))` -/
def P2211360220793665702.Spec : Prop :=
  ∀ n, P2211360220793665702.a n = A051329 n

end A051329

/-! ## A051329.P11953010158406844973

`and(A010693(n), A053735(n))`
-/

namespace A051329.P11953010158406844973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010693 n) (A053735 n)

end

end A051329.P11953010158406844973

namespace A051329

/-- `and(A010693(n), A053735(n))` -/
def P11953010158406844973.Spec : Prop :=
  ∀ n, P11953010158406844973.a n = A051329 n

end A051329

/-! ## A051329.P17842400238558617929

`and(A040281(n), A053735(n))`
-/

namespace A051329.P17842400238558617929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040281 n) (A053735 n)

end

end A051329.P17842400238558617929

namespace A051329

/-- `and(A040281(n), A053735(n))` -/
def P17842400238558617929.Spec : Prop :=
  ∀ n, P17842400238558617929.a n = A051329 n

end A051329

/-! ## A051329.P1042110414192916257

`and(A037314(n), A060296(n))`
-/

namespace A051329.P1042110414192916257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037314 n) (A060296 n)

end

end A051329.P1042110414192916257

namespace A051329

/-- `and(A037314(n), A060296(n))` -/
def P1042110414192916257.Spec : Prop :=
  ∀ n, P1042110414192916257.a n = A051329 n

end A051329

/-! ## A051329.P2310851466517448802

`and(A053735(n), A060296(n))`
-/

namespace A051329.P2310851466517448802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053735 n) (A060296 n)

end

end A051329.P2310851466517448802

namespace A051329

/-- `and(A053735(n), A060296(n))` -/
def P2310851466517448802.Spec : Prop :=
  ∀ n, P2310851466517448802.a n = A051329 n

end A051329

/-! ## A051329.P8818550805995060128

`A053839(A023717(n))`
-/

namespace A051329.P8818550805995060128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053839 (A023717 n).toNat

end

end A051329.P8818550805995060128

namespace A051329

/-- `A053839(A023717(n))` -/
def P8818550805995060128.Spec : Prop :=
  ∀ n, P8818550805995060128.a n = A051329 n

end A051329

/-! ## A051329.P1526662595252151341

`A179868(A325985(n))`
-/

namespace A051329.P1526662595252151341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (A325985 n).toNat

end

end A051329.P1526662595252151341

namespace A051329

/-- `A179868(A325985(n))` -/
def P1526662595252151341.Spec : Prop :=
  ∀ n, P1526662595252151341.a n = A051329 n

end A051329

/-! ## A051329.P9586983760340983909

`A094115(2*n+1)%4`
-/

namespace A051329.P9586983760340983909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094115 (2 * n + 1)) 4

end

end A051329.P9586983760340983909

namespace A051329

/-- `A094115(2*n+1)%4` -/
def P9586983760340983909.Spec : Prop :=
  ∀ n, P9586983760340983909.a n = A051329 n

end A051329

/-! ## A051329.P12169034341965395210

`A179868(A023713(n+1))`
-/

namespace A051329.P12169034341965395210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (A023713 (n + 1)).toNat

end

end A051329.P12169034341965395210

namespace A051329

/-- `A179868(A023713(n+1))` -/
def P12169034341965395210.Spec : Prop :=
  ∀ n, P12169034341965395210.a n = A051329 n

end A051329

/-! ## A051329.P14526560248983907767

`A179868(A006288(n))`
-/

namespace A051329.P14526560248983907767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (A006288 n).toNat

end

end A051329.P14526560248983907767

namespace A051329

/-- `A179868(A006288(n))` -/
def P14526560248983907767.Spec : Prop :=
  ∀ n, P14526560248983907767.a n = A051329 n

end A051329

/-! ## A051329.P5733898183512555346

`A179868(A023709(n+1))`
-/

namespace A051329.P5733898183512555346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (A023709 (n + 1)).toNat

end

end A051329.P5733898183512555346

namespace A051329

/-- `A179868(A023709(n+1))` -/
def P5733898183512555346.Spec : Prop :=
  ∀ n, P5733898183512555346.a n = A051329 n

end A051329

/-!
# A051336: Number of increasing arithmetic progressions in {1,2,3,...,n}, including trivial arithmetic progressions of lengths 1 and 2.

The programs for A051336, the canonical program `A051336.P10619382866540462649` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051336 has offset 1).

The definition of A051336 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078567, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051336.P10619382866540462649

`n+1+A078567(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051336

/-- `n+1+A078567(n+1)` -/
def P10619382866540462649.Spec : Prop :=
  ∀ n, P10619382866540462649.a n = A051336 (n + 1)

theorem P10619382866540462649.correct : P10619382866540462649.Spec := by
  intro n
  simp only [A051336, Nat.add_sub_cancel]

end A051336

/-! ## A051336.P17076825953474021586

`∑[∑[∏{e}[n, #+1]]]`
-/

namespace A051336.P17076825953474021586
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P17076825953474021586

namespace A051336

/-- `∑[∑[∏{e}[n, #+1]]]` -/
def P17076825953474021586.Spec : Prop :=
  ∀ n, (P17076825953474021586.a n : ℤ) = A051336 (n + 1)

end A051336

/-! ## A051336.P16869331475189355821

`∑[∑[∑{d}[n, ceil(1/#)]]]+1+n`
-/

namespace A051336.P16869331475189355821
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), ⌈1 / (d : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A051336.P16869331475189355821

namespace A051336

/-- `∑[∑[∑{d}[n, ceil(1/#)]]]+1+n` -/
def P16869331475189355821.Spec : Prop :=
  ∀ n, P16869331475189355821.a n = A051336 (n + 1)

theorem P16869331475189355821.correct : P16869331475189355821.Spec := by
  intro n
  simp only [A051336, Nat.add_sub_cancel, A051336.P16869331475189355821.f3, A051336.P16869331475189355821.f2, A051336.P16869331475189355821.f1, A051336.P16869331475189355821.a, A051336.P10619382866540462649.a, A078567, A078567.P1546433028043554864.f3, A078567.P1546433028043554864.f2, A078567.P1546433028043554864.f1, A078567.P1546433028043554864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051336

/-! ## A051336.P17101039329094149326

`∑[A054519(n)]`
-/

namespace A051336.P17101039329094149326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P17101039329094149326

namespace A051336

/-- `∑[A054519(n)]` -/
def P17101039329094149326.Spec : Prop :=
  ∀ n, P17101039329094149326.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P3418659795077679849

`∑[A006218(n)+1]`
-/

namespace A051336.P3418659795077679849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P3418659795077679849

namespace A051336

/-- `∑[A006218(n)+1]` -/
def P3418659795077679849.Spec : Prop :=
  ∀ n, P3418659795077679849.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P9060351390711656316

`∑[∑[A032741(n)+1]]`
-/

namespace A051336.P9060351390711656316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P9060351390711656316

namespace A051336

/-- `∑[∑[A032741(n)+1]]` -/
def P9060351390711656316.Spec : Prop :=
  ∀ n, P9060351390711656316.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P11465387793189156905

`∑[A350102(n+1)-1]`
-/

namespace A051336.P11465387793189156905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350102 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P11465387793189156905

namespace A051336

/-- `∑[A350102(n+1)-1]` -/
def P11465387793189156905.Spec : Prop :=
  ∀ n, P11465387793189156905.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P816136959774689314

`∑[A006590(n+1)-n]`
-/

namespace A051336.P816136959774689314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P816136959774689314

namespace A051336

/-- `∑[A006590(n+1)-n]` -/
def P816136959774689314.Spec : Prop :=
  ∀ n, P816136959774689314.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P16974695176397159337

`A330285(n+1)+∑[n+1]`
-/

namespace A051336.P16974695176397159337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330285 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051336.P16974695176397159337

namespace A051336

/-- `A330285(n+1)+∑[n+1]` -/
def P16974695176397159337.Spec : Prop :=
  ∀ n, P16974695176397159337.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P8914373590028824976

`∑[A000005(n)+a(n-1)]` with `a(0)=1`
-/

namespace A051336.P8914373590028824976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000005 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P8914373590028824976

namespace A051336

/-- `∑[A000005(n)+a(n-1)]` -/
def P8914373590028824976.Spec : Prop :=
  ∀ n, P8914373590028824976.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P2295318809362176690

`A389737(n)+A006218(n)`
-/

namespace A051336.P2295318809362176690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389737 n + A006218 n

end

end A051336.P2295318809362176690

namespace A051336

/-- `A389737(n)+A006218(n)` -/
def P2295318809362176690.Spec : Prop :=
  ∀ n, P2295318809362176690.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P12845624669701892552

`∑[∑[A000005(A028310(n))]]`
-/

namespace A051336.P12845624669701892552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P12845624669701892552

namespace A051336

/-- `∑[∑[A000005(A028310(n))]]` -/
def P12845624669701892552.Spec : Prop :=
  ∀ n, P12845624669701892552.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P6265396897711271810

`∑[∑[A320111(A257088(n))]]`
-/

namespace A051336.P6265396897711271810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A257088 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P6265396897711271810

namespace A051336

/-- `∑[∑[A320111(A257088(n))]]` -/
def P6265396897711271810.Spec : Prop :=
  ∀ n, P6265396897711271810.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P8790156287532070592

`∑[∑[A008619(2*A032741(n))]]`
-/

namespace A051336.P8790156287532070592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A032741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P8790156287532070592

namespace A051336

/-- `∑[∑[A008619(2*A032741(n))]]` -/
def P8790156287532070592.Spec : Prop :=
  ∀ n, P8790156287532070592.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P13903656042900425416

`∑[∑[A110656(2*A145154(n))]]`
-/

namespace A051336.P13903656042900425416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (2 * A145154 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P13903656042900425416

namespace A051336

/-- `∑[∑[A110656(2*A145154(n))]]` -/
def P13903656042900425416.Spec : Prop :=
  ∀ n, P13903656042900425416.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P13572241128235968386

`∑[∑[A000005(A000007(n)+n)]]`
-/

namespace A051336.P13572241128235968386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000007 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P13572241128235968386

namespace A051336

/-- `∑[∑[A000005(A000007(n)+n)]]` -/
def P13572241128235968386.Spec : Prop :=
  ∀ n, P13572241128235968386.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P13530663148551666637

`∑[∑[A000005(A004277(n)-n)]]`
-/

namespace A051336.P13530663148551666637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P13530663148551666637

namespace A051336

/-- `∑[∑[A000005(A004277(n)-n)]]` -/
def P13530663148551666637.Spec : Prop :=
  ∀ n, P13530663148551666637.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P1343583465266223141

`1-∑[A057428(n)-A006218(n)]`
-/

namespace A051336.P1343583465266223141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n - A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051336.P1343583465266223141

namespace A051336

/-- `1-∑[A057428(n)-A006218(n)]` -/
def P1343583465266223141.Spec : Prop :=
  ∀ n, P1343583465266223141.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P2008606927349956649

`A005408(n)-(n-∑[A006218(n)])`
-/

namespace A051336.P2008606927349956649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051336.P2008606927349956649

namespace A051336

/-- `A005408(n)-(n-∑[A006218(n)])` -/
def P2008606927349956649.Spec : Prop :=
  ∀ n, P2008606927349956649.a n = A051336 (n + 1)

end A051336

/-! ## A051336.P18398757610685923554

`∑[∑[A000005(n+1)]]-A002541(n+1)`
-/

namespace A051336.P18398757610685923554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002541 (n + 1)

end

end A051336.P18398757610685923554

namespace A051336

/-- `∑[∑[A000005(n+1)]]-A002541(n+1)` -/
def P18398757610685923554.Spec : Prop :=
  ∀ n, P18398757610685923554.a n = A051336 (n + 1)

end A051336

/-!
# A051338: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 5.

The programs for A051338, the canonical program `A051338.P5709052875932200908` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051338 has offset 0).

The definition of A051338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051338.P5709052875932200908

`T(n-1,k-1)-(row(n)+5)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051338

/-- `T(n-1,k-1)-(row(n)+5)*T(n-1,k)` -/
def P5709052875932200908.Spec : Prop :=
  ∀ n, P5709052875932200908.a n = A051338 n

theorem P5709052875932200908.correct : P5709052875932200908.Spec := by
  intro n
  simp only [A051338]

end A051338

/-!
# A051339: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 6.

The programs for A051339, the canonical program `A051339.P4218320802786502065` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051339 has offset 0).

The definition of A051339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051339.P4218320802786502065

`T(n-1,k-1)-(row(n)+6)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051339

/-- `T(n-1,k-1)-(row(n)+6)*T(n-1,k)` -/
def P4218320802786502065.Spec : Prop :=
  ∀ n, P4218320802786502065.a n = A051339 n

theorem P4218320802786502065.correct : P4218320802786502065.Spec := by
  intro n
  simp only [A051339]

end A051339

/-!
# A051340: A simple 2-dimensional array, read by antidiagonals: T[i,j] = 1 for j>0, T[i,0] = i+1; i,j = 0,1,2,3,...

The programs for A051340, the canonical program `A051340.P9797629751904134838` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051340 has offset 0).

The definition of A051340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051340.P14384688533544319967

`Δ[A063656(n)]`
-/

namespace A051340.P14384688533544319967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051340.P14384688533544319967

namespace A051340

/-- `Δ[A063656(n)]` -/
def P14384688533544319967.Spec : Prop :=
  ∀ n, P14384688533544319967.a n = A051340 n

end A051340

/-! ## A051340.P15761705726022594458

`A132128(n+1)-n`
-/

namespace A051340.P15761705726022594458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132128 (n + 1) - (n : ℤ)

end

end A051340.P15761705726022594458

namespace A051340

/-- `A132128(n+1)-n` -/
def P15761705726022594458.Spec : Prop :=
  ∀ n, P15761705726022594458.a n = A051340 n

theorem P15761705726022594458.correct : P15761705726022594458.Spec := by
  intro n
  simp only [A051340, Nat.add_sub_cancel, A051340.P15761705726022594458.a, A051340.P9797629751904134838.f1, A051340.P9797629751904134838.a, A094727, A094727.P1041695477673985807.a, A132128, A132128.P11388277187391197128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051340

/-! ## A051340.P9797629751904134838

`2-Δ[A094727(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051340

/-- `2-Δ[A094727(n+1)]` -/
def P9797629751904134838.Spec : Prop :=
  ∀ n, P9797629751904134838.a n = A051340 n

theorem P9797629751904134838.correct : P9797629751904134838.Spec := by
  intro n
  simp only [A051340]

end A051340

/-! ## A051340.P15461383269476173769

`Δ[C(A003056(n), 2)]+1`
-/

namespace A051340.P15461383269476173769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1

end

end A051340.P15461383269476173769

namespace A051340

/-- `Δ[C(A003056(n), 2)]+1` -/
def P15461383269476173769.Spec : Prop :=
  ∀ n, P15461383269476173769.a n = A051340 n

end A051340

/-! ## A051340.P8270729469075612730

`round(sqrt(A127648(n)²+1))`
-/

namespace A051340.P8270729469075612730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A127648 n ^ 2 + 1 : ℝ))

end

end A051340.P8270729469075612730

namespace A051340

/-- `round(sqrt(A127648(n)²+1))` -/
def P8270729469075612730.Spec : Prop :=
  ∀ n, P8270729469075612730.a n = A051340 n

end A051340

/-! ## A051340.P17738803867749727492

`A144112(a(n-1)+n)` with `a(0)=1`
-/

namespace A051340.P17738803867749727492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A144112 (a (n - 1) + (n : ℤ)).toNat

end

end A051340.P17738803867749727492

namespace A051340

/-- `A144112(a(n-1)+n)` -/
def P17738803867749727492.Spec : Prop :=
  ∀ n, P17738803867749727492.a n = A051340 n

end A051340

/-! ## A051340.P15248958273694742287

`abs(Δ[A057554(2*(n+1))])`
-/

namespace A051340.P15248958273694742287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A051340.P15248958273694742287

namespace A051340

/-- `abs(Δ[A057554(2*(n+1))])` -/
def P15248958273694742287.Spec : Prop :=
  ∀ n, P15248958273694742287.a n = A051340 n

end A051340

/-! ## A051340.P2375841576959657270

`floor(sqrt(n*A136521(n)+1))`
-/

namespace A051340.P2375841576959657270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((n : ℤ) * A136521 n + 1)

end

end A051340.P2375841576959657270

namespace A051340

/-- `floor(sqrt(n*A136521(n)+1))` -/
def P2375841576959657270.Spec : Prop :=
  ∀ n, P2375841576959657270.a n = A051340 n

end A051340

/-! ## A051340.P7836768337660751445

`a(n-1)*A134402(n)+1` with `a(0)=1`
-/

namespace A051340.P7836768337660751445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A134402 n + 1

end

end A051340.P7836768337660751445

namespace A051340

/-- `a(n-1)*A134402(n)+1` -/
def P7836768337660751445.Spec : Prop :=
  ∀ n, P7836768337660751445.a n = A051340 n

end A051340

/-! ## A051340.P17740750504089557554

`A007318((n+2)*char[∑[n-1]])`
-/

namespace A051340.P17740750504089557554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n + 2) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A051340.P17740750504089557554

namespace A051340

/-- `A007318((n+2)*char[∑[n-1]])` -/
def P17740750504089557554.Spec : Prop :=
  ∀ n, P17740750504089557554.a n = A051340 n

end A051340

/-! ## A051340.P4977811465564378853

`A000463(A131227(n))`
-/

namespace A051340.P4977811465564378853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A131227 n).toNat

end

end A051340.P4977811465564378853

namespace A051340

/-- `A000463(A131227(n))` -/
def P4977811465564378853.Spec : Prop :=
  ∀ n, P4977811465564378853.a n = A051340 n

end A051340

/-! ## A051340.P490187514372864965

`A008620(A131431(n))`
-/

namespace A051340.P490187514372864965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A131431 n).toNat

end

end A051340.P490187514372864965

namespace A051340

/-- `A008620(A131431(n))` -/
def P490187514372864965.Spec : Prop :=
  ∀ n, P490187514372864965.a n = A051340 n

end A051340

/-! ## A051340.P12781097983549862347

`A028310(A127648(n))`
-/

namespace A051340.P12781097983549862347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A127648 n).toNat

end

end A051340.P12781097983549862347

namespace A051340

/-- `A028310(A127648(n))` -/
def P12781097983549862347.Spec : Prop :=
  ∀ n, P12781097983549862347.a n = A051340 n

end A051340

/-! ## A051340.P10702811594768894479

`A056926(A001614(n+1))`
-/

namespace A051340.P10702811594768894479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A001614 (n + 1)).toNat

end

end A051340.P10702811594768894479

namespace A051340

/-- `A056926(A001614(n+1))` -/
def P10702811594768894479.Spec : Prop :=
  ∀ n, P10702811594768894479.a n = A051340 n

end A051340

/-! ## A051340.P1130634086100008384

`A056926(A004201(n+1))`
-/

namespace A051340.P1130634086100008384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A004201 (n + 1)).toNat

end

end A051340.P1130634086100008384

namespace A051340

/-- `A056926(A004201(n+1))` -/
def P1130634086100008384.Spec : Prop :=
  ∀ n, P1130634086100008384.a n = A051340 n

end A051340

/-! ## A051340.P15883978113865684179

`A056926(A056537(n+1))`
-/

namespace A051340.P15883978113865684179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056537 (n + 1)).toNat

end

end A051340.P15883978113865684179

namespace A051340

/-- `A056926(A056537(n+1))` -/
def P15883978113865684179.Spec : Prop :=
  ∀ n, P15883978113865684179.a n = A051340 n

end A051340

/-! ## A051340.P18030410172840000381

`A028242(A198954(n+1))`
-/

namespace A051340.P18030410172840000381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A198954 (n + 1)).toNat

end

end A051340.P18030410172840000381

namespace A051340

/-- `A028242(A198954(n+1))` -/
def P18030410172840000381.Spec : Prop :=
  ∀ n, P18030410172840000381.a n = A051340 n

end A051340

/-! ## A051340.P15196845603315893901

`A103221(2*A131431(n))`
-/

namespace A051340.P15196845603315893901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A131431 n).toNat

end

end A051340.P15196845603315893901

namespace A051340

/-- `A103221(2*A131431(n))` -/
def P15196845603315893901.Spec : Prop :=
  ∀ n, P15196845603315893901.a n = A051340 n

end A051340

/-! ## A051340.P5743524680389339342

`A127648(n)+A023532(n)`
-/

namespace A051340.P5743524680389339342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n + A023532 n

end

end A051340.P5743524680389339342

namespace A051340

/-- `A127648(n)+A023532(n)` -/
def P5743524680389339342.Spec : Prop :=
  ∀ n, P5743524680389339342.a n = A051340 n

end A051340

/-!
# A051341: A simple 2-dimensional array, read by antidiagonals.

The programs for A051341, the canonical program `A051341.P12409519143467508836` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051341 has offset 0).

The definition of A051341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051341.P12409519143467508836

`A023531(A003056(n)%Δ[A099375(n)])`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051341

/-- `A023531(A003056(n)%Δ[A099375(n)])` -/
def P12409519143467508836.Spec : Prop :=
  ∀ n, P12409519143467508836.a n = A051341 n

theorem P12409519143467508836.correct : P12409519143467508836.Spec := by
  intro n
  simp only [A051341]

end A051341

/-! ## A051341.P8074083153045455383

`A073424(A143182(n)%Δ[A099375(n)])`
-/

namespace A051341.P8074083153045455383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (Int.tmod (A143182 n) (f1 (n + 1) - f1 n)).toNat

end

end A051341.P8074083153045455383

namespace A051341

/-- `A073424(A143182(n)%Δ[A099375(n)])` -/
def P8074083153045455383.Spec : Prop :=
  ∀ n, P8074083153045455383.a n = A051341 n

end A051341

/-! ## A051341.P16336844689980817941

`A010054(gcd(A001614(n+1), A131817(n)))`
-/

namespace A051341.P16336844689980817941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.gcd (A001614 (n + 1)) (A131817 n))

end

end A051341.P16336844689980817941

namespace A051341

/-- `A010054(gcd(A001614(n+1), A131817(n)))` -/
def P16336844689980817941.Spec : Prop :=
  ∀ n, P16336844689980817941.a n = A051341 n

end A051341

/-! ## A051341.P2537004418690670732

`A073424(or(A057211(n+1), A127648(n)))`
-/

namespace A051341.P2537004418690670732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (Int.lor (A057211 (n + 1)) (A127648 n)).toNat

end

end A051341.P2537004418690670732

namespace A051341

/-- `A073424(or(A057211(n+1), A127648(n)))` -/
def P2537004418690670732.Spec : Prop :=
  ∀ n, P2537004418690670732.a n = A051341 n

end A051341

/-! ## A051341.P8460687570124958676

`A073424(A002024(n+1)%Δ[A099375(n)])`
-/

namespace A051341.P8460687570124958676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (Int.tmod (A002024 (n + 1)) (f1 (n + 1) - f1 n)).toNat

end

end A051341.P8460687570124958676

namespace A051341

/-- `A073424(A002024(n+1)%Δ[A099375(n)])` -/
def P8460687570124958676.Spec : Prop :=
  ∀ n, P8460687570124958676.a n = A051341 n

end A051341

/-! ## A051341.P17011119756020165743

`and(A010054(A127648(n)), A115718(n))`
-/

namespace A051341.P17011119756020165743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010054 (A127648 n).toNat) (A115718 n)

end

end A051341.P17011119756020165743

namespace A051341

/-- `and(A010054(A127648(n)), A115718(n))` -/
def P17011119756020165743.Spec : Prop :=
  ∀ n, P17011119756020165743.a n = A051341 n

end A051341

/-!
# A051342: Smallest prime factor of 1 + (product of first n primes).

The programs for A051342, there is no canonical definition to state claims against.
-/

/-! ## A051342.P3823595175266625739

`A308439(∑[2^n])`
-/

namespace A051342.P3823595175266625739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308439 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051342.P3823595175266625739

/-! ## A051342.P15180887852012041039

`or(1, A308439(∑[A000079(n)]))`
-/

namespace A051342.P15180887852012041039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A308439 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A051342.P15180887852012041039

/-! ## A051342.P1704755845686012003

`A014963(6*(n+1))*A308439(∑[A000079(n)])`
-/

namespace A051342.P1704755845686012003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A308439 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051342.P1704755845686012003

/-! ## A051342.P3039626347154352607

`A308439(∑[A000079(n)])%A000041(19*(n+1))`
-/

namespace A051342.P3039626347154352607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308439 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000041 (19 * (n + 1)))

end

end A051342.P3039626347154352607

/-! ## A051342.P12613753955254093197

`A000040(A068488(n+1))`
-/

namespace A051342.P12613753955254093197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A068488 (n + 1)).toNat

end

end A051342.P12613753955254093197

/-!
# A051343: Number of ways of writing n as a sum of 3 nonnegative cubes (counted naively).

The programs for A051343, there is no canonical definition to state claims against.
-/

/-! ## A051343.P9230199607168886144

`A290054(∑[n+3]+n+3)`
-/

namespace A051343.P9230199607168886144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A051343.P9230199607168886144

/-! ## A051343.P9295660398325699509

`dr(A290054(A155212(n)+4))`
-/

namespace A051343.P9295660398325699509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A290054 (A155212 n + 4).toNat)

end

end A051343.P9295660398325699509

/-! ## A051343.P11706692513815671050

`A081373(A062677(n+1))*A290054(A155212(n)+4)`
-/

namespace A051343.P11706692513815671050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (A062677 (n + 1)).toNat * A290054 (A155212 n + 4).toNat

end

end A051343.P11706692513815671050

/-! ## A051343.P11580555155598383318

`A051344(n)+A347714(n)+A004526(A175362(n))`
-/

namespace A051343.P11580555155598383318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 n + (A347714 n + A004526 (A175362 n).toNat)

end

end A051343.P11580555155598383318

/-! ## A051343.P12051737769782011803

`A347715(n)+A025480(A175362(n))`
-/

namespace A051343.P12051737769782011803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347715 n + A025480 (A175362 n).toNat

end

end A051343.P12051737769782011803

/-!
# A051344: Number of ways of writing n as a sum of 3 positive cubes (counted naively).

The programs for A051344, there is no canonical definition to state claims against.
-/

/-! ## A051344.P3476889537874148614

`A051343(n)%A268354(A173682(n))`
-/

namespace A051344.P3476889537874148614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051343 n) (A268354 (A173682 n).toNat)

end

end A051344.P3476889537874148614

/-! ## A051344.P14008550152208905721

`A089309(n²)*A320841(A152950(n+1))*A051343(n)`
-/

namespace A051344.P14008550152208905721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n ^ 2) * A320841 (A152950 (n + 1)).toNat * A051343 n

end

end A051344.P14008550152208905721

/-! ## A051344.P1529341192573240964

`and(A347714(n)-1, A051343(n))`
-/

namespace A051344.P1529341192573240964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347714 n - 1) (A051343 n)

end

end A051344.P1529341192573240964

/-! ## A051344.P11881344787816251627

`gcd(A051343(n), A173677(n))-A347714(n)`
-/

namespace A051344.P11881344787816251627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A051343 n) (A173677 n) : ℤ) - A347714 n

end

end A051344.P11881344787816251627

/-! ## A051344.P9018910664414621009

`gcd(dr(A051343(n)), A175362(n))-A347714(n)`
-/

namespace A051344.P9018910664414621009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (SequenceMachineLib.digitalRoot (A051343 n) : ℤ) (A175362 n) : ℤ) - A347714 n

end

end A051344.P9018910664414621009

/-! ## A051344.P629953985140709063

`and(A347714(n)+A051343(n), A347716(n))`
-/

namespace A051344.P629953985140709063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A347714 n + A051343 n) (A347716 n)

end

end A051344.P629953985140709063

/-! ## A051344.P291300613295811740

`and(A051343(n), A347716(n))-A175362(n)%3`
-/

namespace A051344.P291300613295811740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051343 n) (A347716 n) - Int.tmod (A175362 n) 3

end

end A051344.P291300613295811740

/-! ## A051344.P11107171115661680051

`A347715(n)-A347714(n)`
-/

namespace A051344.P11107171115661680051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347715 n - A347714 n

end

end A051344.P11107171115661680051

/-! ## A051344.P3382243929181194835

`A025456(n)*A347715(n)`
-/

namespace A051344.P3382243929181194835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 n * A347715 n

end

end A051344.P3382243929181194835

/-! ## A051344.P6989238328897250097

`(1-A025446(n))*A347715(n)`
-/

namespace A051344.P6989238328897250097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A025446 n) * A347715 n

end

end A051344.P6989238328897250097

/-!
# A051345: Odd numbers not of the form 3 + twin prime + twin prime.

The programs for A051345, there is no canonical definition to state claims against.
-/

/-! ## A051345.P15221781894915844366

`∪[A009005(A007534(n+1)), A156695(n+1)]`
-/

namespace A051345.P15221781894915844366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A007534 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051345.P15221781894915844366

/-! ## A051345.P620075208556022255

`∑[A001065(record[∑[(-2)^n]])+1]`
-/

namespace A051345.P620075208556022255
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051345.P620075208556022255

/-! ## A051345.P6519836778803455441

`∑[A325248(gcd(n, ∑[n])+2^n)]`
-/

namespace A051345.P6519836778803455441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325248 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) + 2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051345.P6519836778803455441

/-!
# A051346: Numbers that can be written as k/d(k) in four or more ways, where d(k) = number of divisors of k.

The programs for A051346, there is no canonical definition to state claims against.
-/

/-! ## A051346.P13573279125039609641

`A074591(∪[A217125(n+1), A217126(n+1)])`
-/

namespace A051346.P13573279125039609641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217126 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051346.P13573279125039609641

/-! ## A051346.P7615165897645811863

`A074591(A217125(n+1))`
-/

namespace A051346.P7615165897645811863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (A217125 (n + 1)).toNat

end

end A051346.P7615165897645811863

/-!
# A051347: Numbers that are the sum of two (possibly negative) cubes in at least 2 ways.

The programs for A051347, there is no canonical definition to state claims against.
-/

/-! ## A051347.P17398675305509584495

`∪[A225908(n+1), A293647(n+1)]%A125063(n+1)`
-/

namespace A051347.P17398675305509584495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A125063 (n + 1))

end

end A051347.P17398675305509584495

/-! ## A051347.P4295113077377081034

`∪[A293647(A032557(n+1)+1), A225908(n+1)]`
-/

namespace A051347.P4295113077377081034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (A032557 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051347.P4295113077377081034

/-! ## A051347.P11197284681868864993

`∪[A225908(A032555(n+1)), A293647(n+2)]`
-/

namespace A051347.P11197284681868864993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225908 (A032555 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051347.P11197284681868864993

/-! ## A051347.P17561968167143114495

`A293647(A032555(n+1))`
-/

namespace A051347.P17561968167143114495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (A032555 (n + 1)).toNat

end

end A051347.P17561968167143114495

/-! ## A051347.P3033930833430349341

`A293647(A032557(n+1))`
-/

namespace A051347.P3033930833430349341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293647 (A032557 (n + 1)).toNat

end

end A051347.P3033930833430349341

/-!
# A051348: a(n) = F(n) / Product_{p|n} F(p), where F(k) is k-th Fibonacci number and the p's in product are the distinct primes dividing n.

The programs for A051348, the canonical program `A051348.P7480873453457337069` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051348 has offset 1).

The definition of A051348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051348.P7480873453457337069

`A000045(n+1)/A113176(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051348

/-- `A000045(n+1)/A113176(n+1)` -/
def P7480873453457337069.Spec : Prop :=
  ∀ n, P7480873453457337069.a n = (A051348 (n + 1) : ℚ)

end A051348

/-! ## A051348.P2235003284093603415

`(A000071(n+1)+1)/A113176(n+1)`
-/

namespace A051348.P2235003284093603415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1 : ℚ) / (A113176 (n + 1) : ℚ)

end

end A051348.P2235003284093603415

namespace A051348

/-- `(A000071(n+1)+1)/A113176(n+1)` -/
def P2235003284093603415.Spec : Prop :=
  ∀ n, P2235003284093603415.a n = (A051348 (n + 1) : ℚ)

end A051348

/-! ## A051348.P6794069802853409479

`A000045(n+1)/∏{p}[n+1, A000045(#)]`
-/

namespace A051348.P6794069802853409479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A000045 p : ℤ) : ℚ)

end

end A051348.P6794069802853409479

namespace A051348

/-- `A000045(n+1)/∏{p}[n+1, A000045(#)]` -/
def P6794069802853409479.Spec : Prop :=
  ∀ n, P6794069802853409479.a n = (A051348 (n + 1) : ℚ)

end A051348

/-! ## A051348.P5665672920040529293

`A000045(n+1)/A113175(A007947(n+1))`
-/

namespace A051348.P5665672920040529293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A113175 (A007947 (n + 1)).toNat : ℚ)

end

end A051348.P5665672920040529293

namespace A051348

/-- `A000045(n+1)/A113175(A007947(n+1))` -/
def P5665672920040529293.Spec : Prop :=
  ∀ n, P5665672920040529293.a n = (A051348 (n + 1) : ℚ)

end A051348

/-! ## A051348.P5157457319427224049

`A027926(A002378(n))/A113176(n+1)`
-/

namespace A051348.P5157457319427224049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027926 (A002378 n).toNat : ℚ) / (A113176 (n + 1) : ℚ)

end

end A051348.P5157457319427224049

namespace A051348

/-- `A027926(A002378(n))/A113176(n+1)` -/
def P5157457319427224049.Spec : Prop :=
  ∀ n, P5157457319427224049.a n = (A051348 (n + 1) : ℚ)

end A051348

/-!
# A051349: Sum of first n nonprimes.

The programs for A051349, the canonical program `A051349.P2414547720400107792` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051349 has offset 0).

The definition of A051349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051349.P9409491239022433932

`∑[comp[p?[xor(1, n)]]]`
-/

namespace A051349.P9409491239022433932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P9409491239022433932

namespace A051349

/-- `∑[comp[p?[xor(1, n)]]]` -/
def P9409491239022433932.Spec : Prop :=
  ∀ n, (P9409491239022433932.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P7998450800831139819

`∑[comp[A060264(n)]]`
-/

namespace A051349.P7998450800831139819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P7998450800831139819

namespace A051349

/-- `∑[comp[A060264(n)]]` -/
def P7998450800831139819.Spec : Prop :=
  ∀ n, (P7998450800831139819.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P5762310345444234186

`∑[comp[A134204(n)]]`
-/

namespace A051349.P5762310345444234186
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P5762310345444234186

namespace A051349

/-- `∑[comp[A134204(n)]]` -/
def P5762310345444234186.Spec : Prop :=
  ∀ n, (P5762310345444234186.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P3447758889198514056

`∑[comp[A151800(n)]]`
-/

namespace A051349.P3447758889198514056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P3447758889198514056

namespace A051349

/-- `∑[comp[A151800(n)]]` -/
def P3447758889198514056.Spec : Prop :=
  ∀ n, (P3447758889198514056.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P10028964765675491314

`∑[comp[A162753(n)]]`
-/

namespace A051349.P10028964765675491314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P10028964765675491314

namespace A051349

/-- `∑[comp[A162753(n)]]` -/
def P10028964765675491314.Spec : Prop :=
  ∀ n, (P10028964765675491314.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P10761299172525439491

`∑[A141468(n+1)]`
-/

namespace A051349.P10761299172525439491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P10761299172525439491

namespace A051349

/-- `∑[A141468(n+1)]` -/
def P10761299172525439491.Spec : Prop :=
  ∀ n, P10761299172525439491.a n = A051349 n

end A051349

/-! ## A051349.P15882707446067967430

`∑[comp[Δ[A007504(n)]]]`
-/

namespace A051349.P15882707446067967430
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P15882707446067967430

namespace A051349

/-- `∑[comp[Δ[A007504(n)]]]` -/
def P15882707446067967430.Spec : Prop :=
  ∀ n, (P15882707446067967430.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P16709710660524172296

`A175967(n+1)-1`
-/

namespace A051349.P16709710660524172296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1) - 1

end

end A051349.P16709710660524172296

namespace A051349

/-- `A175967(n+1)-1` -/
def P16709710660524172296.Spec : Prop :=
  ∀ n, P16709710660524172296.a n = A051349 n

theorem P16709710660524172296.correct : P16709710660524172296.Spec := by
  intro n
  simp only [A051349, Nat.add_sub_cancel, A051349.P16709710660524172296.a, A051349.P2414547720400107792.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A175967, A175967.P17254181130027743458.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051349

/-! ## A051349.P18276681585626065169

`∑[sqrt(A161753(n+1))]`
-/

namespace A051349.P18276681585626065169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A161753 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P18276681585626065169

namespace A051349

/-- `∑[sqrt(A161753(n+1))]` -/
def P18276681585626065169.Spec : Prop :=
  ∀ n, P18276681585626065169.a n = (A051349 n : ℝ)

end A051349

/-! ## A051349.P17083810747496198331

`∑[comp[A000040(n+1)]]`
-/

namespace A051349.P17083810747496198331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P17083810747496198331

namespace A051349

/-- `∑[comp[A000040(n+1)]]` -/
def P17083810747496198331.Spec : Prop :=
  ∀ n, (P17083810747496198331.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P1749996284309747070

`∑[comp[A006530(n+2)]]`
-/

namespace A051349.P1749996284309747070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P1749996284309747070

namespace A051349

/-- `∑[comp[A006530(n+2)]]` -/
def P1749996284309747070.Spec : Prop :=
  ∀ n, (P1749996284309747070.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P10670681543777197509

`∑[comp[A008578(n+2)]]`
-/

namespace A051349.P10670681543777197509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P10670681543777197509

namespace A051349

/-- `∑[comp[A008578(n+2)]]` -/
def P10670681543777197509.Spec : Prop :=
  ∀ n, (P10670681543777197509.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P8721591238228428296

`∑[comp[A020639(n+2)]]`
-/

namespace A051349.P8721591238228428296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P8721591238228428296

namespace A051349

/-- `∑[comp[A020639(n+2)]]` -/
def P8721591238228428296.Spec : Prop :=
  ∀ n, (P8721591238228428296.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P7662783427146922942

`∑[comp[A025473(n+2)]]`
-/

namespace A051349.P7662783427146922942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P7662783427146922942

namespace A051349

/-- `∑[comp[A025473(n+2)]]` -/
def P7662783427146922942.Spec : Prop :=
  ∀ n, (P7662783427146922942.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P729810889379219981

`∑[A176100(n+1)/2]`
-/

namespace A051349.P729810889379219981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176100 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P729810889379219981

namespace A051349

/-- `∑[A176100(n+1)/2]` -/
def P729810889379219981.Spec : Prop :=
  ∀ n, P729810889379219981.a n = (A051349 n : ℚ)

end A051349

/-! ## A051349.P8529257758682208042

`∑[A173073(n+1)+n]`
-/

namespace A051349.P8529257758682208042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173073 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P8529257758682208042

namespace A051349

/-- `∑[A173073(n+1)+n]` -/
def P8529257758682208042.Spec : Prop :=
  ∀ n, P8529257758682208042.a n = A051349 n

end A051349

/-! ## A051349.P2414547720400107792

`a(n-1)+A018252(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051349

/-- `a(n-1)+A018252(n)` -/
def P2414547720400107792.Spec : Prop :=
  ∀ n, P2414547720400107792.a n = A051349 n

theorem P2414547720400107792.correct : P2414547720400107792.Spec := by
  intro n
  simp only [A051349]

end A051349

/-! ## A051349.P7473243916197537011

`∑[comp[A006093(n+1)+1]]`
-/

namespace A051349.P7473243916197537011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P7473243916197537011

namespace A051349

/-- `∑[comp[A006093(n+1)+1]]` -/
def P7473243916197537011.Spec : Prop :=
  ∀ n, (P7473243916197537011.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P13862939873940366216

`∑[comp[A008864(n+1)-1]]`
-/

namespace A051349.P13862939873940366216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051349.P13862939873940366216

namespace A051349

/-- `∑[comp[A008864(n+1)-1]]` -/
def P13862939873940366216.Spec : Prop :=
  ∀ n, (P13862939873940366216.a n : ℤ) = A051349 n

end A051349

/-! ## A051349.P13889664689998611530

`A163061(n+1)-A007504(n+1)`
-/

namespace A051349.P13889664689998611530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163061 (n + 1) - A007504 (n + 1)

end

end A051349.P13889664689998611530

namespace A051349

/-- `A163061(n+1)-A007504(n+1)` -/
def P13889664689998611530.Spec : Prop :=
  ∀ n, P13889664689998611530.a n = A051349 n

theorem P13889664689998611530.correct : P13889664689998611530.Spec := by
  intro n
  simp only [A051349, Nat.add_sub_cancel, A051349.P13889664689998611530.a, A051349.P2414547720400107792.a, A007504, A007504.P14310834286015847203.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A163061, A163061.P15581848910612517848.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051349

/-!
# A051350: Sum of digit-sums of first n nonprimes.

The programs for A051350, the canonical program `A051350.P4736732593803182933` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051350 has offset 0).

The definition of A051350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051350.P15747581974622573251

`∑[∑{digits}[comp[A151800(n)], #]]`
-/

namespace A051350.P15747581974622573251
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P15747581974622573251

namespace A051350

/-- `∑[∑{digits}[comp[A151800(n)], #]]` -/
def P15747581974622573251.Spec : Prop :=
  ∀ n, (P15747581974622573251.a n : ℤ) = A051350 n

end A051350

/-! ## A051350.P1497904497439459068

`∑[∑{digits}[A141468(n+1), #]]`
-/

namespace A051350.P1497904497439459068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P1497904497439459068

namespace A051350

/-- `∑[∑{digits}[A141468(n+1), #]]` -/
def P1497904497439459068.Spec : Prop :=
  ∀ n, (P1497904497439459068.a n : ℤ) = A051350 n

end A051350

/-! ## A051350.P4736732593803182933

`∑[∑{digits}[comp[A000040(n+1)], #]]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051350

/-- `∑[∑{digits}[comp[A000040(n+1)], #]]` -/
def P4736732593803182933.Spec : Prop :=
  ∀ n, (P4736732593803182933.a n : ℤ) = A051350 n

theorem P4736732593803182933.correct : P4736732593803182933.Spec := by
  intro n
  simp only [A051350]

end A051350

/-! ## A051350.P6987628181660894496

`∑[∑{digits}[comp[A006530(n+2)], #]]`
-/

namespace A051350.P6987628181660894496
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P6987628181660894496

namespace A051350

/-- `∑[∑{digits}[comp[A006530(n+2)], #]]` -/
def P6987628181660894496.Spec : Prop :=
  ∀ n, (P6987628181660894496.a n : ℤ) = A051350 n

end A051350

/-! ## A051350.P5486036167197928571

`∑[∑{digits}[comp[A020639(n+2)], #]]`
-/

namespace A051350.P5486036167197928571
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P5486036167197928571

namespace A051350

/-- `∑[∑{digits}[comp[A020639(n+2)], #]]` -/
def P5486036167197928571.Spec : Prop :=
  ∀ n, (P5486036167197928571.a n : ℤ) = A051350 n

end A051350

/-! ## A051350.P10244978070669548080

`∑[∑{digits}[eq[0, A055671(n)], #]]`
-/

namespace A051350.P10244978070669548080
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P10244978070669548080

namespace A051350

/-- `∑[∑{digits}[eq[0, A055671(n)], #]]` -/
def P10244978070669548080.Spec : Prop :=
  ∀ n, (P10244978070669548080.a n : ℤ) = A051350 n

end A051350

/-! ## A051350.P2512819920660585415

`∑[A007953(comp[A007918(n)])]`
-/

namespace A051350.P2512819920660585415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P2512819920660585415

namespace A051350

/-- `∑[A007953(comp[A007918(n)])]` -/
def P2512819920660585415.Spec : Prop :=
  ∀ n, P2512819920660585415.a n = A051350 n

end A051350

/-! ## A051350.P11759563539065332743

`∑[A007953(comp[A151800(n)])]`
-/

namespace A051350.P11759563539065332743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P11759563539065332743

namespace A051350

/-- `∑[A007953(comp[A151800(n)])]` -/
def P11759563539065332743.Spec : Prop :=
  ∀ n, P11759563539065332743.a n = A051350 n

end A051350

/-! ## A051350.P8030771624109719997

`∑[A007953(A141468(n+1))]`
-/

namespace A051350.P8030771624109719997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A141468 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P8030771624109719997

namespace A051350

/-- `∑[A007953(A141468(n+1))]` -/
def P8030771624109719997.Spec : Prop :=
  ∀ n, P8030771624109719997.a n = A051350 n

end A051350

/-! ## A051350.P8822831968929913495

`∑[A007953(eq[0, A055671(n)])]`
-/

namespace A051350.P8822831968929913495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P8822831968929913495

namespace A051350

/-- `∑[A007953(eq[0, A055671(n)])]` -/
def P8822831968929913495.Spec : Prop :=
  ∀ n, P8822831968929913495.a n = A051350 n

end A051350

/-! ## A051350.P1859555134302182925

`∑[A007953(comp[A000040(n+1)])]`
-/

namespace A051350.P1859555134302182925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P1859555134302182925

namespace A051350

/-- `∑[A007953(comp[A000040(n+1)])]` -/
def P1859555134302182925.Spec : Prop :=
  ∀ n, P1859555134302182925.a n = A051350 n

end A051350

/-! ## A051350.P11832707808881736483

`∑[A007953(eq[n, A103164(n)])]`
-/

namespace A051350.P11832707808881736483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051350.P11832707808881736483

namespace A051350

/-- `∑[A007953(eq[n, A103164(n)])]` -/
def P11832707808881736483.Spec : Prop :=
  ∀ n, P11832707808881736483.a n = A051350 n

end A051350

/-!
# A051351: a(n) = a(n-1) + sum of digits of n-th prime.

The programs for A051351, the canonical program `A051351.P6493723572968094148` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051351 has offset 0).

The definition of A051351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051351.P2321424540388807228

`∑[∑{digits}[A182986(n+1), #]]`
-/

namespace A051351.P2321424540388807228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051351.P2321424540388807228

namespace A051351

/-- `∑[∑{digits}[A182986(n+1), #]]` -/
def P2321424540388807228.Spec : Prop :=
  ∀ n, (P2321424540388807228.a n : ℤ) = A051351 n

end A051351

/-! ## A051351.P6800844790198264779

`∑[∑{digits}[A008578(n+1), #]]-1`
-/

namespace A051351.P6800844790198264779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A051351.P6800844790198264779

namespace A051351

/-- `∑[∑{digits}[A008578(n+1), #]]-1` -/
def P6800844790198264779.Spec : Prop :=
  ∀ n, P6800844790198264779.a n = A051351 n

end A051351

/-! ## A051351.P17158573797468542136

`A037123(n)-A239324(n)`
-/

namespace A051351.P17158573797468542136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n - A239324 n

end

end A051351.P17158573797468542136

namespace A051351

/-- `A037123(n)-A239324(n)` -/
def P17158573797468542136.Spec : Prop :=
  ∀ n, P17158573797468542136.a n = A051351 n

end A051351

/-! ## A051351.P6493723572968094148

`∑[A007605(A000007(n)+n)]-2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051351

/-- `∑[A007605(A000007(n)+n)]-2` -/
def P6493723572968094148.Spec : Prop :=
  ∀ n, P6493723572968094148.a n = A051351 n

theorem P6493723572968094148.correct : P6493723572968094148.Spec := by
  intro n
  simp only [A051351]

end A051351

/-! ## A051351.P11073927809451345775

`∑[A007605(n+1)]-A007605(n+1)`
-/

namespace A051351.P11073927809451345775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007605 (n + 1)

end

end A051351.P11073927809451345775

namespace A051351

/-- `∑[A007605(n+1)]-A007605(n+1)` -/
def P11073927809451345775.Spec : Prop :=
  ∀ n, P11073927809451345775.a n = A051351 n

end A051351

/-! ## A051351.P17856872638254414945

`∑[∑{digits}[record[A008472(n+1)], #]]`
-/

namespace A051351.P17856872638254414945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051351.P17856872638254414945

namespace A051351

/-- `∑[∑{digits}[record[A008472(n+1)], #]]` -/
def P17856872638254414945.Spec : Prop :=
  ∀ n, (P17856872638254414945.a n : ℤ) = A051351 n

end A051351

/-! ## A051351.P13892639326424594386

`∑[∑{digits}[record[A006530(n+1)], #]]-1`
-/

namespace A051351.P13892639326424594386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A051351.P13892639326424594386

namespace A051351

/-- `∑[∑{digits}[record[A006530(n+1)], #]]-1` -/
def P13892639326424594386.Spec : Prop :=
  ∀ n, P13892639326424594386.a n = A051351 n

end A051351

/-! ## A051351.P2975929190573389680

`∑[∑{digits}[record[A020639(n+1)], #]]-1`
-/

namespace A051351.P2975929190573389680
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A051351.P2975929190573389680

namespace A051351

/-- `∑[∑{digits}[record[A020639(n+1)], #]]-1` -/
def P2975929190573389680.Spec : Prop :=
  ∀ n, P2975929190573389680.a n = A051351 n

end A051351

/-! ## A051351.P9883626976177493445

`A067112(A068670(n))`
-/

namespace A051351.P9883626976177493445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (A068670 n).toNat

end

end A051351.P9883626976177493445

namespace A051351

/-- `A067112(A068670(n))` -/
def P9883626976177493445.Spec : Prop :=
  ∀ n, P9883626976177493445.a n = A051351 n

end A051351

/-! ## A051351.P5793702187106537342

`∑[∑{digits}[record[A014963(n+1)], #]]-1`
-/

namespace A051351.P5793702187106537342
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A051351.P5793702187106537342

namespace A051351

/-- `∑[∑{digits}[record[A014963(n+1)], #]]-1` -/
def P5793702187106537342.Spec : Prop :=
  ∀ n, P5793702187106537342.a n = A051351 n

end A051351

/-! ## A051351.P3368725337991849267

`∑[∑{digits}[record[A014973(n+1)], #]]-1`
-/

namespace A051351.P3368725337991849267
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A051351.P3368725337991849267

namespace A051351

/-- `∑[∑{digits}[record[A014973(n+1)], #]]-1` -/
def P3368725337991849267.Spec : Prop :=
  ∀ n, P3368725337991849267.a n = A051351 n

end A051351

/-! ## A051351.P13795317010896020825

`∑[A118503(A008578(n+1))]`
-/

namespace A051351.P13795317010896020825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118503 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051351.P13795317010896020825

namespace A051351

/-- `∑[A118503(A008578(n+1))]` -/
def P13795317010896020825.Spec : Prop :=
  ∀ n, P13795317010896020825.a n = A051351 n

end A051351

/-! ## A051351.P18167856613764014251

`∑[A007953(A182986(n+1))]`
-/

namespace A051351.P18167856613764014251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A182986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051351.P18167856613764014251

namespace A051351

/-- `∑[A007953(A182986(n+1))]` -/
def P18167856613764014251.Spec : Prop :=
  ∀ n, P18167856613764014251.a n = A051351 n

end A051351

/-! ## A051351.P11579639159685983639

`∑[A007953(comp[A018252(n+1)])]`
-/

namespace A051351.P11579639159685983639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051351.P11579639159685983639

namespace A051351

/-- `∑[A007953(comp[A018252(n+1)])]` -/
def P11579639159685983639.Spec : Prop :=
  ∀ n, P11579639159685983639.a n = A051351 n

end A051351

/-! ## A051351.P9172630419724208890

`∑[A007953(A000040(abs(1-n)+1))]-3`
-/

namespace A051351.P9172630419724208890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A000040 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A051351.P9172630419724208890

namespace A051351

/-- `∑[A007953(A000040(abs(1-n)+1))]-3` -/
def P9172630419724208890.Spec : Prop :=
  ∀ n, P9172630419724208890.a n = A051351 n

end A051351

/-!
# A051352: a(0) = 0; for n>0, a(n) = a(n-1) + n if n not prime else a(n-1) - n.

The programs for A051352, the canonical program `A051352.P2247896589470806278` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051352 has offset 0).

The definition of A051352 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051352.P16011337839627457097

`a(n-1)+n*(2*A005171(n)-1)` with `a(0)=0`
-/

namespace A051352.P16011337839627457097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (2 * A005171 n - 1)

end

end A051352.P16011337839627457097

namespace A051352

/-- `a(n-1)+n*(2*A005171(n)-1)` -/
def P16011337839627457097.Spec : Prop :=
  ∀ n, P16011337839627457097.a n = A051352 n

theorem P16011337839627457097.correct : P16011337839627457097.Spec := by
  intro n
  simp only [A051352, Nat.add_sub_cancel, A051352.P16011337839627457097.a, A051352.P2247896589470806278.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051352

/-! ## A051352.P2247896589470806278

`a(n-1)+n*(1-2*A010051(n))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051352

/-- `a(n-1)+n*(1-2*A010051(n))` -/
def P2247896589470806278.Spec : Prop :=
  ∀ n, P2247896589470806278.a n = A051352 n

theorem P2247896589470806278.correct : P2247896589470806278.Spec := by
  intro n
  simp only [A051352]

end A051352

/-! ## A051352.P11296582860705370969

`a(n-1)+n*(A005171(n)-A010051(n))` with `a(0)=0`
-/

namespace A051352.P11296582860705370969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) * (A005171 n - A010051 n)

end

end A051352.P11296582860705370969

namespace A051352

/-- `a(n-1)+n*(A005171(n)-A010051(n))` -/
def P11296582860705370969.Spec : Prop :=
  ∀ n, P11296582860705370969.a n = A051352 n

theorem P11296582860705370969.correct : P11296582860705370969.Spec := by
  intro n
  simp only [A051352, Nat.add_sub_cancel, A051352.P11296582860705370969.a, A051352.P2247896589470806278.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P15078252821583414300.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A051352

/-! ## A051352.P6254827450981739786

`2*A101203(n)-∑[n]`
-/

namespace A051352.P6254827450981739786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101203 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051352.P6254827450981739786

namespace A051352

/-- `2*A101203(n)-∑[n]` -/
def P6254827450981739786.Spec : Prop :=
  ∀ n, P6254827450981739786.a n = A051352 n

end A051352

/-! ## A051352.P5326418967191562371

`(n+1)*A118777(n)-∑[A118777(n)]`
-/

namespace A051352.P5326418967191562371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A118777 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051352.P5326418967191562371

namespace A051352

/-- `(n+1)*A118777(n)-∑[A118777(n)]` -/
def P5326418967191562371.Spec : Prop :=
  ∀ n, P5326418967191562371.a n = A051352 n

end A051352

/-! ## A051352.P7367761554372749782

`A101203(n)+A101203(n)-A000217(n)`
-/

namespace A051352.P7367761554372749782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n + (A101203 n - A000217 n)

end

end A051352.P7367761554372749782

namespace A051352

/-- `A101203(n)+A101203(n)-A000217(n)` -/
def P7367761554372749782.Spec : Prop :=
  ∀ n, P7367761554372749782.a n = A051352 n

end A051352

/-! ## A051352.P7790234892958821126

`A101203(n)+A101203(n)-A161680(n+1)`
-/

namespace A051352.P7790234892958821126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n + (A101203 n - A161680 (n + 1))

end

end A051352.P7790234892958821126

namespace A051352

/-- `A101203(n)+A101203(n)-A161680(n+1)` -/
def P7790234892958821126.Spec : Prop :=
  ∀ n, P7790234892958821126.a n = A051352 n

end A051352

/-! ## A051352.P179429273979991370

`A101203(n)-A063960(2*n+1)`
-/

namespace A051352.P179429273979991370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n - A063960 (2 * n + 1)

end

end A051352.P179429273979991370

namespace A051352

/-- `A101203(n)-A063960(2*n+1)` -/
def P179429273979991370.Spec : Prop :=
  ∀ n, P179429273979991370.a n = A051352 n

end A051352

/-! ## A051352.P12696261423247294545

`∑[n*(1-A214304(A249802(n+1)))]`
-/

namespace A051352.P12696261423247294545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A214304 (A249802 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051352.P12696261423247294545

namespace A051352

/-- `∑[n*(1-A214304(A249802(n+1)))]` -/
def P12696261423247294545.Spec : Prop :=
  ∀ n, P12696261423247294545.a n = A051352 n

end A051352

/-! ## A051352.P11446133374540994967

`∑[n*A010892(A025555(∑{e}[n, #]+1))]`
-/

namespace A051352.P11446133374540994967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010892 (A025555 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051352.P11446133374540994967

namespace A051352

/-- `∑[n*A010892(A025555(∑{e}[n, #]+1))]` -/
def P11446133374540994967.Spec : Prop :=
  ∀ n, P11446133374540994967.a n = A051352 n

end A051352

/-!
# A051353: a(n) = a(n-1) + n^2 if n prime else a(n-1) - n, starting with a(0) = 0.

The programs for A051353, the canonical program `A051353.P4884144329668290276` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051353 has offset 0).

The definition of A051353 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051353.P4884144329668290276

`a(n-1)+n*(A010051(n)*(n+1)-1)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051353

/-- `a(n-1)+n*(A010051(n)*(n+1)-1)` -/
def P4884144329668290276.Spec : Prop :=
  ∀ n, P4884144329668290276.a n = A051353 n

theorem P4884144329668290276.correct : P4884144329668290276.Spec := by
  intro n
  simp only [A051353]

end A051353

/-! ## A051353.P8465196198089131190

`∑[(-n)^∏{p}[n, C(#, n)+1]]`
-/

namespace A051353.P8465196198089131190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) ^ (∏ p ∈ Nat.primeFactors (f2 n), (Nat.choose p n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051353.P8465196198089131190

namespace A051353

/-- `∑[(-n)^∏{p}[n, C(#, n)+1]]` -/
def P8465196198089131190.Spec : Prop :=
  ∀ n, P8465196198089131190.a n = A051353 n

end A051353

/-! ## A051353.P17878593646001368817

`∑[n*(lcm(n+1, A055672(n))-1)]`
-/

namespace A051353.P17878593646001368817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Int.lcm (n + 1 : ℤ) (A055672 n) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051353.P17878593646001368817

namespace A051353

/-- `∑[n*(lcm(n+1, A055672(n))-1)]` -/
def P17878593646001368817.Spec : Prop :=
  ∀ n, P17878593646001368817.a n = A051353 n

end A051353

/-! ## A051353.P13883159436458026946

`∑[(-n)^(2-char[A018252(n+1)])]`
-/

namespace A051353.P13883159436458026946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ) : ℚ) ^ (2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051353.P13883159436458026946

namespace A051353

/-- `∑[(-n)^(2-char[A018252(n+1)])]` -/
def P13883159436458026946.Spec : Prop :=
  ∀ n, P13883159436458026946.a n = (A051353 n : ℚ)

end A051353

/-! ## A051353.P7475693439111203966

`∑[(n+1)*A061397(A263313(n)+1)-n]`
-/

namespace A051353.P7475693439111203966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061397 (A263313 n + 1).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051353.P7475693439111203966

namespace A051353

/-- `∑[(n+1)*A061397(A263313(n)+1)-n]` -/
def P7475693439111203966.Spec : Prop :=
  ∀ n, P7475693439111203966.a n = A051353 n

end A051353

/-! ## A051353.P6438396078954644709

`∑[(n-2*n)^A014963((∑{e}[n, #]+1)!)]`
-/

namespace A051353.P6438396078954644709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (2 * n : ℤ) : ℚ) ^ (A014963 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051353.P6438396078954644709

namespace A051353

/-- `∑[(n-2*n)^A014963((∑{e}[n, #]+1)!)]` -/
def P6438396078954644709.Spec : Prop :=
  ∀ n, P6438396078954644709.a n = (A051353 n : ℚ)

end A051353

/-!
# A051354: Expansion of Molien series for 16-dimensional complex Clifford group of genus 4 and order 97029351014400.

The programs for A051354, there is no canonical definition to state claims against.
-/

/-! ## A051354.P17163054131405347537

`A027672(2*n)`
-/

namespace A051354.P17163054131405347537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027672 (2 * n)

end

end A051354.P17163054131405347537

/-! ## A051354.P17269486366711926806

`lcm(or(n, -1), A027672(A005843(n)))`
-/

namespace A051354.P17269486366711926806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A027672 (A005843 n).toNat)

end

end A051354.P17269486366711926806

/-! ## A051354.P14225287103086882986

`A027672(A004277(n))+A000007(n)`
-/

namespace A051354.P14225287103086882986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027672 (A004277 n).toNat + A000007 n

end

end A051354.P14225287103086882986

/-! ## A051354.P8986449701239880251

`gcd(A000038(n), A027672(A005843(n)))`
-/

namespace A051354.P8986449701239880251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027672 (A005843 n).toNat)

end

end A051354.P8986449701239880251

/-! ## A051354.P11424948662356699542

`gcd(A027672(A004277(n)), A130706(n))`
-/

namespace A051354.P11424948662356699542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027672 (A004277 n).toNat) (A130706 n)

end

end A051354.P11424948662356699542

/-! ## A051354.P14829074159126594658

`lcm(A027672(A005843(n)), A033999(n))`
-/

namespace A051354.P14829074159126594658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027672 (A005843 n).toNat) (A033999 n)

end

end A051354.P14829074159126594658

/-! ## A051354.P18046366508956040891

`or(A000007(n), A027672(A005843(n)))`
-/

namespace A051354.P18046366508956040891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027672 (A005843 n).toNat)

end

end A051354.P18046366508956040891

/-! ## A051354.P9388584038473532150

`A027672(A004273(n)+1)+A000007(n)`
-/

namespace A051354.P9388584038473532150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027672 (A004273 n + 1).toNat + A000007 n

end

end A051354.P9388584038473532150

/-! ## A051354.P16393357806854195849

`A027672(A004277(n))+A001316(n)%2`
-/

namespace A051354.P16393357806854195849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027672 (A004277 n).toNat + Int.tmod (A001316 n) 2

end

end A051354.P16393357806854195849

/-! ## A051354.P2078362492974414721

`A027672(A004273(n)+1)+char[A032780(n)]`
-/

namespace A051354.P2078362492974414721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032780 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027672 (A004273 n + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051354.P2078362492974414721

/-! ## A051354.P4908516238718624814

`A027672(A004273(n)+1)+char[A032781(n)]`
-/

namespace A051354.P4908516238718624814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032781 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027672 (A004273 n + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051354.P4908516238718624814

/-! ## A051354.P1892110565319325180

`A027672(A005843(n))/A001222(A008578(n+3))`
-/

namespace A051354.P1892110565319325180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027672 (A005843 n).toNat : ℚ) / (A001222 (A008578 (n + 3)).toNat : ℚ)

end

end A051354.P1892110565319325180

/-! ## A051354.P13750109738428774961

`A027672(A005843(n))^(A030000(n)/A063565(n))`
-/

namespace A051354.P13750109738428774961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A027672 (A005843 n).toNat : ℝ) ^ ((A030000 n : ℚ) / (A063565 n : ℚ) : ℝ)

end

end A051354.P13750109738428774961

/-!
# A051356: Start with 0, run through primes >=5, adding if -1 mod 6, subtracting if +1 mod 6.

The programs for A051356, the canonical program `A051356.P11536315113442041786` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051356 has offset 0).

The definition of A051356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051356.P11536315113442041786

`∑[Δ[A112632(n+1)]*A065091(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051356

/-- `∑[Δ[A112632(n+1)]*A065091(n+1)]` -/
def P11536315113442041786.Spec : Prop :=
  ∀ n, P11536315113442041786.a n = A051356 n

theorem P11536315113442041786.correct : P11536315113442041786.Spec := by
  intro n
  simp only [A051356]

end A051356

/-! ## A051356.P9368051388474650478

`∑[Δ[A174695(n+1)]*A065091(n+1)]`
-/

namespace A051356.P9368051388474650478
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P9368051388474650478

namespace A051356

/-- `∑[Δ[A174695(n+1)]*A065091(n+1)]` -/
def P9368051388474650478.Spec : Prop :=
  ∀ n, P9368051388474650478.a n = A051356 n

theorem P9368051388474650478.correct : P9368051388474650478.Spec := by
  intro n
  simp only [A051356, Nat.add_sub_cancel, A051356.P9368051388474650478.f2, A051356.P9368051388474650478.f1, A051356.P9368051388474650478.a, A051356.P11536315113442041786.f2, A051356.P11536315113442041786.f1, A051356.P11536315113442041786.a, A065091, A065091.P6971844946592549357.a, A112632, A112632.P1974851305689260056.f1, A112632.P1974851305689260056.a, A174695, A174695.P15433505935837686491.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A051356

/-! ## A051356.P8785804709514595276

`∑[A000040(n+2)*Δ[A112632(n+1)]]`
-/

namespace A051356.P8785804709514595276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P8785804709514595276

namespace A051356

/-- `∑[A000040(n+2)*Δ[A112632(n+1)]]` -/
def P8785804709514595276.Spec : Prop :=
  ∀ n, P8785804709514595276.a n = A051356 n

end A051356

/-! ## A051356.P10515480378308781915

`∑[-A100050(p?[2*n+1])]`
-/

namespace A051356.P10515480378308781915
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100050 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P10515480378308781915

namespace A051356

/-- `∑[-A100050(p?[2*n+1])]` -/
def P10515480378308781915.Spec : Prop :=
  ∀ n, P10515480378308781915.a n = A051356 n

end A051356

/-! ## A051356.P2173533675763780943

`∑[-A100050(A065091(n+1))]`
-/

namespace A051356.P2173533675763780943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100050 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P2173533675763780943

namespace A051356

/-- `∑[-A100050(A065091(n+1))]` -/
def P2173533675763780943.Spec : Prop :=
  ∀ n, P2173533675763780943.a n = A051356 n

end A051356

/-! ## A051356.P12739792163789899694

`∑[-A100050(A000040(n+2))]`
-/

namespace A051356.P12739792163789899694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100050 (A000040 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P12739792163789899694

namespace A051356

/-- `∑[-A100050(A000040(n+2))]` -/
def P12739792163789899694.Spec : Prop :=
  ∀ n, P12739792163789899694.a n = A051356 n

end A051356

/-! ## A051356.P12013815695221145405

`∑[-A100050(A008578(n+3))]`
-/

namespace A051356.P12013815695221145405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100050 (A008578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P12013815695221145405

namespace A051356

/-- `∑[-A100050(A008578(n+3))]` -/
def P12013815695221145405.Spec : Prop :=
  ∀ n, P12013815695221145405.a n = A051356 n

end A051356

/-! ## A051356.P18148338125326255334

`2-∑[A100050(p?[A091684(n)])]`
-/

namespace A051356.P18148338125326255334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100050 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051356.P18148338125326255334

namespace A051356

/-- `2-∑[A100050(p?[A091684(n)])]` -/
def P18148338125326255334.Spec : Prop :=
  ∀ n, P18148338125326255334.a n = A051356 n

end A051356

/-!
# A051357: Chernoff sequence A006939 divided by 2.

The programs for A051357, there is no canonical definition to state claims against.
-/

/-! ## A051357.P9409804261972661348

`a(n-1)*∏[p?[xor(1, n)]]` with `a(0)=1`
-/

namespace A051357.P9409804261972661348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A051357.P9409804261972661348

/-! ## A051357.P12509752021668532946

`∏[A231209(n)]`
-/

namespace A051357.P12509752021668532946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051357.P12509752021668532946

/-! ## A051357.P827269046750998105

`A368901(∑[2^n])`
-/

namespace A051357.P827269046750998105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368901 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051357.P827269046750998105

/-! ## A051357.P765976900689264373

`A006939(n+1)/2`
-/

namespace A051357.P765976900689264373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006939 (n + 1) : ℚ) / 2

end

end A051357.P765976900689264373

/-! ## A051357.P7617683147478790920

`A332644(∑[n+1])/2`
-/

namespace A051357.P7617683147478790920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332644 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A051357.P7617683147478790920

/-!
# A051358: (Terms in A028279)/2.

The programs for A051358, the canonical program `A051358.P15468894680895557215` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051358 has offset 0).

The definition of A051358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051358.P15468894680895557215

`A028279(n)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051358

/-- `A028279(n)/2` -/
def P15468894680895557215.Spec : Prop :=
  ∀ n, P15468894680895557215.a n = (A051358 n : ℚ)

end A051358

/-! ## A051358.P16015542784670759701

`A028275(A268232(n+1))/2`
-/

namespace A051358.P16015542784670759701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 (A268232 (n + 1)).toNat : ℚ) / 2

end

end A051358.P16015542784670759701

namespace A051358

/-- `A028275(A268232(n+1))/2` -/
def P16015542784670759701.Spec : Prop :=
  ∀ n, P16015542784670759701.a n = (A051358 n : ℚ)

end A051358

/-! ## A051358.P1773356625399716149

`A028275(eq[0, A047999(n)])/2`
-/

namespace A051358.P1773356625399716149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A051358.P1773356625399716149

namespace A051358

/-- `A028275(eq[0, A047999(n)])/2` -/
def P1773356625399716149.Spec : Prop :=
  ∀ n, P1773356625399716149.a n = (A051358 n : ℚ)

end A051358

/-! ## A051358.P10756606887051303548

`A028275(eq[1, A219463(n)])/2`
-/

namespace A051358.P10756606887051303548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A051358.P10756606887051303548

namespace A051358

/-- `A028275(eq[1, A219463(n)])/2` -/
def P10756606887051303548.Spec : Prop :=
  ∀ n, P10756606887051303548.a n = (A051358 n : ℚ)

end A051358

/-! ## A051358.P3424578347225390610

`A028275(eq[1, gcd(2, A014473(n))])/2`
-/

namespace A051358.P3424578347225390610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A014473 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A051358.P3424578347225390610

namespace A051358

/-- `A028275(eq[1, gcd(2, A014473(n))])/2` -/
def P3424578347225390610.Spec : Prop :=
  ∀ n, P3424578347225390610.a n = (A051358 n : ℚ)

end A051358

/-! ## A051358.P16643201150564454982

`A014682(A028279(n))`
-/

namespace A051358.P16643201150564454982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028279 n).toNat

end

end A051358.P16643201150564454982

namespace A051358

/-- `A014682(A028279(n))` -/
def P16643201150564454982.Spec : Prop :=
  ∀ n, P16643201150564454982.a n = A051358 n

end A051358

/-! ## A051358.P2101096357629854342

`A103391(A028279(n)-2)`
-/

namespace A051358.P2101096357629854342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A028279 n - 2).toNat

end

end A051358.P2101096357629854342

namespace A051358

/-- `A103391(A028279(n)-2)` -/
def P2101096357629854342.Spec : Prop :=
  ∀ n, P2101096357629854342.a n = A051358 n

end A051358

/-! ## A051358.P15197455699165847218

`A302043(lcm(2, A028279(n)))`
-/

namespace A051358.P15197455699165847218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (Int.lcm 2 (A028279 n))

end

end A051358.P15197455699165847218

namespace A051358

/-- `A302043(lcm(2, A028279(n)))` -/
def P15197455699165847218.Spec : Prop :=
  ∀ n, P15197455699165847218.a n = A051358 n

end A051358

/-! ## A051358.P11706397196337577151

`A302043(A028279(n)-A000007(n))`
-/

namespace A051358.P11706397196337577151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A028279 n - A000007 n).toNat

end

end A051358.P11706397196337577151

namespace A051358

/-- `A302043(A028279(n)-A000007(n))` -/
def P11706397196337577151.Spec : Prop :=
  ∀ n, P11706397196337577151.a n = A051358 n

end A051358

/-! ## A051358.P12720035186280709393

`2^A008683(A002148(n))*A028279(n)`
-/

namespace A051358.P12720035186280709393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A002148 n).toNat : ℤ) * (A028279 n : ℚ)

end

end A051358.P12720035186280709393

namespace A051358

/-- `2^A008683(A002148(n))*A028279(n)` -/
def P12720035186280709393.Spec : Prop :=
  ∀ n, P12720035186280709393.a n = (A051358 n : ℚ)

end A051358

/-!
# A051359: (Terms in A028286)/2.

The programs for A051359, there is no canonical definition to state claims against.
-/

/-! ## A051359.P16161472980327054602

`A028286(n)/2`
-/

namespace A051359.P16161472980327054602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028286 n : ℚ) / 2

end

end A051359.P16161472980327054602

/-! ## A051359.P12172118423786782327

`A014682(A028286(n))`
-/

namespace A051359.P12172118423786782327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A028286 n).toNat

end

end A051359.P12172118423786782327

/-! ## A051359.P16747288588779513324

`A319702(A028286(n)-3)`
-/

namespace A051359.P16747288588779513324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A028286 n - 3).toNat

end

end A051359.P16747288588779513324

/-! ## A051359.P12324513309552186437

`A273943(lcm(2, A028286(n)))`
-/

namespace A051359.P12324513309552186437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A028286 n))

end

end A051359.P12324513309552186437

/-! ## A051359.P510682172569525424

`A007318(∑[n])*A273943(A028286(n))`
-/

namespace A051359.P510682172569525424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A273943 (A028286 n).toNat

end

end A051359.P510682172569525424

/-!
# A051360: A class of Boolean functions of n variables and rank 4.

The programs for A051360, there is no canonical definition to state claims against.
-/

/-! ## A051360.P10439367123559202067

`A098983(((1-n)^n)²)`
-/

namespace A051360.P10439367123559202067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 (((1 - (n : ℤ)) ^ n) ^ 2).toNat

end

end A051360.P10439367123559202067

/-!
# A051361: A class of Boolean functions of n variables and rank 3.

The programs for A051361, the canonical program `A051361.P4102761191167575367` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051361 has offset 0).

The definition of A051361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051361.P4102761191167575367

`A052387(n)-A256857(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A051361

/-- `A052387(n)-A256857(n)` -/
def P4102761191167575367.Spec : Prop :=
  ∀ n, P4102761191167575367.a n = A051361 n

theorem P4102761191167575367.correct : P4102761191167575367.Spec := by
  intro n
  simp only [A051361]

end A051361

/-! ## A051361.P18144362648815545366

`A052387(n)+A256857(n)*A260196(n+2)`
-/

namespace A051361.P18144362648815545366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052387 n + A256857 n * A260196 (n + 2)

end

end A051361.P18144362648815545366

namespace A051361

/-- `A052387(n)+A256857(n)*A260196(n+2)` -/
def P18144362648815545366.Spec : Prop :=
  ∀ n, P18144362648815545366.a n = A051361 n

end A051361

/-! ## A051361.P15073372219133299034

`∑[A000579(n+5)+A000389(n+2)]-A256857(n)`
-/

namespace A051361.P15073372219133299034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5) + A000389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A256857 n

end

end A051361.P15073372219133299034

namespace A051361

/-- `∑[A000579(n+5)+A000389(n+2)]-A256857(n)` -/
def P15073372219133299034.Spec : Prop :=
  ∀ n, P15073372219133299034.a n = A051361 n

end A051361

/-! ## A051361.P150573565714741493

`A000579(n+3)+∑[A000579(n+5)]-A256857(n)`
-/

namespace A051361.P150573565714741493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j - A256857 n

end

end A051361.P150573565714741493

namespace A051361

/-- `A000579(n+3)+∑[A000579(n+5)]-A256857(n)` -/
def P150573565714741493.Spec : Prop :=
  ∀ n, P150573565714741493.a n = A051361 n

end A051361

/-! ## A051361.P1574891621657468466

`A000579(n+3)+A000580(n+7)-A000579(n+6)-A256857(n)`
-/

namespace A051361.P1574891621657468466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 3) + (A000580 (n + 7) - A000579 (n + 6)) - A256857 n

end

end A051361.P1574891621657468466

namespace A051361

/-- `A000579(n+3)+A000580(n+7)-A000579(n+6)-A256857(n)` -/
def P1574891621657468466.Spec : Prop :=
  ∀ n, P1574891621657468466.a n = A051361 n

end A051361

/-!
# A051362: Primes remaining prime if any digit is deleted (zeros allowed).

The programs for A051362, there is no canonical definition to state claims against.
-/

/-! ## A051362.P12863961163329530517

`p?[A034895(n+1)]`
-/

namespace A051362.P12863961163329530517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051362.P12863961163329530517

/-! ## A051362.P9430781442767021095

`p?[record[A034895(A106466(n))]]`
-/

namespace A051362.P9430781442767021095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051362.P9430781442767021095

/-! ## A051362.P15042645008739485132

`p?[record[A034895(A324346(n))]]`
-/

namespace A051362.P15042645008739485132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051362.P15042645008739485132

/-! ## A051362.P14554237538267967349

`or(1, p?[A034895(A028310(n))])`
-/

namespace A051362.P14554237538267967349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034895 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A051362.P14554237538267967349

/-! ## A051362.P9938713622088676623

`A000040(A084375(n+1))`
-/

namespace A051362.P9938713622088676623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084375 (n + 1)).toNat

end

end A051362.P9938713622088676623

/-!
# A051363: Number of 6-element families of an n-element set such that every 3 members of the family have a nonempty intersection.

The programs for A051363, there is no canonical definition to state claims against.
-/

/-! ## A051363.P7646358098522942266

`xor(A005299(A292290(n)), A026636(n))`
-/

namespace A051363.P7646358098522942266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005299 (A292290 n).toNat) (A026636 n)

end

end A051363.P7646358098522942266

/-!
# A051364: Number of 5-element families of an n-element set such that every 3 members of the family have a nonempty intersection.

The programs for A051364, there is no canonical definition to state claims against.
-/

/-! ## A051364.P219295407126889918

`A235044(A001831(n))*A328439(n+1)`
-/

namespace A051364.P219295407126889918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (A001831 n).toNat * A328439 (n + 1)

end

end A051364.P219295407126889918

/-!
# A051365: Number of 4-element families of an n-element set such that every 3 members of the family have a nonempty intersection.

The programs for A051365, there is no canonical definition to state claims against.
-/

/-! ## A051365.P16855972406625563130

`275%A326216(n)`
-/

namespace A051365.P16855972406625563130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 275 (A326216 n)

end

end A051365.P16855972406625563130

/-!
# A051367: Number of 5-element families of an n-element set such that every 4 members of the family have a nonempty intersection.

The programs for A051367, there is no canonical definition to state claims against.
-/

/-! ## A051367.P2415945976404314434

`A279329(A041258(n)*A322110(n))`
-/

namespace A051367.P2415945976404314434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (A041258 n * A322110 n).toNat

end

end A051367.P2415945976404314434

/-!
# A051368: Number of Boolean functions of n variables and rank 8 from the Post class F(5,2).

The programs for A051368, there is no canonical definition to state claims against.
-/

/-! ## A051368.P11606582992162304566

`A051184(n+1)-A051183(n+1)+A051182(n+1)-A051181(n+1)+A051180(n+1)-A036239(n+1)+A000918(n+1)`
-/

namespace A051368.P11606582992162304566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051184 (n + 1) - A051183 (n + 1) + A051182 (n + 1) - A051181 (n + 1) + A051180 (n + 1) - A036239 (n + 1) + A000918 (n + 1)

end

end A051368.P11606582992162304566

/-!
# A051369: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 3.

The programs for A051369, the canonical program `A051369.P3720303996826784203` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051369 has offset 1).

The definition of A051369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051369.P3720303996826784203

`A004159(a(n-1))+a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051369

/-- `A004159(a(n-1))+a(n-1)` -/
def P3720303996826784203.Spec : Prop :=
  ∀ n, P3720303996826784203.a n = A051369 (n + 1)

theorem P3720303996826784203.correct : P3720303996826784203.Spec := by
  intro n
  simp only [A051369, Nat.add_sub_cancel]

end A051369

/-! ## A051369.P54703476422962561

`A007953(a(n-1)²)+a(n-1)` with `a(0)=3`
-/

namespace A051369.P54703476422962561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007953 (a (n - 1) ^ 2).toNat + a (n - 1)

end

end A051369.P54703476422962561

namespace A051369

/-- `A007953(a(n-1)²)+a(n-1)` -/
def P54703476422962561.Spec : Prop :=
  ∀ n, P54703476422962561.a n = A051369 (n + 1)

end A051369

/-! ## A051369.P9033221753932233011

`A007953(a(n-1)^2)+a(n-1)` with `a(0)=3`
-/

namespace A051369.P9033221753932233011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007953 (a (n - 1) ^ 2).toNat + a (n - 1)

end

end A051369.P9033221753932233011

namespace A051369

/-- `A007953(a(n-1)^2)+a(n-1)` -/
def P9033221753932233011.Spec : Prop :=
  ∀ n, P9033221753932233011.a n = A051369 (n + 1)

end A051369

/-! ## A051369.P2900608497371054325

`record[A004092(a(n-1)²)+a(n-2)]` with `a(0)=3, a(1)=3`
-/

namespace A051369.P2900608497371054325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  A004092 (f1 (n - 1) ^ 2).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051369.P2900608497371054325

namespace A051369

/-- `record[A004092(a(n-1)²)+a(n-2)]` -/
def P2900608497371054325.Spec : Prop :=
  ∀ n, P2900608497371054325.a n = A051369 (n + 1)

end A051369

/-! ## A051369.P6494791714109308733

`A007953(a(n-1)*a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A051369.P6494791714109308733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007953 (a (n - 1) * a (n - 1)).toNat + a (n - 1)

end

end A051369.P6494791714109308733

namespace A051369

/-- `A007953(a(n-1)*a(n-1))+a(n-1)` -/
def P6494791714109308733.Spec : Prop :=
  ∀ n, P6494791714109308733.a n = A051369 (n + 1)

end A051369

/-!
# A051370: a(n+1) = a(n) + sum of digits of a(n)^2, with a(1) = 8.

The programs for A051370, the canonical program `A051370.P16333339530751387422` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051370 has offset 1).

The definition of A051370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051370.P16333339530751387422

`A004159(a(n-1))+a(n-1)` with `a(0)=8`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051370

/-- `A004159(a(n-1))+a(n-1)` -/
def P16333339530751387422.Spec : Prop :=
  ∀ n, P16333339530751387422.a n = A051370 (n + 1)

theorem P16333339530751387422.correct : P16333339530751387422.Spec := by
  intro n
  simp only [A051370, Nat.add_sub_cancel]

end A051370

/-! ## A051370.P7862668490855770577

`A007953(a(n-1)²)+a(n-1)` with `a(0)=8`
-/

namespace A051370.P7862668490855770577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A007953 (a (n - 1) ^ 2).toNat + a (n - 1)

end

end A051370.P7862668490855770577

namespace A051370

/-- `A007953(a(n-1)²)+a(n-1)` -/
def P7862668490855770577.Spec : Prop :=
  ∀ n, P7862668490855770577.a n = A051370 (n + 1)

end A051370

/-! ## A051370.P11538133869663347426

`A007953(a(n-1)*a(n-1))+a(n-1)` with `a(0)=8`
-/

namespace A051370.P11538133869663347426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A007953 (a (n - 1) * a (n - 1)).toNat + a (n - 1)

end

end A051370.P11538133869663347426

namespace A051370

/-- `A007953(a(n-1)*a(n-1))+a(n-1)` -/
def P11538133869663347426.Spec : Prop :=
  ∀ n, P11538133869663347426.a n = A051370 (n + 1)

end A051370

/-!
# A051373: a(n+1) = a(n) + sum of digits of (a(n)^3).

The programs for A051373, the canonical program `A051373.P62567746208219066` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051373 has offset 1).

The definition of A051373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051373.P62567746208219066

`A004164(a(n-1))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051373

/-- `A004164(a(n-1))+a(n-1)` -/
def P62567746208219066.Spec : Prop :=
  ∀ n, P62567746208219066.a n = A051373 (n + 1)

theorem P62567746208219066.correct : P62567746208219066.Spec := by
  intro n
  simp only [A051373, Nat.add_sub_cancel]

end A051373

/-!
# A051374: Numbers not of form n + sum of digits of n^2.

The programs for A051374, the canonical program `A051374.P18163615587992956020` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051374 has offset 1).

The definition of A051374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2946 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051374.P13448682510874686641

`comp[∑{digits}[n², #]+n]`
-/

namespace A051374.P13448682510874686641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A051374.P13448682510874686641

namespace A051374

/-- `comp[∑{digits}[n², #]+n]` -/
def P13448682510874686641.Spec : Prop :=
  ∀ n, (P13448682510874686641.a n : ℤ) = A051374 (n + 1)

end A051374

/-! ## A051374.P18163615587992956020

`eq[1, (n+1)*char[∑{digits}[n², #]+n]+1]`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051374

/-- `eq[1, (n+1)*char[∑{digits}[n², #]+n]+1]` -/
def P18163615587992956020.Spec : Prop :=
  ∀ n, (P18163615587992956020.a n : ℤ) = A051374 (n + 1)

theorem P18163615587992956020.correct : P18163615587992956020.Spec := by
  intro n
  simp only [A051374, Nat.add_sub_cancel]

end A051374

/-! ## A051374.P2283329677299501258

`eq[0, char[A004159(n)+n]]`
-/

namespace A051374.P2283329677299501258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051374.P2283329677299501258

namespace A051374

/-- `eq[0, char[A004159(n)+n]]` -/
def P2283329677299501258.Spec : Prop :=
  ∀ n, (P2283329677299501258.a n : ℤ) = A051374 (n + 1)

end A051374

/-! ## A051374.P6114664587007693845

`lt[char[A004159(n)+n], 1]%A083186(n+1)`
-/

namespace A051374.P6114664587007693845
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ) (A083186 (n + 1))

end

end A051374.P6114664587007693845

namespace A051374

/-- `lt[char[A004159(n)+n], 1]%A083186(n+1)` -/
def P6114664587007693845.Spec : Prop :=
  ∀ n, P6114664587007693845.a n = A051374 (n + 1)

end A051374

/-! ## A051374.P11605427462767454933

`lt[char[A004159(n)+n]*A006490(n+1), 1]`
-/

namespace A051374.P11605427462767454933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A006490 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A051374.P11605427462767454933

namespace A051374

/-- `lt[char[A004159(n)+n]*A006490(n+1), 1]` -/
def P11605427462767454933.Spec : Prop :=
  ∀ n, (P11605427462767454933.a n : ℤ) = A051374 (n + 1)

end A051374

/-!
# A051375: Number of Boolean functions of n variables and rank 3 from Post class F(5,inf).

The programs for A051375, the canonical program `A051375.P17183982167544344738` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051375 has offset 1).

The definition of A051375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051375.P12744172341368083468

`(4^(n+1)-3^(n+1)-3*2^(n+1)+5)/2`
-/

namespace A051375.P12744172341368083468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ) - (3 * 2 ^ (n + 1) : ℤ) + 5 : ℚ) / 2

end

end A051375.P12744172341368083468

namespace A051375

/-- `(4^(n+1)-3^(n+1)-3*2^(n+1)+5)/2` -/
def P12744172341368083468.Spec : Prop :=
  ∀ n, P12744172341368083468.a n = (A051375 (n + 1) : ℚ)

theorem P12744172341368083468.correct : P12744172341368083468.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A051375, Nat.add_sub_cancel, A051375.P12744172341368083468.a, A051375.P17183982167544344738.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A051375, Nat.add_sub_cancel, A051375.P12744172341368083468.a, A051375.P17183982167544344738.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051375

/-! ## A051375.P13009388160065225917

`A036239(n+1)-A000918(n+1)`
-/

namespace A051375.P13009388160065225917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036239 (n + 1) - A000918 (n + 1)

end

end A051375.P13009388160065225917

namespace A051375

/-- `A036239(n+1)-A000918(n+1)` -/
def P13009388160065225917.Spec : Prop :=
  ∀ n, P13009388160065225917.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P17183982167544344738

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=0, a(2)=9, a(3)=66`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051375

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P17183982167544344738.Spec : Prop :=
  ∀ n, P17183982167544344738.a n = A051375 (n + 1)

theorem P17183982167544344738.correct : P17183982167544344738.Spec := by
  intro n
  simp only [A051375, Nat.add_sub_cancel]

end A051375

/-! ## A051375.P8937610126673433651

`A087291(n)-A053152(n+1)`
-/

namespace A051375.P8937610126673433651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087291 n - A053152 (n + 1)

end

end A051375.P8937610126673433651

namespace A051375

/-- `A087291(n)-A053152(n+1)` -/
def P8937610126673433651.Spec : Prop :=
  ∀ n, P8937610126673433651.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P3153032746944079562

`A134057(n+1)-A029858(n+1)`
-/

namespace A051375.P3153032746944079562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134057 (n + 1) - A029858 (n + 1)

end

end A051375.P3153032746944079562

namespace A051375

/-- `A134057(n+1)-A029858(n+1)` -/
def P3153032746944079562.Spec : Prop :=
  ∀ n, P3153032746944079562.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P950121788989524124

`A394960(n+1)-A000392(n+2)`
-/

namespace A051375.P950121788989524124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394960 (n + 1) - A000392 (n + 2)

end

end A051375.P950121788989524124

namespace A051375

/-- `A394960(n+1)-A000392(n+2)` -/
def P950121788989524124.Spec : Prop :=
  ∀ n, P950121788989524124.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P562685625571955336

`A036239(n+1)-2*A000225(n)`
-/

namespace A051375.P562685625571955336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036239 (n + 1) - 2 * A000225 n

end

end A051375.P562685625571955336

namespace A051375

/-- `A036239(n+1)-2*A000225(n)` -/
def P562685625571955336.Spec : Prop :=
  ∀ n, P562685625571955336.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P12278805736130201698

`A036239(n+1)+1-A000225(n+1)`
-/

namespace A051375.P12278805736130201698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036239 (n + 1) + (1 - A000225 (n + 1))

end

end A051375.P12278805736130201698

namespace A051375

/-- `A036239(n+1)+1-A000225(n+1)` -/
def P12278805736130201698.Spec : Prop :=
  ∀ n, P12278805736130201698.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P15562498862614589400

`A134169(n+1)+1-A094374(n+1)`
-/

namespace A051375.P15562498862614589400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134169 (n + 1) + (1 - A094374 (n + 1))

end

end A051375.P15562498862614589400

namespace A051375

/-- `A134169(n+1)+1-A094374(n+1)` -/
def P15562498862614589400.Spec : Prop :=
  ∀ n, P15562498862614589400.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P8189386168518338335

`A006516(n+1)+2-A094374(n+1)`
-/

namespace A051375.P8189386168518338335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 (n + 1) + (2 - A094374 (n + 1))

end

end A051375.P8189386168518338335

namespace A051375

/-- `A006516(n+1)+2-A094374(n+1)` -/
def P8189386168518338335.Spec : Prop :=
  ∀ n, P8189386168518338335.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P17752688480089324761

`2-(A000079(n+1)-A036239(n+1))`
-/

namespace A051375.P17752688480089324761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000079 (n + 1) - A036239 (n + 1))

end

end A051375.P17752688480089324761

namespace A051375

/-- `2-(A000079(n+1)-A036239(n+1))` -/
def P17752688480089324761.Spec : Prop :=
  ∀ n, P17752688480089324761.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P6350661153355957759

`A134064(n+1)-(A000225(n+2)-1)`
-/

namespace A051375.P6350661153355957759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134064 (n + 1) - (A000225 (n + 2) - 1)

end

end A051375.P6350661153355957759

namespace A051375

/-- `A134064(n+1)-(A000225(n+2)-1)` -/
def P6350661153355957759.Spec : Prop :=
  ∀ n, P6350661153355957759.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P7242445224212197478

`3-(A000051(n+1)-A036239(n+1))`
-/

namespace A051375.P7242445224212197478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (A000051 (n + 1) - A036239 (n + 1))

end

end A051375.P7242445224212197478

namespace A051375

/-- `3-(A000051(n+1)-A036239(n+1))` -/
def P7242445224212197478.Spec : Prop :=
  ∀ n, P7242445224212197478.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P13943323865885870416

`A274230(2*n+1)-A029858(n+1)`
-/

namespace A051375.P13943323865885870416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (2 * n + 1) - A029858 (n + 1)

end

end A051375.P13943323865885870416

namespace A051375

/-- `A274230(2*n+1)-A029858(n+1)` -/
def P13943323865885870416.Spec : Prop :=
  ∀ n, P13943323865885870416.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P6426160019776256004

`A036239(n+1)-A000295(n+1)-n`
-/

namespace A051375.P6426160019776256004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036239 (n + 1) - A000295 (n + 1) - (n : ℤ)

end

end A051375.P6426160019776256004

namespace A051375

/-- `A036239(n+1)-A000295(n+1)-n` -/
def P6426160019776256004.Spec : Prop :=
  ∀ n, P6426160019776256004.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P5575443197317856621

`A000225(n+1)*A000225(n)-A029858(n+1)`
-/

namespace A051375.P5575443197317856621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A000225 n - A029858 (n + 1)

end

end A051375.P5575443197317856621

namespace A051375

/-- `A000225(n+1)*A000225(n)-A029858(n+1)` -/
def P5575443197317856621.Spec : Prop :=
  ∀ n, P5575443197317856621.a n = A051375 (n + 1)

end A051375

/-! ## A051375.P15620014380171087485

`A036240(n+1)-A051376(n+1)`
-/

namespace A051375.P15620014380171087485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - A051376 (n + 1)

end

end A051375.P15620014380171087485

namespace A051375

/-- `A036240(n+1)-A051376(n+1)` -/
def P15620014380171087485.Spec : Prop :=
  ∀ n, P15620014380171087485.a n = A051375 (n + 1)

end A051375

/-!
# A051376: Number of Boolean functions of n variables and rank 4 from Post class F(5,inf).

The programs for A051376, the canonical program `A051376.P15745039095171772777` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051376 has offset 1).

The definition of A051376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051376.P15745039095171772777

`A036240(n+1)-A036239(n+1)+A000918(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A051376

/-- `A036240(n+1)-A036239(n+1)+A000918(n+1)` -/
def P15745039095171772777.Spec : Prop :=
  ∀ n, P15745039095171772777.a n = A051376 (n + 1)

theorem P15745039095171772777.correct : P15745039095171772777.Spec := by
  intro n
  simp only [A051376, Nat.add_sub_cancel]

end A051376

/-! ## A051376.P164524231804640422

`(8^(n+1)-7^(n+1)-6*4^(n+1)+6*3^(n+1)+11*2^(n+1)-17)/6`
-/

namespace A051376.P164524231804640422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ (n + 1) : ℤ) - (7 ^ (n + 1) : ℤ) - (6 * 4 ^ (n + 1) : ℤ) + (6 * 3 ^ (n + 1) : ℤ) + (11 * 2 ^ (n + 1) : ℤ) - 17 : ℚ) / 6

end

end A051376.P164524231804640422

namespace A051376

/-- `(8^(n+1)-7^(n+1)-6*4^(n+1)+6*3^(n+1)+11*2^(n+1)-17)/6` -/
def P164524231804640422.Spec : Prop :=
  ∀ n, P164524231804640422.a n = (A051376 (n + 1) : ℚ)

end A051376

/-! ## A051376.P4441180405277720094

`A036240(n+1)-A051375(n+1)`
-/

namespace A051376.P4441180405277720094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - A051375 (n + 1)

end

end A051376.P4441180405277720094

namespace A051376

/-- `A036240(n+1)-A051375(n+1)` -/
def P4441180405277720094.Spec : Prop :=
  ∀ n, P4441180405277720094.a n = A051376 (n + 1)

end A051376

/-! ## A051376.P872112373929964534

`A036240(n+1)+A053152(n+1)-A087291(n)`
-/

namespace A051376.P872112373929964534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) + (A053152 (n + 1) - A087291 n)

end

end A051376.P872112373929964534

namespace A051376

/-- `A036240(n+1)+A053152(n+1)-A087291(n)` -/
def P872112373929964534.Spec : Prop :=
  ∀ n, P872112373929964534.a n = A051376 (n + 1)

end A051376

/-! ## A051376.P15042281005150792201

`A036240(n+1)-(A134057(n+1)-A029858(n+1))`
-/

namespace A051376.P15042281005150792201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (A134057 (n + 1) - A029858 (n + 1))

end

end A051376.P15042281005150792201

namespace A051376

/-- `A036240(n+1)-(A134057(n+1)-A029858(n+1))` -/
def P15042281005150792201.Spec : Prop :=
  ∀ n, P15042281005150792201.a n = A051376 (n + 1)

end A051376

/-! ## A051376.P11197564589329373282

`A036240(n+1)-(A036239(n+1)-2*A000225(n))`
-/

namespace A051376.P11197564589329373282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (A036239 (n + 1) - 2 * A000225 n)

end

end A051376.P11197564589329373282

namespace A051376

/-- `A036240(n+1)-(A036239(n+1)-2*A000225(n))` -/
def P11197564589329373282.Spec : Prop :=
  ∀ n, P11197564589329373282.a n = A051376 (n + 1)

theorem P11197564589329373282.correct : P11197564589329373282.Spec := by
  intro n
  simp only [A051376, Nat.add_sub_cancel, A051376.P11197564589329373282.a, A051376.P15745039095171772777.a, A000225, A000225.P6535533121115206393.a, A000918, A000918.P14329454465793069288.a, A036239, A036239.P10220398326125679203.a, A036240, A036240.P2737440285930239817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051376

/-! ## A051376.P14014187229252747888

`A036240(n+1)-(A036239(n+1)+1-A000225(n+1))`
-/

namespace A051376.P14014187229252747888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (A036239 (n + 1) + (1 - A000225 (n + 1)))

end

end A051376.P14014187229252747888

namespace A051376

/-- `A036240(n+1)-(A036239(n+1)+1-A000225(n+1))` -/
def P14014187229252747888.Spec : Prop :=
  ∀ n, P14014187229252747888.a n = A051376 (n + 1)

theorem P14014187229252747888.correct : P14014187229252747888.Spec := by
  intro n
  simp only [A051376, Nat.add_sub_cancel, A051376.P14014187229252747888.a, A051376.P15745039095171772777.a, A000225, A000225.P6535533121115206393.a, A000918, A000918.P14329454465793069288.a, A036239, A036239.P10220398326125679203.a, A036240, A036240.P2737440285930239817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051376

/-! ## A051376.P8066591810196066890

`A036240(n+1)-(A134169(n+1)+1-A094374(n+1))`
-/

namespace A051376.P8066591810196066890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (A134169 (n + 1) + (1 - A094374 (n + 1)))

end

end A051376.P8066591810196066890

namespace A051376

/-- `A036240(n+1)-(A134169(n+1)+1-A094374(n+1))` -/
def P8066591810196066890.Spec : Prop :=
  ∀ n, P8066591810196066890.a n = A051376 (n + 1)

end A051376

/-! ## A051376.P6037067776532694547

`A036240(n+1)-(A134064(n+1)-(A000225(n+2)-1))`
-/

namespace A051376.P6037067776532694547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (A134064 (n + 1) - (A000225 (n + 2) - 1))

end

end A051376.P6037067776532694547

namespace A051376

/-- `A036240(n+1)-(A134064(n+1)-(A000225(n+2)-1))` -/
def P6037067776532694547.Spec : Prop :=
  ∀ n, P6037067776532694547.a n = A051376 (n + 1)

end A051376

/-! ## A051376.P542364476285766970

`A036240(n+1)-(3-(A000051(n+1)-A036239(n+1)))`
-/

namespace A051376.P542364476285766970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (3 - (A000051 (n + 1) - A036239 (n + 1)))

end

end A051376.P542364476285766970

namespace A051376

/-- `A036240(n+1)-(3-(A000051(n+1)-A036239(n+1)))` -/
def P542364476285766970.Spec : Prop :=
  ∀ n, P542364476285766970.a n = A051376 (n + 1)

theorem P542364476285766970.correct : P542364476285766970.Spec := by
  intro n
  simp only [A051376, Nat.add_sub_cancel, A051376.P542364476285766970.a, A051376.P15745039095171772777.a, A000051, A000051.P14067217022188782580.a, A000918, A000918.P14329454465793069288.a, A036239, A036239.P10220398326125679203.a, A036240, A036240.P2737440285930239817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A051376

/-! ## A051376.P16141537927670889717

`A036240(n+1)-(A000225(n+1)*A000225(n)-A029858(n+1))`
-/

namespace A051376.P16141537927670889717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036240 (n + 1) - (A000225 (n + 1) * A000225 n - A029858 (n + 1))

end

end A051376.P16141537927670889717

namespace A051376

/-- `A036240(n+1)-(A000225(n+1)*A000225(n)-A029858(n+1))` -/
def P16141537927670889717.Spec : Prop :=
  ∀ n, P16141537927670889717.a n = A051376 (n + 1)

end A051376

/-!
# A051377: a(1)=1; for n > 1, a(n) = sum of exponential divisors (or e-divisors) of n.

The programs for A051377, there is no canonical definition to state claims against.
-/

/-! ## A051377.P4404746050133680789

`A126164(n+1)+n+1`
-/

namespace A051377.P4404746050133680789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126164 (n + 1) + (n + 1 : ℤ)

end

end A051377.P4404746050133680789

/-! ## A051377.P5696928490643068445

`∏{p}[n+1, #]*A241405((n+1)/∏{p}[n+1, #])`
-/

namespace A051377.P5696928490643068445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A241405 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A051377.P5696928490643068445

/-! ## A051377.P10826199619971027800

`A057723(n+1)-A396544(n+1)`
-/

namespace A051377.P10826199619971027800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A396544 (n + 1)

end

end A051377.P10826199619971027800

/-! ## A051377.P3654847140007463618

`A007947(n+1)*A241405(A003557(n+1))`
-/

namespace A051377.P3654847140007463618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A241405 (A003557 (n + 1)).toNat

end

end A051377.P3654847140007463618

/-! ## A051377.P8137403411596224204

`A000203(n+1)-A160135(n+1)%A000203(n+1)`
-/

namespace A051377.P8137403411596224204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.tmod (A160135 (n + 1)) (A000203 (n + 1))

end

end A051377.P8137403411596224204

/-! ## A051377.P13933110548776688349

`A000203(n+1)-A160135(n+1)%A000716(n)`
-/

namespace A051377.P13933110548776688349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.tmod (A160135 (n + 1)) (A000716 n)

end

end A051377.P13933110548776688349

/-!
# A051379: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 7.

The programs for A051379, the canonical program `A051379.P353463909767517663` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051379 has offset 0).

The definition of A051379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051379.P353463909767517663

`T(n-1,k-1)-(row(n)+7)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051379

/-- `T(n-1,k-1)-(row(n)+7)*T(n-1,k)` -/
def P353463909767517663.Spec : Prop :=
  ∀ n, P353463909767517663.a n = A051379 n

theorem P353463909767517663.correct : P353463909767517663.Spec := by
  intro n
  simp only [A051379]

end A051379

/-!
# A051380: Generalized Stirling number triangle of first kind read by rows: T(n, k) = [x^k] Product_{m=1..n} (x - m - r), with r = 8.

The programs for A051380, the canonical program `A051380.P16740432578313482796` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051380 has offset 0).

The definition of A051380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051380.P16740432578313482796

`T(n-1,k-1)-(row(n)+8)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051380

/-- `T(n-1,k-1)-(row(n)+8)*T(n-1,k)` -/
def P16740432578313482796.Spec : Prop :=
  ∀ n, P16740432578313482796.a n = A051380 n

theorem P16740432578313482796.correct : P16740432578313482796.Spec := by
  intro n
  simp only [A051380]

end A051380

/-!
# A051381: Number of Boolean functions of n variables from Post class F(5,inf).

The programs for A051381, there is no canonical definition to state claims against.
-/

/-! ## A051381.P6594560497564118860

`A005530(n+1)/2`
-/

namespace A051381.P6594560497564118860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005530 (n + 1) : ℚ) / 2

end

end A051381.P6594560497564118860

/-! ## A051381.P6757530045894710291

`A058891(n+2)-A003465(n+1)`
-/

namespace A051381.P6757530045894710291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 2) - A003465 (n + 1)

end

end A051381.P6757530045894710291

/-! ## A051381.P17900742398907008785

`A058891(n+1)²-A007537(n+1)`
-/

namespace A051381.P17900742398907008785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 1) ^ 2 - A007537 (n + 1)

end

end A051381.P17900742398907008785

/-! ## A051381.P4556050957564895087

`A003465(n+1)-(A007537(n+1)+A007537(n+1))`
-/

namespace A051381.P4556050957564895087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003465 (n + 1) - (A007537 (n + 1) + A007537 (n + 1))

end

end A051381.P4556050957564895087

/-!
# A051382: Numbers k whose base 3 expansion matches (0|1)*(02)?(0|1)* (no more than one "02" allowed in midst of 0's and 1's).

The programs for A051382, there is no canonical definition to state claims against.
-/

/-! ## A051382.P1889538754970880792

`A249721(n)/2`
-/

namespace A051382.P1889538754970880792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249721 n : ℚ) / 2

end

end A051382.P1889538754970880792

/-! ## A051382.P9515611749258248082

`eq[1, A290079(2*n)]`
-/

namespace A051382.P9515611749258248082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051382.P9515611749258248082

/-! ## A051382.P13271744539128706690

`record[(n+1)/2*A290079(n+1)]`
-/

namespace A051382.P13271744539128706690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A290079 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051382.P13271744539128706690

/-! ## A051382.P895024462764672392

`eq[1, A290079(n)]/2`
-/

namespace A051382.P895024462764672392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A051382.P895024462764672392

/-! ## A051382.P13590596280746433991

`lt[A273515(n), 5]`
-/

namespace A051382.P13590596280746433991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273515 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051382.P13590596280746433991

/-! ## A051382.P4358937394096392929

`eq[A262097(n)²², A273513(n)]`
-/

namespace A051382.P4358937394096392929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A262097 n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P4358937394096392929

/-! ## A051382.P7444558101519606667

`lt[A000989(n), 2]`
-/

namespace A051382.P7444558101519606667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051382.P7444558101519606667

/-! ## A051382.P7957284931589479349

`comp[A249719(n+1)]`
-/

namespace A051382.P7957284931589479349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A051382.P7957284931589479349

/-! ## A051382.P4826092356738160452

`A038572(eq[1, A290079(n)])`
-/

namespace A051382.P4826092356738160452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051382.P4826092356738160452

/-! ## A051382.P4205790244657414095

`eq[A000989(n), A064990(n)]`
-/

namespace A051382.P4205790244657414095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064990 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P4205790244657414095

/-! ## A051382.P1379148506024808948

`eq[A000989(n)², A081603(n)]`
-/

namespace A051382.P1379148506024808948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P1379148506024808948

/-! ## A051382.P14680146131591145429

`eq[A000989(n)², A134022(n)]`
-/

namespace A051382.P14680146131591145429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P14680146131591145429

/-! ## A051382.P3124841836059114863

`eq[A000989(n)², A273513(n)]`
-/

namespace A051382.P3124841836059114863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P3124841836059114863

/-! ## A051382.P6273264961062714325

`eq[A000989(n), A189820(n+1)]`
-/

namespace A051382.P6273264961062714325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P6273264961062714325

/-! ## A051382.P14923363940412537735

`eq[sqrt(A273515(n)), A273514(3*n)]`
-/

namespace A051382.P14923363940412537735
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A273515 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273514 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A051382.P14923363940412537735

/-! ## A051382.P4347220752506548097

`A001281(A249721(n))`
-/

namespace A051382.P4347220752506548097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A249721 n).toNat

end

end A051382.P4347220752506548097

/-! ## A051382.P5995056435687829891

`A097140(record[n*A290079(n)])`
-/

namespace A051382.P5995056435687829891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A290079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051382.P5995056435687829891

/-! ## A051382.P4831876678141208447

`eq[A105203(n), A190906(n)]/2`
-/

namespace A051382.P4831876678141208447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A051382.P4831876678141208447

/-! ## A051382.P1828911794673463009

`eq[A190906(n), A317952(n)]/2`
-/

namespace A051382.P1828911794673463009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317952 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A051382.P1828911794673463009

/-! ## A051382.P5967200571957736690

`eq[A105203(2*n), A190906(2*n)]`
-/

namespace A051382.P5967200571957736690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190906 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051382.P5967200571957736690

/-!
# A051385: Portuguese linear measures used in the 18th century.

The programs for A051385, there is no canonical definition to state claims against.
-/

/-! ## A051385.P16906586025151897139

`record[A349431(A002418(2*n+1))]`
-/

namespace A051385.P16906586025151897139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349431 (A002418 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051385.P16906586025151897139

/-! ## A051385.P7862010486679730426

`record[A330973(A025047((lcm(3, n)/3+n)/2))]`
-/

namespace A051385.P7862010486679730426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A025047 (SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℚ) / 3 + (n : ℚ)) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051385.P7862010486679730426

/-!
# A051386: Numbers whose 4th power is the sum of two positive cubes.

The programs for A051386, there is no canonical definition to state claims against.
-/

/-! ## A051386.P8650272340673083195

`∪[A055259(n), A267686(n+1)]`
-/

namespace A051386.P8650272340673083195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P8650272340673083195

/-! ## A051386.P5183458038250334776

`∪[A003325(n+1), A051387(n+1)]`
-/

namespace A051386.P5183458038250334776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P5183458038250334776

/-! ## A051386.P4999621801713148558

`∪[A003325(n+1), A267686(n+1)]`
-/

namespace A051386.P4999621801713148558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P4999621801713148558

/-! ## A051386.P14226066870066007188

`∪[A085332(n+1), A267686(n+1)]`
-/

namespace A051386.P14226066870066007188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P14226066870066007188

/-! ## A051386.P7086509193797580301

`∪[A267686(n+1), A337529(n+1)]`
-/

namespace A051386.P7086509193797580301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P7086509193797580301

/-! ## A051386.P15764339005535912508

`∪[A267686(n+1), A338667(n+1)]`
-/

namespace A051386.P15764339005535912508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P15764339005535912508

/-! ## A051386.P15835289809771182452

`∪[A267686(n+1), A338933(n+1)]`
-/

namespace A051386.P15835289809771182452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P15835289809771182452

/-! ## A051386.P9856675128175892557

`sqrt(∩[A050801(n+1), n²])`
-/

namespace A051386.P9856675128175892557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050801 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A051386.P9856675128175892557

/-! ## A051386.P6176162186058470675

`∪[A101420(n+1), A267686(n+1)]`
-/

namespace A051386.P6176162186058470675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051386.P6176162186058470675

/-!
# A051388: Numbers whose 4th power can be expressed as the sum of two positive cubes in more than one way.

The programs for A051388, there is no canonical definition to state claims against.
-/

/-! ## A051388.P14502791757841589500

`A028310(∪[A001235(n+1), A282872(n+1)])`
-/

namespace A051388.P14502791757841589500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282872 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A051388.P14502791757841589500

/-!
# A051389: Number of resistance values that can be constructed using exactly n 1-ohm resistors in series or parallel but not with fewer resistors.

The programs for A051389, there is no canonical definition to state claims against.
-/

/-! ## A051389.P4180976876827055692

`A088458(A018178(n))`
-/

namespace A051389.P4180976876827055692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088458 (A018178 n).toNat

end

end A051389.P4180976876827055692

/-! ## A051389.P3398567626691353098

`∑[A282161(A000670(n))]`
-/

namespace A051389.P3398567626691353098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282161 (A000670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051389.P3398567626691353098

/-! ## A051389.P7395347378035578141

`A088458(A112575(n+1))`
-/

namespace A051389.P7395347378035578141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088458 (A112575 (n + 1)).toNat

end

end A051389.P7395347378035578141

/-!
# A051390: Number of nonisomorphic Steiner quadruple systems (SQS's) of order n.

The programs for A051390, there is no canonical definition to state claims against.
-/

/-! ## A051390.P6961289971172979067

`A124120(n+1)+char[C(3, n)]`
-/

namespace A051390.P6961289971172979067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124120 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A051390.P6961289971172979067

/-! ## A051390.P9588404966829765358

`or(A036987(n), A124120(n+1))`
-/

namespace A051390.P9588404966829765358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A124120 (n + 1))

end

end A051390.P9588404966829765358

/-! ## A051390.P10337551303916328625

`sqrt(A124120(n+1)^A008615(n))`
-/

namespace A051390.P10337551303916328625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A124120 (n + 1) : ℚ) ^ (A008615 n : ℤ) : ℝ)

end

end A051390.P10337551303916328625

/-! ## A051390.P17568395113169492540

`A124120(n+1)+char[A024040(n)]`
-/

namespace A051390.P17568395113169492540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024040 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124120 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051390.P17568395113169492540

/-! ## A051390.P18068484731616083521

`A093318(A319488(n+1))`
-/

namespace A051390.P18068484731616083521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093318 (A319488 (n + 1)).toNat

end

end A051390.P18068484731616083521

/-!
# A051391: Number of nonisomorphic Steiner triple systems (STS's) S(2,3,v) on v = 6n+1 or 6n+3 points.

The programs for A051391, there is no canonical definition to state claims against.
-/

/-! ## A051391.P17179857982498475825

`A030129(or(1, 3*n))`
-/

namespace A051391.P17179857982498475825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030129 (Nat.lor 1 (3 * n))

end

end A051391.P17179857982498475825

/-! ## A051391.P16541737009671035273

`A030129(and(3*n, -2)+1)`
-/

namespace A051391.P16541737009671035273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030129 (Int.land (3 * n : ℤ) (-2) + 1).toNat

end

end A051391.P16541737009671035273

/-! ## A051391.P15477539173217299599

`A030129(xor(1, and(3*n, -2)))`
-/

namespace A051391.P15477539173217299599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030129 (Int.xor 1 (Int.land (3 * n : ℤ) (-2))).toNat

end

end A051391.P15477539173217299599

/-!
# A051392: First differences of A052006.

The programs for A051392, there is no canonical definition to state claims against.
-/

/-! ## A051392.P13344497852337984452

`Δ[A052006(n)]`
-/

namespace A051392.P13344497852337984452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051392.P13344497852337984452

/-!
# A051395: Numbers whose square is a sum of 4 consecutive primes.

The programs for A051395, there is no canonical definition to state claims against.
-/

/-! ## A051395.P3875219772766597658

`2*ceil(sqrt(A206280(n+1)))`
-/

namespace A051395.P3875219772766597658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt (A206280 (n + 1) : ℝ)⌉

end

end A051395.P3875219772766597658

/-! ## A051395.P14816518004662308685

`2*A226152(n+1)`
-/

namespace A051395.P14816518004662308685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226152 (n + 1)

end

end A051395.P14816518004662308685

/-! ## A051395.P7662438700322405254

`A226152(A000027(n+1))+A226152(n+1)`
-/

namespace A051395.P7662438700322405254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226152 (A000027 (n + 1)).toNat + A226152 (n + 1)

end

end A051395.P7662438700322405254

/-! ## A051395.P8672306096908826673

`A004277(A226152(n+1))`
-/

namespace A051395.P8672306096908826673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A226152 (n + 1)).toNat

end

end A051395.P8672306096908826673

/-! ## A051395.P18172406800974531476

`A004275(A226152(n+1)+1)`
-/

namespace A051395.P18172406800974531476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A226152 (n + 1) + 1).toNat

end

end A051395.P18172406800974531476

/-! ## A051395.P17453359107277686583

`A051755(A226152(n+1)+1)`
-/

namespace A051395.P17453359107277686583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A226152 (n + 1) + 1).toNat

end

end A051395.P17453359107277686583

/-! ## A051395.P9888760771590104058

`A316571(A226152(n+1)+1)`
-/

namespace A051395.P9888760771590104058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A226152 (n + 1) + 1).toNat

end

end A051395.P9888760771590104058

/-! ## A051395.P13222015050274995387

`A004273(A226152(n+1)+1)-1`
-/

namespace A051395.P13222015050274995387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A226152 (n + 1) + 1).toNat - 1

end

end A051395.P13222015050274995387

/-! ## A051395.P15506683252005722322

`A005843(A226152(n+1)%(∑[n]+3)²)`
-/

namespace A051395.P15506683252005722322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.tmod (A226152 (n + 1)) (((∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2 : ℕ) : ℤ)).toNat

end

end A051395.P15506683252005722322

/-! ## A051395.P8391234427620007586

`A005843(or(4-A040002(n), A226152(n+1)))`
-/

namespace A051395.P8391234427620007586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor (4 - A040002 n) (A226152 (n + 1))).toNat

end

end A051395.P8391234427620007586

/-! ## A051395.P3546884668984382303

`A005843(or(A040002(n)%4, A226152(n+1)))`
-/

namespace A051395.P3546884668984382303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor (Int.tmod (A040002 n) 4) (A226152 (n + 1))).toNat

end

end A051395.P3546884668984382303

/-! ## A051395.P766605187431680112

`A004273(A226152(n+1))+A001221(A059159(n+1))`
-/

namespace A051395.P766605187431680112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A226152 (n + 1)).toNat + A001221 (A059159 (n + 1)).toNat

end

end A051395.P766605187431680112

/-! ## A051395.P16743698661960993697

`A226152(n+1)+A226152(n+1)+A010057(A084696(n+1))`
-/

namespace A051395.P16743698661960993697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226152 (n + 1) + (A226152 (n + 1) + A010057 (A084696 (n + 1)).toNat)

end

end A051395.P16743698661960993697

/-!
# A051396: a(n) = (2*n-2)*(2*n-3)*a(n-1)+1.

The programs for A051396, the canonical program `A051396.P358583202040975454` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051396 has offset 0).

The definition of A051396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-2)*(2*n-3)*a(n-1)+1` (program `A051396.P358583202040975454`, by `A051396.P358583202040975454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051396.P358583202040975454

`(2*n-2)*(2*n-3)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051396

/-- `(2*n-2)*(2*n-3)*a(n-1)+1` -/
def P358583202040975454.Spec : Prop :=
  ∀ n, P358583202040975454.a n = A051396 n

theorem P358583202040975454.correct : P358583202040975454.Spec := by
  intro n
  simp only [A051396]

end A051396

/-! ## A051396.P10896775405977835854

`record[or(1, (1-n)*a(n-1))]` with `a(0)=0`
-/

namespace A051396.P10896775405977835854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lor 1 ((1 - (n : ℤ)) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051396.P10896775405977835854

namespace A051396

/-- `record[or(1, (1-n)*a(n-1))]` -/
def P10896775405977835854.Spec : Prop :=
  ∀ n, P10896775405977835854.a n = A051396 n

end A051396

/-! ## A051396.P282361311227576856

`record[and(A009179(n), A062157(n))]`
-/

namespace A051396.P282361311227576856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009179 n) (A062157 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051396.P282361311227576856

namespace A051396

/-- `record[and(A009179(n), A062157(n))]` -/
def P282361311227576856.Spec : Prop :=
  ∀ n, P282361311227576856.a n = A051396 n

end A051396

/-! ## A051396.P13997711156657706344

`record[and(A062157(n), A087208(n))]`
-/

namespace A051396.P13997711156657706344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062157 n) (A087208 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051396.P13997711156657706344

namespace A051396

/-- `record[and(A062157(n), A087208(n))]` -/
def P13997711156657706344.Spec : Prop :=
  ∀ n, P13997711156657706344.a n = A051396 n

end A051396

/-!
# A051397: a(n) = (2*n-2)*(2*n-1)*a(n-1)+1.

The programs for A051397, the canonical program `A051397.P10339672517598401110` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051397 has offset 0).

The definition of A051397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-2)*(2*n-1)*a(n-1)+1` (program `A051397.P10339672517598401110`, by `A051397.P10339672517598401110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051397.P10339672517598401110

`(2*n-2)*(2*n-1)*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051397

/-- `(2*n-2)*(2*n-1)*a(n-1)+1` -/
def P10339672517598401110.Spec : Prop :=
  ∀ n, P10339672517598401110.a n = A051397 n

theorem P10339672517598401110.correct : P10339672517598401110.Spec := by
  intro n
  simp only [A051397]

end A051397

/-! ## A051397.P15754750071751984094

`record[A009628(n)]`
-/

namespace A051397.P15754750071751984094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051397.P15754750071751984094

namespace A051397

/-- `record[A009628(n)]` -/
def P15754750071751984094.Spec : Prop :=
  ∀ n, P15754750071751984094.a n = A051397 n

end A051397

/-! ## A051397.P12412204013836616053

`A186763(comp[2*(n+1)])`
-/

namespace A051397.P12412204013836616053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186763 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051397.P12412204013836616053

namespace A051397

/-- `A186763(comp[2*(n+1)])` -/
def P12412204013836616053.Spec : Prop :=
  ∀ n, P12412204013836616053.a n = A051397 n

end A051397

/-! ## A051397.P1745638181106761429

`record[n%2*A087208(n)]`
-/

namespace A051397.P1745638181106761429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A087208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051397.P1745638181106761429

namespace A051397

/-- `record[n%2*A087208(n)]` -/
def P1745638181106761429.Spec : Prop :=
  ∀ n, P1745638181106761429.a n = A051397 n

end A051397

/-!
# A051398: a(n) = -(n-3)*a(n-1) + 2*(n-2)^2.

The programs for A051398, the canonical program `A051398.P16019381062359340673` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051398 has offset 3).

The definition of A051398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-n*a(n-1)+2*(n+1)²` (program `A051398.P16019381062359340673`, by `A051398.P16019381062359340673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051398.P16019381062359340673

`-n*a(n-1)+2*(n+1)²` with `a(0)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051398

/-- `-n*a(n-1)+2*(n+1)²` -/
def P16019381062359340673.Spec : Prop :=
  ∀ n, P16019381062359340673.a n = A051398 (n + 3)

theorem P16019381062359340673.correct : P16019381062359340673.Spec := by
  intro n
  simp only [A051398, Nat.add_sub_cancel]

end A051398

/-! ## A051398.P4888145465371639563

`A056158(n+3)+2*(n+3)`
-/

namespace A051398.P4888145465371639563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056158 (n + 3) + (2 * (n + 3) : ℤ)

end

end A051398.P4888145465371639563

namespace A051398

/-- `A056158(n+3)+2*(n+3)` -/
def P4888145465371639563.Spec : Prop :=
  ∀ n, P4888145465371639563.a n = A051398 (n + 3)

end A051398

/-! ## A051398.P4817593380040312385

`2*(n+1)²-n*a(n-1)` with `a(0)=2`
-/

namespace A051398.P4817593380040312385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (2 * (n + 1) ^ 2 : ℤ) - (n : ℤ) * a (n - 1)

end

end A051398.P4817593380040312385

namespace A051398

/-- `2*(n+1)²-n*a(n-1)` -/
def P4817593380040312385.Spec : Prop :=
  ∀ n, P4817593380040312385.a n = A051398 (n + 3)

theorem P4817593380040312385.correct : P4817593380040312385.Spec := by
  intro n
  simp only [A051398, Nat.add_sub_cancel, A051398.P4817593380040312385.a, A051398.P16019381062359340673.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051398

/-! ## A051398.P15637130576010331698

`n*(2*(n+2)-a(n-1))+2` with `a(0)=2`
-/

namespace A051398.P15637130576010331698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * ((2 * (n + 2) : ℤ) - a (n - 1)) + 2

end

end A051398.P15637130576010331698

namespace A051398

/-- `n*(2*(n+2)-a(n-1))+2` -/
def P15637130576010331698.Spec : Prop :=
  ∀ n, P15637130576010331698.a n = A051398 (n + 3)

theorem P15637130576010331698.correct : P15637130576010331698.Spec := by
  intro n
  simp only [A051398, Nat.add_sub_cancel, A051398.P15637130576010331698.a, A051398.P16019381062359340673.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051398

/-! ## A051398.P1576968763415728777

`4*A009574(n)+2`
-/

namespace A051398.P1576968763415728777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A009574 n + 2

end

end A051398.P1576968763415728777

namespace A051398

/-- `4*A009574(n)+2` -/
def P1576968763415728777.Spec : Prop :=
  ∀ n, P1576968763415728777.a n = A051398 (n + 3)

end A051398

/-! ## A051398.P2958337510109749403

`2*(A054516(n+3)+1)`
-/

namespace A051398.P2958337510109749403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054516 (n + 3) + 1)

end

end A051398.P2958337510109749403

namespace A051398

/-- `2*(A054516(n+3)+1)` -/
def P2958337510109749403.Spec : Prop :=
  ∀ n, P2958337510109749403.a n = A051398 (n + 3)

end A051398

/-! ## A051398.P16135226736216027476

`2*(2-A182386(n)+n)`
-/

namespace A051398.P16135226736216027476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - A182386 n + (n : ℤ))

end

end A051398.P16135226736216027476

namespace A051398

/-- `2*(2-A182386(n)+n)` -/
def P16135226736216027476.Spec : Prop :=
  ∀ n, P16135226736216027476.a n = A051398 (n + 3)

end A051398

/-!
# A051399: a(n) = (n-1)!*a(n-1)+1.

The programs for A051399, the canonical program `A051399.P9371084736377109109` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051399 has offset 0).

The definition of A051399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)!*a(n-1)+1` (program `A051399.P9371084736377109109`, by `A051399.P9371084736377109109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051399.P9371084736377109109

`(n-1)!*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051399

/-- `(n-1)!*a(n-1)+1` -/
def P9371084736377109109.Spec : Prop :=
  ∀ n, (P9371084736377109109.a n : ℤ) = A051399 n

theorem P9371084736377109109.correct : P9371084736377109109.Spec := by
  intro n
  simp only [A051399]

end A051399

/-! ## A051399.P6445440097411582302

`a(n-1)*A104150(n)+1` with `a(0)=0`
-/

namespace A051399.P6445440097411582302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A104150 n + 1

end

end A051399.P6445440097411582302

namespace A051399

/-- `a(n-1)*A104150(n)+1` -/
def P6445440097411582302.Spec : Prop :=
  ∀ n, P6445440097411582302.a n = A051399 n

end A051399

/-! ## A051399.P17500448804606394813

`A000142(n)/n*a(n-1)+1` with `a(0)=0`
-/

namespace A051399.P17500448804606394813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A000142 n : ℚ) / (n : ℚ) * a (n - 1) + 1

end

end A051399.P17500448804606394813

namespace A051399

/-- `A000142(n)/n*a(n-1)+1` -/
def P17500448804606394813.Spec : Prop :=
  ∀ n, P17500448804606394813.a n = (A051399 n : ℚ)

end A051399

/-! ## A051399.P5194001456931045151

`a(n-1)*A081123(A004275(n))+1` with `a(0)=0`
-/

namespace A051399.P5194001456931045151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * A081123 (A004275 n).toNat + 1

end

end A051399.P5194001456931045151

namespace A051399

/-- `a(n-1)*A081123(A004275(n))+1` -/
def P5194001456931045151.Spec : Prop :=
  ∀ n, P5194001456931045151.a n = A051399 n

end A051399


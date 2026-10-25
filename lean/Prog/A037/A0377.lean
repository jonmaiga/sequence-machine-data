import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B006.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C016
import Seq.Opaque.C018

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A037700: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037700, the canonical program `A037700.P1811428850090887618` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037700 has offset 1).

The definition of A037700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037700.P1811428850090887618

`(n+1)%4+9*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037700

/-- `(n+1)%4+9*a(n-1)` -/
def P1811428850090887618.Spec : Prop :=
  ∀ n, (P1811428850090887618.a n : ℤ) = A037700 (n + 1)

theorem P1811428850090887618.correct : P1811428850090887618.Spec := by
  intro n
  simp only [A037700, Nat.add_sub_cancel]

end A037700

/-! ## A037700.P15411691475091616462

`and(3, n+1)+9*a(n-1)` with `a(0)=1`
-/

namespace A037700.P15411691475091616462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 9 * a (n - 1)

end

end A037700.P15411691475091616462

namespace A037700

/-- `and(3, n+1)+9*a(n-1)` -/
def P15411691475091616462.Spec : Prop :=
  ∀ n, (P15411691475091616462.a n : ℤ) = A037700 (n + 1)

end A037700

/-! ## A037700.P6230734121639656125

`∑[xor(9*a(n-1), A010684(n))]` with `a(0)=1`
-/

namespace A037700.P6230734121639656125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A010684 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037700.P6230734121639656125

namespace A037700

/-- `∑[xor(9*a(n-1), A010684(n))]` -/
def P6230734121639656125.Spec : Prop :=
  ∀ n, P6230734121639656125.a n = A037700 (n + 1)

end A037700

/-! ## A037700.P7829599413150085734

`∑[A037798(n+1)-A037735(n+1)]`
-/

namespace A037700.P7829599413150085734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037798 (n + 1) - A037735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037700.P7829599413150085734

namespace A037700

/-- `∑[A037798(n+1)-A037735(n+1)]` -/
def P7829599413150085734.Spec : Prop :=
  ∀ n, P7829599413150085734.a n = A037700 (n + 1)

end A037700

/-! ## A037700.P17900017833025381460

`9*a(n-1)+A010873(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A037700.P17900017833025381460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) + (A010873 (n + 1) + A000038 n)

end

end A037700.P17900017833025381460

namespace A037700

/-- `9*a(n-1)+A010873(n+1)+A000038(n)` -/
def P17900017833025381460.Spec : Prop :=
  ∀ n, P17900017833025381460.a n = A037700 (n + 1)

end A037700

/-! ## A037700.P4249205973874296095

`A037714(n+1)+A037721(n+1)-A037735(n+1)`
-/

namespace A037700.P4249205973874296095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037735 (n + 1))

end

end A037700.P4249205973874296095

namespace A037700

/-- `A037714(n+1)+A037721(n+1)-A037735(n+1)` -/
def P4249205973874296095.Spec : Prop :=
  ∀ n, P4249205973874296095.a n = A037700 (n + 1)

end A037700

/-! ## A037700.P17670285184116195516

`Δ[∑[A037763(n+1)]-A037798(n+1)]`
-/

namespace A037700.P17670285184116195516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037763 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037700.P17670285184116195516

namespace A037700

/-- `Δ[∑[A037763(n+1)]-A037798(n+1)]` -/
def P17670285184116195516.Spec : Prop :=
  ∀ n, P17670285184116195516.a n = A037700 (n + 1)

end A037700

/-!
# A037701: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,2,3,0.

The programs for A037701, the canonical program `A037701.P2441783294571112015` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037701 has offset 1).

The definition of A037701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037701.P2441783294571112015

`10*a(n-1)+(n+1)%4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037701

/-- `10*a(n-1)+(n+1)%4` -/
def P2441783294571112015.Spec : Prop :=
  ∀ n, (P2441783294571112015.a n : ℤ) = A037701 (n + 1)

theorem P2441783294571112015.correct : P2441783294571112015.Spec := by
  intro n
  simp only [A037701, Nat.add_sub_cancel]

end A037701

/-! ## A037701.P13366099996117022460

`and(3, n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A037701.P13366099996117022460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 3 (n + 1) + 10 * a (n - 1)

end

end A037701.P13366099996117022460

namespace A037701

/-- `and(3, n+1)+10*a(n-1)` -/
def P13366099996117022460.Spec : Prop :=
  ∀ n, (P13366099996117022460.a n : ℤ) = A037701 (n + 1)

end A037701

/-! ## A037701.P14624448415958118264

`or(3, a(n-1))+9*a(n-1)` with `a(0)=1`
-/

namespace A037701.P14624448415958118264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (a (n - 1)) + 9 * a (n - 1)

end

end A037701.P14624448415958118264

namespace A037701

/-- `or(3, a(n-1))+9*a(n-1)` -/
def P14624448415958118264.Spec : Prop :=
  ∀ n, (P14624448415958118264.a n : ℤ) = A037701 (n + 1)

end A037701

/-! ## A037701.P1789575112022745722

`a(n-1)+9*a(n-1)+A010873(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A037701.P1789575112022745722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (9 * a (n - 1) + (A010873 (n + 1) + A000038 n))

end

end A037701.P1789575112022745722

namespace A037701

/-- `a(n-1)+9*a(n-1)+A010873(n+1)+A000038(n)` -/
def P1789575112022745722.Spec : Prop :=
  ∀ n, P1789575112022745722.a n = A037701 (n + 1)

end A037701

/-!
# A037702: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037702, the canonical program `A037702.P11684367715093722818` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037702 has offset 1).

The definition of A037702 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037702.P10223338190471158410

`ogf((1+3x+2x^3)/(1-4x-x^4+4x^5))`
-/

namespace A037702.P10223338190471158410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 0, 2] [1, -4, 0, 0, -1, 4] n

end

end A037702.P10223338190471158410

namespace A037702

/-- `ogf((1+3x+2x^3)/(1-4x-x^4+4x^5))` -/
def P10223338190471158410.Spec : Prop :=
  ∀ n, P10223338190471158410.a n = A037702 (n + 1)

end A037702

/-! ## A037702.P11684367715093722818

`xor(or(3, a(n-1))+3*a(n-1), and(1, n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037702

/-- `xor(or(3, a(n-1))+3*a(n-1), and(1, n))` -/
def P11684367715093722818.Spec : Prop :=
  ∀ n, (P11684367715093722818.a n : ℤ) = A037702 (n + 1)

theorem P11684367715093722818.correct : P11684367715093722818.Spec := by
  intro n
  simp only [A037702, Nat.add_sub_cancel]

end A037702

/-! ## A037702.P18265642888380768150

`floor(A037793(n+1)/2)`
-/

namespace A037702.P18265642888380768150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037793 (n + 1) : ℚ) / 2⌋

end

end A037702.P18265642888380768150

namespace A037702

/-- `floor(A037793(n+1)/2)` -/
def P18265642888380768150.Spec : Prop :=
  ∀ n, P18265642888380768150.a n = A037702 (n + 1)

end A037702

/-! ## A037702.P9247141737208616513

`xor(A037751(n+1), A037758(n+1))`
-/

namespace A037702.P9247141737208616513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037751 (n + 1)) (A037758 (n + 1))

end

end A037702.P9247141737208616513

namespace A037702

/-- `xor(A037751(n+1), A037758(n+1))` -/
def P9247141737208616513.Spec : Prop :=
  ∀ n, P9247141737208616513.a n = A037702 (n + 1)

end A037702

/-! ## A037702.P110164917631463098

`xor(A037730(n+1), A037786(n+1))`
-/

namespace A037702.P110164917631463098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037730 (n + 1)) (A037786 (n + 1))

end

end A037702.P110164917631463098

namespace A037702

/-- `xor(A037730(n+1), A037786(n+1))` -/
def P110164917631463098.Spec : Prop :=
  ∀ n, P110164917631463098.a n = A037702 (n + 1)

end A037702

/-! ## A037702.P14028095003580052693

`A000225(A103517(n))%A037723(n+1)`
-/

namespace A037702.P14028095003580052693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A103517 n).toNat) (A037723 (n + 1))

end

end A037702.P14028095003580052693

namespace A037702

/-- `A000225(A103517(n))%A037723(n+1)` -/
def P14028095003580052693.Spec : Prop :=
  ∀ n, P14028095003580052693.a n = A037702 (n + 1)

end A037702

/-! ## A037702.P13975271398095278904

`A037737(n+2)-8*A000302(n)`
-/

namespace A037702.P13975271398095278904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037737 (n + 2) - 8 * A000302 n

end

end A037702.P13975271398095278904

namespace A037702

/-- `A037737(n+2)-8*A000302(n)` -/
def P13975271398095278904.Spec : Prop :=
  ∀ n, P13975271398095278904.a n = A037702 (n + 1)

end A037702

/-! ## A037702.P17619420545064826341

`and(A037576(n+1), A037737(n+2))`
-/

namespace A037702.P17619420545064826341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037576 (n + 1)) (A037737 (n + 2))

end

end A037702.P17619420545064826341

namespace A037702

/-- `and(A037576(n+1), A037737(n+2))` -/
def P17619420545064826341.Spec : Prop :=
  ∀ n, P17619420545064826341.a n = A037702 (n + 1)

end A037702

/-!
# A037703: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037703, the canonical program `A037703.P2210299010940210397` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037703 has offset 1).

The definition of A037703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037703.P2210299010940210397

`∑[xor(5*a(n-1), A176059(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037703

/-- `∑[xor(5*a(n-1), A176059(n))]` -/
def P2210299010940210397.Spec : Prop :=
  ∀ n, P2210299010940210397.a n = A037703 (n + 1)

theorem P2210299010940210397.correct : P2210299010940210397.Spec := by
  intro n
  simp only [A037703, Nat.add_sub_cancel]

end A037703

/-! ## A037703.P6412266691911994951

`∑[xor(5*a(n-1), A010693(n+1))]` with `a(0)=1`
-/

namespace A037703.P6412266691911994951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010693 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037703.P6412266691911994951

namespace A037703

/-- `∑[xor(5*a(n-1), A010693(n+1))]` -/
def P6412266691911994951.Spec : Prop :=
  ∀ n, P6412266691911994951.a n = A037703 (n + 1)

end A037703

/-! ## A037703.P17971254342525751057

`∑[xor(5*a(n-1), A020639(3*(n+1)))]` with `a(0)=1`
-/

namespace A037703.P17971254342525751057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A020639 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037703.P17971254342525751057

namespace A037703

/-- `∑[xor(5*a(n-1), A020639(3*(n+1)))]` -/
def P17971254342525751057.Spec : Prop :=
  ∀ n, P17971254342525751057.a n = A037703 (n + 1)

end A037703

/-! ## A037703.P5672224724706247343

`A037710(n+1)+A037717(n+1)-A037724(n+1)`
-/

namespace A037703.P5672224724706247343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037710 (n + 1) + (A037717 (n + 1) - A037724 (n + 1))

end

end A037703.P5672224724706247343

namespace A037703

/-- `A037710(n+1)+A037717(n+1)-A037724(n+1)` -/
def P5672224724706247343.Spec : Prop :=
  ∀ n, P5672224724706247343.a n = A037703 (n + 1)

theorem P5672224724706247343.correct : P5672224724706247343.Spec := by
  intro n
  simp only [A037703, Nat.add_sub_cancel, A037703.P5672224724706247343.a, A037703.P2210299010940210397.f1, A037703.P2210299010940210397.a, A037710, A037710.P6721493881183264277.a, A037717, A037717.P184041688980154751.f1, A037717.P184041688980154751.a, A037724, A037724.P16418418988540140447.a, A176059, A176059.P3242393250982034900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037703

/-! ## A037703.P3965947769232341989

`A037689(n+1)+A037780(n+1)-A037766(n+1)`
-/

namespace A037703.P3965947769232341989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037689 (n + 1) + (A037780 (n + 1) - A037766 (n + 1))

end

end A037703.P3965947769232341989

namespace A037703

/-- `A037689(n+1)+A037780(n+1)-A037766(n+1)` -/
def P3965947769232341989.Spec : Prop :=
  ∀ n, P3965947769232341989.a n = A037703 (n + 1)

end A037703

/-!
# A037704: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037704, the canonical program `A037704.P10007880330430517214` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037704 has offset 1).

The definition of A037704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037704.P5769816862054114285

`A037711(n+1)+A037718(n+1)-A037725(n+1)`
-/

namespace A037704.P5769816862054114285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037725 (n + 1))

end

end A037704.P5769816862054114285

namespace A037704

/-- `A037711(n+1)+A037718(n+1)-A037725(n+1)` -/
def P5769816862054114285.Spec : Prop :=
  ∀ n, P5769816862054114285.a n = A037704 (n + 1)

end A037704

/-! ## A037704.P10007880330430517214

`A037781(n+1)-abs(∑[2*(-6)^n])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037704

/-- `A037781(n+1)-abs(∑[2*(-6)^n])` -/
def P10007880330430517214.Spec : Prop :=
  ∀ n, P10007880330430517214.a n = A037704 (n + 1)

theorem P10007880330430517214.correct : P10007880330430517214.Spec := by
  intro n
  simp only [A037704, Nat.add_sub_cancel]

end A037704

/-! ## A037704.P18283886154080622170

`A037732(n+1)+A037746(n+1)-A037774(n+1)`
-/

namespace A037704.P18283886154080622170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037732 (n + 1) + (A037746 (n + 1) - A037774 (n + 1))

end

end A037704.P18283886154080622170

namespace A037704

/-- `A037732(n+1)+A037746(n+1)-A037774(n+1)` -/
def P18283886154080622170.Spec : Prop :=
  ∀ n, P18283886154080622170.a n = A037704 (n + 1)

end A037704

/-! ## A037704.P17729675540554910031

`A037767(n+4)%Δ[A062394(n)]`
-/

namespace A037704.P17729675540554910031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037767 (n + 4)) (f1 (n + 1) - f1 n)

end

end A037704.P17729675540554910031

namespace A037704

/-- `A037767(n+4)%Δ[A062394(n)]` -/
def P17729675540554910031.Spec : Prop :=
  ∀ n, P17729675540554910031.a n = A037704 (n + 1)

end A037704

/-! ## A037704.P16652261824107858527

`A037781(n+1)%A092165(n+1)`
-/

namespace A037704.P16652261824107858527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037781 (n + 1)) (A092165 (n + 1))

end

end A037704.P16652261824107858527

namespace A037704

/-- `A037781(n+1)%A092165(n+1)` -/
def P16652261824107858527.Spec : Prop :=
  ∀ n, P16652261824107858527.a n = A037704 (n + 1)

end A037704

/-!
# A037705: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037705, the canonical program `A037705.P13871482217024803718` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037705 has offset 1).

The definition of A037705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037705.P5287425523721236067

`A120741(n+1)-A037726(n+1)`
-/

namespace A037705.P5287425523721236067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037726 (n + 1)

end

end A037705.P5287425523721236067

namespace A037705

/-- `A120741(n+1)-A037726(n+1)` -/
def P5287425523721236067.Spec : Prop :=
  ∀ n, P5287425523721236067.a n = A037705 (n + 1)

theorem P5287425523721236067.correct : P5287425523721236067.Spec := by
  intro n
  simp only [A037705, Nat.add_sub_cancel, A037705.P5287425523721236067.a, A037705.P13871482217024803718.a, A037719, A037719.P11049252179318265615.a, A037726, A037726.P10810606024213061310.a, A037747, A037747.P6387786444260834050.a, A037761, A037761.P7195593094420718256.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037705

/-! ## A037705.P7339402530731959845

`A037684(n+1)+A037747(n+1)-A037726(n+1)`
-/

namespace A037705.P7339402530731959845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037726 (n + 1))

end

end A037705.P7339402530731959845

namespace A037705

/-- `A037684(n+1)+A037747(n+1)-A037726(n+1)` -/
def P7339402530731959845.Spec : Prop :=
  ∀ n, P7339402530731959845.a n = A037705 (n + 1)

theorem P7339402530731959845.correct : P7339402530731959845.Spec := by
  intro n
  simp only [A037705, Nat.add_sub_cancel, A037705.P7339402530731959845.a, A037705.P13871482217024803718.a, A037684, A037684.P14194998553466054021.a, A037719, A037719.P11049252179318265615.a, A037726, A037726.P10810606024213061310.a, A037747, A037747.P6387786444260834050.a, A037761, A037761.P7195593094420718256.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037705

/-! ## A037705.P3733854086683241427

`A037698(n+1)+A037733(n+1)-A037726(n+1)`
-/

namespace A037705.P3733854086683241427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037698 (n + 1) + (A037733 (n + 1) - A037726 (n + 1))

end

end A037705.P3733854086683241427

namespace A037705

/-- `A037698(n+1)+A037733(n+1)-A037726(n+1)` -/
def P3733854086683241427.Spec : Prop :=
  ∀ n, P3733854086683241427.a n = A037705 (n + 1)

end A037705

/-! ## A037705.P3722782542686233461

`A037712(n+1)+A037719(n+1)-A037726(n+1)`
-/

namespace A037705.P3722782542686233461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037719 (n + 1) - A037726 (n + 1))

end

end A037705.P3722782542686233461

namespace A037705

/-- `A037712(n+1)+A037719(n+1)-A037726(n+1)` -/
def P3722782542686233461.Spec : Prop :=
  ∀ n, P3722782542686233461.a n = A037705 (n + 1)

end A037705

/-! ## A037705.P13871482217024803718

`A037719(n+1)+A037747(n+1)-A037761(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037705

/-- `A037719(n+1)+A037747(n+1)-A037761(n+1)` -/
def P13871482217024803718.Spec : Prop :=
  ∀ n, P13871482217024803718.a n = A037705 (n + 1)

theorem P13871482217024803718.correct : P13871482217024803718.Spec := by
  intro n
  simp only [A037705, Nat.add_sub_cancel]

end A037705

/-! ## A037705.P11454980547805091926

`A037684(n+1)+A037698(n+2)-A037691(n+2)`
-/

namespace A037705.P11454980547805091926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037698 (n + 2) - A037691 (n + 2))

end

end A037705.P11454980547805091926

namespace A037705

/-- `A037684(n+1)+A037698(n+2)-A037691(n+2)` -/
def P11454980547805091926.Spec : Prop :=
  ∀ n, P11454980547805091926.a n = A037705 (n + 1)

end A037705

/-!
# A037706: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037706, the canonical program `A037706.P10401356775604242659` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037706 has offset 1).

The definition of A037706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037706.P6491703680742703222

`∑[3*8^n]-A037727(n+1)`
-/

namespace A037706.P6491703680742703222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A037727 (n + 1)

end

end A037706.P6491703680742703222

namespace A037706

/-- `∑[3*8^n]-A037727(n+1)` -/
def P6491703680742703222.Spec : Prop :=
  ∀ n, P6491703680742703222.a n = A037706 (n + 1)

end A037706

/-! ## A037706.P10401356775604242659

`xor(A037755(n+1), A037762(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037706

/-- `xor(A037755(n+1), A037762(n+1))` -/
def P10401356775604242659.Spec : Prop :=
  ∀ n, P10401356775604242659.a n = A037706 (n + 1)

theorem P10401356775604242659.correct : P10401356775604242659.Spec := by
  intro n
  simp only [A037706, Nat.add_sub_cancel]

end A037706

/-! ## A037706.P12838690158660392532

`xor(A037734(n+1), A037790(n+1))`
-/

namespace A037706.P12838690158660392532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037734 (n + 1)) (A037790 (n + 1))

end

end A037706.P12838690158660392532

namespace A037706

/-- `xor(A037734(n+1), A037790(n+1))` -/
def P12838690158660392532.Spec : Prop :=
  ∀ n, P12838690158660392532.a n = A037706 (n + 1)

end A037706

/-! ## A037706.P12749073443463298549

`xor(∑[2*A001018(n)], A037783(n+1))`
-/

namespace A037706.P12749073443463298549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037783 (n + 1))

end

end A037706.P12749073443463298549

namespace A037706

/-- `xor(∑[2*A001018(n)], A037783(n+1))` -/
def P12749073443463298549.Spec : Prop :=
  ∀ n, P12749073443463298549.a n = A037706 (n + 1)

end A037706

/-! ## A037706.P7442173219989811154

`A037713(n+1)+A037720(n+1)-A037727(n+1)`
-/

namespace A037706.P7442173219989811154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1) + (A037720 (n + 1) - A037727 (n + 1))

end

end A037706.P7442173219989811154

namespace A037706

/-- `A037713(n+1)+A037720(n+1)-A037727(n+1)` -/
def P7442173219989811154.Spec : Prop :=
  ∀ n, P7442173219989811154.a n = A037706 (n + 1)

end A037706

/-! ## A037706.P1709942026844709042

`A037692(n+1)+A037783(n+1)-A037769(n+1)`
-/

namespace A037706.P1709942026844709042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037692 (n + 1) + (A037783 (n + 1) - A037769 (n + 1))

end

end A037706.P1709942026844709042

namespace A037706

/-- `A037692(n+1)+A037783(n+1)-A037769(n+1)` -/
def P1709942026844709042.Spec : Prop :=
  ∀ n, P1709942026844709042.a n = A037706 (n + 1)

end A037706

/-! ## A037706.P16194632200663698254

`xor(A113405(3*(n+1))+A037734(n+1), A037755(n+1))`
-/

namespace A037706.P16194632200663698254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A113405 (3 * (n + 1)) + A037734 (n + 1)) (A037755 (n + 1))

end

end A037706.P16194632200663698254

namespace A037706

/-- `xor(A113405(3*(n+1))+A037734(n+1), A037755(n+1))` -/
def P16194632200663698254.Spec : Prop :=
  ∀ n, P16194632200663698254.a n = A037706 (n + 1)

end A037706

/-! ## A037706.P10572483123102122921

`and(A037580(n+1), A037769(n+4))`
-/

namespace A037706.P10572483123102122921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037580 (n + 1)) (A037769 (n + 4))

end

end A037706.P10572483123102122921

namespace A037706

/-- `and(A037580(n+1), A037769(n+4))` -/
def P10572483123102122921.Spec : Prop :=
  ∀ n, P10572483123102122921.a n = A037706 (n + 1)

end A037706

/-!
# A037707: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037707, the canonical program `A037707.P11521697123880163545` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037707 has offset 1).

The definition of A037707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037707.P13309514887649213964

`A037700(n+1)+A037735(n+1)-A037728(n+1)`
-/

namespace A037707.P13309514887649213964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037735 (n + 1) - A037728 (n + 1))

end

end A037707.P13309514887649213964

namespace A037707

/-- `A037700(n+1)+A037735(n+1)-A037728(n+1)` -/
def P13309514887649213964.Spec : Prop :=
  ∀ n, P13309514887649213964.a n = A037707 (n + 1)

end A037707

/-! ## A037707.P9389546566297137894

`A037714(n+1)+A037721(n+1)-A037728(n+1)`
-/

namespace A037707.P9389546566297137894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037728 (n + 1))

end

end A037707.P9389546566297137894

namespace A037707

/-- `A037714(n+1)+A037721(n+1)-A037728(n+1)` -/
def P9389546566297137894.Spec : Prop :=
  ∀ n, P9389546566297137894.a n = A037707 (n + 1)

end A037707

/-! ## A037707.P11521697123880163545

`A037721(n+1)+A037749(n+1)-A037763(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037707

/-- `A037721(n+1)+A037749(n+1)-A037763(n+1)` -/
def P11521697123880163545.Spec : Prop :=
  ∀ n, P11521697123880163545.a n = A037707 (n + 1)

theorem P11521697123880163545.correct : P11521697123880163545.Spec := by
  intro n
  simp only [A037707, Nat.add_sub_cancel]

end A037707

/-! ## A037707.P8013369207897030080

`A037721(n+1)+A037756(n+1)-A037770(n+1)`
-/

namespace A037707.P8013369207897030080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037756 (n + 1) - A037770 (n + 1))

end

end A037707.P8013369207897030080

namespace A037707

/-- `A037721(n+1)+A037756(n+1)-A037770(n+1)` -/
def P8013369207897030080.Spec : Prop :=
  ∀ n, P8013369207897030080.a n = A037707 (n + 1)

theorem P8013369207897030080.correct : P8013369207897030080.Spec := by
  intro n
  simp only [A037707, Nat.add_sub_cancel, A037707.P8013369207897030080.a, A037707.P11521697123880163545.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037749, A037749.P432838538654619278.a, A037756, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037763, A037763.P18333106692901934060.a, A037770, A037770.P11628452646226728937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037707

/-! ## A037707.P11986558342190741747

`A037735(n+1)+A037749(n+1)-A037777(n+1)`
-/

namespace A037707.P11986558342190741747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037735 (n + 1) + (A037749 (n + 1) - A037777 (n + 1))

end

end A037707.P11986558342190741747

namespace A037707

/-- `A037735(n+1)+A037749(n+1)-A037777(n+1)` -/
def P11986558342190741747.Spec : Prop :=
  ∀ n, P11986558342190741747.a n = A037707 (n + 1)

end A037707

/-! ## A037707.P6664589187796969097

`A037714(n+1)+A037777(n+1)-A037784(n+1)`
-/

namespace A037707.P6664589187796969097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037777 (n + 1) - A037784 (n + 1))

end

end A037707.P6664589187796969097

namespace A037707

/-- `A037714(n+1)+A037777(n+1)-A037784(n+1)` -/
def P6664589187796969097.Spec : Prop :=
  ∀ n, P6664589187796969097.a n = A037707 (n + 1)

end A037707

/-!
# A037708: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,0,2.

The programs for A037708, there is no canonical definition to state claims against.
-/

/-! ## A037708.P7928752852392893974

`A007090(A037702(n+1))`
-/

namespace A037708.P7928752852392893974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037702 (n + 1)).toNat

end

end A037708.P7928752852392893974

/-!
# A037709: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037709, the canonical program `A037709.P13722452577715119678` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037709 has offset 1).

The definition of A037709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037709.P11302940829702997023

`ogf((1+2x)/(1-5x+5x^2-5x^3+4x^4))`
-/

namespace A037709.P11302940829702997023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -5, 5, -5, 4] n

end

end A037709.P11302940829702997023

namespace A037709

/-- `ogf((1+2x)/(1-5x+5x^2-5x^3+4x^4))` -/
def P11302940829702997023.Spec : Prop :=
  ∀ n, P11302940829702997023.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P13722452577715119678

`floor(8*4^(n+1)/17)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037709

/-- `floor(8*4^(n+1)/17)` -/
def P13722452577715119678.Spec : Prop :=
  ∀ n, P13722452577715119678.a n = A037709 (n + 1)

theorem P13722452577715119678.correct : P13722452577715119678.Spec := by
  intro n
  simp only [A037709, Nat.add_sub_cancel]

end A037709

/-! ## A037709.P7351700031435035935

`A224520(Δ[n²])`
-/

namespace A037709.P7351700031435035935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A037709.P7351700031435035935

namespace A037709

/-- `A224520(Δ[n²])` -/
def P7351700031435035935.Spec : Prop :=
  ∀ n, P7351700031435035935.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P14171397824130803128

`record[A224520(n^(n%2))]`
-/

namespace A037709.P14171397824130803128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037709.P14171397824130803128

namespace A037709

/-- `record[A224520(n^(n%2))]` -/
def P14171397824130803128.Spec : Prop :=
  ∀ n, P14171397824130803128.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P10064495961668019733

`A083420(n)-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A037709.P10064495961668019733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  A083420 n - a (n - 2)

end

end A037709.P10064495961668019733

namespace A037709

/-- `A083420(n)-a(n-2)` -/
def P10064495961668019733.Spec : Prop :=
  ∀ n, P10064495961668019733.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P2600570103390711284

`xor(a(n-1), ∑[A108981(n)])` with `a(0)=1`
-/

namespace A037709.P2600570103390711284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108981 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A037709.P2600570103390711284

namespace A037709

/-- `xor(a(n-1), ∑[A108981(n)])` -/
def P2600570103390711284.Spec : Prop :=
  ∀ n, P2600570103390711284.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P2282285401234030918

`xor(a(n-1), A077854(2*n))` with `a(0)=1`
-/

namespace A037709.P2282285401234030918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A077854 (2 * n))

end

end A037709.P2282285401234030918

namespace A037709

/-- `xor(a(n-1), A077854(2*n))` -/
def P2282285401234030918.Spec : Prop :=
  ∀ n, P2282285401234030918.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P11874164495405204845

`record[A224520(A004442(n))]`
-/

namespace A037709.P11874164495405204845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037709.P11874164495405204845

namespace A037709

/-- `record[A224520(A004442(n))]` -/
def P11874164495405204845.Spec : Prop :=
  ∀ n, P11874164495405204845.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P10187025634343324214

`record[A224520(A000265(n+1))]`
-/

namespace A037709.P10187025634343324214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037709.P10187025634343324214

namespace A037709

/-- `record[A224520(A000265(n+1))]` -/
def P10187025634343324214.Spec : Prop :=
  ∀ n, P10187025634343324214.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P13128954471596385955

`xor(A037489(n+1), A037786(n+1))`
-/

namespace A037709.P13128954471596385955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037489 (n + 1)) (A037786 (n + 1))

end

end A037709.P13128954471596385955

namespace A037709

/-- `xor(A037489(n+1), A037786(n+1))` -/
def P13128954471596385955.Spec : Prop :=
  ∀ n, P13128954471596385955.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P17256617791962598609

`xor(A037744(n+1), A037765(n+1))`
-/

namespace A037709.P17256617791962598609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037744 (n + 1)) (A037765 (n + 1))

end

end A037709.P17256617791962598609

namespace A037709

/-- `xor(A037744(n+1), A037765(n+1))` -/
def P17256617791962598609.Spec : Prop :=
  ∀ n, P17256617791962598609.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P8025023858808323430

`xor(A037737(n+1), A037793(n+1))`
-/

namespace A037709.P8025023858808323430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037737 (n + 1)) (A037793 (n + 1))

end

end A037709.P8025023858808323430

namespace A037709

/-- `xor(A037737(n+1), A037793(n+1))` -/
def P8025023858808323430.Spec : Prop :=
  ∀ n, P8025023858808323430.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P10553162120678839429

`xor(A037751(n+1), A043291(n+1))`
-/

namespace A037709.P10553162120678839429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037751 (n + 1)) (A043291 (n + 1))

end

end A037709.P10553162120678839429

namespace A037709

/-- `xor(A037751(n+1), A043291(n+1))` -/
def P10553162120678839429.Spec : Prop :=
  ∀ n, P10553162120678839429.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P5467937705936194338

`record[A224520(A005408(∑[n]%(n+1)))]`
-/

namespace A037709.P5467937705936194338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (A005408 ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037709.P5467937705936194338

namespace A037709

/-- `record[A224520(A005408(∑[n]%(n+1)))]` -/
def P5467937705936194338.Spec : Prop :=
  ∀ n, P5467937705936194338.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P1901724576043995882

`xor(A000975(2*(n+1)), A037772(n+1))`
-/

namespace A037709.P1901724576043995882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000975 (2 * (n + 1))) (A037772 (n + 1))

end

end A037709.P1901724576043995882

namespace A037709

/-- `xor(A000975(2*(n+1)), A037772(n+1))` -/
def P1901724576043995882.Spec : Prop :=
  ∀ n, P1901724576043995882.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P3188265285555524486

`2*A224520(2*n+1)-A224520(2*n+1)`
-/

namespace A037709.P3188265285555524486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224520 (2 * n + 1) - A224520 (2 * n + 1)

end

end A037709.P3188265285555524486

namespace A037709

/-- `2*A224520(2*n+1)-A224520(2*n+1)` -/
def P3188265285555524486.Spec : Prop :=
  ∀ n, P3188265285555524486.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P2696270925619518434

`xor(A224520(2*n+1)+2*A000079(n)², 2*A000079(n)²)`
-/

namespace A037709.P2696270925619518434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A224520 (2 * n + 1) + 2 * A000079 n ^ 2) (2 * A000079 n ^ 2)

end

end A037709.P2696270925619518434

namespace A037709

/-- `xor(A224520(2*n+1)+2*A000079(n)², 2*A000079(n)²)` -/
def P2696270925619518434.Spec : Prop :=
  ∀ n, P2696270925619518434.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P16007644234660114189

`xor(A224520(2*n+1)+A000079(2*n+1), A000079(2*n+1))`
-/

namespace A037709.P16007644234660114189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A224520 (2 * n + 1) + A000079 (2 * n + 1)) (A000079 (2 * n + 1))

end

end A037709.P16007644234660114189

namespace A037709

/-- `xor(A224520(2*n+1)+A000079(2*n+1), A000079(2*n+1))` -/
def P16007644234660114189.Spec : Prop :=
  ∀ n, P16007644234660114189.a n = A037709 (n + 1)

end A037709

/-! ## A037709.P258162529352886876

`ceil(A000225(2*n+5)/17)-1`
-/

namespace A037709.P258162529352886876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 (2 * n + 5) : ℚ) / 17⌉ - 1

end

end A037709.P258162529352886876

namespace A037709

/-- `ceil(A000225(2*n+5)/17)-1` -/
def P258162529352886876.Spec : Prop :=
  ∀ n, P258162529352886876.a n = A037709 (n + 1)

end A037709

/-!
# A037710: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037710, the canonical program `A037710.P6721493881183264277` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037710 has offset 1).

The definition of A037710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037710.P6721493881183264277

`6*a(n-1)-6*a(n-2)+6*a(n-3)-5*a(n-4)` with `a(0)=1, a(1)=8, a(2)=42, a(3)=210`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037710

/-- `6*a(n-1)-6*a(n-2)+6*a(n-3)-5*a(n-4)` -/
def P6721493881183264277.Spec : Prop :=
  ∀ n, P6721493881183264277.a n = A037710 (n + 1)

theorem P6721493881183264277.correct : P6721493881183264277.Spec := by
  intro n
  simp only [A037710, Nat.add_sub_cancel]

end A037710

/-! ## A037710.P14009428686437983431

`floor(35*5^(n+1)/104)`
-/

namespace A037710.P14009428686437983431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(35 * 5 ^ (n + 1) : ℚ) / 104⌋

end

end A037710.P14009428686437983431

namespace A037710

/-- `floor(35*5^(n+1)/104)` -/
def P14009428686437983431.Spec : Prop :=
  ∀ n, P14009428686437983431.a n = A037710 (n + 1)

end A037710

/-! ## A037710.P13454592256341945695

`ogf((1+2x)/(1-6x+6x^2-6x^3+5x^4))`
-/

namespace A037710.P13454592256341945695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -6, 6, -6, 5] n

end

end A037710.P13454592256341945695

namespace A037710

/-- `ogf((1+2x)/(1-6x+6x^2-6x^3+5x^4))` -/
def P13454592256341945695.Spec : Prop :=
  ∀ n, P13454592256341945695.a n = A037710 (n + 1)

end A037710

/-! ## A037710.P16574817422324779669

`∑[xor(5*a(n-1), gcd(2, n+1))]` with `a(0)=1`
-/

namespace A037710.P16574817422324779669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (Nat.gcd 2 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037710.P16574817422324779669

namespace A037710

/-- `∑[xor(5*a(n-1), gcd(2, n+1))]` -/
def P16574817422324779669.Spec : Prop :=
  ∀ n, (P16574817422324779669.a n : ℤ) = A037710 (n + 1)

end A037710

/-! ## A037710.P6513288301781421824

`A117617(n)-a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A037710.P6513288301781421824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  A117617 n - a (n - 2)

end

end A037710.P6513288301781421824

namespace A037710

/-- `A117617(n)-a(n-2)` -/
def P6513288301781421824.Spec : Prop :=
  ∀ n, P6513288301781421824.a n = A037710 (n + 1)

end A037710

/-! ## A037710.P13758134278604962168

`∑[xor(5*a(n-1), A000034(n))]` with `a(0)=1`
-/

namespace A037710.P13758134278604962168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037710.P13758134278604962168

namespace A037710

/-- `∑[xor(5*a(n-1), A000034(n))]` -/
def P13758134278604962168.Spec : Prop :=
  ∀ n, P13758134278604962168.a n = A037710 (n + 1)

end A037710

/-! ## A037710.P9876321345919975920

`∑[xor(5*a(n-1), A000079(n)%3)]` with `a(0)=1`
-/

namespace A037710.P9876321345919975920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (Int.tmod (A000079 n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037710.P9876321345919975920

namespace A037710

/-- `∑[xor(5*a(n-1), A000079(n)%3)]` -/
def P9876321345919975920.Spec : Prop :=
  ∀ n, P9876321345919975920.a n = A037710 (n + 1)

end A037710

/-! ## A037710.P12093739193535413028

`∑[xor(5*a(n-1), A055881(3*n+1))]` with `a(0)=1`
-/

namespace A037710.P12093739193535413028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A055881 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037710.P12093739193535413028

namespace A037710

/-- `∑[xor(5*a(n-1), A055881(3*n+1))]` -/
def P12093739193535413028.Spec : Prop :=
  ∀ n, P12093739193535413028.a n = A037710 (n + 1)

end A037710

/-! ## A037710.P15567299911804507613

`A037703(n+1)+A037724(n+1)-A037717(n+1)`
-/

namespace A037710.P15567299911804507613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037703 (n + 1) + (A037724 (n + 1) - A037717 (n + 1))

end

end A037710.P15567299911804507613

namespace A037710

/-- `A037703(n+1)+A037724(n+1)-A037717(n+1)` -/
def P15567299911804507613.Spec : Prop :=
  ∀ n, P15567299911804507613.a n = A037710 (n + 1)

theorem P15567299911804507613.correct : P15567299911804507613.Spec := by
  intro n
  simp only [A037710, Nat.add_sub_cancel, A037710.P15567299911804507613.a, A037710.P6721493881183264277.a, A037703, A037703.P2210299010940210397.f1, A037703.P2210299010940210397.a, A037717, A037717.P184041688980154751.f1, A037717.P184041688980154751.a, A037724, A037724.P16418418988540140447.a, A176059, A176059.P3242393250982034900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037710

/-!
# A037711: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037711, the canonical program `A037711.P5672376970988767785` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037711 has offset 1).

The definition of A037711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037711.P18031921424756752135

`ogf((1+2x)/(1-7x+7x^2-7x^3+6x^4))`
-/

namespace A037711.P18031921424756752135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -7, 7, -7, 6] n

end

end A037711.P18031921424756752135

namespace A037711

/-- `ogf((1+2x)/(1-7x+7x^2-7x^3+6x^4))` -/
def P18031921424756752135.Spec : Prop :=
  ∀ n, P18031921424756752135.a n = A037711 (n + 1)

end A037711

/-! ## A037711.P17394554610660641543

`A037690(n+1)+A037739(n+1)-A037718(n+1)`
-/

namespace A037711.P17394554610660641543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 1) + (A037739 (n + 1) - A037718 (n + 1))

end

end A037711.P17394554610660641543

namespace A037711

/-- `A037690(n+1)+A037739(n+1)-A037718(n+1)` -/
def P17394554610660641543.Spec : Prop :=
  ∀ n, P17394554610660641543.a n = A037711 (n + 1)

theorem P17394554610660641543.correct : P17394554610660641543.Spec := by
  intro n
  simp only [A037711, Nat.add_sub_cancel, A037711.P17394554610660641543.a, A037711.P5672376970988767785.f1, A037711.P5672376970988767785.a, A037690, A037690.P10971792111560011432.a, A037718, A037718.P5498483775677250731.a, A037739, A037739.P18257991991248789603.a, A037753, A037753.P10507737516097663728.a, A037767, A037767.P12662760880017921865.a, A015540, A015540.P6424508890208897512.a, A037746, A037746.P1636314081189769102.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037711

/-! ## A037711.P4197842432991074989

`A037697(n+1)+A037732(n+1)-A037718(n+1)`
-/

namespace A037711.P4197842432991074989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037697 (n + 1) + (A037732 (n + 1) - A037718 (n + 1))

end

end A037711.P4197842432991074989

namespace A037711

/-- `A037697(n+1)+A037732(n+1)-A037718(n+1)` -/
def P4197842432991074989.Spec : Prop :=
  ∀ n, P4197842432991074989.a n = A037711 (n + 1)

end A037711

/-! ## A037711.P13872618639822082647

`A037704(n+1)+A037725(n+1)-A037718(n+1)`
-/

namespace A037711.P13872618639822082647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037704 (n + 1) + (A037725 (n + 1) - A037718 (n + 1))

end

end A037711.P13872618639822082647

namespace A037711

/-- `A037704(n+1)+A037725(n+1)-A037718(n+1)` -/
def P13872618639822082647.Spec : Prop :=
  ∀ n, P13872618639822082647.a n = A037711 (n + 1)

end A037711

/-! ## A037711.P5672376970988767785

`A037753(n+1)+∑[A037739(n+1)-A037767(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037711

/-- `A037753(n+1)+∑[A037739(n+1)-A037767(n+1)]` -/
def P5672376970988767785.Spec : Prop :=
  ∀ n, P5672376970988767785.a n = A037711 (n + 1)

theorem P5672376970988767785.correct : P5672376970988767785.Spec := by
  intro n
  simp only [A037711, Nat.add_sub_cancel]

end A037711

/-! ## A037711.P17932164371646543905

`A037767(n+2)-Δ[A037795(n+1)]`
-/

namespace A037711.P17932164371646543905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037711.P17932164371646543905

namespace A037711

/-- `A037767(n+2)-Δ[A037795(n+1)]` -/
def P17932164371646543905.Spec : Prop :=
  ∀ n, P17932164371646543905.a n = A037711 (n + 1)

end A037711

/-! ## A037711.P1666682830508948846

`A037767(n+1)+Δ[A037760(n+1)-A037788(n+1)]`
-/

namespace A037711.P1666682830508948846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) - A037788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037711.P1666682830508948846

namespace A037711

/-- `A037767(n+1)+Δ[A037760(n+1)-A037788(n+1)]` -/
def P1666682830508948846.Spec : Prop :=
  ∀ n, P1666682830508948846.a n = A037711 (n + 1)

end A037711

/-!
# A037712: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037712, the canonical program `A037712.P2492734325855298356` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037712 has offset 1).

The definition of A037712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037712.P2492734325855298356

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=1, a(1)=10, a(2)=72, a(3)=504`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037712

/-- `8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` -/
def P2492734325855298356.Spec : Prop :=
  ∀ n, P2492734325855298356.a n = A037712 (n + 1)

theorem P2492734325855298356.correct : P2492734325855298356.Spec := by
  intro n
  simp only [A037712, Nat.add_sub_cancel]

end A037712

/-! ## A037712.P17079347870178753926

`ogf((1+2x)/(1-8x+8x^2-8x^3+7x^4))`
-/

namespace A037712.P17079347870178753926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 8, -8, 7] n

end

end A037712.P17079347870178753926

namespace A037712

/-- `ogf((1+2x)/(1-8x+8x^2-8x^3+7x^4))` -/
def P17079347870178753926.Spec : Prop :=
  ∀ n, P17079347870178753926.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P1500008026874152352

`floor(A037677(n+2)/5)`
-/

namespace A037712.P1500008026874152352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037677 (n + 2) : ℚ) / 5⌋

end

end A037712.P1500008026874152352

namespace A037712

/-- `floor(A037677(n+2)/5)` -/
def P1500008026874152352.Spec : Prop :=
  ∀ n, P1500008026874152352.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P3007004343179833882

`A120741(n+1)-A037719(n+1)`
-/

namespace A037712.P3007004343179833882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037719 (n + 1)

end

end A037712.P3007004343179833882

namespace A037712

/-- `A120741(n+1)-A037719(n+1)` -/
def P3007004343179833882.Spec : Prop :=
  ∀ n, P3007004343179833882.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P7277534485911898498

`∑[A037789(n+1)-A037719(n+1)]`
-/

namespace A037712.P7277534485911898498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037789 (n + 1) - A037719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037712.P7277534485911898498

namespace A037712

/-- `∑[A037789(n+1)-A037719(n+1)]` -/
def P7277534485911898498.Spec : Prop :=
  ∀ n, P7277534485911898498.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P720346508661397395

`A037684(n+1)+A037747(n+1)-A037719(n+1)`
-/

namespace A037712.P720346508661397395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037719 (n + 1))

end

end A037712.P720346508661397395

namespace A037712

/-- `A037684(n+1)+A037747(n+1)-A037719(n+1)` -/
def P720346508661397395.Spec : Prop :=
  ∀ n, P720346508661397395.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P11595925249982109760

`A037705(n+1)+A037726(n+1)-A037719(n+1)`
-/

namespace A037712.P11595925249982109760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037719 (n + 1))

end

end A037712.P11595925249982109760

namespace A037712

/-- `A037705(n+1)+A037726(n+1)-A037719(n+1)` -/
def P11595925249982109760.Spec : Prop :=
  ∀ n, P11595925249982109760.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P15612828528730076121

`A037726(n+1)+A037747(n+1)-A037761(n+1)`
-/

namespace A037712.P15612828528730076121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037726 (n + 1) + (A037747 (n + 1) - A037761 (n + 1))

end

end A037712.P15612828528730076121

namespace A037712

/-- `A037726(n+1)+A037747(n+1)-A037761(n+1)` -/
def P15612828528730076121.Spec : Prop :=
  ∀ n, P15612828528730076121.a n = A037712 (n + 1)

end A037712

/-! ## A037712.P13695100982684114483

`A037698(n+1)+A037684(n+2)-A037677(n+2)`
-/

namespace A037712.P13695100982684114483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037698 (n + 1) + (A037684 (n + 2) - A037677 (n + 2))

end

end A037712.P13695100982684114483

namespace A037712

/-- `A037698(n+1)+A037684(n+2)-A037677(n+2)` -/
def P13695100982684114483.Spec : Prop :=
  ∀ n, P13695100982684114483.a n = A037712 (n + 1)

end A037712

/-!
# A037713: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037713, the canonical program `A037713.P3708458375653247780` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037713 has offset 1).

The definition of A037713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037713.P18308642478668122745

`ogf((1+2x)/(1-9x+9x^2-9x^3+8x^4))`
-/

namespace A037713.P18308642478668122745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -9, 9, -9, 8] n

end

end A037713.P18308642478668122745

namespace A037713

/-- `ogf((1+2x)/(1-9x+9x^2-9x^3+8x^4))` -/
def P18308642478668122745.Spec : Prop :=
  ∀ n, P18308642478668122745.a n = A037713 (n + 1)

end A037713

/-! ## A037713.P3708458375653247780

`xor(a(n-1), A037485(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037713

/-- `xor(a(n-1), A037485(n+1))` -/
def P3708458375653247780.Spec : Prop :=
  ∀ n, P3708458375653247780.a n = A037713 (n + 1)

theorem P3708458375653247780.correct : P3708458375653247780.Spec := by
  intro n
  simp only [A037713, Nat.add_sub_cancel]

end A037713

/-! ## A037713.P15767254616681182062

`xor(A037748(n+1), A037769(n+1))`
-/

namespace A037713.P15767254616681182062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037748 (n + 1)) (A037769 (n + 1))

end

end A037713.P15767254616681182062

namespace A037713

/-- `xor(A037748(n+1), A037769(n+1))` -/
def P15767254616681182062.Spec : Prop :=
  ∀ n, P15767254616681182062.a n = A037713 (n + 1)

end A037713

/-! ## A037713.P17227435860559914385

`∑[A037790(n+1)-A037720(n+1)]`
-/

namespace A037713.P17227435860559914385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037790 (n + 1) - A037720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037713.P17227435860559914385

namespace A037713

/-- `∑[A037790(n+1)-A037720(n+1)]` -/
def P17227435860559914385.Spec : Prop :=
  ∀ n, P17227435860559914385.a n = A037713 (n + 1)

end A037713

/-! ## A037713.P12290078398041714681

`xor(∑[2*A001018(n)], A037776(n+1))`
-/

namespace A037713.P12290078398041714681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037776 (n + 1))

end

end A037713.P12290078398041714681

namespace A037713

/-- `xor(∑[2*A001018(n)], A037776(n+1))` -/
def P12290078398041714681.Spec : Prop :=
  ∀ n, P12290078398041714681.a n = A037713 (n + 1)

end A037713

/-! ## A037713.P11980727168999777912

`floor(A078010(3*(n+2))/13)`
-/

namespace A037713.P11980727168999777912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078010 (3 * (n + 2)) : ℚ) / 13⌋

end

end A037713.P11980727168999777912

namespace A037713

/-- `floor(A078010(3*(n+2))/13)` -/
def P11980727168999777912.Spec : Prop :=
  ∀ n, P11980727168999777912.a n = A037713 (n + 1)

end A037713

/-! ## A037713.P7986916841531178046

`floor(A033138(3*n+5)/13)`
-/

namespace A037713.P7986916841531178046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033138 (3 * n + 5) : ℚ) / 13⌋

end

end A037713.P7986916841531178046

namespace A037713

/-- `floor(A033138(3*n+5)/13)` -/
def P7986916841531178046.Spec : Prop :=
  ∀ n, P7986916841531178046.a n = A037713 (n + 1)

end A037713

/-! ## A037713.P8682231914870018055

`floor(A077947(3*n+5)/13)`
-/

namespace A037713.P8682231914870018055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077947 (3 * n + 5) : ℚ) / 13⌋

end

end A037713.P8682231914870018055

namespace A037713

/-- `floor(A077947(3*n+5)/13)` -/
def P8682231914870018055.Spec : Prop :=
  ∀ n, P8682231914870018055.a n = A037713 (n + 1)

end A037713

/-!
# A037714: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037714, the canonical program `A037714.P2051866495972747522` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037714 has offset 1).

The definition of A037714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037714.P2051866495972747522

`10*a(n-1)-10*a(n-2)+10*a(n-3)-9*a(n-4)` with `a(0)=1, a(1)=12, a(2)=110, a(3)=990`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037714

/-- `10*a(n-1)-10*a(n-2)+10*a(n-3)-9*a(n-4)` -/
def P2051866495972747522.Spec : Prop :=
  ∀ n, P2051866495972747522.a n = A037714 (n + 1)

theorem P2051866495972747522.correct : P2051866495972747522.Spec := by
  intro n
  simp only [A037714, Nat.add_sub_cancel]

end A037714

/-! ## A037714.P14488057192639790064

`ogf((1+2x)/(1-10x+10x^2-10x^3+9x^4))`
-/

namespace A037714.P14488057192639790064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -10, 10, -10, 9] n

end

end A037714.P14488057192639790064

namespace A037714

/-- `ogf((1+2x)/(1-10x+10x^2-10x^3+9x^4))` -/
def P14488057192639790064.Spec : Prop :=
  ∀ n, P14488057192639790064.a n = A037714 (n + 1)

end A037714

/-! ## A037714.P9544291015215506873

`∑[xor(9*a(n-1), A000034(n))]` with `a(0)=1`
-/

namespace A037714.P9544291015215506873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037714.P9544291015215506873

namespace A037714

/-- `∑[xor(9*a(n-1), A000034(n))]` -/
def P9544291015215506873.Spec : Prop :=
  ∀ n, P9544291015215506873.a n = A037714 (n + 1)

end A037714

/-! ## A037714.P7021484306048753607

`∑[lcm(9, a(n-1))-A228826(n+1)]` with `a(0)=1`
-/

namespace A037714.P7021484306048753607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Int.lcm 9 (f1 (n - 1)) : ℤ) - A228826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037714.P7021484306048753607

namespace A037714

/-- `∑[lcm(9, a(n-1))-A228826(n+1)]` -/
def P7021484306048753607.Spec : Prop :=
  ∀ n, P7021484306048753607.a n = A037714 (n + 1)

end A037714

/-! ## A037714.P2625676298863325527

`A037693(n+1)+A037742(n+1)-A037721(n+1)`
-/

namespace A037714.P2625676298863325527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037693 (n + 1) + (A037742 (n + 1) - A037721 (n + 1))

end

end A037714.P2625676298863325527

namespace A037714

/-- `A037693(n+1)+A037742(n+1)-A037721(n+1)` -/
def P2625676298863325527.Spec : Prop :=
  ∀ n, P2625676298863325527.a n = A037714 (n + 1)

theorem P2625676298863325527.correct : P2625676298863325527.Spec := by
  intro n
  simp only [A037714, Nat.add_sub_cancel, A037714.P2625676298863325527.a, A037714.P2051866495972747522.a, A037693, A037693.P16096541330953735176.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037742, A037742.P4324914929506903484.a, A037735, A037735.P4958946619826733078.f1, A037735.P4958946619826733078.a, A037756, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037798, A037798.P5782112598674630615.a, A010684, A010684.P14019262024924378744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037714

/-! ## A037714.P3771047196070186563

`A037700(n+1)+A037735(n+1)-A037721(n+1)`
-/

namespace A037714.P3771047196070186563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037735 (n + 1) - A037721 (n + 1))

end

end A037714.P3771047196070186563

namespace A037714

/-- `A037700(n+1)+A037735(n+1)-A037721(n+1)` -/
def P3771047196070186563.Spec : Prop :=
  ∀ n, P3771047196070186563.a n = A037714 (n + 1)

end A037714

/-! ## A037714.P8675535791236490954

`A037707(n+1)+A037728(n+1)-A037721(n+1)`
-/

namespace A037714.P8675535791236490954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037728 (n + 1) - A037721 (n + 1))

end

end A037714.P8675535791236490954

namespace A037714

/-- `A037707(n+1)+A037728(n+1)-A037721(n+1)` -/
def P8675535791236490954.Spec : Prop :=
  ∀ n, P8675535791236490954.a n = A037714 (n + 1)

end A037714

/-! ## A037714.P7739592885741184047

`Δ[∑[A037770(n+1)]-A037798(n+1)]`
-/

namespace A037714.P7739592885741184047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037714.P7739592885741184047

namespace A037714

/-- `Δ[∑[A037770(n+1)]-A037798(n+1)]` -/
def P7739592885741184047.Spec : Prop :=
  ∀ n, P7739592885741184047.a n = A037714 (n + 1)

end A037714

/-!
# A037715: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 1,3,2,0.

The programs for A037715, the canonical program `A037715.P6538865440665011535` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037715 has offset 1).

The definition of A037715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037715.P14873552576932961412

`∑[ogf((1+2x)/(1-10x+x^2-10x^3))]`
-/

namespace A037715.P14873552576932961412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -10, 1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037715.P14873552576932961412

namespace A037715

/-- `∑[ogf((1+2x)/(1-10x+x^2-10x^3))]` -/
def P14873552576932961412.Spec : Prop :=
  ∀ n, P14873552576932961412.a n = A037715 (n + 1)

end A037715

/-! ## A037715.P6538865440665011535

`A097166(n)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037715

/-- `A097166(n)-a(n-2)` -/
def P6538865440665011535.Spec : Prop :=
  ∀ n, P6538865440665011535.a n = A037715 (n + 1)

theorem P6538865440665011535.correct : P6538865440665011535.Spec := by
  intro n
  simp only [A037715, Nat.add_sub_cancel]

end A037715

/-! ## A037715.P3949873883741968271

`A007090(A037709(n+1))`
-/

namespace A037715.P3949873883741968271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037709 (n + 1)).toNat

end

end A037715.P3949873883741968271

namespace A037715

/-- `A007090(A037709(n+1))` -/
def P3949873883741968271.Spec : Prop :=
  ∀ n, P3949873883741968271.a n = A037715 (n + 1)

end A037715

/-!
# A037716: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037716, the canonical program `A037716.P3278010532799000268` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037716 has offset 1).

The definition of A037716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037716.P3278010532799000268

`floor(9*4^(n+1)/17)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037716

/-- `floor(9*4^(n+1)/17)` -/
def P3278010532799000268.Spec : Prop :=
  ∀ n, P3278010532799000268.a n = A037716 (n + 1)

theorem P3278010532799000268.correct : P3278010532799000268.Spec := by
  intro n
  simp only [A037716, Nat.add_sub_cancel]

end A037716

/-! ## A037716.P610278092653186979

`ogf((2-2x+3x^2)/(1-5x+5x^2-5x^3+4x^4))`
-/

namespace A037716.P610278092653186979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 3] [1, -5, 5, -5, 4] n

end

end A037716.P610278092653186979

namespace A037716

/-- `ogf((2-2x+3x^2)/(1-5x+5x^2-5x^3+4x^4))` -/
def P610278092653186979.Spec : Prop :=
  ∀ n, P610278092653186979.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P5692785815817403300

`4*a(n-1)+3-a(n-2)%4` with `a(0)=2, a(1)=8`
-/

namespace A037716.P5692785815817403300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  4 * a (n - 1) + (3 - Int.tmod (a (n - 2)) 4)

end

end A037716.P5692785815817403300

namespace A037716

/-- `4*a(n-1)+3-a(n-2)%4` -/
def P5692785815817403300.Spec : Prop :=
  ∀ n, P5692785815817403300.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P6286164481626505516

`3-(and(3, a(n-2))-4*a(n-1))` with `a(0)=2, a(1)=8`
-/

namespace A037716.P6286164481626505516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  3 - (Int.land 3 (a (n - 2)) - 4 * a (n - 1))

end

end A037716.P6286164481626505516

namespace A037716

/-- `3-(and(3, a(n-2))-4*a(n-1))` -/
def P6286164481626505516.Spec : Prop :=
  ∀ n, P6286164481626505516.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P10168503015636807506

`∑[A164346(n)]-A037709(n+1)`
-/

namespace A037716.P10168503015636807506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037709 (n + 1)

end

end A037716.P10168503015636807506

namespace A037716

/-- `∑[A164346(n)]-A037709(n+1)` -/
def P10168503015636807506.Spec : Prop :=
  ∀ n, P10168503015636807506.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P8248742470749482259

`xor(A037681(n+1), A037765(n+1))`
-/

namespace A037716.P8248742470749482259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A037765 (n + 1))

end

end A037716.P8248742470749482259

namespace A037716

/-- `xor(A037681(n+1), A037765(n+1))` -/
def P8248742470749482259.Spec : Prop :=
  ∀ n, P8248742470749482259.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P5937183519893712700

`xor(A037688(n+1), A037793(n+1))`
-/

namespace A037716.P5937183519893712700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037688 (n + 1)) (A037793 (n + 1))

end

end A037716.P5937183519893712700

namespace A037716

/-- `xor(A037688(n+1), A037793(n+1))` -/
def P5937183519893712700.Spec : Prop :=
  ∀ n, P5937183519893712700.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P2294468175033932567

`xor(A037674(n+1), A043291(n+1))`
-/

namespace A037716.P2294468175033932567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037674 (n + 1)) (A043291 (n + 1))

end

end A037716.P2294468175033932567

namespace A037716

/-- `xor(A037674(n+1), A043291(n+1))` -/
def P2294468175033932567.Spec : Prop :=
  ∀ n, P2294468175033932567.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P16172020267631921475

`xor(∑[A000079(n)²], A037772(n+1))`
-/

namespace A037716.P16172020267631921475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037772 (n + 1))

end

end A037716.P16172020267631921475

namespace A037716

/-- `xor(∑[A000079(n)²], A037772(n+1))` -/
def P16172020267631921475.Spec : Prop :=
  ∀ n, P16172020267631921475.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P3998460721620428029

`xor(∑[A000079(2*n)], A037772(n+1))`
-/

namespace A037716.P3998460721620428029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037772 (n + 1))

end

end A037716.P3998460721620428029

namespace A037716

/-- `xor(∑[A000079(2*n)], A037772(n+1))` -/
def P3998460721620428029.Spec : Prop :=
  ∀ n, P3998460721620428029.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P1887034554614324516

`A000225(2*(n+1))-A224520(2*n+1)`
-/

namespace A037716.P1887034554614324516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * (n + 1)) - A224520 (2 * n + 1)

end

end A037716.P1887034554614324516

namespace A037716

/-- `A000225(2*(n+1))-A224520(2*n+1)` -/
def P1887034554614324516.Spec : Prop :=
  ∀ n, P1887034554614324516.a n = A037716 (n + 1)

end A037716

/-! ## A037716.P16633863878361985360

`A037709(n+3)-A002042(n+1)`
-/

namespace A037716.P16633863878361985360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037709 (n + 3) - A002042 (n + 1)

end

end A037716.P16633863878361985360

namespace A037716

/-- `A037709(n+3)-A002042(n+1)` -/
def P16633863878361985360.Spec : Prop :=
  ∀ n, P16633863878361985360.a n = A037716 (n + 1)

end A037716

/-!
# A037717: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037717, the canonical program `A037717.P184041688980154751` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037717 has offset 1).

The definition of A037717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037717.P11281649287548323827

`ogf((2-2x+3x^2)/(1-6x+6x^2-6x^3+5x^4))`
-/

namespace A037717.P11281649287548323827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 3] [1, -6, 6, -6, 5] n

end

end A037717.P11281649287548323827

namespace A037717

/-- `ogf((2-2x+3x^2)/(1-6x+6x^2-6x^3+5x^4))` -/
def P11281649287548323827.Spec : Prop :=
  ∀ n, P11281649287548323827.a n = A037717 (n + 1)

end A037717

/-! ## A037717.P184041688980154751

`∑[xor(5*a(n-1), gcd(2, n+1))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037717

/-- `∑[xor(5*a(n-1), gcd(2, n+1))]` -/
def P184041688980154751.Spec : Prop :=
  ∀ n, (P184041688980154751.a n : ℤ) = A037717 (n + 1)

theorem P184041688980154751.correct : P184041688980154751.Spec := by
  intro n
  simp only [A037717, Nat.add_sub_cancel]

end A037717

/-! ## A037717.P1980084751704693155

`∑[xor(5*a(n-1), A000034(n))]` with `a(0)=2`
-/

namespace A037717.P1980084751704693155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037717.P1980084751704693155

namespace A037717

/-- `∑[xor(5*a(n-1), A000034(n))]` -/
def P1980084751704693155.Spec : Prop :=
  ∀ n, P1980084751704693155.a n = A037717 (n + 1)

end A037717

/-! ## A037717.P17061388484880620271

`∑[xor(5*a(n-1), A000079(n)%3)]` with `a(0)=2`
-/

namespace A037717.P17061388484880620271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (Int.tmod (A000079 n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037717.P17061388484880620271

namespace A037717

/-- `∑[xor(5*a(n-1), A000079(n)%3)]` -/
def P17061388484880620271.Spec : Prop :=
  ∀ n, P17061388484880620271.a n = A037717 (n + 1)

end A037717

/-! ## A037717.P9389810195986840488

`5*a(n-1)-A000032(and(3, -n))+4` with `a(0)=2`
-/

namespace A037717.P9389810195986840488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - A000032 (Int.land 3 (-(n : ℤ))).toNat + 4

end

end A037717.P9389810195986840488

namespace A037717

/-- `5*a(n-1)-A000032(and(3, -n))+4` -/
def P9389810195986840488.Spec : Prop :=
  ∀ n, P9389810195986840488.a n = A037717 (n + 1)

end A037717

/-! ## A037717.P15104585512270224419

`∑[xor(5*a(n-1), A055881(3*n+1))]` with `a(0)=2`
-/

namespace A037717.P15104585512270224419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A055881 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037717.P15104585512270224419

namespace A037717

/-- `∑[xor(5*a(n-1), A055881(3*n+1))]` -/
def P15104585512270224419.Spec : Prop :=
  ∀ n, P15104585512270224419.a n = A037717 (n + 1)

end A037717

/-! ## A037717.P8201616501718374861

`A037703(n+1)+A037724(n+1)-A037710(n+1)`
-/

namespace A037717.P8201616501718374861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037703 (n + 1) + (A037724 (n + 1) - A037710 (n + 1))

end

end A037717.P8201616501718374861

namespace A037717

/-- `A037703(n+1)+A037724(n+1)-A037710(n+1)` -/
def P8201616501718374861.Spec : Prop :=
  ∀ n, P8201616501718374861.a n = A037717 (n + 1)

theorem P8201616501718374861.correct : P8201616501718374861.Spec := by
  intro n
  simp only [A037717, Nat.add_sub_cancel, A037717.P8201616501718374861.a, A037717.P184041688980154751.f1, A037717.P184041688980154751.a, A037703, A037703.P2210299010940210397.f1, A037703.P2210299010940210397.a, A037710, A037710.P6721493881183264277.a, A037724, A037724.P16418418988540140447.a, A176059, A176059.P3242393250982034900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037717

/-! ## A037717.P15376644012928449937

`A037710(n+3)%(5^(n+1))`
-/

namespace A037717.P15376644012928449937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037710 (n + 3)) (5 ^ (n + 1) : ℤ)

end

end A037717.P15376644012928449937

namespace A037717

/-- `A037710(n+3)%(5^(n+1))` -/
def P15376644012928449937.Spec : Prop :=
  ∀ n, P15376644012928449937.a n = A037717 (n + 1)

end A037717

/-!
# A037718: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037718, the canonical program `A037718.P5498483775677250731` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037718 has offset 1).

The definition of A037718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037718.P18262328731123382860

`∑[ogf((2-2x+3x^2)/(1-6x+x^2-6x^3))]`
-/

namespace A037718.P18262328731123382860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 3] [1, -6, 1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037718.P18262328731123382860

namespace A037718

/-- `∑[ogf((2-2x+3x^2)/(1-6x+x^2-6x^3))]` -/
def P18262328731123382860.Spec : Prop :=
  ∀ n, P18262328731123382860.a n = A037718 (n + 1)

end A037718

/-! ## A037718.P5498483775677250731

`A037690(n+1)+A037739(n+1)-A037711(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037718

/-- `A037690(n+1)+A037739(n+1)-A037711(n+1)` -/
def P5498483775677250731.Spec : Prop :=
  ∀ n, P5498483775677250731.a n = A037718 (n + 1)

theorem P5498483775677250731.correct : P5498483775677250731.Spec := by
  intro n
  simp only [A037718, Nat.add_sub_cancel]

end A037718

/-! ## A037718.P6178427326175363678

`A037704(n+1)+A037725(n+1)-A037711(n+1)`
-/

namespace A037718.P6178427326175363678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037704 (n + 1) + (A037725 (n + 1) - A037711 (n + 1))

end

end A037718.P6178427326175363678

namespace A037718

/-- `A037704(n+1)+A037725(n+1)-A037711(n+1)` -/
def P6178427326175363678.Spec : Prop :=
  ∀ n, P6178427326175363678.a n = A037718 (n + 1)

end A037718

/-!
# A037719: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037719, the canonical program `A037719.P11049252179318265615` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037719 has offset 1).

The definition of A037719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037719.P11049252179318265615

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=2, a(1)=14, a(2)=99, a(3)=696`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037719

/-- `8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` -/
def P11049252179318265615.Spec : Prop :=
  ∀ n, P11049252179318265615.a n = A037719 (n + 1)

theorem P11049252179318265615.correct : P11049252179318265615.Spec := by
  intro n
  simp only [A037719, Nat.add_sub_cancel]

end A037719

/-! ## A037719.P10120601539994003395

`A120741(n+1)-A037712(n+1)`
-/

namespace A037719.P10120601539994003395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037712 (n + 1)

end

end A037719.P10120601539994003395

namespace A037719

/-- `A120741(n+1)-A037712(n+1)` -/
def P10120601539994003395.Spec : Prop :=
  ∀ n, P10120601539994003395.a n = A037719 (n + 1)

end A037719

/-! ## A037719.P5318135587473992053

`A037684(n+1)+A037747(n+1)-A037712(n+1)`
-/

namespace A037719.P5318135587473992053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037712 (n + 1))

end

end A037719.P5318135587473992053

namespace A037719

/-- `A037684(n+1)+A037747(n+1)-A037712(n+1)` -/
def P5318135587473992053.Spec : Prop :=
  ∀ n, P5318135587473992053.a n = A037719 (n + 1)

end A037719

/-! ## A037719.P14422152926390062801

`A037705(n+1)+A037726(n+1)-A037712(n+1)`
-/

namespace A037719.P14422152926390062801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037712 (n + 1))

end

end A037719.P14422152926390062801

namespace A037719

/-- `A037705(n+1)+A037726(n+1)-A037712(n+1)` -/
def P14422152926390062801.Spec : Prop :=
  ∀ n, P14422152926390062801.a n = A037719 (n + 1)

end A037719

/-! ## A037719.P16098967207476655462

`A037677(n+1)+A037768(n+1)-A037726(n+1)`
-/

namespace A037719.P16098967207476655462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037768 (n + 1) - A037726 (n + 1))

end

end A037719.P16098967207476655462

namespace A037719

/-- `A037677(n+1)+A037768(n+1)-A037726(n+1)` -/
def P16098967207476655462.Spec : Prop :=
  ∀ n, P16098967207476655462.a n = A037719 (n + 1)

end A037719

/-! ## A037719.P1692128310851542774

`A037684(n+1)+A037761(n+1)-A037726(n+1)`
-/

namespace A037719.P1692128310851542774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037761 (n + 1) - A037726 (n + 1))

end

end A037719.P1692128310851542774

namespace A037719

/-- `A037684(n+1)+A037761(n+1)-A037726(n+1)` -/
def P1692128310851542774.Spec : Prop :=
  ∀ n, P1692128310851542774.a n = A037719 (n + 1)

theorem P1692128310851542774.correct : P1692128310851542774.Spec := by
  intro n
  simp only [A037719, Nat.add_sub_cancel, A037719.P1692128310851542774.a, A037719.P11049252179318265615.a, A037684, A037684.P14194998553466054021.a, A037726, A037726.P10810606024213061310.a, A037761, A037761.P7195593094420718256.a, A037705, A037705.P13871482217024803718.a, A037747, A037747.P6387786444260834050.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037719

/-! ## A037719.P16601778263684914676

`A037677(n+1)+A037782(n+1)-A037740(n+1)`
-/

namespace A037719.P16601778263684914676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037782 (n + 1) - A037740 (n + 1))

end

end A037719.P16601778263684914676

namespace A037719

/-- `A037677(n+1)+A037782(n+1)-A037740(n+1)` -/
def P16601778263684914676.Spec : Prop :=
  ∀ n, P16601778263684914676.a n = A037719 (n + 1)

end A037719

/-! ## A037719.P14578625005782417804

`A037705(n+1)+A037761(n+1)-A037747(n+1)`
-/

namespace A037719.P14578625005782417804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037761 (n + 1) - A037747 (n + 1))

end

end A037719.P14578625005782417804

namespace A037719

/-- `A037705(n+1)+A037761(n+1)-A037747(n+1)` -/
def P14578625005782417804.Spec : Prop :=
  ∀ n, P14578625005782417804.a n = A037719 (n + 1)

theorem P14578625005782417804.correct : P14578625005782417804.Spec := by
  intro n
  simp only [A037719, Nat.add_sub_cancel, A037719.P14578625005782417804.a, A037719.P11049252179318265615.a, A037705, A037705.P13871482217024803718.a, A037747, A037747.P6387786444260834050.a, A037761, A037761.P7195593094420718256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037719

/-!
# A037720: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037720, the canonical program `A037720.P6037356936432607553` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037720 has offset 1).

The definition of A037720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037720.P6037356936432607553

`xor(∑[A001018(n)], A037776(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037720

/-- `xor(∑[A001018(n)], A037776(n+1))` -/
def P6037356936432607553.Spec : Prop :=
  ∀ n, P6037356936432607553.a n = A037720 (n + 1)

theorem P6037356936432607553.correct : P6037356936432607553.Spec := by
  intro n
  simp only [A037720, Nat.add_sub_cancel]

end A037720

/-! ## A037720.P10572877252480851557

`xor(A037485(n+1), A037790(n+1))`
-/

namespace A037720.P10572877252480851557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037485 (n + 1)) (A037790 (n + 1))

end

end A037720.P10572877252480851557

namespace A037720

/-- `xor(A037485(n+1), A037790(n+1))` -/
def P10572877252480851557.Spec : Prop :=
  ∀ n, P10572877252480851557.a n = A037720 (n + 1)

end A037720

/-! ## A037720.P3756021664117438892

`xor(A037685(n+1), A037769(n+1))`
-/

namespace A037720.P3756021664117438892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037685 (n + 1)) (A037769 (n + 1))

end

end A037720.P3756021664117438892

namespace A037720

/-- `xor(A037685(n+1), A037769(n+1))` -/
def P3756021664117438892.Spec : Prop :=
  ∀ n, P3756021664117438892.a n = A037720 (n + 1)

end A037720

/-! ## A037720.P18134001228909560825

`xor(A037692(n+1), A037797(n+1))`
-/

namespace A037720.P18134001228909560825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037692 (n + 1)) (A037797 (n + 1))

end

end A037720.P18134001228909560825

namespace A037720

/-- `xor(A037692(n+1), A037797(n+1))` -/
def P18134001228909560825.Spec : Prop :=
  ∀ n, P18134001228909560825.a n = A037720 (n + 1)

end A037720

/-! ## A037720.P3989498066055041538

`A037692(n+1)+A037741(n+1)-A037713(n+1)`
-/

namespace A037720.P3989498066055041538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037692 (n + 1) + (A037741 (n + 1) - A037713 (n + 1))

end

end A037720.P3989498066055041538

namespace A037720

/-- `A037692(n+1)+A037741(n+1)-A037713(n+1)` -/
def P3989498066055041538.Spec : Prop :=
  ∀ n, P3989498066055041538.a n = A037720 (n + 1)

end A037720

/-! ## A037720.P1833233459926999804

`A037706(n+1)+A037727(n+1)-A037713(n+1)`
-/

namespace A037720.P1833233459926999804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037706 (n + 1) + (A037727 (n + 1) - A037713 (n + 1))

end

end A037720.P1833233459926999804

namespace A037720

/-- `A037706(n+1)+A037727(n+1)-A037713(n+1)` -/
def P1833233459926999804.Spec : Prop :=
  ∀ n, P1833233459926999804.a n = A037720 (n + 1)

end A037720

/-!
# A037721: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037721, the canonical program `A037721.P3815079518860697951` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037721 has offset 1).

The definition of A037721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037721.P3815079518860697951

`∑[xor(9*a(n-1), gcd(2, n+1))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037721

/-- `∑[xor(9*a(n-1), gcd(2, n+1))]` -/
def P3815079518860697951.Spec : Prop :=
  ∀ n, (P3815079518860697951.a n : ℤ) = A037721 (n + 1)

theorem P3815079518860697951.correct : P3815079518860697951.Spec := by
  intro n
  simp only [A037721, Nat.add_sub_cancel]

end A037721

/-! ## A037721.P14363640555685618486

`∑[xor(9*a(n-1), A000034(n))]` with `a(0)=2`
-/

namespace A037721.P14363640555685618486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037721.P14363640555685618486

namespace A037721

/-- `∑[xor(9*a(n-1), A000034(n))]` -/
def P14363640555685618486.Spec : Prop :=
  ∀ n, P14363640555685618486.a n = A037721 (n + 1)

end A037721

/-! ## A037721.P4568232283872117033

`A037700(n+1)+A037735(n+1)-A037714(n+1)`
-/

namespace A037721.P4568232283872117033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037735 (n + 1) - A037714 (n + 1))

end

end A037721.P4568232283872117033

namespace A037721

/-- `A037700(n+1)+A037735(n+1)-A037714(n+1)` -/
def P4568232283872117033.Spec : Prop :=
  ∀ n, P4568232283872117033.a n = A037721 (n + 1)

end A037721

/-! ## A037721.P17521134320572405667

`A037707(n+1)+A037728(n+1)-A037714(n+1)`
-/

namespace A037721.P17521134320572405667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037728 (n + 1) - A037714 (n + 1))

end

end A037721.P17521134320572405667

namespace A037721

/-- `A037707(n+1)+A037728(n+1)-A037714(n+1)` -/
def P17521134320572405667.Spec : Prop :=
  ∀ n, P17521134320572405667.a n = A037721 (n + 1)

end A037721

/-! ## A037721.P13607127221282953286

`A037707(n+1)+A037763(n+1)-A037749(n+1)`
-/

namespace A037721.P13607127221282953286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037763 (n + 1) - A037749 (n + 1))

end

end A037721.P13607127221282953286

namespace A037721

/-- `A037707(n+1)+A037763(n+1)-A037749(n+1)` -/
def P13607127221282953286.Spec : Prop :=
  ∀ n, P13607127221282953286.a n = A037721 (n + 1)

theorem P13607127221282953286.correct : P13607127221282953286.Spec := by
  intro n
  simp only [A037721, Nat.add_sub_cancel, A037721.P13607127221282953286.a, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037707, A037707.P11521697123880163545.a, A037749, A037749.P432838538654619278.a, A037763, A037763.P18333106692901934060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037721

/-!
# A037722: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,0,1,3.

The programs for A037722, there is no canonical definition to state claims against.
-/

/-! ## A037722.P9715256442414669080

`A007090(A037716(n+1))`
-/

namespace A037722.P9715256442414669080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037716 (n + 1)).toNat

end

end A037722.P9715256442414669080

/-! ## A037722.P14369202564239677889

`A256304(A037702(n+1))`
-/

namespace A037722.P14369202564239677889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A037702 (n + 1)).toNat

end

end A037722.P14369202564239677889

/-!
# A037723: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037723, the canonical program `A037723.P16423035490756807643` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037723 has offset 1).

The definition of A037723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037723.P16423035490756807643

`xor(or(3, a(n-1))+3*a(n-1), and(1, n))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037723

/-- `xor(or(3, a(n-1))+3*a(n-1), and(1, n))` -/
def P16423035490756807643.Spec : Prop :=
  ∀ n, (P16423035490756807643.a n : ℤ) = A037723 (n + 1)

theorem P16423035490756807643.correct : P16423035490756807643.Spec := by
  intro n
  simp only [A037723, Nat.add_sub_cancel]

end A037723

/-! ## A037723.P14133564713215327981

`xor(floor(5*4^(n+1)/17), A037758(n+1))`
-/

namespace A037723.P14133564713215327981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊5 * ((4 ^ (n + 1) : ℚ) / 17)⌋ (A037758 (n + 1))

end

end A037723.P14133564713215327981

namespace A037723

/-- `xor(floor(5*4^(n+1)/17), A037758(n+1))` -/
def P14133564713215327981.Spec : Prop :=
  ∀ n, P14133564713215327981.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P7048902942025088156

`∑[A164346(n)]-A037702(n+1)`
-/

namespace A037723.P7048902942025088156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037702 (n + 1)

end

end A037723.P7048902942025088156

namespace A037723

/-- `∑[A164346(n)]-A037702(n+1)` -/
def P7048902942025088156.Spec : Prop :=
  ∀ n, P7048902942025088156.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P16406223610645401064

`xor(A033114(n+1), A037765(n+1))`
-/

namespace A037723.P16406223610645401064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033114 (n + 1)) (A037765 (n + 1))

end

end A037723.P16406223610645401064

namespace A037723

/-- `xor(A033114(n+1), A037765(n+1))` -/
def P16406223610645401064.Spec : Prop :=
  ∀ n, P16406223610645401064.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P10353285864273563785

`xor(A037695(n+1), A037786(n+1))`
-/

namespace A037723.P10353285864273563785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A037786 (n + 1))

end

end A037723.P10353285864273563785

namespace A037723

/-- `xor(A037695(n+1), A037786(n+1))` -/
def P10353285864273563785.Spec : Prop :=
  ∀ n, P10353285864273563785.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P4117170591283660442

`xor(A037765(n+1), A283216(2*n))`
-/

namespace A037723.P4117170591283660442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037765 (n + 1)) (A283216 (2 * n))

end

end A037723.P4117170591283660442

namespace A037723

/-- `xor(A037765(n+1), A283216(2*n))` -/
def P4117170591283660442.Spec : Prop :=
  ∀ n, P4117170591283660442.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P6340334840331708736

`A286675(2*n+1)-A037702(n+1)`
-/

namespace A037723.P6340334840331708736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286675 (2 * n + 1) - A037702 (n + 1)

end

end A037723.P6340334840331708736

namespace A037723

/-- `A286675(2*n+1)-A037702(n+1)` -/
def P6340334840331708736.Spec : Prop :=
  ∀ n, P6340334840331708736.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P4439114359586440098

`xor(A001045(2*(n+1)), A037779(n+1))`
-/

namespace A037723.P4439114359586440098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001045 (2 * (n + 1))) (A037779 (n + 1))

end

end A037723.P4439114359586440098

namespace A037723

/-- `xor(A001045(2*(n+1)), A037779(n+1))` -/
def P4439114359586440098.Spec : Prop :=
  ∀ n, P4439114359586440098.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P6220717432707661787

`xor(A037688(n+1), A281216(2*n+1))`
-/

namespace A037723.P6220717432707661787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037688 (n + 1)) (A281216 (2 * n + 1))

end

end A037723.P6220717432707661787

namespace A037723

/-- `xor(A037688(n+1), A281216(2*n+1))` -/
def P6220717432707661787.Spec : Prop :=
  ∀ n, P6220717432707661787.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P12891635258810614496

`A164346(n+1)-(A037737(n+2)+1)`
-/

namespace A037723.P12891635258810614496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 (n + 1) - (A037737 (n + 2) + 1)

end

end A037723.P12891635258810614496

namespace A037723

/-- `A164346(n+1)-(A037737(n+2)+1)` -/
def P12891635258810614496.Spec : Prop :=
  ∀ n, P12891635258810614496.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P15759791905446862241

`A037688(n+2)-(A126646(2*n+1)+1)`
-/

namespace A037723.P15759791905446862241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037688 (n + 2) - (A126646 (2 * n + 1) + 1)

end

end A037723.P15759791905446862241

namespace A037723

/-- `A037688(n+2)-(A126646(2*n+1)+1)` -/
def P15759791905446862241.Spec : Prop :=
  ∀ n, P15759791905446862241.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P18347009509241992466

`A037618(n+1)+A037688(n+2)-A378497(n+2)`
-/

namespace A037723.P18347009509241992466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037618 (n + 1) + (A037688 (n + 2) - A378497 (n + 2))

end

end A037723.P18347009509241992466

namespace A037723

/-- `A037618(n+1)+A037688(n+2)-A378497(n+2)` -/
def P18347009509241992466.Spec : Prop :=
  ∀ n, P18347009509241992466.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P4696367677189884428

`A037667(n+1)+A037688(n+2)-A378502(n+2)`
-/

namespace A037723.P4696367677189884428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037667 (n + 1) + (A037688 (n + 2) - A378502 (n + 2))

end

end A037723.P4696367677189884428

namespace A037723

/-- `A037667(n+1)+A037688(n+2)-A378502(n+2)` -/
def P4696367677189884428.Spec : Prop :=
  ∀ n, P4696367677189884428.a n = A037723 (n + 1)

end A037723

/-! ## A037723.P17426355846273349015

`A037688(n+2)+A378499(n+2)-A037618(n+2)`
-/

namespace A037723.P17426355846273349015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037688 (n + 2) + (A378499 (n + 2) - A037618 (n + 2))

end

end A037723.P17426355846273349015

namespace A037723

/-- `A037688(n+2)+A378499(n+2)-A037618(n+2)` -/
def P17426355846273349015.Spec : Prop :=
  ∀ n, P17426355846273349015.a n = A037723 (n + 1)

end A037723

/-!
# A037724: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037724, the canonical program `A037724.P16418418988540140447` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037724 has offset 1).

The definition of A037724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037724.P7687456643649904652

`∑[xor(5*a(n-1), A020639(3*(n+1)))]` with `a(0)=2`
-/

namespace A037724.P7687456643649904652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A020639 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037724.P7687456643649904652

namespace A037724

/-- `∑[xor(5*a(n-1), A020639(3*(n+1)))]` -/
def P7687456643649904652.Spec : Prop :=
  ∀ n, P7687456643649904652.a n = A037724 (n + 1)

end A037724

/-! ## A037724.P6459203093983606482

`A037490(n+1)+A037717(n+1)-A037731(n+1)`
-/

namespace A037724.P6459203093983606482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037490 (n + 1) + (A037717 (n + 1) - A037731 (n + 1))

end

end A037724.P6459203093983606482

namespace A037724

/-- `A037490(n+1)+A037717(n+1)-A037731(n+1)` -/
def P6459203093983606482.Spec : Prop :=
  ∀ n, P6459203093983606482.a n = A037724 (n + 1)

end A037724

/-! ## A037724.P16418418988540140447

`A037710(n+1)+A037717(n+1)-A037703(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037724

/-- `A037710(n+1)+A037717(n+1)-A037703(n+1)` -/
def P16418418988540140447.Spec : Prop :=
  ∀ n, P16418418988540140447.a n = A037724 (n + 1)

theorem P16418418988540140447.correct : P16418418988540140447.Spec := by
  intro n
  simp only [A037724, Nat.add_sub_cancel]

end A037724

/-! ## A037724.P15012151270774505421

`A037738(n+1)+A037766(n+1)-A037780(n+1)`
-/

namespace A037724.P15012151270774505421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037738 (n + 1) + (A037766 (n + 1) - A037780 (n + 1))

end

end A037724.P15012151270774505421

namespace A037724

/-- `A037738(n+1)+A037766(n+1)-A037780(n+1)` -/
def P15012151270774505421.Spec : Prop :=
  ∀ n, P15012151270774505421.a n = A037724 (n + 1)

end A037724

/-! ## A037724.P15369701689887090199

`A037738(n+1)+A037773(n+1)-A037787(n+1)`
-/

namespace A037724.P15369701689887090199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037738 (n + 1) + (A037773 (n + 1) - A037787 (n + 1))

end

end A037724.P15369701689887090199

namespace A037724

/-- `A037738(n+1)+A037773(n+1)-A037787(n+1)` -/
def P15369701689887090199.Spec : Prop :=
  ∀ n, P15369701689887090199.a n = A037724 (n + 1)

end A037724

/-!
# A037725: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037725, the canonical program `A037725.P325807203560056917` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037725 has offset 1).

The definition of A037725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037725.P325807203560056917

`xor(1, or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037725

/-- `xor(1, or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1))` -/
def P325807203560056917.Spec : Prop :=
  ∀ n, (P325807203560056917.a n : ℤ) = A037725 (n + 1)

theorem P325807203560056917.correct : P325807203560056917.Spec := by
  intro n
  simp only [A037725, Nat.add_sub_cancel]

end A037725

/-! ## A037725.P17784596017165852212

`a(n-1)-(A037767(n)-A037739(n+1))` with `a(0)=2`
-/

namespace A037725.P17784596017165852212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (A037767 n - A037739 (n + 1))

end

end A037725.P17784596017165852212

namespace A037725

/-- `a(n-1)-(A037767(n)-A037739(n+1))` -/
def P17784596017165852212.Spec : Prop :=
  ∀ n, P17784596017165852212.a n = A037725 (n + 1)

end A037725

/-! ## A037725.P17558480802999859422

`A037711(n+1)+A037718(n+1)-A037704(n+1)`
-/

namespace A037725.P17558480802999859422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037704 (n + 1))

end

end A037725.P17558480802999859422

namespace A037725

/-- `A037711(n+1)+A037718(n+1)-A037704(n+1)` -/
def P17558480802999859422.Spec : Prop :=
  ∀ n, P17558480802999859422.a n = A037725 (n + 1)

end A037725

/-! ## A037725.P1962777535395977443

`A037690(n+2)-A000400(n+1)`
-/

namespace A037725.P1962777535395977443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 2) - A000400 (n + 1)

end

end A037725.P1962777535395977443

namespace A037725

/-- `A037690(n+2)-A000400(n+1)` -/
def P1962777535395977443.Spec : Prop :=
  ∀ n, P1962777535395977443.a n = A037725 (n + 1)

end A037725

/-! ## A037725.P12061139220187444993

`A037767(n+1)+∑[A037739(n+1)-A037767(n+1)]`
-/

namespace A037725.P12061139220187444993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037739 (n + 1) - A037767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037725.P12061139220187444993

namespace A037725

/-- `A037767(n+1)+∑[A037739(n+1)-A037767(n+1)]` -/
def P12061139220187444993.Spec : Prop :=
  ∀ n, P12061139220187444993.a n = A037725 (n + 1)

end A037725

/-!
# A037726: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037726, the canonical program `A037726.P10810606024213061310` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037726 has offset 1).

The definition of A037726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037726.P10810606024213061310

`A120741(n+1)-A037705(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037726

/-- `A120741(n+1)-A037705(n+1)` -/
def P10810606024213061310.Spec : Prop :=
  ∀ n, P10810606024213061310.a n = A037726 (n + 1)

theorem P10810606024213061310.correct : P10810606024213061310.Spec := by
  intro n
  simp only [A037726, Nat.add_sub_cancel]

end A037726

/-! ## A037726.P16012463052424378009

`A037691(n+2)-(A024075(n+1)+1)`
-/

namespace A037726.P16012463052424378009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037691 (n + 2) - (A024075 (n + 1) + 1)

end

end A037726.P16012463052424378009

namespace A037726

/-- `A037691(n+2)-(A024075(n+1)+1)` -/
def P16012463052424378009.Spec : Prop :=
  ∀ n, P16012463052424378009.a n = A037726 (n + 1)

end A037726

/-! ## A037726.P8675097740528566832

`A037677(n+1)+A037754(n+1)-A037705(n+1)`
-/

namespace A037726.P8675097740528566832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037754 (n + 1) - A037705 (n + 1))

end

end A037726.P8675097740528566832

namespace A037726

/-- `A037677(n+1)+A037754(n+1)-A037705(n+1)` -/
def P8675097740528566832.Spec : Prop :=
  ∀ n, P8675097740528566832.a n = A037726 (n + 1)

end A037726

/-! ## A037726.P9232225534811256394

`A037684(n+1)+A037747(n+1)-A037705(n+1)`
-/

namespace A037726.P9232225534811256394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037705 (n + 1))

end

end A037726.P9232225534811256394

namespace A037726

/-- `A037684(n+1)+A037747(n+1)-A037705(n+1)` -/
def P9232225534811256394.Spec : Prop :=
  ∀ n, P9232225534811256394.a n = A037726 (n + 1)

theorem P9232225534811256394.correct : P9232225534811256394.Spec := by
  intro n
  simp only [A037726, Nat.add_sub_cancel, A037726.P9232225534811256394.a, A037726.P10810606024213061310.a, A037684, A037684.P14194998553466054021.a, A037705, A037705.P13871482217024803718.a, A037747, A037747.P6387786444260834050.a, A120741, A120741.P5110243079029674494.a, A037719, A037719.P11049252179318265615.a, A037761, A037761.P7195593094420718256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037726

/-! ## A037726.P15366319220920034472

`A037698(n+1)+A037733(n+1)-A037705(n+1)`
-/

namespace A037726.P15366319220920034472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037698 (n + 1) + (A037733 (n + 1) - A037705 (n + 1))

end

end A037726.P15366319220920034472

namespace A037726

/-- `A037698(n+1)+A037733(n+1)-A037705(n+1)` -/
def P15366319220920034472.Spec : Prop :=
  ∀ n, P15366319220920034472.a n = A037726 (n + 1)

end A037726

/-! ## A037726.P13940481295441306331

`A037712(n+1)+A037719(n+1)-A037705(n+1)`
-/

namespace A037726.P13940481295441306331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037719 (n + 1) - A037705 (n + 1))

end

end A037726.P13940481295441306331

namespace A037726

/-- `A037712(n+1)+A037719(n+1)-A037705(n+1)` -/
def P13940481295441306331.Spec : Prop :=
  ∀ n, P13940481295441306331.a n = A037726 (n + 1)

end A037726

/-! ## A037726.P7104625582385844338

`A037740(n+1)+A037768(n+1)-A037782(n+1)`
-/

namespace A037726.P7104625582385844338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037740 (n + 1) + (A037768 (n + 1) - A037782 (n + 1))

end

end A037726.P7104625582385844338

namespace A037726

/-- `A037740(n+1)+A037768(n+1)-A037782(n+1)` -/
def P7104625582385844338.Spec : Prop :=
  ∀ n, P7104625582385844338.a n = A037726 (n + 1)

end A037726

/-!
# A037727: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037727, the canonical program `A037727.P2649564992157234344` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037727 has offset 1).

The definition of A037727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037727.P2649564992157234344

`xor(∑[A001018(n)], A037783(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037727

/-- `xor(∑[A001018(n)], A037783(n+1))` -/
def P2649564992157234344.Spec : Prop :=
  ∀ n, P2649564992157234344.a n = A037727 (n + 1)

theorem P2649564992157234344.correct : P2649564992157234344.Spec := by
  intro n
  simp only [A037727, Nat.add_sub_cancel]

end A037727

/-! ## A037727.P6809315601005894920

`xor(A037699(n+1), A037790(n+1))`
-/

namespace A037727.P6809315601005894920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037699 (n + 1)) (A037790 (n + 1))

end

end A037727.P6809315601005894920

namespace A037727

/-- `xor(A037699(n+1), A037790(n+1))` -/
def P6809315601005894920.Spec : Prop :=
  ∀ n, P6809315601005894920.a n = A037727 (n + 1)

end A037727

/-! ## A037727.P16784276413060798981

`xor(A037769(n+1), A195904(A016777(n)))`
-/

namespace A037727.P16784276413060798981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037769 (n + 1)) (A195904 (A016777 n).toNat)

end

end A037727.P16784276413060798981

namespace A037727

/-- `xor(A037769(n+1), A195904(A016777(n)))` -/
def P16784276413060798981.Spec : Prop :=
  ∀ n, P16784276413060798981.a n = A037727 (n + 1)

end A037727

/-! ## A037727.P18007259026451037156

`A037713(n+1)+A037720(n+1)-A037706(n+1)`
-/

namespace A037727.P18007259026451037156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1) + (A037720 (n + 1) - A037706 (n + 1))

end

end A037727.P18007259026451037156

namespace A037727

/-- `A037713(n+1)+A037720(n+1)-A037706(n+1)` -/
def P18007259026451037156.Spec : Prop :=
  ∀ n, P18007259026451037156.a n = A037727 (n + 1)

end A037727

/-! ## A037727.P4261131583041739084

`A037741(n+1)+A037769(n+1)-A037783(n+1)`
-/

namespace A037727.P4261131583041739084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037741 (n + 1) + (A037769 (n + 1) - A037783 (n + 1))

end

end A037727.P4261131583041739084

namespace A037727

/-- `A037741(n+1)+A037769(n+1)-A037783(n+1)` -/
def P4261131583041739084.Spec : Prop :=
  ∀ n, P4261131583041739084.a n = A037727 (n + 1)

end A037727

/-!
# A037728: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037728, the canonical program `A037728.P13868725644727566183` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037728 has offset 1).

The definition of A037728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037728.P13868725644727566183

`∑[A013708(n)]-A037707(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037728

/-- `∑[A013708(n)]-A037707(n+1)` -/
def P13868725644727566183.Spec : Prop :=
  ∀ n, P13868725644727566183.a n = A037728 (n + 1)

theorem P13868725644727566183.correct : P13868725644727566183.Spec := by
  intro n
  simp only [A037728, Nat.add_sub_cancel]

end A037728

/-! ## A037728.P8848678243888750694

`A037700(n+1)+A037735(n+1)-A037707(n+1)`
-/

namespace A037728.P8848678243888750694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1) + (A037735 (n + 1) - A037707 (n + 1))

end

end A037728.P8848678243888750694

namespace A037728

/-- `A037700(n+1)+A037735(n+1)-A037707(n+1)` -/
def P8848678243888750694.Spec : Prop :=
  ∀ n, P8848678243888750694.a n = A037728 (n + 1)

end A037728

/-! ## A037728.P16385096055553998621

`A037714(n+1)+A037721(n+1)-A037707(n+1)`
-/

namespace A037728.P16385096055553998621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037707 (n + 1))

end

end A037728.P16385096055553998621

namespace A037728

/-- `A037714(n+1)+A037721(n+1)-A037707(n+1)` -/
def P16385096055553998621.Spec : Prop :=
  ∀ n, P16385096055553998621.a n = A037728 (n + 1)

end A037728

/-! ## A037728.P7052538716137501207

`A037714(n+1)+A037763(n+1)-A037749(n+1)`
-/

namespace A037728.P7052538716137501207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037763 (n + 1) - A037749 (n + 1))

end

end A037728.P7052538716137501207

namespace A037728

/-- `A037714(n+1)+A037763(n+1)-A037749(n+1)` -/
def P7052538716137501207.Spec : Prop :=
  ∀ n, P7052538716137501207.a n = A037728 (n + 1)

end A037728

/-! ## A037728.P7913986072973093892

`A037770(n+1)+∑[A037742(n+1)-A037770(n+1)]`
-/

namespace A037728.P7913986072973093892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037742 (n + 1) - A037770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037728.P7913986072973093892

namespace A037728

/-- `A037770(n+1)+∑[A037742(n+1)-A037770(n+1)]` -/
def P7913986072973093892.Spec : Prop :=
  ∀ n, P7913986072973093892.a n = A037728 (n + 1)

end A037728

/-!
# A037729: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,0,3,1.

The programs for A037729, there is no canonical definition to state claims against.
-/

/-! ## A037729.P820805134979746880

`A007090(A037723(n+1))`
-/

namespace A037729.P820805134979746880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037723 (n + 1)).toNat

end

end A037729.P820805134979746880

/-! ## A037729.P11012775138739054012

`A256304(A037709(n+1))`
-/

namespace A037729.P11012775138739054012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A037709 (n + 1)).toNat

end

end A037729.P11012775138739054012

/-!
# A037730: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037730, the canonical program `A037730.P5804343078596764074` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037730 has offset 1).

The definition of A037730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037730.P5804343078596764074

`and(3, 2-n)+4*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037730

/-- `and(3, 2-n)+4*a(n-1)` -/
def P5804343078596764074.Spec : Prop :=
  ∀ n, P5804343078596764074.a n = A037730 (n + 1)

theorem P5804343078596764074.correct : P5804343078596764074.Spec := by
  intro n
  simp only [A037730, Nat.add_sub_cancel]

end A037730

/-! ## A037730.P7545952429801538998

`or(4*a(n-1), and(3, 2-n))` with `a(0)=2`
-/

namespace A037730.P7545952429801538998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (4 * a (n - 1)) (Int.land 3 (2 - (n : ℤ)))

end

end A037730.P7545952429801538998

namespace A037730

/-- `or(4*a(n-1), and(3, 2-n))` -/
def P7545952429801538998.Spec : Prop :=
  ∀ n, P7545952429801538998.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P11821575305937525390

`xor(4*a(n-1), and(3, 2-n))` with `a(0)=2`
-/

namespace A037730.P11821575305937525390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (4 * a (n - 1)) (Int.land 3 (2 - (n : ℤ)))

end

end A037730.P11821575305937525390

namespace A037730

/-- `xor(4*a(n-1), and(3, 2-n))` -/
def P11821575305937525390.Spec : Prop :=
  ∀ n, P11821575305937525390.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P16284681563639495167

`a(n-1)+or(3, 3*a(n-1))` with `a(0)=2`
-/

namespace A037730.P16284681563639495167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.lor 3 (3 * a (n - 1))

end

end A037730.P16284681563639495167

namespace A037730

/-- `a(n-1)+or(3, 3*a(n-1))` -/
def P16284681563639495167.Spec : Prop :=
  ∀ n, (P16284681563639495167.a n : ℤ) = A037730 (n + 1)

end A037730

/-! ## A037730.P7330066472403179145

`(a(n-1)-1)%4+4*a(n-1)` with `a(0)=2`
-/

namespace A037730.P7330066472403179145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (a (n - 1) - 1) 4 + 4 * a (n - 1)

end

end A037730.P7330066472403179145

namespace A037730

/-- `(a(n-1)-1)%4+4*a(n-1)` -/
def P7330066472403179145.Spec : Prop :=
  ∀ n, P7330066472403179145.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P13400025109589433579

`4*a(n-1)-(1-a(n-1))%4` with `a(0)=2`
-/

namespace A037730.P13400025109589433579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - Int.tmod (1 - a (n - 1)) 4

end

end A037730.P13400025109589433579

namespace A037730

/-- `4*a(n-1)-(1-a(n-1))%4` -/
def P13400025109589433579.Spec : Prop :=
  ∀ n, P13400025109589433579.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P17000797197439219327

`xor(A037744(n+1), A117616(n))`
-/

namespace A037730.P17000797197439219327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037744 (n + 1)) (A117616 n)

end

end A037730.P17000797197439219327

namespace A037730

/-- `xor(A037744(n+1), A117616(n))` -/
def P17000797197439219327.Spec : Prop :=
  ∀ n, P17000797197439219327.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P1956263754905444856

`xor(A037583(n+1), A037681(n+1))`
-/

namespace A037730.P1956263754905444856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037583 (n + 1)) (A037681 (n + 1))

end

end A037730.P1956263754905444856

namespace A037730

/-- `xor(A037583(n+1), A037681(n+1))` -/
def P1956263754905444856.Spec : Prop :=
  ∀ n, P1956263754905444856.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P8528250409606990892

`xor(A037576(n+1), A037793(n+1))`
-/

namespace A037730.P8528250409606990892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037576 (n + 1)) (A037793 (n + 1))

end

end A037730.P8528250409606990892

namespace A037730

/-- `xor(A037576(n+1), A037793(n+1))` -/
def P8528250409606990892.Spec : Prop :=
  ∀ n, P8528250409606990892.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P17654148607520503076

`xor(A037674(n+1), A037779(n+1))`
-/

namespace A037730.P17654148607520503076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037674 (n + 1)) (A037779 (n + 1))

end

end A037730.P17654148607520503076

namespace A037730

/-- `xor(A037674(n+1), A037779(n+1))` -/
def P17654148607520503076.Spec : Prop :=
  ∀ n, P17654148607520503076.a n = A037730 (n + 1)

end A037730

/-! ## A037730.P12312265302394919411

`xor(A037702(n+1), A037786(n+1))`
-/

namespace A037730.P12312265302394919411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037702 (n + 1)) (A037786 (n + 1))

end

end A037730.P12312265302394919411

namespace A037730

/-- `xor(A037702(n+1), A037786(n+1))` -/
def P12312265302394919411.Spec : Prop :=
  ∀ n, P12312265302394919411.a n = A037730 (n + 1)

end A037730

/-!
# A037731: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037731, the canonical program `A037731.P3257654858875520102` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037731 has offset 1).

The definition of A037731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037731.P3257654858875520102

`and(3, 2-n)+5*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037731

/-- `and(3, 2-n)+5*a(n-1)` -/
def P3257654858875520102.Spec : Prop :=
  ∀ n, P3257654858875520102.a n = A037731 (n + 1)

theorem P3257654858875520102.correct : P3257654858875520102.Spec := by
  intro n
  simp only [A037731, Nat.add_sub_cancel]

end A037731

/-! ## A037731.P16734093663767163226

`5*a(n-1)+3-(n+1)%4` with `a(0)=2`
-/

namespace A037731.P16734093663767163226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) + (3 - (((n + 1) % 4 : ℕ) : ℤ))

end

end A037731.P16734093663767163226

namespace A037731

/-- `5*a(n-1)+3-(n+1)%4` -/
def P16734093663767163226.Spec : Prop :=
  ∀ n, P16734093663767163226.a n = A037731 (n + 1)

end A037731

/-! ## A037731.P2388932619370808601

`∑[xor(5*a(n-1), A010684(n))]` with `a(0)=2`
-/

namespace A037731.P2388932619370808601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010684 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037731.P2388932619370808601

namespace A037731

/-- `∑[xor(5*a(n-1), A010684(n))]` -/
def P2388932619370808601.Spec : Prop :=
  ∀ n, P2388932619370808601.a n = A037731 (n + 1)

end A037731

/-! ## A037731.P1796771088691120753

`∑[xor(5*a(n-1), A005408(n)%4)]` with `a(0)=2`
-/

namespace A037731.P1796771088691120753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (Int.tmod (A005408 n) 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037731.P1796771088691120753

namespace A037731

/-- `∑[xor(5*a(n-1), A005408(n)%4)]` -/
def P1796771088691120753.Spec : Prop :=
  ∀ n, P1796771088691120753.a n = A037731 (n + 1)

end A037731

/-! ## A037731.P15255028285206953201

`∑[xor(5*a(n-1), A010873(2*n+1))]` with `a(0)=2`
-/

namespace A037731.P15255028285206953201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A010873 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037731.P15255028285206953201

namespace A037731

/-- `∑[xor(5*a(n-1), A010873(2*n+1))]` -/
def P15255028285206953201.Spec : Prop :=
  ∀ n, P15255028285206953201.a n = A037731 (n + 1)

end A037731

/-! ## A037731.P15614371521580417304

`A037703(n+1)+A037724(n+1)-A037696(n+1)`
-/

namespace A037731.P15614371521580417304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037703 (n + 1) + (A037724 (n + 1) - A037696 (n + 1))

end

end A037731.P15614371521580417304

namespace A037731

/-- `A037703(n+1)+A037724(n+1)-A037696(n+1)` -/
def P15614371521580417304.Spec : Prop :=
  ∀ n, P15614371521580417304.a n = A037731 (n + 1)

end A037731

/-! ## A037731.P9328410312630451109

`A037710(n+1)+A037717(n+1)-A037696(n+1)`
-/

namespace A037731.P9328410312630451109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037710 (n + 1) + (A037717 (n + 1) - A037696 (n + 1))

end

end A037731.P9328410312630451109

namespace A037731

/-- `A037710(n+1)+A037717(n+1)-A037696(n+1)` -/
def P9328410312630451109.Spec : Prop :=
  ∀ n, P9328410312630451109.a n = A037731 (n + 1)

end A037731

/-!
# A037732: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037732, the canonical program `A037732.P10816121770740865779` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037732 has offset 1).

The definition of A037732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037732.P10816121770740865779

`and(3, 2-n)+6*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037732

/-- `and(3, 2-n)+6*a(n-1)` -/
def P10816121770740865779.Spec : Prop :=
  ∀ n, P10816121770740865779.a n = A037732 (n + 1)

theorem P10816121770740865779.correct : P10816121770740865779.Spec := by
  intro n
  simp only [A037732, Nat.add_sub_cancel]

end A037732

/-! ## A037732.P13013197858905514030

`xor(1, 6*a(n-1)-(1-n)%4)` with `a(0)=2`
-/

namespace A037732.P13013197858905514030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 1 (6 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 4)

end

end A037732.P13013197858905514030

namespace A037732

/-- `xor(1, 6*a(n-1)-(1-n)%4)` -/
def P13013197858905514030.Spec : Prop :=
  ∀ n, P13013197858905514030.a n = A037732 (n + 1)

end A037732

/-! ## A037732.P3639624586786800138

`A016789(n)%4+6*a(n-1)` with `a(0)=2`
-/

namespace A037732.P3639624586786800138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A016789 n) 4 + 6 * a (n - 1)

end

end A037732.P3639624586786800138

namespace A037732

/-- `A016789(n)%4+6*a(n-1)` -/
def P3639624586786800138.Spec : Prop :=
  ∀ n, P3639624586786800138.a n = A037732 (n + 1)

end A037732

/-! ## A037732.P12425041900318476955

`A037704(n+1)+A037725(n+1)-A037697(n+1)`
-/

namespace A037732.P12425041900318476955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037704 (n + 1) + (A037725 (n + 1) - A037697 (n + 1))

end

end A037732.P12425041900318476955

namespace A037732

/-- `A037704(n+1)+A037725(n+1)-A037697(n+1)` -/
def P12425041900318476955.Spec : Prop :=
  ∀ n, P12425041900318476955.a n = A037732 (n + 1)

end A037732

/-! ## A037732.P4192686137307307341

`A037711(n+1)+A037718(n+1)-A037697(n+1)`
-/

namespace A037732.P4192686137307307341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037697 (n + 1))

end

end A037732.P4192686137307307341

namespace A037732

/-- `A037711(n+1)+A037718(n+1)-A037697(n+1)` -/
def P4192686137307307341.Spec : Prop :=
  ∀ n, P4192686137307307341.a n = A037732 (n + 1)

end A037732

/-!
# A037733: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037733, the canonical program `A037733.P12757555658372839363` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037733 has offset 1).

The definition of A037733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037733.P4880948779676348206

`floor(Δ[A037705(n+1)/4])`
-/

namespace A037733.P4880948779676348206
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037705 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A037733.P4880948779676348206

namespace A037733

/-- `floor(Δ[A037705(n+1)/4])` -/
def P4880948779676348206.Spec : Prop :=
  ∀ n, P4880948779676348206.a n = A037733 (n + 1)

end A037733

/-! ## A037733.P12757555658372839363

`A037677(n+1)+A037754(n+1)-A037698(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037733

/-- `A037677(n+1)+A037754(n+1)-A037698(n+1)` -/
def P12757555658372839363.Spec : Prop :=
  ∀ n, P12757555658372839363.a n = A037733 (n + 1)

theorem P12757555658372839363.correct : P12757555658372839363.Spec := by
  intro n
  simp only [A037733, Nat.add_sub_cancel]

end A037733

/-! ## A037733.P10554892008860239668

`A037684(n+1)+A037747(n+1)-A037698(n+1)`
-/

namespace A037733.P10554892008860239668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037698 (n + 1))

end

end A037733.P10554892008860239668

namespace A037733

/-- `A037684(n+1)+A037747(n+1)-A037698(n+1)` -/
def P10554892008860239668.Spec : Prop :=
  ∀ n, P10554892008860239668.a n = A037733 (n + 1)

end A037733

/-! ## A037733.P3619269890386955271

`A037705(n+1)+A037726(n+1)-A037698(n+1)`
-/

namespace A037733.P3619269890386955271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037698 (n + 1))

end

end A037733.P3619269890386955271

namespace A037733

/-- `A037705(n+1)+A037726(n+1)-A037698(n+1)` -/
def P3619269890386955271.Spec : Prop :=
  ∀ n, P3619269890386955271.a n = A037733 (n + 1)

end A037733

/-! ## A037733.P7625935614255287754

`A037712(n+1)+A037719(n+1)-A037698(n+1)`
-/

namespace A037733.P7625935614255287754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037719 (n + 1) - A037698 (n + 1))

end

end A037733.P7625935614255287754

namespace A037733

/-- `A037712(n+1)+A037719(n+1)-A037698(n+1)` -/
def P7625935614255287754.Spec : Prop :=
  ∀ n, P7625935614255287754.a n = A037733 (n + 1)

end A037733

/-! ## A037733.P8212520379159367145

`A037719(n+1)+A037796(n+1)-A037782(n+1)`
-/

namespace A037733.P8212520379159367145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037796 (n + 1) - A037782 (n + 1))

end

end A037733.P8212520379159367145

namespace A037733

/-- `A037719(n+1)+A037796(n+1)-A037782(n+1)` -/
def P8212520379159367145.Spec : Prop :=
  ∀ n, P8212520379159367145.a n = A037733 (n + 1)

end A037733

/-! ## A037733.P2302165549979443585

`A037747(n+1)+A037761(n+1)-A037796(n+1)`
-/

namespace A037733.P2302165549979443585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037747 (n + 1) + (A037761 (n + 1) - A037796 (n + 1))

end

end A037733.P2302165549979443585

namespace A037733

/-- `A037747(n+1)+A037761(n+1)-A037796(n+1)` -/
def P2302165549979443585.Spec : Prop :=
  ∀ n, P2302165549979443585.a n = A037733 (n + 1)

end A037733

/-!
# A037734: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037734, the canonical program `A037734.P7034088594166417114` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037734 has offset 1).

The definition of A037734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037734.P7034088594166417114

`a(n-1)+or(3, 7*a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037734

/-- `a(n-1)+or(3, 7*a(n-1))` -/
def P7034088594166417114.Spec : Prop :=
  ∀ n, (P7034088594166417114.a n : ℤ) = A037734 (n + 1)

theorem P7034088594166417114.correct : P7034088594166417114.Spec := by
  intro n
  simp only [A037734, Nat.add_sub_cancel]

end A037734

/-! ## A037734.P932795206884073445

`xor(3, (n+1)%4+8*a(n-1))` with `a(0)=2`
-/

namespace A037734.P932795206884073445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.xor 3 ((n + 1) % 4 + 8 * a (n - 1))

end

end A037734.P932795206884073445

namespace A037734

/-- `xor(3, (n+1)%4+8*a(n-1))` -/
def P932795206884073445.Spec : Prop :=
  ∀ n, (P932795206884073445.a n : ℤ) = A037734 (n + 1)

end A037734

/-! ## A037734.P7050318075207145869

`4*a(n-1)+and(3, 2-n)+4*a(n-1)` with `a(0)=2`
-/

namespace A037734.P7050318075207145869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) + (Int.land 3 (2 - (n : ℤ)) + 4 * a (n - 1))

end

end A037734.P7050318075207145869

namespace A037734

/-- `4*a(n-1)+and(3, 2-n)+4*a(n-1)` -/
def P7050318075207145869.Spec : Prop :=
  ∀ n, P7050318075207145869.a n = A037734 (n + 1)

end A037734

/-! ## A037734.P4649284685574513565

`xor(∑[A001018(n)], A037762(n+1))`
-/

namespace A037734.P4649284685574513565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037762 (n + 1))

end

end A037734.P4649284685574513565

namespace A037734

/-- `xor(∑[A001018(n)], A037762(n+1))` -/
def P4649284685574513565.Spec : Prop :=
  ∀ n, P4649284685574513565.a n = A037734 (n + 1)

end A037734

/-! ## A037734.P9757737863087800814

`xor(A037706(n+1), A037790(n+1))`
-/

namespace A037734.P9757737863087800814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037706 (n + 1)) (A037790 (n + 1))

end

end A037734.P9757737863087800814

namespace A037734

/-- `xor(A037706(n+1), A037790(n+1))` -/
def P9757737863087800814.Spec : Prop :=
  ∀ n, P9757737863087800814.a n = A037734 (n + 1)

end A037734

/-! ## A037734.P13338062608114832036

`A037692(n+1)+A037741(n+1)-A037699(n+1)`
-/

namespace A037734.P13338062608114832036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037692 (n + 1) + (A037741 (n + 1) - A037699 (n + 1))

end

end A037734.P13338062608114832036

namespace A037734

/-- `A037692(n+1)+A037741(n+1)-A037699(n+1)` -/
def P13338062608114832036.Spec : Prop :=
  ∀ n, P13338062608114832036.a n = A037734 (n + 1)

end A037734

/-! ## A037734.P8804500993281764642

`A037713(n+1)+A037720(n+1)-A037699(n+1)`
-/

namespace A037734.P8804500993281764642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1) + (A037720 (n + 1) - A037699 (n + 1))

end

end A037734.P8804500993281764642

namespace A037734

/-- `A037713(n+1)+A037720(n+1)-A037699(n+1)` -/
def P8804500993281764642.Spec : Prop :=
  ∀ n, P8804500993281764642.a n = A037734 (n + 1)

end A037734

/-! ## A037734.P3467525551272162287

`A037720(n+1)+A037797(n+1)-A037783(n+1)`
-/

namespace A037734.P3467525551272162287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037720 (n + 1) + (A037797 (n + 1) - A037783 (n + 1))

end

end A037734.P3467525551272162287

namespace A037734

/-- `A037720(n+1)+A037797(n+1)-A037783(n+1)` -/
def P3467525551272162287.Spec : Prop :=
  ∀ n, P3467525551272162287.a n = A037734 (n + 1)

end A037734

/-!
# A037735: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037735, the canonical program `A037735.P4958946619826733078` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037735 has offset 1).

The definition of A037735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037735.P4958946619826733078

`∑[xor(9*a(n-1), A010684(n))]` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037735

/-- `∑[xor(9*a(n-1), A010684(n))]` -/
def P4958946619826733078.Spec : Prop :=
  ∀ n, P4958946619826733078.a n = A037735 (n + 1)

theorem P4958946619826733078.correct : P4958946619826733078.Spec := by
  intro n
  simp only [A037735, Nat.add_sub_cancel]

end A037735

/-! ## A037735.P16577420494960530169

`A116973(2*n)+2-A037700(n+1)`
-/

namespace A037735.P16577420494960530169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116973 (2 * n) + (2 - A037700 (n + 1))

end

end A037735.P16577420494960530169

namespace A037735

/-- `A116973(2*n)+2-A037700(n+1)` -/
def P16577420494960530169.Spec : Prop :=
  ∀ n, P16577420494960530169.a n = A037735 (n + 1)

end A037735

/-! ## A037735.P12081422665896279328

`A037707(n+1)+A037728(n+1)-A037700(n+1)`
-/

namespace A037735.P12081422665896279328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037728 (n + 1) - A037700 (n + 1))

end

end A037735.P12081422665896279328

namespace A037735

/-- `A037707(n+1)+A037728(n+1)-A037700(n+1)` -/
def P12081422665896279328.Spec : Prop :=
  ∀ n, P12081422665896279328.a n = A037735 (n + 1)

end A037735

/-! ## A037735.P4757600545148288290

`A037714(n+1)+A037721(n+1)-A037700(n+1)`
-/

namespace A037735.P4757600545148288290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037721 (n + 1) - A037700 (n + 1))

end

end A037735.P4757600545148288290

namespace A037735

/-- `A037714(n+1)+A037721(n+1)-A037700(n+1)` -/
def P4757600545148288290.Spec : Prop :=
  ∀ n, P4757600545148288290.a n = A037735 (n + 1)

end A037735

/-! ## A037735.P10414029370330677830

`A037707(n+1)+A037777(n+1)-A037749(n+1)`
-/

namespace A037735.P10414029370330677830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037777 (n + 1) - A037749 (n + 1))

end

end A037735.P10414029370330677830

namespace A037735

/-- `A037707(n+1)+A037777(n+1)-A037749(n+1)` -/
def P10414029370330677830.Spec : Prop :=
  ∀ n, P10414029370330677830.a n = A037735 (n + 1)

end A037735

/-! ## A037735.P9417515382273398310

`A037721(n+1)+A037777(n+1)-A037763(n+1)`
-/

namespace A037735.P9417515382273398310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037777 (n + 1) - A037763 (n + 1))

end

end A037735.P9417515382273398310

namespace A037735

/-- `A037721(n+1)+A037777(n+1)-A037763(n+1)` -/
def P9417515382273398310.Spec : Prop :=
  ∀ n, P9417515382273398310.a n = A037735 (n + 1)

end A037735

/-! ## A037735.P10213140653984954502

`A037749(n+1)+A037763(n+1)-A037798(n+1)`
-/

namespace A037735.P10213140653984954502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037749 (n + 1) + (A037763 (n + 1) - A037798 (n + 1))

end

end A037735.P10213140653984954502

namespace A037735

/-- `A037749(n+1)+A037763(n+1)-A037798(n+1)` -/
def P10213140653984954502.Spec : Prop :=
  ∀ n, P10213140653984954502.a n = A037735 (n + 1)

end A037735

/-!
# A037736: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,0,3.

The programs for A037736, the canonical program `A037736.P17008864096484820772` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037736 has offset 1).

The definition of A037736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037736.P17008864096484820772

`and(3, 2-n)+10*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037736

/-- `and(3, 2-n)+10*a(n-1)` -/
def P17008864096484820772.Spec : Prop :=
  ∀ n, P17008864096484820772.a n = A037736 (n + 1)

theorem P17008864096484820772.correct : P17008864096484820772.Spec := by
  intro n
  simp only [A037736, Nat.add_sub_cancel]

end A037736

/-! ## A037736.P12310106574570833845

`or(3, n+1)%(n+1)+10*a(n-1)` with `a(0)=2`
-/

namespace A037736.P12310106574570833845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lor 3 (n + 1) % (n + 1) + 10 * a (n - 1)

end

end A037736.P12310106574570833845

namespace A037736

/-- `or(3, n+1)%(n+1)+10*a(n-1)` -/
def P12310106574570833845.Spec : Prop :=
  ∀ n, (P12310106574570833845.a n : ℤ) = A037736 (n + 1)

end A037736

/-! ## A037736.P16252570851426836728

`A158459(n+2)+10*a(n-1)` with `a(0)=2`
-/

namespace A037736.P16252570851426836728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A158459 (n + 2) + 10 * a (n - 1)

end

end A037736.P16252570851426836728

namespace A037736

/-- `A158459(n+2)+10*a(n-1)` -/
def P16252570851426836728.Spec : Prop :=
  ∀ n, P16252570851426836728.a n = A037736 (n + 1)

end A037736

/-! ## A037736.P7459479330102377923

`A016789(n)%4+10*a(n-1)` with `a(0)=2`
-/

namespace A037736.P7459479330102377923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A016789 n) 4 + 10 * a (n - 1)

end

end A037736.P7459479330102377923

namespace A037736

/-- `A016789(n)%4+10*a(n-1)` -/
def P7459479330102377923.Spec : Prop :=
  ∀ n, P7459479330102377923.a n = A037736 (n + 1)

end A037736

/-!
# A037737: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037737, the canonical program `A037737.P8859717325163940023` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037737 has offset 1).

The definition of A037737 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037737.P8859717325163940023

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=2, a(1)=9, a(2)=39, a(3)=156, a(4)=626`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037737

/-- `4*a(n-1)+a(n-4)-4*a(n-5)` -/
def P8859717325163940023.Spec : Prop :=
  ∀ n, P8859717325163940023.a n = A037737 (n + 1)

theorem P8859717325163940023.correct : P8859717325163940023.Spec := by
  intro n
  simp only [A037737, Nat.add_sub_cancel]

end A037737

/-! ## A037737.P4924516842927453926

`floor(52*4^(n+1)/85)`
-/

namespace A037737.P4924516842927453926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(52 * 4 ^ (n + 1) : ℚ) / 85⌋

end

end A037737.P4924516842927453926

namespace A037737

/-- `floor(52*4^(n+1)/85)` -/
def P4924516842927453926.Spec : Prop :=
  ∀ n, P4924516842927453926.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P11486727951572068808

`xor(a(n-1), A283216(2*n+1))` with `a(0)=2`
-/

namespace A037737.P11486727951572068808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (a (n - 1)) (A283216 (2 * n + 1))

end

end A037737.P11486727951572068808

namespace A037737

/-- `xor(a(n-1), A283216(2*n+1))` -/
def P11486727951572068808.Spec : Prop :=
  ∀ n, P11486727951572068808.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P13397150774116537507

`∑[A164346(n)]-A037688(n+1)`
-/

namespace A037737.P13397150774116537507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037688 (n + 1)

end

end A037737.P13397150774116537507

namespace A037737

/-- `∑[A164346(n)]-A037688(n+1)` -/
def P13397150774116537507.Spec : Prop :=
  ∀ n, P13397150774116537507.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P12334347224378706935

`xor(∑[A000302(n)], A037765(n+1))`
-/

namespace A037737.P12334347224378706935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037765 (n + 1))

end

end A037737.P12334347224378706935

namespace A037737

/-- `xor(∑[A000302(n)], A037765(n+1))` -/
def P12334347224378706935.Spec : Prop :=
  ∀ n, P12334347224378706935.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P4647506134138604881

`xor(A033114(n+1), A037779(n+1))`
-/

namespace A037737.P4647506134138604881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033114 (n + 1)) (A037779 (n + 1))

end

end A037737.P4647506134138604881

namespace A037737

/-- `xor(A033114(n+1), A037779(n+1))` -/
def P4647506134138604881.Spec : Prop :=
  ∀ n, P4647506134138604881.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P6788740231895530171

`xor(A037681(n+1), A037772(n+1))`
-/

namespace A037737.P6788740231895530171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A037772 (n + 1))

end

end A037737.P6788740231895530171

namespace A037737

/-- `xor(A037681(n+1), A037772(n+1))` -/
def P6788740231895530171.Spec : Prop :=
  ∀ n, P6788740231895530171.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P1524472070878765308

`xor(A037709(n+1), A037793(n+1))`
-/

namespace A037737.P1524472070878765308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037709 (n + 1)) (A037793 (n + 1))

end

end A037737.P1524472070878765308

namespace A037737

/-- `xor(A037709(n+1), A037793(n+1))` -/
def P1524472070878765308.Spec : Prop :=
  ∀ n, P1524472070878765308.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P1708442459963758924

`xor(∑[A004171(n)/2], A037765(n+1))`
-/

namespace A037737.P1708442459963758924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004171 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A037765 (n + 1))

end

end A037737.P1708442459963758924

namespace A037737

/-- `xor(∑[A004171(n)/2], A037765(n+1))` -/
def P1708442459963758924.Spec : Prop :=
  ∀ n, P1708442459963758924.a n = A037737 (n + 1)

end A037737

/-! ## A037737.P12057691248928183664

`A126646(A005408(n))-A037688(n+1)`
-/

namespace A037737.P12057691248928183664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A005408 n).toNat - A037688 (n + 1)

end

end A037737.P12057691248928183664

namespace A037737

/-- `A126646(A005408(n))-A037688(n+1)` -/
def P12057691248928183664.Spec : Prop :=
  ∀ n, P12057691248928183664.a n = A037737 (n + 1)

end A037737

/-!
# A037738: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037738, the canonical program `A037738.P15937105399732906321` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037738 has offset 1).

The definition of A037738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037738.P5902086924846578490

`∑[xor(5*a(n-1), A020639(3*(n+2)))]` with `a(0)=2`
-/

namespace A037738.P5902086924846578490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A020639 (3 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037738.P5902086924846578490

namespace A037738

/-- `∑[xor(5*a(n-1), A020639(3*(n+2)))]` -/
def P5902086924846578490.Spec : Prop :=
  ∀ n, P5902086924846578490.a n = A037738 (n + 1)

end A037738

/-! ## A037738.P1627981000317641979

`∑[A037780(n+1)-A037689(n+1)]`
-/

namespace A037738.P1627981000317641979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037780 (n + 1) - A037689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037738.P1627981000317641979

namespace A037738

/-- `∑[A037780(n+1)-A037689(n+1)]` -/
def P1627981000317641979.Spec : Prop :=
  ∀ n, P1627981000317641979.a n = A037738 (n + 1)

end A037738

/-! ## A037738.P15937105399732906321

`A037710(n+1)+A037717(n+1)-A037689(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037738

/-- `A037710(n+1)+A037717(n+1)-A037689(n+1)` -/
def P15937105399732906321.Spec : Prop :=
  ∀ n, P15937105399732906321.a n = A037738 (n + 1)

theorem P15937105399732906321.correct : P15937105399732906321.Spec := by
  intro n
  simp only [A037738, Nat.add_sub_cancel]

end A037738

/-! ## A037738.P1361792912679863715

`A037752(n+1)+A037766(n+1)-A037787(n+1)`
-/

namespace A037738.P1361792912679863715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037752 (n + 1) + (A037766 (n + 1) - A037787 (n + 1))

end

end A037738.P1361792912679863715

namespace A037738

/-- `A037752(n+1)+A037766(n+1)-A037787(n+1)` -/
def P1361792912679863715.Spec : Prop :=
  ∀ n, P1361792912679863715.a n = A037738 (n + 1)

end A037738

/-! ## A037738.P156923789123727818

`Δ[∑[A037766(n+1)]-A037780(n+1)]`
-/

namespace A037738.P156923789123727818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037738.P156923789123727818

namespace A037738

/-- `Δ[∑[A037766(n+1)]-A037780(n+1)]` -/
def P156923789123727818.Spec : Prop :=
  ∀ n, P156923789123727818.a n = A037738 (n + 1)

end A037738

/-! ## A037738.P17635745025755178548

`Δ[∑[A037773(n+1)]-A037794(n+1)]`
-/

namespace A037738.P17635745025755178548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037738.P17635745025755178548

namespace A037738

/-- `Δ[∑[A037773(n+1)]-A037794(n+1)]` -/
def P17635745025755178548.Spec : Prop :=
  ∀ n, P17635745025755178548.a n = A037738 (n + 1)

end A037738

/-!
# A037739: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037739, the canonical program `A037739.P18257991991248789603` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037739 has offset 1).

The definition of A037739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037739.P18257991991248789603

`or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037739

/-- `or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1)` -/
def P18257991991248789603.Spec : Prop :=
  ∀ n, (P18257991991248789603.a n : ℤ) = A037739 (n + 1)

theorem P18257991991248789603.correct : P18257991991248789603.Spec := by
  intro n
  simp only [A037739, Nat.add_sub_cancel]

end A037739

/-! ## A037739.P11685834270294136949

`A037711(n+1)+A037718(n+1)-A037690(n+1)`
-/

namespace A037739.P11685834270294136949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 1) + (A037718 (n + 1) - A037690 (n + 1))

end

end A037739.P11685834270294136949

namespace A037739

/-- `A037711(n+1)+A037718(n+1)-A037690(n+1)` -/
def P11685834270294136949.Spec : Prop :=
  ∀ n, P11685834270294136949.a n = A037739 (n + 1)

theorem P11685834270294136949.correct : P11685834270294136949.Spec := by
  intro n
  simp only [A037739, Nat.add_sub_cancel, A037739.P11685834270294136949.a, A037739.P18257991991248789603.a, A037690, A037690.P10971792111560011432.a, A037711, A037711.P5672376970988767785.f1, A037711.P5672376970988767785.a, A037718, A037718.P5498483775677250731.a, A015540, A015540.P6424508890208897512.a, A037753, A037753.P10507737516097663728.a, A037767, A037767.P12662760880017921865.a, A037746, A037746.P1636314081189769102.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037739

/-! ## A037739.P8509026113128504335

`∑[A037781(n+1)-A037690(n+1)]`
-/

namespace A037739.P8509026113128504335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037781 (n + 1) - A037690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037739.P8509026113128504335

namespace A037739

/-- `∑[A037781(n+1)-A037690(n+1)]` -/
def P8509026113128504335.Spec : Prop :=
  ∀ n, P8509026113128504335.a n = A037739 (n + 1)

end A037739

/-! ## A037739.P4023976461208501416

`A037711(n+2)-Δ[A037697(n+1)]`
-/

namespace A037739.P4023976461208501416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037711 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037739.P4023976461208501416

namespace A037739

/-- `A037711(n+2)-Δ[A037697(n+1)]` -/
def P4023976461208501416.Spec : Prop :=
  ∀ n, P4023976461208501416.a n = A037739 (n + 1)

end A037739

/-! ## A037739.P7191282898038956690

`A037767(n+2)-Δ[A037781(n+1)]`
-/

namespace A037739.P7191282898038956690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037739.P7191282898038956690

namespace A037739

/-- `A037767(n+2)-Δ[A037781(n+1)]` -/
def P7191282898038956690.Spec : Prop :=
  ∀ n, P7191282898038956690.a n = A037739 (n + 1)

end A037739

/-! ## A037739.P8422804409936533372

`A037774(n+2)-Δ[A037795(n+1)]`
-/

namespace A037739.P8422804409936533372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037739.P8422804409936533372

namespace A037739

/-- `A037774(n+2)-Δ[A037795(n+1)]` -/
def P8422804409936533372.Spec : Prop :=
  ∀ n, P8422804409936533372.a n = A037739 (n + 1)

end A037739

/-! ## A037739.P16876676777837181070

`A037774(n+1)+Δ[A037760(n+1)-A037781(n+1)]`
-/

namespace A037739.P16876676777837181070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) - A037781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037739.P16876676777837181070

namespace A037739

/-- `A037774(n+1)+Δ[A037760(n+1)-A037781(n+1)]` -/
def P16876676777837181070.Spec : Prop :=
  ∀ n, P16876676777837181070.a n = A037739 (n + 1)

end A037739

/-! ## A037739.P4456561990785242409

`A037767(n+1)+Δ[A037774(n+1)-A037788(n+1)]`
-/

namespace A037739.P4456561990785242409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) - A037788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037739.P4456561990785242409

namespace A037739

/-- `A037767(n+1)+Δ[A037774(n+1)-A037788(n+1)]` -/
def P4456561990785242409.Spec : Prop :=
  ∀ n, P4456561990785242409.a n = A037739 (n + 1)

end A037739

/-!
# A037740: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037740, the canonical program `A037740.P194235609448009702` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037740 has offset 1).

The definition of A037740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037740.P13378708818502930269

`A120741(n+1)-A037691(n+1)`
-/

namespace A037740.P13378708818502930269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037691 (n + 1)

end

end A037740.P13378708818502930269

namespace A037740

/-- `A120741(n+1)-A037691(n+1)` -/
def P13378708818502930269.Spec : Prop :=
  ∀ n, P13378708818502930269.a n = A037740 (n + 1)

theorem P13378708818502930269.correct : P13378708818502930269.Spec := by
  intro n
  simp only [A037740, Nat.add_sub_cancel, A037740.P13378708818502930269.a, A037740.P194235609448009702.f2, A037740.P194235609448009702.f1, A037740.P194235609448009702.a, A037691, A037691.P5639222139270324728.a, A037698, A037698.P13802440831282890987.a, A037712, A037712.P2492734325855298356.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037740

/-! ## A037740.P8179504126689468456

`∑[A037782(n+1)-A037691(n+1)]`
-/

namespace A037740.P8179504126689468456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037782 (n + 1) - A037691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037740.P8179504126689468456

namespace A037740

/-- `∑[A037782(n+1)-A037691(n+1)]` -/
def P8179504126689468456.Spec : Prop :=
  ∀ n, P8179504126689468456.a n = A037740 (n + 1)

end A037740

/-! ## A037740.P6778591167766471355

`A024075(n+1)/2-A037691(n+1)`
-/

namespace A037740.P6778591167766471355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024075 (n + 1) : ℚ) / 2 - (A037691 (n + 1) : ℚ)

end

end A037740.P6778591167766471355

namespace A037740

/-- `A024075(n+1)/2-A037691(n+1)` -/
def P6778591167766471355.Spec : Prop :=
  ∀ n, P6778591167766471355.a n = (A037740 (n + 1) : ℚ)

end A037740

/-! ## A037740.P194235609448009702

`Δ[∑[A037712(n+1)]-A037698(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037740

/-- `Δ[∑[A037712(n+1)]-A037698(n+1)]` -/
def P194235609448009702.Spec : Prop :=
  ∀ n, P194235609448009702.a n = A037740 (n + 1)

theorem P194235609448009702.correct : P194235609448009702.Spec := by
  intro n
  simp only [A037740, Nat.add_sub_cancel]

end A037740

/-! ## A037740.P16024075109606481405

`A037677(n+1)+A037754(n+1)-A037691(n+1)`
-/

namespace A037740.P16024075109606481405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037754 (n + 1) - A037691 (n + 1))

end

end A037740.P16024075109606481405

namespace A037740

/-- `A037677(n+1)+A037754(n+1)-A037691(n+1)` -/
def P16024075109606481405.Spec : Prop :=
  ∀ n, P16024075109606481405.a n = A037740 (n + 1)

end A037740

/-! ## A037740.P14381725953431650928

`A037684(n+1)+A037747(n+1)-A037691(n+1)`
-/

namespace A037740.P14381725953431650928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037747 (n + 1) - A037691 (n + 1))

end

end A037740.P14381725953431650928

namespace A037740

/-- `A037684(n+1)+A037747(n+1)-A037691(n+1)` -/
def P14381725953431650928.Spec : Prop :=
  ∀ n, P14381725953431650928.a n = A037740 (n + 1)

theorem P14381725953431650928.correct : P14381725953431650928.Spec := by
  intro n
  simp only [A037740, Nat.add_sub_cancel, A037740.P14381725953431650928.a, A037740.P194235609448009702.f2, A037740.P194235609448009702.f1, A037740.P194235609448009702.a, A037684, A037684.P14194998553466054021.a, A037691, A037691.P5639222139270324728.a, A037698, A037698.P13802440831282890987.a, A037712, A037712.P2492734325855298356.a, A037747, A037747.P6387786444260834050.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037740

/-! ## A037740.P10995739491857044131

`A037705(n+1)+A037726(n+1)-A037691(n+1)`
-/

namespace A037740.P10995739491857044131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037691 (n + 1))

end

end A037740.P10995739491857044131

namespace A037740

/-- `A037705(n+1)+A037726(n+1)-A037691(n+1)` -/
def P10995739491857044131.Spec : Prop :=
  ∀ n, P10995739491857044131.a n = A037740 (n + 1)

theorem P10995739491857044131.correct : P10995739491857044131.Spec := by
  intro n
  simp only [A037740, Nat.add_sub_cancel, A037740.P10995739491857044131.a, A037740.P194235609448009702.f2, A037740.P194235609448009702.f1, A037740.P194235609448009702.a, A037691, A037691.P5639222139270324728.a, A037698, A037698.P13802440831282890987.a, A037705, A037705.P13871482217024803718.a, A037712, A037712.P2492734325855298356.a, A037726, A037726.P10810606024213061310.a, A037719, A037719.P11049252179318265615.a, A037747, A037747.P6387786444260834050.a, A037761, A037761.P7195593094420718256.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037740

/-! ## A037740.P12879762424712931330

`A037726(n+1)+A037782(n+1)-A037768(n+1)`
-/

namespace A037740.P12879762424712931330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037726 (n + 1) + (A037782 (n + 1) - A037768 (n + 1))

end

end A037740.P12879762424712931330

namespace A037740

/-- `A037726(n+1)+A037782(n+1)-A037768(n+1)` -/
def P12879762424712931330.Spec : Prop :=
  ∀ n, P12879762424712931330.a n = A037740 (n + 1)

end A037740

/-! ## A037740.P1644600145467105556

`A037768(n+2)-Δ[A037782(n+1)]`
-/

namespace A037740.P1644600145467105556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037768 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037740.P1644600145467105556

namespace A037740

/-- `A037768(n+2)-Δ[A037782(n+1)]` -/
def P1644600145467105556.Spec : Prop :=
  ∀ n, P1644600145467105556.a n = A037740 (n + 1)

end A037740

/-!
# A037741: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037741, the canonical program `A037741.P16338688457861119066` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037741 has offset 1).

The definition of A037741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037741.P16338688457861119066

`xor(∑[A001018(n)], A037769(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037741

/-- `xor(∑[A001018(n)], A037769(n+1))` -/
def P16338688457861119066.Spec : Prop :=
  ∀ n, P16338688457861119066.a n = A037741 (n + 1)

theorem P16338688457861119066.correct : P16338688457861119066.Spec := by
  intro n
  simp only [A037741, Nat.add_sub_cancel]

end A037741

/-! ## A037741.P18240831002639850151

`xor(A037713(n+1), A037797(n+1))`
-/

namespace A037741.P18240831002639850151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037713 (n + 1)) (A037797 (n + 1))

end

end A037741.P18240831002639850151

namespace A037741

/-- `xor(A037713(n+1), A037797(n+1))` -/
def P18240831002639850151.Spec : Prop :=
  ∀ n, P18240831002639850151.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P11118641283160633240

`∑[A037783(n+1)-A037692(n+1)]`
-/

namespace A037741.P11118641283160633240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037783 (n + 1) - A037692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037741.P11118641283160633240

namespace A037741

/-- `∑[A037783(n+1)-A037692(n+1)]` -/
def P11118641283160633240.Spec : Prop :=
  ∀ n, P11118641283160633240.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P11126066524275400560

`xor(A037783(n+1), A195904(A016777(n)))`
-/

namespace A037741.P11126066524275400560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037783 (n + 1)) (A195904 (A016777 n).toNat)

end

end A037741.P11126066524275400560

namespace A037741

/-- `xor(A037783(n+1), A195904(A016777(n)))` -/
def P11126066524275400560.Spec : Prop :=
  ∀ n, P11126066524275400560.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P15112268187462093088

`A037713(n+1)+A037720(n+1)-A037692(n+1)`
-/

namespace A037741.P15112268187462093088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1) + (A037720 (n + 1) - A037692 (n + 1))

end

end A037741.P15112268187462093088

namespace A037741

/-- `A037713(n+1)+A037720(n+1)-A037692(n+1)` -/
def P15112268187462093088.Spec : Prop :=
  ∀ n, P15112268187462093088.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P3278388101246977089

`xor(A037734(n+2), A037755(n+2))`
-/

namespace A037741.P3278388101246977089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037734 (n + 2)) (A037755 (n + 2))

end

end A037741.P3278388101246977089

namespace A037741

/-- `xor(A037734(n+2), A037755(n+2))` -/
def P3278388101246977089.Spec : Prop :=
  ∀ n, P3278388101246977089.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P5802300338012441605

`A037769(n+2)-Δ[A037783(n+1)]`
-/

namespace A037741.P5802300338012441605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037741.P5802300338012441605

namespace A037741

/-- `A037769(n+2)-Δ[A037783(n+1)]` -/
def P5802300338012441605.Spec : Prop :=
  ∀ n, P5802300338012441605.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P453286225399436067

`Δ[∑[A037713(n+1)]-A037699(n+1)]`
-/

namespace A037741.P453286225399436067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037741.P453286225399436067

namespace A037741

/-- `Δ[∑[A037713(n+1)]-A037699(n+1)]` -/
def P453286225399436067.Spec : Prop :=
  ∀ n, P453286225399436067.a n = A037741 (n + 1)

end A037741

/-! ## A037741.P7302028545409808576

`A037580(n+2)-and(A037580(n+2), A037783(n+2))`
-/

namespace A037741.P7302028545409808576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037580 (n + 2) - Int.land (A037580 (n + 2)) (A037783 (n + 2))

end

end A037741.P7302028545409808576

namespace A037741

/-- `A037580(n+2)-and(A037580(n+2), A037783(n+2))` -/
def P7302028545409808576.Spec : Prop :=
  ∀ n, P7302028545409808576.a n = A037741 (n + 1)

end A037741

/-!
# A037742: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037742, the canonical program `A037742.P4324914929506903484` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037742 has offset 1).

The definition of A037742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037742.P14265769875589818785

`∑[xor(9*a(n-1), A020639(3*n))]` with `a(0)=2`
-/

namespace A037742.P14265769875589818785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A020639 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037742.P14265769875589818785

namespace A037742

/-- `∑[xor(9*a(n-1), A020639(3*n))]` -/
def P14265769875589818785.Spec : Prop :=
  ∀ n, P14265769875589818785.a n = A037742 (n + 1)

end A037742

/-! ## A037742.P4324914929506903484

`A037714(n+1)+A037721(n+1)-A037693(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037742

/-- `A037714(n+1)+A037721(n+1)-A037693(n+1)` -/
def P4324914929506903484.Spec : Prop :=
  ∀ n, P4324914929506903484.a n = A037742 (n + 1)

theorem P4324914929506903484.correct : P4324914929506903484.Spec := by
  intro n
  simp only [A037742, Nat.add_sub_cancel]

end A037742

/-! ## A037742.P15532919789682686772

`A037714(n+2)-Δ[A037700(n+1)]`
-/

namespace A037742.P15532919789682686772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037742.P15532919789682686772

namespace A037742

/-- `A037714(n+2)-Δ[A037700(n+1)]` -/
def P15532919789682686772.Spec : Prop :=
  ∀ n, P15532919789682686772.a n = A037742 (n + 1)

end A037742

/-! ## A037742.P16104496838012544210

`A037777(n+2)-Δ[A037798(n+1)]`
-/

namespace A037742.P16104496838012544210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037777 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037742.P16104496838012544210

namespace A037742

/-- `A037777(n+2)-Δ[A037798(n+1)]` -/
def P16104496838012544210.Spec : Prop :=
  ∀ n, P16104496838012544210.a n = A037742 (n + 1)

end A037742

/-! ## A037742.P16065993836769698583

`Δ[∑[A037770(n+1)]-A037784(n+1)]`
-/

namespace A037742.P16065993836769698583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037742.P16065993836769698583

namespace A037742

/-- `Δ[∑[A037770(n+1)]-A037784(n+1)]` -/
def P16065993836769698583.Spec : Prop :=
  ∀ n, P16065993836769698583.a n = A037742 (n + 1)

end A037742

/-!
# A037743: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,1,3,0.

The programs for A037743, there is no canonical definition to state claims against.
-/

/-! ## A037743.P17722954794041515834

`A256304(A037674(n+1))`
-/

namespace A037743.P17722954794041515834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A037674 (n + 1)).toNat

end

end A037743.P17722954794041515834

/-! ## A037743.P8584404562227472639

`A007090(A037737(n+1))`
-/

namespace A037743.P8584404562227472639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037737 (n + 1)).toNat

end

end A037743.P8584404562227472639

/-!
# A037744: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037744, the canonical program `A037744.P2303553604766487134` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037744 has offset 1).

The definition of A037744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037744.P2303553604766487134

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=2, a(1)=11, a(2)=44, a(3)=177, a(4)=710`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037744

/-- `4*a(n-1)+a(n-4)-4*a(n-5)` -/
def P2303553604766487134.Spec : Prop :=
  ∀ n, P2303553604766487134.a n = A037744 (n + 1)

theorem P2303553604766487134.correct : P2303553604766487134.Spec := by
  intro n
  simp only [A037744, Nat.add_sub_cancel]

end A037744

/-! ## A037744.P7191700868501278289

`(n+2)%4+4*a(n-1)` with `a(0)=2`
-/

namespace A037744.P7191700868501278289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  (n + 2) % 4 + 4 * a (n - 1)

end

end A037744.P7191700868501278289

namespace A037744

/-- `(n+2)%4+4*a(n-1)` -/
def P7191700868501278289.Spec : Prop :=
  ∀ n, (P7191700868501278289.a n : ℤ) = A037744 (n + 1)

end A037744

/-! ## A037744.P3126798034537485434

`and(3, n+2)+4*a(n-1)` with `a(0)=2`
-/

namespace A037744.P3126798034537485434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 4 * a (n - 1)

end

end A037744.P3126798034537485434

namespace A037744

/-- `and(3, n+2)+4*a(n-1)` -/
def P3126798034537485434.Spec : Prop :=
  ∀ n, (P3126798034537485434.a n : ℤ) = A037744 (n + 1)

end A037744

/-! ## A037744.P3860936262275816861

`or(4*a(n-1), and(3, n-2))` with `a(0)=2`
-/

namespace A037744.P3860936262275816861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (4 * a (n - 1)) (Int.land 3 ((n : ℤ) - 2))

end

end A037744.P3860936262275816861

namespace A037744

/-- `or(4*a(n-1), and(3, n-2))` -/
def P3860936262275816861.Spec : Prop :=
  ∀ n, P3860936262275816861.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P8558950256893081425

`xor(4*a(n-1), and(3, n-2))` with `a(0)=2`
-/

namespace A037744.P8558950256893081425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (4 * a (n - 1)) (Int.land 3 ((n : ℤ) - 2))

end

end A037744.P8558950256893081425

namespace A037744

/-- `xor(4*a(n-1), and(3, n-2))` -/
def P8558950256893081425.Spec : Prop :=
  ∀ n, P8558950256893081425.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P2068585667044389858

`5*a(n-1)-or(3, a(n-1)-3)` with `a(0)=2`
-/

namespace A037744.P2068585667044389858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  5 * a (n - 1) - Int.lor 3 (a (n - 1) - 3)

end

end A037744.P2068585667044389858

namespace A037744

/-- `5*a(n-1)-or(3, a(n-1)-3)` -/
def P2068585667044389858.Spec : Prop :=
  ∀ n, P2068585667044389858.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P9066546267276195659

`xor(A037730(n+1), A117616(n))`
-/

namespace A037744.P9066546267276195659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037730 (n + 1)) (A117616 n)

end

end A037744.P9066546267276195659

namespace A037744

/-- `xor(A037730(n+1), A117616(n))` -/
def P9066546267276195659.Spec : Prop :=
  ∀ n, P9066546267276195659.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P7303189927571373922

`xor(A037583(n+1), A037695(n+1))`
-/

namespace A037744.P7303189927571373922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037583 (n + 1)) (A037695 (n + 1))

end

end A037744.P7303189927571373922

namespace A037744

/-- `xor(A037583(n+1), A037695(n+1))` -/
def P7303189927571373922.Spec : Prop :=
  ∀ n, P7303189927571373922.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P14972837870879799237

`xor(A037576(n+1), A037758(n+1))`
-/

namespace A037744.P14972837870879799237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037576 (n + 1)) (A037758 (n + 1))

end

end A037744.P14972837870879799237

namespace A037744

/-- `xor(A037576(n+1), A037758(n+1))` -/
def P14972837870879799237.Spec : Prop :=
  ∀ n, P14972837870879799237.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P16877590070965621042

`xor(A037688(n+1), A037772(n+1))`
-/

namespace A037744.P16877590070965621042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037688 (n + 1)) (A037772 (n + 1))

end

end A037744.P16877590070965621042

namespace A037744

/-- `xor(A037688(n+1), A037772(n+1))` -/
def P16877590070965621042.Spec : Prop :=
  ∀ n, P16877590070965621042.a n = A037744 (n + 1)

end A037744

/-! ## A037744.P16801916842240439878

`xor(A037709(n+1), A037765(n+1))`
-/

namespace A037744.P16801916842240439878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037709 (n + 1)) (A037765 (n + 1))

end

end A037744.P16801916842240439878

namespace A037744

/-- `xor(A037709(n+1), A037765(n+1))` -/
def P16801916842240439878.Spec : Prop :=
  ∀ n, P16801916842240439878.a n = A037744 (n + 1)

end A037744

/-!
# A037745: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037745, the canonical program `A037745.P16806909000048906870` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037745 has offset 1).

The definition of A037745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037745.P16806909000048906870

`(n+2)%4+5*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037745

/-- `(n+2)%4+5*a(n-1)` -/
def P16806909000048906870.Spec : Prop :=
  ∀ n, (P16806909000048906870.a n : ℤ) = A037745 (n + 1)

theorem P16806909000048906870.correct : P16806909000048906870.Spec := by
  intro n
  simp only [A037745, Nat.add_sub_cancel]

end A037745

/-! ## A037745.P17019579694360792978

`and(3, n+2)+5*a(n-1)` with `a(0)=2`
-/

namespace A037745.P17019579694360792978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 5 * a (n - 1)

end

end A037745.P17019579694360792978

namespace A037745

/-- `and(3, n+2)+5*a(n-1)` -/
def P17019579694360792978.Spec : Prop :=
  ∀ n, (P17019579694360792978.a n : ℤ) = A037745 (n + 1)

end A037745

/-! ## A037745.P5563335658846038243

`A000034(n)+xor(1, 5*a(n-1))` with `a(0)=2`
-/

namespace A037745.P5563335658846038243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000034 n + Int.xor 1 (5 * a (n - 1))

end

end A037745.P5563335658846038243

namespace A037745

/-- `A000034(n)+xor(1, 5*a(n-1))` -/
def P5563335658846038243.Spec : Prop :=
  ∀ n, P5563335658846038243.a n = A037745 (n + 1)

end A037745

/-! ## A037745.P8418834088959648894

`A037490(n+1)+A037752(n+1)-A037738(n+1)`
-/

namespace A037745.P8418834088959648894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037490 (n + 1) + (A037752 (n + 1) - A037738 (n + 1))

end

end A037745.P8418834088959648894

namespace A037745

/-- `A037490(n+1)+A037752(n+1)-A037738(n+1)` -/
def P8418834088959648894.Spec : Prop :=
  ∀ n, P8418834088959648894.a n = A037745 (n + 1)

end A037745

/-! ## A037745.P15192513525676571449

`A037752(n+1)+A037759(n+1)-A037766(n+1)`
-/

namespace A037745.P15192513525676571449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037752 (n + 1) + (A037759 (n + 1) - A037766 (n + 1))

end

end A037745.P15192513525676571449

namespace A037745

/-- `A037752(n+1)+A037759(n+1)-A037766(n+1)` -/
def P15192513525676571449.Spec : Prop :=
  ∀ n, P15192513525676571449.a n = A037745 (n + 1)

theorem P15192513525676571449.correct : P15192513525676571449.Spec := by
  intro n
  simp only [A037745, Nat.add_sub_cancel, A037745.P15192513525676571449.a, A037745.P16806909000048906870.a, A037752, A037752.P8103894507674030329.f1, A037752.P8103894507674030329.a, A037759, A037759.P7672012952696768290.a, A037766, A037766.P15632211533706168488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037745

/-!
# A037746: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037746, the canonical program `A037746.P1636314081189769102` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037746 has offset 1).

The definition of A037746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037746.P1636314081189769102

`(n+2)%4+6*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037746

/-- `(n+2)%4+6*a(n-1)` -/
def P1636314081189769102.Spec : Prop :=
  ∀ n, (P1636314081189769102.a n : ℤ) = A037746 (n + 1)

theorem P1636314081189769102.correct : P1636314081189769102.Spec := by
  intro n
  simp only [A037746, Nat.add_sub_cancel]

end A037746

/-! ## A037746.P4247615812170115932

`and(3, n+2)+6*a(n-1)` with `a(0)=2`
-/

namespace A037746.P4247615812170115932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 6 * a (n - 1)

end

end A037746.P4247615812170115932

namespace A037746

/-- `and(3, n+2)+6*a(n-1)` -/
def P4247615812170115932.Spec : Prop :=
  ∀ n, (P4247615812170115932.a n : ℤ) = A037746 (n + 1)

end A037746

/-! ## A037746.P6126161593377842073

`xor(1, 6*a(n-1)-(n-or(3, n)))` with `a(0)=2`
-/

namespace A037746.P6126161593377842073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 1 (6 * a (n - 1) - ((n : ℤ) - (Nat.lor 3 n : ℤ)))

end

end A037746.P6126161593377842073

namespace A037746

/-- `xor(1, 6*a(n-1)-(n-or(3, n)))` -/
def P6126161593377842073.Spec : Prop :=
  ∀ n, P6126161593377842073.a n = A037746 (n + 1)

end A037746

/-! ## A037746.P15338887364764597868

`record[6*a(n-1)-(1-n)%4]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A037746.P15338887364764597868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2, 2] fun n f1 =>
  6 * f1 (n - 1) - Int.tmod (1 - (n : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037746.P15338887364764597868

namespace A037746

/-- `record[6*a(n-1)-(1-n)%4]` -/
def P15338887364764597868.Spec : Prop :=
  ∀ n, P15338887364764597868.a n = A037746 (n + 1)

end A037746

/-! ## A037746.P4398230038176064427

`A037753(n+1)+A037760(n+1)-A037767(n+1)`
-/

namespace A037746.P4398230038176064427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037753 (n + 1) + (A037760 (n + 1) - A037767 (n + 1))

end

end A037746.P4398230038176064427

namespace A037746

/-- `A037753(n+1)+A037760(n+1)-A037767(n+1)` -/
def P4398230038176064427.Spec : Prop :=
  ∀ n, P4398230038176064427.a n = A037746 (n + 1)

theorem P4398230038176064427.correct : P4398230038176064427.Spec := by
  intro n
  simp only [A037746, Nat.add_sub_cancel, A037746.P4398230038176064427.a, A037746.P1636314081189769102.a, A037753, A037753.P10507737516097663728.a, A037760, A037760.P8631641189815898.a, A037767, A037767.P12662760880017921865.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037746

/-!
# A037747: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037747, the canonical program `A037747.P6387786444260834050` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037747 has offset 1).

The definition of A037747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037747.P6387786444260834050

`(n+2)%4+7*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037747

/-- `(n+2)%4+7*a(n-1)` -/
def P6387786444260834050.Spec : Prop :=
  ∀ n, (P6387786444260834050.a n : ℤ) = A037747 (n + 1)

theorem P6387786444260834050.correct : P6387786444260834050.Spec := by
  intro n
  simp only [A037747, Nat.add_sub_cancel]

end A037747

/-! ## A037747.P12029194665592163031

`and(3, n+2)+7*a(n-1)` with `a(0)=2`
-/

namespace A037747.P12029194665592163031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 7 * a (n - 1)

end

end A037747.P12029194665592163031

namespace A037747

/-- `and(3, n+2)+7*a(n-1)` -/
def P12029194665592163031.Spec : Prop :=
  ∀ n, (P12029194665592163031.a n : ℤ) = A037747 (n + 1)

end A037747

/-! ## A037747.P3219638790228900357

`A037796(n+1)-A015552(n+1)`
-/

namespace A037747.P3219638790228900357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037796 (n + 1) - A015552 (n + 1)

end

end A037747.P3219638790228900357

namespace A037747

/-- `A037796(n+1)-A015552(n+1)` -/
def P3219638790228900357.Spec : Prop :=
  ∀ n, P3219638790228900357.a n = A037747 (n + 1)

theorem P3219638790228900357.correct : P3219638790228900357.Spec := by
  intro n
  simp only [A037747, Nat.add_sub_cancel, A037747.P3219638790228900357.a, A037747.P6387786444260834050.a, A015552, A015552.P4069390723954488205.a, A037796, A037796.P273957106179402487.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037747

/-! ## A037747.P15910565609978365271

`A037677(n+1)+A037754(n+1)-A037684(n+1)`
-/

namespace A037747.P15910565609978365271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037677 (n + 1) + (A037754 (n + 1) - A037684 (n + 1))

end

end A037747.P15910565609978365271

namespace A037747

/-- `A037677(n+1)+A037754(n+1)-A037684(n+1)` -/
def P15910565609978365271.Spec : Prop :=
  ∀ n, P15910565609978365271.a n = A037747 (n + 1)

end A037747

/-! ## A037747.P9904520659230425261

`A037705(n+1)+A037726(n+1)-A037684(n+1)`
-/

namespace A037747.P9904520659230425261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037726 (n + 1) - A037684 (n + 1))

end

end A037747.P9904520659230425261

namespace A037747

/-- `A037705(n+1)+A037726(n+1)-A037684(n+1)` -/
def P9904520659230425261.Spec : Prop :=
  ∀ n, P9904520659230425261.a n = A037747 (n + 1)

theorem P9904520659230425261.correct : P9904520659230425261.Spec := by
  intro n
  simp only [A037747, Nat.add_sub_cancel, A037747.P9904520659230425261.a, A037747.P6387786444260834050.a, A037684, A037684.P14194998553466054021.a, A037705, A037705.P13871482217024803718.a, A037726, A037726.P10810606024213061310.a, A037719, A037719.P11049252179318265615.a, A037761, A037761.P7195593094420718256.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037747

/-! ## A037747.P16685580414764906352

`A037712(n+1)+A037719(n+1)-A037684(n+1)`
-/

namespace A037747.P16685580414764906352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037719 (n + 1) - A037684 (n + 1))

end

end A037747.P16685580414764906352

namespace A037747

/-- `A037712(n+1)+A037719(n+1)-A037684(n+1)` -/
def P16685580414764906352.Spec : Prop :=
  ∀ n, P16685580414764906352.a n = A037747 (n + 1)

end A037747

/-!
# A037748: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037748, the canonical program `A037748.P8745613496400921605` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037748 has offset 1).

The definition of A037748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037748.P8745613496400921605

`and(3, n+2)+8*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037748

/-- `and(3, n+2)+8*a(n-1)` -/
def P8745613496400921605.Spec : Prop :=
  ∀ n, (P8745613496400921605.a n : ℤ) = A037748 (n + 1)

theorem P8745613496400921605.correct : P8745613496400921605.Spec := by
  intro n
  simp only [A037748, Nat.add_sub_cancel]

end A037748

/-! ## A037748.P1015981642793151033

`xor(∑[A001018(n)], A037797(n+1))`
-/

namespace A037748.P1015981642793151033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037797 (n + 1))

end

end A037748.P1015981642793151033

namespace A037748

/-- `xor(∑[A001018(n)], A037797(n+1))` -/
def P1015981642793151033.Spec : Prop :=
  ∀ n, P1015981642793151033.a n = A037748 (n + 1)

end A037748

/-! ## A037748.P7523197545681138687

`xor(A037692(n+1), A037776(n+1))`
-/

namespace A037748.P7523197545681138687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037692 (n + 1)) (A037776 (n + 1))

end

end A037748.P7523197545681138687

namespace A037748

/-- `xor(A037692(n+1), A037776(n+1))` -/
def P7523197545681138687.Spec : Prop :=
  ∀ n, P7523197545681138687.a n = A037748 (n + 1)

end A037748

/-! ## A037748.P10091311749198816150

`xor(A037713(n+1), A037769(n+1))`
-/

namespace A037748.P10091311749198816150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037713 (n + 1)) (A037769 (n + 1))

end

end A037748.P10091311749198816150

namespace A037748

/-- `xor(A037713(n+1), A037769(n+1))` -/
def P10091311749198816150.Spec : Prop :=
  ∀ n, P10091311749198816150.a n = A037748 (n + 1)

end A037748

/-! ## A037748.P2041574645444554845

`A037755(n+1)+A037762(n+1)-A037769(n+1)`
-/

namespace A037748.P2041574645444554845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037755 (n + 1) + (A037762 (n + 1) - A037769 (n + 1))

end

end A037748.P2041574645444554845

namespace A037748

/-- `A037755(n+1)+A037762(n+1)-A037769(n+1)` -/
def P2041574645444554845.Spec : Prop :=
  ∀ n, P2041574645444554845.a n = A037748 (n + 1)

end A037748

/-!
# A037749: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037749, the canonical program `A037749.P432838538654619278` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037749 has offset 1).

The definition of A037749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037749.P432838538654619278

`and(3, n+2)+9*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037749

/-- `and(3, n+2)+9*a(n-1)` -/
def P432838538654619278.Spec : Prop :=
  ∀ n, (P432838538654619278.a n : ℤ) = A037749 (n + 1)

theorem P432838538654619278.correct : P432838538654619278.Spec := by
  intro n
  simp only [A037749, Nat.add_sub_cancel]

end A037749

/-! ## A037749.P15758323060987319845

`A037707(n+1)+A037763(n+1)-A037721(n+1)`
-/

namespace A037749.P15758323060987319845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037763 (n + 1) - A037721 (n + 1))

end

end A037749.P15758323060987319845

namespace A037749

/-- `A037707(n+1)+A037763(n+1)-A037721(n+1)` -/
def P15758323060987319845.Spec : Prop :=
  ∀ n, P15758323060987319845.a n = A037749 (n + 1)

theorem P15758323060987319845.correct : P15758323060987319845.Spec := by
  intro n
  simp only [A037749, Nat.add_sub_cancel, A037749.P15758323060987319845.a, A037749.P432838538654619278.a, A037707, A037707.P11521697123880163545.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037763, A037763.P18333106692901934060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037749

/-! ## A037749.P11535349585894219506

`A037714(n+1)+A037763(n+1)-A037728(n+1)`
-/

namespace A037749.P11535349585894219506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037763 (n + 1) - A037728 (n + 1))

end

end A037749.P11535349585894219506

namespace A037749

/-- `A037714(n+1)+A037763(n+1)-A037728(n+1)` -/
def P11535349585894219506.Spec : Prop :=
  ∀ n, P11535349585894219506.a n = A037749 (n + 1)

end A037749

/-! ## A037749.P15149746216295255028

`A037735(n+1)+A037798(n+1)-A037763(n+1)`
-/

namespace A037749.P15149746216295255028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037735 (n + 1) + (A037798 (n + 1) - A037763 (n + 1))

end

end A037749.P15149746216295255028

namespace A037749

/-- `A037735(n+1)+A037798(n+1)-A037763(n+1)` -/
def P15149746216295255028.Spec : Prop :=
  ∀ n, P15149746216295255028.a n = A037749 (n + 1)

end A037749

/-! ## A037749.P15708921813122671180

`A037756(n+1)+A037763(n+1)-A037770(n+1)`
-/

namespace A037749.P15708921813122671180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037756 (n + 1) + (A037763 (n + 1) - A037770 (n + 1))

end

end A037749.P15708921813122671180

namespace A037749

/-- `A037756(n+1)+A037763(n+1)-A037770(n+1)` -/
def P15708921813122671180.Spec : Prop :=
  ∀ n, P15708921813122671180.a n = A037749 (n + 1)

theorem P15708921813122671180.correct : P15708921813122671180.Spec := by
  intro n
  simp only [A037749, Nat.add_sub_cancel, A037749.P15708921813122671180.a, A037749.P432838538654619278.a, A037756, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037763, A037763.P18333106692901934060.a, A037770, A037770.P11628452646226728937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037749

/-!
# A037750: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,0,1.

The programs for A037750, the canonical program `A037750.P5321415649870020148` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037750 has offset 1).

The definition of A037750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037750.P5321415649870020148

`(n+2)%4+10*a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037750

/-- `(n+2)%4+10*a(n-1)` -/
def P5321415649870020148.Spec : Prop :=
  ∀ n, (P5321415649870020148.a n : ℤ) = A037750 (n + 1)

theorem P5321415649870020148.correct : P5321415649870020148.Spec := by
  intro n
  simp only [A037750, Nat.add_sub_cancel]

end A037750

/-! ## A037750.P1881329382903088613

`and(3, n+2)+10*a(n-1)` with `a(0)=2`
-/

namespace A037750.P1881329382903088613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.land 3 (n + 2) + 10 * a (n - 1)

end

end A037750.P1881329382903088613

namespace A037750

/-- `and(3, n+2)+10*a(n-1)` -/
def P1881329382903088613.Spec : Prop :=
  ∀ n, (P1881329382903088613.a n : ℤ) = A037750 (n + 1)

end A037750

/-! ## A037750.P10169782899454592509

`A010873(n+2)+10*a(n-1)` with `a(0)=2`
-/

namespace A037750.P10169782899454592509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010873 (n + 2) + 10 * a (n - 1)

end

end A037750.P10169782899454592509

namespace A037750

/-- `A010873(n+2)+10*a(n-1)` -/
def P10169782899454592509.Spec : Prop :=
  ∀ n, P10169782899454592509.a n = A037750 (n + 1)

end A037750

/-!
# A037751: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037751, the canonical program `A037751.P9658641866506101768` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037751 has offset 1).

The definition of A037751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037751.P2153075342136443245

`ogf((2+x)/(1-5x+5x^2-5x^3+4x^4))`
-/

namespace A037751.P2153075342136443245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -5, 5, -5, 4] n

end

end A037751.P2153075342136443245

namespace A037751

/-- `ogf((2+x)/(1-5x+5x^2-5x^3+4x^4))` -/
def P2153075342136443245.Spec : Prop :=
  ∀ n, P2153075342136443245.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P9658641866506101768

`floor(12*4^(n+1)/17)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037751

/-- `floor(12*4^(n+1)/17)` -/
def P9658641866506101768.Spec : Prop :=
  ∀ n, P9658641866506101768.a n = A037751 (n + 1)

theorem P9658641866506101768.correct : P9658641866506101768.Spec := by
  intro n
  simp only [A037751, Nat.add_sub_cancel]

end A037751

/-! ## A037751.P12075854634027515726

`A198693(n)-a(n-2)` with `a(0)=2, a(1)=11`
-/

namespace A037751.P12075854634027515726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 11] fun n a =>
  A198693 n - a (n - 2)

end

end A037751.P12075854634027515726

namespace A037751

/-- `A198693(n)-a(n-2)` -/
def P12075854634027515726.Spec : Prop :=
  ∀ n, P12075854634027515726.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P18135993267515667707

`xor(∑[4^n], A037786(n+1))`
-/

namespace A037751.P18135993267515667707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037786 (n + 1))

end

end A037751.P18135993267515667707

namespace A037751

/-- `xor(∑[4^n], A037786(n+1))` -/
def P18135993267515667707.Spec : Prop :=
  ∀ n, P18135993267515667707.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P617317086957240435

`xor(a(n-1), A037489(n+1))` with `a(0)=2`
-/

namespace A037751.P617317086957240435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (a (n - 1)) (A037489 (n + 1))

end

end A037751.P617317086957240435

namespace A037751

/-- `xor(a(n-1), A037489(n+1))` -/
def P617317086957240435.Spec : Prop :=
  ∀ n, P617317086957240435.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P2424064914313512984

`xor(3, or(4*a(n-1), (A000032(n)-1)%5))` with `a(0)=2`
-/

namespace A037751.P2424064914313512984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor 3 (Int.lor (4 * a (n - 1)) (Int.tmod (A000032 n - 1) 5))

end

end A037751.P2424064914313512984

namespace A037751

/-- `xor(3, or(4*a(n-1), (A000032(n)-1)%5))` -/
def P2424064914313512984.Spec : Prop :=
  ∀ n, P2424064914313512984.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P2568132965668454556

`∑[A164346(n)]-A037674(n+1)`
-/

namespace A037751.P2568132965668454556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037674 (n + 1)

end

end A037751.P2568132965668454556

namespace A037751

/-- `∑[A164346(n)]-A037674(n+1)` -/
def P2568132965668454556.Spec : Prop :=
  ∀ n, P2568132965668454556.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P14542468093708450792

`xor(A037702(n+1), A037758(n+1))`
-/

namespace A037751.P14542468093708450792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037702 (n + 1)) (A037758 (n + 1))

end

end A037751.P14542468093708450792

namespace A037751

/-- `xor(A037702(n+1), A037758(n+1))` -/
def P14542468093708450792.Spec : Prop :=
  ∀ n, P14542468093708450792.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P881558462847646216

`xor(A037695(n+1), A037779(n+1))`
-/

namespace A037751.P881558462847646216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A037779 (n + 1))

end

end A037751.P881558462847646216

namespace A037751

/-- `xor(A037695(n+1), A037779(n+1))` -/
def P881558462847646216.Spec : Prop :=
  ∀ n, P881558462847646216.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P11860418538993111308

`xor(A037709(n+1), A043291(n+1))`
-/

namespace A037751.P11860418538993111308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037709 (n + 1)) (A043291 (n + 1))

end

end A037751.P11860418538993111308

namespace A037751

/-- `xor(A037709(n+1), A043291(n+1))` -/
def P11860418538993111308.Spec : Prop :=
  ∀ n, P11860418538993111308.a n = A037751 (n + 1)

end A037751

/-! ## A037751.P16034706680633778928

`2*A224520(2*n+1)-A224520(2*n)`
-/

namespace A037751.P16034706680633778928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A224520 (2 * n + 1) - A224520 (2 * n)

end

end A037751.P16034706680633778928

namespace A037751

/-- `2*A224520(2*n+1)-A224520(2*n)` -/
def P16034706680633778928.Spec : Prop :=
  ∀ n, P16034706680633778928.a n = A037751 (n + 1)

end A037751

/-!
# A037752: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037752, the canonical program `A037752.P8103894507674030329` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037752 has offset 1).

The definition of A037752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037752.P9858429477289651252

`ogf((2+x)/(1-6x+6x^2-6x^3+5x^4))`
-/

namespace A037752.P9858429477289651252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -6, 6, -6, 5] n

end

end A037752.P9858429477289651252

namespace A037752

/-- `ogf((2+x)/(1-6x+6x^2-6x^3+5x^4))` -/
def P9858429477289651252.Spec : Prop :=
  ∀ n, P9858429477289651252.a n = A037752 (n + 1)

end A037752

/-! ## A037752.P8103894507674030329

`∑[xor(5*a(n-1), gcd(2, n))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037752

/-- `∑[xor(5*a(n-1), gcd(2, n))]` -/
def P8103894507674030329.Spec : Prop :=
  ∀ n, (P8103894507674030329.a n : ℤ) = A037752 (n + 1)

theorem P8103894507674030329.correct : P8103894507674030329.Spec := by
  intro n
  simp only [A037752, Nat.add_sub_cancel]

end A037752

/-! ## A037752.P12036089110642928098

`∑[xor(5*a(n-1), A040001(n))]` with `a(0)=2`
-/

namespace A037752.P12036089110642928098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037752.P12036089110642928098

namespace A037752

/-- `∑[xor(5*a(n-1), A040001(n))]` -/
def P12036089110642928098.Spec : Prop :=
  ∀ n, P12036089110642928098.a n = A037752 (n + 1)

end A037752

/-! ## A037752.P17639498159276472006

`∑[xor(5*a(n-1), A134451(n))]` with `a(0)=2`
-/

namespace A037752.P17639498159276472006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A134451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037752.P17639498159276472006

namespace A037752

/-- `∑[xor(5*a(n-1), A134451(n))]` -/
def P17639498159276472006.Spec : Prop :=
  ∀ n, P17639498159276472006.a n = A037752 (n + 1)

end A037752

/-! ## A037752.P9459871210889860672

`A037745(n+1)+A037766(n+1)-A037759(n+1)`
-/

namespace A037752.P9459871210889860672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037745 (n + 1) + (A037766 (n + 1) - A037759 (n + 1))

end

end A037752.P9459871210889860672

namespace A037752

/-- `A037745(n+1)+A037766(n+1)-A037759(n+1)` -/
def P9459871210889860672.Spec : Prop :=
  ∀ n, P9459871210889860672.a n = A037752 (n + 1)

theorem P9459871210889860672.correct : P9459871210889860672.Spec := by
  intro n
  simp only [A037752, Nat.add_sub_cancel, A037752.P9459871210889860672.a, A037752.P8103894507674030329.f1, A037752.P8103894507674030329.a, A037745, A037745.P16806909000048906870.a, A037759, A037759.P7672012952696768290.a, A037766, A037766.P15632211533706168488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037752

/-! ## A037752.P16526001615287341160

`A037738(n+1)+A037787(n+1)-A037766(n+1)`
-/

namespace A037752.P16526001615287341160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037738 (n + 1) + (A037787 (n + 1) - A037766 (n + 1))

end

end A037752.P16526001615287341160

namespace A037752

/-- `A037738(n+1)+A037787(n+1)-A037766(n+1)` -/
def P16526001615287341160.Spec : Prop :=
  ∀ n, P16526001615287341160.a n = A037752 (n + 1)

end A037752

/-! ## A037752.P10167965475457281536

`Δ[∑[A037780(n+1)]-A037794(n+1)]`
-/

namespace A037752.P10167965475457281536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037780 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037752.P10167965475457281536

namespace A037752

/-- `Δ[∑[A037780(n+1)]-A037794(n+1)]` -/
def P10167965475457281536.Spec : Prop :=
  ∀ n, P10167965475457281536.a n = A037752 (n + 1)

end A037752

/-!
# A037753: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037753, the canonical program `A037753.P10507737516097663728` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037753 has offset 1).

The definition of A037753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037753.P9579834792944151264

`ogf((2+x)/(1-7x+7x^2-7x^3+6x^4))`
-/

namespace A037753.P9579834792944151264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -7, 7, -7, 6] n

end

end A037753.P9579834792944151264

namespace A037753

/-- `ogf((2+x)/(1-7x+7x^2-7x^3+6x^4))` -/
def P9579834792944151264.Spec : Prop :=
  ∀ n, P9579834792944151264.a n = A037753 (n + 1)

end A037753

/-! ## A037753.P10507737516097663728

`A037746(n+1)+A037767(n+1)-A037760(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037753

/-- `A037746(n+1)+A037767(n+1)-A037760(n+1)` -/
def P10507737516097663728.Spec : Prop :=
  ∀ n, P10507737516097663728.a n = A037753 (n + 1)

theorem P10507737516097663728.correct : P10507737516097663728.Spec := by
  intro n
  simp only [A037753, Nat.add_sub_cancel]

end A037753

/-! ## A037753.P6831506032284375376

`A037781(n+2)-Δ[A037795(n+1)]`
-/

namespace A037753.P6831506032284375376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037781 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037753.P6831506032284375376

namespace A037753

/-- `A037781(n+2)-Δ[A037795(n+1)]` -/
def P6831506032284375376.Spec : Prop :=
  ∀ n, P6831506032284375376.a n = A037753 (n + 1)

end A037753

/-! ## A037753.P5420879114605642426

`A037781(n+1)+Δ[A037760(n+1)-A037774(n+1)]`
-/

namespace A037753.P5420879114605642426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) - A037774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037781 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037753.P5420879114605642426

namespace A037753

/-- `A037781(n+1)+Δ[A037760(n+1)-A037774(n+1)]` -/
def P5420879114605642426.Spec : Prop :=
  ∀ n, P5420879114605642426.a n = A037753 (n + 1)

end A037753

/-! ## A037753.P5942770454747746387

`A037788(n+1)+Δ[A037767(n+1)-A037781(n+1)]`
-/

namespace A037753.P5942770454747746387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - A037781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037788 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037753.P5942770454747746387

namespace A037753

/-- `A037788(n+1)+Δ[A037767(n+1)-A037781(n+1)]` -/
def P5942770454747746387.Spec : Prop :=
  ∀ n, P5942770454747746387.a n = A037753 (n + 1)

end A037753

/-! ## A037753.P5020069348526148429

`A037788(n+1)+Δ[A037774(n+1)-A037788(n+1)]`
-/

namespace A037753.P5020069348526148429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) - A037788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037788 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037753.P5020069348526148429

namespace A037753

/-- `A037788(n+1)+Δ[A037774(n+1)-A037788(n+1)]` -/
def P5020069348526148429.Spec : Prop :=
  ∀ n, P5020069348526148429.a n = A037753 (n + 1)

end A037753

/-! ## A037753.P8574696494061047075

`or(6*a(n-1), A020639(A153875(n)))` with `a(0)=2`
-/

namespace A037753.P8574696494061047075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.lor (6 * a (n - 1)) (A020639 (A153875 n).toNat)

end

end A037753.P8574696494061047075

namespace A037753

/-- `or(6*a(n-1), A020639(A153875(n)))` -/
def P8574696494061047075.Spec : Prop :=
  ∀ n, P8574696494061047075.a n = A037753 (n + 1)

end A037753

/-!
# A037754: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037754, the canonical program `A037754.P17162124263066232591` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037754 has offset 1).

The definition of A037754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037754.P17162124263066232591

`8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` with `a(0)=2, a(1)=17, a(2)=120, a(3)=840`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037754

/-- `8*a(n-1)-8*a(n-2)+8*a(n-3)-7*a(n-4)` -/
def P17162124263066232591.Spec : Prop :=
  ∀ n, P17162124263066232591.a n = A037754 (n + 1)

theorem P17162124263066232591.correct : P17162124263066232591.Spec := by
  intro n
  simp only [A037754, Nat.add_sub_cancel]

end A037754

/-! ## A037754.P7267400131852324924

`1/2*floor(7^(n+2)/10)`
-/

namespace A037754.P7267400131852324924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (⌊(7 ^ (n + 2) : ℚ) / 10⌋ : ℚ)

end

end A037754.P7267400131852324924

namespace A037754

/-- `1/2*floor(7^(n+2)/10)` -/
def P7267400131852324924.Spec : Prop :=
  ∀ n, P7267400131852324924.a n = (A037754 (n + 1) : ℚ)

end A037754

/-! ## A037754.P1927570692522190938

`ogf((2+x)/(1-8x+8x^2-8x^3+7x^4))`
-/

namespace A037754.P1927570692522190938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -8, 8, -8, 7] n

end

end A037754.P1927570692522190938

namespace A037754

/-- `ogf((2+x)/(1-8x+8x^2-8x^3+7x^4))` -/
def P1927570692522190938.Spec : Prop :=
  ∀ n, P1927570692522190938.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P13164897626662975070

`floor((a(n-1)+7^(n+1))/3)` with `a(0)=2`
-/

namespace A037754.P13164897626662975070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) + (7 ^ (n + 1) : ℤ) : ℚ) / 3⌋

end

end A037754.P13164897626662975070

namespace A037754

/-- `floor((a(n-1)+7^(n+1))/3)` -/
def P13164897626662975070.Spec : Prop :=
  ∀ n, P13164897626662975070.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P595950724321399922

`Δ[A178829(n+1)]`
-/

namespace A037754.P595950724321399922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037754.P595950724321399922

namespace A037754

/-- `Δ[A178829(n+1)]` -/
def P595950724321399922.Spec : Prop :=
  ∀ n, P595950724321399922.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P3738598051473506390

`floor(A037677(n+2)/3)`
-/

namespace A037754.P3738598051473506390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037677 (n + 2) : ℚ) / 3⌋

end

end A037754.P3738598051473506390

namespace A037754

/-- `floor(A037677(n+2)/3)` -/
def P3738598051473506390.Spec : Prop :=
  ∀ n, P3738598051473506390.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P1727609235336144896

`record[Δ[A178829(A178787(n))]]`
-/

namespace A037754.P1727609235336144896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178829 (A178787 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037754.P1727609235336144896

namespace A037754

/-- `record[Δ[A178829(A178787(n))]]` -/
def P1727609235336144896.Spec : Prop :=
  ∀ n, P1727609235336144896.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P14641706533312820211

`A120741(n+1)-A037677(n+1)`
-/

namespace A037754.P14641706533312820211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 (n + 1) - A037677 (n + 1)

end

end A037754.P14641706533312820211

namespace A037754

/-- `A120741(n+1)-A037677(n+1)` -/
def P14641706533312820211.Spec : Prop :=
  ∀ n, P14641706533312820211.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P4191857985898188243

`A178829(n+2)-A178829(n+1)`
-/

namespace A037754.P4191857985898188243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178829 (n + 2) - A178829 (n + 1)

end

end A037754.P4191857985898188243

namespace A037754

/-- `A178829(n+2)-A178829(n+1)` -/
def P4191857985898188243.Spec : Prop :=
  ∀ n, P4191857985898188243.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P8440316794516860462

`∑[A037775(n+1)-A037677(n+1)]`
-/

namespace A037754.P8440316794516860462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037775 (n + 1) - A037677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037754.P8440316794516860462

namespace A037754

/-- `∑[A037775(n+1)-A037677(n+1)]` -/
def P8440316794516860462.Spec : Prop :=
  ∀ n, P8440316794516860462.a n = A037754 (n + 1)

end A037754

/-! ## A037754.P7200441599594997073

`round(A037775(n+3)/63)`
-/

namespace A037754.P7200441599594997073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A037775 (n + 3) : ℚ) / 63)

end

end A037754.P7200441599594997073

namespace A037754

/-- `round(A037775(n+3)/63)` -/
def P7200441599594997073.Spec : Prop :=
  ∀ n, P7200441599594997073.a n = A037754 (n + 1)

end A037754

/-!
# A037755: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037755, the canonical program `A037755.P7336961172836670918` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037755 has offset 1).

The definition of A037755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037755.P5849466138170986149

`ogf((2+x)/(1-9x+9x^2-9x^3+8x^4))`
-/

namespace A037755.P5849466138170986149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -9, 9, -9, 8] n

end

end A037755.P5849466138170986149

namespace A037755

/-- `ogf((2+x)/(1-9x+9x^2-9x^3+8x^4))` -/
def P5849466138170986149.Spec : Prop :=
  ∀ n, P5849466138170986149.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P16163485529209125478

`xor(∑[8^n], A037790(n+1))`
-/

namespace A037755.P16163485529209125478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037790 (n + 1))

end

end A037755.P16163485529209125478

namespace A037755

/-- `xor(∑[8^n], A037790(n+1))` -/
def P16163485529209125478.Spec : Prop :=
  ∀ n, P16163485529209125478.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P7336961172836670918

`xor(a(n-1), A037493(n+1))` with `a(0)=2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037755

/-- `xor(a(n-1), A037493(n+1))` -/
def P7336961172836670918.Spec : Prop :=
  ∀ n, P7336961172836670918.a n = A037755 (n + 1)

theorem P7336961172836670918.correct : P7336961172836670918.Spec := by
  intro n
  simp only [A037755, Nat.add_sub_cancel]

end A037755

/-! ## A037755.P2551831297740787976

`xor(A037485(n+1), A037776(n+1))`
-/

namespace A037755.P2551831297740787976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037485 (n + 1)) (A037776 (n + 1))

end

end A037755.P2551831297740787976

namespace A037755

/-- `xor(A037485(n+1), A037776(n+1))` -/
def P2551831297740787976.Spec : Prop :=
  ∀ n, P2551831297740787976.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P5419124572177940027

`xor(A037706(n+1), A037762(n+1))`
-/

namespace A037755.P5419124572177940027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037706 (n + 1)) (A037762 (n + 1))

end

end A037755.P5419124572177940027

namespace A037755

/-- `xor(A037706(n+1), A037762(n+1))` -/
def P5419124572177940027.Spec : Prop :=
  ∀ n, P5419124572177940027.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P16799655857159950950

`xor(A037699(n+1), A037783(n+1))`
-/

namespace A037755.P16799655857159950950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037699 (n + 1)) (A037783 (n + 1))

end

end A037755.P16799655857159950950

namespace A037755

/-- `xor(A037699(n+1), A037783(n+1))` -/
def P16799655857159950950.Spec : Prop :=
  ∀ n, P16799655857159950950.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P9971107410177714768

`A037692(n+1)+A037783(n+1)-A037720(n+1)`
-/

namespace A037755.P9971107410177714768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037692 (n + 1) + (A037783 (n + 1) - A037720 (n + 1))

end

end A037755.P9971107410177714768

namespace A037755

/-- `A037692(n+1)+A037783(n+1)-A037720(n+1)` -/
def P9971107410177714768.Spec : Prop :=
  ∀ n, P9971107410177714768.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P3981325251066340565

`A037713(n+1)+A037783(n+1)-A037741(n+1)`
-/

namespace A037755.P3981325251066340565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037713 (n + 1) + (A037783 (n + 1) - A037741 (n + 1))

end

end A037755.P3981325251066340565

namespace A037755

/-- `A037713(n+1)+A037783(n+1)-A037741(n+1)` -/
def P3981325251066340565.Spec : Prop :=
  ∀ n, P3981325251066340565.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P4820069801340297760

`A037748(n+1)+A037769(n+1)-A037762(n+1)`
-/

namespace A037755.P4820069801340297760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037748 (n + 1) + (A037769 (n + 1) - A037762 (n + 1))

end

end A037755.P4820069801340297760

namespace A037755

/-- `A037748(n+1)+A037769(n+1)-A037762(n+1)` -/
def P4820069801340297760.Spec : Prop :=
  ∀ n, P4820069801340297760.a n = A037755 (n + 1)

end A037755

/-! ## A037755.P11828082696876408304

`Δ[∑[A037783(n+1)]-A037797(n+1)]`
-/

namespace A037755.P11828082696876408304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037783 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037755.P11828082696876408304

namespace A037755

/-- `Δ[∑[A037783(n+1)]-A037797(n+1)]` -/
def P11828082696876408304.Spec : Prop :=
  ∀ n, P11828082696876408304.a n = A037755 (n + 1)

end A037755

/-!
# A037756: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037756, the canonical program `A037756.P3057694834929139515` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037756 has offset 1).

The definition of A037756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037756.P7293180882690310681

`ogf((2+x)/(1-10x+10x^2-10x^3+9x^4))`
-/

namespace A037756.P7293180882690310681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -10, 10, -10, 9] n

end

end A037756.P7293180882690310681

namespace A037756

/-- `ogf((2+x)/(1-10x+10x^2-10x^3+9x^4))` -/
def P7293180882690310681.Spec : Prop :=
  ∀ n, P7293180882690310681.a n = A037756 (n + 1)

end A037756

/-! ## A037756.P3057694834929139515

`∑[xor(9*a(n-1), gcd(2, n))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037756

/-- `∑[xor(9*a(n-1), gcd(2, n))]` -/
def P3057694834929139515.Spec : Prop :=
  ∀ n, (P3057694834929139515.a n : ℤ) = A037756 (n + 1)

theorem P3057694834929139515.correct : P3057694834929139515.Spec := by
  intro n
  simp only [A037756, Nat.add_sub_cancel]

end A037756

/-! ## A037756.P16872519844746251603

`∑[xor(9*a(n-1), A040001(n))]` with `a(0)=2`
-/

namespace A037756.P16872519844746251603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A040001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037756.P16872519844746251603

namespace A037756

/-- `∑[xor(9*a(n-1), A040001(n))]` -/
def P16872519844746251603.Spec : Prop :=
  ∀ n, P16872519844746251603.a n = A037756 (n + 1)

end A037756

/-! ## A037756.P6180122886660802585

`∑[xor(9*a(n-1), A134451(n))]` with `a(0)=2`
-/

namespace A037756.P6180122886660802585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A134451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037756.P6180122886660802585

namespace A037756

/-- `∑[xor(9*a(n-1), A134451(n))]` -/
def P6180122886660802585.Spec : Prop :=
  ∀ n, P6180122886660802585.a n = A037756 (n + 1)

end A037756

/-! ## A037756.P5339430860941174231

`∑[xor(9*a(n-1), A000034(n+1))]` with `a(0)=2`
-/

namespace A037756.P5339430860941174231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A000034 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037756.P5339430860941174231

namespace A037756

/-- `∑[xor(9*a(n-1), A000034(n+1))]` -/
def P5339430860941174231.Spec : Prop :=
  ∀ n, P5339430860941174231.a n = A037756 (n + 1)

end A037756

/-! ## A037756.P1986726696351744313

`A037707(n+1)+A037770(n+1)-A037721(n+1)`
-/

namespace A037756.P1986726696351744313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 1) + (A037770 (n + 1) - A037721 (n + 1))

end

end A037756.P1986726696351744313

namespace A037756

/-- `A037707(n+1)+A037770(n+1)-A037721(n+1)` -/
def P1986726696351744313.Spec : Prop :=
  ∀ n, P1986726696351744313.a n = A037756 (n + 1)

theorem P1986726696351744313.correct : P1986726696351744313.Spec := by
  intro n
  simp only [A037756, Nat.add_sub_cancel, A037756.P1986726696351744313.a, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037707, A037707.P11521697123880163545.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037770, A037770.P11628452646226728937.a, A037749, A037749.P432838538654619278.a, A037763, A037763.P18333106692901934060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037756

/-! ## A037756.P13181218719434907656

`A037714(n+1)+A037770(n+1)-A037728(n+1)`
-/

namespace A037756.P13181218719434907656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037770 (n + 1) - A037728 (n + 1))

end

end A037756.P13181218719434907656

namespace A037756

/-- `A037714(n+1)+A037770(n+1)-A037728(n+1)` -/
def P13181218719434907656.Spec : Prop :=
  ∀ n, P13181218719434907656.a n = A037756 (n + 1)

end A037756

/-! ## A037756.P7237442907471228302

`A037749(n+1)+A037770(n+1)-A037763(n+1)`
-/

namespace A037756.P7237442907471228302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037749 (n + 1) + (A037770 (n + 1) - A037763 (n + 1))

end

end A037756.P7237442907471228302

namespace A037756

/-- `A037749(n+1)+A037770(n+1)-A037763(n+1)` -/
def P7237442907471228302.Spec : Prop :=
  ∀ n, P7237442907471228302.a n = A037756 (n + 1)

theorem P7237442907471228302.correct : P7237442907471228302.Spec := by
  intro n
  simp only [A037756, Nat.add_sub_cancel, A037756.P7237442907471228302.a, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037749, A037749.P432838538654619278.a, A037763, A037763.P18333106692901934060.a, A037770, A037770.P11628452646226728937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037756

/-! ## A037756.P16055734308434512477

`A037784(n+2)-Δ[A037798(n+1)]`
-/

namespace A037756.P16055734308434512477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037784 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037756.P16055734308434512477

namespace A037756

/-- `A037784(n+2)-Δ[A037798(n+1)]` -/
def P16055734308434512477.Spec : Prop :=
  ∀ n, P16055734308434512477.a n = A037756 (n + 1)

end A037756

/-!
# A037757: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 2,3,1,0.

The programs for A037757, the canonical program `A037757.P10587528599043428428` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037757 has offset 1).

The definition of A037757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037757.P1872515089569797259

`∑[ogf((2+x)/(1-10x+x^2-10x^3))]`
-/

namespace A037757.P1872515089569797259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1] [1, -10, 1, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037757.P1872515089569797259

namespace A037757

/-- `∑[ogf((2+x)/(1-10x+x^2-10x^3))]` -/
def P1872515089569797259.Spec : Prop :=
  ∀ n, P1872515089569797259.a n = A037757 (n + 1)

end A037757

/-! ## A037757.P10587528599043428428

`A198972(n)-a(n-2)` with `a(0)=2, a(1)=23`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037757

/-- `A198972(n)-a(n-2)` -/
def P10587528599043428428.Spec : Prop :=
  ∀ n, P10587528599043428428.a n = A037757 (n + 1)

theorem P10587528599043428428.correct : P10587528599043428428.Spec := by
  intro n
  simp only [A037757, Nat.add_sub_cancel]

end A037757

/-! ## A037757.P12226327955593346985

`A256304(A037688(n+1))`
-/

namespace A037757.P12226327955593346985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A037688 (n + 1)).toNat

end

end A037757.P12226327955593346985

namespace A037757

/-- `A256304(A037688(n+1))` -/
def P12226327955593346985.Spec : Prop :=
  ∀ n, P12226327955593346985.a n = A037757 (n + 1)

end A037757

/-!
# A037758: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037758, the canonical program `A037758.P1537739424458287798` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037758 has offset 1).

The definition of A037758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037758.P1537739424458287798

`(n-1)%4+4*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037758

/-- `(n-1)%4+4*a(n-1)` -/
def P1537739424458287798.Spec : Prop :=
  ∀ n, P1537739424458287798.a n = A037758 (n + 1)

theorem P1537739424458287798.correct : P1537739424458287798.Spec := by
  intro n
  simp only [A037758, Nat.add_sub_cancel]

end A037758

/-! ## A037758.P8072240244502018292

`4*a(n-1)-(1-n)%4` with `a(0)=3`
-/

namespace A037758.P8072240244502018292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 4

end

end A037758.P8072240244502018292

namespace A037758

/-- `4*a(n-1)-(1-n)%4` -/
def P8072240244502018292.Spec : Prop :=
  ∀ n, P8072240244502018292.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P11841514873862643635

`and(3, n-1)+4*a(n-1)` with `a(0)=3`
-/

namespace A037758.P11841514873862643635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 ((n : ℤ) - 1) + 4 * a (n - 1)

end

end A037758.P11841514873862643635

namespace A037758

/-- `and(3, n-1)+4*a(n-1)` -/
def P11841514873862643635.Spec : Prop :=
  ∀ n, P11841514873862643635.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P2998513523509704997

`or(4*a(n-1), and(3, n-1))` with `a(0)=3`
-/

namespace A037758.P2998513523509704997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (4 * a (n - 1)) (Int.land 3 ((n : ℤ) - 1))

end

end A037758.P2998513523509704997

namespace A037758

/-- `or(4*a(n-1), and(3, n-1))` -/
def P2998513523509704997.Spec : Prop :=
  ∀ n, P2998513523509704997.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P13709230014762383173

`xor(4*a(n-1), and(3, n-1))` with `a(0)=3`
-/

namespace A037758.P13709230014762383173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor (4 * a (n - 1)) (Int.land 3 ((n : ℤ) - 1))

end

end A037758.P13709230014762383173

namespace A037758

/-- `xor(4*a(n-1), and(3, n-1))` -/
def P13709230014762383173.Spec : Prop :=
  ∀ n, P13709230014762383173.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P5777489551855462680

`xor(A037793(n+1), A117616(n))`
-/

namespace A037758.P5777489551855462680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037793 (n + 1)) (A117616 n)

end

end A037758.P5777489551855462680

namespace A037758

/-- `xor(A037793(n+1), A117616(n))` -/
def P5777489551855462680.Spec : Prop :=
  ∀ n, P5777489551855462680.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P10918037303981183565

`xor(∑[A255465(n)], A037744(n+1))`
-/

namespace A037758.P10918037303981183565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037744 (n + 1))

end

end A037758.P10918037303981183565

namespace A037758

/-- `xor(∑[A255465(n)], A037744(n+1))` -/
def P10918037303981183565.Spec : Prop :=
  ∀ n, P10918037303981183565.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P14856518182273338534

`xor(A037576(n+1), A037744(n+1))`
-/

namespace A037758.P14856518182273338534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037576 (n + 1)) (A037744 (n + 1))

end

end A037758.P14856518182273338534

namespace A037758

/-- `xor(A037576(n+1), A037744(n+1))` -/
def P14856518182273338534.Spec : Prop :=
  ∀ n, P14856518182273338534.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P13117984278374223343

`xor(A037674(n+1), A037723(n+1))`
-/

namespace A037758.P13117984278374223343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037674 (n + 1)) (A037723 (n + 1))

end

end A037758.P13117984278374223343

namespace A037758

/-- `xor(A037674(n+1), A037723(n+1))` -/
def P13117984278374223343.Spec : Prop :=
  ∀ n, P13117984278374223343.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P6488935058393605458

`xor(A037702(n+1), A037751(n+1))`
-/

namespace A037758.P6488935058393605458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037702 (n + 1)) (A037751 (n + 1))

end

end A037758.P6488935058393605458

namespace A037758

/-- `xor(A037702(n+1), A037751(n+1))` -/
def P6488935058393605458.Spec : Prop :=
  ∀ n, P6488935058393605458.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P6068051905181893167

`xor(A037681(n+1), A117616(n+1))`
-/

namespace A037758.P6068051905181893167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A117616 (n + 1))

end

end A037758.P6068051905181893167

namespace A037758

/-- `xor(A037681(n+1), A117616(n+1))` -/
def P6068051905181893167.Spec : Prop :=
  ∀ n, P6068051905181893167.a n = A037758 (n + 1)

end A037758

/-! ## A037758.P3026790138257650879

`xor(floor(7*A001045(2*(n+1))/5), A037744(n+1))`
-/

namespace A037758.P3026790138257650879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(7 * A001045 (2 * (n + 1)) : ℚ) / 5⌋ (A037744 (n + 1))

end

end A037758.P3026790138257650879

namespace A037758

/-- `xor(floor(7*A001045(2*(n+1))/5), A037744(n+1))` -/
def P3026790138257650879.Spec : Prop :=
  ∀ n, P3026790138257650879.a n = A037758 (n + 1)

end A037758

/-!
# A037759: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037759, the canonical program `A037759.P7672012952696768290` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037759 has offset 1).

The definition of A037759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037759.P7672012952696768290

`(n-1)%4+5*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037759

/-- `(n-1)%4+5*a(n-1)` -/
def P7672012952696768290.Spec : Prop :=
  ∀ n, P7672012952696768290.a n = A037759 (n + 1)

theorem P7672012952696768290.correct : P7672012952696768290.Spec := by
  intro n
  simp only [A037759, Nat.add_sub_cancel]

end A037759

/-! ## A037759.P11250780492235280515

`5*a(n-1)-(1-n)%4` with `a(0)=3`
-/

namespace A037759.P11250780492235280515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  5 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 4

end

end A037759.P11250780492235280515

namespace A037759

/-- `5*a(n-1)-(1-n)%4` -/
def P11250780492235280515.Spec : Prop :=
  ∀ n, P11250780492235280515.a n = A037759 (n + 1)

end A037759

/-! ## A037759.P11181148993339139271

`and(3, n-1)+5*a(n-1)` with `a(0)=3`
-/

namespace A037759.P11181148993339139271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 ((n : ℤ) - 1) + 5 * a (n - 1)

end

end A037759.P11181148993339139271

namespace A037759

/-- `and(3, n-1)+5*a(n-1)` -/
def P11181148993339139271.Spec : Prop :=
  ∀ n, P11181148993339139271.a n = A037759 (n + 1)

end A037759

/-! ## A037759.P3511314946546323962

`A037745(n+1)+A037766(n+1)-A037752(n+1)`
-/

namespace A037759.P3511314946546323962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037745 (n + 1) + (A037766 (n + 1) - A037752 (n + 1))

end

end A037759.P3511314946546323962

namespace A037759

/-- `A037745(n+1)+A037766(n+1)-A037752(n+1)` -/
def P3511314946546323962.Spec : Prop :=
  ∀ n, P3511314946546323962.a n = A037759 (n + 1)

theorem P3511314946546323962.correct : P3511314946546323962.Spec := by
  intro n
  simp only [A037759, Nat.add_sub_cancel, A037759.P3511314946546323962.a, A037759.P7672012952696768290.a, A037745, A037745.P16806909000048906870.a, A037752, A037752.P8103894507674030329.f1, A037752.P8103894507674030329.a, A037766, A037766.P15632211533706168488.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037759

/-! ## A037759.P2714894120457028944

`A037766(n+1)+A037787(n+1)-A037794(n+1)`
-/

namespace A037759.P2714894120457028944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1) + (A037787 (n + 1) - A037794 (n + 1))

end

end A037759.P2714894120457028944

namespace A037759

/-- `A037766(n+1)+A037787(n+1)-A037794(n+1)` -/
def P2714894120457028944.Spec : Prop :=
  ∀ n, P2714894120457028944.a n = A037759 (n + 1)

end A037759

/-! ## A037759.P7755124303067844296

`A037773(n+1)+A037780(n+1)-A037794(n+1)`
-/

namespace A037759.P7755124303067844296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037773 (n + 1) + (A037780 (n + 1) - A037794 (n + 1))

end

end A037759.P7755124303067844296

namespace A037759

/-- `A037773(n+1)+A037780(n+1)-A037794(n+1)` -/
def P7755124303067844296.Spec : Prop :=
  ∀ n, P7755124303067844296.a n = A037759 (n + 1)

end A037759

/-!
# A037760: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037760, the canonical program `A037760.P8631641189815898` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037760 has offset 1).

The definition of A037760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037760.P8631641189815898

`(n-1)%4+6*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037760

/-- `(n-1)%4+6*a(n-1)` -/
def P8631641189815898.Spec : Prop :=
  ∀ n, P8631641189815898.a n = A037760 (n + 1)

theorem P8631641189815898.correct : P8631641189815898.Spec := by
  intro n
  simp only [A037760, Nat.add_sub_cancel]

end A037760

/-! ## A037760.P13918612607737286996

`6*a(n-1)-(1-n)%4` with `a(0)=3`
-/

namespace A037760.P13918612607737286996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  6 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 4

end

end A037760.P13918612607737286996

namespace A037760

/-- `6*a(n-1)-(1-n)%4` -/
def P13918612607737286996.Spec : Prop :=
  ∀ n, P13918612607737286996.a n = A037760 (n + 1)

end A037760

/-! ## A037760.P3037673663797820881

`and(3, n-1)+6*a(n-1)` with `a(0)=3`
-/

namespace A037760.P3037673663797820881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 ((n : ℤ) - 1) + 6 * a (n - 1)

end

end A037760.P3037673663797820881

namespace A037760

/-- `and(3, n-1)+6*a(n-1)` -/
def P3037673663797820881.Spec : Prop :=
  ∀ n, P3037673663797820881.a n = A037760 (n + 1)

end A037760

/-! ## A037760.P15943781493116280281

`or(3, a(n-1))+5*a(n-1)` with `a(0)=3`
-/

namespace A037760.P15943781493116280281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 3 (a (n - 1)) + 5 * a (n - 1)

end

end A037760.P15943781493116280281

namespace A037760

/-- `or(3, a(n-1))+5*a(n-1)` -/
def P15943781493116280281.Spec : Prop :=
  ∀ n, (P15943781493116280281.a n : ℤ) = A037760 (n + 1)

end A037760

/-! ## A037760.P266422868624028639

`or(3, a(n-1))-5*round(-a(n-1))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A037760.P266422868624028639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 3 (a (n - 1)) - 5 * (-a (n - 1))

end

end A037760.P266422868624028639

namespace A037760

/-- `or(3, a(n-1))-5*round(-a(n-1))` -/
def P266422868624028639.Spec : Prop :=
  ∀ n, P266422868624028639.a n = A037760 (n + 1)

end A037760

/-! ## A037760.P1243850182184638005

`Δ[∑[A037697(n+1)]-A037683(n+1)]`
-/

namespace A037760.P1243850182184638005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037697 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037760.P1243850182184638005

namespace A037760

/-- `Δ[∑[A037697(n+1)]-A037683(n+1)]` -/
def P1243850182184638005.Spec : Prop :=
  ∀ n, P1243850182184638005.a n = A037760 (n + 1)

end A037760

/-!
# A037761: Base-7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037761, the canonical program `A037761.P7195593094420718256` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037761 has offset 1).

The definition of A037761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037761.P7195593094420718256

`and(3, n-1)+7*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037761

/-- `and(3, n-1)+7*a(n-1)` -/
def P7195593094420718256.Spec : Prop :=
  ∀ n, P7195593094420718256.a n = A037761 (n + 1)

theorem P7195593094420718256.correct : P7195593094420718256.Spec := by
  intro n
  simp only [A037761, Nat.add_sub_cancel]

end A037761

/-! ## A037761.P8378376436367489645

`a(n-1)+6*a(n-1)-(1-n)%4` with `a(0)=3`
-/

namespace A037761.P8378376436367489645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (6 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 4)

end

end A037761.P8378376436367489645

namespace A037761

/-- `a(n-1)+6*a(n-1)-(1-n)%4` -/
def P8378376436367489645.Spec : Prop :=
  ∀ n, P8378376436367489645.a n = A037761 (n + 1)

end A037761

/-! ## A037761.P8919944767405129226

`A037719(n+1)+A037726(n+1)-A037684(n+1)`
-/

namespace A037761.P8919944767405129226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037726 (n + 1) - A037684 (n + 1))

end

end A037761.P8919944767405129226

namespace A037761

/-- `A037719(n+1)+A037726(n+1)-A037684(n+1)` -/
def P8919944767405129226.Spec : Prop :=
  ∀ n, P8919944767405129226.a n = A037761 (n + 1)

theorem P8919944767405129226.correct : P8919944767405129226.Spec := by
  intro n
  simp only [A037761, Nat.add_sub_cancel, A037761.P8919944767405129226.a, A037761.P7195593094420718256.a, A037684, A037684.P14194998553466054021.a, A037719, A037719.P11049252179318265615.a, A037726, A037726.P10810606024213061310.a, A037705, A037705.P13871482217024803718.a, A037747, A037747.P6387786444260834050.a, A120741, A120741.P5110243079029674494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037761

/-! ## A037761.P11318566926961640190

`A037684(n+1)+A037796(n+1)-A037698(n+1)`
-/

namespace A037761.P11318566926961640190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037796 (n + 1) - A037698 (n + 1))

end

end A037761.P11318566926961640190

namespace A037761

/-- `A037684(n+1)+A037796(n+1)-A037698(n+1)` -/
def P11318566926961640190.Spec : Prop :=
  ∀ n, P11318566926961640190.a n = A037761 (n + 1)

end A037761

/-! ## A037761.P3771071766523083269

`A037719(n+1)+A037747(n+1)-A037705(n+1)`
-/

namespace A037761.P3771071766523083269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037747 (n + 1) - A037705 (n + 1))

end

end A037761.P3771071766523083269

namespace A037761

/-- `A037719(n+1)+A037747(n+1)-A037705(n+1)` -/
def P3771071766523083269.Spec : Prop :=
  ∀ n, P3771071766523083269.a n = A037761 (n + 1)

theorem P3771071766523083269.correct : P3771071766523083269.Spec := by
  intro n
  simp only [A037761, Nat.add_sub_cancel, A037761.P3771071766523083269.a, A037761.P7195593094420718256.a, A037705, A037705.P13871482217024803718.a, A037719, A037719.P11049252179318265615.a, A037747, A037747.P6387786444260834050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037761

/-! ## A037761.P12124871418575051165

`A037726(n+1)+A037747(n+1)-A037712(n+1)`
-/

namespace A037761.P12124871418575051165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037726 (n + 1) + (A037747 (n + 1) - A037712 (n + 1))

end

end A037761.P12124871418575051165

namespace A037761

/-- `A037726(n+1)+A037747(n+1)-A037712(n+1)` -/
def P12124871418575051165.Spec : Prop :=
  ∀ n, P12124871418575051165.a n = A037761 (n + 1)

end A037761

/-!
# A037762: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037762, the canonical program `A037762.P6734730486496255907` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037762 has offset 1).

The definition of A037762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037762.P6734730486496255907

`xor(2, (n+1)%4+8*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037762

/-- `xor(2, (n+1)%4+8*a(n-1))` -/
def P6734730486496255907.Spec : Prop :=
  ∀ n, (P6734730486496255907.a n : ℤ) = A037762 (n + 1)

theorem P6734730486496255907.correct : P6734730486496255907.Spec := by
  intro n
  simp only [A037762, Nat.add_sub_cancel]

end A037762

/-! ## A037762.P3312644995730329953

`a(n-1)+and(3, n-1)+7*a(n-1)` with `a(0)=3`
-/

namespace A037762.P3312644995730329953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (Int.land 3 ((n : ℤ) - 1) + 7 * a (n - 1))

end

end A037762.P3312644995730329953

namespace A037762

/-- `a(n-1)+and(3, n-1)+7*a(n-1)` -/
def P3312644995730329953.Spec : Prop :=
  ∀ n, P3312644995730329953.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P8363728744542062833

`xor(∑[A001018(n)], A037734(n+1))`
-/

namespace A037762.P8363728744542062833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037734 (n + 1))

end

end A037762.P8363728744542062833

namespace A037762

/-- `xor(∑[A001018(n)], A037734(n+1))` -/
def P8363728744542062833.Spec : Prop :=
  ∀ n, P8363728744542062833.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P17935803451558824704

`xor(A037706(n+1), A037755(n+1))`
-/

namespace A037762.P17935803451558824704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037706 (n + 1)) (A037755 (n + 1))

end

end A037762.P17935803451558824704

namespace A037762

/-- `xor(A037706(n+1), A037755(n+1))` -/
def P17935803451558824704.Spec : Prop :=
  ∀ n, P17935803451558824704.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P3114135377159621031

`A113405(3*(n+1))+A037734(n+1)`
-/

namespace A037762.P3114135377159621031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (3 * (n + 1)) + A037734 (n + 1)

end

end A037762.P3114135377159621031

namespace A037762

/-- `A113405(3*(n+1))+A037734(n+1)` -/
def P3114135377159621031.Spec : Prop :=
  ∀ n, P3114135377159621031.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P10719750318425465149

`A037748(n+1)+A037769(n+1)-A037755(n+1)`
-/

namespace A037762.P10719750318425465149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037748 (n + 1) + (A037769 (n + 1) - A037755 (n + 1))

end

end A037762.P10719750318425465149

namespace A037762

/-- `A037748(n+1)+A037769(n+1)-A037755(n+1)` -/
def P10719750318425465149.Spec : Prop :=
  ∀ n, P10719750318425465149.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P15694683111145461898

`A037769(n+1)+A037790(n+1)-A037797(n+1)`
-/

namespace A037762.P15694683111145461898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 1) + (A037790 (n + 1) - A037797 (n + 1))

end

end A037762.P15694683111145461898

namespace A037762

/-- `A037769(n+1)+A037790(n+1)-A037797(n+1)` -/
def P15694683111145461898.Spec : Prop :=
  ∀ n, P15694683111145461898.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P13521071148676664201

`A037776(n+1)+A037783(n+1)-A037797(n+1)`
-/

namespace A037762.P13521071148676664201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037776 (n + 1) + (A037783 (n + 1) - A037797 (n + 1))

end

end A037762.P13521071148676664201

namespace A037762

/-- `A037776(n+1)+A037783(n+1)-A037797(n+1)` -/
def P13521071148676664201.Spec : Prop :=
  ∀ n, P13521071148676664201.a n = A037762 (n + 1)

end A037762

/-! ## A037762.P1942568422221448633

`A037748(n+2)-2*A001018(n+1)`
-/

namespace A037762.P1942568422221448633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037748 (n + 2) - 2 * A001018 (n + 1)

end

end A037762.P1942568422221448633

namespace A037762

/-- `A037748(n+2)-2*A001018(n+1)` -/
def P1942568422221448633.Spec : Prop :=
  ∀ n, P1942568422221448633.a n = A037762 (n + 1)

end A037762

/-!
# A037763: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037763, the canonical program `A037763.P18333106692901934060` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037763 has offset 1).

The definition of A037763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037763.P18333106692901934060

`xor(1, 9*a(n-1))+and(1, n+1)+1` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037763

/-- `xor(1, 9*a(n-1))+and(1, n+1)+1` -/
def P18333106692901934060.Spec : Prop :=
  ∀ n, (P18333106692901934060.a n : ℤ) = A037763 (n + 1)

theorem P18333106692901934060.correct : P18333106692901934060.Spec := by
  intro n
  simp only [A037763, Nat.add_sub_cancel]

end A037763

/-! ## A037763.P18321881652612358415

`2*a(n-1)+and(3, n-1)+7*a(n-1)` with `a(0)=3`
-/

namespace A037763.P18321881652612358415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a (n - 1) + (Int.land 3 ((n : ℤ) - 1) + 7 * a (n - 1))

end

end A037763.P18321881652612358415

namespace A037763

/-- `2*a(n-1)+and(3, n-1)+7*a(n-1)` -/
def P18321881652612358415.Spec : Prop :=
  ∀ n, P18321881652612358415.a n = A037763 (n + 1)

end A037763

/-! ## A037763.P15219350311493606721

`A037721(n+1)+A037749(n+1)-A037707(n+1)`
-/

namespace A037763.P15219350311493606721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037749 (n + 1) - A037707 (n + 1))

end

end A037763.P15219350311493606721

namespace A037763

/-- `A037721(n+1)+A037749(n+1)-A037707(n+1)` -/
def P15219350311493606721.Spec : Prop :=
  ∀ n, P15219350311493606721.a n = A037763 (n + 1)

theorem P15219350311493606721.correct : P15219350311493606721.Spec := by
  intro n
  simp only [A037763, Nat.add_sub_cancel, A037763.P15219350311493606721.a, A037763.P18333106692901934060.a, A037707, A037707.P11521697123880163545.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037749, A037749.P432838538654619278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037763

/-! ## A037763.P8880837886415503568

`A037728(n+1)+A037749(n+1)-A037714(n+1)`
-/

namespace A037763.P8880837886415503568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037728 (n + 1) + (A037749 (n + 1) - A037714 (n + 1))

end

end A037763.P8880837886415503568

namespace A037763

/-- `A037728(n+1)+A037749(n+1)-A037714(n+1)` -/
def P8880837886415503568.Spec : Prop :=
  ∀ n, P8880837886415503568.a n = A037763 (n + 1)

end A037763

/-! ## A037763.P11592050418238993346

`A037735(n+1)+A037798(n+1)-A037749(n+1)`
-/

namespace A037763.P11592050418238993346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037735 (n + 1) + (A037798 (n + 1) - A037749 (n + 1))

end

end A037763.P11592050418238993346

namespace A037763

/-- `A037735(n+1)+A037798(n+1)-A037749(n+1)` -/
def P11592050418238993346.Spec : Prop :=
  ∀ n, P11592050418238993346.a n = A037763 (n + 1)

end A037763

/-! ## A037763.P57487958238753540

`A037749(n+1)+A037770(n+1)-A037756(n+1)`
-/

namespace A037763.P57487958238753540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037749 (n + 1) + (A037770 (n + 1) - A037756 (n + 1))

end

end A037763.P57487958238753540

namespace A037763

/-- `A037749(n+1)+A037770(n+1)-A037756(n+1)` -/
def P57487958238753540.Spec : Prop :=
  ∀ n, P57487958238753540.a n = A037763 (n + 1)

theorem P57487958238753540.correct : P57487958238753540.Spec := by
  intro n
  simp only [A037763, Nat.add_sub_cancel, A037763.P57487958238753540.a, A037763.P18333106692901934060.a, A037749, A037749.P432838538654619278.a, A037756, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037770, A037770.P11628452646226728937.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037763

/-! ## A037763.P8975622468218020115

`A037777(n+1)+A037784(n+1)-A037798(n+1)`
-/

namespace A037763.P8975622468218020115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037777 (n + 1) + (A037784 (n + 1) - A037798 (n + 1))

end

end A037763.P8975622468218020115

namespace A037763

/-- `A037777(n+1)+A037784(n+1)-A037798(n+1)` -/
def P8975622468218020115.Spec : Prop :=
  ∀ n, P8975622468218020115.a n = A037763 (n + 1)

end A037763

/-!
# A037764: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,1,2.

The programs for A037764, the canonical program `A037764.P13700135559960531913` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037764 has offset 1).

The definition of A037764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037764.P13700135559960531913

`(n-1)%4+10*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037764

/-- `(n-1)%4+10*a(n-1)` -/
def P13700135559960531913.Spec : Prop :=
  ∀ n, P13700135559960531913.a n = A037764 (n + 1)

theorem P13700135559960531913.correct : P13700135559960531913.Spec := by
  intro n
  simp only [A037764, Nat.add_sub_cancel]

end A037764

/-! ## A037764.P9582845704665116594

`10*a(n-1)-(1-n)%4` with `a(0)=3`
-/

namespace A037764.P9582845704665116594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  10 * a (n - 1) - Int.tmod (1 - (n : ℤ)) 4

end

end A037764.P9582845704665116594

namespace A037764

/-- `10*a(n-1)-(1-n)%4` -/
def P9582845704665116594.Spec : Prop :=
  ∀ n, P9582845704665116594.a n = A037764 (n + 1)

end A037764

/-! ## A037764.P9851291251183198445

`and(3, n-1)+10*a(n-1)` with `a(0)=3`
-/

namespace A037764.P9851291251183198445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 ((n : ℤ) - 1) + 10 * a (n - 1)

end

end A037764.P9851291251183198445

namespace A037764

/-- `and(3, n-1)+10*a(n-1)` -/
def P9851291251183198445.Spec : Prop :=
  ∀ n, P9851291251183198445.a n = A037764 (n + 1)

end A037764

/-! ## A037764.P9402860207903453418

`or(3, a(n-1))+9*a(n-1)` with `a(0)=3`
-/

namespace A037764.P9402860207903453418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor 3 (a (n - 1)) + 9 * a (n - 1)

end

end A037764.P9402860207903453418

namespace A037764

/-- `or(3, a(n-1))+9*a(n-1)` -/
def P9402860207903453418.Spec : Prop :=
  ∀ n, (P9402860207903453418.a n : ℤ) = A037764 (n + 1)

end A037764

/-! ## A037764.P550220241349964108

`A010873(n+3)+10*a(n-1)` with `a(0)=3`
-/

namespace A037764.P550220241349964108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A010873 (n + 3) + 10 * a (n - 1)

end

end A037764.P550220241349964108

namespace A037764

/-- `A010873(n+3)+10*a(n-1)` -/
def P550220241349964108.Spec : Prop :=
  ∀ n, P550220241349964108.a n = A037764 (n + 1)

end A037764

/-!
# A037765: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037765, the canonical program `A037765.P14365841650636542087` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037765 has offset 1).

The definition of A037765 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037765.P14365841650636542087

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=3, a(1)=12, a(2)=50, a(3)=201, a(4)=807`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037765

/-- `4*a(n-1)+a(n-4)-4*a(n-5)` -/
def P14365841650636542087.Spec : Prop :=
  ∀ n, P14365841650636542087.a n = A037765 (n + 1)

theorem P14365841650636542087.correct : P14365841650636542087.Spec := by
  intro n
  simp only [A037765, Nat.add_sub_cancel]

end A037765

/-! ## A037765.P10131634540056969500

`floor(67*4^(n+1)/85)`
-/

namespace A037765.P10131634540056969500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(67 * 4 ^ (n + 1) : ℚ) / 85⌋

end

end A037765.P10131634540056969500

namespace A037765

/-- `floor(67*4^(n+1)/85)` -/
def P10131634540056969500.Spec : Prop :=
  ∀ n, P10131634540056969500.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P14384695405214409385

`xor(∑[A000302(n)], A037737(n+1))`
-/

namespace A037765.P14384695405214409385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037737 (n + 1))

end

end A037765.P14384695405214409385

namespace A037765

/-- `xor(∑[A000302(n)], A037737(n+1))` -/
def P14384695405214409385.Spec : Prop :=
  ∀ n, P14384695405214409385.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P7848402653145193461

`xor(A033114(n+1), A037723(n+1))`
-/

namespace A037765.P7848402653145193461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033114 (n + 1)) (A037723 (n + 1))

end

end A037765.P7848402653145193461

namespace A037765

/-- `xor(A033114(n+1), A037723(n+1))` -/
def P7848402653145193461.Spec : Prop :=
  ∀ n, P7848402653145193461.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P6781152066291163173

`xor(A037681(n+1), A037716(n+1))`
-/

namespace A037765.P6781152066291163173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A037716 (n + 1))

end

end A037765.P6781152066291163173

namespace A037765

/-- `xor(A037681(n+1), A037716(n+1))` -/
def P6781152066291163173.Spec : Prop :=
  ∀ n, P6781152066291163173.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P5893095438753007

`xor(A037709(n+1), A037744(n+1))`
-/

namespace A037765.P5893095438753007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037709 (n + 1)) (A037744 (n + 1))

end

end A037765.P5893095438753007

namespace A037765

/-- `xor(A037709(n+1), A037744(n+1))` -/
def P5893095438753007.Spec : Prop :=
  ∀ n, P5893095438753007.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P15159497410950409333

`xor(A037723(n+1), A281216(2*n))`
-/

namespace A037765.P15159497410950409333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037723 (n + 1)) (A281216 (2 * n))

end

end A037765.P15159497410950409333

namespace A037765

/-- `xor(A037723(n+1), A281216(2*n))` -/
def P15159497410950409333.Spec : Prop :=
  ∀ n, P15159497410950409333.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P16145515929642846773

`xor(∑[∑[A011782(n)]²], A037737(n+1))`
-/

namespace A037765.P16145515929642846773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037737 (n + 1))

end

end A037765.P16145515929642846773

namespace A037765

/-- `xor(∑[∑[A011782(n)]²], A037737(n+1))` -/
def P16145515929642846773.Spec : Prop :=
  ∀ n, P16145515929642846773.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P7183449504307774987

`A037688(n+1)+A007910(2*n+1)`
-/

namespace A037765.P7183449504307774987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037688 (n + 1) + A007910 (2 * n + 1)

end

end A037765.P7183449504307774987

namespace A037765

/-- `A037688(n+1)+A007910(2*n+1)` -/
def P7183449504307774987.Spec : Prop :=
  ∀ n, P7183449504307774987.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P5796825768960574121

`A037772(n+1)+A037779(n+1)-A037786(n+1)`
-/

namespace A037765.P5796825768960574121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037772 (n + 1) + (A037779 (n + 1) - A037786 (n + 1))

end

end A037765.P5796825768960574121

namespace A037765

/-- `A037772(n+1)+A037779(n+1)-A037786(n+1)` -/
def P5796825768960574121.Spec : Prop :=
  ∀ n, P5796825768960574121.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P8104378616232143839

`A037702(n+2)-(A286675(2*n+1)+1)`
-/

namespace A037765.P8104378616232143839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037702 (n + 2) - (A286675 (2 * n + 1) + 1)

end

end A037765.P8104378616232143839

namespace A037765

/-- `A037702(n+2)-(A286675(2*n+1)+1)` -/
def P8104378616232143839.Spec : Prop :=
  ∀ n, P8104378616232143839.a n = A037765 (n + 1)

end A037765

/-! ## A037765.P7027980854325630617

`and(A037583(n+1), A037737(n+7))`
-/

namespace A037765.P7027980854325630617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037583 (n + 1)) (A037737 (n + 7))

end

end A037765.P7027980854325630617

namespace A037765

/-- `and(A037583(n+1), A037737(n+7))` -/
def P7027980854325630617.Spec : Prop :=
  ∀ n, P7027980854325630617.a n = A037765 (n + 1)

end A037765

/-!
# A037766: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037766, the canonical program `A037766.P15632211533706168488` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037766 has offset 1).

The definition of A037766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037766.P15632211533706168488

`A037752(n+1)+A037759(n+1)-A037745(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037766

/-- `A037752(n+1)+A037759(n+1)-A037745(n+1)` -/
def P15632211533706168488.Spec : Prop :=
  ∀ n, P15632211533706168488.a n = A037766 (n + 1)

theorem P15632211533706168488.correct : P15632211533706168488.Spec := by
  intro n
  simp only [A037766, Nat.add_sub_cancel]

end A037766

/-! ## A037766.P8289852652171055068

`A037738(n+1)+A037787(n+1)-A037752(n+1)`
-/

namespace A037766.P8289852652171055068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037738 (n + 1) + (A037787 (n + 1) - A037752 (n + 1))

end

end A037766.P8289852652171055068

namespace A037766

/-- `A037738(n+1)+A037787(n+1)-A037752(n+1)` -/
def P8289852652171055068.Spec : Prop :=
  ∀ n, P8289852652171055068.a n = A037766 (n + 1)

end A037766

/-! ## A037766.P14280187790202581527

`A037759(n+1)+A037794(n+1)-A037787(n+1)`
-/

namespace A037766.P14280187790202581527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037759 (n + 1) + (A037794 (n + 1) - A037787 (n + 1))

end

end A037766.P14280187790202581527

namespace A037766

/-- `A037759(n+1)+A037794(n+1)-A037787(n+1)` -/
def P14280187790202581527.Spec : Prop :=
  ∀ n, P14280187790202581527.a n = A037766 (n + 1)

end A037766

/-! ## A037766.P12409965915830019731

`A037773(n+1)+A037780(n+1)-A037787(n+1)`
-/

namespace A037766.P12409965915830019731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037773 (n + 1) + (A037780 (n + 1) - A037787 (n + 1))

end

end A037766.P12409965915830019731

namespace A037766

/-- `A037773(n+1)+A037780(n+1)-A037787(n+1)` -/
def P12409965915830019731.Spec : Prop :=
  ∀ n, P12409965915830019731.a n = A037766 (n + 1)

theorem P12409965915830019731.correct : P12409965915830019731.Spec := by
  intro n
  simp only [A037766, Nat.add_sub_cancel, A037766.P12409965915830019731.a, A037766.P15632211533706168488.a, A037745, A037745.P16806909000048906870.a, A037752, A037752.P8103894507674030329.f1, A037752.P8103894507674030329.a, A037759, A037759.P7672012952696768290.a, A037773, A037773.P9980543157049036755.f1, A037773.P9980543157049036755.a, A037780, A037780.P9453459313132871688.a, A037787, A037787.P4328001275724265141.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037766

/-! ## A037766.P9026439808784550677

`A037738(n+2)-Δ[A037724(n+1)]`
-/

namespace A037766.P9026439808784550677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037738 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037766.P9026439808784550677

namespace A037766

/-- `A037738(n+2)-Δ[A037724(n+1)]` -/
def P9026439808784550677.Spec : Prop :=
  ∀ n, P9026439808784550677.a n = A037766 (n + 1)

end A037766

/-! ## A037766.P13119629145866675751

`A037703(n+2)-record[A191702(n+2)]`
-/

namespace A037766.P13119629145866675751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037703 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037766.P13119629145866675751

namespace A037766

/-- `A037703(n+2)-record[A191702(n+2)]` -/
def P13119629145866675751.Spec : Prop :=
  ∀ n, P13119629145866675751.a n = A037766 (n + 1)

end A037766

/-!
# A037767: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037767, the canonical program `A037767.P12662760880017921865` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037767 has offset 1).

The definition of A037767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037767.P12662760880017921865

`or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037767

/-- `or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1)` -/
def P12662760880017921865.Spec : Prop :=
  ∀ n, (P12662760880017921865.a n : ℤ) = A037767 (n + 1)

theorem P12662760880017921865.correct : P12662760880017921865.Spec := by
  intro n
  simp only [A037767, Nat.add_sub_cancel]

end A037767

/-! ## A037767.P832919849502727347

`A037690(n+1)+2*A015540(n+1)`
-/

namespace A037767.P832919849502727347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 1) + 2 * A015540 (n + 1)

end

end A037767.P832919849502727347

namespace A037767

/-- `A037690(n+1)+2*A015540(n+1)` -/
def P832919849502727347.Spec : Prop :=
  ∀ n, P832919849502727347.a n = A037767 (n + 1)

theorem P832919849502727347.correct : P832919849502727347.Spec := by
  intro n
  simp only [A037767, Nat.add_sub_cancel, A037767.P832919849502727347.a, A037767.P12662760880017921865.a, A015540, A015540.P6424508890208897512.a, A037690, A037690.P10971792111560011432.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037767

/-! ## A037767.P6545773066455947447

`A037690(n+1)+A109501(n+2)/3`
-/

namespace A037767.P6545773066455947447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037690 (n + 1) : ℚ) + (A109501 (n + 2) : ℚ) / 3

end

end A037767.P6545773066455947447

namespace A037767

/-- `A037690(n+1)+A109501(n+2)/3` -/
def P6545773066455947447.Spec : Prop :=
  ∀ n, P6545773066455947447.a n = (A037767 (n + 1) : ℚ)

end A037767

/-! ## A037767.P5189332426682051178

`A037690(n+1)+round(12/7*A000400(n))`
-/

namespace A037767.P5189332426682051178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 1) + SequenceMachineLib.roundAway ((12 : ℚ) / 7 * (A000400 n : ℚ))

end

end A037767.P5189332426682051178

namespace A037767

/-- `A037690(n+1)+round(12/7*A000400(n))` -/
def P5189332426682051178.Spec : Prop :=
  ∀ n, P5189332426682051178.a n = A037767 (n + 1)

end A037767

/-! ## A037767.P6565424253197128793

`A037690(n+1)+2/5*A092166(n+1)`
-/

namespace A037767.P6565424253197128793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037690 (n + 1) : ℚ) + (2 : ℚ) / 5 * (A092166 (n + 1) : ℚ)

end

end A037767.P6565424253197128793

namespace A037767

/-- `A037690(n+1)+2/5*A092166(n+1)` -/
def P6565424253197128793.Spec : Prop :=
  ∀ n, P6565424253197128793.a n = (A037767 (n + 1) : ℚ)

end A037767

/-! ## A037767.P5295332133471916861

`A037690(n+1)+A037781(n+1)-A037704(n+1)`
-/

namespace A037767.P5295332133471916861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 1) + (A037781 (n + 1) - A037704 (n + 1))

end

end A037767.P5295332133471916861

namespace A037767

/-- `A037690(n+1)+A037781(n+1)-A037704(n+1)` -/
def P5295332133471916861.Spec : Prop :=
  ∀ n, P5295332133471916861.a n = A037767 (n + 1)

end A037767

/-! ## A037767.P16875266419694886362

`A037718(n+1)+A037753(n+1)-A037704(n+1)`
-/

namespace A037767.P16875266419694886362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037718 (n + 1) + (A037753 (n + 1) - A037704 (n + 1))

end

end A037767.P16875266419694886362

namespace A037767

/-- `A037718(n+1)+A037753(n+1)-A037704(n+1)` -/
def P16875266419694886362.Spec : Prop :=
  ∀ n, P16875266419694886362.a n = A037767 (n + 1)

end A037767

/-! ## A037767.P16747773837425942181

`A037753(n+1)+A037760(n+1)-A037746(n+1)`
-/

namespace A037767.P16747773837425942181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037753 (n + 1) + (A037760 (n + 1) - A037746 (n + 1))

end

end A037767.P16747773837425942181

namespace A037767

/-- `A037753(n+1)+A037760(n+1)-A037746(n+1)` -/
def P16747773837425942181.Spec : Prop :=
  ∀ n, P16747773837425942181.a n = A037767 (n + 1)

theorem P16747773837425942181.correct : P16747773837425942181.Spec := by
  intro n
  simp only [A037767, Nat.add_sub_cancel, A037767.P16747773837425942181.a, A037767.P12662760880017921865.a, A037746, A037746.P1636314081189769102.a, A037753, A037753.P10507737516097663728.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037767

/-! ## A037767.P15260329332040815258

`A037774(n+1)+A037781(n+1)-A037788(n+1)`
-/

namespace A037767.P15260329332040815258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) + (A037781 (n + 1) - A037788 (n + 1))

end

end A037767.P15260329332040815258

namespace A037767

/-- `A037774(n+1)+A037781(n+1)-A037788(n+1)` -/
def P15260329332040815258.Spec : Prop :=
  ∀ n, P15260329332040815258.a n = A037767 (n + 1)

theorem P15260329332040815258.correct : P15260329332040815258.Spec := by
  intro n
  simp only [A037767, Nat.add_sub_cancel, A037767.P15260329332040815258.a, A037767.P12662760880017921865.a, A037774, A037774.P1186075867567179161.a, A037781, A037781.P16687809156034504389.a, A037788, A037788.P16633097577509408614.a, A037739, A037739.P18257991991248789603.a, A037753, A037753.P10507737516097663728.a, A037746, A037746.P1636314081189769102.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037767

/-! ## A037767.P3632948526431489252

`A037690(n+1)+round(A000400(n+2)/21)`
-/

namespace A037767.P3632948526431489252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 1) + SequenceMachineLib.roundAway ((A000400 (n + 2) : ℚ) / 21)

end

end A037767.P3632948526431489252

namespace A037767

/-- `A037690(n+1)+round(A000400(n+2)/21)` -/
def P3632948526431489252.Spec : Prop :=
  ∀ n, P3632948526431489252.a n = A037767 (n + 1)

end A037767

/-!
# A037768: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037768, the canonical program `A037768.P7630554657512226862` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037768 has offset 1).

The definition of A037768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037768.P9599561825781346744

`A037719(n+1)+A037726(n+1)-A037677(n+1)`
-/

namespace A037768.P9599561825781346744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037726 (n + 1) - A037677 (n + 1))

end

end A037768.P9599561825781346744

namespace A037768

/-- `A037719(n+1)+A037726(n+1)-A037677(n+1)` -/
def P9599561825781346744.Spec : Prop :=
  ∀ n, P9599561825781346744.a n = A037768 (n + 1)

end A037768

/-! ## A037768.P4755435904511060363

`A037719(n+1)+A037754(n+1)-A037705(n+1)`
-/

namespace A037768.P4755435904511060363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037754 (n + 1) - A037705 (n + 1))

end

end A037768.P4755435904511060363

namespace A037768

/-- `A037719(n+1)+A037754(n+1)-A037705(n+1)` -/
def P4755435904511060363.Spec : Prop :=
  ∀ n, P4755435904511060363.a n = A037768 (n + 1)

theorem P4755435904511060363.correct : P4755435904511060363.Spec := by
  intro n
  simp only [A037768, Nat.add_sub_cancel, A037768.P4755435904511060363.a, A037768.P7630554657512226862.a, A037705, A037705.P13871482217024803718.a, A037719, A037719.P11049252179318265615.a, A037747, A037747.P6387786444260834050.a, A037754, A037754.P17162124263066232591.a, A037761, A037761.P7195593094420718256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037768

/-! ## A037768.P1340581560380475183

`A037726(n+1)+A037754(n+1)-A037712(n+1)`
-/

namespace A037768.P1340581560380475183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037726 (n + 1) + (A037754 (n + 1) - A037712 (n + 1))

end

end A037768.P1340581560380475183

namespace A037768

/-- `A037726(n+1)+A037754(n+1)-A037712(n+1)` -/
def P1340581560380475183.Spec : Prop :=
  ∀ n, P1340581560380475183.a n = A037768 (n + 1)

end A037768

/-! ## A037768.P8695991505657052083

`A037726(n+1)+A037782(n+1)-A037740(n+1)`
-/

namespace A037768.P8695991505657052083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037726 (n + 1) + (A037782 (n + 1) - A037740 (n + 1))

end

end A037768.P8695991505657052083

namespace A037768

/-- `A037726(n+1)+A037782(n+1)-A037740(n+1)` -/
def P8695991505657052083.Spec : Prop :=
  ∀ n, P8695991505657052083.a n = A037768 (n + 1)

end A037768

/-! ## A037768.P7630554657512226862

`A037754(n+1)+A037761(n+1)-A037747(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037768

/-- `A037754(n+1)+A037761(n+1)-A037747(n+1)` -/
def P7630554657512226862.Spec : Prop :=
  ∀ n, P7630554657512226862.a n = A037768 (n + 1)

theorem P7630554657512226862.correct : P7630554657512226862.Spec := by
  intro n
  simp only [A037768, Nat.add_sub_cancel]

end A037768

/-!
# A037769: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037769, the canonical program `A037769.P7732214671664040176` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037769 has offset 1).

The definition of A037769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037769.P3477603001757715592

`xor(∑[8^n], A037741(n+1))`
-/

namespace A037769.P3477603001757715592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037741 (n + 1))

end

end A037769.P3477603001757715592

namespace A037769

/-- `xor(∑[8^n], A037741(n+1))` -/
def P3477603001757715592.Spec : Prop :=
  ∀ n, P3477603001757715592.a n = A037769 (n + 1)

end A037769

/-! ## A037769.P7732214671664040176

`xor(A037713(n+1), A037748(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037769

/-- `xor(A037713(n+1), A037748(n+1))` -/
def P7732214671664040176.Spec : Prop :=
  ∀ n, P7732214671664040176.a n = A037769 (n + 1)

theorem P7732214671664040176.correct : P7732214671664040176.Spec := by
  intro n
  simp only [A037769, Nat.add_sub_cancel]

end A037769

/-! ## A037769.P11598728206488617052

`xor(A037727(n+1), A195904(A016777(n)))`
-/

namespace A037769.P11598728206488617052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037727 (n + 1)) (A195904 (A016777 n).toNat)

end

end A037769.P11598728206488617052

namespace A037769

/-- `xor(A037727(n+1), A195904(A016777(n)))` -/
def P11598728206488617052.Spec : Prop :=
  ∀ n, P11598728206488617052.a n = A037769 (n + 1)

end A037769

/-! ## A037769.P7647452565845609306

`A037727(n+1)+A037755(n+1)-A037713(n+1)`
-/

namespace A037769.P7647452565845609306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037727 (n + 1) + (A037755 (n + 1) - A037713 (n + 1))

end

end A037769.P7647452565845609306

namespace A037769

/-- `A037727(n+1)+A037755(n+1)-A037713(n+1)` -/
def P7647452565845609306.Spec : Prop :=
  ∀ n, P7647452565845609306.a n = A037769 (n + 1)

end A037769

/-! ## A037769.P1990621276330412634

`A037755(n+1)+A037762(n+1)-A037748(n+1)`
-/

namespace A037769.P1990621276330412634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037755 (n + 1) + (A037762 (n + 1) - A037748 (n + 1))

end

end A037769.P1990621276330412634

namespace A037769

/-- `A037755(n+1)+A037762(n+1)-A037748(n+1)` -/
def P1990621276330412634.Spec : Prop :=
  ∀ n, P1990621276330412634.a n = A037769 (n + 1)

end A037769

/-! ## A037769.P10102951759672264414

`A037776(n+1)+A037783(n+1)-A037790(n+1)`
-/

namespace A037769.P10102951759672264414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037776 (n + 1) + (A037783 (n + 1) - A037790 (n + 1))

end

end A037769.P10102951759672264414

namespace A037769

/-- `A037776(n+1)+A037783(n+1)-A037790(n+1)` -/
def P10102951759672264414.Spec : Prop :=
  ∀ n, P10102951759672264414.a n = A037769 (n + 1)

end A037769

/-! ## A037769.P14828628876459403866

`Δ[∑[A037741(n+1)]-A037727(n+1)]`
-/

namespace A037769.P14828628876459403866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037769.P14828628876459403866

namespace A037769

/-- `Δ[∑[A037741(n+1)]-A037727(n+1)]` -/
def P14828628876459403866.Spec : Prop :=
  ∀ n, P14828628876459403866.a n = A037769 (n + 1)

end A037769

/-!
# A037770: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037770, the canonical program `A037770.P11628452646226728937` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037770 has offset 1).

The definition of A037770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037770.P11342586510553310431

`∑[xor(9*a(n-1), A020639(3*n))]` with `a(0)=3`
-/

namespace A037770.P11342586510553310431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A020639 (3 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037770.P11342586510553310431

namespace A037770

/-- `∑[xor(9*a(n-1), A020639(3*n))]` -/
def P11342586510553310431.Spec : Prop :=
  ∀ n, P11342586510553310431.a n = A037770 (n + 1)

end A037770

/-! ## A037770.P4987298674910880699

`A037721(n+1)+A037756(n+1)-A037707(n+1)`
-/

namespace A037770.P4987298674910880699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037756 (n + 1) - A037707 (n + 1))

end

end A037770.P4987298674910880699

namespace A037770

/-- `A037721(n+1)+A037756(n+1)-A037707(n+1)` -/
def P4987298674910880699.Spec : Prop :=
  ∀ n, P4987298674910880699.a n = A037770 (n + 1)

theorem P4987298674910880699.correct : P4987298674910880699.Spec := by
  intro n
  simp only [A037770, Nat.add_sub_cancel, A037770.P4987298674910880699.a, A037770.P11628452646226728937.a, A037707, A037707.P11521697123880163545.a, A037721, A037721.P3815079518860697951.f1, A037721.P3815079518860697951.a, A037749, A037749.P432838538654619278.a, A037756, A037756.P3057694834929139515.f1, A037756.P3057694834929139515.a, A037763, A037763.P18333106692901934060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037770

/-! ## A037770.P2236523611241357414

`A037728(n+1)+A037756(n+1)-A037714(n+1)`
-/

namespace A037770.P2236523611241357414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037728 (n + 1) + (A037756 (n + 1) - A037714 (n + 1))

end

end A037770.P2236523611241357414

namespace A037770

/-- `A037728(n+1)+A037756(n+1)-A037714(n+1)` -/
def P2236523611241357414.Spec : Prop :=
  ∀ n, P2236523611241357414.a n = A037770 (n + 1)

end A037770

/-! ## A037770.P11628452646226728937

`A037756(n+1)+A037763(n+1)-A037749(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037770

/-- `A037756(n+1)+A037763(n+1)-A037749(n+1)` -/
def P11628452646226728937.Spec : Prop :=
  ∀ n, P11628452646226728937.a n = A037770 (n + 1)

theorem P11628452646226728937.correct : P11628452646226728937.Spec := by
  intro n
  simp only [A037770, Nat.add_sub_cancel]

end A037770

/-! ## A037770.P897632146899274426

`A037777(n+1)+A037784(n+1)-A037791(n+1)`
-/

namespace A037770.P897632146899274426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037777 (n + 1) + (A037784 (n + 1) - A037791 (n + 1))

end

end A037770.P897632146899274426

namespace A037770

/-- `A037777(n+1)+A037784(n+1)-A037791(n+1)` -/
def P897632146899274426.Spec : Prop :=
  ∀ n, P897632146899274426.a n = A037770 (n + 1)

end A037770

/-!
# A037771: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,0,2,1.

The programs for A037771, there is no canonical definition to state claims against.
-/

/-! ## A037771.P4828720592987432344

`A007090(A037765(n+1))`
-/

namespace A037771.P4828720592987432344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037765 (n + 1)).toNat

end

end A037771.P4828720592987432344

/-! ## A037771.P14866822881849035159

`A007091(A037766(n+1))`
-/

namespace A037771.P14866822881849035159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A037766 (n + 1)).toNat

end

end A037771.P14866822881849035159

/-!
# A037772: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037772, the canonical program `A037772.P9884123058879105941` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037772 has offset 1).

The definition of A037772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037772.P14807377787777182358

`ogf((3-2x+2x^2)/(1-5x+5x^2-5x^3+4x^4))`
-/

namespace A037772.P14807377787777182358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 2] [1, -5, 5, -5, 4] n

end

end A037772.P14807377787777182358

namespace A037772

/-- `ogf((3-2x+2x^2)/(1-5x+5x^2-5x^3+4x^4))` -/
def P14807377787777182358.Spec : Prop :=
  ∀ n, P14807377787777182358.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P9884123058879105941

`xor(a(n-1)+3*or(1, a(n-1)), and(1, n))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037772

/-- `xor(a(n-1)+3*or(1, a(n-1)), and(1, n))` -/
def P9884123058879105941.Spec : Prop :=
  ∀ n, (P9884123058879105941.a n : ℤ) = A037772 (n + 1)

theorem P9884123058879105941.correct : P9884123058879105941.Spec := by
  intro n
  simp only [A037772, Nat.add_sub_cancel]

end A037772

/-! ## A037772.P6328882453258724662

`xor(floor((2/5+2)*4^n), A037674(n+1))`
-/

namespace A037772.P6328882453258724662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊((2 : ℚ) / 5 + 2) * (4 ^ n : ℚ)⌋ (A037674 (n + 1))

end

end A037772.P6328882453258724662

namespace A037772

/-- `xor(floor((2/5+2)*4^n), A037674(n+1))` -/
def P6328882453258724662.Spec : Prop :=
  ∀ n, P6328882453258724662.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P413372517219785197

`xor(floor(5*4^(n+1)/17), A037489(n+1))`
-/

namespace A037772.P413372517219785197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊5 * ((4 ^ (n + 1) : ℚ) / 17)⌋ (A037489 (n + 1))

end

end A037772.P413372517219785197

namespace A037772

/-- `xor(floor(5*4^(n+1)/17), A037489(n+1))` -/
def P413372517219785197.Spec : Prop :=
  ∀ n, P413372517219785197.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P4871343641204956485

`xor(A037681(n+1), A037737(n+1))`
-/

namespace A037772.P4871343641204956485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037681 (n + 1)) (A037737 (n + 1))

end

end A037772.P4871343641204956485

namespace A037772

/-- `xor(A037681(n+1), A037737(n+1))` -/
def P4871343641204956485.Spec : Prop :=
  ∀ n, P4871343641204956485.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P7788462674393494700

`xor(A037688(n+1), A037744(n+1))`
-/

namespace A037772.P7788462674393494700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037688 (n + 1)) (A037744 (n + 1))

end

end A037772.P7788462674393494700

namespace A037772

/-- `xor(A037688(n+1), A037744(n+1))` -/
def P7788462674393494700.Spec : Prop :=
  ∀ n, P7788462674393494700.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P5225533031539263780

`xor(∑[2*A000079(n)²], A224520(2*n+1))`
-/

namespace A037772.P5225533031539263780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A224520 (2 * n + 1))

end

end A037772.P5225533031539263780

namespace A037772

/-- `xor(∑[2*A000079(n)²], A224520(2*n+1))` -/
def P5225533031539263780.Spec : Prop :=
  ∀ n, P5225533031539263780.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P15743743312729664355

`xor(∑[A000079(2*n+1)], A224520(2*n+1))`
-/

namespace A037772.P15743743312729664355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A224520 (2 * n + 1))

end

end A037772.P15743743312729664355

namespace A037772

/-- `xor(∑[A000079(2*n+1)], A224520(2*n+1))` -/
def P15743743312729664355.Spec : Prop :=
  ∀ n, P15743743312729664355.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P13361325822904794615

`A037751(n+2)-8*A000302(n)`
-/

namespace A037772.P13361325822904794615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037751 (n + 2) - 8 * A000302 n

end

end A037772.P13361325822904794615

namespace A037772

/-- `A037751(n+2)-8*A000302(n)` -/
def P13361325822904794615.Spec : Prop :=
  ∀ n, P13361325822904794615.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P311775913356416124

`floor(A005009(2*n+3)/17)`
-/

namespace A037772.P311775913356416124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005009 (2 * n + 3) : ℚ) / 17⌋

end

end A037772.P311775913356416124

namespace A037772

/-- `floor(A005009(2*n+3)/17)` -/
def P311775913356416124.Spec : Prop :=
  ∀ n, P311775913356416124.a n = A037772 (n + 1)

end A037772

/-! ## A037772.P14462358875240318971

`floor(A083686(3*(n+1))/A110287(n))`
-/

namespace A037772.P14462358875240318971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083686 (3 * (n + 1)) : ℚ) / (A110287 n : ℚ)⌋

end

end A037772.P14462358875240318971

namespace A037772

/-- `floor(A083686(3*(n+1))/A110287(n))` -/
def P14462358875240318971.Spec : Prop :=
  ∀ n, P14462358875240318971.a n = A037772 (n + 1)

end A037772

/-!
# A037773: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037773, the canonical program `A037773.P9980543157049036755` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037773 has offset 1).

The definition of A037773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037773.P5999844987860680710

`ogf((3-2x+2x^2)/(1-6x+6x^2-6x^3+5x^4))`
-/

namespace A037773.P5999844987860680710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 2] [1, -6, 6, -6, 5] n

end

end A037773.P5999844987860680710

namespace A037773

/-- `ogf((3-2x+2x^2)/(1-6x+6x^2-6x^3+5x^4))` -/
def P5999844987860680710.Spec : Prop :=
  ∀ n, P5999844987860680710.a n = A037773 (n + 1)

end A037773

/-! ## A037773.P9980543157049036755

`∑[xor(5*a(n-1), gcd(2, n+1))]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037773

/-- `∑[xor(5*a(n-1), gcd(2, n+1))]` -/
def P9980543157049036755.Spec : Prop :=
  ∀ n, (P9980543157049036755.a n : ℤ) = A037773 (n + 1)

theorem P9980543157049036755.correct : P9980543157049036755.Spec := by
  intro n
  simp only [A037773, Nat.add_sub_cancel]

end A037773

/-! ## A037773.P3164651565116856292

`∑[xor(5*a(n-1), A000034(n))]` with `a(0)=3`
-/

namespace A037773.P3164651565116856292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037773.P3164651565116856292

namespace A037773

/-- `∑[xor(5*a(n-1), A000034(n))]` -/
def P3164651565116856292.Spec : Prop :=
  ∀ n, P3164651565116856292.a n = A037773 (n + 1)

end A037773

/-! ## A037773.P15271676814263572757

`∑[xor(5*a(n-1), A000079(n)%3)]` with `a(0)=3`
-/

namespace A037773.P15271676814263572757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (Int.tmod (A000079 n) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037773.P15271676814263572757

namespace A037773

/-- `∑[xor(5*a(n-1), A000079(n)%3)]` -/
def P15271676814263572757.Spec : Prop :=
  ∀ n, P15271676814263572757.a n = A037773 (n + 1)

end A037773

/-! ## A037773.P2560970051725140923

`∑[xor(5*a(n-1), A055881(3*n+1))]` with `a(0)=3`
-/

namespace A037773.P2560970051725140923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A055881 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037773.P2560970051725140923

namespace A037773

/-- `∑[xor(5*a(n-1), A055881(3*n+1))]` -/
def P2560970051725140923.Spec : Prop :=
  ∀ n, P2560970051725140923.a n = A037773 (n + 1)

end A037773

/-! ## A037773.P3268697431774860596

`A037759(n+1)+A037794(n+1)-A037780(n+1)`
-/

namespace A037773.P3268697431774860596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037759 (n + 1) + (A037794 (n + 1) - A037780 (n + 1))

end

end A037773.P3268697431774860596

namespace A037773

/-- `A037759(n+1)+A037794(n+1)-A037780(n+1)` -/
def P3268697431774860596.Spec : Prop :=
  ∀ n, P3268697431774860596.a n = A037773 (n + 1)

end A037773

/-! ## A037773.P3861650231656887355

`A037766(n+1)+A037787(n+1)-A037780(n+1)`
-/

namespace A037773.P3861650231656887355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1) + (A037787 (n + 1) - A037780 (n + 1))

end

end A037773.P3861650231656887355

namespace A037773

/-- `A037766(n+1)+A037787(n+1)-A037780(n+1)` -/
def P3861650231656887355.Spec : Prop :=
  ∀ n, P3861650231656887355.a n = A037773 (n + 1)

theorem P3861650231656887355.correct : P3861650231656887355.Spec := by
  intro n
  simp only [A037773, Nat.add_sub_cancel, A037773.P3861650231656887355.a, A037773.P9980543157049036755.f1, A037773.P9980543157049036755.a, A037766, A037766.P15632211533706168488.a, A037780, A037780.P9453459313132871688.a, A037787, A037787.P4328001275724265141.a, A037745, A037745.P16806909000048906870.a, A037752, A037752.P8103894507674030329.f1, A037752.P8103894507674030329.a, A037759, A037759.P7672012952696768290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037773

/-! ## A037773.P15131500758742647339

`Δ[∑[A037766(n+1)]-A037759(n+1)]`
-/

namespace A037773.P15131500758742647339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037773.P15131500758742647339

namespace A037773

/-- `Δ[∑[A037766(n+1)]-A037759(n+1)]` -/
def P15131500758742647339.Spec : Prop :=
  ∀ n, P15131500758742647339.a n = A037773 (n + 1)

end A037773

/-!
# A037774: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037774, the canonical program `A037774.P1186075867567179161` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037774 has offset 1).

The definition of A037774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037774.P158464869075733047

`∑[ogf((3-2x+2x^2)/(1-6x+x^2-6x^3))]`
-/

namespace A037774.P158464869075733047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, 2] [1, -6, 1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037774.P158464869075733047

namespace A037774

/-- `∑[ogf((3-2x+2x^2)/(1-6x+x^2-6x^3))]` -/
def P158464869075733047.Spec : Prop :=
  ∀ n, P158464869075733047.a n = A037774 (n + 1)

end A037774

/-! ## A037774.P17877255489239402916

`A037732(n+1)+A037746(n+1)-A037704(n+1)`
-/

namespace A037774.P17877255489239402916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037732 (n + 1) + (A037746 (n + 1) - A037704 (n + 1))

end

end A037774.P17877255489239402916

namespace A037774

/-- `A037732(n+1)+A037746(n+1)-A037704(n+1)` -/
def P17877255489239402916.Spec : Prop :=
  ∀ n, P17877255489239402916.a n = A037774 (n + 1)

end A037774

/-! ## A037774.P1186075867567179161

`A037767(n+1)+A037788(n+1)-A037781(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037774

/-- `A037767(n+1)+A037788(n+1)-A037781(n+1)` -/
def P1186075867567179161.Spec : Prop :=
  ∀ n, P1186075867567179161.a n = A037774 (n + 1)

theorem P1186075867567179161.correct : P1186075867567179161.Spec := by
  intro n
  simp only [A037774, Nat.add_sub_cancel]

end A037774

/-! ## A037774.P8729043179543237725

`A037767(n+2)-Δ[A037760(n+1)]`
-/

namespace A037774.P8729043179543237725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037774.P8729043179543237725

namespace A037774

/-- `A037767(n+2)-Δ[A037760(n+1)]` -/
def P8729043179543237725.Spec : Prop :=
  ∀ n, P8729043179543237725.a n = A037774 (n + 1)

end A037774

/-! ## A037774.P1946092374544380605

`or(6*a(n-1), A020639(A059270(n+1)))` with `a(0)=3`
-/

namespace A037774.P1946092374544380605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (6 * a (n - 1)) (A020639 (A059270 (n + 1)).toNat)

end

end A037774.P1946092374544380605

namespace A037774

/-- `or(6*a(n-1), A020639(A059270(n+1)))` -/
def P1946092374544380605.Spec : Prop :=
  ∀ n, P1946092374544380605.a n = A037774 (n + 1)

end A037774

/-!
# A037775: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037775, the canonical program `A037775.P6875090617582373356` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037775 has offset 1).

The definition of A037775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037775.P6875090617582373356

`floor(9*7^(n+1)/20)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037775

/-- `floor(9*7^(n+1)/20)` -/
def P6875090617582373356.Spec : Prop :=
  ∀ n, P6875090617582373356.a n = A037775 (n + 1)

theorem P6875090617582373356.correct : P6875090617582373356.Spec := by
  intro n
  simp only [A037775, Nat.add_sub_cancel]

end A037775

/-! ## A037775.P5873877161626449962

`A037726(n+1)+A037747(n+1)-A037698(n+1)`
-/

namespace A037775.P5873877161626449962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037726 (n + 1) + (A037747 (n + 1) - A037698 (n + 1))

end

end A037775.P5873877161626449962

namespace A037775

/-- `A037726(n+1)+A037747(n+1)-A037698(n+1)` -/
def P5873877161626449962.Spec : Prop :=
  ∀ n, P5873877161626449962.a n = A037775 (n + 1)

end A037775

/-! ## A037775.P12613435284729705092

`A037719(n+1)+A037782(n+1)-A037726(n+1)`
-/

namespace A037775.P12613435284729705092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037782 (n + 1) - A037726 (n + 1))

end

end A037775.P12613435284729705092

namespace A037775

/-- `A037719(n+1)+A037782(n+1)-A037726(n+1)` -/
def P12613435284729705092.Spec : Prop :=
  ∀ n, P12613435284729705092.a n = A037775 (n + 1)

end A037775

/-! ## A037775.P5460259435450013669

`A037684(n+1)+A037698(n+2)-A037677(n+2)`
-/

namespace A037775.P5460259435450013669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037684 (n + 1) + (A037698 (n + 2) - A037677 (n + 2))

end

end A037775.P5460259435450013669

namespace A037775

/-- `A037684(n+1)+A037698(n+2)-A037677(n+2)` -/
def P5460259435450013669.Spec : Prop :=
  ∀ n, P5460259435450013669.a n = A037775 (n + 1)

end A037775

/-! ## A037775.P13403458555512409318

`A037768(n+2)-Δ[A037761(n+1)]`
-/

namespace A037775.P13403458555512409318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037768 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037775.P13403458555512409318

namespace A037775

/-- `A037768(n+2)-Δ[A037761(n+1)]` -/
def P13403458555512409318.Spec : Prop :=
  ∀ n, P13403458555512409318.a n = A037775 (n + 1)

end A037775

/-!
# A037776: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037776, the canonical program `A037776.P8667975928553698006` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037776 has offset 1).

The definition of A037776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037776.P8667975928553698006

`xor(A037485(n+1), A037755(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037776

/-- `xor(A037485(n+1), A037755(n+1))` -/
def P8667975928553698006.Spec : Prop :=
  ∀ n, P8667975928553698006.a n = A037776 (n + 1)

theorem P8667975928553698006.correct : P8667975928553698006.Spec := by
  intro n
  simp only [A037776, Nat.add_sub_cancel]

end A037776

/-! ## A037776.P58413183331443960

`xor(A037692(n+1), A037748(n+1))`
-/

namespace A037776.P58413183331443960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037692 (n + 1)) (A037748 (n + 1))

end

end A037776.P58413183331443960

namespace A037776

/-- `xor(A037692(n+1), A037748(n+1))` -/
def P58413183331443960.Spec : Prop :=
  ∀ n, P58413183331443960.a n = A037776 (n + 1)

end A037776

/-! ## A037776.P7888199153310534264

`A037762(n+1)+A037797(n+1)-A037783(n+1)`
-/

namespace A037776.P7888199153310534264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037762 (n + 1) + (A037797 (n + 1) - A037783 (n + 1))

end

end A037776.P7888199153310534264

namespace A037776

/-- `A037762(n+1)+A037797(n+1)-A037783(n+1)` -/
def P7888199153310534264.Spec : Prop :=
  ∀ n, P7888199153310534264.a n = A037776 (n + 1)

end A037776

/-! ## A037776.P11013608179301639332

`A037769(n+1)+A037790(n+1)-A037783(n+1)`
-/

namespace A037776.P11013608179301639332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 1) + (A037790 (n + 1) - A037783 (n + 1))

end

end A037776.P11013608179301639332

namespace A037776

/-- `A037769(n+1)+A037790(n+1)-A037783(n+1)` -/
def P11013608179301639332.Spec : Prop :=
  ∀ n, P11013608179301639332.a n = A037776 (n + 1)

end A037776

/-! ## A037776.P12137879002910044694

`A037755(n+2)%A001018(n+1)`
-/

namespace A037776.P12137879002910044694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037755 (n + 2)) (A001018 (n + 1))

end

end A037776.P12137879002910044694

namespace A037776

/-- `A037755(n+2)%A001018(n+1)` -/
def P12137879002910044694.Spec : Prop :=
  ∀ n, P12137879002910044694.a n = A037776 (n + 1)

end A037776

/-! ## A037776.P620800939104053637

`A037769(n+2)-Δ[A037762(n+1)]`
-/

namespace A037776.P620800939104053637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037776.P620800939104053637

namespace A037776

/-- `A037769(n+2)-Δ[A037762(n+1)]` -/
def P620800939104053637.Spec : Prop :=
  ∀ n, P620800939104053637.a n = A037776 (n + 1)

end A037776

/-!
# A037777: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037777, the canonical program `A037777.P6774958247007870770` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037777 has offset 1).

The definition of A037777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037777.P6774958247007870770

`∑[xor(9*a(n-1), A000034(n))]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037777

/-- `∑[xor(9*a(n-1), A000034(n))]` -/
def P6774958247007870770.Spec : Prop :=
  ∀ n, P6774958247007870770.a n = A037777 (n + 1)

theorem P6774958247007870770.correct : P6774958247007870770.Spec := by
  intro n
  simp only [A037777, Nat.add_sub_cancel]

end A037777

/-! ## A037777.P10423097892169985801

`A037714(n+1)+A037763(n+1)-A037700(n+1)`
-/

namespace A037777.P10423097892169985801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037714 (n + 1) + (A037763 (n + 1) - A037700 (n + 1))

end

end A037777.P10423097892169985801

namespace A037777

/-- `A037714(n+1)+A037763(n+1)-A037700(n+1)` -/
def P10423097892169985801.Spec : Prop :=
  ∀ n, P10423097892169985801.a n = A037777 (n + 1)

end A037777

/-! ## A037777.P2307618565387665524

`A037728(n+1)+A037749(n+1)-A037700(n+1)`
-/

namespace A037777.P2307618565387665524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037728 (n + 1) + (A037749 (n + 1) - A037700 (n + 1))

end

end A037777.P2307618565387665524

namespace A037777

/-- `A037728(n+1)+A037749(n+1)-A037700(n+1)` -/
def P2307618565387665524.Spec : Prop :=
  ∀ n, P2307618565387665524.a n = A037777 (n + 1)

end A037777

/-! ## A037777.P13552517416036892160

`A037763(n+1)+A037798(n+1)-A037784(n+1)`
-/

namespace A037777.P13552517416036892160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037763 (n + 1) + (A037798 (n + 1) - A037784 (n + 1))

end

end A037777.P13552517416036892160

namespace A037777

/-- `A037763(n+1)+A037798(n+1)-A037784(n+1)` -/
def P13552517416036892160.Spec : Prop :=
  ∀ n, P13552517416036892160.a n = A037777 (n + 1)

end A037777

/-! ## A037777.P4402290747285495613

`A037770(n+1)+A037791(n+1)-A037784(n+1)`
-/

namespace A037777.P4402290747285495613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1) + (A037791 (n + 1) - A037784 (n + 1))

end

end A037777.P4402290747285495613

namespace A037777

/-- `A037770(n+1)+A037791(n+1)-A037784(n+1)` -/
def P4402290747285495613.Spec : Prop :=
  ∀ n, P4402290747285495613.a n = A037777 (n + 1)

end A037777

/-! ## A037777.P10933731285277588359

`Δ[∑[A037770(n+1)]-A037763(n+1)]`
-/

namespace A037777.P10933731285277588359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037777.P10933731285277588359

namespace A037777

/-- `Δ[∑[A037770(n+1)]-A037763(n+1)]` -/
def P10933731285277588359.Spec : Prop :=
  ∀ n, P10933731285277588359.a n = A037777 (n + 1)

end A037777

/-! ## A037777.P4617742707419625688

`∑[xor(9*a(n-1), A006519(n²+1))]` with `a(0)=3`
-/

namespace A037777.P4617742707419625688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A006519 (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037777.P4617742707419625688

namespace A037777

/-- `∑[xor(9*a(n-1), A006519(n²+1))]` -/
def P4617742707419625688.Spec : Prop :=
  ∀ n, P4617742707419625688.a n = A037777 (n + 1)

end A037777

/-!
# A037778: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1,0,2.

The programs for A037778, the canonical program `A037778.P5190826837604657118` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037778 has offset 1).

The definition of A037778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037778.P5190826837604657118

`or(2, char[and(2, n)+n]+10*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037778

/-- `or(2, char[and(2, n)+n]+10*a(n-1))` -/
def P5190826837604657118.Spec : Prop :=
  ∀ n, (P5190826837604657118.a n : ℤ) = A037778 (n + 1)

theorem P5190826837604657118.correct : P5190826837604657118.Spec := by
  intro n
  simp only [A037778, Nat.add_sub_cancel]

end A037778

/-! ## A037778.P7763640783714059663

`A256304(A037723(n+1))`
-/

namespace A037778.P7763640783714059663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A037723 (n + 1)).toNat

end

end A037778.P7763640783714059663

namespace A037778

/-- `A256304(A037723(n+1))` -/
def P7763640783714059663.Spec : Prop :=
  ∀ n, P7763640783714059663.a n = A037778 (n + 1)

end A037778

/-!
# A037779: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037779, the canonical program `A037779.P13426921809854357259` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037779 has offset 1).

The definition of A037779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037779.P13426921809854357259

`xor(or(3, a(n-1))+3*a(n-1), and(1, n))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037779

/-- `xor(or(3, a(n-1))+3*a(n-1), and(1, n))` -/
def P13426921809854357259.Spec : Prop :=
  ∀ n, (P13426921809854357259.a n : ℤ) = A037779 (n + 1)

theorem P13426921809854357259.correct : P13426921809854357259.Spec := by
  intro n
  simp only [A037779, Nat.add_sub_cancel]

end A037779

/-! ## A037779.P16942286946515773505

`xor(∑[2*4^n], A037702(n+1))`
-/

namespace A037779.P16942286946515773505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037702 (n + 1))

end

end A037779.P16942286946515773505

namespace A037779

/-- `xor(∑[2*4^n], A037702(n+1))` -/
def P16942286946515773505.Spec : Prop :=
  ∀ n, P16942286946515773505.a n = A037779 (n + 1)

end A037779

/-! ## A037779.P5688843926373240145

`xor(a(n-1), A265381(2*n+1))` with `a(0)=3`
-/

namespace A037779.P5688843926373240145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor (a (n - 1)) (A265381 (2 * n + 1))

end

end A037779.P5688843926373240145

namespace A037779

/-- `xor(a(n-1), A265381(2*n+1))` -/
def P5688843926373240145.Spec : Prop :=
  ∀ n, P5688843926373240145.a n = A037779 (n + 1)

end A037779

/-! ## A037779.P12003370105274831626

`xor(floor(5*4^(n+1)/17), A037730(n+1))`
-/

namespace A037779.P12003370105274831626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊5 * ((4 ^ (n + 1) : ℚ) / 17)⌋ (A037730 (n + 1))

end

end A037779.P12003370105274831626

namespace A037779

/-- `xor(floor(5*4^(n+1)/17), A037730(n+1))` -/
def P12003370105274831626.Spec : Prop :=
  ∀ n, P12003370105274831626.a n = A037779 (n + 1)

end A037779

/-! ## A037779.P330371821408782794

`xor(A033114(n+1), A037737(n+1))`
-/

namespace A037779.P330371821408782794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033114 (n + 1)) (A037737 (n + 1))

end

end A037779.P330371821408782794

namespace A037779

/-- `xor(A033114(n+1), A037737(n+1))` -/
def P330371821408782794.Spec : Prop :=
  ∀ n, P330371821408782794.a n = A037779 (n + 1)

end A037779

/-! ## A037779.P373247980477221968

`xor(A037695(n+1), A037751(n+1))`
-/

namespace A037779.P373247980477221968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A037751 (n + 1))

end

end A037779.P373247980477221968

namespace A037779

/-- `xor(A037695(n+1), A037751(n+1))` -/
def P373247980477221968.Spec : Prop :=
  ∀ n, P373247980477221968.a n = A037779 (n + 1)

end A037779

/-! ## A037779.P3087187333680506121

`floor(A276300(n+4)/51)`
-/

namespace A037779.P3087187333680506121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A276300 (n + 4) : ℚ) / 51⌋

end

end A037779.P3087187333680506121

namespace A037779

/-- `floor(A276300(n+4)/51)` -/
def P3087187333680506121.Spec : Prop :=
  ∀ n, P3087187333680506121.a n = A037779 (n + 1)

end A037779

/-!
# A037780: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037780, the canonical program `A037780.P9453459313132871688` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037780 has offset 1).

The definition of A037780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037780.P3698777489563666186

`∑[xor(5*a(n-1), A020639(3*(n+1)))]` with `a(0)=3`
-/

namespace A037780.P3698777489563666186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A020639 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037780.P3698777489563666186

namespace A037780

/-- `∑[xor(5*a(n-1), A020639(3*(n+1)))]` -/
def P3698777489563666186.Spec : Prop :=
  ∀ n, P3698777489563666186.a n = A037780 (n + 1)

end A037780

/-! ## A037780.P12807209734555082361

`A037759(n+1)+A037794(n+1)-A037773(n+1)`
-/

namespace A037780.P12807209734555082361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037759 (n + 1) + (A037794 (n + 1) - A037773 (n + 1))

end

end A037780.P12807209734555082361

namespace A037780

/-- `A037759(n+1)+A037794(n+1)-A037773(n+1)` -/
def P12807209734555082361.Spec : Prop :=
  ∀ n, P12807209734555082361.a n = A037780 (n + 1)

end A037780

/-! ## A037780.P9453459313132871688

`A037766(n+1)+A037787(n+1)-A037773(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037780

/-- `A037766(n+1)+A037787(n+1)-A037773(n+1)` -/
def P9453459313132871688.Spec : Prop :=
  ∀ n, P9453459313132871688.a n = A037780 (n + 1)

theorem P9453459313132871688.correct : P9453459313132871688.Spec := by
  intro n
  simp only [A037780, Nat.add_sub_cancel]

end A037780

/-! ## A037780.P10011121521551696755

`Δ[∑[A037787(n+1)]-A037794(n+1)]`
-/

namespace A037780.P10011121521551696755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037787 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037780.P10011121521551696755

namespace A037780

/-- `Δ[∑[A037787(n+1)]-A037794(n+1)]` -/
def P10011121521551696755.Spec : Prop :=
  ∀ n, P10011121521551696755.a n = A037780 (n + 1)

end A037780

/-! ## A037780.P11703780743375766723

`A037689(n+3)-Δ[A037703(n+2)]`
-/

namespace A037780.P11703780743375766723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037703 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037689 (n + 3) - (f1 (n + 1) - f1 n)

end

end A037780.P11703780743375766723

namespace A037780

/-- `A037689(n+3)-Δ[A037703(n+2)]` -/
def P11703780743375766723.Spec : Prop :=
  ∀ n, P11703780743375766723.a n = A037780 (n + 1)

end A037780

/-!
# A037781: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037781, the canonical program `A037781.P16687809156034504389` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037781 has offset 1).

The definition of A037781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037781.P16687809156034504389

`xor(1, or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037781

/-- `xor(1, or(1, (n+1)%2+3*a(n-1))+(n+1)%2+3*a(n-1))` -/
def P16687809156034504389.Spec : Prop :=
  ∀ n, (P16687809156034504389.a n : ℤ) = A037781 (n + 1)

theorem P16687809156034504389.correct : P16687809156034504389.Spec := by
  intro n
  simp only [A037781, Nat.add_sub_cancel]

end A037781

/-! ## A037781.P14991583580144900674

`A037704(n+1)+abs(∑[2*(-6)^n])`
-/

namespace A037781.P14991583580144900674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-6) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037704 (n + 1) + |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A037781.P14991583580144900674

namespace A037781

/-- `A037704(n+1)+abs(∑[2*(-6)^n])` -/
def P14991583580144900674.Spec : Prop :=
  ∀ n, P14991583580144900674.a n = A037781 (n + 1)

theorem P14991583580144900674.correct : P14991583580144900674.Spec := by
  intro n
  simp only [A037781, Nat.add_sub_cancel, A037781.P14991583580144900674.f1, A037781.P14991583580144900674.a, A037781.P16687809156034504389.a, A037704, A037704.P10007880330430517214.f1, A037704.P10007880330430517214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037781

/-! ## A037781.P17649237197401553174

`A037767(n+1)+A037788(n+1)-A037774(n+1)`
-/

namespace A037781.P17649237197401553174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) + (A037788 (n + 1) - A037774 (n + 1))

end

end A037781.P17649237197401553174

namespace A037781

/-- `A037767(n+1)+A037788(n+1)-A037774(n+1)` -/
def P17649237197401553174.Spec : Prop :=
  ∀ n, P17649237197401553174.a n = A037781 (n + 1)

theorem P17649237197401553174.correct : P17649237197401553174.Spec := by
  intro n
  simp only [A037781, Nat.add_sub_cancel, A037781.P17649237197401553174.a, A037781.P16687809156034504389.a, A037767, A037767.P12662760880017921865.a, A037774, A037774.P1186075867567179161.a, A037788, A037788.P16633097577509408614.a, A037739, A037739.P18257991991248789603.a, A037753, A037753.P10507737516097663728.a, A037746, A037746.P1636314081189769102.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037781

/-! ## A037781.P3619688504819096889

`A037739(n+1)+∑[A037767(n+1)-A037739(n+1)]`
-/

namespace A037781.P3619688504819096889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - A037739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037739 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037781.P3619688504819096889

namespace A037781

/-- `A037739(n+1)+∑[A037767(n+1)-A037739(n+1)]` -/
def P3619688504819096889.Spec : Prop :=
  ∀ n, P3619688504819096889.a n = A037781 (n + 1)

end A037781

/-! ## A037781.P16173806373878186531

`A037788(n+2)-Δ[A037795(n+1)]`
-/

namespace A037781.P16173806373878186531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037788 (n + 2) - (f1 (n + 1) - f1 n)

end

end A037781.P16173806373878186531

namespace A037781

/-- `A037788(n+2)-Δ[A037795(n+1)]` -/
def P16173806373878186531.Spec : Prop :=
  ∀ n, P16173806373878186531.a n = A037781 (n + 1)

end A037781

/-! ## A037781.P14094582148458334334

`A037690(n+3)-Δ[A037704(n+2)]`
-/

namespace A037781.P14094582148458334334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037704 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037690 (n + 3) - (f1 (n + 1) - f1 n)

end

end A037781.P14094582148458334334

namespace A037781

/-- `A037690(n+3)-Δ[A037704(n+2)]` -/
def P14094582148458334334.Spec : Prop :=
  ∀ n, P14094582148458334334.a n = A037781 (n + 1)

end A037781

/-! ## A037781.P5510313124563009684

`A037788(n+1)+Δ[A037760(n+1)-A037767(n+1)]`
-/

namespace A037781.P5510313124563009684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037760 (n + 1) - A037767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037788 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037781.P5510313124563009684

namespace A037781

/-- `A037788(n+1)+Δ[A037760(n+1)-A037767(n+1)]` -/
def P5510313124563009684.Spec : Prop :=
  ∀ n, P5510313124563009684.a n = A037781 (n + 1)

end A037781

/-!
# A037782: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037782, the canonical program `A037782.P1367770781992612483` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037782 has offset 1).

The definition of A037782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037782.P1367770781992612483

`floor(13*7^(n+2)/200)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037782

/-- `floor(13*7^(n+2)/200)` -/
def P1367770781992612483.Spec : Prop :=
  ∀ n, P1367770781992612483.a n = A037782 (n + 1)

theorem P1367770781992612483.correct : P1367770781992612483.Spec := by
  intro n
  simp only [A037782, Nat.add_sub_cancel]

end A037782

/-! ## A037782.P11742626719286719850

`A037719(n+1)+A037740(n+1)-A037677(n+1)`
-/

namespace A037782.P11742626719286719850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037740 (n + 1) - A037677 (n + 1))

end

end A037782.P11742626719286719850

namespace A037782

/-- `A037719(n+1)+A037740(n+1)-A037677(n+1)` -/
def P11742626719286719850.Spec : Prop :=
  ∀ n, P11742626719286719850.a n = A037782 (n + 1)

end A037782

/-! ## A037782.P2356156170587456049

`A037705(n+1)+A037768(n+1)-A037691(n+1)`
-/

namespace A037782.P2356156170587456049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037768 (n + 1) - A037691 (n + 1))

end

end A037782.P2356156170587456049

namespace A037782

/-- `A037705(n+1)+A037768(n+1)-A037691(n+1)` -/
def P2356156170587456049.Spec : Prop :=
  ∀ n, P2356156170587456049.a n = A037782 (n + 1)

end A037782

/-! ## A037782.P7014819573322165380

`A037719(n+1)+A037754(n+1)-A037691(n+1)`
-/

namespace A037782.P7014819573322165380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037719 (n + 1) + (A037754 (n + 1) - A037691 (n + 1))

end

end A037782.P7014819573322165380

namespace A037782

/-- `A037719(n+1)+A037754(n+1)-A037691(n+1)` -/
def P7014819573322165380.Spec : Prop :=
  ∀ n, P7014819573322165380.a n = A037782 (n + 1)

end A037782

/-! ## A037782.P9557705949584749958

`A037712(n+1)+A037775(n+1)-A037705(n+1)`
-/

namespace A037782.P9557705949584749958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037712 (n + 1) + (A037775 (n + 1) - A037705 (n + 1))

end

end A037782.P9557705949584749958

namespace A037782

/-- `A037712(n+1)+A037775(n+1)-A037705(n+1)` -/
def P9557705949584749958.Spec : Prop :=
  ∀ n, P9557705949584749958.a n = A037782 (n + 1)

end A037782

/-! ## A037782.P12362531908799634755

`A037740(n+1)+A037768(n+1)-A037726(n+1)`
-/

namespace A037782.P12362531908799634755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037740 (n + 1) + (A037768 (n + 1) - A037726 (n + 1))

end

end A037782.P12362531908799634755

namespace A037782

/-- `A037740(n+1)+A037768(n+1)-A037726(n+1)` -/
def P12362531908799634755.Spec : Prop :=
  ∀ n, P12362531908799634755.a n = A037782 (n + 1)

end A037782

/-! ## A037782.P15493316325917806592

`A037761(n+1)+A037796(n+1)-A037775(n+1)`
-/

namespace A037782.P15493316325917806592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037761 (n + 1) + (A037796 (n + 1) - A037775 (n + 1))

end

end A037782.P15493316325917806592

namespace A037782

/-- `A037761(n+1)+A037796(n+1)-A037775(n+1)` -/
def P15493316325917806592.Spec : Prop :=
  ∀ n, P15493316325917806592.a n = A037782 (n + 1)

end A037782

/-! ## A037782.P13243195471411379993

`Δ[∑[A037789(n+1)]-A037796(n+1)]`
-/

namespace A037782.P13243195471411379993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037789 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037782.P13243195471411379993

namespace A037782

/-- `Δ[∑[A037789(n+1)]-A037796(n+1)]` -/
def P13243195471411379993.Spec : Prop :=
  ∀ n, P13243195471411379993.a n = A037782 (n + 1)

end A037782

/-!
# A037783: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037783, the canonical program `A037783.P4880165732964237302` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037783 has offset 1).

The definition of A037783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037783.P4725508562891821004

`xor(∑[A001018(n)], A037727(n+1))`
-/

namespace A037783.P4725508562891821004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037727 (n + 1))

end

end A037783.P4725508562891821004

namespace A037783

/-- `xor(∑[A001018(n)], A037727(n+1))` -/
def P4725508562891821004.Spec : Prop :=
  ∀ n, P4725508562891821004.a n = A037783 (n + 1)

end A037783

/-! ## A037783.P4880165732964237302

`xor(A037699(n+1), A037755(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037783

/-- `xor(A037699(n+1), A037755(n+1))` -/
def P4880165732964237302.Spec : Prop :=
  ∀ n, P4880165732964237302.a n = A037783 (n + 1)

theorem P4880165732964237302.correct : P4880165732964237302.Spec := by
  intro n
  simp only [A037783, Nat.add_sub_cancel]

end A037783

/-! ## A037783.P701419022221793586

`xor(A037741(n+1), A195904(A016777(n)))`
-/

namespace A037783.P701419022221793586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037741 (n + 1)) (A195904 (A016777 n).toNat)

end

end A037783.P701419022221793586

namespace A037783

/-- `xor(A037741(n+1), A195904(A016777(n)))` -/
def P701419022221793586.Spec : Prop :=
  ∀ n, P701419022221793586.a n = A037783 (n + 1)

end A037783

/-! ## A037783.P8094332674718895339

`A037741(n+1)+A037769(n+1)-A037727(n+1)`
-/

namespace A037783.P8094332674718895339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037741 (n + 1) + (A037769 (n + 1) - A037727 (n + 1))

end

end A037783.P8094332674718895339

namespace A037783

/-- `A037741(n+1)+A037769(n+1)-A037727(n+1)` -/
def P8094332674718895339.Spec : Prop :=
  ∀ n, P8094332674718895339.a n = A037783 (n + 1)

end A037783

/-! ## A037783.P11466675231051576747

`A037769(n+1)+A037790(n+1)-A037776(n+1)`
-/

namespace A037783.P11466675231051576747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 1) + (A037790 (n + 1) - A037776 (n + 1))

end

end A037783.P11466675231051576747

namespace A037783

/-- `A037769(n+1)+A037790(n+1)-A037776(n+1)` -/
def P11466675231051576747.Spec : Prop :=
  ∀ n, P11466675231051576747.a n = A037783 (n + 1)

end A037783

/-! ## A037783.P7932062260612858127

`A037580(n+2)-and(A037580(n+2), A037769(n+2))`
-/

namespace A037783.P7932062260612858127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037580 (n + 2) - Int.land (A037580 (n + 2)) (A037769 (n + 2))

end

end A037783.P7932062260612858127

namespace A037783

/-- `A037580(n+2)-and(A037580(n+2), A037769(n+2))` -/
def P7932062260612858127.Spec : Prop :=
  ∀ n, P7932062260612858127.a n = A037783 (n + 1)

end A037783

/-!
# A037784: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037784, the canonical program `A037784.P2536366957754948403` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037784 has offset 1).

The definition of A037784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037784.P2536366957754948403

`A037700(n+1)+A037798(n+1)-A037714(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037784

/-- `A037700(n+1)+A037798(n+1)-A037714(n+1)` -/
def P2536366957754948403.Spec : Prop :=
  ∀ n, P2536366957754948403.a n = A037784 (n + 1)

theorem P2536366957754948403.correct : P2536366957754948403.Spec := by
  intro n
  simp only [A037784, Nat.add_sub_cancel]

end A037784

/-! ## A037784.P3191591247815899872

`A037721(n+1)+A037798(n+1)-A037735(n+1)`
-/

namespace A037784.P3191591247815899872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037721 (n + 1) + (A037798 (n + 1) - A037735 (n + 1))

end

end A037784.P3191591247815899872

namespace A037784

/-- `A037721(n+1)+A037798(n+1)-A037735(n+1)` -/
def P3191591247815899872.Spec : Prop :=
  ∀ n, P3191591247815899872.a n = A037784 (n + 1)

end A037784

/-! ## A037784.P961526773098383361

`A037770(n+1)+A037791(n+1)-A037777(n+1)`
-/

namespace A037784.P961526773098383361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1) + (A037791 (n + 1) - A037777 (n + 1))

end

end A037784.P961526773098383361

namespace A037784

/-- `A037770(n+1)+A037791(n+1)-A037777(n+1)` -/
def P961526773098383361.Spec : Prop :=
  ∀ n, P961526773098383361.a n = A037784 (n + 1)

end A037784

/-! ## A037784.P18067998659697849212

`A037742(n+1)+∑[A037770(n+1)-A037742(n+1)]`
-/

namespace A037784.P18067998659697849212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1) - A037742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037742 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037784.P18067998659697849212

namespace A037784

/-- `A037742(n+1)+∑[A037770(n+1)-A037742(n+1)]` -/
def P18067998659697849212.Spec : Prop :=
  ∀ n, P18067998659697849212.a n = A037784 (n + 1)

end A037784

/-! ## A037784.P1100275475830750276

`Δ[∑[A037791(n+1)]-A037798(n+1)]`
-/

namespace A037784.P1100275475830750276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037791 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A037798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037784.P1100275475830750276

namespace A037784

/-- `Δ[∑[A037791(n+1)]-A037798(n+1)]` -/
def P1100275475830750276.Spec : Prop :=
  ∀ n, P1100275475830750276.a n = A037784 (n + 1)

end A037784

/-! ## A037784.P7560842816014476358

`A037693(n+3)-Δ[A037707(n+2)]`
-/

namespace A037784.P7560842816014476358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037693 (n + 3) - (f1 (n + 1) - f1 n)

end

end A037784.P7560842816014476358

namespace A037784

/-- `A037693(n+3)-Δ[A037707(n+2)]` -/
def P7560842816014476358.Spec : Prop :=
  ∀ n, P7560842816014476358.a n = A037784 (n + 1)

end A037784

/-!
# A037785: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,1,2,0.

The programs for A037785, there is no canonical definition to state claims against.
-/

/-! ## A037785.P11705129714981191331

`A256304(A037716(n+1))`
-/

namespace A037785.P11705129714981191331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256304 (A037716 (n + 1)).toNat

end

end A037785.P11705129714981191331

/-! ## A037785.P14436388150204063467

`A007090(A037779(n+1))`
-/

namespace A037785.P14436388150204063467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037779 (n + 1)).toNat

end

end A037785.P14436388150204063467

/-!
# A037786: Base 4 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037786, the canonical program `A037786.P2623075195376458617` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037786 has offset 1).

The definition of A037786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037786.P2623075195376458617

`floor(60*4^(n+1)/68)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037786

/-- `floor(60*4^(n+1)/68)` -/
def P2623075195376458617.Spec : Prop :=
  ∀ n, P2623075195376458617.a n = A037786 (n + 1)

theorem P2623075195376458617.correct : P2623075195376458617.Spec := by
  intro n
  simp only [A037786, Nat.add_sub_cancel]

end A037786

/-! ## A037786.P5389304435461689443

`ogf((3-x+x^2)/(1-5x+5x^2-5x^3+4x^4))`
-/

namespace A037786.P5389304435461689443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1] [1, -5, 5, -5, 4] n

end

end A037786.P5389304435461689443

namespace A037786

/-- `ogf((3-x+x^2)/(1-5x+5x^2-5x^3+4x^4))` -/
def P5389304435461689443.Spec : Prop :=
  ∀ n, P5389304435461689443.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P14050899675598443167

`xor(∑[4*a(n-1)], A037751(n+1))` with `a(0)=1`
-/

namespace A037786.P14050899675598443167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A037751 (n + 1))

end

end A037786.P14050899675598443167

namespace A037786

/-- `xor(∑[4*a(n-1)], A037751(n+1))` -/
def P14050899675598443167.Spec : Prop :=
  ∀ n, P14050899675598443167.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P12639990673154341202

`xor(2, or(4*a(n-1), (A000032(n)-1)%5))` with `a(0)=3`
-/

namespace A037786.P12639990673154341202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.xor 2 (Int.lor (4 * a (n - 1)) (Int.tmod (A000032 n - 1) 5))

end

end A037786.P12639990673154341202

namespace A037786

/-- `xor(2, or(4*a(n-1), (A000032(n)-1)%5))` -/
def P12639990673154341202.Spec : Prop :=
  ∀ n, P12639990673154341202.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P6841816516818006022

`xor(∑[A000302(n)], A037751(n+1))`
-/

namespace A037786.P6841816516818006022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037751 (n + 1))

end

end A037786.P6841816516818006022

namespace A037786

/-- `xor(∑[A000302(n)], A037751(n+1))` -/
def P6841816516818006022.Spec : Prop :=
  ∀ n, P6841816516818006022.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P13562911529165637833

`xor(A037489(n+1), A037709(n+1))`
-/

namespace A037786.P13562911529165637833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037489 (n + 1)) (A037709 (n + 1))

end

end A037786.P13562911529165637833

namespace A037786

/-- `xor(A037489(n+1), A037709(n+1))` -/
def P13562911529165637833.Spec : Prop :=
  ∀ n, P13562911529165637833.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P678090423557458377

`xor(A037695(n+1), A037723(n+1))`
-/

namespace A037786.P678090423557458377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A037723 (n + 1))

end

end A037786.P678090423557458377

namespace A037786

/-- `xor(A037695(n+1), A037723(n+1))` -/
def P678090423557458377.Spec : Prop :=
  ∀ n, P678090423557458377.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P16566973419411232145

`xor(A037702(n+1), A037730(n+1))`
-/

namespace A037786.P16566973419411232145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037702 (n + 1)) (A037730 (n + 1))

end

end A037786.P16566973419411232145

namespace A037786

/-- `xor(A037702(n+1), A037730(n+1))` -/
def P16566973419411232145.Spec : Prop :=
  ∀ n, P16566973419411232145.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P12187195041480845251

`A037709(n+2)-A000302(n+1)`
-/

namespace A037786.P12187195041480845251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037709 (n + 2) - A000302 (n + 1)

end

end A037786.P12187195041480845251

namespace A037786

/-- `A037709(n+2)-A000302(n+1)` -/
def P12187195041480845251.Spec : Prop :=
  ∀ n, P12187195041480845251.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P3312459802262024293

`A224520(2*n+3)-A000079(n+1)²`
-/

namespace A037786.P3312459802262024293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (2 * n + 3) - A000079 (n + 1) ^ 2

end

end A037786.P3312459802262024293

namespace A037786

/-- `A224520(2*n+3)-A000079(n+1)²` -/
def P3312459802262024293.Spec : Prop :=
  ∀ n, P3312459802262024293.a n = A037786 (n + 1)

end A037786

/-! ## A037786.P8875189677406667298

`A224520(2*n+3)-A000079(2*(n+1))`
-/

namespace A037786.P8875189677406667298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 (2 * n + 3) - A000079 (2 * (n + 1))

end

end A037786.P8875189677406667298

namespace A037786

/-- `A224520(2*n+3)-A000079(2*(n+1))` -/
def P8875189677406667298.Spec : Prop :=
  ∀ n, P8875189677406667298.a n = A037786 (n + 1)

end A037786

/-!
# A037787: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037787, the canonical program `A037787.P4328001275724265141` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037787 has offset 1).

The definition of A037787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037787.P4328001275724265141

`6*a(n-1)-6*a(n-2)+6*a(n-3)-5*a(n-4)` with `a(0)=3, a(1)=17, a(2)=85, a(3)=426`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037787

/-- `6*a(n-1)-6*a(n-2)+6*a(n-3)-5*a(n-4)` -/
def P4328001275724265141.Spec : Prop :=
  ∀ n, P4328001275724265141.a n = A037787 (n + 1)

theorem P4328001275724265141.correct : P4328001275724265141.Spec := by
  intro n
  simp only [A037787, Nat.add_sub_cancel]

end A037787

/-! ## A037787.P10850905476749086160

`ogf((3-x+x^2)/(1-6x+6x^2-6x^3+5x^4))`
-/

namespace A037787.P10850905476749086160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1] [1, -6, 6, -6, 5] n

end

end A037787.P10850905476749086160

namespace A037787

/-- `ogf((3-x+x^2)/(1-6x+6x^2-6x^3+5x^4))` -/
def P10850905476749086160.Spec : Prop :=
  ∀ n, P10850905476749086160.a n = A037787 (n + 1)

end A037787

/-! ## A037787.P1794731199831299196

`∑[xor(5*a(n-1), gcd(2, n))]` with `a(0)=3`
-/

namespace A037787.P1794731199831299196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Nat.xor (5 * f1 (n - 1)) (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037787.P1794731199831299196

namespace A037787

/-- `∑[xor(5*a(n-1), gcd(2, n))]` -/
def P1794731199831299196.Spec : Prop :=
  ∀ n, (P1794731199831299196.a n : ℤ) = A037787 (n + 1)

end A037787

/-! ## A037787.P9464955281203423315

`∑[xor(5*a(n-1), A134451(n))]` with `a(0)=3`
-/

namespace A037787.P9464955281203423315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A134451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037787.P9464955281203423315

namespace A037787

/-- `∑[xor(5*a(n-1), A134451(n))]` -/
def P9464955281203423315.Spec : Prop :=
  ∀ n, P9464955281203423315.a n = A037787 (n + 1)

end A037787

/-! ## A037787.P16151720076610190082

`A037752(n+1)+A037766(n+1)-A037738(n+1)`
-/

namespace A037787.P16151720076610190082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037752 (n + 1) + (A037766 (n + 1) - A037738 (n + 1))

end

end A037787.P16151720076610190082

namespace A037787

/-- `A037752(n+1)+A037766(n+1)-A037738(n+1)` -/
def P16151720076610190082.Spec : Prop :=
  ∀ n, P16151720076610190082.a n = A037787 (n + 1)

end A037787

/-! ## A037787.P18213971433391638784

`A037745(n+1)+A037794(n+1)-A037752(n+1)`
-/

namespace A037787.P18213971433391638784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037745 (n + 1) + (A037794 (n + 1) - A037752 (n + 1))

end

end A037787.P18213971433391638784

namespace A037787

/-- `A037745(n+1)+A037794(n+1)-A037752(n+1)` -/
def P18213971433391638784.Spec : Prop :=
  ∀ n, P18213971433391638784.a n = A037787 (n + 1)

end A037787

/-! ## A037787.P18132569596735581506

`A037759(n+1)+A037794(n+1)-A037766(n+1)`
-/

namespace A037787.P18132569596735581506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037759 (n + 1) + (A037794 (n + 1) - A037766 (n + 1))

end

end A037787.P18132569596735581506

namespace A037787

/-- `A037759(n+1)+A037794(n+1)-A037766(n+1)` -/
def P18132569596735581506.Spec : Prop :=
  ∀ n, P18132569596735581506.a n = A037787 (n + 1)

end A037787

/-! ## A037787.P11709878952410610492

`A037773(n+1)+A037780(n+1)-A037766(n+1)`
-/

namespace A037787.P11709878952410610492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037773 (n + 1) + (A037780 (n + 1) - A037766 (n + 1))

end

end A037787.P11709878952410610492

namespace A037787

/-- `A037773(n+1)+A037780(n+1)-A037766(n+1)` -/
def P11709878952410610492.Spec : Prop :=
  ∀ n, P11709878952410610492.a n = A037787 (n + 1)

theorem P11709878952410610492.correct : P11709878952410610492.Spec := by
  intro n
  simp only [A037787, Nat.add_sub_cancel, A037787.P11709878952410610492.a, A037787.P4328001275724265141.a, A037766, A037766.P15632211533706168488.a, A037773, A037773.P9980543157049036755.f1, A037773.P9980543157049036755.a, A037780, A037780.P9453459313132871688.a, A037745, A037745.P16806909000048906870.a, A037752, A037752.P8103894507674030329.f1, A037752.P8103894507674030329.a, A037759, A037759.P7672012952696768290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037787

/-!
# A037788: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037788, the canonical program `A037788.P16633097577509408614` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037788 has offset 1).

The definition of A037788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037788.P4737600042337455238

`∑[ogf((3-x+x^2)/(1-6x+x^2-6x^3))]`
-/

namespace A037788.P4737600042337455238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 1] [1, -6, 1, -6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037788.P4737600042337455238

namespace A037788

/-- `∑[ogf((3-x+x^2)/(1-6x+x^2-6x^3))]` -/
def P4737600042337455238.Spec : Prop :=
  ∀ n, P4737600042337455238.a n = A037788 (n + 1)

end A037788

/-! ## A037788.P13717075378255552051

`xor((n+2)%4+6*a(n-1), char[and(n, -3)])` with `a(0)=3`
-/

namespace A037788.P13717075378255552051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor ((n + 2) % 4 + 6 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A037788.P13717075378255552051

namespace A037788

/-- `xor((n+2)%4+6*a(n-1), char[and(n, -3)])` -/
def P13717075378255552051.Spec : Prop :=
  ∀ n, (P13717075378255552051.a n : ℤ) = A037788 (n + 1)

end A037788

/-! ## A037788.P16633097577509408614

`A037753(n+1)+A037767(n+1)-A037739(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037788

/-- `A037753(n+1)+A037767(n+1)-A037739(n+1)` -/
def P16633097577509408614.Spec : Prop :=
  ∀ n, P16633097577509408614.a n = A037788 (n + 1)

theorem P16633097577509408614.correct : P16633097577509408614.Spec := by
  intro n
  simp only [A037788, Nat.add_sub_cancel]

end A037788

/-! ## A037788.P12146676443364326154

`A037774(n+1)+A037781(n+1)-A037767(n+1)`
-/

namespace A037788.P12146676443364326154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) + (A037781 (n + 1) - A037767 (n + 1))

end

end A037788.P12146676443364326154

namespace A037788

/-- `A037774(n+1)+A037781(n+1)-A037767(n+1)` -/
def P12146676443364326154.Spec : Prop :=
  ∀ n, P12146676443364326154.a n = A037788 (n + 1)

theorem P12146676443364326154.correct : P12146676443364326154.Spec := by
  intro n
  simp only [A037788, Nat.add_sub_cancel, A037788.P12146676443364326154.a, A037788.P16633097577509408614.a, A037739, A037739.P18257991991248789603.a, A037753, A037753.P10507737516097663728.a, A037767, A037767.P12662760880017921865.a, A037774, A037774.P1186075867567179161.a, A037781, A037781.P16687809156034504389.a, A037746, A037746.P1636314081189769102.a, A037760, A037760.P8631641189815898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A037788

/-! ## A037788.P10404465757539202505

`A037781(n+1)+Δ[A037767(n+1)-A037760(n+1)]`
-/

namespace A037788.P10404465757539202505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) - A037760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037781 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037788.P10404465757539202505

namespace A037788

/-- `A037781(n+1)+Δ[A037767(n+1)-A037760(n+1)]` -/
def P10404465757539202505.Spec : Prop :=
  ∀ n, P10404465757539202505.a n = A037788 (n + 1)

end A037788

/-!
# A037789: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037789, the canonical program `A037789.P11196019509832016941` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037789 has offset 1).

The definition of A037789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037789.P9894282985161272404

`A037691(n+1)+A037768(n+1)-A037677(n+1)`
-/

namespace A037789.P9894282985161272404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037691 (n + 1) + (A037768 (n + 1) - A037677 (n + 1))

end

end A037789.P9894282985161272404

namespace A037789

/-- `A037691(n+1)+A037768(n+1)-A037677(n+1)` -/
def P9894282985161272404.Spec : Prop :=
  ∀ n, P9894282985161272404.a n = A037789 (n + 1)

end A037789

/-! ## A037789.P14758551691152308140

`A037705(n+1)+A037775(n+1)-A037691(n+1)`
-/

namespace A037789.P14758551691152308140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037705 (n + 1) + (A037775 (n + 1) - A037691 (n + 1))

end

end A037789.P14758551691152308140

namespace A037789

/-- `A037705(n+1)+A037775(n+1)-A037691(n+1)` -/
def P14758551691152308140.Spec : Prop :=
  ∀ n, P14758551691152308140.a n = A037789 (n + 1)

end A037789

/-! ## A037789.P578702410551895200

`A037733(n+1)+A037747(n+1)-A037691(n+1)`
-/

namespace A037789.P578702410551895200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037733 (n + 1) + (A037747 (n + 1) - A037691 (n + 1))

end

end A037789.P578702410551895200

namespace A037789

/-- `A037733(n+1)+A037747(n+1)-A037691(n+1)` -/
def P578702410551895200.Spec : Prop :=
  ∀ n, P578702410551895200.a n = A037789 (n + 1)

end A037789

/-! ## A037789.P11196019509832016941

`A037754(n+1)+A037768(n+1)-A037740(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037789

/-- `A037754(n+1)+A037768(n+1)-A037740(n+1)` -/
def P11196019509832016941.Spec : Prop :=
  ∀ n, P11196019509832016941.a n = A037789 (n + 1)

theorem P11196019509832016941.correct : P11196019509832016941.Spec := by
  intro n
  simp only [A037789, Nat.add_sub_cancel]

end A037789

/-! ## A037789.P3642235733747472187

`A037747(n+1)+A037796(n+1)-A037754(n+1)`
-/

namespace A037789.P3642235733747472187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037747 (n + 1) + (A037796 (n + 1) - A037754 (n + 1))

end

end A037789.P3642235733747472187

namespace A037789

/-- `A037747(n+1)+A037796(n+1)-A037754(n+1)` -/
def P3642235733747472187.Spec : Prop :=
  ∀ n, P3642235733747472187.a n = A037789 (n + 1)

end A037789

/-! ## A037789.P5112603860930913530

`A037775(n+1)+A037782(n+1)-A037768(n+1)`
-/

namespace A037789.P5112603860930913530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037775 (n + 1) + (A037782 (n + 1) - A037768 (n + 1))

end

end A037789.P5112603860930913530

namespace A037789

/-- `A037775(n+1)+A037782(n+1)-A037768(n+1)` -/
def P5112603860930913530.Spec : Prop :=
  ∀ n, P5112603860930913530.a n = A037789 (n + 1)

end A037789

/-!
# A037790: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037790, the canonical program `A037790.P1988302017522656421` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037790 has offset 1).

The definition of A037790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037790.P1988302017522656421

`xor(∑[A001018(n)], A037755(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037790

/-- `xor(∑[A001018(n)], A037755(n+1))` -/
def P1988302017522656421.Spec : Prop :=
  ∀ n, P1988302017522656421.a n = A037790 (n + 1)

theorem P1988302017522656421.correct : P1988302017522656421.Spec := by
  intro n
  simp only [A037790, Nat.add_sub_cancel]

end A037790

/-! ## A037790.P12427031285962647285

`xor(A037485(n+1), A037720(n+1))`
-/

namespace A037790.P12427031285962647285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037485 (n + 1)) (A037720 (n + 1))

end

end A037790.P12427031285962647285

namespace A037790

/-- `xor(A037485(n+1), A037720(n+1))` -/
def P12427031285962647285.Spec : Prop :=
  ∀ n, P12427031285962647285.a n = A037790 (n + 1)

end A037790

/-! ## A037790.P4863629174722016186

`xor(A037699(n+1), A037727(n+1))`
-/

namespace A037790.P4863629174722016186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037699 (n + 1)) (A037727 (n + 1))

end

end A037790.P4863629174722016186

namespace A037790

/-- `xor(A037699(n+1), A037727(n+1))` -/
def P4863629174722016186.Spec : Prop :=
  ∀ n, P4863629174722016186.a n = A037790 (n + 1)

end A037790

/-! ## A037790.P3207604344298501804

`xor(A037706(n+1), A037734(n+1))`
-/

namespace A037790.P3207604344298501804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037706 (n + 1)) (A037734 (n + 1))

end

end A037790.P3207604344298501804

namespace A037790

/-- `xor(A037706(n+1), A037734(n+1))` -/
def P3207604344298501804.Spec : Prop :=
  ∀ n, P3207604344298501804.a n = A037790 (n + 1)

end A037790

/-! ## A037790.P10521436567170778922

`A037762(n+1)+A037797(n+1)-A037769(n+1)`
-/

namespace A037790.P10521436567170778922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037762 (n + 1) + (A037797 (n + 1) - A037769 (n + 1))

end

end A037790.P10521436567170778922

namespace A037790

/-- `A037762(n+1)+A037797(n+1)-A037769(n+1)` -/
def P10521436567170778922.Spec : Prop :=
  ∀ n, P10521436567170778922.a n = A037790 (n + 1)

end A037790

/-! ## A037790.P385934623354971474

`A037776(n+1)+A037783(n+1)-A037769(n+1)`
-/

namespace A037790.P385934623354971474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037776 (n + 1) + (A037783 (n + 1) - A037769 (n + 1))

end

end A037790.P385934623354971474

namespace A037790

/-- `A037776(n+1)+A037783(n+1)-A037769(n+1)` -/
def P385934623354971474.Spec : Prop :=
  ∀ n, P385934623354971474.a n = A037790 (n + 1)

end A037790

/-!
# A037791: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037791, the canonical program `A037791.P15168589565554484728` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037791 has offset 1).

The definition of A037791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037791.P15168589565554484728

`∑[xor(9*a(n-1), gcd(2, n))]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037791

/-- `∑[xor(9*a(n-1), gcd(2, n))]` -/
def P15168589565554484728.Spec : Prop :=
  ∀ n, (P15168589565554484728.a n : ℤ) = A037791 (n + 1)

theorem P15168589565554484728.correct : P15168589565554484728.Spec := by
  intro n
  simp only [A037791, Nat.add_sub_cancel]

end A037791

/-! ## A037791.P16375030155868817348

`∑[xor(9*a(n-1), A134451(n))]` with `a(0)=3`
-/

namespace A037791.P16375030155868817348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (9 * f1 (n - 1)) (A134451 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037791.P16375030155868817348

namespace A037791

/-- `∑[xor(9*a(n-1), A134451(n))]` -/
def P16375030155868817348.Spec : Prop :=
  ∀ n, P16375030155868817348.a n = A037791 (n + 1)

end A037791

/-! ## A037791.P2783452454224113592

`A037756(n+1)+A037770(n+1)-A037742(n+1)`
-/

namespace A037791.P2783452454224113592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037756 (n + 1) + (A037770 (n + 1) - A037742 (n + 1))

end

end A037791.P2783452454224113592

namespace A037791

/-- `A037756(n+1)+A037770(n+1)-A037742(n+1)` -/
def P2783452454224113592.Spec : Prop :=
  ∀ n, P2783452454224113592.a n = A037791 (n + 1)

end A037791

/-! ## A037791.P13403088933371234179

`A037749(n+1)+A037798(n+1)-A037756(n+1)`
-/

namespace A037791.P13403088933371234179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037749 (n + 1) + (A037798 (n + 1) - A037756 (n + 1))

end

end A037791.P13403088933371234179

namespace A037791

/-- `A037749(n+1)+A037798(n+1)-A037756(n+1)` -/
def P13403088933371234179.Spec : Prop :=
  ∀ n, P13403088933371234179.a n = A037791 (n + 1)

end A037791

/-! ## A037791.P7943294440384691043

`A037777(n+1)+A037784(n+1)-A037770(n+1)`
-/

namespace A037791.P7943294440384691043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037777 (n + 1) + (A037784 (n + 1) - A037770 (n + 1))

end

end A037791.P7943294440384691043

namespace A037791

/-- `A037777(n+1)+A037784(n+1)-A037770(n+1)` -/
def P7943294440384691043.Spec : Prop :=
  ∀ n, P7943294440384691043.a n = A037791 (n + 1)

end A037791

/-!
# A037792: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,2,0,1.

The programs for A037792, there is no canonical definition to state claims against.
-/

/-! ## A037792.P11501893327419535253

`A007090(A037786(n+1))`
-/

namespace A037792.P11501893327419535253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A037786 (n + 1)).toNat

end

end A037792.P11501893327419535253

/-!
# A037793: Base-4 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037793, the canonical program `A037793.P10001142084473908104` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037793 has offset 1).

The definition of A037793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037793.P10001142084473908104

`4*a(n-1)+a(n-4)-4*a(n-5)` with `a(0)=3, a(1)=14, a(2)=57, a(3)=228, a(4)=915`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037793

/-- `4*a(n-1)+a(n-4)-4*a(n-5)` -/
def P10001142084473908104.Spec : Prop :=
  ∀ n, P10001142084473908104.a n = A037793 (n + 1)

theorem P10001142084473908104.correct : P10001142084473908104.Spec := by
  intro n
  simp only [A037793, Nat.add_sub_cancel]

end A037793

/-! ## A037793.P1769437947747995796

`4*a(n-1)+3-n%4` with `a(0)=3`
-/

namespace A037793.P1769437947747995796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) + (3 - ((n % 4 : ℕ) : ℤ))

end

end A037793.P1769437947747995796

namespace A037793

/-- `4*a(n-1)+3-n%4` -/
def P1769437947747995796.Spec : Prop :=
  ∀ n, P1769437947747995796.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P2264941105050264857

`and(3, 3-n)+4*a(n-1)` with `a(0)=3`
-/

namespace A037793.P2264941105050264857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 (3 - (n : ℤ)) + 4 * a (n - 1)

end

end A037793.P2264941105050264857

namespace A037793

/-- `and(3, 3-n)+4*a(n-1)` -/
def P2264941105050264857.Spec : Prop :=
  ∀ n, P2264941105050264857.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P14234088709018653340

`3-(and(3, n)-4*a(n-1))` with `a(0)=3`
-/

namespace A037793.P14234088709018653340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - ((Nat.land 3 n : ℤ) - 4 * a (n - 1))

end

end A037793.P14234088709018653340

namespace A037793

/-- `3-(and(3, n)-4*a(n-1))` -/
def P14234088709018653340.Spec : Prop :=
  ∀ n, P14234088709018653340.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P14089821188631866457

`or(3, 4*a(n-1)+n)-n` with `a(0)=3`
-/

namespace A037793.P14089821188631866457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor 3 (4 * a (n - 1) + (n : ℤ)) - (n : ℤ)

end

end A037793.P14089821188631866457

namespace A037793

/-- `or(3, 4*a(n-1)+n)-n` -/
def P14089821188631866457.Spec : Prop :=
  ∀ n, P14089821188631866457.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P12287464688649047579

`or(3, n)-(n-4*a(n-1))` with `a(0)=3`
-/

namespace A037793.P12287464688649047579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Nat.lor 3 n : ℤ) - ((n : ℤ) - 4 * a (n - 1))

end

end A037793.P12287464688649047579

namespace A037793

/-- `or(3, n)-(n-4*a(n-1))` -/
def P12287464688649047579.Spec : Prop :=
  ∀ n, P12287464688649047579.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P7300011595556485678

`4*a(n-1)-(1-a(n-1))%4` with `a(0)=3`
-/

namespace A037793.P7300011595556485678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * a (n - 1) - Int.tmod (1 - a (n - 1)) 4

end

end A037793.P7300011595556485678

namespace A037793

/-- `4*a(n-1)-(1-a(n-1))%4` -/
def P7300011595556485678.Spec : Prop :=
  ∀ n, P7300011595556485678.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P2283370608773674174

`xor(A037758(n+1), A117616(n))`
-/

namespace A037793.P2283370608773674174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037758 (n + 1)) (A117616 n)

end

end A037793.P2283370608773674174

namespace A037793

/-- `xor(A037758(n+1), A117616(n))` -/
def P2283370608773674174.Spec : Prop :=
  ∀ n, P2283370608773674174.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P360954727345546639

`xor(A037576(n+1), A037730(n+1))`
-/

namespace A037793.P360954727345546639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037576 (n + 1)) (A037730 (n + 1))

end

end A037793.P360954727345546639

namespace A037793

/-- `xor(A037576(n+1), A037730(n+1))` -/
def P360954727345546639.Spec : Prop :=
  ∀ n, P360954727345546639.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P4060321558178250970

`xor(A037688(n+1), A037716(n+1))`
-/

namespace A037793.P4060321558178250970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037688 (n + 1)) (A037716 (n + 1))

end

end A037793.P4060321558178250970

namespace A037793

/-- `xor(A037688(n+1), A037716(n+1))` -/
def P4060321558178250970.Spec : Prop :=
  ∀ n, P4060321558178250970.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P13358575480696202706

`xor(A037709(n+1), A037737(n+1))`
-/

namespace A037793.P13358575480696202706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037709 (n + 1)) (A037737 (n + 1))

end

end A037793.P13358575480696202706

namespace A037793

/-- `xor(A037709(n+1), A037737(n+1))` -/
def P13358575480696202706.Spec : Prop :=
  ∀ n, P13358575480696202706.a n = A037793 (n + 1)

end A037793

/-! ## A037793.P15469838058053887604

`xor(A037695(n+1), A117616(n+1))`
-/

namespace A037793.P15469838058053887604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037695 (n + 1)) (A117616 (n + 1))

end

end A037793.P15469838058053887604

namespace A037793

/-- `xor(A037695(n+1), A117616(n+1))` -/
def P15469838058053887604.Spec : Prop :=
  ∀ n, P15469838058053887604.a n = A037793 (n + 1)

end A037793

/-!
# A037794: Base 5 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037794, the canonical program `A037794.P11267558404347251540` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037794 has offset 1).

The definition of A037794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037794.P11267558404347251540

`5*a(n-1)+3-n%4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037794

/-- `5*a(n-1)+3-n%4` -/
def P11267558404347251540.Spec : Prop :=
  ∀ n, P11267558404347251540.a n = A037794 (n + 1)

theorem P11267558404347251540.correct : P11267558404347251540.Spec := by
  intro n
  simp only [A037794, Nat.add_sub_cancel]

end A037794

/-! ## A037794.P8122647134094003046

`∑[xor(5*a(n-1), A176040(n))]` with `a(0)=3`
-/

namespace A037794.P8122647134094003046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A176040 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037794.P8122647134094003046

namespace A037794

/-- `∑[xor(5*a(n-1), A176040(n))]` -/
def P8122647134094003046.Spec : Prop :=
  ∀ n, P8122647134094003046.a n = A037794 (n + 1)

end A037794

/-! ## A037794.P6080974528509131027

`∑[xor(5*a(n-1), A153284(n+1))]` with `a(0)=3`
-/

namespace A037794.P6080974528509131027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (5 * f1 (n - 1)) (A153284 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037794.P6080974528509131027

namespace A037794

/-- `∑[xor(5*a(n-1), A153284(n+1))]` -/
def P6080974528509131027.Spec : Prop :=
  ∀ n, P6080974528509131027.a n = A037794 (n + 1)

end A037794

/-! ## A037794.P3796695194606605234

`A037766(n+1)+A037787(n+1)-A037759(n+1)`
-/

namespace A037794.P3796695194606605234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037766 (n + 1) + (A037787 (n + 1) - A037759 (n + 1))

end

end A037794.P3796695194606605234

namespace A037794

/-- `A037766(n+1)+A037787(n+1)-A037759(n+1)` -/
def P3796695194606605234.Spec : Prop :=
  ∀ n, P3796695194606605234.a n = A037794 (n + 1)

end A037794

/-! ## A037794.P3685948349614213021

`A037773(n+1)+A037780(n+1)-A037759(n+1)`
-/

namespace A037794.P3685948349614213021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037773 (n + 1) + (A037780 (n + 1) - A037759 (n + 1))

end

end A037794.P3685948349614213021

namespace A037794

/-- `A037773(n+1)+A037780(n+1)-A037759(n+1)` -/
def P3685948349614213021.Spec : Prop :=
  ∀ n, P3685948349614213021.a n = A037794 (n + 1)

end A037794

/-!
# A037795: Base 6 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037795, the canonical program `A037795.P13079382325709208154` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037795 has offset 1).

The definition of A037795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037795.P13079382325709208154

`6*a(n-1)+3-n%4` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037795

/-- `6*a(n-1)+3-n%4` -/
def P13079382325709208154.Spec : Prop :=
  ∀ n, P13079382325709208154.a n = A037795 (n + 1)

theorem P13079382325709208154.correct : P13079382325709208154.Spec := by
  intro n
  simp only [A037795, Nat.add_sub_cancel]

end A037795

/-! ## A037795.P18158152681904150057

`and(3, 3-n)+6*a(n-1)` with `a(0)=3`
-/

namespace A037795.P18158152681904150057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.land 3 (3 - (n : ℤ)) + 6 * a (n - 1)

end

end A037795.P18158152681904150057

namespace A037795

/-- `and(3, 3-n)+6*a(n-1)` -/
def P18158152681904150057.Spec : Prop :=
  ∀ n, P18158152681904150057.a n = A037795 (n + 1)

end A037795

/-! ## A037795.P7815773955505499245

`6*a(n-1)-(n-or(3, n))` with `a(0)=3`
-/

namespace A037795.P7815773955505499245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  6 * a (n - 1) - ((n : ℤ) - (Nat.lor 3 n : ℤ))

end

end A037795.P7815773955505499245

namespace A037795

/-- `6*a(n-1)-(n-or(3, n))` -/
def P7815773955505499245.Spec : Prop :=
  ∀ n, P7815773955505499245.a n = A037795 (n + 1)

end A037795

/-! ## A037795.P6395968097733458734

`A037767(n+1)+A037788(n+1)-A037760(n+1)`
-/

namespace A037795.P6395968097733458734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037767 (n + 1) + (A037788 (n + 1) - A037760 (n + 1))

end

end A037795.P6395968097733458734

namespace A037795

/-- `A037767(n+1)+A037788(n+1)-A037760(n+1)` -/
def P6395968097733458734.Spec : Prop :=
  ∀ n, P6395968097733458734.a n = A037795 (n + 1)

end A037795

/-! ## A037795.P7377369502394082846

`A037774(n+1)+A037781(n+1)-A037760(n+1)`
-/

namespace A037795.P7377369502394082846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037774 (n + 1) + (A037781 (n + 1) - A037760 (n + 1))

end

end A037795.P7377369502394082846

namespace A037795

/-- `A037774(n+1)+A037781(n+1)-A037760(n+1)` -/
def P7377369502394082846.Spec : Prop :=
  ∀ n, P7377369502394082846.a n = A037795 (n + 1)

end A037795

/-!
# A037796: Base 7 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037796, the canonical program `A037796.P273957106179402487` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037796 has offset 1).

The definition of A037796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037796.P273957106179402487

`A037747(n+1)+A015552(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A037796

/-- `A037747(n+1)+A015552(n+1)` -/
def P273957106179402487.Spec : Prop :=
  ∀ n, P273957106179402487.a n = A037796 (n + 1)

theorem P273957106179402487.correct : P273957106179402487.Spec := by
  intro n
  simp only [A037796, Nat.add_sub_cancel]

end A037796

/-! ## A037796.P6734353512006203418

`∑[A037782(n+1)]-A178829(n+1)`
-/

namespace A037796.P6734353512006203418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178829 (n + 1)

end

end A037796.P6734353512006203418

namespace A037796

/-- `∑[A037782(n+1)]-A178829(n+1)` -/
def P6734353512006203418.Spec : Prop :=
  ∀ n, P6734353512006203418.a n = A037796 (n + 1)

end A037796

/-! ## A037796.P14202148027298211566

`A037733(n+1)+A037740(n+1)-A037677(n+1)`
-/

namespace A037796.P14202148027298211566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037733 (n + 1) + (A037740 (n + 1) - A037677 (n + 1))

end

end A037796.P14202148027298211566

namespace A037796

/-- `A037733(n+1)+A037740(n+1)-A037677(n+1)` -/
def P14202148027298211566.Spec : Prop :=
  ∀ n, P14202148027298211566.a n = A037796 (n + 1)

end A037796

/-! ## A037796.P15853874509070511819

`A037775(n+1)+A037782(n+1)-A037761(n+1)`
-/

namespace A037796.P15853874509070511819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037775 (n + 1) + (A037782 (n + 1) - A037761 (n + 1))

end

end A037796.P15853874509070511819

namespace A037796

/-- `A037775(n+1)+A037782(n+1)-A037761(n+1)` -/
def P15853874509070511819.Spec : Prop :=
  ∀ n, P15853874509070511819.a n = A037796 (n + 1)

end A037796

/-! ## A037796.P10234730102882375374

`A037698(n+1)+A037698(n+2)-A037684(n+2)`
-/

namespace A037796.P10234730102882375374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037698 (n + 1) + (A037698 (n + 2) - A037684 (n + 2))

end

end A037796.P10234730102882375374

namespace A037796

/-- `A037698(n+1)+A037698(n+2)-A037684(n+2)` -/
def P10234730102882375374.Spec : Prop :=
  ∀ n, P10234730102882375374.a n = A037796 (n + 1)

end A037796

/-!
# A037797: Base 8 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037797, the canonical program `A037797.P5678953411917980446` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037797 has offset 1).

The definition of A037797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037797.P5678953411917980446

`a(n-1)+or(3, 7*a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037797

/-- `a(n-1)+or(3, 7*a(n-1))` -/
def P5678953411917980446.Spec : Prop :=
  ∀ n, (P5678953411917980446.a n : ℤ) = A037797 (n + 1)

theorem P5678953411917980446.correct : P5678953411917980446.Spec := by
  intro n
  simp only [A037797, Nat.add_sub_cancel]

end A037797

/-! ## A037797.P76702050205269895

`xor(1, and(3, n+2)+8*a(n-1))` with `a(0)=3`
-/

namespace A037797.P76702050205269895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 1 (Nat.land 3 (n + 2) + 8 * a (n - 1))

end

end A037797.P76702050205269895

namespace A037797

/-- `xor(1, and(3, n+2)+8*a(n-1))` -/
def P76702050205269895.Spec : Prop :=
  ∀ n, (P76702050205269895.a n : ℤ) = A037797 (n + 1)

end A037797

/-! ## A037797.P2556550335749965332

`xor(∑[A001018(n)], A037748(n+1))`
-/

namespace A037797.P2556550335749965332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A037748 (n + 1))

end

end A037797.P2556550335749965332

namespace A037797

/-- `xor(∑[A001018(n)], A037748(n+1))` -/
def P2556550335749965332.Spec : Prop :=
  ∀ n, P2556550335749965332.a n = A037797 (n + 1)

end A037797

/-! ## A037797.P8812629475048182255

`xor(A037692(n+1), A037720(n+1))`
-/

namespace A037797.P8812629475048182255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037692 (n + 1)) (A037720 (n + 1))

end

end A037797.P8812629475048182255

namespace A037797

/-- `xor(A037692(n+1), A037720(n+1))` -/
def P8812629475048182255.Spec : Prop :=
  ∀ n, P8812629475048182255.a n = A037797 (n + 1)

end A037797

/-! ## A037797.P7887476551694571057

`xor(A037713(n+1), A037741(n+1))`
-/

namespace A037797.P7887476551694571057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037713 (n + 1)) (A037741 (n + 1))

end

end A037797.P7887476551694571057

namespace A037797

/-- `xor(A037713(n+1), A037741(n+1))` -/
def P7887476551694571057.Spec : Prop :=
  ∀ n, P7887476551694571057.a n = A037797 (n + 1)

end A037797

/-! ## A037797.P13144089833177616485

`A037769(n+1)+A037790(n+1)-A037762(n+1)`
-/

namespace A037797.P13144089833177616485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037769 (n + 1) + (A037790 (n + 1) - A037762 (n + 1))

end

end A037797.P13144089833177616485

namespace A037797

/-- `A037769(n+1)+A037790(n+1)-A037762(n+1)` -/
def P13144089833177616485.Spec : Prop :=
  ∀ n, P13144089833177616485.a n = A037797 (n + 1)

end A037797

/-! ## A037797.P4997724967246887935

`xor(A037783(n+2), A037790(n+2))`
-/

namespace A037797.P4997724967246887935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037783 (n + 2)) (A037790 (n + 2))

end

end A037797.P4997724967246887935

namespace A037797

/-- `xor(A037783(n+2), A037790(n+2))` -/
def P4997724967246887935.Spec : Prop :=
  ∀ n, P4997724967246887935.a n = A037797 (n + 1)

end A037797

/-!
# A037798: Base 9 digits are, in order, the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037798, the canonical program `A037798.P5782112598674630615` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037798 has offset 1).

The definition of A037798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037798.P5782112598674630615

`and(3, 3-n)+9*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037798

/-- `and(3, 3-n)+9*a(n-1)` -/
def P5782112598674630615.Spec : Prop :=
  ∀ n, P5782112598674630615.a n = A037798 (n + 1)

theorem P5782112598674630615.correct : P5782112598674630615.Spec := by
  intro n
  simp only [A037798, Nat.add_sub_cancel]

end A037798

/-! ## A037798.P276079944801883664

`A037735(n+1)+A037784(n+1)-A037721(n+1)`
-/

namespace A037798.P276079944801883664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037735 (n + 1) + (A037784 (n + 1) - A037721 (n + 1))

end

end A037798.P276079944801883664

namespace A037798

/-- `A037735(n+1)+A037784(n+1)-A037721(n+1)` -/
def P276079944801883664.Spec : Prop :=
  ∀ n, P276079944801883664.a n = A037798 (n + 1)

end A037798

/-! ## A037798.P5948503584751642226

`A037749(n+1)+A037763(n+1)-A037735(n+1)`
-/

namespace A037798.P5948503584751642226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037749 (n + 1) + (A037763 (n + 1) - A037735 (n + 1))

end

end A037798.P5948503584751642226

namespace A037798

/-- `A037749(n+1)+A037763(n+1)-A037735(n+1)` -/
def P5948503584751642226.Spec : Prop :=
  ∀ n, P5948503584751642226.a n = A037798 (n + 1)

end A037798

/-! ## A037798.P12300557248413959092

`A037770(n+1)+A037791(n+1)-A037763(n+1)`
-/

namespace A037798.P12300557248413959092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037770 (n + 1) + (A037791 (n + 1) - A037763 (n + 1))

end

end A037798.P12300557248413959092

namespace A037798

/-- `A037770(n+1)+A037791(n+1)-A037763(n+1)` -/
def P12300557248413959092.Spec : Prop :=
  ∀ n, P12300557248413959092.a n = A037798 (n + 1)

end A037798

/-! ## A037798.P5435925713707714613

`A037777(n+1)+A037784(n+1)-A037763(n+1)`
-/

namespace A037798.P5435925713707714613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037777 (n + 1) + (A037784 (n + 1) - A037763 (n + 1))

end

end A037798.P5435925713707714613

namespace A037798

/-- `A037777(n+1)+A037784(n+1)-A037763(n+1)` -/
def P5435925713707714613.Spec : Prop :=
  ∀ n, P5435925713707714613.a n = A037798 (n + 1)

end A037798

/-!
# A037799: Decimal expansion of a(n) is given by the first n terms of the periodic sequence with initial period 3,2,1,0.

The programs for A037799, the canonical program `A037799.P9946499390447161709` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037799 has offset 1).

The definition of A037799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037799.P9946499390447161709

`and(3, 3-n)+10*a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A037799

/-- `and(3, 3-n)+10*a(n-1)` -/
def P9946499390447161709.Spec : Prop :=
  ∀ n, P9946499390447161709.a n = A037799 (n + 1)

theorem P9946499390447161709.correct : P9946499390447161709.Spec := by
  intro n
  simp only [A037799, Nat.add_sub_cancel]

end A037799

/-! ## A037799.P17803356252293228238

`3-(and(3, n)-10*a(n-1))` with `a(0)=3`
-/

namespace A037799.P17803356252293228238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - ((Nat.land 3 n : ℤ) - 10 * a (n - 1))

end

end A037799.P17803356252293228238

namespace A037799

/-- `3-(and(3, n)-10*a(n-1))` -/
def P17803356252293228238.Spec : Prop :=
  ∀ n, P17803356252293228238.a n = A037799 (n + 1)

end A037799

/-! ## A037799.P3568675574773098277

`10*a(n-1)-(n-or(3, n))` with `a(0)=3`
-/

namespace A037799.P3568675574773098277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  10 * a (n - 1) - ((n : ℤ) - (Nat.lor 3 n : ℤ))

end

end A037799.P3568675574773098277

namespace A037799

/-- `10*a(n-1)-(n-or(3, n))` -/
def P3568675574773098277.Spec : Prop :=
  ∀ n, P3568675574773098277.a n = A037799 (n + 1)

end A037799


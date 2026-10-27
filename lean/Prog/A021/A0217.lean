import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C032
import Seq.B001.C000
import Seq.Opaque.C001

/-!
# A021704: Expansion of 1/((1-x)(1-3x)(1-9x)(1-12x)).

The programs for A021704, there is no canonical definition to state claims against.
-/

/-! ## A021704.P5233646028897797406

`∑[3^n*∑[4^(n+1)-3^(n+1)]]`
-/

namespace A021704.P5233646028897797406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021704.P5233646028897797406

/-! ## A021704.P9799810036299974671

`A018092(n)+a(n-1)` with `a(0)=1`
-/

namespace A021704.P9799810036299974671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018092 n + a (n - 1)

end

end A021704.P9799810036299974671

/-! ## A021704.P11798637927040719930

`abs(∑[A016142(n)+12*a(n-1)])` with `a(0)=1`
-/

namespace A021704.P11798637927040719930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016142 n + 12 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A021704.P11798637927040719930

/-! ## A021704.P10688305824498319381

`∑[A016147(n)]+10*a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A021704.P10688305824498319381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1) - a (n - 1)

end

end A021704.P10688305824498319381

/-! ## A021704.P4580507026361537972

`a(n-1)+A000244(n)*A016208(n)-A000007(n+1)` with `a(0)=1`
-/

namespace A021704.P4580507026361537972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000244 n * A016208 n - A000007 (n + 1))

end

end A021704.P4580507026361537972

/-!
# A021706: Decimal expansion of 1/702.

The programs for A021706, the canonical program `A021706.P855799319587987641` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021706 has offset 0).

The definition of A021706 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021706.anchor (n : ℕ) : A021706 n = ((10 ^ (n + 1) / 702 % 10 : ℕ) : ℤ)` in `Proof.A021.A021706`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021706.P855799319587987641

`8-(a(n-2)+a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=2`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021706

/-- `8-(a(n-2)+a(n-4))` -/
def P855799319587987641.Spec : Prop :=
  ∀ n, P855799319587987641.a n = A021706 n

theorem P855799319587987641.correct : P855799319587987641.Spec := by
  intro n
  simp only [A021706]

end A021706

/-!
# A021708: Decimal expansion of 1/704.

The programs for A021708, the canonical program `A021708.P5624694170562898388` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021708 has offset 0).

The definition of A021708 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021708.anchor (n : ℕ) : A021708 n = ((10 ^ (n + 1) / 704 % 10 : ℕ) : ℤ)` in `Proof.A021.A021708`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021708.P5624694170562898388

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=2, a(5)=0, a(6)=4, a(7)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021708

/-- `a(n-2)` -/
def P5624694170562898388.Spec : Prop :=
  ∀ n, (P5624694170562898388.a n : ℤ) = A021708 n

theorem P5624694170562898388.correct : P5624694170562898388.Spec := by
  intro n
  simp only [A021708]

end A021708

/-!
# A021714: Expansion of 1/((1-x)(1-3x)(1-10x)(1-11x)).

The programs for A021714, there is no canonical definition to state claims against.
-/

/-! ## A021714.P1848406827477243003

`∑[A018206(n)]`
-/

namespace A021714.P1848406827477243003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021714.P1848406827477243003

/-! ## A021714.P7252704225036517068

`A016265(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021714.P7252704225036517068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016265 n + 3 * a (n - 1)

end

end A021714.P7252704225036517068

/-! ## A021714.P17958325318840027174

`2*A021694(n)-A021684(n)`
-/

namespace A021714.P17958325318840027174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021694 n - A021684 n

end

end A021714.P17958325318840027174

/-! ## A021714.P16666551621057223900

`∑[2*A018091(n)-A018090(n)]`
-/

namespace A021714.P16666551621057223900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018091 n - A018090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021714.P16666551621057223900

/-! ## A021714.P7837680006067956138

`2*A025955(n)-∑[A025955(n)]`
-/

namespace A021714.P7837680006067956138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025955 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021714.P7837680006067956138

/-! ## A021714.P4577768694720347994

`A016216(n+1)-A016215(n+1)`
-/

namespace A021714.P4577768694720347994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016216 (n + 1) - A016215 (n + 1)

end

end A021714.P4577768694720347994

/-! ## A021714.P18142769757315085777

`A021384(n)+A021984(n)-A021394(n)`
-/

namespace A021714.P18142769757315085777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021384 n + (A021984 n - A021394 n)

end

end A021714.P18142769757315085777

/-! ## A021714.P1184421902038290130

`A021594(n)+A024442(n)-A021684(n)`
-/

namespace A021714.P1184421902038290130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021594 n + (A024442 n - A021684 n)

end

end A021714.P1184421902038290130

/-! ## A021714.P2018902332914494268

`2*A021724(n)-A021734(n)`
-/

namespace A021714.P2018902332914494268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021724 n - A021734 n

end

end A021714.P2018902332914494268

/-! ## A021714.P15815418265584822251

`2*A021724(n)-∑[A018208(n)]`
-/

namespace A021714.P15815418265584822251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021724 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021714.P15815418265584822251

/-!
# A021719: Decimal expansion of 1/715.

The programs for A021719, the canonical program `A021719.P7797407013895791144` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021719 has offset 0).

The definition of A021719 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021719.anchor (n : ℕ) : A021719 n = ((10 ^ (n + 1) / 715 % 10 : ℕ) : ℤ)` in `Proof.A021.A021719`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021719.P7797407013895791144

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021719

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P7797407013895791144.Spec : Prop :=
  ∀ n, P7797407013895791144.a n = A021719 n

theorem P7797407013895791144.correct : P7797407013895791144.Spec := by
  intro n
  simp only [A021719]

end A021719

/-!
# A021721: Decimal expansion of 1/717.

The programs for A021721, the canonical program `A021721.P15997870293131377468` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021721 has offset 0).

The definition of A021721 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021721.anchor (n : ℕ) : A021721 n = ((10 ^ (n + 1) / 717 % 10 : ℕ) : ℤ)` in `Proof.A021.A021721`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021721.P15997870293131377468

`a(n-7)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=9, a(5)=4, a(6)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021721

/-- `a(n-7)` -/
def P15997870293131377468.Spec : Prop :=
  ∀ n, (P15997870293131377468.a n : ℤ) = A021721 n

theorem P15997870293131377468.correct : P15997870293131377468.Spec := by
  intro n
  simp only [A021721]

end A021721

/-!
# A021724: Expansion of 1/((1-x)(1-3x)(1-10x)(1-12x)).

The programs for A021724, there is no canonical definition to state claims against.
-/

/-! ## A021724.P17429639581408346743

`∑[A018207(n)]`
-/

namespace A021724.P17429639581408346743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021724.P17429639581408346743

/-! ## A021724.P11237548034291503018

`A016215(n)+12*a(n-1)` with `a(0)=1`
-/

namespace A021724.P11237548034291503018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016215 n + 12 * a (n - 1)

end

end A021724.P11237548034291503018

/-! ## A021724.P4299312090786001297

`∑[A016147(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A021724.P4299312090786001297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A021724.P4299312090786001297

/-! ## A021724.P13667824381845853254

`A018207(floor(acot(n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A021724.P13667824381845853254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018207 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + a (n - 1)

end

end A021724.P13667824381845853254

/-! ## A021724.P14605472543996708955

`2*A021674(n)-A021644(n)`
-/

namespace A021724.P14605472543996708955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021674 n - A021644 n

end

end A021724.P14605472543996708955

/-! ## A021724.P11432418368761155908

`(A021734(n)+A021714(n))/2`
-/

namespace A021724.P11432418368761155908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021734 n + A021714 n : ℚ) / 2

end

end A021724.P11432418368761155908

/-! ## A021724.P9959533718950410843

`∑[(A018208(n)+A018206(n))/2]`
-/

namespace A021724.P9959533718950410843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018208 n + A018206 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021724.P9959533718950410843

/-! ## A021724.P10077221912266844874

`2*A025956(n)-∑[A025956(n)]`
-/

namespace A021724.P10077221912266844874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025956 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021724.P10077221912266844874

/-! ## A021724.P4995851940238861505

`(A016217(n+1)-A016215(n+1))/2`
-/

namespace A021724.P4995851940238861505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016217 (n + 1) - A016215 (n + 1) : ℚ) / 2

end

end A021724.P4995851940238861505

/-! ## A021724.P9450194572103452918

`∑[A016217(n)+A016267(n)-A016215(n)]`
-/

namespace A021724.P9450194572103452918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016217 n + (A016267 n - A016215 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021724.P9450194572103452918

/-!
# A021732: Decimal expansion of 1/728.

The programs for A021732, the canonical program `A021732.P5221239379569253357` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021732 has offset 0).

The definition of A021732 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021732.anchor (n : ℕ) : A021732 n = ((10 ^ (n + 1) / 728 % 10 : ℕ) : ℤ)` in `Proof.A021.A021732`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021732.P5221239379569253357

`a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=7, a(5)=3, a(6)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021732

/-- `a(n-1)-a(n-3)+a(n-4)` -/
def P5221239379569253357.Spec : Prop :=
  ∀ n, P5221239379569253357.a n = A021732 n

theorem P5221239379569253357.correct : P5221239379569253357.Spec := by
  intro n
  simp only [A021732]

end A021732

/-!
# A021734: Expansion of 1/((1-x)(1-3x)(1-11x)(1-12x)).

The programs for A021734, there is no canonical definition to state claims against.
-/

/-! ## A021734.P806202119399499420

`∑[A018208(n)]`
-/

namespace A021734.P806202119399499420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021734.P806202119399499420

/-! ## A021734.P9082247157609474323

`A016268(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A021734.P9082247157609474323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016268 n + 3 * a (n - 1)

end

end A021734.P9082247157609474323

/-! ## A021734.P13929319925037803742

`∑[A016147(n)]+11*a(n-1)` with `a(0)=1`
-/

namespace A021734.P13929319925037803742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 11 * a (n - 1)

end

end A021734.P13929319925037803742

/-! ## A021734.P7526178452556767818

`2*A021724(n)-A021714(n)`
-/

namespace A021734.P7526178452556767818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021724 n - A021714 n

end

end A021734.P7526178452556767818

/-! ## A021734.P13890894418756468766

`(A028088(n)+A021534(n))/2`
-/

namespace A021734.P13890894418756468766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028088 n + A021534 n : ℚ) / 2

end

end A021734.P13890894418756468766

/-! ## A021734.P3096319688518955166

`∑[2*A018207(n)]-A021714(n)`
-/

namespace A021734.P3096319688518955166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A021714 n

end

end A021734.P3096319688518955166

/-! ## A021734.P13526827722002091843

`2*A021724(n)-∑[A018206(n)]`
-/

namespace A021734.P13526827722002091843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021724 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021734.P13526827722002091843

/-! ## A021734.P12323814770477361741

`2*A025957(n)-∑[A025957(n)]`
-/

namespace A021734.P12323814770477361741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025957 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021734.P12323814770477361741

/-! ## A021734.P8964391977401878458

`A016217(n+1)-A016216(n+1)`
-/

namespace A021734.P8964391977401878458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016217 (n + 1) - A016216 (n + 1)

end

end A021734.P8964391977401878458

/-! ## A021734.P15279020650634862594

`A018208(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A021734.P15279020650634862594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018208 n + a (A028310 n - 1).toNat

end

end A021734.P15279020650634862594

/-!
# A021742: Decimal expansion of 1/738.

The programs for A021742, the canonical program `A021742.P1308492028247060121` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021742 has offset 0).

The definition of A021742 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021742.anchor (n : ℕ) : A021742 n = ((10 ^ (n + 1) / 738 % 10 : ℕ) : ℤ)` in `Proof.A021.A021742`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021742.P1308492028247060121

`a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=5, a(5)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021742

/-- `a(n-5)` -/
def P1308492028247060121.Spec : Prop :=
  ∀ n, (P1308492028247060121.a n : ℤ) = A021742 n

theorem P1308492028247060121.correct : P1308492028247060121.Spec := by
  intro n
  simp only [A021742]

end A021742

/-!
# A021744: Expansion of 1/((1-x)(1-4x)(1-5x)(1-6x)).

The programs for A021744, the canonical program `A021744.P13910749194315842015` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021744 has offset 0).

The definition of A021744 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021744.P13910749194315842015

`(6^(n+4)-3*5^(n+4)+10*4^(n+3)-1)/60`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021744

/-- `(6^(n+4)-3*5^(n+4)+10*4^(n+3)-1)/60` -/
def P13910749194315842015.Spec : Prop :=
  ∀ n, P13910749194315842015.a n = (A021744 n : ℚ)

end A021744

/-! ## A021744.P17930005767188879331

`∑[A016103(n)]`
-/

namespace A021744.P17930005767188879331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021744.P17930005767188879331

namespace A021744

/-- `∑[A016103(n)]` -/
def P17930005767188879331.Spec : Prop :=
  ∀ n, P17930005767188879331.a n = A021744 n

end A021744

/-! ## A021744.P4809794792932989728

`∑[A245020(n+2)/2]`
-/

namespace A021744.P4809794792932989728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245020 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021744.P4809794792932989728

namespace A021744

/-- `∑[A245020(n+2)/2]` -/
def P4809794792932989728.Spec : Prop :=
  ∀ n, P4809794792932989728.a n = (A021744 n : ℚ)

end A021744

/-! ## A021744.P17932634895900901413

`A016222(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021744.P17932634895900901413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016222 n + 5 * a (n - 1)

end

end A021744.P17932634895900901413

namespace A021744

/-- `A016222(n)+5*a(n-1)` -/
def P17932634895900901413.Spec : Prop :=
  ∀ n, P17932634895900901413.a n = A021744 n

end A021744

/-! ## A021744.P2508774922321657903

`2*A021114(n)-A021074(n)`
-/

namespace A021744.P2508774922321657903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021114 n - A021074 n

end

end A021744.P2508774922321657903

namespace A021744

/-- `2*A021114(n)-A021074(n)` -/
def P2508774922321657903.Spec : Prop :=
  ∀ n, P2508774922321657903.a n = A021744 n

end A021744

/-! ## A021744.P5733906133965655044

`2*A021414(n)-A021354(n)`
-/

namespace A021744.P5733906133965655044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021414 n - A021354 n

end

end A021744.P5733906133965655044

namespace A021744

/-- `2*A021414(n)-A021354(n)` -/
def P5733906133965655044.Spec : Prop :=
  ∀ n, P5733906133965655044.a n = A021744 n

end A021744

/-! ## A021744.P1929155988027613465

`A016222(n+1)-A016218(n+1)`
-/

namespace A021744.P1929155988027613465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016222 (n + 1) - A016218 (n + 1)

end

end A021744.P1929155988027613465

namespace A021744

/-- `A016222(n+1)-A016218(n+1)` -/
def P1929155988027613465.Spec : Prop :=
  ∀ n, P1929155988027613465.a n = A021744 n

end A021744

/-! ## A021744.P15312946410036489051

`A016228(n+1)-A016222(n+1)`
-/

namespace A021744.P15312946410036489051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016228 (n + 1) - A016222 (n + 1)

end

end A021744.P15312946410036489051

namespace A021744

/-- `A016228(n+1)-A016222(n+1)` -/
def P15312946410036489051.Spec : Prop :=
  ∀ n, P15312946410036489051.a n = A021744 n

end A021744

/-! ## A021744.P16684250853849948162

`2*A021754(n)-A021804(n)`
-/

namespace A021744.P16684250853849948162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021754 n - A021804 n

end

end A021744.P16684250853849948162

namespace A021744

/-- `2*A021754(n)-A021804(n)` -/
def P16684250853849948162.Spec : Prop :=
  ∀ n, P16684250853849948162.a n = A021744 n

end A021744

/-!
# A021754: Expansion of 1/((1-x)(1-4x)(1-5x)(1-7x)).

The programs for A021754, the canonical program `A021754.P7869242235409666796` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021754 has offset 0).

The definition of A021754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021754.P7869242235409666796

`(2*7^(n+3)-9*5^(n+3)+8*4^(n+3)-1)/72`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021754

/-- `(2*7^(n+3)-9*5^(n+3)+8*4^(n+3)-1)/72` -/
def P7869242235409666796.Spec : Prop :=
  ∀ n, P7869242235409666796.a n = (A021754 n : ℚ)

end A021754

/-! ## A021754.P1356410028206768664

`∑[5^n+7*a(n-1)]+4*a(n-1)` with `a(0)=1`
-/

namespace A021754.P1356410028206768664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  5 ^ n + 7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4 * a (n - 1)

end

end A021754.P1356410028206768664

namespace A021754

/-- `∑[5^n+7*a(n-1)]+4*a(n-1)` -/
def P1356410028206768664.Spec : Prop :=
  ∀ n, (P1356410028206768664.a n : ℤ) = A021754 n

end A021754

/-! ## A021754.P8077002346433925503

`∑[A018209(n)]`
-/

namespace A021754.P8077002346433925503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021754.P8077002346433925503

namespace A021754

/-- `∑[A018209(n)]` -/
def P8077002346433925503.Spec : Prop :=
  ∀ n, P8077002346433925503.a n = A021754 n

end A021754

/-! ## A021754.P7748046805117053633

`A016230(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021754.P7748046805117053633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016230 n + 4 * a (n - 1)

end

end A021754.P7748046805117053633

namespace A021754

/-- `A016230(n)+4*a(n-1)` -/
def P7748046805117053633.Spec : Prop :=
  ∀ n, P7748046805117053633.a n = A021754 n

end A021754

/-! ## A021754.P13554946684055116964

`A016223(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021754.P13554946684055116964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016223 n + 5 * a (n - 1)

end

end A021754.P13554946684055116964

namespace A021754

/-- `A016223(n)+5*a(n-1)` -/
def P13554946684055116964.Spec : Prop :=
  ∀ n, P13554946684055116964.a n = A021754 n

end A021754

/-! ## A021754.P6523078505585359166

`A021079(n)+A021124(n)-A021074(n)`
-/

namespace A021754.P6523078505585359166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021079 n + (A021124 n - A021074 n)

end

end A021754.P6523078505585359166

namespace A021754

/-- `A021079(n)+A021124(n)-A021074(n)` -/
def P6523078505585359166.Spec : Prop :=
  ∀ n, P6523078505585359166.a n = A021754 n

end A021754

/-! ## A021754.P9680425440220887982

`A021424(n)+A021424(n)-A021364(n)`
-/

namespace A021754.P9680425440220887982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021424 n + (A021424 n - A021364 n)

end

end A021754.P9680425440220887982

namespace A021754

/-- `A021424(n)+A021424(n)-A021364(n)` -/
def P9680425440220887982.Spec : Prop :=
  ∀ n, P9680425440220887982.a n = A021754 n

end A021754

/-! ## A021754.P14011036842576566125

`2*A021424(n)-A021364(n)`
-/

namespace A021754.P14011036842576566125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021424 n - A021364 n

end

end A021754.P14011036842576566125

namespace A021754

/-- `2*A021424(n)-A021364(n)` -/
def P14011036842576566125.Spec : Prop :=
  ∀ n, P14011036842576566125.a n = A021754 n

end A021754

/-! ## A021754.P16756324988004950050

`A016230(n+1)-A016223(n+1)`
-/

namespace A021754.P16756324988004950050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016230 (n + 1) - A016223 (n + 1)

end

end A021754.P16756324988004950050

namespace A021754

/-- `A016230(n+1)-A016223(n+1)` -/
def P16756324988004950050.Spec : Prop :=
  ∀ n, P16756324988004950050.a n = A021754 n

end A021754

/-!
# A021760: Decimal expansion of 1/756.

The programs for A021760, the canonical program `A021760.P12831850512159757607` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021760 has offset 0).

The definition of A021760 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021760.anchor (n : ℕ) : A021760 n = ((10 ^ (n + 1) / 756 % 10 : ℕ) : ℤ)` in `Proof.A021.A021760`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021760.P12831850512159757607

`a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=2, a(5)=2, a(6)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021760

/-- `a(n-1)-a(n-2)+a(n-3)-a(n-4)+a(n-5)` -/
def P12831850512159757607.Spec : Prop :=
  ∀ n, P12831850512159757607.a n = A021760 n

theorem P12831850512159757607.correct : P12831850512159757607.Spec := by
  intro n
  simp only [A021760]

end A021760

/-!
# A021764: Expansion of 1/((1-x)(1-4x)(1-5x)(1-8x)).

The programs for A021764, the canonical program `A021764.P17471623479004792730` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021764 has offset 0).

The definition of A021764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021764.P17471623479004792730

`∑[A018250(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021764

/-- `∑[A018250(n)]` -/
def P17471623479004792730.Spec : Prop :=
  ∀ n, P17471623479004792730.a n = A021764 n

theorem P17471623479004792730.correct : P17471623479004792730.Spec := by
  intro n
  simp only [A021764]

end A021764

/-! ## A021764.P2892210438179182807

`2*A016233(n)-A016218(n)`
-/

namespace A021764.P2892210438179182807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016233 n - A016218 n

end

end A021764.P2892210438179182807

namespace A021764

/-- `2*A016233(n)-A016218(n)` -/
def P2892210438179182807.Spec : Prop :=
  ∀ n, P2892210438179182807.a n = A021764 n

end A021764

/-! ## A021764.P15933750206360493687

`2*A021434(n)-A021374(n)`
-/

namespace A021764.P15933750206360493687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021434 n - A021374 n

end

end A021764.P15933750206360493687

namespace A021764

/-- `2*A021434(n)-A021374(n)` -/
def P15933750206360493687.Spec : Prop :=
  ∀ n, P15933750206360493687.a n = A021764 n

end A021764

/-! ## A021764.P13130266514802964074

`(A022111(n)+A021744(n))/2`
-/

namespace A021764.P13130266514802964074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022111 n + A021744 n : ℚ) / 2

end

end A021764.P13130266514802964074

namespace A021764

/-- `(A022111(n)+A021744(n))/2` -/
def P13130266514802964074.Spec : Prop :=
  ∀ n, P13130266514802964074.a n = (A021764 n : ℚ)

end A021764

/-! ## A021764.P14471785532362143523

`(A028027(n)+A021374(n))/2`
-/

namespace A021764.P14471785532362143523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028027 n + A021374 n : ℚ) / 2

end

end A021764.P14471785532362143523

namespace A021764

/-- `(A028027(n)+A021374(n))/2` -/
def P14471785532362143523.Spec : Prop :=
  ∀ n, P14471785532362143523.a n = (A021764 n : ℚ)

end A021764

/-! ## A021764.P3925561575817535699

`∑[2*A016290(n)-A016282(n)]`
-/

namespace A021764.P3925561575817535699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016290 n - A016282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021764.P3925561575817535699

namespace A021764

/-- `∑[2*A016290(n)-A016282(n)]` -/
def P3925561575817535699.Spec : Prop :=
  ∀ n, P3925561575817535699.a n = A021764 n

end A021764

/-! ## A021764.P8826659012717423716

`2*A025960(n)-∑[A025960(n)]`
-/

namespace A021764.P8826659012717423716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025960 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021764.P8826659012717423716

namespace A021764

/-- `2*A025960(n)-∑[A025960(n)]` -/
def P8826659012717423716.Spec : Prop :=
  ∀ n, P8826659012717423716.a n = A021764 n

end A021764

/-! ## A021764.P1723812347009633661

`A016233(n+1)-A016224(n+1)`
-/

namespace A021764.P1723812347009633661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016233 (n + 1) - A016224 (n + 1)

end

end A021764.P1723812347009633661

namespace A021764

/-- `A016233(n+1)-A016224(n+1)` -/
def P1723812347009633661.Spec : Prop :=
  ∀ n, P1723812347009633661.a n = A021764 n

end A021764

/-! ## A021764.P4285306651943944911

`A021076(n)+A021184(n)-A021074(n)`
-/

namespace A021764.P4285306651943944911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021076 n + (A021184 n - A021074 n)

end

end A021764.P4285306651943944911

namespace A021764

/-- `A021076(n)+A021184(n)-A021074(n)` -/
def P4285306651943944911.Spec : Prop :=
  ∀ n, P4285306651943944911.a n = A021764 n

end A021764

/-! ## A021764.P3618404278244802570

`2*A021904(n)-A028120(n)`
-/

namespace A021764.P3618404278244802570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021904 n - A028120 n

end

end A021764.P3618404278244802570

namespace A021764

/-- `2*A021904(n)-A028120(n)` -/
def P3618404278244802570.Spec : Prop :=
  ∀ n, P3618404278244802570.a n = A021764 n

end A021764

/-! ## A021764.P9669329257315877346

`A021772(n)+A021904(n)-A022469(n)`
-/

namespace A021764.P9669329257315877346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021772 n + (A021904 n - A022469 n)

end

end A021764.P9669329257315877346

namespace A021764

/-- `A021772(n)+A021904(n)-A022469(n)` -/
def P9669329257315877346.Spec : Prop :=
  ∀ n, P9669329257315877346.a n = A021764 n

end A021764

/-!
# A021772: Expansion of 1/((1-x)(1-4x)(1-5x)(1-9x)).

The programs for A021772, the canonical program `A021772.P5454749926472165431` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021772 has offset 0).

The definition of A021772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A021772.P5454749926472165431

`(3*9^(n+3)-30*5^(n+3)+32*4^(n+3)-5)/480`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021772

/-- `(3*9^(n+3)-30*5^(n+3)+32*4^(n+3)-5)/480` -/
def P5454749926472165431.Spec : Prop :=
  ∀ n, P5454749926472165431.a n = (A021772 n : ℚ)

end A021772

/-! ## A021772.P763960505213119252

`∑[A018911(n)]`
-/

namespace A021772.P763960505213119252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018911 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021772.P763960505213119252

namespace A021772

/-- `∑[A018911(n)]` -/
def P763960505213119252.Spec : Prop :=
  ∀ n, P763960505213119252.a n = A021772 n

end A021772

/-! ## A021772.P10895986285377056811

`A002451(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021772.P10895986285377056811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002451 n + 5 * a (n - 1)

end

end A021772.P10895986285377056811

namespace A021772

/-- `A002451(n)+5*a(n-1)` -/
def P10895986285377056811.Spec : Prop :=
  ∀ n, P10895986285377056811.a n = A021772 n

end A021772

/-! ## A021772.P1856576858972243622

`A018911(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A021772.P1856576858972243622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018911 (A000027 n).toNat + a (n - 1)

end

end A021772.P1856576858972243622

namespace A021772

/-- `A018911(A000027(n))+a(n-1)` -/
def P1856576858972243622.Spec : Prop :=
  ∀ n, P1856576858972243622.a n = A021772 n

end A021772

/-! ## A021772.P15239243297642180985

`A018911(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A021772.P15239243297642180985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A018911 (A028310 n).toNat + a (n - 1)

end

end A021772.P15239243297642180985

namespace A021772

/-- `A018911(A028310(n))+a(n-1)` -/
def P15239243297642180985.Spec : Prop :=
  ∀ n, P15239243297642180985.a n = A021772 n

end A021772

/-! ## A021772.P17808053987387638120

`A021454(n)+A021454(n)-A021379(n)`
-/

namespace A021772.P17808053987387638120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021454 n + (A021454 n - A021379 n)

end

end A021772.P17808053987387638120

namespace A021772

/-- `A021454(n)+A021454(n)-A021379(n)` -/
def P17808053987387638120.Spec : Prop :=
  ∀ n, P17808053987387638120.a n = A021772 n

end A021772

/-! ## A021772.P4893436264046755019

`2*A021454(n)-A021379(n)`
-/

namespace A021772.P4893436264046755019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021454 n - A021379 n

end

end A021772.P4893436264046755019

namespace A021772

/-- `2*A021454(n)-A021379(n)` -/
def P4893436264046755019.Spec : Prop :=
  ∀ n, P4893436264046755019.a n = A021772 n

end A021772

/-! ## A021772.P4935074765687377631

`A021764(n)+A022469(n)-A021904(n)`
-/

namespace A021772.P4935074765687377631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021764 n + (A022469 n - A021904 n)

end

end A021772.P4935074765687377631

namespace A021772

/-- `A021764(n)+A022469(n)-A021904(n)` -/
def P4935074765687377631.Spec : Prop :=
  ∀ n, P4935074765687377631.a n = A021772 n

end A021772

/-! ## A021772.P12551999932554725858

`A021904(n)+A022469(n)-A028120(n)`
-/

namespace A021772.P12551999932554725858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021904 n + (A022469 n - A028120 n)

end

end A021772.P12551999932554725858

namespace A021772

/-- `A021904(n)+A022469(n)-A028120(n)` -/
def P12551999932554725858.Spec : Prop :=
  ∀ n, P12551999932554725858.a n = A021772 n

end A021772

/-!
# A021774: Expansion of 1/((1-x)(1-4x)(1-5x)(1-10x)).

The programs for A021774, the canonical program `A021774.P6716850460234935892` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021774 has offset 0).

The definition of A021774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A021774.P6716850460234935892

`∑[A018912(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A021774

/-- `∑[A018912(n)]` -/
def P6716850460234935892.Spec : Prop :=
  ∀ n, P6716850460234935892.a n = A021774 n

theorem P6716850460234935892.correct : P6716850460234935892.Spec := by
  intro n
  simp only [A021774]

end A021774

/-! ## A021774.P11344113232768360695

`A016237(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021774.P11344113232768360695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016237 n + 4 * a (n - 1)

end

end A021774.P11344113232768360695

namespace A021774

/-- `A016237(n)+4*a(n-1)` -/
def P11344113232768360695.Spec : Prop :=
  ∀ n, P11344113232768360695.a n = A021774 n

end A021774

/-! ## A021774.P15765615830398781410

`A016218(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A021774.P15765615830398781410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016218 n + 10 * a (n - 1)

end

end A021774.P15765615830398781410

namespace A021774

/-- `A016218(n)+10*a(n-1)` -/
def P15765615830398781410.Spec : Prop :=
  ∀ n, P15765615830398781410.a n = A021774 n

end A021774

/-! ## A021774.P15146828281691815754

`∑[A016157(n)+5*a(n-1)]` with `a(0)=1`
-/

namespace A021774.P15146828281691815754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A016157 n + 5 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021774.P15146828281691815754

namespace A021774

/-- `∑[A016157(n)+5*a(n-1)]` -/
def P15146828281691815754.Spec : Prop :=
  ∀ n, P15146828281691815754.a n = A021774 n

end A021774

/-! ## A021774.P161473402245428804

`2*A021464(n)-A021384(n)`
-/

namespace A021774.P161473402245428804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021464 n - A021384 n

end

end A021774.P161473402245428804

namespace A021774

/-- `2*A021464(n)-A021384(n)` -/
def P161473402245428804.Spec : Prop :=
  ∀ n, P161473402245428804.a n = A021774 n

end A021774

/-! ## A021774.P9637742692848475912

`2*A021829(n)-A022343(n)`
-/

namespace A021774.P9637742692848475912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - A022343 n

end

end A021774.P9637742692848475912

namespace A021774

/-- `2*A021829(n)-A022343(n)` -/
def P9637742692848475912.Spec : Prop :=
  ∀ n, P9637742692848475912.a n = A021774 n

end A021774

/-! ## A021774.P15998486760812744484

`2*A021829(n)-∑[A019839(n)]`
-/

namespace A021774.P15998486760812744484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021774.P15998486760812744484

namespace A021774

/-- `2*A021829(n)-∑[A019839(n)]` -/
def P15998486760812744484.Spec : Prop :=
  ∀ n, P15998486760812744484.a n = A021774 n

end A021774

/-! ## A021774.P6862801516547980618

`∑[A000079(n+1)*A247313(n+1)-A000351(n+1)]`
-/

namespace A021774.P6862801516547980618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A247313 (n + 1) - A000351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021774.P6862801516547980618

namespace A021774

/-- `∑[A000079(n+1)*A247313(n+1)-A000351(n+1)]` -/
def P6862801516547980618.Spec : Prop :=
  ∀ n, P6862801516547980618.a n = A021774 n

end A021774

/-! ## A021774.P3037776693516001304

`A016237(n+1)-A016225(n+1)`
-/

namespace A021774.P3037776693516001304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016237 (n + 1) - A016225 (n + 1)

end

end A021774.P3037776693516001304

namespace A021774

/-- `A016237(n+1)-A016225(n+1)` -/
def P3037776693516001304.Spec : Prop :=
  ∀ n, P3037776693516001304.a n = A021774 n

end A021774

/-!
# A021781: Decimal expansion of 1/777.

The programs for A021781, the canonical program `A021781.P7481188617943568813` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021781 has offset 0).

The definition of A021781 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021781.anchor (n : ℕ) : A021781 n = ((10 ^ (n + 1) / 777 % 10 : ℕ) : ℤ)` in `Proof.A021.A021781`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021781.P7481188617943568813

`a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=8, a(5)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021781

/-- `a(n-6)` -/
def P7481188617943568813.Spec : Prop :=
  ∀ n, (P7481188617943568813.a n : ℤ) = A021781 n

theorem P7481188617943568813.correct : P7481188617943568813.Spec := by
  intro n
  simp only [A021781]

end A021781

/-!
# A021784: Expansion of 1/((1-x)(1-4x)(1-5x)(1-11x)).

The programs for A021784, there is no canonical definition to state claims against.
-/

/-! ## A021784.P747335090749200488

`∑[A019040(n)]`
-/

namespace A021784.P747335090749200488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021784.P747335090749200488

/-! ## A021784.P11121991490216705793

`2*A021474(n)-A021394(n)`
-/

namespace A021784.P11121991490216705793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021474 n - A021394 n

end

end A021784.P11121991490216705793

/-! ## A021784.P17195143905650827915

`(A021924(n)+A021764(n))/2`
-/

namespace A021784.P17195143905650827915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A021924 n + A021764 n : ℚ) / 2

end

end A021784.P17195143905650827915

/-! ## A021784.P17684804588900135167

`(A028030(n)+A021394(n))/2`
-/

namespace A021784.P17684804588900135167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028030 n + A021394 n : ℚ) / 2

end

end A021784.P17684804588900135167

/-! ## A021784.P3040516901235756591

`2*A025963(n)-∑[A025963(n)]`
-/

namespace A021784.P3040516901235756591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025963 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021784.P3040516901235756591

/-! ## A021784.P12636200322664584097

`A016238(n)+A019040(n)-A016226(n)`
-/

namespace A021784.P12636200322664584097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 n + (A019040 n - A016226 n)

end

end A021784.P12636200322664584097

/-! ## A021784.P1611768101786419246

`A016238(n+1)-A016226(n+1)`
-/

namespace A021784.P1611768101786419246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016238 (n + 1) - A016226 (n + 1)

end

end A021784.P1611768101786419246

/-!
# A021794: Expansion of 1/((1-x)(1-4x)(1-5x)(1-12x)).

The programs for A021794, there is no canonical definition to state claims against.
-/

/-! ## A021794.P9215931889497755448

`∑[A019041(n)]`
-/

namespace A021794.P9215931889497755448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A021794.P9215931889497755448

/-! ## A021794.P11657547766752953464

`A016239(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A021794.P11657547766752953464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016239 n + 4 * a (n - 1)

end

end A021794.P11657547766752953464

/-! ## A021794.P5029245815560427602

`A016227(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A021794.P5029245815560427602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016227 n + 5 * a (n - 1)

end

end A021794.P5029245815560427602

/-! ## A021794.P9538764620192385029

`2*A021484(n)-A021404(n)`
-/

namespace A021794.P9538764620192385029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021484 n - A021404 n

end

end A021794.P9538764620192385029

/-! ## A021794.P720198965574250400

`A016239(n)+A019041(n)-A016227(n)`
-/

namespace A021794.P720198965574250400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 n + (A019041 n - A016227 n)

end

end A021794.P720198965574250400

/-! ## A021794.P17311825762673280700

`A021164(n)+A025936(n)-A021404(n)`
-/

namespace A021794.P17311825762673280700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021164 n + (A025936 n - A021404 n)

end

end A021794.P17311825762673280700

/-! ## A021794.P109355029118597648

`(A028031(n)+A021404(n))/2`
-/

namespace A021794.P109355029118597648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028031 n + A021404 n : ℚ) / 2

end

end A021794.P109355029118597648

/-! ## A021794.P6142707511604045656

`A016239(n+1)-A016227(n+1)`
-/

namespace A021794.P6142707511604045656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016239 (n + 1) - A016227 (n + 1)

end

end A021794.P6142707511604045656

/-!
# A021796: Decimal expansion of 1/792.

The programs for A021796, the canonical program `A021796.P5733233809177278056` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A021796 has offset 0).

The definition of A021796 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A021796.anchor (n : ℕ) : A021796 n = ((10 ^ (n + 1) / 792 % 10 : ℕ) : ℤ)` in `Proof.A021.A021796`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A021796.P5733233809177278056

`a(n-2)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A021796

/-- `a(n-2)` -/
def P5733233809177278056.Spec : Prop :=
  ∀ n, (P5733233809177278056.a n : ℤ) = A021796 n

theorem P5733233809177278056.correct : P5733233809177278056.Spec := by
  intro n
  simp only [A021796]

end A021796


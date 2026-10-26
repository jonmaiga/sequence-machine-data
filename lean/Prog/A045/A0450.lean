import SequenceMachineLib
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B012.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A045000: Numbers whose base-3 representation contains exactly two 0's and one 2.

The programs for A045000, the canonical program `A045000.P2718937104415212112` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045000 has offset 1).

The definition of A045000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 814 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045000.P2718937104415212112

`∩[A023699(n+1), A031453(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045000

/-- `∩[A023699(n+1), A031453(n+1)]` -/
def P2718937104415212112.Spec : Prop :=
  ∀ n, (P2718937104415212112.a n : ℤ) = A045000 (n + 1)

theorem P2718937104415212112.correct : P2718937104415212112.Spec := by
  intro n
  simp only [A045000, Nat.add_sub_cancel]

end A045000

/-! ## A045000.P17614492727212394862

`∩[A023699(n+1), A043322(n+1)]`
-/

namespace A045000.P17614492727212394862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045000.P17614492727212394862

namespace A045000

/-- `∩[A023699(n+1), A043322(n+1)]` -/
def P17614492727212394862.Spec : Prop :=
  ∀ n, (P17614492727212394862.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P6548320443379421235

`∩[A031453(n+1), A043322(n+1)]`
-/

namespace A045000.P6548320443379421235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045000.P6548320443379421235

namespace A045000

/-- `∩[A031453(n+1), A043322(n+1)]` -/
def P6548320443379421235.Spec : Prop :=
  ∀ n, (P6548320443379421235.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P16764936630271072418

`eq[2, A077267(n)^A081603(n)]`
-/

namespace A045000.P16764936630271072418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n : ℚ) ^ (A081603 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045000.P16764936630271072418

namespace A045000

/-- `eq[2, A077267(n)^A081603(n)]` -/
def P16764936630271072418.Spec : Prop :=
  ∀ n, (P16764936630271072418.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P5660280019660792839

`eq[A077267(n)+2, A117592(n)²]`
-/

namespace A045000.P5660280019660792839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045000.P5660280019660792839

namespace A045000

/-- `eq[A077267(n)+2, A117592(n)²]` -/
def P5660280019660792839.Spec : Prop :=
  ∀ n, (P5660280019660792839.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P18001152827134920290

`eq[A077267(n)!, A120879(A117592(n))]`
-/

namespace A045000.P18001152827134920290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A077267 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A117592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045000.P18001152827134920290

namespace A045000

/-- `eq[A077267(n)!, A120879(A117592(n))]` -/
def P18001152827134920290.Spec : Prop :=
  ∀ n, (P18001152827134920290.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P16606270540390679350

`A357616(A044976(n+1))`
-/

namespace A045000.P16606270540390679350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044976 (n + 1)).toNat

end

end A045000.P16606270540390679350

namespace A045000

/-- `A357616(A044976(n+1))` -/
def P16606270540390679350.Spec : Prop :=
  ∀ n, P16606270540390679350.a n = A045000 (n + 1)

end A045000

/-! ## A045000.P9286326831273460376

`eq[A117592(n)+2, A117592(A171960(n))]`
-/

namespace A045000.P9286326831273460376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 (A171960 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045000.P9286326831273460376

namespace A045000

/-- `eq[A117592(n)+2, A117592(A171960(n))]` -/
def P9286326831273460376.Spec : Prop :=
  ∀ n, (P9286326831273460376.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P17726146937774543867

`eq[A077267(n)², A290094(A117592(n)²)]`
-/

namespace A045000.P17726146937774543867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 (A117592 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045000.P17726146937774543867

namespace A045000

/-- `eq[A077267(n)², A290094(A117592(n)²)]` -/
def P17726146937774543867.Spec : Prop :=
  ∀ n, (P17726146937774543867.a n : ℤ) = A045000 (n + 1)

end A045000

/-! ## A045000.P8490228884283986610

`record[A108738(A045005(n+1))]`
-/

namespace A045000.P8490228884283986610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108738 (A045005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045000.P8490228884283986610

namespace A045000

/-- `record[A108738(A045005(n+1))]` -/
def P8490228884283986610.Spec : Prop :=
  ∀ n, P8490228884283986610.a n = A045000 (n + 1)

end A045000

/-!
# A045001: Numbers whose base-3 representation contains exactly two 0's and two 2's.

The programs for A045001, the canonical program `A045001.P4548679255925172547` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045001 has offset 1).

The definition of A045001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1924 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045001.P4548679255925172547

`∩[A023700(n+1), A031452(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045001

/-- `∩[A023700(n+1), A031452(n+1)]` -/
def P4548679255925172547.Spec : Prop :=
  ∀ n, (P4548679255925172547.a n : ℤ) = A045001 (n + 1)

theorem P4548679255925172547.correct : P4548679255925172547.Spec := by
  intro n
  simp only [A045001, Nat.add_sub_cancel]

end A045001

/-! ## A045001.P18199046363110558668

`∩[A023700(n+1), A039276(n+1)]`
-/

namespace A045001.P18199046363110558668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045001.P18199046363110558668

namespace A045001

/-- `∩[A023700(n+1), A039276(n+1)]` -/
def P18199046363110558668.Spec : Prop :=
  ∀ n, (P18199046363110558668.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P8186956555926907945

`∩[A023700(n+1), A043322(n+1)]`
-/

namespace A045001.P8186956555926907945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045001.P8186956555926907945

namespace A045001

/-- `∩[A023700(n+1), A043322(n+1)]` -/
def P8186956555926907945.Spec : Prop :=
  ∀ n, (P8186956555926907945.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P15758185722287933684

`∩[A031452(n+1), A043322(n+1)]`
-/

namespace A045001.P15758185722287933684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045001.P15758185722287933684

namespace A045001

/-- `∩[A031452(n+1), A043322(n+1)]` -/
def P15758185722287933684.Spec : Prop :=
  ∀ n, (P15758185722287933684.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P18065547483061413596

`∩[A039276(n+1), A043322(n+1)]`
-/

namespace A045001.P18065547483061413596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045001.P18065547483061413596

namespace A045001

/-- `∩[A039276(n+1), A043322(n+1)]` -/
def P18065547483061413596.Spec : Prop :=
  ∀ n, (P18065547483061413596.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P15823400344866062714

`eq[A077267(n)+2, A081603(n)²]`
-/

namespace A045001.P15823400344866062714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045001.P15823400344866062714

namespace A045001

/-- `eq[A077267(n)+2, A081603(n)²]` -/
def P15823400344866062714.Spec : Prop :=
  ∀ n, (P15823400344866062714.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P104492006330179020

`eq[A077267(n)², A290094(A117592(n))]`
-/

namespace A045001.P104492006330179020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 (A117592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045001.P104492006330179020

namespace A045001

/-- `eq[A077267(n)², A290094(A117592(n))]` -/
def P104492006330179020.Spec : Prop :=
  ∀ n, (P104492006330179020.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P564419185759208786

`eq[A077267(n)², A290094(A120879(n))]`
-/

namespace A045001.P564419185759208786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045001.P564419185759208786

namespace A045001

/-- `eq[A077267(n)², A290094(A120879(n))]` -/
def P564419185759208786.Spec : Prop :=
  ∀ n, (P564419185759208786.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P4140501479455272631

`eq[A077267(n)+6, A000010(A117592(n)²)]`
-/

namespace A045001.P4140501479455272631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A117592 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045001.P4140501479455272631

namespace A045001

/-- `eq[A077267(n)+6, A000010(A117592(n)²)]` -/
def P4140501479455272631.Spec : Prop :=
  ∀ n, (P4140501479455272631.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P4468927625462387659

`eq[A077267(n)+6, A066049(A117592(n)+1)+1]`
-/

namespace A045001.P4468927625462387659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066049 (A117592 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045001.P4468927625462387659

namespace A045001

/-- `eq[A077267(n)+6, A066049(A117592(n)+1)+1]` -/
def P4468927625462387659.Spec : Prop :=
  ∀ n, (P4468927625462387659.a n : ℤ) = A045001 (n + 1)

end A045001

/-! ## A045001.P5471144251108406593

`A357616(A044977(n+1))`
-/

namespace A045001.P5471144251108406593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044977 (n + 1)).toNat

end

end A045001.P5471144251108406593

namespace A045001

/-- `A357616(A044977(n+1))` -/
def P5471144251108406593.Spec : Prop :=
  ∀ n, P5471144251108406593.a n = A045001 (n + 1)

end A045001

/-!
# A045002: Numbers whose base-3 representation contains exactly two 0's and three 2's.

The programs for A045002, the canonical program `A045002.P17857784299893427605` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045002 has offset 1).

The definition of A045002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2842 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045002.P17857784299893427605

`∩[A031457(n+1), A043322(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045002

/-- `∩[A031457(n+1), A043322(n+1)]` -/
def P17857784299893427605.Spec : Prop :=
  ∀ n, (P17857784299893427605.a n : ℤ) = A045002 (n + 1)

theorem P17857784299893427605.correct : P17857784299893427605.Spec := by
  intro n
  simp only [A045002, Nat.add_sub_cancel]

end A045002

/-! ## A045002.P7562396388063635124

`∩[A023701(n+1), A031457(n+1)]`
-/

namespace A045002.P7562396388063635124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045002.P7562396388063635124

namespace A045002

/-- `∩[A023701(n+1), A031457(n+1)]` -/
def P7562396388063635124.Spec : Prop :=
  ∀ n, (P7562396388063635124.a n : ℤ) = A045002 (n + 1)

end A045002

/-! ## A045002.P18029239053210411102

`∩[A023701(n+1), A043322(n+1)]`
-/

namespace A045002.P18029239053210411102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045002.P18029239053210411102

namespace A045002

/-- `∩[A023701(n+1), A043322(n+1)]` -/
def P18029239053210411102.Spec : Prop :=
  ∀ n, (P18029239053210411102.a n : ℤ) = A045002 (n + 1)

end A045002

/-! ## A045002.P8726264205471836320

`eq[A077267(n)+6, A117592(n)]`
-/

namespace A045002.P8726264205471836320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045002.P8726264205471836320

namespace A045002

/-- `eq[A077267(n)+6, A117592(n)]` -/
def P8726264205471836320.Spec : Prop :=
  ∀ n, (P8726264205471836320.a n : ℤ) = A045002 (n + 1)

end A045002

/-! ## A045002.P8749726931776466502

`eq[8, A077267(n)^A081603(n)]`
-/

namespace A045002.P8749726931776466502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n : ℚ) ^ (A081603 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045002.P8749726931776466502

namespace A045002

/-- `eq[8, A077267(n)^A081603(n)]` -/
def P8749726931776466502.Spec : Prop :=
  ∀ n, (P8749726931776466502.a n : ℤ) = A045002 (n + 1)

end A045002

/-! ## A045002.P2623635801960828176

`A357616(A044978(n+1))`
-/

namespace A045002.P2623635801960828176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044978 (n + 1)).toNat

end

end A045002.P2623635801960828176

namespace A045002

/-- `A357616(A044978(n+1))` -/
def P2623635801960828176.Spec : Prop :=
  ∀ n, P2623635801960828176.a n = A045002 (n + 1)

end A045002

/-!
# A045003: Numbers whose base-3 representation contains exactly two 0's and four 2's.

The programs for A045003, the canonical program `A045003.P5732014318311237842` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045003 has offset 1).

The definition of A045003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2936 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045003.P5732014318311237842

`∩[A023702(n+1), A031458(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045003

/-- `∩[A023702(n+1), A031458(n+1)]` -/
def P5732014318311237842.Spec : Prop :=
  ∀ n, (P5732014318311237842.a n : ℤ) = A045003 (n + 1)

theorem P5732014318311237842.correct : P5732014318311237842.Spec := by
  intro n
  simp only [A045003, Nat.add_sub_cancel]

end A045003

/-! ## A045003.P6533508594303659490

`∩[A023702(n+1), A043322(n+1)]`
-/

namespace A045003.P6533508594303659490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045003.P6533508594303659490

namespace A045003

/-- `∩[A023702(n+1), A043322(n+1)]` -/
def P6533508594303659490.Spec : Prop :=
  ∀ n, (P6533508594303659490.a n : ℤ) = A045003 (n + 1)

end A045003

/-! ## A045003.P15828517836856690946

`∩[A031458(n+1), A043322(n+1)]`
-/

namespace A045003.P15828517836856690946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045003.P15828517836856690946

namespace A045003

/-- `∩[A031458(n+1), A043322(n+1)]` -/
def P15828517836856690946.Spec : Prop :=
  ∀ n, (P15828517836856690946.a n : ℤ) = A045003 (n + 1)

end A045003

/-! ## A045003.P4471490961982741233

`A357616(A044979(n+1))`
-/

namespace A045003.P4471490961982741233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044979 (n + 1)).toNat

end

end A045003.P4471490961982741233

namespace A045003

/-- `A357616(A044979(n+1))` -/
def P4471490961982741233.Spec : Prop :=
  ∀ n, P4471490961982741233.a n = A045003 (n + 1)

end A045003

/-! ## A045003.P3014413050581533462

`A357616(∩[A023695(n+1), A043322(n+1)])`
-/

namespace A045003.P3014413050581533462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043322 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045003.P3014413050581533462

namespace A045003

/-- `A357616(∩[A023695(n+1), A043322(n+1)])` -/
def P3014413050581533462.Spec : Prop :=
  ∀ n, P3014413050581533462.a n = A045003 (n + 1)

end A045003

/-!
# A045004: Numbers whose base-3 representation contains exactly three 0's and no 2's.

The programs for A045004, the canonical program `A045004.P14105085117710872714` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045004 has offset 1).

The definition of A045004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045004.P14105085117710872714

`A044980(n+1)/2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045004

/-- `A044980(n+1)/2` -/
def P14105085117710872714.Spec : Prop :=
  ∀ n, P14105085117710872714.a n = (A045004 (n + 1) : ℚ)

end A045004

/-! ## A045004.P2462643684495954413

`A005836(eq[4, A008687(n)])`
-/

namespace A045004.P2462643684495954413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045004.P2462643684495954413

namespace A045004

/-- `A005836(eq[4, A008687(n)])` -/
def P2462643684495954413.Spec : Prop :=
  ∀ n, P2462643684495954413.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P18161720211461926252

`A003278(eq[4, A008687(n)])-1`
-/

namespace A045004.P18161720211461926252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A045004.P18161720211461926252

namespace A045004

/-- `A003278(eq[4, A008687(n)])-1` -/
def P18161720211461926252.Spec : Prop :=
  ∀ n, P18161720211461926252.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P48100578989148292

`A003278(eq[3, A023416(n)]+1)-1`
-/

namespace A045004.P48100578989148292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A045004.P48100578989148292

namespace A045004

/-- `A003278(eq[3, A023416(n)]+1)-1` -/
def P48100578989148292.Spec : Prop :=
  ∀ n, P48100578989148292.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P13258126639493604556

`A005836(eq[A080791(n), A089080(n+1)])`
-/

namespace A045004.P13258126639493604556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045004.P13258126639493604556

namespace A045004

/-- `A005836(eq[A080791(n), A089080(n+1)])` -/
def P13258126639493604556.Spec : Prop :=
  ∀ n, P13258126639493604556.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P12954294240709133621

`A005823(eq[A080791(n), A089080(n+1)])/2`
-/

namespace A045004.P12954294240709133621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005823 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A045004.P12954294240709133621

namespace A045004

/-- `A005823(eq[A080791(n), A089080(n+1)])/2` -/
def P12954294240709133621.Spec : Prop :=
  ∀ n, P12954294240709133621.a n = (A045004 (n + 1) : ℚ)

end A045004

/-! ## A045004.P7738707610708330369

`A005836(eq[8, A080100(A004273(n))])`
-/

namespace A045004.P7738707610708330369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045004.P7738707610708330369

namespace A045004

/-- `A005836(eq[8, A080100(A004273(n))])` -/
def P7738707610708330369.Spec : Prop :=
  ∀ n, P7738707610708330369.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P17069001663246150878

`∩[A005836(n+1), A031455(n+1)]`
-/

namespace A045004.P17069001663246150878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045004.P17069001663246150878

namespace A045004

/-- `∩[A005836(n+1), A031455(n+1)]` -/
def P17069001663246150878.Spec : Prop :=
  ∀ n, (P17069001663246150878.a n : ℤ) = A045004 (n + 1)

end A045004

/-! ## A045004.P11698250231022726539

`∩[A005836(n+1), A031454(n+1)-1]`
-/

namespace A045004.P11698250231022726539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045004.P11698250231022726539

namespace A045004

/-- `∩[A005836(n+1), A031454(n+1)-1]` -/
def P11698250231022726539.Spec : Prop :=
  ∀ n, (P11698250231022726539.a n : ℤ) = A045004 (n + 1)

end A045004

/-! ## A045004.P8209428931016227092

`A004488(A044980(n+1))`
-/

namespace A045004.P8209428931016227092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A044980 (n + 1)).toNat

end

end A045004.P8209428931016227092

namespace A045004

/-- `A004488(A044980(n+1))` -/
def P8209428931016227092.Spec : Prop :=
  ∀ n, P8209428931016227092.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P744920522201603594

`∩[A005836(n+1), A043323(n+1)]`
-/

namespace A045004.P744920522201603594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045004.P744920522201603594

namespace A045004

/-- `∩[A005836(n+1), A043323(n+1)]` -/
def P744920522201603594.Spec : Prop :=
  ∀ n, (P744920522201603594.a n : ℤ) = A045004 (n + 1)

end A045004

/-! ## A045004.P10598551595294392174

`∩[A031455(n+1), A043323(n+1)]`
-/

namespace A045004.P10598551595294392174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045004.P10598551595294392174

namespace A045004

/-- `∩[A031455(n+1), A043323(n+1)]` -/
def P10598551595294392174.Spec : Prop :=
  ∀ n, (P10598551595294392174.a n : ℤ) = A045004 (n + 1)

end A045004

/-! ## A045004.P15497328984465573625

`∩[A043323(2*n+1), A031454(n+2)-1]`
-/

namespace A045004.P15497328984465573625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045004.P15497328984465573625

namespace A045004

/-- `∩[A043323(2*n+1), A031454(n+2)-1]` -/
def P15497328984465573625.Spec : Prop :=
  ∀ n, (P15497328984465573625.a n : ℤ) = A045004 (n + 1)

end A045004

/-! ## A045004.P8154233279120840690

`A132141(A044968(n+1)+1)`
-/

namespace A045004.P8154233279120840690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132141 (A044968 (n + 1) + 1).toNat

end

end A045004.P8154233279120840690

namespace A045004

/-- `A132141(A044968(n+1)+1)` -/
def P8154233279120840690.Spec : Prop :=
  ∀ n, P8154233279120840690.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P12392530206184677514

`filter[A031455(n+1), A039966(#)]`
-/

namespace A045004.P12392530206184677514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A045004.P12392530206184677514

namespace A045004

/-- `filter[A031455(n+1), A039966(#)]` -/
def P12392530206184677514.Spec : Prop :=
  ∀ n, P12392530206184677514.a n = A045004 (n + 1)

end A045004

/-! ## A045004.P9720573469430871438

`filter[A043323(n+1), A039966(#)]`
-/

namespace A045004.P9720573469430871438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A045004.P9720573469430871438

namespace A045004

/-- `filter[A043323(n+1), A039966(#)]` -/
def P9720573469430871438.Spec : Prop :=
  ∀ n, P9720573469430871438.a n = A045004 (n + 1)

end A045004

/-!
# A045005: Numbers whose base-3 representation contains exactly three 0's and one 2.

The programs for A045005, the canonical program `A045005.P15994022594868692415` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045005 has offset 1).

The definition of A045005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1733 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045005.P15994022594868692415

`∩[A023699(n+1), A031454(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045005

/-- `∩[A023699(n+1), A031454(n+1)]` -/
def P15994022594868692415.Spec : Prop :=
  ∀ n, (P15994022594868692415.a n : ℤ) = A045005 (n + 1)

theorem P15994022594868692415.correct : P15994022594868692415.Spec := by
  intro n
  simp only [A045005, Nat.add_sub_cancel]

end A045005

/-! ## A045005.P11882394950659211200

`∩[A023699(n+1), A043323(n+1)]`
-/

namespace A045005.P11882394950659211200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045005.P11882394950659211200

namespace A045005

/-- `∩[A023699(n+1), A043323(n+1)]` -/
def P11882394950659211200.Spec : Prop :=
  ∀ n, (P11882394950659211200.a n : ℤ) = A045005 (n + 1)

end A045005

/-! ## A045005.P6894815849207434316

`∩[A031454(n+1), A043323(n+1)]`
-/

namespace A045005.P6894815849207434316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045005.P6894815849207434316

namespace A045005

/-- `∩[A031454(n+1), A043323(n+1)]` -/
def P6894815849207434316.Spec : Prop :=
  ∀ n, (P6894815849207434316.a n : ℤ) = A045005 (n + 1)

end A045005

/-! ## A045005.P2153545798824283153

`eq[3, A077267(n)^A081603(n)]`
-/

namespace A045005.P2153545798824283153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n : ℚ) ^ (A081603 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045005.P2153545798824283153

namespace A045005

/-- `eq[3, A077267(n)^A081603(n)]` -/
def P2153545798824283153.Spec : Prop :=
  ∀ n, (P2153545798824283153.a n : ℤ) = A045005 (n + 1)

end A045005

/-! ## A045005.P2803686939047761261

`eq[A077267(n)+6, A191104(A117592(n)+1)]`
-/

namespace A045005.P2803686939047761261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191104 (A117592 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045005.P2803686939047761261

namespace A045005

/-- `eq[A077267(n)+6, A191104(A117592(n)+1)]` -/
def P2803686939047761261.Spec : Prop :=
  ∀ n, (P2803686939047761261.a n : ℤ) = A045005 (n + 1)

end A045005

/-! ## A045005.P15144324637053206034

`A357616(A044981(n+1))`
-/

namespace A045005.P15144324637053206034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044981 (n + 1)).toNat

end

end A045005.P15144324637053206034

namespace A045005

/-- `A357616(A044981(n+1))` -/
def P15144324637053206034.Spec : Prop :=
  ∀ n, P15144324637053206034.a n = A045005 (n + 1)

end A045005

/-! ## A045005.P4407463649368249772

`record[A263390(A045010(n+1))]`
-/

namespace A045005.P4407463649368249772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263390 (A045010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045005.P4407463649368249772

namespace A045005

/-- `record[A263390(A045010(n+1))]` -/
def P4407463649368249772.Spec : Prop :=
  ∀ n, P4407463649368249772.a n = A045005 (n + 1)

end A045005

/-! ## A045005.P14840093834445124616

`eq[A077267(n), A241678(A117592(n))]`
-/

namespace A045005.P14840093834445124616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241678 (A117592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045005.P14840093834445124616

namespace A045005

/-- `eq[A077267(n), A241678(A117592(n))]` -/
def P14840093834445124616.Spec : Prop :=
  ∀ n, (P14840093834445124616.a n : ℤ) = A045005 (n + 1)

end A045005

/-! ## A045005.P10145370537284572634

`eq[A077267(n)², A120879(A117592(n)²)]`
-/

namespace A045005.P10145370537284572634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (A117592 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045005.P10145370537284572634

namespace A045005

/-- `eq[A077267(n)², A120879(A117592(n)²)]` -/
def P10145370537284572634.Spec : Prop :=
  ∀ n, (P10145370537284572634.a n : ℤ) = A045005 (n + 1)

end A045005

/-!
# A045006: Numbers whose base-3 representation contains exactly three 0's and two 2's.

The programs for A045006, the canonical program `A045006.P6297844350569896683` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045006 has offset 1).

The definition of A045006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2720 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045006.P6297844350569896683

`∩[A023700(n+1), A031453(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045006

/-- `∩[A023700(n+1), A031453(n+1)]` -/
def P6297844350569896683.Spec : Prop :=
  ∀ n, (P6297844350569896683.a n : ℤ) = A045006 (n + 1)

theorem P6297844350569896683.correct : P6297844350569896683.Spec := by
  intro n
  simp only [A045006, Nat.add_sub_cancel]

end A045006

/-! ## A045006.P9512740026548529860

`∩[A023700(n+1), A043323(n+1)]`
-/

namespace A045006.P9512740026548529860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045006.P9512740026548529860

namespace A045006

/-- `∩[A023700(n+1), A043323(n+1)]` -/
def P9512740026548529860.Spec : Prop :=
  ∀ n, (P9512740026548529860.a n : ℤ) = A045006 (n + 1)

end A045006

/-! ## A045006.P17924765934792091820

`∩[A031453(n+1), A043323(n+1)]`
-/

namespace A045006.P17924765934792091820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045006.P17924765934792091820

namespace A045006

/-- `∩[A031453(n+1), A043323(n+1)]` -/
def P17924765934792091820.Spec : Prop :=
  ∀ n, (P17924765934792091820.a n : ℤ) = A045006 (n + 1)

end A045006

/-! ## A045006.P17812357497576867305

`A357616(A044982(n+1))`
-/

namespace A045006.P17812357497576867305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044982 (n + 1)).toNat

end

end A045006.P17812357497576867305

namespace A045006

/-- `A357616(A044982(n+1))` -/
def P17812357497576867305.Spec : Prop :=
  ∀ n, P17812357497576867305.a n = A045006 (n + 1)

end A045006

/-! ## A045006.P12175250097050117007

`A357616(eq[9, A077267(n)^A062756(n)])`
-/

namespace A045006.P12175250097050117007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077267 n : ℚ) ^ (A062756 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A045006.P12175250097050117007

namespace A045006

/-- `A357616(eq[9, A077267(n)^A062756(n)])` -/
def P12175250097050117007.Spec : Prop :=
  ∀ n, P12175250097050117007.a n = A045006 (n + 1)

end A045006

/-! ## A045006.P9243110962533628993

`A357616(∩[A023693(n+1), A043323(n+1)])`
-/

namespace A045006.P9243110962533628993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045006.P9243110962533628993

namespace A045006

/-- `A357616(∩[A023693(n+1), A043323(n+1)])` -/
def P9243110962533628993.Spec : Prop :=
  ∀ n, P9243110962533628993.a n = A045006 (n + 1)

end A045006

/-!
# A045007: Numbers whose base-3 representation contains exactly three 0's and three 2's.

The programs for A045007, the canonical program `A045007.P18296789142797255809` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045007 has offset 1).

The definition of A045007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045007.P18296789142797255809

`∩[A031452(n+1), A043323(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045007

/-- `∩[A031452(n+1), A043323(n+1)]` -/
def P18296789142797255809.Spec : Prop :=
  ∀ n, (P18296789142797255809.a n : ℤ) = A045007 (n + 1)

theorem P18296789142797255809.correct : P18296789142797255809.Spec := by
  intro n
  simp only [A045007, Nat.add_sub_cancel]

end A045007

/-! ## A045007.P1569713466745467323

`∩[A039276(n+1), A043323(n+1)]`
-/

namespace A045007.P1569713466745467323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045007.P1569713466745467323

namespace A045007

/-- `∩[A039276(n+1), A043323(n+1)]` -/
def P1569713466745467323.Spec : Prop :=
  ∀ n, (P1569713466745467323.a n : ℤ) = A045007 (n + 1)

end A045007

/-! ## A045007.P11808059943754852617

`∩[A023701(n+1), A031452(n+1)]`
-/

namespace A045007.P11808059943754852617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045007.P11808059943754852617

namespace A045007

/-- `∩[A023701(n+1), A031452(n+1)]` -/
def P11808059943754852617.Spec : Prop :=
  ∀ n, (P11808059943754852617.a n : ℤ) = A045007 (n + 1)

end A045007

/-! ## A045007.P5923795142411979566

`∩[A023701(n+1), A039276(n+1)]`
-/

namespace A045007.P5923795142411979566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045007.P5923795142411979566

namespace A045007

/-- `∩[A023701(n+1), A039276(n+1)]` -/
def P5923795142411979566.Spec : Prop :=
  ∀ n, (P5923795142411979566.a n : ℤ) = A045007 (n + 1)

end A045007

/-! ## A045007.P11052525180144258183

`∩[A023701(n+1), A043323(n+1)]`
-/

namespace A045007.P11052525180144258183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045007.P11052525180144258183

namespace A045007

/-- `∩[A023701(n+1), A043323(n+1)]` -/
def P11052525180144258183.Spec : Prop :=
  ∀ n, (P11052525180144258183.a n : ℤ) = A045007 (n + 1)

end A045007

/-! ## A045007.P2827911357131714458

`A357616(A044983(n+1))`
-/

namespace A045007.P2827911357131714458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044983 (n + 1)).toNat

end

end A045007.P2827911357131714458

namespace A045007

/-- `A357616(A044983(n+1))` -/
def P2827911357131714458.Spec : Prop :=
  ∀ n, P2827911357131714458.a n = A045007 (n + 1)

end A045007

/-!
# A045008: Numbers whose base-3 representation contains exactly three 0's and four 2's.

The programs for A045008, there is no canonical definition to state claims against.
-/

/-! ## A045008.P17314770092555381903

`A357616(A044984(n+1))`
-/

namespace A045008.P17314770092555381903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044984 (n + 1)).toNat

end

end A045008.P17314770092555381903

/-! ## A045008.P8668061797719321455

`2*A119353(A045032(n+1))`
-/

namespace A045008.P8668061797719321455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119353 (A045032 (n + 1)).toNat

end

end A045008.P8668061797719321455

/-! ## A045008.P1243598929208325542

`A002264(6*A044984(n+1))`
-/

namespace A045008.P1243598929208325542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (6 * A044984 (n + 1)).toNat

end

end A045008.P1243598929208325542

/-! ## A045008.P15741757220028199230

`A099470(6*A044984(n+1))`
-/

namespace A045008.P15741757220028199230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (6 * A044984 (n + 1)).toNat

end

end A045008.P15741757220028199230

/-! ## A045008.P7814905791784368025

`filter[A044980(n+2), A057215(#)]`
-/

namespace A045008.P7814905791784368025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044980 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057215 (f1 j).toNat = 1) n)

end

end A045008.P7814905791784368025

/-!
# A045009: Numbers whose base-3 representation contains exactly four 0's and no 2's.

The programs for A045009, there is no canonical definition to state claims against.
-/

/-! ## A045009.P6732762686631691917

`A044985(n+1)/2`
-/

namespace A045009.P6732762686631691917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044985 (n + 1) : ℚ) / 2

end

end A045009.P6732762686631691917

/-! ## A045009.P11793051396236575676

`A005836(eq[5, A008687(n)])`
-/

namespace A045009.P11793051396236575676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045009.P11793051396236575676

/-! ## A045009.P12678421535574050137

`A003278(eq[4, A023416(n)]+1)-1`
-/

namespace A045009.P12678421535574050137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A045009.P12678421535574050137

/-! ## A045009.P13393365776011762156

`A005836(eq[A089080(n+1)+1, A080791(n)])`
-/

namespace A045009.P13393365776011762156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A045009.P13393365776011762156

/-! ## A045009.P3802396863534405728

`∩[A005836(n+1), A031456(n+1)]`
-/

namespace A045009.P3802396863534405728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P3802396863534405728

/-! ## A045009.P10449858233576990978

`∩[A031456(n+1), A037408(n+1)]`
-/

namespace A045009.P10449858233576990978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P10449858233576990978

/-! ## A045009.P16468346839005475374

`∩[A005836(n+1), A031455(n+1)-1]`
-/

namespace A045009.P16468346839005475374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P16468346839005475374

/-! ## A045009.P7397672751126505069

`A004488(A044985(n+1))`
-/

namespace A045009.P7397672751126505069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A044985 (n + 1)).toNat

end

end A045009.P7397672751126505069

/-! ## A045009.P11454522030470576786

`A014682(lcm(2, A044985(n+1)))`
-/

namespace A045009.P11454522030470576786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A044985 (n + 1)))

end

end A045009.P11454522030470576786

/-! ## A045009.P13124379740885088129

`∩[A005836(n+1), A043324(n+1)]`
-/

namespace A045009.P13124379740885088129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P13124379740885088129

/-! ## A045009.P593511204685557420

`∩[A031456(n+1), A043324(n+1)]`
-/

namespace A045009.P593511204685557420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P593511204685557420

/-! ## A045009.P4900005160275182429

`∩[A037408(n+1), A043324(n+1)]`
-/

namespace A045009.P4900005160275182429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P4900005160275182429

/-! ## A045009.P5414419130898923534

`∩[A043324(2*n+1), A031455(n+2)-1]`
-/

namespace A045009.P5414419130898923534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045009.P5414419130898923534

/-! ## A045009.P13179968448793958107

`A014682(A044985(n+1))%A253044(n+1)`
-/

namespace A045009.P13179968448793958107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A044985 (n + 1)).toNat) (A253044 (n + 1))

end

end A045009.P13179968448793958107

/-! ## A045009.P5388814525131228267

`∩[A043324(2*(n+1)), A023692(n+2)+1]/2`
-/

namespace A045009.P5388814525131228267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 2) + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A045009.P5388814525131228267

/-! ## A045009.P5704780618601168189

`A004488(∩[A043324(2*(n+1)), A023692(n+2)+1])`
-/

namespace A045009.P5704780618601168189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045009.P5704780618601168189

/-! ## A045009.P463492073464175656

`filter[A031456(n+1), A039966(#)]`
-/

namespace A045009.P463492073464175656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A045009.P463492073464175656

/-! ## A045009.P7371097060565278229

`filter[A043324(n+1), A039966(#)]`
-/

namespace A045009.P7371097060565278229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A045009.P7371097060565278229

/-!
# A045010: Numbers whose base-3 representation contains exactly four 0's and one 2.

The programs for A045010, the canonical program `A045010.P1561473996532251622` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045010 has offset 1).

The definition of A045010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045010.P1561473996532251622

`∩[A023699(n+1), A031455(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045010

/-- `∩[A023699(n+1), A031455(n+1)]` -/
def P1561473996532251622.Spec : Prop :=
  ∀ n, (P1561473996532251622.a n : ℤ) = A045010 (n + 1)

theorem P1561473996532251622.correct : P1561473996532251622.Spec := by
  intro n
  simp only [A045010, Nat.add_sub_cancel]

end A045010

/-! ## A045010.P15927918710485386305

`∩[A023699(n+1), A043324(n+1)]`
-/

namespace A045010.P15927918710485386305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045010.P15927918710485386305

namespace A045010

/-- `∩[A023699(n+1), A043324(n+1)]` -/
def P15927918710485386305.Spec : Prop :=
  ∀ n, (P15927918710485386305.a n : ℤ) = A045010 (n + 1)

end A045010

/-! ## A045010.P13646815103137581836

`∩[A031455(n+1), A043324(n+1)]`
-/

namespace A045010.P13646815103137581836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045010.P13646815103137581836

namespace A045010

/-- `∩[A031455(n+1), A043324(n+1)]` -/
def P13646815103137581836.Spec : Prop :=
  ∀ n, (P13646815103137581836.a n : ℤ) = A045010 (n + 1)

end A045010

/-! ## A045010.P13605626050301355581

`filter[A031455(n+1), A064990(#)]`
-/

namespace A045010.P13605626050301355581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064990 (f1 j).toNat = 1) n)

end

end A045010.P13605626050301355581

namespace A045010

/-- `filter[A031455(n+1), A064990(#)]` -/
def P13605626050301355581.Spec : Prop :=
  ∀ n, P13605626050301355581.a n = A045010 (n + 1)

end A045010

/-! ## A045010.P993559674559334872

`A357616(A044986(n+1))`
-/

namespace A045010.P993559674559334872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044986 (n + 1)).toNat

end

end A045010.P993559674559334872

namespace A045010

/-- `A357616(A044986(n+1))` -/
def P993559674559334872.Spec : Prop :=
  ∀ n, P993559674559334872.a n = A045010 (n + 1)

end A045010

/-! ## A045010.P4372402143077672303

`A357616(∩[A023692(n+1), A043324(n+1)])`
-/

namespace A045010.P4372402143077672303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045010.P4372402143077672303

namespace A045010

/-- `A357616(∩[A023692(n+1), A043324(n+1)])` -/
def P4372402143077672303.Spec : Prop :=
  ∀ n, P4372402143077672303.a n = A045010 (n + 1)

end A045010

/-!
# A045011: Numbers whose base-3 representation contains exactly four 0's and two 2's.

The programs for A045011, the canonical program `A045011.P15370651697208224625` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045011 has offset 1).

The definition of A045011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045011.P15370651697208224625

`∩[A031454(n+1), A043324(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045011

/-- `∩[A031454(n+1), A043324(n+1)]` -/
def P15370651697208224625.Spec : Prop :=
  ∀ n, (P15370651697208224625.a n : ℤ) = A045011 (n + 1)

theorem P15370651697208224625.correct : P15370651697208224625.Spec := by
  intro n
  simp only [A045011, Nat.add_sub_cancel]

end A045011

/-! ## A045011.P7025553412530987146

`∩[A023700(n+1), A031454(n+1)]`
-/

namespace A045011.P7025553412530987146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045011.P7025553412530987146

namespace A045011

/-- `∩[A023700(n+1), A031454(n+1)]` -/
def P7025553412530987146.Spec : Prop :=
  ∀ n, (P7025553412530987146.a n : ℤ) = A045011 (n + 1)

end A045011

/-! ## A045011.P16196163881340620150

`∩[A023700(n+1), A043324(n+1)]`
-/

namespace A045011.P16196163881340620150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045011.P16196163881340620150

namespace A045011

/-- `∩[A023700(n+1), A043324(n+1)]` -/
def P16196163881340620150.Spec : Prop :=
  ∀ n, (P16196163881340620150.a n : ℤ) = A045011 (n + 1)

end A045011

/-! ## A045011.P10452534986514089071

`A357616(A044987(n+1))`
-/

namespace A045011.P10452534986514089071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044987 (n + 1)).toNat

end

end A045011.P10452534986514089071

namespace A045011

/-- `A357616(A044987(n+1))` -/
def P10452534986514089071.Spec : Prop :=
  ∀ n, P10452534986514089071.a n = A045011 (n + 1)

end A045011

/-! ## A045011.P7799635709370147558

`A357616(∩[A023693(n+1), A043324(n+1)])`
-/

namespace A045011.P7799635709370147558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043324 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045011.P7799635709370147558

namespace A045011

/-- `A357616(∩[A023693(n+1), A043324(n+1)])` -/
def P7799635709370147558.Spec : Prop :=
  ∀ n, P7799635709370147558.a n = A045011 (n + 1)

end A045011

/-!
# A045012: Numbers whose base-3 representation contains exactly four 0's and three 2's.

The programs for A045012, the canonical program `A045012.P13915242892822916730` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045012 has offset 1).

The definition of A045012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1975 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045012.P13915242892822916730

`∩[A023701(n+1), A043324(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045012

/-- `∩[A023701(n+1), A043324(n+1)]` -/
def P13915242892822916730.Spec : Prop :=
  ∀ n, (P13915242892822916730.a n : ℤ) = A045012 (n + 1)

theorem P13915242892822916730.correct : P13915242892822916730.Spec := by
  intro n
  simp only [A045012, Nat.add_sub_cancel]

end A045012

/-! ## A045012.P14053750891372798625

`A357616(A044988(n+1))`
-/

namespace A045012.P14053750891372798625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357616 (A044988 (n + 1)).toNat

end

end A045012.P14053750891372798625

namespace A045012

/-- `A357616(A044988(n+1))` -/
def P14053750891372798625.Spec : Prop :=
  ∀ n, P14053750891372798625.a n = A045012 (n + 1)

end A045012

/-! ## A045012.P12851470877752849905

`2*A119353(A045036(n+1))`
-/

namespace A045012.P12851470877752849905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119353 (A045036 (n + 1)).toNat

end

end A045012.P12851470877752849905

namespace A045012

/-- `2*A119353(A045036(n+1))` -/
def P12851470877752849905.Spec : Prop :=
  ∀ n, P12851470877752849905.a n = A045012 (n + 1)

end A045012

/-! ## A045012.P1358734046636586400

`2*A044988(A187829(n+1))`
-/

namespace A045012.P1358734046636586400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044988 (A187829 (n + 1)).toNat

end

end A045012.P1358734046636586400

namespace A045012

/-- `2*A044988(A187829(n+1))` -/
def P1358734046636586400.Spec : Prop :=
  ∀ n, P1358734046636586400.a n = A045012 (n + 1)

end A045012

/-! ## A045012.P12797949982997083740

`A044985(A187829(n+1)+6)`
-/

namespace A045012.P12797949982997083740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044985 (A187829 (n + 1) + 6).toNat

end

end A045012.P12797949982997083740

namespace A045012

/-- `A044985(A187829(n+1)+6)` -/
def P12797949982997083740.Spec : Prop :=
  ∀ n, P12797949982997083740.a n = A045012 (n + 1)

end A045012

/-!
# A045013: Numbers whose base-3 representation contains exactly four 0's and four 2's.

The programs for A045013, there is no canonical definition to state claims against.
-/

/-! ## A045013.P13398261550589707289

`A117968(A044989(n+1))`
-/

namespace A045013.P13398261550589707289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117968 (A044989 (n + 1)).toNat

end

end A045013.P13398261550589707289

/-! ## A045013.P3100516308541132991

`A003815(2*A044989(n+1))`
-/

namespace A045013.P3100516308541132991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (2 * A044989 (n + 1)).toNat

end

end A045013.P3100516308541132991

/-! ## A045013.P14111849649501758229

`A028310(2*A044989(n+1))`
-/

namespace A045013.P14111849649501758229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A044989 (n + 1)).toNat

end

end A045013.P14111849649501758229

/-! ## A045013.P7987416677023260396

`A059029(2*A044989(n+1))`
-/

namespace A045013.P7987416677023260396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (2 * A044989 (n + 1)).toNat

end

end A045013.P7987416677023260396

/-! ## A045013.P15729639518843810534

`A059812(2*A044989(n+1))`
-/

namespace A045013.P15729639518843810534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059812 (2 * A044989 (n + 1)).toNat

end

end A045013.P15729639518843810534

/-!
# A045014: Numbers whose base-4 representation contains no 0's and exactly one 1.

The programs for A045014, there is no canonical definition to state claims against.
-/

/-! ## A045014.P9582674941711969825

`∩[A023705(n+1), A023710(n+1)]`
-/

namespace A045014.P9582674941711969825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045014.P9582674941711969825

/-! ## A045014.P6175745983969178466

`eq[1, A292371(A319720(n))]`
-/

namespace A045014.P6175745983969178466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045014.P6175745983969178466

/-! ## A045014.P14675409995554595042

`eq[exp(A160380(n)), A160381(n)]`
-/

namespace A045014.P14675409995554595042
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160380 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045014.P14675409995554595042

/-! ## A045014.P8576978128937378576

`eq[A006322(A277872(n)), A160381(n)]`
-/

namespace A045014.P8576978128937378576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (A277872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045014.P8576978128937378576

/-! ## A045014.P11179877650346222768

`eq[A209229(A292371(n)), A277872(n)]`
-/

namespace A045014.P11179877650346222768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292371 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045014.P11179877650346222768

/-! ## A045014.P11606564365498631015

`eq[2, A338854(A284799(n))]`
-/

namespace A045014.P11606564365498631015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A284799 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045014.P11606564365498631015

/-! ## A045014.P18435156909805473485

`eq[2, A338854(A010078(n+1))]`
-/

namespace A045014.P18435156909805473485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045014.P18435156909805473485

/-! ## A045014.P11128690910502769950

`record[A057979(A008619(A045015(n+1)))]`
-/

namespace A045014.P11128690910502769950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A008619 (A045015 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045014.P11128690910502769950

/-! ## A045014.P14400336959204976633

`eq[1, A160380(A008574(n))*A160381(n)]`
-/

namespace A045014.P14400336959204976633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A008574 n).toNat * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045014.P14400336959204976633

/-! ## A045014.P3482528005318975258

`eq[A028310(n*A160380(n)), A160381(n)]`
-/

namespace A045014.P3482528005318975258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A160380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045014.P3482528005318975258

/-! ## A045014.P18398815234847763738

`eq[A035327(n*A160380(n)), A160381(n)]`
-/

namespace A045014.P18398815234847763738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 ((n : ℤ) * A160380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045014.P18398815234847763738

/-! ## A045014.P9992146357750315570

`eq[A123108(n*A160380(n)), A160381(n)]`
-/

namespace A045014.P9992146357750315570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((n : ℤ) * A160380 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045014.P9992146357750315570

/-!
# A045015: Numbers whose base-4 representation contains no 0's and exactly two 1's.

The programs for A045015, there is no canonical definition to state claims against.
-/

/-! ## A045015.P14792791045336302086

`∩[A023705(n+1), A023711(n+1)]`
-/

namespace A045015.P14792791045336302086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045015.P14792791045336302086

/-! ## A045015.P17962138009410505659

`eq[3, A292371(A319720(n))]`
-/

namespace A045015.P17962138009410505659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045015.P17962138009410505659

/-! ## A045015.P8662183643630157878

`eq[exp(A160380(n))+1, A160381(n)]`
-/

namespace A045015.P8662183643630157878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160380 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045015.P8662183643630157878

/-! ## A045015.P5606444860033857271

`eq[A160381(n), A166830(A277872(n))]`
-/

namespace A045015.P5606444860033857271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (A277872 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045015.P5606444860033857271

/-! ## A045015.P73331094280379338

`eq[4, A338854(A284799(n))]`
-/

namespace A045015.P73331094280379338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A284799 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045015.P73331094280379338

/-! ## A045015.P3005220685412791893

`record[A174571(A045020(n+2))]`
-/

namespace A045015.P3005220685412791893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045020 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045015.P3005220685412791893

/-! ## A045015.P14360871616468250040

`eq[4, A338854(A010078(n+1))]`
-/

namespace A045015.P14360871616468250040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045015.P14360871616468250040

/-!
# A045016: Numbers whose base-4 representation contains no 0's and exactly three 1's.

The programs for A045016, there is no canonical definition to state claims against.
-/

/-! ## A045016.P6240739166562203637

`∩[A023705(n+1), A023712(n+1)]`
-/

namespace A045016.P6240739166562203637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045016.P6240739166562203637

/-! ## A045016.P9733890984320994354

`eq[7, A292371(A319720(n))]`
-/

namespace A045016.P9733890984320994354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045016.P9733890984320994354

/-! ## A045016.P1246977955487900831

`eq[exp(A160380(n))+2, A160381(n)]`
-/

namespace A045016.P1246977955487900831
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160380 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045016.P1246977955487900831

/-! ## A045016.P62313158080376619

`eq[8, A338854(A284799(n))]`
-/

namespace A045016.P62313158080376619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A284799 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045016.P62313158080376619

/-! ## A045016.P8931845531470013604

`record[A174571(A045021(n+3))]`
-/

namespace A045016.P8931845531470013604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045021 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045016.P8931845531470013604

/-! ## A045016.P11906800239122610090

`eq[8, A338854(A010078(n+1))]`
-/

namespace A045016.P11906800239122610090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045016.P11906800239122610090

/-! ## A045016.P9993808033073994489

`record[A100727(A045017(n+1))]`
-/

namespace A045016.P9993808033073994489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 (A045017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045016.P9993808033073994489

/-!
# A045017: Numbers whose base-4 representation contains no 0's and exactly four 1's.

The programs for A045017, there is no canonical definition to state claims against.
-/

/-! ## A045017.P12409678466581506567

`∩[A023705(n+1), A043340(n+1)]`
-/

namespace A045017.P12409678466581506567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045017.P12409678466581506567

/-! ## A045017.P2150609215821828707

`∩[A023705(n+1), A329180(A043344(n+1))]`
-/

namespace A045017.P2150609215821828707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A043344 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045017.P2150609215821828707

/-!
# A045018: Numbers whose base-4 representation contains exactly one 0 and no 1's.

The programs for A045018, the canonical program `A045018.P11477163721360045438` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045018 has offset 1).

The definition of A045018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 643 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045018.P11477163721360045438

`A006015(A045066(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045018

/-- `A006015(A045066(n+1))` -/
def P11477163721360045438.Spec : Prop :=
  ∀ n, P11477163721360045438.a n = A045018 (n + 1)

theorem P11477163721360045438.correct : P11477163721360045438.Spec := by
  intro n
  simp only [A045018, Nat.add_sub_cancel]

end A045018

/-! ## A045018.P5004590301220377531

`A057300(A045042(n+1))`
-/

namespace A045018.P5004590301220377531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045042 (n + 1)).toNat

end

end A045018.P5004590301220377531

namespace A045018

/-- `A057300(A045042(n+1))` -/
def P5004590301220377531.Spec : Prop :=
  ∀ n, P5004590301220377531.a n = A045018 (n + 1)

end A045018

/-! ## A045018.P6114721469436781596

`record[A006015(A023706(n+1))]`
-/

namespace A045018.P6114721469436781596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A023706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045018.P6114721469436781596

namespace A045018

/-- `record[A006015(A023706(n+1))]` -/
def P6114721469436781596.Spec : Prop :=
  ∀ n, P6114721469436781596.a n = A045018 (n + 1)

end A045018

/-! ## A045018.P53354435069265412

`∩[A023706(n+1), A023709(n+1)]`
-/

namespace A045018.P53354435069265412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045018.P53354435069265412

namespace A045018

/-- `∩[A023706(n+1), A023709(n+1)]` -/
def P53354435069265412.Spec : Prop :=
  ∀ n, (P53354435069265412.a n : ℤ) = A045018 (n + 1)

end A045018

/-! ## A045018.P17943602146525144301

`A008585(A045066(n+1))-A045042(n+1)`
-/

namespace A045018.P17943602146525144301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045066 (n + 1)).toNat - A045042 (n + 1)

end

end A045018.P17943602146525144301

namespace A045018

/-- `A008585(A045066(n+1))-A045042(n+1)` -/
def P17943602146525144301.Spec : Prop :=
  ∀ n, P17943602146525144301.a n = A045018 (n + 1)

end A045018

/-! ## A045018.P5305655125749129244

`eq[1, A338854(A284799(n))-2]`
-/

namespace A045018.P5305655125749129244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A284799 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045018.P5305655125749129244

namespace A045018

/-- `eq[1, A338854(A284799(n))-2]` -/
def P5305655125749129244.Spec : Prop :=
  ∀ n, (P5305655125749129244.a n : ℤ) = A045018 (n + 1)

end A045018

/-!
# A045019: Numbers whose base-4 representation contains exactly one 0 and one 1.

The programs for A045019, there is no canonical definition to state claims against.
-/

/-! ## A045019.P18068494122832389272

`∩[A023710(n+1), A039002(n+1)]`
-/

namespace A045019.P18068494122832389272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P18068494122832389272

/-! ## A045019.P7030136071036836331

`∩[A023710(n+1), A039277(n+1)]`
-/

namespace A045019.P7030136071036836331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P7030136071036836331

/-! ## A045019.P3254261549593624795

`∩[A023706(n+1), A023710(n+1)]`
-/

namespace A045019.P3254261549593624795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P3254261549593624795

/-! ## A045019.P5005304273359509726

`∩[A023706(n+1), A039002(n+1)]`
-/

namespace A045019.P5005304273359509726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P5005304273359509726

/-! ## A045019.P3335802329757490599

`∩[A023706(n+1), A039277(n+1)]`
-/

namespace A045019.P3335802329757490599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P3335802329757490599

/-! ## A045019.P5056921952961348175

`∩[A023710(n+1), A043333(n+1)]`
-/

namespace A045019.P5056921952961348175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P5056921952961348175

/-! ## A045019.P14430221696626999255

`∩[A039002(n+1), A043333(n+1)]`
-/

namespace A045019.P14430221696626999255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P14430221696626999255

/-! ## A045019.P15696325707484515661

`∩[A039277(n+1), A043333(n+1)]`
-/

namespace A045019.P15696325707484515661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045019.P15696325707484515661

/-! ## A045019.P2218971011505894850

`eq[2, A292371(A319720(n))]`
-/

namespace A045019.P2218971011505894850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045019.P2218971011505894850

/-! ## A045019.P11637623727469353447

`eq[1, A160380(n)*A160381(n)]`
-/

namespace A045019.P11637623727469353447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045019.P11637623727469353447

/-! ## A045019.P17108791669426495860

`record[A174571(A045024(n+1))]`
-/

namespace A045019.P17108791669426495860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045019.P17108791669426495860

/-! ## A045019.P9927828049617644550

`record[A174571(A045020(n+1)-1)]`
-/

namespace A045019.P9927828049617644550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045020 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045019.P9927828049617644550

/-! ## A045019.P12156265312073160037

`record[A174571(xor(1, A045020(n+1)))]`
-/

namespace A045019.P12156265312073160037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (Int.xor 1 (A045020 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045019.P12156265312073160037

/-! ## A045019.P4654247830664964438

`eq[1, A160381(n)*A160381(A256294(n))]`
-/

namespace A045019.P4654247830664964438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n * A160381 (A256294 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045019.P4654247830664964438

/-!
# A045020: Numbers whose base-4 representation contains exactly one 0 and two 1's.

The programs for A045020, there is no canonical definition to state claims against.
-/

/-! ## A045020.P17222454623241188059

`∩[A023706(n+1), A023711(n+1)]`
-/

namespace A045020.P17222454623241188059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045020.P17222454623241188059

/-! ## A045020.P13693106439400357518

`∩[A023711(n+1), A043333(n+1)]`
-/

namespace A045020.P13693106439400357518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045020.P13693106439400357518

/-! ## A045020.P17193234822065108751

`eq[6, A292371(A319720(n))]`
-/

namespace A045020.P17193234822065108751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045020.P17193234822065108751

/-! ## A045020.P181182120320515162

`eq[2, A160380(n)²*A160381(n)]`
-/

namespace A045020.P181182120320515162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n ^ 2 * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045020.P181182120320515162

/-! ## A045020.P7635907329933035184

`record[A174571(A045025(n+2))]`
-/

namespace A045020.P7635907329933035184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045025 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045020.P7635907329933035184

/-! ## A045020.P7211192221391291082

`record[A174571(A045021(n+1)-1)]`
-/

namespace A045020.P7211192221391291082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045021 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045020.P7211192221391291082

/-! ## A045020.P14272665648767687297

`record[A174571(xor(1, A045021(n+1)))]`
-/

namespace A045020.P14272665648767687297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (Int.xor 1 (A045021 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045020.P14272665648767687297

/-! ## A045020.P14457695794446823934

`record[A025480(A057979(A045021(n+1)))]`
-/

namespace A045020.P14457695794446823934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A057979 (A045021 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045020.P14457695794446823934

/-!
# A045021: Numbers whose base-4 representation contains exactly one 0 and three 1's.

The programs for A045021, there is no canonical definition to state claims against.
-/

/-! ## A045021.P15385244494242048054

`∩[A023706(n+1), A023712(n+1)]`
-/

namespace A045021.P15385244494242048054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045021.P15385244494242048054

/-! ## A045021.P4182314858980081358

`∩[A023712(n+1), A043333(n+1)]`
-/

namespace A045021.P4182314858980081358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045021.P4182314858980081358

/-! ## A045021.P18338638739212394739

`eq[14, A292371(A319720(n))]`
-/

namespace A045021.P18338638739212394739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045021.P18338638739212394739

/-! ## A045021.P11578090874394879985

`record[A174571(A045022(n+1)-1)]`
-/

namespace A045021.P11578090874394879985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045022 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045021.P11578090874394879985

/-! ## A045021.P7846792600505251464

`record[A057979(A003602(A045022(n+1)))]`
-/

namespace A045021.P7846792600505251464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A003602 (A045022 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045021.P7846792600505251464

/-!
# A045022: Numbers whose base-4 representation contains exactly one 0 and four 1's.

The programs for A045022, there is no canonical definition to state claims against.
-/

/-! ## A045022.P16311917145959553084

`∩[A043333(n+1), A043340(n+1)]`
-/

namespace A045022.P16311917145959553084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045022.P16311917145959553084

/-!
# A045023: Numbers whose base-4 representation contains exactly two 0's and no 1's.

The programs for A045023, the canonical program `A045023.P5595946791580993158` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045023 has offset 1).

The definition of A045023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 734 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045023.P5595946791580993158

`∩[A023707(n+1), A023709(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045023

/-- `∩[A023707(n+1), A023709(n+1)]` -/
def P5595946791580993158.Spec : Prop :=
  ∀ n, (P5595946791580993158.a n : ℤ) = A045023 (n + 1)

theorem P5595946791580993158.correct : P5595946791580993158.Spec := by
  intro n
  simp only [A045023, Nat.add_sub_cancel]

end A045023

/-! ## A045023.P2855731457930775660

`A006015(A045071(n+1))`
-/

namespace A045023.P2855731457930775660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045071 (n + 1)).toNat

end

end A045023.P2855731457930775660

namespace A045023

/-- `A006015(A045071(n+1))` -/
def P2855731457930775660.Spec : Prop :=
  ∀ n, P2855731457930775660.a n = A045023 (n + 1)

end A045023

/-! ## A045023.P8122969074392442301

`A057300(A045047(n+1))`
-/

namespace A045023.P8122969074392442301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045047 (n + 1)).toNat

end

end A045023.P8122969074392442301

namespace A045023

/-- `A057300(A045047(n+1))` -/
def P8122969074392442301.Spec : Prop :=
  ∀ n, P8122969074392442301.a n = A045023 (n + 1)

end A045023

/-! ## A045023.P4835348155484455912

`A063694(A045071(n+1))+A045047(n+1)`
-/

namespace A045023.P4835348155484455912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A045071 (n + 1)).toNat + A045047 (n + 1)

end

end A045023.P4835348155484455912

namespace A045023

/-- `A063694(A045071(n+1))+A045047(n+1)` -/
def P4835348155484455912.Spec : Prop :=
  ∀ n, P4835348155484455912.a n = A045023 (n + 1)

end A045023

/-! ## A045023.P926590953518459895

`A063694(A045047(n+1))+A023717(A043322(n+1))`
-/

namespace A045023.P926590953518459895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A045047 (n + 1)).toNat + A023717 (A043322 (n + 1)).toNat

end

end A045023.P926590953518459895

namespace A045023

/-- `A063694(A045047(n+1))+A023717(A043322(n+1))` -/
def P926590953518459895.Spec : Prop :=
  ∀ n, P926590953518459895.a n = A045023 (n + 1)

end A045023

/-! ## A045023.P3117123525574402867

`eq[exp(A160381(n))+1, A160380(n)]`
-/

namespace A045023.P3117123525574402867
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045023.P3117123525574402867

namespace A045023

/-- `eq[exp(A160381(n))+1, A160380(n)]` -/
def P3117123525574402867.Spec : Prop :=
  ∀ n, (P3117123525574402867.a n : ℤ) = A045023 (n + 1)

end A045023

/-! ## A045023.P9579800869078621871

`A008486(A045071(n+1))-record[-A246425(A045052(n+1))]`
-/

namespace A045023.P9579800869078621871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (A045052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045071 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045023.P9579800869078621871

namespace A045023

/-- `A008486(A045071(n+1))-record[-A246425(A045052(n+1))]` -/
def P9579800869078621871.Spec : Prop :=
  ∀ n, P9579800869078621871.a n = A045023 (n + 1)

end A045023

/-! ## A045023.P15899335899528203637

`eq[9, A338854(A284799(n))]`
-/

namespace A045023.P15899335899528203637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A284799 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045023.P15899335899528203637

namespace A045023

/-- `eq[9, A338854(A284799(n))]` -/
def P15899335899528203637.Spec : Prop :=
  ∀ n, (P15899335899528203637.a n : ℤ) = A045023 (n + 1)

end A045023

/-! ## A045023.P2737965341480564866

`record[A174571(A045028(n+1))]`
-/

namespace A045023.P2737965341480564866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045023.P2737965341480564866

namespace A045023

/-- `record[A174571(A045028(n+1))]` -/
def P2737965341480564866.Spec : Prop :=
  ∀ n, P2737965341480564866.a n = A045023 (n + 1)

end A045023

/-! ## A045023.P14194441267195517555

`eq[9, A338854(A010078(n+1))]`
-/

namespace A045023.P14194441267195517555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A010078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045023.P14194441267195517555

namespace A045023

/-- `eq[9, A338854(A010078(n+1))]` -/
def P14194441267195517555.Spec : Prop :=
  ∀ n, (P14194441267195517555.a n : ℤ) = A045023 (n + 1)

end A045023

/-!
# A045024: Numbers whose base-4 representation contains exactly two 0's and one 1.

The programs for A045024, there is no canonical definition to state claims against.
-/

/-! ## A045024.P844426884358783869

`∩[A023707(n+1), A023710(n+1)]`
-/

namespace A045024.P844426884358783869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045024.P844426884358783869

/-! ## A045024.P534341189348483972

`eq[4, A292371(A319720(n))]`
-/

namespace A045024.P534341189348483972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045024.P534341189348483972

/-! ## A045024.P3794592837168195261

`eq[2, A160380(n)^A160381(n)]`
-/

namespace A045024.P3794592837168195261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160380 n : ℚ) ^ (A160381 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045024.P3794592837168195261

/-! ## A045024.P2254138578225306796

`∩[eq[1, A160381(n)], A023707(n+1)]`
-/

namespace A045024.P2254138578225306796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A045024.P2254138578225306796

/-! ## A045024.P11631820181139803738

`record[A174571(A045025(n+1)-1)]`
-/

namespace A045024.P11631820181139803738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045025 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045024.P11631820181139803738

/-!
# A045025: Numbers whose base-4 representation contains exactly two 0's and two 1's.

The programs for A045025, there is no canonical definition to state claims against.
-/

/-! ## A045025.P18403152761869041068

`∩[A023707(n+1), A039002(n+1)]`
-/

namespace A045025.P18403152761869041068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045025.P18403152761869041068

/-! ## A045025.P6695971258334054084

`∩[A023707(n+1), A039277(n+1)]`
-/

namespace A045025.P6695971258334054084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045025.P6695971258334054084

/-! ## A045025.P14435153674195389655

`∩[A023707(n+1), A023711(n+1)]`
-/

namespace A045025.P14435153674195389655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045025.P14435153674195389655

/-! ## A045025.P1936803253802782951

`∩[A023711(n+1), A039002(n+1)]`
-/

namespace A045025.P1936803253802782951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045025.P1936803253802782951

/-! ## A045025.P4285036125633721015

`∩[A023711(n+1), A039277(n+1)]`
-/

namespace A045025.P4285036125633721015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045025.P4285036125633721015

/-! ## A045025.P1053089086723899326

`filter[A039277(n+1), A374646(#)]`
-/

namespace A045025.P1053089086723899326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374646 (f1 j).toNat = 1) n)

end

end A045025.P1053089086723899326

/-! ## A045025.P9787168478969680566

`record[A174571(A045026(n+1)-1)]`
-/

namespace A045025.P9787168478969680566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045026 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045025.P9787168478969680566

/-! ## A045025.P7067480869460306024

`record[A057979(A140472(A045026(n+1)))]`
-/

namespace A045025.P7067480869460306024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A140472 (A045026 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045025.P7067480869460306024

/-!
# A045026: Numbers whose base-4 representation contains exactly two 0's and three 1's.

The programs for A045026, there is no canonical definition to state claims against.
-/

/-! ## A045026.P2168344584649575597

`∩[A023707(n+1), A023712(n+1)]`
-/

namespace A045026.P2168344584649575597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045026.P2168344584649575597

/-! ## A045026.P9735207403690047887

`record[A174571(A045031(n+3))]`
-/

namespace A045026.P9735207403690047887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045031 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045026.P9735207403690047887

/-!
# A045027: Numbers whose base-4 representation contains exactly two 0's and four 1's.

The programs for A045027, there is no canonical definition to state claims against.
-/

/-! ## A045027.P9951567989537831950

`A329101(A045051(n+1))`
-/

namespace A045027.P9951567989537831950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A045051 (n + 1)).toNat

end

end A045027.P9951567989537831950

/-! ## A045027.P7152549027120001830

`A000695(eq[60, A073138(n)])`
-/

namespace A045027.P7152549027120001830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045027.P7152549027120001830

/-! ## A045027.P4470648418203835240

`A008615(3*A045051(n+1))`
-/

namespace A045027.P4470648418203835240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A045051 (n + 1)).toNat

end

end A045027.P4470648418203835240

/-! ## A045027.P16560339727255986266

`A106619(3*A045051(n+1))`
-/

namespace A045027.P16560339727255986266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106619 (3 * A045051 (n + 1)).toNat

end

end A045027.P16560339727255986266

/-! ## A045027.P12073522929520927515

`A152467(3*A045051(n+1))`
-/

namespace A045027.P12073522929520927515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (3 * A045051 (n + 1)).toNat

end

end A045027.P12073522929520927515

/-!
# A045028: Numbers whose base-4 representation contains exactly three 0's and no 1's.

The programs for A045028, the canonical program `A045028.P3838657998605660470` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045028 has offset 1).

The definition of A045028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045028.P3838657998605660470

`∩[A023708(n+1), A023709(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045028

/-- `∩[A023708(n+1), A023709(n+1)]` -/
def P3838657998605660470.Spec : Prop :=
  ∀ n, (P3838657998605660470.a n : ℤ) = A045028 (n + 1)

theorem P3838657998605660470.correct : P3838657998605660470.Spec := by
  intro n
  simp only [A045028, Nat.add_sub_cancel]

end A045028

/-! ## A045028.P2162496418695167317

`A006015(A045076(n+1))`
-/

namespace A045028.P2162496418695167317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045076 (n + 1)).toNat

end

end A045028.P2162496418695167317

namespace A045028

/-- `A006015(A045076(n+1))` -/
def P2162496418695167317.Spec : Prop :=
  ∀ n, P2162496418695167317.a n = A045028 (n + 1)

end A045028

/-! ## A045028.P8311265468597875321

`A057300(A045052(n+1))`
-/

namespace A045028.P8311265468597875321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045052 (n + 1)).toNat

end

end A045028.P8311265468597875321

namespace A045028

/-- `A057300(A045052(n+1))` -/
def P8311265468597875321.Spec : Prop :=
  ∀ n, P8311265468597875321.a n = A045028 (n + 1)

end A045028

/-! ## A045028.P5341494275786565673

`record[A057300(A023708(n+1))]`
-/

namespace A045028.P5341494275786565673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A023708 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045028.P5341494275786565673

namespace A045028

/-- `record[A057300(A023708(n+1))]` -/
def P5341494275786565673.Spec : Prop :=
  ∀ n, P5341494275786565673.a n = A045028 (n + 1)

end A045028

/-! ## A045028.P4764890900582183535

`A008486(A045076(n+1))-A045052(n+1)`
-/

namespace A045028.P4764890900582183535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045076 (n + 1)).toNat - A045052 (n + 1)

end

end A045028.P4764890900582183535

namespace A045028

/-- `A008486(A045076(n+1))-A045052(n+1)` -/
def P4764890900582183535.Spec : Prop :=
  ∀ n, P4764890900582183535.a n = A045028 (n + 1)

end A045028

/-! ## A045028.P15342366053381945723

`record[A174571(A045033(n+1))]`
-/

namespace A045028.P15342366053381945723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045028.P15342366053381945723

namespace A045028

/-- `record[A174571(A045033(n+1))]` -/
def P15342366053381945723.Spec : Prop :=
  ∀ n, P15342366053381945723.a n = A045028 (n + 1)

end A045028

/-!
# A045029: Numbers whose base-4 representation contains exactly three 0's and one 1.

The programs for A045029, there is no canonical definition to state claims against.
-/

/-! ## A045029.P11329580478478810861

`∩[A023708(n+1), A023710(n+1)]`
-/

namespace A045029.P11329580478478810861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045029.P11329580478478810861

/-!
# A045030: Numbers whose base-4 representation contains exactly three 0's and two 1's.

The programs for A045030, there is no canonical definition to state claims against.
-/

/-! ## A045030.P16188667597819718500

`∩[A023708(n+1), A023711(n+1)]`
-/

namespace A045030.P16188667597819718500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045030.P16188667597819718500

/-! ## A045030.P7041642836820807587

`record[A174571(A045031(n+1)-1)]`
-/

namespace A045030.P7041642836820807587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045031 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045030.P7041642836820807587

/-! ## A045030.P3202422781783840011

`record[A025480(A106617(A045031(n+1)))]`
-/

namespace A045030.P3202422781783840011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A106617 (A045031 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045030.P3202422781783840011

/-!
# A045031: Numbers whose base-4 representation contains exactly three 0's and three 1's.

The programs for A045031, there is no canonical definition to state claims against.
-/

/-! ## A045031.P313827275436946166

`∩[A023708(n+1), A023712(n+1)]`
-/

namespace A045031.P313827275436946166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023712 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045031.P313827275436946166

/-! ## A045031.P2833569889797239281

`A119353(A045172(n+1))`
-/

namespace A045031.P2833569889797239281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A045172 (n + 1)).toNat

end

end A045031.P2833569889797239281

/-! ## A045031.P7919319004973768826

`A329101(A045055(n+1))`
-/

namespace A045031.P7919319004973768826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A045055 (n + 1)).toNat

end

end A045031.P7919319004973768826

/-! ## A045031.P8604891720468504149

`A000695(eq[35, A073137(n)])`
-/

namespace A045031.P8604891720468504149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045031.P8604891720468504149

/-! ## A045031.P228007730489630047

`A000695(eq[56, A073138(n)])`
-/

namespace A045031.P228007730489630047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  56

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045031.P228007730489630047

/-!
# A045032: Numbers whose base-4 representation contains exactly three 0's and four 1's.

The programs for A045032, there is no canonical definition to state claims against.
-/

/-! ## A045032.P13936435889507900819

`A004468(A045056(n+1))`
-/

namespace A045032.P13936435889507900819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045056 (n + 1)).toNat

end

end A045032.P13936435889507900819

/-! ## A045032.P17555895915154273176

`A006015(A045080(n+1))`
-/

namespace A045032.P17555895915154273176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045080 (n + 1)).toNat

end

end A045032.P17555895915154273176

/-! ## A045032.P14610591699432967395

`A184615(A045056(n+1)/2)`
-/

namespace A045032.P14610591699432967395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (SequenceMachineLib.roundAway ((A045056 (n + 1) : ℚ) / 2)).toNat

end

end A045032.P14610591699432967395

/-! ## A045032.P5258752675431187205

`∩[A031464(n+1), A038472(n+1)]`
-/

namespace A045032.P5258752675431187205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045032.P5258752675431187205

/-! ## A045032.P2865810259490667627

`∩[A038472(n+1), A045052(n+1)]`
-/

namespace A045032.P2865810259490667627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045032.P2865810259490667627

/-!
# A045033: Numbers whose base-4 representation contains exactly four 0's and no 1's.

The programs for A045033, the canonical program `A045033.P13537132083446231086` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045033 has offset 1).

The definition of A045033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045033.P13537132083446231086

`∩[A023709(n+1), A043336(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045033

/-- `∩[A023709(n+1), A043336(n+1)]` -/
def P13537132083446231086.Spec : Prop :=
  ∀ n, (P13537132083446231086.a n : ℤ) = A045033 (n + 1)

theorem P13537132083446231086.correct : P13537132083446231086.Spec := by
  intro n
  simp only [A045033, Nat.add_sub_cancel]

end A045033

/-! ## A045033.P3993999984730364374

`A006015(A045081(n+1))`
-/

namespace A045033.P3993999984730364374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045081 (n + 1)).toNat

end

end A045033.P3993999984730364374

namespace A045033

/-- `A006015(A045081(n+1))` -/
def P3993999984730364374.Spec : Prop :=
  ∀ n, P3993999984730364374.a n = A045033 (n + 1)

end A045033

/-! ## A045033.P14372819577132571066

`A057300(A045057(n+1))`
-/

namespace A045033.P14372819577132571066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045057 (n + 1)).toNat

end

end A045033.P14372819577132571066

namespace A045033

/-- `A057300(A045057(n+1))` -/
def P14372819577132571066.Spec : Prop :=
  ∀ n, P14372819577132571066.a n = A045033 (n + 1)

end A045033

/-! ## A045033.P8976879964968086244

`record[A006015(A043336(n+1))]`
-/

namespace A045033.P8976879964968086244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A043336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045033.P8976879964968086244

namespace A045033

/-- `record[A006015(A043336(n+1))]` -/
def P8976879964968086244.Spec : Prop :=
  ∀ n, P8976879964968086244.a n = A045033 (n + 1)

end A045033

/-! ## A045033.P5885451569362774169

`xor(A045081(n+1), A048647(A045057(n+1)))`
-/

namespace A045033.P5885451569362774169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045081 (n + 1)) (A048647 (A045057 (n + 1)).toNat)

end

end A045033.P5885451569362774169

namespace A045033

/-- `xor(A045081(n+1), A048647(A045057(n+1)))` -/
def P5885451569362774169.Spec : Prop :=
  ∀ n, P5885451569362774169.a n = A045033 (n + 1)

end A045033

/-!
# A045034: Numbers whose base-4 representation contains exactly four 0's and one 1.

The programs for A045034, there is no canonical definition to state claims against.
-/

/-! ## A045034.P8823111914399185339

`record[A025480(A093178(A045035(n+1)))]`
-/

namespace A045034.P8823111914399185339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A093178 (A045035 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045034.P8823111914399185339

/-!
# A045035: Numbers whose base-4 representation contains exactly four 0's and two 1's.

The programs for A045035, there is no canonical definition to state claims against.
-/

/-! ## A045035.P12488301900642622551

`A329101(A045059(n+1))`
-/

namespace A045035.P12488301900642622551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329101 (A045059 (n + 1)).toNat

end

end A045035.P12488301900642622551

/-!
# A045036: Numbers whose base-4 representation contains exactly four 0's and three 1's.

The programs for A045036, there is no canonical definition to state claims against.
-/

/-! ## A045036.P16493285688288898498

`A004468(A045060(n+1))`
-/

namespace A045036.P16493285688288898498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045060 (n + 1)).toNat

end

end A045036.P16493285688288898498

/-! ## A045036.P6451106239752086416

`A006015(A045084(n+1))`
-/

namespace A045036.P6451106239752086416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045084 (n + 1)).toNat

end

end A045036.P6451106239752086416

/-! ## A045036.P4953767462636853455

`A000695(eq[34, A165265(n)])`
-/

namespace A045036.P4953767462636853455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045036.P4953767462636853455

/-! ## A045036.P1552867784381121638

`A184615(A045060(n+1)/2)`
-/

namespace A045036.P1552867784381121638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184615 (SequenceMachineLib.roundAway ((A045060 (n + 1) : ℚ) / 2)).toNat

end

end A045036.P1552867784381121638

/-! ## A045036.P10165511159443535798

`A045060(A187829(n+1))/2`
-/

namespace A045036.P10165511159443535798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045060 (A187829 (n + 1)).toNat : ℚ) / 2

end

end A045036.P10165511159443535798

/-!
# A045037: Numbers whose base-4 representation contains exactly four 0's and four 1's.

The programs for A045037, there is no canonical definition to state claims against.
-/

/-! ## A045037.P6224252305278454709

`A052125(A045085(n+1))`
-/

namespace A045037.P6224252305278454709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A045085 (n + 1)).toNat

end

end A045037.P6224252305278454709

/-! ## A045037.P828131020588668582

`A090331(A045061(n+1))`
-/

namespace A045037.P828131020588668582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A045061 (n + 1)).toNat

end

end A045037.P828131020588668582

/-! ## A045037.P13887765188280735473

`A000695(eq[44, A165265(n)])`
-/

namespace A045037.P13887765188280735473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045037.P13887765188280735473

/-! ## A045037.P9176275537192946091

`A322809(A045061(n+1)-4)`
-/

namespace A045037.P9176275537192946091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A045061 (n + 1) - 4).toNat

end

end A045037.P9176275537192946091

/-! ## A045037.P7825727127791600366

`A318516(lcm(2, A045061(n+1)))`
-/

namespace A045037.P7825727127791600366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318516 (Int.lcm 2 (A045061 (n + 1)))

end

end A045037.P7825727127791600366

/-!
# A045038: Numbers whose base-4 representation contains no 0's and exactly one 2.

The programs for A045038, the canonical program `A045038.P652347557463449643` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045038 has offset 1).

The definition of A045038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045038.P652347557463449643

`∩[A023705(n+1), A023714(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045038

/-- `∩[A023705(n+1), A023714(n+1)]` -/
def P652347557463449643.Spec : Prop :=
  ∀ n, (P652347557463449643.a n : ℤ) = A045038 (n + 1)

theorem P652347557463449643.correct : P652347557463449643.Spec := by
  intro n
  simp only [A045038, Nat.add_sub_cancel]

end A045038

/-! ## A045038.P9240765079267849719

`eq[2, A030102(A309954(n))]`
-/

namespace A045038.P9240765079267849719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045038.P9240765079267849719

namespace A045038

/-- `eq[2, A030102(A309954(n))]` -/
def P9240765079267849719.Spec : Prop :=
  ∀ n, (P9240765079267849719.a n : ℤ) = A045038 (n + 1)

end A045038

/-! ## A045038.P8212901719427048722

`eq[2, A136480(2*A309954(n))]`
-/

namespace A045038.P8212901719427048722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (2 * A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045038.P8212901719427048722

namespace A045038

/-- `eq[2, A136480(2*A309954(n))]` -/
def P8212901719427048722.Spec : Prop :=
  ∀ n, (P8212901719427048722.a n : ℤ) = A045038 (n + 1)

end A045038

/-! ## A045038.P3949802418448951753

`eq[A006322(A277872(n)), A160382(n)]`
-/

namespace A045038.P3949802418448951753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (A277872 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045038.P3949802418448951753

namespace A045038

/-- `eq[A006322(A277872(n)), A160382(n)]` -/
def P3949802418448951753.Spec : Prop :=
  ∀ n, (P3949802418448951753.a n : ℤ) = A045038 (n + 1)

end A045038

/-! ## A045038.P714312936611381948

`eq[A209229(A292372(n)), A277872(n)]`
-/

namespace A045038.P714312936611381948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292372 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045038.P714312936611381948

namespace A045038

/-- `eq[A209229(A292372(n)), A277872(n)]` -/
def P714312936611381948.Spec : Prop :=
  ∀ n, (P714312936611381948.a n : ℤ) = A045038 (n + 1)

end A045038

/-! ## A045038.P3983424510283683770

`record[A174571(A045039(n+1)-2)]`
-/

namespace A045038.P3983424510283683770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045039 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045038.P3983424510283683770

namespace A045038

/-- `record[A174571(A045039(n+1)-2)]` -/
def P3983424510283683770.Spec : Prop :=
  ∀ n, P3983424510283683770.a n = A045038 (n + 1)

end A045038

/-! ## A045038.P15513322673476392026

`record[A174571(xor(2, A045039(n+1)))]`
-/

namespace A045038.P15513322673476392026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (Int.xor 2 (A045039 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045038.P15513322673476392026

namespace A045038

/-- `record[A174571(xor(2, A045039(n+1)))]` -/
def P15513322673476392026.Spec : Prop :=
  ∀ n, P15513322673476392026.a n = A045038 (n + 1)

end A045038

/-! ## A045038.P3474314021587327746

`eq[4, A053830(A309954(n)²)]`
-/

namespace A045038.P3474314021587327746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A309954 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045038.P3474314021587327746

namespace A045038

/-- `eq[4, A053830(A309954(n)²)]` -/
def P3474314021587327746.Spec : Prop :=
  ∀ n, (P3474314021587327746.a n : ℤ) = A045038 (n + 1)

end A045038

/-! ## A045038.P16196462104754815713

`A004526(record[A025480(A045039(n+1))])`
-/

namespace A045038.P16196462104754815713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045039 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045038.P16196462104754815713

namespace A045038

/-- `A004526(record[A025480(A045039(n+1))])` -/
def P16196462104754815713.Spec : Prop :=
  ∀ n, P16196462104754815713.a n = A045038 (n + 1)

end A045038

/-! ## A045038.P886102045021714596

`eq[2, A136480(A309954(n)²)]`
-/

namespace A045038.P886102045021714596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A309954 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045038.P886102045021714596

namespace A045038

/-- `eq[2, A136480(A309954(n)²)]` -/
def P886102045021714596.Spec : Prop :=
  ∀ n, (P886102045021714596.a n : ℤ) = A045038 (n + 1)

end A045038

/-!
# A045039: Numbers whose base-4 representation contains no 0's and exactly two 2's.

The programs for A045039, the canonical program `A045039.P3937333405223488659` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045039 has offset 1).

The definition of A045039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1615 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045039.P3937333405223488659

`∩[A023705(n+1), A023715(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045039

/-- `∩[A023705(n+1), A023715(n+1)]` -/
def P3937333405223488659.Spec : Prop :=
  ∀ n, (P3937333405223488659.a n : ℤ) = A045039 (n + 1)

theorem P3937333405223488659.correct : P3937333405223488659.Spec := by
  intro n
  simp only [A045039, Nat.add_sub_cancel]

end A045039

/-! ## A045039.P415586741724308253

`record[floor(A052125(A045040(n+1))/2)]`
-/

namespace A045039.P415586741724308253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052125 (A045040 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045039.P415586741724308253

namespace A045039

/-- `record[floor(A052125(A045040(n+1))/2)]` -/
def P415586741724308253.Spec : Prop :=
  ∀ n, P415586741724308253.a n = A045039 (n + 1)

end A045039

/-! ## A045039.P11718187178638156561

`eq[4, A030102(A309954(n))]`
-/

namespace A045039.P11718187178638156561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045039.P11718187178638156561

namespace A045039

/-- `eq[4, A030102(A309954(n))]` -/
def P11718187178638156561.Spec : Prop :=
  ∀ n, (P11718187178638156561.a n : ℤ) = A045039 (n + 1)

end A045039

/-! ## A045039.P11579775940906407294

`A004526(record[A052125(A045040(n+1))])`
-/

namespace A045039.P11579775940906407294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A045040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045039.P11579775940906407294

namespace A045039

/-- `A004526(record[A052125(A045040(n+1))])` -/
def P11579775940906407294.Spec : Prop :=
  ∀ n, P11579775940906407294.a n = A045039 (n + 1)

end A045039

/-! ## A045039.P18175170135950283965

`A028242(record[A052125(A045040(n+1))])`
-/

namespace A045039.P18175170135950283965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052125 (A045040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045039.P18175170135950283965

namespace A045039

/-- `A028242(record[A052125(A045040(n+1))])` -/
def P18175170135950283965.Spec : Prop :=
  ∀ n, P18175170135950283965.a n = A045039 (n + 1)

end A045039

/-!
# A045040: Numbers whose base-4 representation contains no 0's and exactly three 2's.

The programs for A045040, there is no canonical definition to state claims against.
-/

/-! ## A045040.P10339178981721382261

`∩[A023705(n+1), A023716(n+1)]`
-/

namespace A045040.P10339178981721382261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045040.P10339178981721382261

/-! ## A045040.P4899355406476864623

`record[floor(A273943(A045041(n+1))/2)]`
-/

namespace A045040.P4899355406476864623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A273943 (A045041 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045040.P4899355406476864623

/-! ## A045040.P3890824678659581809

`eq[3, A136480(A309954(n))]`
-/

namespace A045040.P3890824678659581809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045040.P3890824678659581809

/-! ## A045040.P9574342966875187772

`record[A174571(A045041(n+1)-2)]`
-/

namespace A045040.P9574342966875187772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045041 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045040.P9574342966875187772

/-! ## A045040.P15312730945886384864

`A004526(record[A273943(A045041(n+1))])`
-/

namespace A045040.P15312730945886384864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A045041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045040.P15312730945886384864

/-! ## A045040.P6359697351540713873

`A004526(record[A078898(A045041(n+1))])`
-/

namespace A045040.P6359697351540713873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A045041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045040.P6359697351540713873

/-! ## A045040.P15037696872761938522

`A057979(record[A028234(A045041(n+1))])`
-/

namespace A045040.P15037696872761938522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A045041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045040.P15037696872761938522

/-! ## A045040.P10610910970282027140

`A123108(record[A028234(A045041(n+1))])`
-/

namespace A045040.P10610910970282027140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A045041 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045040.P10610910970282027140

/-!
# A045041: Numbers whose base-4 representation contains no 0's and exactly four 2's.

The programs for A045041, there is no canonical definition to state claims against.
-/

/-! ## A045041.P18126755067304847415

`∩[A023705(n+1), A043344(n+1)]`
-/

namespace A045041.P18126755067304847415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045041.P18126755067304847415

/-! ## A045041.P8063871446120177692

`eq[4, A136480(A309954(n))]`
-/

namespace A045041.P8063871446120177692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045041.P8063871446120177692

/-!
# A045042: Numbers whose base-4 representation contains exactly one 0 and no 2's.

The programs for A045042, the canonical program `A045042.P5036496588180730293` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045042 has offset 1).

The definition of A045042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045042.P5036496588180730293

`∩[A023706(n+1), A023713(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045042

/-- `∩[A023706(n+1), A023713(n+1)]` -/
def P5036496588180730293.Spec : Prop :=
  ∀ n, (P5036496588180730293.a n : ℤ) = A045042 (n + 1)

theorem P5036496588180730293.correct : P5036496588180730293.Spec := by
  intro n
  simp only [A045042, Nat.add_sub_cancel]

end A045042

/-! ## A045042.P4848566869372074337

`A057300(A045018(n+1))`
-/

namespace A045042.P4848566869372074337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045018 (n + 1)).toNat

end

end A045042.P4848566869372074337

namespace A045042

/-- `A057300(A045018(n+1))` -/
def P4848566869372074337.Spec : Prop :=
  ∀ n, P4848566869372074337.a n = A045042 (n + 1)

end A045042

/-! ## A045042.P14387134271642317570

`A163241(A045066(n+1))`
-/

namespace A045042.P14387134271642317570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045066 (n + 1)).toNat

end

end A045042.P14387134271642317570

namespace A045042

/-- `A163241(A045066(n+1))` -/
def P14387134271642317570.Spec : Prop :=
  ∀ n, P14387134271642317570.a n = A045042 (n + 1)

end A045042

/-! ## A045042.P6379712515417816957

`record[A163241(A023706(n+1))]`
-/

namespace A045042.P6379712515417816957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A023706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045042.P6379712515417816957

namespace A045042

/-- `record[A163241(A023706(n+1))]` -/
def P6379712515417816957.Spec : Prop :=
  ∀ n, P6379712515417816957.a n = A045042 (n + 1)

end A045042

/-! ## A045042.P17152681050205985859

`A008585(A045066(n+1))-A045018(n+1)`
-/

namespace A045042.P17152681050205985859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A045066 (n + 1)).toNat - A045018 (n + 1)

end

end A045042.P17152681050205985859

namespace A045042

/-- `A008585(A045066(n+1))-A045018(n+1)` -/
def P17152681050205985859.Spec : Prop :=
  ∀ n, P17152681050205985859.a n = A045042 (n + 1)

end A045042

/-! ## A045042.P17345799610684561356

`eq[n, n*A038570(A319720(n))]`
-/

namespace A045042.P17345799610684561356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038570 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045042.P17345799610684561356

namespace A045042

/-- `eq[n, n*A038570(A319720(n))]` -/
def P17345799610684561356.Spec : Prop :=
  ∀ n, (P17345799610684561356.a n : ℤ) = A045042 (n + 1)

end A045042

/-!
# A045043: Numbers whose base-4 representation contains exactly one 0 and one 2.

The programs for A045043, the canonical program `A045043.P7689654534827955149` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045043 has offset 1).

The definition of A045043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2708 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045043.P4482106794622171428

`∩[A023714(n+1), A039003(n+1)]`
-/

namespace A045043.P4482106794622171428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P4482106794622171428

namespace A045043

/-- `∩[A023714(n+1), A039003(n+1)]` -/
def P4482106794622171428.Spec : Prop :=
  ∀ n, (P4482106794622171428.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P3696387943775573519

`∩[A023714(n+1), A039278(n+1)]`
-/

namespace A045043.P3696387943775573519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P3696387943775573519

namespace A045043

/-- `∩[A023714(n+1), A039278(n+1)]` -/
def P3696387943775573519.Spec : Prop :=
  ∀ n, (P3696387943775573519.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P7689654534827955149

`∩[A023714(n+1), A043333(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045043

/-- `∩[A023714(n+1), A043333(n+1)]` -/
def P7689654534827955149.Spec : Prop :=
  ∀ n, (P7689654534827955149.a n : ℤ) = A045043 (n + 1)

theorem P7689654534827955149.correct : P7689654534827955149.Spec := by
  intro n
  simp only [A045043, Nat.add_sub_cancel]

end A045043

/-! ## A045043.P14387885719100100918

`∩[A039003(n+1), A043333(n+1)]`
-/

namespace A045043.P14387885719100100918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P14387885719100100918

namespace A045043

/-- `∩[A039003(n+1), A043333(n+1)]` -/
def P14387885719100100918.Spec : Prop :=
  ∀ n, (P14387885719100100918.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P15592170478267680075

`∩[A039278(n+1), A043333(n+1)]`
-/

namespace A045043.P15592170478267680075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P15592170478267680075

namespace A045043

/-- `∩[A039278(n+1), A043333(n+1)]` -/
def P15592170478267680075.Spec : Prop :=
  ∀ n, (P15592170478267680075.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P7009319050266735597

`∩[A023706(n+1), A023714(n+1)]`
-/

namespace A045043.P7009319050266735597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P7009319050266735597

namespace A045043

/-- `∩[A023706(n+1), A023714(n+1)]` -/
def P7009319050266735597.Spec : Prop :=
  ∀ n, (P7009319050266735597.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P13865307781263082506

`∩[A023706(n+1), A039003(n+1)]`
-/

namespace A045043.P13865307781263082506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P13865307781263082506

namespace A045043

/-- `∩[A023706(n+1), A039003(n+1)]` -/
def P13865307781263082506.Spec : Prop :=
  ∀ n, (P13865307781263082506.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P16824673183832275873

`∩[A023706(n+1), A039278(n+1)]`
-/

namespace A045043.P16824673183832275873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045043.P16824673183832275873

namespace A045043

/-- `∩[A023706(n+1), A039278(n+1)]` -/
def P16824673183832275873.Spec : Prop :=
  ∀ n, (P16824673183832275873.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P7815894838723618171

`eq[1, A160380(n)*A160382(n)]`
-/

namespace A045043.P7815894838723618171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045043.P7815894838723618171

namespace A045043

/-- `eq[1, A160380(n)*A160382(n)]` -/
def P7815894838723618171.Spec : Prop :=
  ∀ n, (P7815894838723618171.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P2480936306565385212

`eq[1, A160380(n)*A160381(A035327(n))]`
-/

namespace A045043.P2480936306565385212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n * A160381 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045043.P2480936306565385212

namespace A045043

/-- `eq[1, A160380(n)*A160381(A035327(n))]` -/
def P2480936306565385212.Spec : Prop :=
  ∀ n, (P2480936306565385212.a n : ℤ) = A045043 (n + 1)

end A045043

/-! ## A045043.P8795915725563354997

`record[floor(A093803(A045044(n+1))/2)]`
-/

namespace A045043.P8795915725563354997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093803 (A045044 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045043.P8795915725563354997

namespace A045043

/-- `record[floor(A093803(A045044(n+1))/2)]` -/
def P8795915725563354997.Spec : Prop :=
  ∀ n, P8795915725563354997.a n = A045043 (n + 1)

end A045043

/-! ## A045043.P132121559113673543

`A123108(record[A093803(A045044(n+1))])`
-/

namespace A045043.P132121559113673543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (A045044 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045043.P132121559113673543

namespace A045043

/-- `A123108(record[A093803(A045044(n+1))])` -/
def P132121559113673543.Spec : Prop :=
  ∀ n, P132121559113673543.a n = A045043 (n + 1)

end A045043

/-!
# A045044: Numbers whose base-4 representation contains exactly one 0 and two 2's.

The programs for A045044, the canonical program `A045044.P5944877663035332256` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045044 has offset 1).

The definition of A045044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045044.P5944877663035332256

`∩[A023706(n+1), A023715(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045044

/-- `∩[A023706(n+1), A023715(n+1)]` -/
def P5944877663035332256.Spec : Prop :=
  ∀ n, (P5944877663035332256.a n : ℤ) = A045044 (n + 1)

theorem P5944877663035332256.correct : P5944877663035332256.Spec := by
  intro n
  simp only [A045044, Nat.add_sub_cancel]

end A045044

/-! ## A045044.P10287588912186338474

`∩[A023715(n+1), A043333(n+1)]`
-/

namespace A045044.P10287588912186338474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045044.P10287588912186338474

namespace A045044

/-- `∩[A023715(n+1), A043333(n+1)]` -/
def P10287588912186338474.Spec : Prop :=
  ∀ n, (P10287588912186338474.a n : ℤ) = A045044 (n + 1)

end A045044

/-! ## A045044.P8230140718962153921

`eq[2, A160382(n)^A160380(n)]`
-/

namespace A045044.P8230140718962153921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160382 n : ℚ) ^ (A160380 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045044.P8230140718962153921

namespace A045044

/-- `eq[2, A160382(n)^A160380(n)]` -/
def P8230140718962153921.Spec : Prop :=
  ∀ n, (P8230140718962153921.a n : ℤ) = A045044 (n + 1)

end A045044

/-! ## A045044.P16299599764840514226

`record[A174571(A045049(n+2))]`
-/

namespace A045044.P16299599764840514226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045049 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045044.P16299599764840514226

namespace A045044

/-- `record[A174571(A045049(n+2))]` -/
def P16299599764840514226.Spec : Prop :=
  ∀ n, P16299599764840514226.a n = A045044 (n + 1)

end A045044

/-!
# A045045: Numbers whose base-4 representation contains exactly one 0 and three 2's.

The programs for A045045, there is no canonical definition to state claims against.
-/

/-! ## A045045.P1493442784628685153

`∩[A023706(n+1), A023716(n+1)]`
-/

namespace A045045.P1493442784628685153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045045.P1493442784628685153

/-! ## A045045.P8637310077005785408

`∩[A023716(n+1), A043333(n+1)]`
-/

namespace A045045.P8637310077005785408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045045.P8637310077005785408

/-! ## A045045.P3462183971047078402

`A045148(record[A001222(12*n+8)])`
-/

namespace A045045.P3462183971047078402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (12 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045148 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045045.P3462183971047078402

/-!
# A045046: Numbers whose base-4 representation contains exactly one 0 and four 2's.

The programs for A045046, there is no canonical definition to state claims against.
-/

/-! ## A045046.P7824265064864926818

`∩[A043333(n+1), A043344(n+1)]`
-/

namespace A045046.P7824265064864926818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045046.P7824265064864926818

/-! ## A045046.P10348416864080009128

`A045153(2*A032555(n+1)+1)`
-/

namespace A045046.P10348416864080009128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045153 (2 * A032555 (n + 1) + 1).toNat

end

end A045046.P10348416864080009128

/-!
# A045047: Numbers whose base-4 representation contains exactly two 0's and no 2's.

The programs for A045047, the canonical program `A045047.P1732137570799864261` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045047 has offset 1).

The definition of A045047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045047.P1732137570799864261

`∩[A023707(n+1), A023713(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045047

/-- `∩[A023707(n+1), A023713(n+1)]` -/
def P1732137570799864261.Spec : Prop :=
  ∀ n, (P1732137570799864261.a n : ℤ) = A045047 (n + 1)

theorem P1732137570799864261.correct : P1732137570799864261.Spec := by
  intro n
  simp only [A045047, Nat.add_sub_cancel]

end A045047

/-! ## A045047.P7016587319527855266

`A057300(A045023(n+1))`
-/

namespace A045047.P7016587319527855266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045023 (n + 1)).toNat

end

end A045047.P7016587319527855266

namespace A045047

/-- `A057300(A045023(n+1))` -/
def P7016587319527855266.Spec : Prop :=
  ∀ n, P7016587319527855266.a n = A045047 (n + 1)

end A045047

/-! ## A045047.P106796654550332808

`A163241(A045071(n+1))`
-/

namespace A045047.P106796654550332808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045071 (n + 1)).toNat

end

end A045047.P106796654550332808

namespace A045047

/-- `A163241(A045071(n+1))` -/
def P106796654550332808.Spec : Prop :=
  ∀ n, P106796654550332808.a n = A045047 (n + 1)

end A045047

/-! ## A045047.P13482126872009867695

`A008486(A045071(n+1))-A045023(n+1)`
-/

namespace A045047.P13482126872009867695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045071 (n + 1)).toNat - A045023 (n + 1)

end

end A045047.P13482126872009867695

namespace A045047

/-- `A008486(A045071(n+1))-A045023(n+1)` -/
def P13482126872009867695.Spec : Prop :=
  ∀ n, P13482126872009867695.a n = A045047 (n + 1)

end A045047

/-! ## A045047.P10772849230193371586

`record[-A246425(A045052(n+1))]`
-/

namespace A045047.P10772849230193371586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (A045052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045047.P10772849230193371586

namespace A045047

/-- `record[-A246425(A045052(n+1))]` -/
def P10772849230193371586.Spec : Prop :=
  ∀ n, P10772849230193371586.a n = A045047 (n + 1)

end A045047

/-! ## A045047.P1143481322989586045

`record[-A246425(3*A045076(n+1)-A045028(n+1))]`
-/

namespace A045047.P1143481322989586045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (3 * A045076 (n + 1) - A045028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045047.P1143481322989586045

namespace A045047

/-- `record[-A246425(3*A045076(n+1)-A045028(n+1))]` -/
def P1143481322989586045.Spec : Prop :=
  ∀ n, P1143481322989586045.a n = A045047 (n + 1)

end A045047

/-! ## A045047.P11914231719741871910

`eq[4, A038570(A319720(n))]`
-/

namespace A045047.P11914231719741871910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038570 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045047.P11914231719741871910

namespace A045047

/-- `eq[4, A038570(A319720(n))]` -/
def P11914231719741871910.Spec : Prop :=
  ∀ n, (P11914231719741871910.a n : ℤ) = A045047 (n + 1)

end A045047

/-! ## A045047.P4473796840843040679

`record[A174571(A045052(n+1))]`
-/

namespace A045047.P4473796840843040679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045047.P4473796840843040679

namespace A045047

/-- `record[A174571(A045052(n+1))]` -/
def P4473796840843040679.Spec : Prop :=
  ∀ n, P4473796840843040679.a n = A045047 (n + 1)

end A045047

/-!
# A045048: Numbers whose base-4 representation contains exactly two 0's and one 2.

The programs for A045048, the canonical program `A045048.P8487223918955922511` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045048 has offset 1).

The definition of A045048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045048.P8487223918955922511

`∩[A023707(n+1), A023714(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045048

/-- `∩[A023707(n+1), A023714(n+1)]` -/
def P8487223918955922511.Spec : Prop :=
  ∀ n, (P8487223918955922511.a n : ℤ) = A045048 (n + 1)

theorem P8487223918955922511.correct : P8487223918955922511.Spec := by
  intro n
  simp only [A045048, Nat.add_sub_cancel]

end A045048

/-! ## A045048.P8837361803237212201

`eq[2, A160380(n)^A160382(n)]`
-/

namespace A045048.P8837361803237212201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160380 n : ℚ) ^ (A160382 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045048.P8837361803237212201

namespace A045048

/-- `eq[2, A160380(n)^A160382(n)]` -/
def P8837361803237212201.Spec : Prop :=
  ∀ n, (P8837361803237212201.a n : ℤ) = A045048 (n + 1)

end A045048

/-! ## A045048.P6688872945587472765

`record[A174571(A045049(n+1)-2)]`
-/

namespace A045048.P6688872945587472765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045049 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045048.P6688872945587472765

namespace A045048

/-- `record[A174571(A045049(n+1)-2)]` -/
def P6688872945587472765.Spec : Prop :=
  ∀ n, P6688872945587472765.a n = A045048 (n + 1)

end A045048

/-! ## A045048.P3827302812018390417

`record[A078898(A078898(A045053(n+1)))]`
-/

namespace A045048.P3827302812018390417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A078898 (A045053 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045048.P3827302812018390417

namespace A045048

/-- `record[A078898(A078898(A045053(n+1)))]` -/
def P3827302812018390417.Spec : Prop :=
  ∀ n, P3827302812018390417.a n = A045048 (n + 1)

end A045048

/-! ## A045048.P5185659023877292049

`eq[2, A160380(n)+(A160382(n)-1)*A269964(n+1)]`
-/

namespace A045048.P5185659023877292049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + (A160382 n - 1) * A269964 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045048.P5185659023877292049

namespace A045048

/-- `eq[2, A160380(n)+(A160382(n)-1)*A269964(n+1)]` -/
def P5185659023877292049.Spec : Prop :=
  ∀ n, (P5185659023877292049.a n : ℤ) = A045048 (n + 1)

end A045048

/-!
# A045049: Numbers whose base-4 representation contains exactly two 0's and two 2's.

The programs for A045049, the canonical program `A045049.P13394764454737454766` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045049 has offset 1).

The definition of A045049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045049.P510089728094834972

`∩[A023707(n+1), A039003(n+1)]`
-/

namespace A045049.P510089728094834972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P510089728094834972

namespace A045049

/-- `∩[A023707(n+1), A039003(n+1)]` -/
def P510089728094834972.Spec : Prop :=
  ∀ n, (P510089728094834972.a n : ℤ) = A045049 (n + 1)

end A045049

/-! ## A045049.P12644609317841397963

`∩[A023707(n+1), A039278(n+1)]`
-/

namespace A045049.P12644609317841397963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P12644609317841397963

namespace A045049

/-- `∩[A023707(n+1), A039278(n+1)]` -/
def P12644609317841397963.Spec : Prop :=
  ∀ n, (P12644609317841397963.a n : ℤ) = A045049 (n + 1)

end A045049

/-! ## A045049.P13394764454737454766

`∩[A023707(n+1), A023715(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045049

/-- `∩[A023707(n+1), A023715(n+1)]` -/
def P13394764454737454766.Spec : Prop :=
  ∀ n, (P13394764454737454766.a n : ℤ) = A045049 (n + 1)

theorem P13394764454737454766.correct : P13394764454737454766.Spec := by
  intro n
  simp only [A045049, Nat.add_sub_cancel]

end A045049

/-! ## A045049.P4198944867235817019

`∩[A023715(n+1), A039003(n+1)]`
-/

namespace A045049.P4198944867235817019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P4198944867235817019

namespace A045049

/-- `∩[A023715(n+1), A039003(n+1)]` -/
def P4198944867235817019.Spec : Prop :=
  ∀ n, (P4198944867235817019.a n : ℤ) = A045049 (n + 1)

end A045049

/-! ## A045049.P9912274258559622047

`∩[A023715(n+1), A039278(n+1)]`
-/

namespace A045049.P9912274258559622047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045049.P9912274258559622047

namespace A045049

/-- `∩[A023715(n+1), A039278(n+1)]` -/
def P9912274258559622047.Spec : Prop :=
  ∀ n, (P9912274258559622047.a n : ℤ) = A045049 (n + 1)

end A045049

/-!
# A045050: Numbers whose base-4 representation contains exactly two 0's and three 2's.

The programs for A045050, there is no canonical definition to state claims against.
-/

/-! ## A045050.P9693894546487272291

`∩[A023707(n+1), A023716(n+1)]`
-/

namespace A045050.P9693894546487272291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045050.P9693894546487272291

/-! ## A045050.P3151842946520679486

`record[A249122(A078898(A045051(n+1)))]`
-/

namespace A045050.P3151842946520679486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A078898 (A045051 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045050.P3151842946520679486

/-!
# A045051: Numbers whose base-4 representation contains exactly two 0's and four 2's.

The programs for A045051, there is no canonical definition to state claims against.
-/

/-! ## A045051.P15852061438702381128

`A163241(A163241(A163241(A045075(n+1))))`
-/

namespace A045051.P15852061438702381128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (A163241 (A045075 (n + 1)).toNat).toNat).toNat

end

end A045051.P15852061438702381128

/-! ## A045051.P15642217969119403631

`A023717(A045003(n+1)%A071847(n+1))`
-/

namespace A045051.P15642217969119403631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (Int.tmod (A045003 (n + 1)) (A071847 (n + 1))).toNat

end

end A045051.P15642217969119403631

/-! ## A045051.P3302645836574838317

`A023717(A055029(A022169(n))+A045003(n+1))`
-/

namespace A045051.P3302645836574838317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A055029 (A022169 n).toNat + A045003 (n + 1)).toNat

end

end A045051.P3302645836574838317

/-! ## A045051.P14315372891821811117

`A023717(A045003(n+1))%A078870(3*n+4)`
-/

namespace A045051.P14315372891821811117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023717 (A045003 (n + 1)).toNat) (A078870 (3 * n + 4))

end

end A045051.P14315372891821811117

/-! ## A045051.P167770828713021343

`A030127(A045027(n+1))`
-/

namespace A045051.P167770828713021343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A045027 (n + 1)).toNat

end

end A045051.P167770828713021343

/-!
# A045052: Numbers whose base-4 representation contains exactly three 0's and no 2's.

The programs for A045052, there is no canonical definition to state claims against.
-/

/-! ## A045052.P4504676093321865794

`3*A045076(n+1)-A045028(n+1)`
-/

namespace A045052.P4504676093321865794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045076 (n + 1) - A045028 (n + 1)

end

end A045052.P4504676093321865794

/-! ## A045052.P8945404254679266574

`∩[A023708(n+1), A023713(n+1)]`
-/

namespace A045052.P8945404254679266574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045052.P8945404254679266574

/-! ## A045052.P17417280404358779198

`A057300(A045028(n+1))`
-/

namespace A045052.P17417280404358779198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045028 (n + 1)).toNat

end

end A045052.P17417280404358779198

/-! ## A045052.P12290554846737918499

`A163241(A045076(n+1))`
-/

namespace A045052.P12290554846737918499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045076 (n + 1)).toNat

end

end A045052.P12290554846737918499

/-! ## A045052.P4819398483613163041

`A008486(A045076(n+1))-A045028(n+1)`
-/

namespace A045052.P4819398483613163041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045076 (n + 1)).toNat - A045028 (n + 1)

end

end A045052.P4819398483613163041

/-! ## A045052.P15805677784336530167

`record[-A246425(A045057(n+1))]`
-/

namespace A045052.P15805677784336530167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (A045057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045052.P15805677784336530167

/-! ## A045052.P11472316192079918037

`record[A054576(A045057(n+1))]`
-/

namespace A045052.P11472316192079918037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045052.P11472316192079918037

/-! ## A045052.P8995662891054760979

`A025480(record[A025480(A045057(n+1))])`
-/

namespace A045052.P8995662891054760979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045057 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045052.P8995662891054760979

/-!
# A045053: Numbers whose base-4 representation contains exactly three 0's and one 2.

The programs for A045053, the canonical program `A045053.P13165953604625975418` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045053 has offset 1).

The definition of A045053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1885 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045053.P13165953604625975418

`∩[A023708(n+1), A023714(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045053

/-- `∩[A023708(n+1), A023714(n+1)]` -/
def P13165953604625975418.Spec : Prop :=
  ∀ n, (P13165953604625975418.a n : ℤ) = A045053 (n + 1)

theorem P13165953604625975418.correct : P13165953604625975418.Spec := by
  intro n
  simp only [A045053, Nat.add_sub_cancel]

end A045053

/-! ## A045053.P10897471680811319475

`record[A025480(A004525(A045058(n+1)))]`
-/

namespace A045053.P10897471680811319475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004525 (A045058 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045053.P10897471680811319475

namespace A045053

/-- `record[A025480(A004525(A045058(n+1)))]` -/
def P10897471680811319475.Spec : Prop :=
  ∀ n, P10897471680811319475.a n = A045053 (n + 1)

end A045053

/-!
# A045054: Numbers whose base-4 representation contains exactly three 0's and two 2's.

The programs for A045054, the canonical program `A045054.P5102495377277292480` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045054 has offset 1).

The definition of A045054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045054.P5102495377277292480

`∩[A023708(n+1), A023715(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045054

/-- `∩[A023708(n+1), A023715(n+1)]` -/
def P5102495377277292480.Spec : Prop :=
  ∀ n, (P5102495377277292480.a n : ℤ) = A045054 (n + 1)

theorem P5102495377277292480.correct : P5102495377277292480.Spec := by
  intro n
  simp only [A045054, Nat.add_sub_cancel]

end A045054

/-!
# A045055: Numbers whose base-4 representation contains exactly three 0's and three 2's.

The programs for A045055, there is no canonical definition to state claims against.
-/

/-! ## A045055.P6784549457526436461

`∩[A023708(n+1), A023716(n+1)]`
-/

namespace A045055.P6784549457526436461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045055.P6784549457526436461

/-! ## A045055.P17385586309687440791

`A163241(A163241(A163241(A045079(n+1))))`
-/

namespace A045055.P17385586309687440791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (A163241 (A045079 (n + 1)).toNat).toNat).toNat

end

end A045055.P17385586309687440791

/-! ## A045055.P7033643762244351146

`A030127(A045031(n+1))`
-/

namespace A045055.P7033643762244351146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030127 (A045031 (n + 1)).toNat

end

end A045055.P7033643762244351146

/-! ## A045055.P11915427750017618088

`A303787(A045187(n+1))`
-/

namespace A045055.P11915427750017618088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A045187 (n + 1)).toNat

end

end A045055.P11915427750017618088

/-! ## A045055.P826805205620357660

`record[A057979(A045032(n+1))]`
-/

namespace A045055.P826805205620357660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A045032 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045055.P826805205620357660

/-!
# A045056: Numbers whose base-4 representation contains exactly three 0's and four 2's.

The programs for A045056, there is no canonical definition to state claims against.
-/

/-! ## A045056.P9567297100659326721

`A004277(A045032(n+1))`
-/

namespace A045056.P9567297100659326721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045032 (n + 1)).toNat

end

end A045056.P9567297100659326721

/-! ## A045056.P15302450720549151525

`A004468(A045080(n+1))`
-/

namespace A045056.P15302450720549151525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045080 (n + 1)).toNat

end

end A045056.P15302450720549151525

/-! ## A045056.P6889688493559117723

`A001969(A045032(n+1)+1)`
-/

namespace A045056.P6889688493559117723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A045032 (n + 1) + 1).toNat

end

end A045056.P6889688493559117723

/-! ## A045056.P2791186328440544383

`A004275(A045032(n+1)+1)`
-/

namespace A045056.P2791186328440544383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A045032 (n + 1) + 1).toNat

end

end A045056.P2791186328440544383

/-! ## A045056.P1088921371588174730

`A051755(A045032(n+1)+1)`
-/

namespace A045056.P1088921371588174730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A045032 (n + 1) + 1).toNat

end

end A045056.P1088921371588174730

/-!
# A045057: Numbers whose base-4 representation contains exactly four 0's and no 2's.

The programs for A045057, the canonical program `A045057.P4223567228262729370` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045057 has offset 1).

The definition of A045057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045057.P4223567228262729370

`A023713(A043324(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045057

/-- `A023713(A043324(n+1)+1)` -/
def P4223567228262729370.Spec : Prop :=
  ∀ n, P4223567228262729370.a n = A045057 (n + 1)

theorem P4223567228262729370.correct : P4223567228262729370.Spec := by
  intro n
  simp only [A045057, Nat.add_sub_cancel]

end A045057

/-! ## A045057.P18207090972892523615

`A057300(A045033(n+1))`
-/

namespace A045057.P18207090972892523615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045033 (n + 1)).toNat

end

end A045057.P18207090972892523615

namespace A045057

/-- `A057300(A045033(n+1))` -/
def P18207090972892523615.Spec : Prop :=
  ∀ n, P18207090972892523615.a n = A045057 (n + 1)

end A045057

/-! ## A045057.P16341884783280216463

`A048647(xor(A045033(n+1), A045081(n+1)))`
-/

namespace A045057.P16341884783280216463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (Int.xor (A045033 (n + 1)) (A045081 (n + 1))).toNat

end

end A045057.P16341884783280216463

namespace A045057

/-- `A048647(xor(A045033(n+1), A045081(n+1)))` -/
def P16341884783280216463.Spec : Prop :=
  ∀ n, P16341884783280216463.a n = A045057 (n + 1)

end A045057

/-! ## A045057.P12309565626311186474

`A163241(A045081(n+1))`
-/

namespace A045057.P12309565626311186474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045081 (n + 1)).toNat

end

end A045057.P12309565626311186474

namespace A045057

/-- `A163241(A045081(n+1))` -/
def P12309565626311186474.Spec : Prop :=
  ∀ n, P12309565626311186474.a n = A045057 (n + 1)

end A045057

/-! ## A045057.P5022489556380521950

`record[A163241(A043336(n+1))]`
-/

namespace A045057.P5022489556380521950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A043336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045057.P5022489556380521950

namespace A045057

/-- `record[A163241(A043336(n+1))]` -/
def P5022489556380521950.Spec : Prop :=
  ∀ n, P5022489556380521950.a n = A045057 (n + 1)

end A045057

/-! ## A045057.P15540061604910848540

`A163241(∩[A031465(n+1), A043336(n+1)])`
-/

namespace A045057.P15540061604910848540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A045057.P15540061604910848540

namespace A045057

/-- `A163241(∩[A031465(n+1), A043336(n+1)])` -/
def P15540061604910848540.Spec : Prop :=
  ∀ n, P15540061604910848540.a n = A045057 (n + 1)

end A045057

/-!
# A045058: Numbers whose base-4 representation contains exactly four 0's and one 2.

The programs for A045058, there is no canonical definition to state claims against.
-/

/-! ## A045058.P16748620478605815901

`A045081(2*n+2)-A011731(A040018(n+4))`
-/

namespace A045058.P16748620478605815901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045081 (2 * n + 2) - A011731 (A040018 (n + 4)).toNat

end

end A045058.P16748620478605815901

/-! ## A045058.P12258236357550821704

`A031465(∑{e}[Δ[10^n], #])`
-/

namespace A045058.P12258236357550821704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031465 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A045058.P12258236357550821704

/-!
# A045059: Numbers whose base-4 representation contains exactly four 0's and two 2's.

The programs for A045059, there is no canonical definition to state claims against.
-/

/-! ## A045059.P17582057879869230980

`A163241(A163241(A163241(A045083(n+1))))`
-/

namespace A045059.P17582057879869230980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (A163241 (A045083 (n + 1)).toNat).toNat).toNat

end

end A045059.P17582057879869230980

/-!
# A045060: Numbers whose base-4 representation contains exactly four 0's and three 2's.

The programs for A045060, there is no canonical definition to state claims against.
-/

/-! ## A045060.P2068589848069566588

`A004277(A045036(n+1))`
-/

namespace A045060.P2068589848069566588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045036 (n + 1)).toNat

end

end A045060.P2068589848069566588

/-! ## A045060.P14910278469348138196

`A004468(A045084(n+1))`
-/

namespace A045060.P14910278469348138196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045084 (n + 1)).toNat

end

end A045060.P14910278469348138196

/-! ## A045060.P8855074236740440827

`A000069(A045036(n+1)+1)`
-/

namespace A045060.P8855074236740440827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A045036 (n + 1) + 1).toNat

end

end A045060.P8855074236740440827

/-! ## A045060.P11557085991103076396

`A004275(A045036(n+1)+1)`
-/

namespace A045060.P11557085991103076396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A045036 (n + 1) + 1).toNat

end

end A045060.P11557085991103076396

/-! ## A045060.P1500631821089736334

`A047266(A045036(n+1)+1)`
-/

namespace A045060.P1500631821089736334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (A045036 (n + 1) + 1).toNat

end

end A045060.P1500631821089736334

/-!
# A045061: Numbers whose base-4 representation contains exactly four 0's and four 2's.

The programs for A045061, there is no canonical definition to state claims against.
-/

/-! ## A045061.P2961803472265409341

`A023717(A045013(n+1))`
-/

namespace A045061.P2961803472265409341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A045013 (n + 1)).toNat

end

end A045061.P2961803472265409341

/-! ## A045061.P6794271287688009693

`A059010(A045037(n+1))`
-/

namespace A045061.P6794271287688009693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (A045037 (n + 1)).toNat

end

end A045061.P6794271287688009693

/-! ## A045061.P1293168348354095146

`A163485(A045085(n+1))`
-/

namespace A045061.P1293168348354095146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A045085 (n + 1)).toNat

end

end A045061.P1293168348354095146

/-! ## A045061.P15144850107491053402

`A163485(3*A045037(n+1))`
-/

namespace A045061.P15144850107491053402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (3 * A045037 (n + 1)).toNat

end

end A045061.P15144850107491053402

/-! ## A045061.P5809977146668225668

`A014682(4*A045037(n+1))`
-/

namespace A045061.P5809977146668225668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (4 * A045037 (n + 1)).toNat

end

end A045061.P5809977146668225668

/-!
# A045062: Numbers whose base-4 representation contains no 0's and exactly one 3.

The programs for A045062, the canonical program `A045062.P7454481286317021680` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045062 has offset 1).

The definition of A045062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045062.P7454481286317021680

`∩[A023705(n+1), A031466(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045062

/-- `∩[A023705(n+1), A031466(n+1)]` -/
def P7454481286317021680.Spec : Prop :=
  ∀ n, (P7454481286317021680.a n : ℤ) = A045062 (n + 1)

theorem P7454481286317021680.correct : P7454481286317021680.Spec := by
  intro n
  simp only [A045062, Nat.add_sub_cancel]

end A045062

/-! ## A045062.P17862072490027937123

`∩[A023705(n+1), A023718(n+1)]`
-/

namespace A045062.P17862072490027937123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045062.P17862072490027937123

namespace A045062

/-- `∩[A023705(n+1), A023718(n+1)]` -/
def P17862072490027937123.Spec : Prop :=
  ∀ n, (P17862072490027937123.a n : ℤ) = A045062 (n + 1)

end A045062

/-! ## A045062.P5050209910723433411

`∩[A023718(n+1), A031466(n+1)]`
-/

namespace A045062.P5050209910723433411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045062.P5050209910723433411

namespace A045062

/-- `∩[A023718(n+1), A031466(n+1)]` -/
def P5050209910723433411.Spec : Prop :=
  ∀ n, (P5050209910723433411.a n : ℤ) = A045062 (n + 1)

end A045062

/-! ## A045062.P15115094891155108049

`eq[1, A069283(A309954(n))]`
-/

namespace A045062.P15115094891155108049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045062.P15115094891155108049

namespace A045062

/-- `eq[1, A069283(A309954(n))]` -/
def P15115094891155108049.Spec : Prop :=
  ∀ n, (P15115094891155108049.a n : ℤ) = A045062 (n + 1)

end A045062

/-! ## A045062.P9667306635237613704

`eq[exp(A160380(n)), A160383(n)]`
-/

namespace A045062.P9667306635237613704
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160380 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045062.P9667306635237613704

namespace A045062

/-- `eq[exp(A160380(n)), A160383(n)]` -/
def P9667306635237613704.Spec : Prop :=
  ∀ n, (P9667306635237613704.a n : ℤ) = A045062 (n + 1)

end A045062

/-! ## A045062.P14643721427276715573

`eq[1, A160383(n)*A277872(n)]`
-/

namespace A045062.P14643721427276715573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n * A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045062.P14643721427276715573

namespace A045062

/-- `eq[1, A160383(n)*A277872(n)]` -/
def P14643721427276715573.Spec : Prop :=
  ∀ n, (P14643721427276715573.a n : ℤ) = A045062 (n + 1)

end A045062

/-! ## A045062.P1277616886745396529

`eq[A209229(A292373(n)), A277872(n)]`
-/

namespace A045062.P1277616886745396529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292373 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045062.P1277616886745396529

namespace A045062

/-- `eq[A209229(A292373(n)), A277872(n)]` -/
def P1277616886745396529.Spec : Prop :=
  ∀ n, (P1277616886745396529.a n : ℤ) = A045062 (n + 1)

end A045062

/-! ## A045062.P15384490045533906017

`record[A054576(A045067(n+1))]`
-/

namespace A045062.P15384490045533906017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045067 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045062.P15384490045533906017

namespace A045062

/-- `record[A054576(A045067(n+1))]` -/
def P15384490045533906017.Spec : Prop :=
  ∀ n, P15384490045533906017.a n = A045062 (n + 1)

end A045062

/-! ## A045062.P8088155528802829616

`eq[3, gcd(A108411(n+1), A309954(n))]`
-/

namespace A045062.P8088155528802829616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108411 (n + 1)) (A309954 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045062.P8088155528802829616

namespace A045062

/-- `eq[3, gcd(A108411(n+1), A309954(n))]` -/
def P8088155528802829616.Spec : Prop :=
  ∀ n, (P8088155528802829616.a n : ℤ) = A045062 (n + 1)

end A045062

/-!
# A045063: Numbers whose base-4 representation contains no 0's and exactly two 3's.

The programs for A045063, the canonical program `A045063.P8683003106930919168` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045063 has offset 1).

The definition of A045063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2815 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045063.P8683003106930919168

`∩[A023705(n+1), A031467(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045063

/-- `∩[A023705(n+1), A031467(n+1)]` -/
def P8683003106930919168.Spec : Prop :=
  ∀ n, (P8683003106930919168.a n : ℤ) = A045063 (n + 1)

theorem P8683003106930919168.correct : P8683003106930919168.Spec := by
  intro n
  simp only [A045063, Nat.add_sub_cancel]

end A045063

/-! ## A045063.P13928606207427979768

`∩[A023705(n+1), A023719(n+1)]`
-/

namespace A045063.P13928606207427979768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045063.P13928606207427979768

namespace A045063

/-- `∩[A023705(n+1), A023719(n+1)]` -/
def P13928606207427979768.Spec : Prop :=
  ∀ n, (P13928606207427979768.a n : ℤ) = A045063 (n + 1)

end A045063

/-! ## A045063.P15111838551474758168

`∩[A023719(n+1), A031467(n+1)]`
-/

namespace A045063.P15111838551474758168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045063.P15111838551474758168

namespace A045063

/-- `∩[A023719(n+1), A031467(n+1)]` -/
def P15111838551474758168.Spec : Prop :=
  ∀ n, (P15111838551474758168.a n : ℤ) = A045063 (n + 1)

end A045063

/-! ## A045063.P9946545024467084156

`eq[2, A069283(A309954(n))]`
-/

namespace A045063.P9946545024467084156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045063.P9946545024467084156

namespace A045063

/-- `eq[2, A069283(A309954(n))]` -/
def P9946545024467084156.Spec : Prop :=
  ∀ n, (P9946545024467084156.a n : ℤ) = A045063 (n + 1)

end A045063

/-! ## A045063.P13222458017274126412

`eq[exp(A160380(n))+1, A160383(n)]`
-/

namespace A045063.P13222458017274126412
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160380 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045063.P13222458017274126412

namespace A045063

/-- `eq[exp(A160380(n))+1, A160383(n)]` -/
def P13222458017274126412.Spec : Prop :=
  ∀ n, (P13222458017274126412.a n : ℤ) = A045063 (n + 1)

end A045063

/-! ## A045063.P8731726804036832624

`eq[2, A082498(A309954(n+1))]+1`
-/

namespace A045063.P8731726804036832624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 (A309954 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A045063.P8731726804036832624

namespace A045063

/-- `eq[2, A082498(A309954(n+1))]+1` -/
def P8731726804036832624.Spec : Prop :=
  ∀ n, (P8731726804036832624.a n : ℤ) = A045063 (n + 1)

end A045063

/-! ## A045063.P9204902238554701430

`record[A057979(A057979(A045064(n+1)))]`
-/

namespace A045063.P9204902238554701430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 (A045064 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045063.P9204902238554701430

namespace A045063

/-- `record[A057979(A057979(A045064(n+1)))]` -/
def P9204902238554701430.Spec : Prop :=
  ∀ n, P9204902238554701430.a n = A045063 (n + 1)

end A045063

/-!
# A045064: Numbers whose base-4 representation contains no 0's and exactly three 3's.

The programs for A045064, there is no canonical definition to state claims against.
-/

/-! ## A045064.P4022811185449250992

`∩[A023705(n+1), A023720(n+1)]`
-/

namespace A045064.P4022811185449250992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045064.P4022811185449250992

/-! ## A045064.P18027130775070068160

`∩[A023720(n+1), A031468(n+1)]`
-/

namespace A045064.P18027130775070068160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045064.P18027130775070068160

/-! ## A045064.P305403629141138623

`eq[4, A000120(A309954(n))]`
-/

namespace A045064.P305403629141138623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045064.P305403629141138623

/-! ## A045064.P7151357791383228135

`eq[A160383(n), A163617(A277872(n))]`
-/

namespace A045064.P7151357791383228135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 (A277872 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045064.P7151357791383228135

/-! ## A045064.P14846885943887626663

`A031468(A348553(n)%A269238(n+1))`
-/

namespace A045064.P14846885943887626663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031468 (Int.tmod (A348553 n) (A269238 (n + 1))).toNat

end

end A045064.P14846885943887626663

/-!
# A045065: Numbers whose base-4 representation contains no 0's and exactly four 3's.

The programs for A045065, there is no canonical definition to state claims against.
-/

/-! ## A045065.P11388205122120245958

`∩[A031469(n+1), A043348(n+1)]`
-/

namespace A045065.P11388205122120245958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045065.P11388205122120245958

/-!
# A045066: Numbers whose base-4 representation contains exactly one 0 and no 3's.

The programs for A045066, the canonical program `A045066.P6394012223862104434` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045066 has offset 1).

The definition of A045066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045066.P6394012223862104434

`A023717(eq[1, A077267(n)])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045066

/-- `A023717(eq[1, A077267(n)])` -/
def P6394012223862104434.Spec : Prop :=
  ∀ n, P6394012223862104434.a n = A045066 (n + 1)

theorem P6394012223862104434.correct : P6394012223862104434.Spec := by
  intro n
  simp only [A045066, Nat.add_sub_cancel]

end A045066

/-! ## A045066.P10727628375711906209

`∩[A023706(n+1), A023717(n)]`
-/

namespace A045066.P10727628375711906209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045066.P10727628375711906209

namespace A045066

/-- `∩[A023706(n+1), A023717(n)]` -/
def P10727628375711906209.Spec : Prop :=
  ∀ n, (P10727628375711906209.a n : ℤ) = A045066 (n + 1)

end A045066

/-! ## A045066.P2402230746981369207

`A004468(A045018(n+1))`
-/

namespace A045066.P2402230746981369207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045018 (n + 1)).toNat

end

end A045066.P2402230746981369207

namespace A045066

/-- `A004468(A045018(n+1))` -/
def P2402230746981369207.Spec : Prop :=
  ∀ n, P2402230746981369207.a n = A045066 (n + 1)

end A045066

/-! ## A045066.P12847586432961030297

`A163241(A045042(n+1))`
-/

namespace A045066.P12847586432961030297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045042 (n + 1)).toNat

end

end A045066.P12847586432961030297

namespace A045066

/-- `A163241(A045042(n+1))` -/
def P12847586432961030297.Spec : Prop :=
  ∀ n, P12847586432961030297.a n = A045066 (n + 1)

end A045066

/-! ## A045066.P4122458751350308042

`A163241(record[A163241(A023706(n+1))])`
-/

namespace A045066.P4122458751350308042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A023706 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045066.P4122458751350308042

namespace A045066

/-- `A163241(record[A163241(A023706(n+1))])` -/
def P4122458751350308042.Spec : Prop :=
  ∀ n, P4122458751350308042.a n = A045066 (n + 1)

end A045066

/-! ## A045066.P16395542286141736182

`A002264(A045042(n+1)+A045018(n+1))`
-/

namespace A045066.P16395542286141736182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045042 (n + 1) + A045018 (n + 1)).toNat

end

end A045066.P16395542286141736182

namespace A045066

/-- `A002264(A045042(n+1)+A045018(n+1))` -/
def P16395542286141736182.Spec : Prop :=
  ∀ n, P16395542286141736182.a n = A045066 (n + 1)

end A045066

/-!
# A045067: Numbers whose base-4 representation contains exactly one 0 and one 3.

The programs for A045067, the canonical program `A045067.P14652624658165700475` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045067 has offset 1).

The definition of A045067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2933 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045067.P14862881404471944573

`∩[A023718(n+1), A031461(n+1)]`
-/

namespace A045067.P14862881404471944573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P14862881404471944573

namespace A045067

/-- `∩[A023718(n+1), A031461(n+1)]` -/
def P14862881404471944573.Spec : Prop :=
  ∀ n, (P14862881404471944573.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P9665504475853603283

`∩[A023718(n+1), A039279(n+1)]`
-/

namespace A045067.P9665504475853603283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P9665504475853603283

namespace A045067

/-- `∩[A023718(n+1), A039279(n+1)]` -/
def P9665504475853603283.Spec : Prop :=
  ∀ n, (P9665504475853603283.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P14652624658165700475

`∩[A023706(n+1), A023718(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045067

/-- `∩[A023706(n+1), A023718(n+1)]` -/
def P14652624658165700475.Spec : Prop :=
  ∀ n, (P14652624658165700475.a n : ℤ) = A045067 (n + 1)

theorem P14652624658165700475.correct : P14652624658165700475.Spec := by
  intro n
  simp only [A045067, Nat.add_sub_cancel]

end A045067

/-! ## A045067.P9949384943431868674

`∩[A023706(n+1), A031461(n+1)]`
-/

namespace A045067.P9949384943431868674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P9949384943431868674

namespace A045067

/-- `∩[A023706(n+1), A031461(n+1)]` -/
def P9949384943431868674.Spec : Prop :=
  ∀ n, (P9949384943431868674.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P13052714121402498308

`∩[A023706(n+1), A039279(n+1)]`
-/

namespace A045067.P13052714121402498308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P13052714121402498308

namespace A045067

/-- `∩[A023706(n+1), A039279(n+1)]` -/
def P13052714121402498308.Spec : Prop :=
  ∀ n, (P13052714121402498308.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P1695686398298094326

`∩[A023718(n+1), A043333(n+1)]`
-/

namespace A045067.P1695686398298094326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P1695686398298094326

namespace A045067

/-- `∩[A023718(n+1), A043333(n+1)]` -/
def P1695686398298094326.Spec : Prop :=
  ∀ n, (P1695686398298094326.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P480064477392768709

`∩[A031461(n+1), A043333(n+1)]`
-/

namespace A045067.P480064477392768709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P480064477392768709

namespace A045067

/-- `∩[A031461(n+1), A043333(n+1)]` -/
def P480064477392768709.Spec : Prop :=
  ∀ n, (P480064477392768709.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P7757280655300969338

`∩[A039279(n+1), A043333(n+1)]`
-/

namespace A045067.P7757280655300969338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045067.P7757280655300969338

namespace A045067

/-- `∩[A039279(n+1), A043333(n+1)]` -/
def P7757280655300969338.Spec : Prop :=
  ∀ n, (P7757280655300969338.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P12070429434531942501

`eq[1, A160380(n)*A160383(n)]`
-/

namespace A045067.P12070429434531942501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n * A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045067.P12070429434531942501

namespace A045067

/-- `eq[1, A160380(n)*A160383(n)]` -/
def P12070429434531942501.Spec : Prop :=
  ∀ n, (P12070429434531942501.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P9482322729894947926

`eq[2*A292373(A319720(n)), A001316(n)]`
-/

namespace A045067.P9482322729894947926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292373 (A319720 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045067.P9482322729894947926

namespace A045067

/-- `eq[2*A292373(A319720(n)), A001316(n)]` -/
def P9482322729894947926.Spec : Prop :=
  ∀ n, (P9482322729894947926.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P17483359918415554201

`eq[A160380(n)^A292373(n), A160383(n)]`
-/

namespace A045067.P17483359918415554201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160380 n : ℚ) ^ (A292373 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A045067.P17483359918415554201

namespace A045067

/-- `eq[A160380(n)^A292373(n), A160383(n)]` -/
def P17483359918415554201.Spec : Prop :=
  ∀ n, (P17483359918415554201.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P11955371774869211492

`eq[A160383(n)^A292370(n), A160380(n)]`
-/

namespace A045067.P11955371774869211492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160383 n : ℚ) ^ (A292370 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A045067.P11955371774869211492

namespace A045067

/-- `eq[A160383(n)^A292370(n), A160380(n)]` -/
def P11955371774869211492.Spec : Prop :=
  ∀ n, (P11955371774869211492.a n : ℤ) = A045067 (n + 1)

end A045067

/-! ## A045067.P2840804531796842730

`eq[1, A160380(A010078(n+1))*A160380(n)]`
-/

namespace A045067.P2840804531796842730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A010078 (n + 1)).toNat * A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045067.P2840804531796842730

namespace A045067

/-- `eq[1, A160380(A010078(n+1))*A160380(n)]` -/
def P2840804531796842730.Spec : Prop :=
  ∀ n, (P2840804531796842730.a n : ℤ) = A045067 (n + 1)

end A045067

/-!
# A045068: Numbers whose base-4 representation contains exactly one 0 and two 3's.

The programs for A045068, the canonical program `A045068.P15868725740429608415` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045068 has offset 1).

The definition of A045068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045068.P15868725740429608415

`∩[A023719(n+1), A031466(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045068

/-- `∩[A023719(n+1), A031466(n+1)]` -/
def P15868725740429608415.Spec : Prop :=
  ∀ n, (P15868725740429608415.a n : ℤ) = A045068 (n + 1)

theorem P15868725740429608415.correct : P15868725740429608415.Spec := by
  intro n
  simp only [A045068, Nat.add_sub_cancel]

end A045068

/-! ## A045068.P9909133624361263827

`∩[A023719(n+1), A043333(n+1)]`
-/

namespace A045068.P9909133624361263827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045068.P9909133624361263827

namespace A045068

/-- `∩[A023719(n+1), A043333(n+1)]` -/
def P9909133624361263827.Spec : Prop :=
  ∀ n, (P9909133624361263827.a n : ℤ) = A045068 (n + 1)

end A045068

/-! ## A045068.P4326673921607672546

`∩[A031466(n+1), A043333(n+1)]`
-/

namespace A045068.P4326673921607672546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045068.P4326673921607672546

namespace A045068

/-- `∩[A031466(n+1), A043333(n+1)]` -/
def P4326673921607672546.Spec : Prop :=
  ∀ n, (P4326673921607672546.a n : ℤ) = A045068 (n + 1)

end A045068

/-! ## A045068.P17513519570916232636

`∩[A023706(n+1), A023719(n+1)]`
-/

namespace A045068.P17513519570916232636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045068.P17513519570916232636

namespace A045068

/-- `∩[A023706(n+1), A023719(n+1)]` -/
def P17513519570916232636.Spec : Prop :=
  ∀ n, (P17513519570916232636.a n : ℤ) = A045068 (n + 1)

end A045068

/-! ## A045068.P14497687907076504216

`∩[A023706(n+1), A031466(n+1)]`
-/

namespace A045068.P14497687907076504216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045068.P14497687907076504216

namespace A045068

/-- `∩[A023706(n+1), A031466(n+1)]` -/
def P14497687907076504216.Spec : Prop :=
  ∀ n, (P14497687907076504216.a n : ℤ) = A045068 (n + 1)

end A045068

/-! ## A045068.P12994768622421352401

`eq[2, A160383(n)^A160380(n)]`
-/

namespace A045068.P12994768622421352401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160383 n : ℚ) ^ (A160380 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045068.P12994768622421352401

namespace A045068

/-- `eq[2, A160383(n)^A160380(n)]` -/
def P12994768622421352401.Spec : Prop :=
  ∀ n, (P12994768622421352401.a n : ℤ) = A045068 (n + 1)

end A045068

/-!
# A045069: Numbers whose base-4 representation contains exactly one 0 and three 3's.

The programs for A045069, the canonical program `A045069.P18357878242646511179` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045069 has offset 1).

The definition of A045069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1940 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045069.P16684787051169528657

`∩[A023720(n+1), A031467(n+1)]`
-/

namespace A045069.P16684787051169528657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045069.P16684787051169528657

namespace A045069

/-- `∩[A023720(n+1), A031467(n+1)]` -/
def P16684787051169528657.Spec : Prop :=
  ∀ n, (P16684787051169528657.a n : ℤ) = A045069 (n + 1)

end A045069

/-! ## A045069.P6433585379866912914

`∩[A023706(n+1), A023720(n+1)]`
-/

namespace A045069.P6433585379866912914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045069.P6433585379866912914

namespace A045069

/-- `∩[A023706(n+1), A023720(n+1)]` -/
def P6433585379866912914.Spec : Prop :=
  ∀ n, (P6433585379866912914.a n : ℤ) = A045069 (n + 1)

end A045069

/-! ## A045069.P18357878242646511179

`∩[A023706(n+1), A031467(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A045069

/-- `∩[A023706(n+1), A031467(n+1)]` -/
def P18357878242646511179.Spec : Prop :=
  ∀ n, (P18357878242646511179.a n : ℤ) = A045069 (n + 1)

theorem P18357878242646511179.correct : P18357878242646511179.Spec := by
  intro n
  simp only [A045069, Nat.add_sub_cancel]

end A045069

/-! ## A045069.P16326327564419843674

`∩[A023720(n+1), A043333(n+1)]`
-/

namespace A045069.P16326327564419843674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045069.P16326327564419843674

namespace A045069

/-- `∩[A023720(n+1), A043333(n+1)]` -/
def P16326327564419843674.Spec : Prop :=
  ∀ n, (P16326327564419843674.a n : ℤ) = A045069 (n + 1)

end A045069

/-! ## A045069.P2610366757957805508

`∩[A031467(n+1), A043333(n+1)]`
-/

namespace A045069.P2610366757957805508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045069.P2610366757957805508

namespace A045069

/-- `∩[A031467(n+1), A043333(n+1)]` -/
def P2610366757957805508.Spec : Prop :=
  ∀ n, (P2610366757957805508.a n : ℤ) = A045069 (n + 1)

end A045069

/-!
# A045070: Numbers whose base-4 representation contains exactly one 0 and four 3's.

The programs for A045070, there is no canonical definition to state claims against.
-/

/-! ## A045070.P14336650036207202667

`∩[A031468(n+1), A043348(n+1)]`
-/

namespace A045070.P14336650036207202667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045070.P14336650036207202667

/-! ## A045070.P9055380433756455058

`∩[A043333(n+1), A043348(n+1)]`
-/

namespace A045070.P9055380433756455058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045070.P9055380433756455058

/-! ## A045070.P6542278802962245514

`A043348(A165783(2^n+1)+1)`
-/

namespace A045070.P6542278802962245514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043348 (A165783 (2 ^ n + 1) + 1).toNat

end

end A045070.P6542278802962245514

/-! ## A045070.P12725082408737228121

`A043348(3*n+4)^Δ[A043320(n+1)]`
-/

namespace A045070.P12725082408737228121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043348 (3 * n + 4) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A045070.P12725082408737228121

/-! ## A045070.P11342904755447880859

`A010060(A000079(n))*A043348(3*n+4)`
-/

namespace A045070.P11342904755447880859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A000079 n).toNat * A043348 (3 * n + 4)

end

end A045070.P11342904755447880859

/-!
# A045071: Numbers whose base-4 representation contains exactly two 0's and no 3's.

The programs for A045071, the canonical program `A045071.P6797980674944799802` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045071 has offset 1).

The definition of A045071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045071.P6797980674944799802

`A023717(A043322(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045071

/-- `A023717(A043322(n+1))` -/
def P6797980674944799802.Spec : Prop :=
  ∀ n, P6797980674944799802.a n = A045071 (n + 1)

theorem P6797980674944799802.correct : P6797980674944799802.Spec := by
  intro n
  simp only [A045071, Nat.add_sub_cancel]

end A045071

/-! ## A045071.P2070219495487985687

`A023717(eq[2, A077267(n)])`
-/

namespace A045071.P2070219495487985687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045071.P2070219495487985687

namespace A045071

/-- `A023717(eq[2, A077267(n)])` -/
def P2070219495487985687.Spec : Prop :=
  ∀ n, P2070219495487985687.a n = A045071 (n + 1)

end A045071

/-! ## A045071.P16982257342316258946

`∩[A031463(n+1), A023717(n)]`
-/

namespace A045071.P16982257342316258946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045071.P16982257342316258946

namespace A045071

/-- `∩[A031463(n+1), A023717(n)]` -/
def P16982257342316258946.Spec : Prop :=
  ∀ n, (P16982257342316258946.a n : ℤ) = A045071 (n + 1)

end A045071

/-! ## A045071.P8585762313950728599

`∩[A023707(n+1), A023717(n)]`
-/

namespace A045071.P8585762313950728599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045071.P8585762313950728599

namespace A045071

/-- `∩[A023707(n+1), A023717(n)]` -/
def P8585762313950728599.Spec : Prop :=
  ∀ n, (P8585762313950728599.a n : ℤ) = A045071 (n + 1)

end A045071

/-! ## A045071.P17186339314092291109

`∩[A023707(n+1), A031463(n+1)]`
-/

namespace A045071.P17186339314092291109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045071.P17186339314092291109

namespace A045071

/-- `∩[A023707(n+1), A031463(n+1)]` -/
def P17186339314092291109.Spec : Prop :=
  ∀ n, (P17186339314092291109.a n : ℤ) = A045071 (n + 1)

end A045071

/-! ## A045071.P8972319576349326613

`A004468(A045023(n+1))`
-/

namespace A045071.P8972319576349326613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045023 (n + 1)).toNat

end

end A045071.P8972319576349326613

namespace A045071

/-- `A004468(A045023(n+1))` -/
def P8972319576349326613.Spec : Prop :=
  ∀ n, P8972319576349326613.a n = A045071 (n + 1)

end A045071

/-! ## A045071.P10858496316585077425

`eq[exp(A160383(n))+1, A160380(n)]`
-/

namespace A045071.P10858496316585077425
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160383 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045071.P10858496316585077425

namespace A045071

/-- `eq[exp(A160383(n))+1, A160380(n)]` -/
def P10858496316585077425.Spec : Prop :=
  ∀ n, (P10858496316585077425.a n : ℤ) = A045071 (n + 1)

end A045071

/-! ## A045071.P17916678097617833994

`A163241(A045047(n+1))`
-/

namespace A045071.P17916678097617833994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045047 (n + 1)).toNat

end

end A045071.P17916678097617833994

namespace A045071

/-- `A163241(A045047(n+1))` -/
def P17916678097617833994.Spec : Prop :=
  ∀ n, P17916678097617833994.a n = A045071 (n + 1)

end A045071

/-! ## A045071.P4268899759641130737

`A045023(n+1)-A063694(A045047(n+1))`
-/

namespace A045071.P4268899759641130737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045023 (n + 1) - A063694 (A045047 (n + 1)).toNat

end

end A045071.P4268899759641130737

namespace A045071

/-- `A045023(n+1)-A063694(A045047(n+1))` -/
def P4268899759641130737.Spec : Prop :=
  ∀ n, P4268899759641130737.a n = A045071 (n + 1)

end A045071

/-!
# A045072: Numbers whose base-4 representation contains exactly two 0's and one 3.

The programs for A045072, the canonical program `A045072.P10813795932210976576` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045072 has offset 1).

The definition of A045072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045072.P10813795932210976576

`∩[A023707(n+1), A031462(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045072

/-- `∩[A023707(n+1), A031462(n+1)]` -/
def P10813795932210976576.Spec : Prop :=
  ∀ n, (P10813795932210976576.a n : ℤ) = A045072 (n + 1)

theorem P10813795932210976576.correct : P10813795932210976576.Spec := by
  intro n
  simp only [A045072, Nat.add_sub_cancel]

end A045072

/-! ## A045072.P15281575378210487334

`∩[A023707(n+1), A023718(n+1)]`
-/

namespace A045072.P15281575378210487334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045072.P15281575378210487334

namespace A045072

/-- `∩[A023707(n+1), A023718(n+1)]` -/
def P15281575378210487334.Spec : Prop :=
  ∀ n, (P15281575378210487334.a n : ℤ) = A045072 (n + 1)

end A045072

/-! ## A045072.P13851070656066747195

`∩[A023718(n+1), A031462(n+1)]`
-/

namespace A045072.P13851070656066747195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045072.P13851070656066747195

namespace A045072

/-- `∩[A023718(n+1), A031462(n+1)]` -/
def P13851070656066747195.Spec : Prop :=
  ∀ n, (P13851070656066747195.a n : ℤ) = A045072 (n + 1)

end A045072

/-! ## A045072.P10895959775365756267

`eq[2, A160380(n)^A160383(n)]`
-/

namespace A045072.P10895959775365756267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160380 n : ℚ) ^ (A160383 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045072.P10895959775365756267

namespace A045072

/-- `eq[2, A160380(n)^A160383(n)]` -/
def P10895959775365756267.Spec : Prop :=
  ∀ n, (P10895959775365756267.a n : ℤ) = A045072 (n + 1)

end A045072

/-! ## A045072.P4447252920315312611

`eq[A001316(n), A292373(A319720(n))]`
-/

namespace A045072.P4447252920315312611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A319720 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045072.P4447252920315312611

namespace A045072

/-- `eq[A001316(n), A292373(A319720(n))]` -/
def P4447252920315312611.Spec : Prop :=
  ∀ n, (P4447252920315312611.a n : ℤ) = A045072 (n + 1)

end A045072

/-! ## A045072.P13185180274513782624

`record[A032742(A032742(A045077(n+1)))]`
-/

namespace A045072.P13185180274513782624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (A045077 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045072.P13185180274513782624

namespace A045072

/-- `record[A032742(A032742(A045077(n+1)))]` -/
def P13185180274513782624.Spec : Prop :=
  ∀ n, P13185180274513782624.a n = A045072 (n + 1)

end A045072

/-!
# A045073: Numbers whose base-4 representation contains exactly two 0's and two 3's.

The programs for A045073, the canonical program `A045073.P1760494440290000566` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045073 has offset 1).

The definition of A045073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3091 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045073.P10832041255851572402

`∩[A023707(n+1), A031461(n+1)]`
-/

namespace A045073.P10832041255851572402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P10832041255851572402

namespace A045073

/-- `∩[A023707(n+1), A031461(n+1)]` -/
def P10832041255851572402.Spec : Prop :=
  ∀ n, (P10832041255851572402.a n : ℤ) = A045073 (n + 1)

end A045073

/-! ## A045073.P15790907655159178887

`∩[A023707(n+1), A039279(n+1)]`
-/

namespace A045073.P15790907655159178887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P15790907655159178887

namespace A045073

/-- `∩[A023707(n+1), A039279(n+1)]` -/
def P15790907655159178887.Spec : Prop :=
  ∀ n, (P15790907655159178887.a n : ℤ) = A045073 (n + 1)

end A045073

/-! ## A045073.P1760494440290000566

`∩[A023707(n+1), A023719(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045073

/-- `∩[A023707(n+1), A023719(n+1)]` -/
def P1760494440290000566.Spec : Prop :=
  ∀ n, (P1760494440290000566.a n : ℤ) = A045073 (n + 1)

theorem P1760494440290000566.correct : P1760494440290000566.Spec := by
  intro n
  simp only [A045073, Nat.add_sub_cancel]

end A045073

/-! ## A045073.P8607855340394681085

`∩[A023719(n+1), A031461(n+1)]`
-/

namespace A045073.P8607855340394681085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P8607855340394681085

namespace A045073

/-- `∩[A023719(n+1), A031461(n+1)]` -/
def P8607855340394681085.Spec : Prop :=
  ∀ n, (P8607855340394681085.a n : ℤ) = A045073 (n + 1)

end A045073

/-! ## A045073.P8254355849073324628

`∩[A023719(n+1), A039279(n+1)]`
-/

namespace A045073.P8254355849073324628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045073.P8254355849073324628

namespace A045073

/-- `∩[A023719(n+1), A039279(n+1)]` -/
def P8254355849073324628.Spec : Prop :=
  ∀ n, (P8254355849073324628.a n : ℤ) = A045073 (n + 1)

end A045073

/-!
# A045074: Numbers whose base-4 representation contains exactly two 0's and three 3's.

The programs for A045074, the canonical program `A045074.P14332834374997068054` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045074 has offset 1).

The definition of A045074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1566 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045074.P56490178796616160

`∩[A023707(n+1), A023720(n+1)]`
-/

namespace A045074.P56490178796616160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045074.P56490178796616160

namespace A045074

/-- `∩[A023707(n+1), A023720(n+1)]` -/
def P56490178796616160.Spec : Prop :=
  ∀ n, (P56490178796616160.a n : ℤ) = A045074 (n + 1)

end A045074

/-! ## A045074.P14332834374997068054

`∩[A023707(n+1), A031466(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045074

/-- `∩[A023707(n+1), A031466(n+1)]` -/
def P14332834374997068054.Spec : Prop :=
  ∀ n, (P14332834374997068054.a n : ℤ) = A045074 (n + 1)

theorem P14332834374997068054.correct : P14332834374997068054.Spec := by
  intro n
  simp only [A045074, Nat.add_sub_cancel]

end A045074

/-!
# A045075: Numbers whose base-4 representation contains exactly two 0's and four 3's.

The programs for A045075, there is no canonical definition to state claims against.
-/

/-! ## A045075.P13192243918853591774

`A163241(A163241(A163241(A045051(n+1))))`
-/

namespace A045075.P13192243918853591774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (A163241 (A045051 (n + 1)).toNat).toNat).toNat

end

end A045075.P13192243918853591774

/-! ## A045075.P15800254062966136810

`A001281(3*A045051(n+1))`
-/

namespace A045075.P15800254062966136810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (3 * A045051 (n + 1)).toNat

end

end A045075.P15800254062966136810

/-! ## A045075.P15355412813180986686

`A004525(3*A045051(n+1))`
-/

namespace A045075.P15355412813180986686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A045051 (n + 1)).toNat

end

end A045075.P15355412813180986686

/-! ## A045075.P8894963831144577610

`A004526(3*A045051(n+1))`
-/

namespace A045075.P8894963831144577610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A045051 (n + 1)).toNat

end

end A045075.P8894963831144577610

/-! ## A045075.P7160827816510223989

`A014683(3*A045027(n+1))`
-/

namespace A045075.P7160827816510223989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (3 * A045027 (n + 1)).toNat

end

end A045075.P7160827816510223989

/-!
# A045076: Numbers whose base-4 representation contains exactly three 0's and no 3's.

The programs for A045076, there is no canonical definition to state claims against.
-/

/-! ## A045076.P16709441718364900937

`(A045052(n+1)+A045028(n+1))/3`
-/

namespace A045076.P16709441718364900937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045052 (n + 1) + A045028 (n + 1) : ℚ) / 3

end

end A045076.P16709441718364900937

/-! ## A045076.P14765433813278166506

`A023717(A043323(n+1))`
-/

namespace A045076.P14765433813278166506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A043323 (n + 1)).toNat

end

end A045076.P14765433813278166506

/-! ## A045076.P8879545303112330288

`A023717(eq[3, A077267(n)])`
-/

namespace A045076.P8879545303112330288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045076.P8879545303112330288

/-! ## A045076.P18326102278680697055

`∩[A031464(n+1), A023717(n)]`
-/

namespace A045076.P18326102278680697055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031464 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045076.P18326102278680697055

/-! ## A045076.P1456486411933343913

`∩[A023708(n+1), A023717(n)]`
-/

namespace A045076.P1456486411933343913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045076.P1456486411933343913

/-! ## A045076.P16226141536258818167

`∩[A023708(n+1), A031464(n+1)]`
-/

namespace A045076.P16226141536258818167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045076.P16226141536258818167

/-! ## A045076.P18232776887971949656

`A004468(A045028(n+1))`
-/

namespace A045076.P18232776887971949656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045028 (n + 1)).toNat

end

end A045076.P18232776887971949656

/-! ## A045076.P11961520828628778903

`A163241(A045052(n+1))`
-/

namespace A045076.P11961520828628778903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045052 (n + 1)).toNat

end

end A045076.P11961520828628778903

/-! ## A045076.P4482651152891296729

`record[A174571(A045081(n+1))]`
-/

namespace A045076.P4482651152891296729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A045081 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045076.P4482651152891296729

/-!
# A045077: Numbers whose base-4 representation contains exactly three 0's and one 3.

The programs for A045077, the canonical program `A045077.P18224216252546591222` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045077 has offset 1).

The definition of A045077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1874 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045077.P11448712404614601155

`∩[A023708(n+1), A031463(n+1)]`
-/

namespace A045077.P11448712404614601155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045077.P11448712404614601155

namespace A045077

/-- `∩[A023708(n+1), A031463(n+1)]` -/
def P11448712404614601155.Spec : Prop :=
  ∀ n, (P11448712404614601155.a n : ℤ) = A045077 (n + 1)

end A045077

/-! ## A045077.P18224216252546591222

`∩[A023708(n+1), A023718(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045077

/-- `∩[A023708(n+1), A023718(n+1)]` -/
def P18224216252546591222.Spec : Prop :=
  ∀ n, (P18224216252546591222.a n : ℤ) = A045077 (n + 1)

theorem P18224216252546591222.correct : P18224216252546591222.Spec := by
  intro n
  simp only [A045077, Nat.add_sub_cancel]

end A045077

/-! ## A045077.P17943213692113974189

`∩[A023718(n+1), A031463(n+1)]`
-/

namespace A045077.P17943213692113974189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045077.P17943213692113974189

namespace A045077

/-- `∩[A023718(n+1), A031463(n+1)]` -/
def P17943213692113974189.Spec : Prop :=
  ∀ n, (P17943213692113974189.a n : ℤ) = A045077 (n + 1)

end A045077

/-! ## A045077.P12200777795498632844

`record[A032742(A032742(A045082(n+1)))]`
-/

namespace A045077.P12200777795498632844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A032742 (A045082 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045077.P12200777795498632844

namespace A045077

/-- `record[A032742(A032742(A045082(n+1)))]` -/
def P12200777795498632844.Spec : Prop :=
  ∀ n, P12200777795498632844.a n = A045077 (n + 1)

end A045077

/-! ## A045077.P15658753996498948703

`A023708(3*A032559(n+1))`
-/

namespace A045077.P15658753996498948703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (3 * A032559 (n + 1)).toNat

end

end A045077.P15658753996498948703

namespace A045077

/-- `A023708(3*A032559(n+1))` -/
def P15658753996498948703.Spec : Prop :=
  ∀ n, P15658753996498948703.a n = A045077 (n + 1)

end A045077

/-!
# A045078: Numbers whose base-4 representation contains exactly three 0's and two 3's.

The programs for A045078, the canonical program `A045078.P1198269860631317732` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045078 has offset 1).

The definition of A045078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045078.P1198269860631317732

`∩[A023708(n+1), A031462(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045078

/-- `∩[A023708(n+1), A031462(n+1)]` -/
def P1198269860631317732.Spec : Prop :=
  ∀ n, (P1198269860631317732.a n : ℤ) = A045078 (n + 1)

theorem P1198269860631317732.correct : P1198269860631317732.Spec := by
  intro n
  simp only [A045078, Nat.add_sub_cancel]

end A045078

/-! ## A045078.P6464654352086990603

`∩[A023708(n+1), A023719(n+1)]`
-/

namespace A045078.P6464654352086990603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045078.P6464654352086990603

namespace A045078

/-- `∩[A023708(n+1), A023719(n+1)]` -/
def P6464654352086990603.Spec : Prop :=
  ∀ n, (P6464654352086990603.a n : ℤ) = A045078 (n + 1)

end A045078

/-!
# A045079: Numbers whose base-4 representation contains exactly three 0's and three 3's.

The programs for A045079, there is no canonical definition to state claims against.
-/

/-! ## A045079.P5054376325121835731

`∩[A023708(n+1), A023720(n+1)]`
-/

namespace A045079.P5054376325121835731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045079.P5054376325121835731

/-! ## A045079.P5283290317732161026

`filter[A045052(2*(n+1)), A115517(#)]`
-/

namespace A045079.P5283290317732161026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045052 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A045079.P5283290317732161026

/-! ## A045079.P3948000059696986455

`A163241(A163241(A163241(A045055(n+1))))`
-/

namespace A045079.P3948000059696986455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (A163241 (A045055 (n + 1)).toNat).toNat).toNat

end

end A045079.P3948000059696986455

/-! ## A045079.P1025377504800035860

`A001196(eq[35, A073137(n)])`
-/

namespace A045079.P1025377504800035860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045079.P1025377504800035860

/-! ## A045079.P2813857928279366093

`A001281(3*A045055(n+1))`
-/

namespace A045079.P2813857928279366093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (3 * A045055 (n + 1)).toNat

end

end A045079.P2813857928279366093

/-!
# A045080: Numbers whose base-4 representation contains exactly three 0's and four 3's.

The programs for A045080, there is no canonical definition to state claims against.
-/

/-! ## A045080.P11143754386568445214

`A004468(A045032(n+1))`
-/

namespace A045080.P11143754386568445214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045032 (n + 1)).toNat

end

end A045080.P11143754386568445214

/-! ## A045080.P17068343295967214269

`A006015(A045056(n+1))`
-/

namespace A045080.P17068343295967214269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045056 (n + 1)).toNat

end

end A045080.P17068343295967214269

/-! ## A045080.P17872762722600297859

`A006015(2*A045032(n+1))`
-/

namespace A045080.P17872762722600297859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (2 * A045032 (n + 1)).toNat

end

end A045080.P17872762722600297859

/-! ## A045080.P15885392103060513854

`A302042(6*A045032(n+1))`
-/

namespace A045080.P15885392103060513854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (6 * A045032 (n + 1)).toNat

end

end A045080.P15885392103060513854

/-! ## A045080.P18402094864303699248

`3*∩[A038472(n+1), A045052(n+1)]`
-/

namespace A045080.P18402094864303699248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045080.P18402094864303699248

/-!
# A045081: Numbers whose base-4 representation contains exactly four 0's and no 3's.

The programs for A045081, the canonical program `A045081.P14565639828916206553` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045081 has offset 1).

The definition of A045081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045081.P14565639828916206553

`(A045057(n+1)+A045033(n+1))/3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A045081

/-- `(A045057(n+1)+A045033(n+1))/3` -/
def P14565639828916206553.Spec : Prop :=
  ∀ n, P14565639828916206553.a n = (A045081 (n + 1) : ℚ)

end A045081

/-! ## A045081.P8082551603467855197

`∩[A031465(n+1), A043336(n+1)]`
-/

namespace A045081.P8082551603467855197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045081.P8082551603467855197

namespace A045081

/-- `∩[A031465(n+1), A043336(n+1)]` -/
def P8082551603467855197.Spec : Prop :=
  ∀ n, (P8082551603467855197.a n : ℤ) = A045081 (n + 1)

end A045081

/-! ## A045081.P9248705977985993867

`A023717(A043324(n+1))`
-/

namespace A045081.P9248705977985993867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A043324 (n + 1)).toNat

end

end A045081.P9248705977985993867

namespace A045081

/-- `A023717(A043324(n+1))` -/
def P9248705977985993867.Spec : Prop :=
  ∀ n, P9248705977985993867.a n = A045081 (n + 1)

end A045081

/-! ## A045081.P16783677232532874953

`A023717(eq[4, A077267(n)])`
-/

namespace A045081.P16783677232532874953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A045081.P16783677232532874953

namespace A045081

/-- `A023717(eq[4, A077267(n)])` -/
def P16783677232532874953.Spec : Prop :=
  ∀ n, P16783677232532874953.a n = A045081 (n + 1)

end A045081

/-! ## A045081.P108387646134811072

`∩[A043336(n+1), A023717(n)]`
-/

namespace A045081.P108387646134811072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045081.P108387646134811072

namespace A045081

/-- `∩[A043336(n+1), A023717(n)]` -/
def P108387646134811072.Spec : Prop :=
  ∀ n, (P108387646134811072.a n : ℤ) = A045081 (n + 1)

end A045081

/-! ## A045081.P13251189813507055689

`A004468(A045033(n+1))`
-/

namespace A045081.P13251189813507055689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045033 (n + 1)).toNat

end

end A045081.P13251189813507055689

namespace A045081

/-- `A004468(A045033(n+1))` -/
def P13251189813507055689.Spec : Prop :=
  ∀ n, P13251189813507055689.a n = A045081 (n + 1)

end A045081

/-! ## A045081.P185251134586508806

`and(A004468(A045057(n+1)), A045057(n+1))`
-/

namespace A045081.P185251134586508806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004468 (A045057 (n + 1)).toNat) (A045057 (n + 1))

end

end A045081.P185251134586508806

namespace A045081

/-- `and(A004468(A045057(n+1)), A045057(n+1))` -/
def P185251134586508806.Spec : Prop :=
  ∀ n, P185251134586508806.a n = A045081 (n + 1)

end A045081

/-! ## A045081.P14931977988833109947

`xor(A045033(n+1), A048647(A045057(n+1)))`
-/

namespace A045081.P14931977988833109947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A045033 (n + 1)) (A048647 (A045057 (n + 1)).toNat)

end

end A045081.P14931977988833109947

namespace A045081

/-- `xor(A045033(n+1), A048647(A045057(n+1)))` -/
def P14931977988833109947.Spec : Prop :=
  ∀ n, P14931977988833109947.a n = A045081 (n + 1)

end A045081

/-! ## A045081.P12411324567064903290

`A163241(A045057(n+1))`
-/

namespace A045081.P12411324567064903290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045057 (n + 1)).toNat

end

end A045081.P12411324567064903290

namespace A045081

/-- `A163241(A045057(n+1))` -/
def P12411324567064903290.Spec : Prop :=
  ∀ n, P12411324567064903290.a n = A045081 (n + 1)

end A045081

/-!
# A045082: Numbers whose base-4 representation contains exactly four 0's and one 3.

The programs for A045082, the canonical program `A045082.P11121397618110216211` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045082 has offset 1).

The definition of A045082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045082.P11121397618110216211

`∩[A031464(n+1), A043336(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A045082

/-- `∩[A031464(n+1), A043336(n+1)]` -/
def P11121397618110216211.Spec : Prop :=
  ∀ n, (P11121397618110216211.a n : ℤ) = A045082 (n + 1)

theorem P11121397618110216211.correct : P11121397618110216211.Spec := by
  intro n
  simp only [A045082, Nat.add_sub_cancel]

end A045082

/-! ## A045082.P13049674119840905706

`A043336(Δ[A043317(n+1)²]+n)`
-/

namespace A045082.P13049674119840905706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043317 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043336 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A045082.P13049674119840905706

namespace A045082

/-- `A043336(Δ[A043317(n+1)²]+n)` -/
def P13049674119840905706.Spec : Prop :=
  ∀ n, P13049674119840905706.a n = A045082 (n + 1)

end A045082

/-! ## A045082.P4747233081766472998

`A043336(3*(n+1))^Δ[A043317(n+1)]`
-/

namespace A045082.P4747233081766472998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043317 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043336 (3 * (n + 1)) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A045082.P4747233081766472998

namespace A045082

/-- `A043336(3*(n+1))^Δ[A043317(n+1)]` -/
def P4747233081766472998.Spec : Prop :=
  ∀ n, P4747233081766472998.a n = (A045082 (n + 1) : ℚ)

end A045082

/-! ## A045082.P15913853297592841091

`A043336(3*(n+1))^Δ[A043318(n+2)]`
-/

namespace A045082.P15913853297592841091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043318 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043336 (3 * (n + 1)) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A045082.P15913853297592841091

namespace A045082

/-- `A043336(3*(n+1))^Δ[A043318(n+2)]` -/
def P15913853297592841091.Spec : Prop :=
  ∀ n, P15913853297592841091.a n = (A045082 (n + 1) : ℚ)

end A045082

/-! ## A045082.P2648226708651467294

`A043336(3*(n+1))^A014963(A043333(2*n+3))`
-/

namespace A045082.P2648226708651467294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043336 (3 * (n + 1)) : ℚ) ^ (A014963 (A043333 (2 * n + 3)).toNat : ℤ)

end

end A045082.P2648226708651467294

namespace A045082

/-- `A043336(3*(n+1))^A014963(A043333(2*n+3))` -/
def P2648226708651467294.Spec : Prop :=
  ∀ n, P2648226708651467294.a n = (A045082 (n + 1) : ℚ)

end A045082

/-!
# A045083: Numbers whose base-4 representation contains exactly four 0's and two 3's.

The programs for A045083, there is no canonical definition to state claims against.
-/

/-! ## A045083.P17920657123244824384

`A163241(A163241(A163241(A045059(n+1))))`
-/

namespace A045083.P17920657123244824384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A163241 (A163241 (A045059 (n + 1)).toNat).toNat).toNat

end

end A045083.P17920657123244824384

/-!
# A045084: Numbers whose base-4 representation contains exactly four 0's and three 3's.

The programs for A045084, there is no canonical definition to state claims against.
-/

/-! ## A045084.P3711090755720079201

`A004468(A045036(n+1))`
-/

namespace A045084.P3711090755720079201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A045036 (n + 1)).toNat

end

end A045084.P3711090755720079201

/-! ## A045084.P15998721891410436743

`A006015(A045060(n+1))`
-/

namespace A045084.P15998721891410436743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045060 (n + 1)).toNat

end

end A045084.P15998721891410436743

/-! ## A045084.P13842299598242129423

`A006015(2*A045036(n+1))`
-/

namespace A045084.P13842299598242129423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (2 * A045036 (n + 1)).toNat

end

end A045084.P13842299598242129423

/-! ## A045084.P313747328652860620

`A057300(3*A045036(n+1))`
-/

namespace A045084.P313747328652860620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (3 * A045036 (n + 1)).toNat

end

end A045084.P313747328652860620

/-! ## A045084.P10788105885384213568

`3*A045036(A187829(n+1))`
-/

namespace A045084.P10788105885384213568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045036 (A187829 (n + 1)).toNat

end

end A045084.P10788105885384213568

/-!
# A045085: Numbers whose base-4 representation contains exactly four 0's and four 3's.

The programs for A045085, there is no canonical definition to state claims against.
-/

/-! ## A045085.P17420692058089591372

`A006288(A045013(n+1))`
-/

namespace A045085.P17420692058089591372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A045013 (n + 1)).toNat

end

end A045085.P17420692058089591372

/-! ## A045085.P18145011962413079490

`A163356(A045061(n+1))`
-/

namespace A045085.P18145011962413079490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A045061 (n + 1)).toNat

end

end A045085.P18145011962413079490

/-! ## A045085.P1930688245912474914

`A269174(A045037(n+1))`
-/

namespace A045085.P1930688245912474914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A045037 (n + 1)).toNat

end

end A045085.P1930688245912474914

/-! ## A045085.P18148832132429445548

`A163356(2*A045037(n+1))`
-/

namespace A045085.P18148832132429445548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (2 * A045037 (n + 1)).toNat

end

end A045085.P18148832132429445548

/-! ## A045085.P11766490641426823298

`A269174(A045061(n+1)/2)`
-/

namespace A045085.P11766490641426823298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (SequenceMachineLib.roundAway ((A045061 (n + 1) : ℚ) / 2)).toNat

end

end A045085.P11766490641426823298

/-!
# A045086: Numbers whose base-4 representation contains no 1's and exactly one 2.

The programs for A045086, the canonical program `A045086.P17864132043894525623` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045086 has offset 1).

The definition of A045086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045086.P17864132043894525623

`A023709(A023692(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045086

/-- `A023709(A023692(n+1)+1)` -/
def P17864132043894525623.Spec : Prop :=
  ∀ n, P17864132043894525623.a n = A045086 (n + 1)

theorem P17864132043894525623.correct : P17864132043894525623.Spec := by
  intro n
  simp only [A045086, Nat.add_sub_cancel]

end A045086

/-! ## A045086.P11452968544008130838

`A023709(eq[1, A062756(n)]+1)`
-/

namespace A045086.P11452968544008130838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A045086.P11452968544008130838

namespace A045086

/-- `A023709(eq[1, A062756(n)]+1)` -/
def P11452968544008130838.Spec : Prop :=
  ∀ n, P11452968544008130838.a n = A045086 (n + 1)

end A045086

/-! ## A045086.P14068300359704271037

`∩[A023709(n+1), A391733(n+1)]`
-/

namespace A045086.P14068300359704271037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045086.P14068300359704271037

namespace A045086

/-- `∩[A023709(n+1), A391733(n+1)]` -/
def P14068300359704271037.Spec : Prop :=
  ∀ n, (P14068300359704271037.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P9582287018829433132

`eq[A292371(n)², A065359(n+1)]`
-/

namespace A045086.P9582287018829433132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045086.P9582287018829433132

namespace A045086

/-- `eq[A292371(n)², A065359(n+1)]` -/
def P9582287018829433132.Spec : Prop :=
  ∀ n, (P9582287018829433132.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P368618364226163975

`record[(3*n+2)%A277549(n+2)]`
-/

namespace A045086.P368618364226163975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n + 2 : ℤ) (A277549 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045086.P368618364226163975

namespace A045086

/-- `record[(3*n+2)%A277549(n+2)]` -/
def P368618364226163975.Spec : Prop :=
  ∀ n, P368618364226163975.a n = A045086 (n + 1)

end A045086

/-! ## A045086.P6831309110207141879

`A006015(A045114(n+1))`
-/

namespace A045086.P6831309110207141879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045114 (n + 1)).toNat

end

end A045086.P6831309110207141879

namespace A045086

/-- `A006015(A045114(n+1))` -/
def P6831309110207141879.Spec : Prop :=
  ∀ n, P6831309110207141879.a n = A045086 (n + 1)

end A045086

/-! ## A045086.P8504248981000974345

`A057300(A045090(n+1))`
-/

namespace A045086.P8504248981000974345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045090 (n + 1)).toNat

end

end A045086.P8504248981000974345

namespace A045086

/-- `A057300(A045090(n+1))` -/
def P8504248981000974345.Spec : Prop :=
  ∀ n, P8504248981000974345.a n = A045086 (n + 1)

end A045086

/-! ## A045086.P12632225411294958903

`record[A006015(A023710(n+1))]`
-/

namespace A045086.P12632225411294958903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A023710 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045086.P12632225411294958903

namespace A045086

/-- `record[A006015(A023710(n+1))]` -/
def P12632225411294958903.Spec : Prop :=
  ∀ n, P12632225411294958903.a n = A045086 (n + 1)

end A045086

/-! ## A045086.P18231375498817425459

`∩[A023709(n+1), A023714(n+1)]`
-/

namespace A045086.P18231375498817425459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045086.P18231375498817425459

namespace A045086

/-- `∩[A023709(n+1), A023714(n+1)]` -/
def P18231375498817425459.Spec : Prop :=
  ∀ n, (P18231375498817425459.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P16490121514357189463

`∩[A023714(n+1), A139370(n+1)]`
-/

namespace A045086.P16490121514357189463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045086.P16490121514357189463

namespace A045086

/-- `∩[A023714(n+1), A139370(n+1)]` -/
def P16490121514357189463.Spec : Prop :=
  ∀ n, (P16490121514357189463.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P5056917850453231498

`eq[exp(A160381(n)), A160382(n)]`
-/

namespace A045086.P5056917850453231498
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045086.P5056917850453231498

namespace A045086

/-- `eq[exp(A160381(n)), A160382(n)]` -/
def P5056917850453231498.Spec : Prop :=
  ∀ n, (P5056917850453231498.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P9219059390344140340

`eq[3, A319652(A319652(n)+1)]`
-/

namespace A045086.P9219059390344140340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A319652 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045086.P9219059390344140340

namespace A045086

/-- `eq[3, A319652(A319652(n)+1)]` -/
def P9219059390344140340.Spec : Prop :=
  ∀ n, (P9219059390344140340.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P3862141450961767491

`eq[A065359(n)², cos(A160381(n))]`
-/

namespace A045086.P3862141450961767491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A160381 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A045086.P3862141450961767491

namespace A045086

/-- `eq[A065359(n)², cos(A160381(n))]` -/
def P3862141450961767491.Spec : Prop :=
  ∀ n, (P3862141450961767491.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P6818028881885564326

`eq[cos(A160381(n)), A065359(2*n)]`
-/

namespace A045086.P6818028881885564326
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A160381 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045086.P6818028881885564326

namespace A045086

/-- `eq[cos(A160381(n)), A065359(2*n)]` -/
def P6818028881885564326.Spec : Prop :=
  ∀ n, (P6818028881885564326.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P15372248350531321350

`lt[A160381(n), A209229(A292372(n))]`
-/

namespace A045086.P15372248350531321350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045086.P15372248350531321350

namespace A045086

/-- `lt[A160381(n), A209229(A292372(n))]` -/
def P15372248350531321350.Spec : Prop :=
  ∀ n, (P15372248350531321350.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P10604164602328236645

`eq[1, A000120(A160382(n)*A309952(n))]`
-/

namespace A045086.P10604164602328236645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A160382 n * A309952 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045086.P10604164602328236645

namespace A045086

/-- `eq[1, A000120(A160382(n)*A309952(n))]` -/
def P10604164602328236645.Spec : Prop :=
  ∀ n, (P10604164602328236645.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P17723240385372775532

`eq[2, A338854(A048647(n))]`
-/

namespace A045086.P17723240385372775532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045086.P17723240385372775532

namespace A045086

/-- `eq[2, A338854(A048647(n))]` -/
def P17723240385372775532.Spec : Prop :=
  ∀ n, (P17723240385372775532.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P13084004585538198663

`eq[3, A338854(A006015(n))]`
-/

namespace A045086.P13084004585538198663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045086.P13084004585538198663

namespace A045086

/-- `eq[3, A338854(A006015(n))]` -/
def P13084004585538198663.Spec : Prop :=
  ∀ n, (P13084004585538198663.a n : ℤ) = A045086 (n + 1)

end A045086

/-! ## A045086.P5527336083207913737

`eq[A139351(A004468(n))+n, A061800(n)]`
-/

namespace A045086.P5527336083207913737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A004468 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045086.P5527336083207913737

namespace A045086

/-- `eq[A139351(A004468(n))+n, A061800(n)]` -/
def P5527336083207913737.Spec : Prop :=
  ∀ n, (P5527336083207913737.a n : ℤ) = A045086 (n + 1)

end A045086

/-!
# A045087: Numbers whose base-4 representation contains no 1's and exactly two 2's.

The programs for A045087, the canonical program `A045087.P3584374173035891200` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045087 has offset 1).

The definition of A045087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045087.P14935469155107032310

`A023709(A023693(n+1)+1)`
-/

namespace A045087.P14935469155107032310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023693 (n + 1) + 1).toNat

end

end A045087.P14935469155107032310

namespace A045087

/-- `A023709(A023693(n+1)+1)` -/
def P14935469155107032310.Spec : Prop :=
  ∀ n, P14935469155107032310.a n = A045087 (n + 1)

end A045087

/-! ## A045087.P3584374173035891200

`A023709(eq[2, A062756(n)]+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045087

/-- `A023709(eq[2, A062756(n)]+1)` -/
def P3584374173035891200.Spec : Prop :=
  ∀ n, P3584374173035891200.a n = A045087 (n + 1)

theorem P3584374173035891200.correct : P3584374173035891200.Spec := by
  intro n
  simp only [A045087, Nat.add_sub_cancel]

end A045087

/-! ## A045087.P8733299739425049916

`A006015(A045119(n+1))`
-/

namespace A045087.P8733299739425049916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045119 (n + 1)).toNat

end

end A045087.P8733299739425049916

namespace A045087

/-- `A006015(A045119(n+1))` -/
def P8733299739425049916.Spec : Prop :=
  ∀ n, P8733299739425049916.a n = A045087 (n + 1)

end A045087

/-! ## A045087.P5768874117064034027

`A057300(A045095(n+1))`
-/

namespace A045087.P5768874117064034027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045095 (n + 1)).toNat

end

end A045087.P5768874117064034027

namespace A045087

/-- `A057300(A045095(n+1))` -/
def P5768874117064034027.Spec : Prop :=
  ∀ n, P5768874117064034027.a n = A045087 (n + 1)

end A045087

/-! ## A045087.P8231984447700104158

`record[A006015(A023711(n+1))]`
-/

namespace A045087.P8231984447700104158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A023711 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045087.P8231984447700104158

namespace A045087

/-- `record[A006015(A023711(n+1))]` -/
def P8231984447700104158.Spec : Prop :=
  ∀ n, P8231984447700104158.a n = A045087 (n + 1)

end A045087

/-! ## A045087.P15562040607443465165

`∩[A023709(n+1), A023715(n+1)]`
-/

namespace A045087.P15562040607443465165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045087.P15562040607443465165

namespace A045087

/-- `∩[A023709(n+1), A023715(n+1)]` -/
def P15562040607443465165.Spec : Prop :=
  ∀ n, (P15562040607443465165.a n : ℤ) = A045087 (n + 1)

end A045087

/-! ## A045087.P16208468527222600210

`∩[A023709(2*n+1), A267027(2*(n+1))]`
-/

namespace A045087.P16208468527222600210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267027 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045087.P16208468527222600210

namespace A045087

/-- `∩[A023709(2*n+1), A267027(2*(n+1))]` -/
def P16208468527222600210.Spec : Prop :=
  ∀ n, (P16208468527222600210.a n : ℤ) = A045087 (n + 1)

end A045087

/-! ## A045087.P15681774348309498489

`A008486(A045119(n+1))-A045095(n+1)`
-/

namespace A045087.P15681774348309498489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045119 (n + 1)).toNat - A045095 (n + 1)

end

end A045087.P15681774348309498489

namespace A045087

/-- `A008486(A045119(n+1))-A045095(n+1)` -/
def P15681774348309498489.Spec : Prop :=
  ∀ n, P15681774348309498489.a n = A045087 (n + 1)

end A045087

/-! ## A045087.P7215660040003635791

`eq[exp(A160381(n))+1, A160382(n)]`
-/

namespace A045087.P7215660040003635791
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045087.P7215660040003635791

namespace A045087

/-- `eq[exp(A160381(n))+1, A160382(n)]` -/
def P7215660040003635791.Spec : Prop :=
  ∀ n, (P7215660040003635791.a n : ℤ) = A045087 (n + 1)

end A045087

/-! ## A045087.P1267106696305178992

`eq[2, A338854(A268444(n))+A160381(n)]`
-/

namespace A045087.P1267106696305178992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A268444 n).toNat + A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045087.P1267106696305178992

namespace A045087

/-- `eq[2, A338854(A268444(n))+A160381(n)]` -/
def P1267106696305178992.Spec : Prop :=
  ∀ n, (P1267106696305178992.a n : ℤ) = A045087 (n + 1)

end A045087

/-! ## A045087.P12235363127636303218

`eq[2, A338854(A048647(n))-2]`
-/

namespace A045087.P12235363127636303218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A048647 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045087.P12235363127636303218

namespace A045087

/-- `eq[2, A338854(A048647(n))-2]` -/
def P12235363127636303218.Spec : Prop :=
  ∀ n, (P12235363127636303218.a n : ℤ) = A045087 (n + 1)

end A045087

/-! ## A045087.P5544712283063248618

`record[A054576(A045088(n+1)-2)]`
-/

namespace A045087.P5544712283063248618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (A045088 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045087.P5544712283063248618

namespace A045087

/-- `record[A054576(A045088(n+1)-2)]` -/
def P5544712283063248618.Spec : Prop :=
  ∀ n, P5544712283063248618.a n = A045087 (n + 1)

end A045087

/-!
# A045088: Numbers whose base-4 representation contains no 1's and exactly three 2's.

The programs for A045088, there is no canonical definition to state claims against.
-/

/-! ## A045088.P2984946018088000687

`3*A045124(n+1)-A045100(n+1)`
-/

namespace A045088.P2984946018088000687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A045124 (n + 1) - A045100 (n + 1)

end

end A045088.P2984946018088000687

/-! ## A045088.P11077952664433645381

`A023709(A023694(n+1)+1)`
-/

namespace A045088.P11077952664433645381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (A023694 (n + 1) + 1).toNat

end

end A045088.P11077952664433645381

/-! ## A045088.P12267605130462935403

`∩[A023709(n+1), A180963(n+1)]`
-/

namespace A045088.P12267605130462935403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045088.P12267605130462935403

/-! ## A045088.P5846385479554493479

`∩[A023709(n+1), A023716(n+1)]`
-/

namespace A045088.P5846385479554493479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045088.P5846385479554493479

/-! ## A045088.P2309681170121249513

`∩[A023716(n+1), A180963(n+1)]`
-/

namespace A045088.P2309681170121249513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045088.P2309681170121249513

/-! ## A045088.P2056921458952493863

`A006015(A045124(n+1))`
-/

namespace A045088.P2056921458952493863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045124 (n + 1)).toNat

end

end A045088.P2056921458952493863

/-! ## A045088.P7368907813789858565

`A057300(A045100(n+1))`
-/

namespace A045088.P7368907813789858565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045100 (n + 1)).toNat

end

end A045088.P7368907813789858565

/-! ## A045088.P318069616654568067

`record[A006015(A023712(n+1))]`
-/

namespace A045088.P318069616654568067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A023712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045088.P318069616654568067

/-! ## A045088.P16773124239434051602

`A008486(A045124(n+1))-A045100(n+1)`
-/

namespace A045088.P16773124239434051602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045124 (n + 1)).toNat - A045100 (n + 1)

end

end A045088.P16773124239434051602

/-! ## A045088.P1519737713549001145

`eq[exp(A160381(n))+2, A160382(n)]`
-/

namespace A045088.P1519737713549001145
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160381 n : ℝ) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045088.P1519737713549001145

/-! ## A045088.P8542846640226063420

`filter[A023709(2*(n+1)), A079978(#)]`
-/

namespace A045088.P8542846640226063420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A045088.P8542846640226063420

/-! ## A045088.P18261503117421858276

`filter[A023709(2*(n+1)), A173857(#)]`
-/

namespace A045088.P18261503117421858276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A045088.P18261503117421858276

/-! ## A045088.P2503635742073986107

`filter[A023709(2*(n+1)), A329680(#)]`
-/

namespace A045088.P2503635742073986107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A045088.P2503635742073986107

/-! ## A045088.P14028212456266601722

`eq[3, A338854(A048647(n))-5]`
-/

namespace A045088.P14028212456266601722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A048647 n).toNat - 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045088.P14028212456266601722

/-!
# A045089: Numbers whose base-4 representation contains no 1's and exactly four 2's.

The programs for A045089, the canonical program `A045089.P4664350553262061469` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045089 has offset 1).

The definition of A045089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045089.P4664350553262061469

`A023709(A023695(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A045089

/-- `A023709(A023695(n+1)+1)` -/
def P4664350553262061469.Spec : Prop :=
  ∀ n, P4664350553262061469.a n = A045089 (n + 1)

theorem P4664350553262061469.correct : P4664350553262061469.Spec := by
  intro n
  simp only [A045089, Nat.add_sub_cancel]

end A045089

/-! ## A045089.P2070889275171619804

`∩[A023709(n+1), A043344(n+1)]`
-/

namespace A045089.P2070889275171619804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045089.P2070889275171619804

namespace A045089

/-- `∩[A023709(n+1), A043344(n+1)]` -/
def P2070889275171619804.Spec : Prop :=
  ∀ n, (P2070889275171619804.a n : ℤ) = A045089 (n + 1)

end A045089

/-! ## A045089.P14166536877527833945

`∩[A023709(n+1), A180963(n+1)-1]`
-/

namespace A045089.P14166536877527833945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045089.P14166536877527833945

namespace A045089

/-- `∩[A023709(n+1), A180963(n+1)-1]` -/
def P14166536877527833945.Spec : Prop :=
  ∀ n, (P14166536877527833945.a n : ℤ) = A045089 (n + 1)

end A045089

/-! ## A045089.P587488860841413588

`A006015(A045129(n+1))`
-/

namespace A045089.P587488860841413588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A045129 (n + 1)).toNat

end

end A045089.P587488860841413588

namespace A045089

/-- `A006015(A045129(n+1))` -/
def P587488860841413588.Spec : Prop :=
  ∀ n, P587488860841413588.a n = A045089 (n + 1)

end A045089

/-! ## A045089.P5940064092888432878

`A057300(A045105(n+1))`
-/

namespace A045089.P5940064092888432878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045105 (n + 1)).toNat

end

end A045089.P5940064092888432878

namespace A045089

/-- `A057300(A045105(n+1))` -/
def P5940064092888432878.Spec : Prop :=
  ∀ n, P5940064092888432878.a n = A045089 (n + 1)

end A045089

/-! ## A045089.P12332730991445148992

`record[A006015(A043340(n+1))]`
-/

namespace A045089.P12332730991445148992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (A043340 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045089.P12332730991445148992

namespace A045089

/-- `record[A006015(A043340(n+1))]` -/
def P12332730991445148992.Spec : Prop :=
  ∀ n, P12332730991445148992.a n = A045089 (n + 1)

end A045089

/-! ## A045089.P10365392761293366582

`A008486(A045129(n+1))-A045105(n+1)`
-/

namespace A045089.P10365392761293366582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045129 (n + 1)).toNat - A045105 (n + 1)

end

end A045089.P10365392761293366582

namespace A045089

/-- `A008486(A045129(n+1))-A045105(n+1)` -/
def P10365392761293366582.Spec : Prop :=
  ∀ n, P10365392761293366582.a n = A045089 (n + 1)

end A045089

/-! ## A045089.P7055194453733119789

`A008486(A045129(n+1))-A023713(A023695(n+1)+1)`
-/

namespace A045089.P7055194453733119789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045129 (n + 1)).toNat - A023713 (A023695 (n + 1) + 1).toNat

end

end A045089.P7055194453733119789

namespace A045089

/-- `A008486(A045129(n+1))-A023713(A023695(n+1)+1)` -/
def P7055194453733119789.Spec : Prop :=
  ∀ n, P7055194453733119789.a n = A045089 (n + 1)

end A045089

/-! ## A045089.P15366466275663225507

`A329180(or(char[2], A045105(n+1)))`
-/

namespace A045089.P15366466275663225507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A045105 (n + 1))).toNat

end

end A045089.P15366466275663225507

namespace A045089

/-- `A329180(or(char[2], A045105(n+1)))` -/
def P15366466275663225507.Spec : Prop :=
  ∀ n, P15366466275663225507.a n = A045089 (n + 1)

end A045089

/-! ## A045089.P17404605528280862331

`A329180(A007318(∑[n])*A045105(n+1))`
-/

namespace A045089.P17404605528280862331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329180 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A045105 (n + 1)).toNat

end

end A045089.P17404605528280862331

namespace A045089

/-- `A329180(A007318(∑[n])*A045105(n+1))` -/
def P17404605528280862331.Spec : Prop :=
  ∀ n, P17404605528280862331.a n = A045089 (n + 1)

end A045089

/-!
# A045090: Numbers whose base-4 representation contains exactly one 1 and no 2's.

The programs for A045090, the canonical program `A045090.P11088706688697243182` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045090 has offset 1).

The definition of A045090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045090.P11088706688697243182

`A023713(A023692(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045090

/-- `A023713(A023692(n+1)+1)` -/
def P11088706688697243182.Spec : Prop :=
  ∀ n, P11088706688697243182.a n = A045090 (n + 1)

theorem P11088706688697243182.correct : P11088706688697243182.Spec := by
  intro n
  simp only [A045090, Nat.add_sub_cancel]

end A045090

/-! ## A045090.P9913818187782789221

`∩[A023713(n+1), A391733(n+1)]`
-/

namespace A045090.P9913818187782789221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045090.P9913818187782789221

namespace A045090

/-- `∩[A023713(n+1), A391733(n+1)]` -/
def P9913818187782789221.Spec : Prop :=
  ∀ n, (P9913818187782789221.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P6771095815473742174

`∩[A023710(n+1), A023713(n+1)]`
-/

namespace A045090.P6771095815473742174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045090.P6771095815473742174

namespace A045090

/-- `∩[A023710(n+1), A023713(n+1)]` -/
def P6771095815473742174.Spec : Prop :=
  ∀ n, (P6771095815473742174.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P3014229837378255707

`∩[A023710(n+1), A139373(n+1)]`
-/

namespace A045090.P3014229837378255707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045090.P3014229837378255707

namespace A045090

/-- `∩[A023710(n+1), A139373(n+1)]` -/
def P3014229837378255707.Spec : Prop :=
  ∀ n, (P3014229837378255707.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P4231577266908005434

`A057300(A045086(n+1))`
-/

namespace A045090.P4231577266908005434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045086 (n + 1)).toNat

end

end A045090.P4231577266908005434

namespace A045090

/-- `A057300(A045086(n+1))` -/
def P4231577266908005434.Spec : Prop :=
  ∀ n, P4231577266908005434.a n = A045090 (n + 1)

end A045090

/-! ## A045090.P14518497228644912265

`A163241(A045114(n+1))`
-/

namespace A045090.P14518497228644912265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045114 (n + 1)).toNat

end

end A045090.P14518497228644912265

namespace A045090

/-- `A163241(A045114(n+1))` -/
def P14518497228644912265.Spec : Prop :=
  ∀ n, P14518497228644912265.a n = A045090 (n + 1)

end A045090

/-! ## A045090.P17059562391228400574

`eq[1, A114327(A319652(n))]`
-/

namespace A045090.P17059562391228400574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P17059562391228400574

namespace A045090

/-- `eq[1, A114327(A319652(n))]` -/
def P17059562391228400574.Spec : Prop :=
  ∀ n, (P17059562391228400574.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P10639356414150157561

`eq[exp(A160382(n)), A160381(n)]`
-/

namespace A045090.P10639356414150157561
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160382 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045090.P10639356414150157561

namespace A045090

/-- `eq[exp(A160382(n)), A160381(n)]` -/
def P10639356414150157561.Spec : Prop :=
  ∀ n, (P10639356414150157561.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P15450333553667479744

`eq[2, A030103(A319652(n)+1)]`
-/

namespace A045090.P15450333553667479744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (A319652 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P15450333553667479744

namespace A045090

/-- `eq[2, A030103(A319652(n)+1)]` -/
def P15450333553667479744.Spec : Prop :=
  ∀ n, (P15450333553667479744.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P17858823813589127656

`eq[2, A319652(A319652(n)+1)]`
-/

namespace A045090.P17858823813589127656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A319652 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P17858823813589127656

namespace A045090

/-- `eq[2, A319652(A319652(n)+1)]` -/
def P17858823813589127656.Spec : Prop :=
  ∀ n, (P17858823813589127656.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P2340756386794274473

`eq[1, A065359(n)*A160381(n)]`
-/

namespace A045090.P2340756386794274473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P2340756386794274473

namespace A045090

/-- `eq[1, A065359(n)*A160381(n)]` -/
def P2340756386794274473.Spec : Prop :=
  ∀ n, (P2340756386794274473.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P12667470835901779453

`lt[A160382(n), A209229(A292371(n))]`
-/

namespace A045090.P12667470835901779453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A292371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A045090.P12667470835901779453

namespace A045090

/-- `lt[A160382(n), A209229(A292371(n))]` -/
def P12667470835901779453.Spec : Prop :=
  ∀ n, (P12667470835901779453.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P9427593002918987184

`eq[1, A160382(n)+A000120(A309952(n))]`
-/

namespace A045090.P9427593002918987184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + A000120 (A309952 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P9427593002918987184

namespace A045090

/-- `eq[1, A160382(n)+A000120(A309952(n))]` -/
def P9427593002918987184.Spec : Prop :=
  ∀ n, (P9427593002918987184.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P4030196819512140038

`eq[2, A338854(A006015(n))]`
-/

namespace A045090.P4030196819512140038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P4030196819512140038

namespace A045090

/-- `eq[2, A338854(A006015(n))]` -/
def P4030196819512140038.Spec : Prop :=
  ∀ n, (P4030196819512140038.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P10790334754358666791

`eq[3, A338854(A048647(n))]`
-/

namespace A045090.P10790334754358666791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P10790334754358666791

namespace A045090

/-- `eq[3, A338854(A048647(n))]` -/
def P10790334754358666791.Spec : Prop :=
  ∀ n, (P10790334754358666791.a n : ℤ) = A045090 (n + 1)

end A045090

/-! ## A045090.P5773590835255736221

`eq[n, A139351(A004468(n))+A061800(n)]`
-/

namespace A045090.P5773590835255736221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A004468 n).toNat + A061800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045090.P5773590835255736221

namespace A045090

/-- `eq[n, A139351(A004468(n))+A061800(n)]` -/
def P5773590835255736221.Spec : Prop :=
  ∀ n, (P5773590835255736221.a n : ℤ) = A045090 (n + 1)

end A045090

/-!
# A045091: Numbers whose base-4 representation contains exactly one 1 and one 2.

The programs for A045091, the canonical program `A045091.P2156200963910194805` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045091 has offset 1).

The definition of A045091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1744 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045091.P10939581027362856100

`∩[A023710(n+1), A039004(n+1)]`
-/

namespace A045091.P10939581027362856100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045091.P10939581027362856100

namespace A045091

/-- `∩[A023710(n+1), A039004(n+1)]` -/
def P10939581027362856100.Spec : Prop :=
  ∀ n, (P10939581027362856100.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P3764337381865134435

`∩[A023710(n+1), A039280(n+1)]`
-/

namespace A045091.P3764337381865134435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045091.P3764337381865134435

namespace A045091

/-- `∩[A023710(n+1), A039280(n+1)]` -/
def P3764337381865134435.Spec : Prop :=
  ∀ n, (P3764337381865134435.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P11937776916055827415

`∩[A023710(n+1), A023714(n+1)]`
-/

namespace A045091.P11937776916055827415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045091.P11937776916055827415

namespace A045091

/-- `∩[A023710(n+1), A023714(n+1)]` -/
def P11937776916055827415.Spec : Prop :=
  ∀ n, (P11937776916055827415.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P2156200963910194805

`∩[A023714(n+1), A039004(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045091

/-- `∩[A023714(n+1), A039004(n+1)]` -/
def P2156200963910194805.Spec : Prop :=
  ∀ n, (P2156200963910194805.a n : ℤ) = A045091 (n + 1)

theorem P2156200963910194805.correct : P2156200963910194805.Spec := by
  intro n
  simp only [A045091, Nat.add_sub_cancel]

end A045091

/-! ## A045091.P16599594874757640863

`∩[A023714(n+1), A039280(n+1)]`
-/

namespace A045091.P16599594874757640863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045091.P16599594874757640863

namespace A045091

/-- `∩[A023714(n+1), A039280(n+1)]` -/
def P16599594874757640863.Spec : Prop :=
  ∀ n, (P16599594874757640863.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P9796776080892241325

`eq[3, A025480(A319652(n))]`
-/

namespace A045091.P9796776080892241325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P9796776080892241325

namespace A045091

/-- `eq[3, A025480(A319652(n))]` -/
def P9796776080892241325.Spec : Prop :=
  ∀ n, (P9796776080892241325.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P8377690131242661885

`eq[cos(A065359(n)), A160381(n)]`
-/

namespace A045091.P8377690131242661885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A065359 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045091.P8377690131242661885

namespace A045091

/-- `eq[cos(A065359(n)), A160381(n)]` -/
def P8377690131242661885.Spec : Prop :=
  ∀ n, (P8377690131242661885.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P9318701764434427463

`eq[7, A319652(A319652(n)+1)]`
-/

namespace A045091.P9318701764434427463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A319652 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P9318701764434427463

namespace A045091

/-- `eq[7, A319652(A319652(n)+1)]` -/
def P9318701764434427463.Spec : Prop :=
  ∀ n, (P9318701764434427463.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P3661267066324261098

`eq[1, A160381(n)*A160382(n)]`
-/

namespace A045091.P3661267066324261098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P3661267066324261098

namespace A045091

/-- `eq[1, A160381(n)*A160382(n)]` -/
def P3661267066324261098.Spec : Prop :=
  ∀ n, (P3661267066324261098.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P4833013909458051825

`eq[1, A160381(A035327(n))*A160381(n)]`
-/

namespace A045091.P4833013909458051825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A035327 n).toNat * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P4833013909458051825

namespace A045091

/-- `eq[1, A160381(A035327(n))*A160381(n)]` -/
def P4833013909458051825.Spec : Prop :=
  ∀ n, (P4833013909458051825.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P17107646442230090302

`eq[1, A000120(A292371(n))*A160382(n)]`
-/

namespace A045091.P17107646442230090302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292371 n).toNat * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P17107646442230090302

namespace A045091

/-- `eq[1, A000120(A292371(n))*A160382(n)]` -/
def P17107646442230090302.Spec : Prop :=
  ∀ n, (P17107646442230090302.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P2477627530300749105

`eq[1, A000120(A292372(n))*A160381(n)]`
-/

namespace A045091.P2477627530300749105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292372 n).toNat * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P2477627530300749105

namespace A045091

/-- `eq[1, A000120(A292372(n))*A160381(n)]` -/
def P2477627530300749105.Spec : Prop :=
  ∀ n, (P2477627530300749105.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P8948246373800873077

`eq[2, A000120(A309952(n))*A160382(n)]`
-/

namespace A045091.P8948246373800873077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P8948246373800873077

namespace A045091

/-- `eq[2, A000120(A309952(n))*A160382(n)]` -/
def P8948246373800873077.Spec : Prop :=
  ∀ n, (P8948246373800873077.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P8710461308139570151

`eq[4, A036044(A319720(n)-A165012(n))]`
-/

namespace A045091.P8710461308139570151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A319720 n - A165012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P8710461308139570151

namespace A045091

/-- `eq[4, A036044(A319720(n)-A165012(n))]` -/
def P8710461308139570151.Spec : Prop :=
  ∀ n, (P8710461308139570151.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P14075882643983237058

`eq[6, A338854(A006015(n))]`
-/

namespace A045091.P14075882643983237058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P14075882643983237058

namespace A045091

/-- `eq[6, A338854(A006015(n))]` -/
def P14075882643983237058.Spec : Prop :=
  ∀ n, (P14075882643983237058.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P15496633794325213841

`eq[1, A160382(A006015(n))*A160382(n)]`
-/

namespace A045091.P15496633794325213841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 (A006015 n).toNat * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P15496633794325213841

namespace A045091

/-- `eq[1, A160382(A006015(n))*A160382(n)]` -/
def P15496633794325213841.Spec : Prop :=
  ∀ n, (P15496633794325213841.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P5878676715773926572

`eq[1, A160381(n)*A160383(A006015(n))]`
-/

namespace A045091.P5878676715773926572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n * A160383 (A006015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P5878676715773926572

namespace A045091

/-- `eq[1, A160381(n)*A160383(A006015(n))]` -/
def P5878676715773926572.Spec : Prop :=
  ∀ n, (P5878676715773926572.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P10700349211082160352

`eq[1, A160381(A057300(n))*A160381(n)]`
-/

namespace A045091.P10700349211082160352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A057300 n).toNat * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P10700349211082160352

namespace A045091

/-- `eq[1, A160381(A057300(n))*A160381(n)]` -/
def P10700349211082160352.Spec : Prop :=
  ∀ n, (P10700349211082160352.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P13839586684245573047

`eq[6, A338854(A048647(n))]`
-/

namespace A045091.P13839586684245573047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A048647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P13839586684245573047

namespace A045091

/-- `eq[6, A338854(A048647(n))]` -/
def P13839586684245573047.Spec : Prop :=
  ∀ n, (P13839586684245573047.a n : ℤ) = A045091 (n + 1)

end A045091

/-! ## A045091.P2756273363104228959

`eq[1, A160382(n)*A160382(A329101(n))]`
-/

namespace A045091.P2756273363104228959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n * A160382 (A329101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045091.P2756273363104228959

namespace A045091

/-- `eq[1, A160382(n)*A160382(A329101(n))]` -/
def P2756273363104228959.Spec : Prop :=
  ∀ n, (P2756273363104228959.a n : ℤ) = A045091 (n + 1)

end A045091

/-!
# A045092: Numbers whose base-4 representation contains exactly one 1 and two 2's.

The programs for A045092, there is no canonical definition to state claims against.
-/

/-! ## A045092.P17897186441082668819

`∩[A023710(n+1), A023715(n+1)]`
-/

namespace A045092.P17897186441082668819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045092.P17897186441082668819

/-! ## A045092.P18224156890399245678

`eq[13, A025480(A319652(n))]`
-/

namespace A045092.P18224156890399245678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045092.P18224156890399245678

/-! ## A045092.P1196008389289001204

`eq[2, A160382(n)^A160381(n)]`
-/

namespace A045092.P1196008389289001204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160382 n : ℚ) ^ (A160381 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045092.P1196008389289001204

/-! ## A045092.P5919564357287995672

`eq[cos(A065359(n)+1), A160381(n)]`
-/

namespace A045092.P5919564357287995672
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A065359 n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045092.P5919564357287995672

/-! ## A045092.P2285221594097966152

`eq[A160382(n)+2, A004128(A020639(8*n+5))]`
-/

namespace A045092.P2285221594097966152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 (A020639 (8 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045092.P2285221594097966152

/-! ## A045092.P4242298166774719610

`eq[A078029(n)+1, A160381(n)]`
-/

namespace A045092.P4242298166774719610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045092.P4242298166774719610

/-! ## A045092.P6965899027418189905

`eq[A078030(n)+1, A160381(n)]`
-/

namespace A045092.P6965899027418189905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045092.P6965899027418189905

/-!
# A045093: Numbers whose base-4 representation contains exactly one 1 and three 2's.

The programs for A045093, there is no canonical definition to state claims against.
-/

/-! ## A045093.P5732445675782791965

`∩[A023710(n+1), A023716(n+1)]`
-/

namespace A045093.P5732445675782791965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045093.P5732445675782791965

/-! ## A045093.P18132722665106169795

`∩[A023716(n+1), A026488(n+1)]`
-/

namespace A045093.P18132722665106169795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045093.P18132722665106169795

/-! ## A045093.P8418062767293427182

`filter[A023716(n+1), A316345(#)]`
-/

namespace A045093.P8418062767293427182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316345 (f1 j).toNat = 1) n)

end

end A045093.P8418062767293427182

/-! ## A045093.P15560290794528888330

`eq[5, A170975(A268444(n))]`
-/

namespace A045093.P15560290794528888330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045093.P15560290794528888330

/-!
# A045094: Numbers whose base-4 representation contains exactly one 1 and four 2's.

The programs for A045094, there is no canonical definition to state claims against.
-/

/-! ## A045094.P908555592176583784

`∩[A043344(n+1), A180963(n+1)]`
-/

namespace A045094.P908555592176583784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045094.P908555592176583784

/-! ## A045094.P4893820091416505341

`∩[A004443(A004443(3*(n+1))), A043344(n+1)]`
-/

namespace A045094.P4893820091416505341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004443 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045094.P4893820091416505341

/-! ## A045094.P14268189879039501451

`filter[A043344(n+1), A079978(#)]`
-/

namespace A045094.P14268189879039501451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A045094.P14268189879039501451

/-! ## A045094.P8811878634324073314

`filter[A043344(n+1), A173857(#)]`
-/

namespace A045094.P8811878634324073314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A045094.P8811878634324073314

/-! ## A045094.P9544356862309744240

`filter[A043344(n+1), A329680(#)]`
-/

namespace A045094.P9544356862309744240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A045094.P9544356862309744240

/-! ## A045094.P10864666970591445420

`record[A053645(A045099(n+1))]`
-/

namespace A045094.P10864666970591445420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A045099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045094.P10864666970591445420

/-! ## A045094.P5715702502640719167

`record[A062050(A045099(n+1)-1)]`
-/

namespace A045094.P5715702502640719167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A045099 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045094.P5715702502640719167

/-!
# A045095: Numbers whose base-4 representation contains exactly two 1's and no 2's.

The programs for A045095, the canonical program `A045095.P15217836163504484556` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045095 has offset 1).

The definition of A045095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045095.P15217836163504484556

`A023713(A023693(n+1)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A045095

/-- `A023713(A023693(n+1)+1)` -/
def P15217836163504484556.Spec : Prop :=
  ∀ n, P15217836163504484556.a n = A045095 (n + 1)

theorem P15217836163504484556.correct : P15217836163504484556.Spec := by
  intro n
  simp only [A045095, Nat.add_sub_cancel]

end A045095

/-! ## A045095.P17395428377229676127

`∩[A023711(n+1), A023713(n+1)]`
-/

namespace A045095.P17395428377229676127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023713 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045095.P17395428377229676127

namespace A045095

/-- `∩[A023711(n+1), A023713(n+1)]` -/
def P17395428377229676127.Spec : Prop :=
  ∀ n, (P17395428377229676127.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P9367264991801383615

`A057300(A045087(n+1))`
-/

namespace A045095.P9367264991801383615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A045087 (n + 1)).toNat

end

end A045095.P9367264991801383615

namespace A045095

/-- `A057300(A045087(n+1))` -/
def P9367264991801383615.Spec : Prop :=
  ∀ n, P9367264991801383615.a n = A045095 (n + 1)

end A045095

/-! ## A045095.P14578332775174366393

`eq[n%3, A268444(A268444(n))]`
-/

namespace A045095.P14578332775174366393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045095.P14578332775174366393

namespace A045095

/-- `eq[n%3, A268444(A268444(n))]` -/
def P14578332775174366393.Spec : Prop :=
  ∀ n, (P14578332775174366393.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P15841196272528789548

`A163241(A045119(n+1))`
-/

namespace A045095.P15841196272528789548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163241 (A045119 (n + 1)).toNat

end

end A045095.P15841196272528789548

namespace A045095

/-- `A163241(A045119(n+1))` -/
def P15841196272528789548.Spec : Prop :=
  ∀ n, P15841196272528789548.a n = A045095 (n + 1)

end A045095

/-! ## A045095.P14640177301588576262

`A008486(A045119(n+1))-A045087(n+1)`
-/

namespace A045095.P14640177301588576262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A045119 (n + 1)).toNat - A045087 (n + 1)

end

end A045095.P14640177301588576262

namespace A045095

/-- `A008486(A045119(n+1))-A045087(n+1)` -/
def P14640177301588576262.Spec : Prop :=
  ∀ n, P14640177301588576262.a n = A045095 (n + 1)

end A045095

/-! ## A045095.P16636934258944660121

`eq[exp(A160382(n))+1, A160381(n)]`
-/

namespace A045095.P16636934258944660121
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A160382 n : ℝ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A045095.P16636934258944660121

namespace A045095

/-- `eq[exp(A160382(n))+1, A160381(n)]` -/
def P16636934258944660121.Spec : Prop :=
  ∀ n, (P16636934258944660121.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P6328283235118855022

`eq[A268444(A268444(n))², A070403(n)]`
-/

namespace A045095.P6328283235118855022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045095.P6328283235118855022

namespace A045095

/-- `eq[A268444(A268444(n))², A070403(n)]` -/
def P6328283235118855022.Spec : Prop :=
  ∀ n, (P6328283235118855022.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P10624407313574293052

`eq[A070403(n), A268444(A268444(n)+1)]`
-/

namespace A045095.P10624407313574293052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045095.P10624407313574293052

namespace A045095

/-- `eq[A070403(n), A268444(A268444(n)+1)]` -/
def P10624407313574293052.Spec : Prop :=
  ∀ n, (P10624407313574293052.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P11003297834588096294

`eq[1, A268444(A268444(n))+A102283(n)]`
-/

namespace A045095.P11003297834588096294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n).toNat + A102283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045095.P11003297834588096294

namespace A045095

/-- `eq[1, A268444(A268444(n))+A102283(n)]` -/
def P11003297834588096294.Spec : Prop :=
  ∀ n, (P11003297834588096294.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P3525060080896542669

`eq[2, A338854(A006015(n))-2]`
-/

namespace A045095.P3525060080896542669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A006015 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045095.P3525060080896542669

namespace A045095

/-- `eq[2, A338854(A006015(n))-2]` -/
def P3525060080896542669.Spec : Prop :=
  ∀ n, (P3525060080896542669.a n : ℤ) = A045095 (n + 1)

end A045095

/-! ## A045095.P18000567468124911749

`record[A057979(A003602(A045100(n+1)))]`
-/

namespace A045095.P18000567468124911749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A003602 (A045100 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045095.P18000567468124911749

namespace A045095

/-- `record[A057979(A003602(A045100(n+1)))]` -/
def P18000567468124911749.Spec : Prop :=
  ∀ n, P18000567468124911749.a n = A045095 (n + 1)

end A045095

/-!
# A045096: Numbers whose base-4 representation contains exactly two 1's and one 2.

The programs for A045096, there is no canonical definition to state claims against.
-/

/-! ## A045096.P15988235526140405490

`∩[A023711(n+1), A023714(n+1)]`
-/

namespace A045096.P15988235526140405490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045096.P15988235526140405490

/-! ## A045096.P16219108589519831934

`eq[3, A000120(A309952(n))*A160382(n)]`
-/

namespace A045096.P16219108589519831934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P16219108589519831934

/-! ## A045096.P16086108297220970541

`eq[23, A319652(A319652(n)+1)]`
-/

namespace A045096.P16086108297220970541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A319652 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P16086108297220970541

/-! ## A045096.P3412938239583499728

`eq[2, A065359(n)*A160381(n)]`
-/

namespace A045096.P3412938239583499728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n * A160381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P3412938239583499728

/-! ## A045096.P9564407035260349666

`eq[2, A160381(n)^A160382(n)]`
-/

namespace A045096.P9564407035260349666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160381 n : ℚ) ^ (A160382 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A045096.P9564407035260349666

/-! ## A045096.P1233049917098026311

`eq[A160381(n)², A268444(A268444(n))]`
-/

namespace A045096.P1233049917098026311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045096.P1233049917098026311

/-! ## A045096.P12088333590379075248

`eq[A070403(n+1), A268444(A268444(n))]`
-/

namespace A045096.P12088333590379075248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045096.P12088333590379075248

/-! ## A045096.P3017498542442692310

`eq[3, A070403(n)-A268444(A268444(n))]`
-/

namespace A045096.P3017498542442692310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070403 n - A268444 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P3017498542442692310

/-! ## A045096.P13187412977456701396

`eq[4, A174980(A319652(n))]`
-/

namespace A045096.P13187412977456701396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P13187412977456701396

/-! ## A045096.P15913919929045918747

`eq[2, A160381(n)+A005129(n)]`
-/

namespace A045096.P15913919929045918747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n + A005129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P15913919929045918747

/-! ## A045096.P17404967695554332710

`eq[3, A090368(10*n+1)*A160382(n)]`
-/

namespace A045096.P17404967695554332710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (10 * n + 1) * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045096.P17404967695554332710

/-!
# A045097: Numbers whose base-4 representation contains exactly two 1's and two 2's.

The programs for A045097, the canonical program `A045097.P8038663028172588277` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A045097 has offset 1).

The definition of A045097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A045097.P2455698262714014536

`∩[A023711(n+1), A039004(n+1)]`
-/

namespace A045097.P2455698262714014536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045097.P2455698262714014536

namespace A045097

/-- `∩[A023711(n+1), A039004(n+1)]` -/
def P2455698262714014536.Spec : Prop :=
  ∀ n, (P2455698262714014536.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P3232752223042318459

`∩[A023711(n+1), A039280(n+1)]`
-/

namespace A045097.P3232752223042318459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045097.P3232752223042318459

namespace A045097

/-- `∩[A023711(n+1), A039280(n+1)]` -/
def P3232752223042318459.Spec : Prop :=
  ∀ n, (P3232752223042318459.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P7131969908103250862

`∩[A023711(n+1), A023715(n+1)]`
-/

namespace A045097.P7131969908103250862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045097.P7131969908103250862

namespace A045097

/-- `∩[A023711(n+1), A023715(n+1)]` -/
def P7131969908103250862.Spec : Prop :=
  ∀ n, (P7131969908103250862.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P8038663028172588277

`∩[A023715(n+1), A039004(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A045097

/-- `∩[A023715(n+1), A039004(n+1)]` -/
def P8038663028172588277.Spec : Prop :=
  ∀ n, (P8038663028172588277.a n : ℤ) = A045097 (n + 1)

theorem P8038663028172588277.correct : P8038663028172588277.Spec := by
  intro n
  simp only [A045097, Nat.add_sub_cancel]

end A045097

/-! ## A045097.P12625283781668700509

`∩[A023715(n+1), A039280(n+1)]`
-/

namespace A045097.P12625283781668700509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045097.P12625283781668700509

namespace A045097

/-- `∩[A023715(n+1), A039280(n+1)]` -/
def P12625283781668700509.Spec : Prop :=
  ∀ n, (P12625283781668700509.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P17016798528700409367

`eq[45, A025480(A319652(n))]`
-/

namespace A045097.P17016798528700409367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A319652 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045097.P17016798528700409367

namespace A045097

/-- `eq[45, A025480(A319652(n))]` -/
def P17016798528700409367.Spec : Prop :=
  ∀ n, (P17016798528700409367.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P3799583611677387349

`eq[dr(A046030(n+1)), A079978(n)]`
-/

namespace A045097.P3799583611677387349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A046030 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045097.P3799583611677387349

namespace A045097

/-- `eq[dr(A046030(n+1)), A079978(n)]` -/
def P3799583611677387349.Spec : Prop :=
  ∀ n, (P3799583611677387349.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P13468132653324631219

`eq[A160381(n), A338854(A268444(n))]`
-/

namespace A045097.P13468132653324631219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A268444 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045097.P13468132653324631219

namespace A045097

/-- `eq[A160381(n), A338854(A268444(n))]` -/
def P13468132653324631219.Spec : Prop :=
  ∀ n, (P13468132653324631219.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P11711867290922272290

`eq[8, A000120(A309952(n))*A160382(n)]`
-/

namespace A045097.P11711867290922272290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A309952 n).toNat * A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A045097.P11711867290922272290

namespace A045097

/-- `eq[8, A000120(A309952(n))*A160382(n)]` -/
def P11711867290922272290.Spec : Prop :=
  ∀ n, (P11711867290922272290.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P13921566656834591353

`∩[A023711(n+1), A026488(n+1)-1]`
-/

namespace A045097.P13921566656834591353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045097.P13921566656834591353

namespace A045097

/-- `∩[A023711(n+1), A026488(n+1)-1]` -/
def P13921566656834591353.Spec : Prop :=
  ∀ n, (P13921566656834591353.a n : ℤ) = A045097 (n + 1)

end A045097

/-! ## A045097.P2618183298152601573

`record[floor(A284254(A045098(n+1))/2)]`
-/

namespace A045097.P2618183298152601573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284254 (A045098 (n + 1)).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045097.P2618183298152601573

namespace A045097

/-- `record[floor(A284254(A045098(n+1))/2)]` -/
def P2618183298152601573.Spec : Prop :=
  ∀ n, P2618183298152601573.a n = A045097 (n + 1)

end A045097

/-! ## A045097.P1748168189752693366

`A123108(record[A284254(A045098(n+1))])`
-/

namespace A045097.P1748168189752693366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A045098 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A045097.P1748168189752693366

namespace A045097

/-- `A123108(record[A284254(A045098(n+1))])` -/
def P1748168189752693366.Spec : Prop :=
  ∀ n, P1748168189752693366.a n = A045097 (n + 1)

end A045097

/-!
# A045098: Numbers whose base-4 representation contains exactly two 1's and three 2's.

The programs for A045098, there is no canonical definition to state claims against.
-/

/-! ## A045098.P12224178236737677603

`∩[A023711(n+1), A023716(n+1)]`
-/

namespace A045098.P12224178236737677603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045098.P12224178236737677603

/-! ## A045098.P13295964830747656013

`eq[A020639(A017281(n)), A160382(n)]`
-/

namespace A045098.P13295964830747656013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017281 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045098.P13295964830747656013

/-! ## A045098.P14560174424823922475

`record[A053645(A045103(n+1))]`
-/

namespace A045098.P14560174424823922475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A045103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A045098.P14560174424823922475

/-! ## A045098.P9473713510386059257

`∩[A023716(n+1), A026488(n+1)+1]`
-/

namespace A045098.P9473713510386059257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026488 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045098.P9473713510386059257

/-! ## A045098.P15880076904308727221

`eq[A090368(A090771(n+1)), A160382(n)]`
-/

namespace A045098.P15880076904308727221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A090771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A045098.P15880076904308727221

/-!
# A045099: Numbers whose base-4 representation contains exactly two 1's and four 2's.

The programs for A045099, there is no canonical definition to state claims against.
-/

/-! ## A045099.P15947683633337336642

`∩[A045041(n+1), A045119(n+1)]`
-/

namespace A045099.P15947683633337336642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045099.P15947683633337336642

/-! ## A045099.P12253692237355368838

`∩[A045015(n+1), A045153(n+1)]`
-/

namespace A045099.P12253692237355368838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045099.P12253692237355368838

/-! ## A045099.P2896760568657616898

`A002264(A045147(n+1)+A045123(n+1))`
-/

namespace A045099.P2896760568657616898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A045147 (n + 1) + A045123 (n + 1)).toNat

end

end A045099.P2896760568657616898


import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A163704: Number of n X 2 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163704, the canonical program `A163704.P11637123394182967532` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163704 has offset 1).

The definition of A163704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163704.P17053529567538749187

`∑[round(∑[ϕ^n])]+n`
-/

namespace A163704.P17053529567538749187
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A163704.P17053529567538749187

namespace A163704

/-- `∑[round(∑[ϕ^n])]+n` -/
def P17053529567538749187.Spec : Prop :=
  ∀ n, P17053529567538749187.a n = A163704 (n + 1)

end A163704

/-! ## A163704.P11637123394182967532

`∑[A163695(n+1)-1]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163704

/-- `∑[A163695(n+1)-1]` -/
def P11637123394182967532.Spec : Prop :=
  ∀ n, P11637123394182967532.a n = A163704 (n + 1)

theorem P11637123394182967532.correct : P11637123394182967532.Spec := by
  intro n
  simp only [A163704, Nat.add_sub_cancel]

end A163704

/-! ## A163704.P1135548616729740906

`floor(ϕ*(A000032(n+3)-1)-(n+3))`
-/

namespace A163704.P1135548616729740906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A000032 (n + 3) - 1 : ℝ) - (n + 3 : ℝ)⌋

end

end A163704.P1135548616729740906

namespace A163704

/-- `floor(ϕ*(A000032(n+3)-1)-(n+3))` -/
def P1135548616729740906.Spec : Prop :=
  ∀ n, P1135548616729740906.a n = A163704 (n + 1)

end A163704

/-! ## A163704.P16638303850370563678

`∑[A169985(n)+A001610(n)]`
-/

namespace A163704.P16638303850370563678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163704.P16638303850370563678

namespace A163704

/-- `∑[A169985(n)+A001610(n)]` -/
def P16638303850370563678.Spec : Prop :=
  ∀ n, P16638303850370563678.a n = A163704 (n + 1)

end A163704

/-! ## A163704.P10414103404119009613

`A023548(n+1)/A054977(n)`
-/

namespace A163704.P10414103404119009613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023548 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A163704.P10414103404119009613

namespace A163704

/-- `A023548(n+1)/A054977(n)` -/
def P10414103404119009613.Spec : Prop :=
  ∀ n, P10414103404119009613.a n = (A163704 (n + 1) : ℚ)

end A163704

/-! ## A163704.P12096492746143181685

`A023548(n+1)/(A000007(n)+1)`
-/

namespace A163704.P12096492746143181685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023548 (n + 1) : ℚ) / (A000007 n + 1 : ℚ)

end

end A163704.P12096492746143181685

namespace A163704

/-- `A023548(n+1)/(A000007(n)+1)` -/
def P12096492746143181685.Spec : Prop :=
  ∀ n, P12096492746143181685.a n = (A163704 (n + 1) : ℚ)

end A163704

/-! ## A163704.P10281569772867745108

`∑[A000204(n+1)+A169985(n)-1]`
-/

namespace A163704.P10281569772867745108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) + (A169985 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163704.P10281569772867745108

namespace A163704

/-- `∑[A000204(n+1)+A169985(n)-1]` -/
def P10281569772867745108.Spec : Prop :=
  ∀ n, P10281569772867745108.a n = A163704 (n + 1)

end A163704

/-! ## A163704.P501075228083878497

`Δ[record[A000032(n)-C(n, 2)]]`
-/

namespace A163704.P501075228083878497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (Nat.choose n 2 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163704.P501075228083878497

namespace A163704

/-- `Δ[record[A000032(n)-C(n, 2)]]` -/
def P501075228083878497.Spec : Prop :=
  ∀ n, P501075228083878497.a n = A163704 (n + 1)

end A163704

/-! ## A163704.P740265379473930247

`A023548(n+1)*A052940(n)/A153893(n)`
-/

namespace A163704.P740265379473930247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023548 (n + 1) * A052940 n : ℚ) / (A153893 n : ℚ)

end

end A163704.P740265379473930247

namespace A163704

/-- `A023548(n+1)*A052940(n)/A153893(n)` -/
def P740265379473930247.Spec : Prop :=
  ∀ n, P740265379473930247.a n = (A163704 (n + 1) : ℚ)

end A163704

/-! ## A163704.P4027817303404944613

`A023548(n+1)*A052940(n)/A055010(n+1)`
-/

namespace A163704.P4027817303404944613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023548 (n + 1) * A052940 n : ℚ) / (A055010 (n + 1) : ℚ)

end

end A163704.P4027817303404944613

namespace A163704

/-- `A023548(n+1)*A052940(n)/A055010(n+1)` -/
def P4027817303404944613.Spec : Prop :=
  ∀ n, P4027817303404944613.a n = (A163704 (n + 1) : ℚ)

end A163704

/-! ## A163704.P15576421035198343849

`A023548(n+1)*A052940(n)/A083329(n+1)`
-/

namespace A163704.P15576421035198343849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023548 (n + 1) * A052940 n : ℚ) / (A083329 (n + 1) : ℚ)

end

end A163704.P15576421035198343849

namespace A163704

/-- `A023548(n+1)*A052940(n)/A083329(n+1)` -/
def P15576421035198343849.Spec : Prop :=
  ∀ n, P15576421035198343849.a n = (A163704 (n + 1) : ℚ)

end A163704

/-! ## A163704.P8694993883638541692

`∑[A001610(n+1)]^and(1, A002450(n))`
-/

namespace A163704.P8694993883638541692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.land 1 (A002450 n) : ℤ)

end

end A163704.P8694993883638541692

namespace A163704

/-- `∑[A001610(n+1)]^and(1, A002450(n))` -/
def P8694993883638541692.Spec : Prop :=
  ∀ n, P8694993883638541692.a n = (A163704 (n + 1) : ℚ)

end A163704

/-!
# A163705: Number of n X 3 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163705, there is no canonical definition to state claims against.
-/

/-! ## A163705.P13410987839192767827

`∑[A163696(n+1)-A163695(n+1)]`
-/

namespace A163705.P13410987839192767827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163696 (n + 1) - A163695 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163705.P13410987839192767827

/-! ## A163705.P2861176361215360764

`A391823(A167614(n+1))`
-/

namespace A163705.P2861176361215360764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A167614 (n + 1)).toNat

end

end A163705.P2861176361215360764

/-! ## A163705.P7575362792445647198

`A391823(A000217(n+2)+3)`
-/

namespace A163705.P7575362792445647198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A000217 (n + 2) + 3).toNat

end

end A163705.P7575362792445647198

/-!
# A163706: Number of n X 4 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163706, there is no canonical definition to state claims against.
-/

/-! ## A163706.P6709842270810048113

`∑[A163697(n+1)-A163696(n+1)]`
-/

namespace A163706.P6709842270810048113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163697 (n + 1) - A163696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163706.P6709842270810048113

/-! ## A163706.P17725244247734633845

`A391823(A000217(n+4)-n)`
-/

namespace A163706.P17725244247734633845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A163706.P17725244247734633845

/-!
# A163707: Number of n X 5 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163707, there is no canonical definition to state claims against.
-/

/-! ## A163707.P9687663877931998269

`∑[A163698(n+1)-A163697(n+1)]`
-/

namespace A163707.P9687663877931998269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163698 (n + 1) - A163697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163707.P9687663877931998269

/-!
# A163708: Number of n X 6 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163708, there is no canonical definition to state claims against.
-/

/-! ## A163708.P8957666530939619244

`∑[A163699(n+1)-A163698(n+1)]`
-/

namespace A163708.P8957666530939619244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163699 (n + 1) - A163698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163708.P8957666530939619244

/-!
# A163709: Number of n X 7 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163709, there is no canonical definition to state claims against.
-/

/-! ## A163709.P15846084466221663898

`∑[A163700(n+1)-A163699(n+1)]`
-/

namespace A163709.P15846084466221663898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163700 (n + 1) - A163699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163709.P15846084466221663898

/-!
# A163710: Number of n X 8 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163710, there is no canonical definition to state claims against.
-/

/-! ## A163710.P5803734528063514568

`∑[A163701(n+1)-A163700(n+1)]`
-/

namespace A163710.P5803734528063514568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163701 (n + 1) - A163700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163710.P5803734528063514568

/-! ## A163710.P6883294761061097694

`A391823(eq[7, A002262(n)]+1)`
-/

namespace A163710.P6883294761061097694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163710.P6883294761061097694

/-!
# A163711: Number of n X 9 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163711, there is no canonical definition to state claims against.
-/

/-! ## A163711.P17783418199572060682

`∑[A163702(n+1)-A163701(n+1)]`
-/

namespace A163711.P17783418199572060682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163702 (n + 1) - A163701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163711.P17783418199572060682

/-!
# A163712: Number of n X 10 binary arrays with all 1s connected, a path of 1s from left column to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163712, there is no canonical definition to state claims against.
-/

/-! ## A163712.P18224411184081603658

`∑[A163703(n+1)-A163702(n+1)]`
-/

namespace A163712.P18224411184081603658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163703 (n + 1) - A163702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163712.P18224411184081603658

/-!
# A163713: Number of n X n binary arrays with all 1s connected, a path of 1s from top row to bottom row, and no 1 having more than two 1s adjacent.

The programs for A163713, there is no canonical definition to state claims against.
-/

/-! ## A163713.P15329296758868774427

`A391822((n+1)²+n²)`
-/

namespace A163713.P15329296758868774427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 ((n + 1) ^ 2 + n ^ 2)

end

end A163713.P15329296758868774427

/-!
# A163714: Number of n X 2 binary arrays with all 1s connected, a path of 1s from top row to bottom row, and no 1 having more than two 1s adjacent.

The programs for A163714, the canonical program `A163714.P13039324954168406667` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163714 has offset 1).

The definition of A163714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163714.P8365774711303433005

`ogf((3+4x-x^3)/(1-x-x^2))`
-/

namespace A163714.P8365774711303433005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 0, -1] [1, -1, -1] n

end

end A163714.P8365774711303433005

namespace A163714

/-- `ogf((3+4x-x^3)/(1-x-x^2))` -/
def P8365774711303433005.Spec : Prop :=
  ∀ n, P8365774711303433005.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P11253122884366216629

`round(ϕ*a(n-1))` with `a(0)=3, a(1)=7, a(2)=10`
-/

namespace A163714.P11253122884366216629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 7, 10] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A163714.P11253122884366216629

namespace A163714

/-- `round(ϕ*a(n-1))` -/
def P11253122884366216629.Spec : Prop :=
  ∀ n, P11253122884366216629.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P13039324954168406667

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=7, a(2)=10, a(3)=16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163714

/-- `a(n-1)+a(n-2)` -/
def P13039324954168406667.Spec : Prop :=
  ∀ n, (P13039324954168406667.a n : ℤ) = A163714 (n + 1)

theorem P13039324954168406667.correct : P13039324954168406667.Spec := by
  intro n
  simp only [A163714, Nat.add_sub_cancel]

end A163714

/-! ## A163714.P11762229571225207617

`A054886(n+1)+char[1]`
-/

namespace A163714.P11762229571225207617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054886 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163714.P11762229571225207617

namespace A163714

/-- `A054886(n+1)+char[1]` -/
def P11762229571225207617.Spec : Prop :=
  ∀ n, P11762229571225207617.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P4086072192216534310

`A169985(n)+A001060(n)`
-/

namespace A163714.P4086072192216534310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + A001060 n

end

end A163714.P4086072192216534310

namespace A163714

/-- `A169985(n)+A001060(n)` -/
def P4086072192216534310.Spec : Prop :=
  ∀ n, P4086072192216534310.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P4057016083925923516

`A373566(n)+A288219(n)`
-/

namespace A163714.P4057016083925923516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 n + A288219 n

end

end A163714.P4057016083925923516

namespace A163714

/-- `A373566(n)+A288219(n)` -/
def P4057016083925923516.Spec : Prop :=
  ∀ n, P4057016083925923516.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P7186301241976304921

`A001060(n)+record[A329723(n)]`
-/

namespace A163714.P7186301241976304921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163714.P7186301241976304921

namespace A163714

/-- `A001060(n)+record[A329723(n)]` -/
def P7186301241976304921.Spec : Prop :=
  ∀ n, P7186301241976304921.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P4782049505239985890

`A163733(n+1)+A022112(n)`
-/

namespace A163714.P4782049505239985890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 1) + A022112 n

end

end A163714.P4782049505239985890

namespace A163714

/-- `A163733(n+1)+A022112(n)` -/
def P4782049505239985890.Spec : Prop :=
  ∀ n, P4782049505239985890.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P12608594368938804725

`A254729(n+1)+A001060(n)`
-/

namespace A163714.P12608594368938804725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (n + 1) + A001060 n

end

end A163714.P12608594368938804725

namespace A163714

/-- `A254729(n+1)+A001060(n)` -/
def P12608594368938804725.Spec : Prop :=
  ∀ n, P12608594368938804725.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P4044390636489164213

`A130706(n)+A047992(n+2)`
-/

namespace A163714.P4044390636489164213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n + A047992 (n + 2)

end

end A163714.P4044390636489164213

namespace A163714

/-- `A130706(n)+A047992(n+2)` -/
def P4044390636489164213.Spec : Prop :=
  ∀ n, P4044390636489164213.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P9251927461992283191

`A013655(n+1)+record[A090244(n)]`
-/

namespace A163714.P9251927461992283191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163714.P9251927461992283191

namespace A163714

/-- `A013655(n+1)+record[A090244(n)]` -/
def P9251927461992283191.Spec : Prop :=
  ∀ n, P9251927461992283191.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P8312839820806744713

`A163695(n+1)+A000045(n+2)`
-/

namespace A163714.P8312839820806744713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 1) + A000045 (n + 2)

end

end A163714.P8312839820806744713

namespace A163714

/-- `A163695(n+1)+A000045(n+2)` -/
def P8312839820806744713.Spec : Prop :=
  ∀ n, P8312839820806744713.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P14950817672334847171

`A078642(n+1)-A154955(n+1)`
-/

namespace A163714.P14950817672334847171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078642 (n + 1) - A154955 (n + 1)

end

end A163714.P14950817672334847171

namespace A163714

/-- `A078642(n+1)-A154955(n+1)` -/
def P14950817672334847171.Spec : Prop :=
  ∀ n, P14950817672334847171.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P72658338122848619

`A163695(n+1)+A115339(2*n+1)`
-/

namespace A163714.P72658338122848619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 1) + A115339 (2 * n + 1)

end

end A163714.P72658338122848619

namespace A163714

/-- `A163695(n+1)+A115339(2*n+1)` -/
def P72658338122848619.Spec : Prop :=
  ∀ n, P72658338122848619.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P387048911383947633

`A022112(n)+A006355(A199969(n+1))`
-/

namespace A163714.P387048911383947633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A006355 (A199969 (n + 1)).toNat

end

end A163714.P387048911383947633

namespace A163714

/-- `A022112(n)+A006355(A199969(n+1))` -/
def P387048911383947633.Spec : Prop :=
  ∀ n, P387048911383947633.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P5831782495543956450

`A000045(n+1)+A373566(n)+A071679(n+1)`
-/

namespace A163714.P5831782495543956450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A373566 n + A071679 (n + 1))

end

end A163714.P5831782495543956450

namespace A163714

/-- `A000045(n+1)+A373566(n)+A071679(n+1)` -/
def P5831782495543956450.Spec : Prop :=
  ∀ n, P5831782495543956450.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P7259234485403210715

`A019590(n+1)+A054886(n+1)-A000007(n)`
-/

namespace A163714.P7259234485403210715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A054886 (n + 1) - A000007 n)

end

end A163714.P7259234485403210715

namespace A163714

/-- `A019590(n+1)+A054886(n+1)-A000007(n)` -/
def P7259234485403210715.Spec : Prop :=
  ∀ n, P7259234485403210715.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P17019076316182636569

`A071679(n+1)+A373566(n)+A324969(n+2)`
-/

namespace A163714.P17019076316182636569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) + (A373566 n + A324969 (n + 2))

end

end A163714.P17019076316182636569

namespace A163714

/-- `A071679(n+1)+A373566(n)+A324969(n+2)` -/
def P17019076316182636569.Spec : Prop :=
  ∀ n, P17019076316182636569.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P14942223097636133023

`A006355(n+1)+A163733(n+1)+A128588(n+2)`
-/

namespace A163714.P14942223097636133023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + (A163733 (n + 1) + A128588 (n + 2))

end

end A163714.P14942223097636133023

namespace A163714

/-- `A006355(n+1)+A163733(n+1)+A128588(n+2)` -/
def P14942223097636133023.Spec : Prop :=
  ∀ n, P14942223097636133023.a n = A163714 (n + 1)

end A163714

/-! ## A163714.P13208392718227591787

`A118658(n+1)+A163733(n+1)+A128588(n+2)`
-/

namespace A163714.P13208392718227591787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + (A163733 (n + 1) + A128588 (n + 2))

end

end A163714.P13208392718227591787

namespace A163714

/-- `A118658(n+1)+A163733(n+1)+A128588(n+2)` -/
def P13208392718227591787.Spec : Prop :=
  ∀ n, P13208392718227591787.a n = A163714 (n + 1)

end A163714

/-!
# A163715: Number of n X 3 binary arrays with all 1s connected, a path of 1s from top row to bottom row, and no 1 having more than two 1s adjacent.

The programs for A163715, there is no canonical definition to state claims against.
-/

/-! ## A163715.P3054844031011239998

`A391822(A034856(n+2))`
-/

namespace A163715.P3054844031011239998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A034856 (n + 2)).toNat

end

end A163715.P3054844031011239998

/-! ## A163715.P10142021468490134445

`A391822(eq[2, A047888(n+1)])`
-/

namespace A163715.P10142021468490134445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163715.P10142021468490134445

/-! ## A163715.P5185285618538466386

`A391822(A000124(n+2)+n)`
-/

namespace A163715.P5185285618538466386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A000124 (n + 2) + (n : ℤ)).toNat

end

end A163715.P5185285618538466386

/-! ## A163715.P6158603562749190204

`A391822(lt[A391822(n+2), n])`
-/

namespace A163715.P6158603562749190204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A163715.P6158603562749190204

/-! ## A163715.P17719991891267670792

`A391822(A000217(n+2)+n+1)`
-/

namespace A163715.P17719991891267670792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A163715.P17719991891267670792

/-!
# A163716: Number of n X 4 binary arrays with all 1s connected, a path of 1s from top row to bottom row, and no 1 having more than two 1s adjacent.

The programs for A163716, there is no canonical definition to state claims against.
-/

/-! ## A163716.P6905125789166490968

`A391822(A141214(n+1))`
-/

namespace A163716.P6905125789166490968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A141214 (n + 1)).toNat

end

end A163716.P6905125789166490968

/-! ## A163716.P659819040570319242

`A391822(A052905(n+1)+2)`
-/

namespace A163716.P659819040570319242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A052905 (n + 1) + 2).toNat

end

end A163716.P659819040570319242

/-! ## A163716.P10993443117216671114

`A391822(A028387(n+2)-A000124(n+2))`
-/

namespace A163716.P10993443117216671114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A028387 (n + 2) - A000124 (n + 2)).toNat

end

end A163716.P10993443117216671114

/-!
# A163723: Number of n X 2 binary arrays with all 1s connected, a path of 1s from left column to right column, and no 1 having more than two 1s adjacent.

The programs for A163723, the canonical program `A163723.P4446476700745110818` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163723 has offset 1).

The definition of A163723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163723.P1720767424301921390

`2*∑[∑[ogf(1/(1-2x+x^3))]]-1`
-/

namespace A163723.P1720767424301921390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A163723.P1720767424301921390

namespace A163723

/-- `2*∑[∑[ogf(1/(1-2x+x^3))]]-1` -/
def P1720767424301921390.Spec : Prop :=
  ∀ n, P1720767424301921390.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P4446476700745110818

`∑[∑[∑[a(n-1)+a(n-2)]]]-1` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163723

/-- `∑[∑[∑[a(n-1)+a(n-2)]]]-1` -/
def P4446476700745110818.Spec : Prop :=
  ∀ n, P4446476700745110818.a n = A163723 (n + 1)

theorem P4446476700745110818.correct : P4446476700745110818.Spec := by
  intro n
  simp only [A163723, Nat.add_sub_cancel]

end A163723

/-! ## A163723.P8047239021161319331

`A064551(n+4)-2`
-/

namespace A163723.P8047239021161319331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064551 (n + 4) - 2

end

end A163723.P8047239021161319331

namespace A163723

/-- `A064551(n+4)-2` -/
def P8047239021161319331.Spec : Prop :=
  ∀ n, P8047239021161319331.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P1545978692045997864

`A360201(n+1)-n²`
-/

namespace A163723.P1545978692045997864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360201 (n + 1) - (n ^ 2 : ℤ)

end

end A163723.P1545978692045997864

namespace A163723

/-- `A360201(n+1)-n²` -/
def P1545978692045997864.Spec : Prop :=
  ∀ n, P1545978692045997864.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P11712497294712426639

`2*A014162(n+1)-1`
-/

namespace A163723.P11712497294712426639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014162 (n + 1) - 1

end

end A163723.P11712497294712426639

namespace A163723

/-- `2*A014162(n+1)-1` -/
def P11712497294712426639.Spec : Prop :=
  ∀ n, P11712497294712426639.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P17802848855534446180

`2*A116717(n+2)-3`
-/

namespace A163723.P17802848855534446180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116717 (n + 2) - 3

end

end A163723.P17802848855534446180

namespace A163723

/-- `2*A116717(n+2)-3` -/
def P17802848855534446180.Spec : Prop :=
  ∀ n, P17802848855534446180.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P18225120913908770488

`A192961(n+2)-(n+3)`
-/

namespace A163723.P18225120913908770488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192961 (n + 2) - (n + 3 : ℤ)

end

end A163723.P18225120913908770488

namespace A163723

/-- `A192961(n+2)-(n+3)` -/
def P18225120913908770488.Spec : Prop :=
  ∀ n, P18225120913908770488.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P1046644427316525506

`∑[∑[A163714(n+1)-2]]`
-/

namespace A163723.P1046644427316525506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163714 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163723.P1046644427316525506

namespace A163723

/-- `∑[∑[A163714(n+1)-2]]` -/
def P1046644427316525506.Spec : Prop :=
  ∀ n, P1046644427316525506.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P5761673599908050838

`∑[∑[A019274(n+3)]]-1`
-/

namespace A163723.P5761673599908050838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163723.P5761673599908050838

namespace A163723

/-- `∑[∑[A019274(n+3)]]-1` -/
def P5761673599908050838.Spec : Prop :=
  ∀ n, P5761673599908050838.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P11197516671814934610

`2*∑[A001924(n+1)]-1`
-/

namespace A163723.P11197516671814934610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A163723.P11197516671814934610

namespace A163723

/-- `2*∑[A001924(n+1)]-1` -/
def P11197516671814934610.Spec : Prop :=
  ∀ n, P11197516671814934610.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P15039592644628252701

`∑[A192960(n+1)]-(n+2)`
-/

namespace A163723.P15039592644628252701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A163723.P15039592644628252701

namespace A163723

/-- `∑[A192960(n+1)]-(n+2)` -/
def P15039592644628252701.Spec : Prop :=
  ∀ n, P15039592644628252701.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P938332092966793890

`∑[∑[A001595(n+2)-1]]-1`
-/

namespace A163723.P938332092966793890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163723.P938332092966793890

namespace A163723

/-- `∑[∑[A001595(n+2)-1]]-1` -/
def P938332092966793890.Spec : Prop :=
  ∀ n, P938332092966793890.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P11883204740718863455

`∑[∑[A179999(2*(n+1))]]-1`
-/

namespace A163723.P11883204740718863455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179999 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163723.P11883204740718863455

namespace A163723

/-- `∑[∑[A179999(2*(n+1))]]-1` -/
def P11883204740718863455.Spec : Prop :=
  ∀ n, P11883204740718863455.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P15722487336560355116

`∑[A166863(n+2)]-(n+2)²`
-/

namespace A163723.P15722487336560355116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166863 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 2) ^ 2 : ℤ)

end

end A163723.P15722487336560355116

namespace A163723

/-- `∑[A166863(n+2)]-(n+2)²` -/
def P15722487336560355116.Spec : Prop :=
  ∀ n, P15722487336560355116.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P10796327381072654738

`∑[∑[∑[∑[2*A212804(n)]]]]-1`
-/

namespace A163723.P10796327381072654738
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212804 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163723.P10796327381072654738

namespace A163723

/-- `∑[∑[∑[∑[2*A212804(n)]]]]-1` -/
def P10796327381072654738.Spec : Prop :=
  ∀ n, P10796327381072654738.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P8345572051681047059

`∑[∑[∑[2*A000045(n+1)]]]-1`
-/

namespace A163723.P8345572051681047059
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163723.P8345572051681047059

namespace A163723

/-- `∑[∑[∑[2*A000045(n+1)]]]-1` -/
def P8345572051681047059.Spec : Prop :=
  ∀ n, P8345572051681047059.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P13050088920538968409

`∑[∑[∑[2*A337879(3*n+2)]]]-1`
-/

namespace A163723.P13050088920538968409
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A337879 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163723.P13050088920538968409

namespace A163723

/-- `∑[∑[∑[2*A337879(3*n+2)]]]-1` -/
def P13050088920538968409.Spec : Prop :=
  ∀ n, P13050088920538968409.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P9063296591079383669

`A006355(n+8)-(n+1)²-7*(n+1)-17`
-/

namespace A163723.P9063296591079383669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 8) - ((n + 1) ^ 2 : ℤ) - (7 * (n + 1) : ℤ) - 17

end

end A163723.P9063296591079383669

namespace A163723

/-- `A006355(n+8)-(n+1)²-7*(n+1)-17` -/
def P9063296591079383669.Spec : Prop :=
  ∀ n, P9063296591079383669.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P12205373253120482453

`A001891(n)+A053808(n)+n`
-/

namespace A163723.P12205373253120482453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 n + (A053808 n + (n : ℤ))

end

end A163723.P12205373253120482453

namespace A163723

/-- `A001891(n)+A053808(n)+n` -/
def P12205373253120482453.Spec : Prop :=
  ∀ n, P12205373253120482453.a n = A163723 (n + 1)

end A163723

/-! ## A163723.P7043575238789455327

`A000096(n)+∑[∑[A154691(n)]]`
-/

namespace A163723.P7043575238789455327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163723.P7043575238789455327

namespace A163723

/-- `A000096(n)+∑[∑[A154691(n)]]` -/
def P7043575238789455327.Spec : Prop :=
  ∀ n, P7043575238789455327.a n = A163723 (n + 1)

end A163723

/-!
# A163724: Number of n X 3 binary arrays with all 1s connected, a path of 1s from left column to right column, and no 1 having more than two 1s adjacent.

The programs for A163724, there is no canonical definition to state claims against.
-/

/-! ## A163724.P15153170471368010007

`A391822(A167614(n+1))`
-/

namespace A163724.P15153170471368010007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A167614 (n + 1)).toNat

end

end A163724.P15153170471368010007

/-! ## A163724.P14087510307962155045

`A391822(A000124(n+2)+2)`
-/

namespace A163724.P14087510307962155045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A000124 (n + 2) + 2).toNat

end

end A163724.P14087510307962155045

/-! ## A163724.P16543339703560994494

`A391822(A000217(n+3)-n)`
-/

namespace A163724.P16543339703560994494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A163724.P16543339703560994494

/-!
# A163725: Number of n X 4 binary arrays with all 1s connected, a path of 1s from left column to right column, and no 1 having more than two 1s adjacent.

The programs for A163725, there is no canonical definition to state claims against.
-/

/-! ## A163725.P4972914012552813786

`A391822(A000217(n+3)+4)`
-/

namespace A163725.P4972914012552813786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (A000217 (n + 3) + 4).toNat

end

end A163725.P4972914012552813786

/-!
# A163729: Number of n X 8 binary arrays with all 1s connected, a path of 1s from left column to right column, and no 1 having more than two 1s adjacent.

The programs for A163729, there is no canonical definition to state claims against.
-/

/-! ## A163729.P12129650755668421157

`A391822(eq[13, A066657(n)])`
-/

namespace A163729.P12129650755668421157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163729.P12129650755668421157

/-!
# A163732: Number of n X n binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1s adjacent.

The programs for A163732, there is no canonical definition to state claims against.
-/

/-! ## A163732.P7458351749884251729

`A391819((n+1)²+n²)`
-/

namespace A163732.P7458351749884251729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 ((n + 1) ^ 2 + n ^ 2)

end

end A163732.P7458351749884251729

/-! ## A163732.P12335069986959393973

`A241154(A327355(n)+1+n)`
-/

namespace A163732.P12335069986959393973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241154 (A327355 n + 1 + (n : ℤ)).toNat

end

end A163732.P12335069986959393973

/-!
# A163733: Number of n X 2 binary arrays with all 1's connected, all corners 1, and no 1 having more than two 1's adjacent.

The programs for A163733, the canonical program `A163733.P10566443872996321996` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163733 has offset 1).

The definition of A163733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163733.P10566443872996321996

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163733

/-- `a(n-1)+a(n-2)` -/
def P10566443872996321996.Spec : Prop :=
  ∀ n, (P10566443872996321996.a n : ℤ) = A163733 (n + 1)

theorem P10566443872996321996.correct : P10566443872996321996.Spec := by
  intro n
  simp only [A163733, Nat.add_sub_cancel]

end A163733

/-! ## A163733.P5506638329572392244

`a(n-1)-(char[3]-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A163733.P5506638329572392244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A163733.P5506638329572392244

namespace A163733

/-- `a(n-1)-(char[3]-a(n-2))` -/
def P5506638329572392244.Spec : Prop :=
  ∀ n, P5506638329572392244.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P16584769299550584848

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=4`
-/

namespace A163733.P16584769299550584848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2, 4] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A163733.P16584769299550584848

namespace A163733

/-- `2*a(n-1)-a(n-3)` -/
def P16584769299550584848.Spec : Prop :=
  ∀ n, P16584769299550584848.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P7622586913385930376

`a(n-1)-floor(3/n-a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A163733.P7622586913385930376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - ⌊3 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A163733.P7622586913385930376

namespace A163733

/-- `a(n-1)-floor(3/n-a(n-2))` -/
def P7622586913385930376.Spec : Prop :=
  ∀ n, P7622586913385930376.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P10990750893408418626

`A173388(2*n)`
-/

namespace A163733.P10990750893408418626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (2 * n)

end

end A163733.P10990750893408418626

namespace A163733

/-- `A173388(2*n)` -/
def P10990750893408418626.Spec : Prop :=
  ∀ n, P10990750893408418626.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P1535025774170617432

`A006355(n)+char[1]`
-/

namespace A163733.P1535025774170617432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163733.P1535025774170617432

namespace A163733

/-- `A006355(n)+char[1]` -/
def P1535025774170617432.Spec : Prop :=
  ∀ n, P1535025774170617432.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P3495140000038333737

`A006355(n-char[1])`
-/

namespace A163733.P3495140000038333737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A163733.P3495140000038333737

namespace A163733

/-- `A006355(n-char[1])` -/
def P3495140000038333737.Spec : Prop :=
  ∀ n, P3495140000038333737.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P2849440460378776652

`A055389((n-1)%(n+1))`
-/

namespace A163733.P2849440460378776652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A163733.P2849440460378776652

namespace A163733

/-- `A055389((n-1)%(n+1))` -/
def P2849440460378776652.Spec : Prop :=
  ∀ n, P2849440460378776652.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P12473802820870777645

`A198834(n+1)+C(n, n²)`
-/

namespace A163733.P12473802820870777645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)

end

end A163733.P12473802820870777645

namespace A163733

/-- `A198834(n+1)+C(n, n²)` -/
def P12473802820870777645.Spec : Prop :=
  ∀ n, P12473802820870777645.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P4860656316234606675

`round(2/ϕ²*A000045(n+1))`
-/

namespace A163733.P4860656316234606675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.goldenRatio ^ 2 * (A000045 (n + 1) : ℝ))

end

end A163733.P4860656316234606675

namespace A163733

/-- `round(2/ϕ²*A000045(n+1))` -/
def P4860656316234606675.Spec : Prop :=
  ∀ n, P4860656316234606675.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P13695026593526002823

`2*(A000032(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A163733.P13695026593526002823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * (A000032 (n - 1) - a (n - 1))

end

end A163733.P13695026593526002823

namespace A163733

/-- `2*(A000032(n-1)-a(n-1))` -/
def P13695026593526002823.Spec : Prop :=
  ∀ n, P13695026593526002823.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P17764397410058972499

`gcd(2, a(n-1))*A000045(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A163733.P17764397410058972499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (Int.gcd 2 (a (n - 1)) : ℤ) * A000045 (n - 1)

end

end A163733.P17764397410058972499

namespace A163733

/-- `gcd(2, a(n-1))*A000045(n-1)` -/
def P17764397410058972499.Spec : Prop :=
  ∀ n, P17764397410058972499.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P11317734344863480451

`A055389(A289207(n+1))`
-/

namespace A163733.P11317734344863480451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A289207 (n + 1)).toNat

end

end A163733.P11317734344863480451

namespace A163733

/-- `A055389(A289207(n+1))` -/
def P11317734344863480451.Spec : Prop :=
  ∀ n, P11317734344863480451.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P4575616009960531585

`A063524(n)+A006355(n)`
-/

namespace A163733.P4575616009960531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A006355 n

end

end A163733.P4575616009960531585

namespace A163733

/-- `A063524(n)+A006355(n)` -/
def P4575616009960531585.Spec : Prop :=
  ∀ n, P4575616009960531585.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P8822806997990687904

`A055389(A004273(n)-n)`
-/

namespace A163733.P8822806997990687904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (A004273 n - (n : ℤ)).toNat

end

end A163733.P8822806997990687904

namespace A163733

/-- `A055389(A004273(n)-n)` -/
def P8822806997990687904.Spec : Prop :=
  ∀ n, P8822806997990687904.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P1230181025059112491

`gcd(A006355(n), A130779(n))`
-/

namespace A163733.P1230181025059112491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006355 n) (A130779 n)

end

end A163733.P1230181025059112491

namespace A163733

/-- `gcd(A006355(n), A130779(n))` -/
def P1230181025059112491.Spec : Prop :=
  ∀ n, (P1230181025059112491.a n : ℤ) = A163733 (n + 1)

end A163733

/-! ## A163733.P13845929227548699800

`A055389(A289207(2*n)/2)`
-/

namespace A163733.P13845929227548699800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A163733.P13845929227548699800

namespace A163733

/-- `A055389(A289207(2*n)/2)` -/
def P13845929227548699800.Spec : Prop :=
  ∀ n, P13845929227548699800.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P17374290732906872640

`A118658(n)-A154955(n+1)`
-/

namespace A163733.P17374290732906872640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - A154955 (n + 1)

end

end A163733.P17374290732906872640

namespace A163733

/-- `A118658(n)-A154955(n+1)` -/
def P17374290732906872640.Spec : Prop :=
  ∀ n, P17374290732906872640.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P18344595677775481222

`A198834(n+1)+A019590(n+1)`
-/

namespace A163733.P18344595677775481222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198834 (n + 1) + A019590 (n + 1)

end

end A163733.P18344595677775481222

namespace A163733

/-- `A198834(n+1)+A019590(n+1)` -/
def P18344595677775481222.Spec : Prop :=
  ∀ n, P18344595677775481222.a n = A163733 (n + 1)

end A163733

/-! ## A163733.P527650910215679440

`gcd(A154955(n+1), A198834(n+1))`
-/

namespace A163733.P527650910215679440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154955 (n + 1)) (A198834 (n + 1))

end

end A163733.P527650910215679440

namespace A163733

/-- `gcd(A154955(n+1), A198834(n+1))` -/
def P527650910215679440.Spec : Prop :=
  ∀ n, (P527650910215679440.a n : ℤ) = A163733 (n + 1)

end A163733

/-!
# A163734: Number of n X 3 binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1s adjacent.

The programs for A163734, there is no canonical definition to state claims against.
-/

/-! ## A163734.P5654721470730132134

`A391819(A167614(n+1))`
-/

namespace A163734.P5654721470730132134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A167614 (n + 1)).toNat

end

end A163734.P5654721470730132134

/-! ## A163734.P1629010596231539891

`A391819(A373663(n+1))`
-/

namespace A163734.P1629010596231539891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A373663 (n + 1)).toNat

end

end A163734.P1629010596231539891

/-! ## A163734.P4611360720851124478

`A391819(A034856(n+2))`
-/

namespace A163734.P4611360720851124478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A034856 (n + 2)).toNat

end

end A163734.P4611360720851124478

/-! ## A163734.P2682002088638999314

`A391819(A000217(n+2)+n+1)`
-/

namespace A163734.P2682002088638999314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A000217 (n + 2) + (n + 1 : ℤ)).toNat

end

end A163734.P2682002088638999314

/-! ## A163734.P13288547946684956830

`A391819(lt[A345462(n+2), A100053(n)])`
-/

namespace A163734.P13288547946684956830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345462 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163734.P13288547946684956830

/-!
# A163735: Number of n X 4 binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1s adjacent.

The programs for A163735, there is no canonical definition to state claims against.
-/

/-! ## A163735.P5009036295489885971

`A391819(A141214(n+1))`
-/

namespace A163735.P5009036295489885971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A141214 (n + 1)).toNat

end

end A163735.P5009036295489885971

/-! ## A163735.P6497641048775169078

`A391819(A374004(n+1))`
-/

namespace A163735.P6497641048775169078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374004 (n + 1)).toNat

end

end A163735.P6497641048775169078

/-! ## A163735.P8017226744885505694

`A391819(A000217(n+3)+4)`
-/

namespace A163735.P8017226744885505694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A000217 (n + 3) + 4).toNat

end

end A163735.P8017226744885505694

/-! ## A163735.P10120550656362698273

`A391819(lt[A097710(n+2), A100053(n)])`
-/

namespace A163735.P10120550656362698273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097710 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163735.P10120550656362698273

/-! ## A163735.P7314977337514887436

`A391819(lt[A010054(n), A010054(n+3)])`
-/

namespace A163735.P7314977337514887436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163735.P7314977337514887436

/-!
# A163736: Number of n X 5 binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1s adjacent.

The programs for A163736, there is no canonical definition to state claims against.
-/

/-! ## A163736.P16947829579860012886

`A391819(A374005(n+1))`
-/

namespace A163736.P16947829579860012886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374005 (n + 1)).toNat

end

end A163736.P16947829579860012886

/-! ## A163736.P5819062054357852842

`A391819(A046691(n+3))`
-/

namespace A163736.P5819062054357852842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A046691 (n + 3)).toNat

end

end A163736.P5819062054357852842

/-!
# A163737: Number of n X 6 binary arrays with all 1's connected, all corners 1, and no 1 having more than two 1's adjacent.

The programs for A163737, there is no canonical definition to state claims against.
-/

/-! ## A163737.P18124251182902403123

`A391819(A374007(n+1))`
-/

namespace A163737.P18124251182902403123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374007 (n + 1)).toNat

end

end A163737.P18124251182902403123

/-! ## A163737.P16041720894958094663

`A391819(A056115(n)+21)`
-/

namespace A163737.P16041720894958094663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A056115 n + 21).toNat

end

end A163737.P16041720894958094663

/-!
# A163738: Number of n X 7 binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1s adjacent.

The programs for A163738, there is no canonical definition to state claims against.
-/

/-! ## A163738.P14271413623852230312

`A391819(A374008(n+1))`
-/

namespace A163738.P14271413623852230312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374008 (n + 1)).toNat

end

end A163738.P14271413623852230312

/-!
# A163739: Number of n X 8 binary arrays with all 1's connected, all corners 1, and no 1 having more than two 1's adjacent.

The programs for A163739, there is no canonical definition to state claims against.
-/

/-! ## A163739.P3333585671725427006

`A391819(A374009(n+1))`
-/

namespace A163739.P3333585671725427006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374009 (n + 1)).toNat

end

end A163739.P3333585671725427006

/-!
# A163740: Number of n X 9 binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1s adjacent.

The programs for A163740, there is no canonical definition to state claims against.
-/

/-! ## A163740.P17824432736511959516

`A391819(A374010(n+1))`
-/

namespace A163740.P17824432736511959516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374010 (n + 1)).toNat

end

end A163740.P17824432736511959516

/-!
# A163741: Number of n X 10 binary arrays with all 1s connected, all corners 1, and no 1 having more than two 1's adjacent.

The programs for A163741, there is no canonical definition to state claims against.
-/

/-! ## A163741.P15686003343316051967

`A391819(A374011(n+1))`
-/

namespace A163741.P15686003343316051967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391819 (A374011 (n + 1)).toNat

end

end A163741.P15686003343316051967

/-!
# A163746: Expansion of (theta_3(q)^2 + 3 * theta_3(q^3)^2) / 4 - 1 in powers of q.

The programs for A163746, the canonical program `A163746.P11768047734020211813` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163746 has offset 1).

The definition of A163746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163746.P11768047734020211813

`A125061(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163746

/-- `A125061(n+1)` -/
def P11768047734020211813.Spec : Prop :=
  ∀ n, P11768047734020211813.a n = A163746 (n + 1)

theorem P11768047734020211813.correct : P11768047734020211813.Spec := by
  intro n
  simp only [A163746, Nat.add_sub_cancel]

end A163746

/-! ## A163746.P15538686696516126953

`abs(A138745(n+1))`
-/

namespace A163746.P15538686696516126953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138745 (n + 1)|

end

end A163746.P15538686696516126953

namespace A163746

/-- `abs(A138745(n+1))` -/
def P15538686696516126953.Spec : Prop :=
  ∀ n, P15538686696516126953.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P12594435493540957137

`abs(A138746(n+1))`
-/

namespace A163746.P12594435493540957137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138746 (n + 1)|

end

end A163746.P12594435493540957137

namespace A163746

/-- `abs(A138746(n+1))` -/
def P12594435493540957137.Spec : Prop :=
  ∀ n, P12594435493540957137.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P11873531576928395858

`abs(A138950(n+1))`
-/

namespace A163746.P11873531576928395858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138950 (n + 1)|

end

end A163746.P11873531576928395858

namespace A163746

/-- `abs(A138950(n+1))` -/
def P11873531576928395858.Spec : Prop :=
  ∀ n, P11873531576928395858.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P18088536418087102442

`abs(A138952(n+1))`
-/

namespace A163746.P18088536418087102442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A138952 (n + 1)|

end

end A163746.P18088536418087102442

namespace A163746

/-- `abs(A138952(n+1))` -/
def P18088536418087102442.Spec : Prop :=
  ∀ n, P18088536418087102442.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P4161003821342742920

`lcm(2, A138951(n+1))/2`
-/

namespace A163746.P4161003821342742920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A138951 (n + 1)) : ℚ) / 2

end

end A163746.P4161003821342742920

namespace A163746

/-- `lcm(2, A138951(n+1))/2` -/
def P4161003821342742920.Spec : Prop :=
  ∀ n, P4161003821342742920.a n = (A163746 (n + 1) : ℚ)

end A163746

/-! ## A163746.P16363818639478450000

`A138741(A025480(n))`
-/

namespace A163746.P16363818639478450000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (A025480 n).toNat

end

end A163746.P16363818639478450000

namespace A163746

/-- `A138741(A025480(n))` -/
def P16363818639478450000.Spec : Prop :=
  ∀ n, P16363818639478450000.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P16175121713748724797

`A138746(A000265(n+1))`
-/

namespace A163746.P16175121713748724797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138746 (A000265 (n + 1)).toNat

end

end A163746.P16175121713748724797

namespace A163746

/-- `A138746(A000265(n+1))` -/
def P16175121713748724797.Spec : Prop :=
  ∀ n, P16175121713748724797.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P11755360401783304753

`A033999(n)*A138746(n+1)`
-/

namespace A163746.P11755360401783304753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138746 (n + 1)

end

end A163746.P11755360401783304753

namespace A163746

/-- `A033999(n)*A138746(n+1)` -/
def P11755360401783304753.Spec : Prop :=
  ∀ n, P11755360401783304753.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P7219587222124460648

`gcd(A000038(n), A138745(n+1))`
-/

namespace A163746.P7219587222124460648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A138745 (n + 1))

end

end A163746.P7219587222124460648

namespace A163746

/-- `gcd(A000038(n), A138745(n+1))` -/
def P7219587222124460648.Spec : Prop :=
  ∀ n, (P7219587222124460648.a n : ℤ) = A163746 (n + 1)

end A163746

/-! ## A163746.P5726093259423992426

`gcd(A099894(n), A138952(n+1))`
-/

namespace A163746.P5726093259423992426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 n) (A138952 (n + 1))

end

end A163746.P5726093259423992426

namespace A163746

/-- `gcd(A099894(n), A138952(n+1))` -/
def P5726093259423992426.Spec : Prop :=
  ∀ n, (P5726093259423992426.a n : ℤ) = A163746 (n + 1)

end A163746

/-! ## A163746.P7141345010533045506

`lcm(A020985(n), A138745(n+1))`
-/

namespace A163746.P7141345010533045506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A138745 (n + 1))

end

end A163746.P7141345010533045506

namespace A163746

/-- `lcm(A020985(n), A138745(n+1))` -/
def P7141345010533045506.Spec : Prop :=
  ∀ n, (P7141345010533045506.a n : ℤ) = A163746 (n + 1)

end A163746

/-! ## A163746.P9848362045101806145

`lcm(A033999(n), A138950(n+1))`
-/

namespace A163746.P9848362045101806145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A138950 (n + 1))

end

end A163746.P9848362045101806145

namespace A163746

/-- `lcm(A033999(n), A138950(n+1))` -/
def P9848362045101806145.Spec : Prop :=
  ∀ n, (P9848362045101806145.a n : ℤ) = A163746 (n + 1)

end A163746

/-! ## A163746.P3750158442770332680

`lcm(A057077(n), A138952(n+1))`
-/

namespace A163746.P3750158442770332680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A138952 (n + 1))

end

end A163746.P3750158442770332680

namespace A163746

/-- `lcm(A057077(n), A138952(n+1))` -/
def P3750158442770332680.Spec : Prop :=
  ∀ n, (P3750158442770332680.a n : ℤ) = A163746 (n + 1)

end A163746

/-! ## A163746.P6003965853357325640

`A105673(n+1)-A138950(n+1)`
-/

namespace A163746.P6003965853357325640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105673 (n + 1) - A138950 (n + 1)

end

end A163746.P6003965853357325640

namespace A163746

/-- `A105673(n+1)-A138950(n+1)` -/
def P6003965853357325640.Spec : Prop :=
  ∀ n, P6003965853357325640.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P10806106836443684147

`A035154(n+1)*A099545(n+1)`
-/

namespace A163746.P10806106836443684147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A099545 (n + 1)

end

end A163746.P10806106836443684147

namespace A163746

/-- `A035154(n+1)*A099545(n+1)` -/
def P10806106836443684147.Spec : Prop :=
  ∀ n, P10806106836443684147.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P1076405009536516222

`A033999(n+1)*A138745(n+1)`
-/

namespace A163746.P1076405009536516222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A138745 (n + 1)

end

end A163746.P1076405009536516222

namespace A163746

/-- `A033999(n+1)*A138745(n+1)` -/
def P1076405009536516222.Spec : Prop :=
  ∀ n, P1076405009536516222.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P7096570248247876386

`A034947(n+1)*A138950(n+1)`
-/

namespace A163746.P7096570248247876386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A138950 (n + 1)

end

end A163746.P7096570248247876386

namespace A163746

/-- `A034947(n+1)*A138950(n+1)` -/
def P7096570248247876386.Spec : Prop :=
  ∀ n, P7096570248247876386.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P11415354075857652586

`A035154(n+1)*A363340(n+1)`
-/

namespace A163746.P11415354075857652586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (n + 1) * A363340 (n + 1)

end

end A163746.P11415354075857652586

namespace A163746

/-- `A035154(n+1)*A363340(n+1)` -/
def P11415354075857652586.Spec : Prop :=
  ∀ n, P11415354075857652586.a n = A163746 (n + 1)

end A163746

/-! ## A163746.P2055842633467792811

`∑{d}[n+1, A085097(#)*A262209((n+1)/#)]`
-/

namespace A163746.P2055842633467792811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A085097 d * A262209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A163746.P2055842633467792811

namespace A163746

/-- `∑{d}[n+1, A085097(#)*A262209((n+1)/#)]` -/
def P2055842633467792811.Spec : Prop :=
  ∀ n, P2055842633467792811.a n = A163746 (n + 1)

end A163746

/-!
# A163747: Expansion of e.g.f. 2*exp(x)*(1-exp(x))/(1+exp(2*x)).

The programs for A163747, there is no canonical definition to state claims against.
-/

/-! ## A163747.P4692491970906350351

`A218529(n)+1`
-/

namespace A163747.P4692491970906350351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218529 n + 1

end

end A163747.P4692491970906350351

/-! ## A163747.P17470417748774525224

`-A323833(∑[n])`
-/

namespace A163747.P17470417748774525224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A323833 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163747.P17470417748774525224

/-! ## A163747.P15771316738679535218

`xor((-1)^n, A217714(n))`
-/

namespace A163747.P15771316738679535218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ n) (A217714 n)

end

end A163747.P15771316738679535218

/-! ## A163747.P6011739610347981925

`A122045(n)-A155585(n)`
-/

namespace A163747.P6011739610347981925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122045 n - A155585 n

end

end A163747.P6011739610347981925

/-! ## A163747.P15186772050010171741

`A062157(n)*A163982(n)`
-/

namespace A163747.P15186772050010171741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A163982 n

end

end A163747.P15186772050010171741

/-! ## A163747.P14759065831541199218

`1-∑[A323833(A000124(n))]`
-/

namespace A163747.P14759065831541199218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323833 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163747.P14759065831541199218

/-! ## A163747.P7384427916964154246

`Δ[A009390(n)]-A155585(n)`
-/

namespace A163747.P7384427916964154246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A155585 n

end

end A163747.P7384427916964154246

/-! ## A163747.P13180284733429839948

`1-(A155585(n)+A009832(n))`
-/

namespace A163747.P13180284733429839948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A155585 n + A009832 n)

end

end A163747.P13180284733429839948

/-! ## A163747.P15140297189386011790

`2-(A155585(n)+A119880(n))`
-/

namespace A163747.P15140297189386011790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A155585 n + A119880 n)

end

end A163747.P15140297189386011790

/-! ## A163747.P4211033825658386739

`A119879(A000217(n))-A155585(n)`
-/

namespace A163747.P4211033825658386739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119879 (A000217 n).toNat - A155585 n

end

end A163747.P4211033825658386739

/-!
# A163750: a(n) = (n-th even nonprime mod n-th prime).

The programs for A163750, the canonical program `A163750.P12523504971740035434` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163750 has offset 1).

The definition of A163750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163750.P12523504971740035434

`a(n-1)+2` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163750

/-- `a(n-1)+2` -/
def P12523504971740035434.Spec : Prop :=
  ∀ n, (P12523504971740035434.a n : ℤ) = A163750 (n + 1)

theorem P12523504971740035434.correct : P12523504971740035434.Spec := by
  intro n
  simp only [A163750, Nat.add_sub_cancel]

end A163750

/-!
# A163751: a(n) = n-th even nonprime minus n-th nonprime.

The programs for A163751, the canonical program `A163751.P842914624202263356` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163751 has offset 1).

The definition of A163751 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141468, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163751.P842914624202263356

`A163300(n+1)-A141468(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163751

/-- `A163300(n+1)-A141468(n+1)` -/
def P842914624202263356.Spec : Prop :=
  ∀ n, P842914624202263356.a n = A163751 (n + 1)

theorem P842914624202263356.correct : P842914624202263356.Spec := by
  intro n
  simp only [A163751, Nat.add_sub_cancel]

end A163751

/-! ## A163751.P6367990053364429046

`2*A087156(n+1)-A141468(n+1)`
-/

namespace A163751.P6367990053364429046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087156 (n + 1) - A141468 (n + 1)

end

end A163751.P6367990053364429046

namespace A163751

/-- `2*A087156(n+1)-A141468(n+1)` -/
def P6367990053364429046.Spec : Prop :=
  ∀ n, P6367990053364429046.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P8920247342223570894

`(Δ[n²]*comp[A000040(n+1)])%(2*(n+1))`
-/

namespace A163751.P8920247342223570894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)) (2 * (n + 1) : ℤ)

end

end A163751.P8920247342223570894

namespace A163751

/-- `(Δ[n²]*comp[A000040(n+1)])%(2*(n+1))` -/
def P8920247342223570894.Spec : Prop :=
  ∀ n, P8920247342223570894.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P8585064503042728118

`A114637(n+1)-A173073(n+1)`
-/

namespace A163751.P8585064503042728118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (n + 1) - A173073 (n + 1)

end

end A163751.P8585064503042728118

namespace A163751

/-- `A114637(n+1)-A173073(n+1)` -/
def P8585064503042728118.Spec : Prop :=
  ∀ n, P8585064503042728118.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P2542621103197884709

`A163300(n+1)-comp[A000040(n+1)]`
-/

namespace A163751.P2542621103197884709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A163751.P2542621103197884709

namespace A163751

/-- `A163300(n+1)-comp[A000040(n+1)]` -/
def P2542621103197884709.Spec : Prop :=
  ∀ n, P2542621103197884709.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P16826814210876651100

`(A005843(n+1)-A141468(n+1))%(n+1)²`
-/

namespace A163751.P16826814210876651100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (n + 1) - A141468 (n + 1)) ((n + 1) ^ 2 : ℤ)

end

end A163751.P16826814210876651100

namespace A163751

/-- `(A005843(n+1)-A141468(n+1))%(n+1)²` -/
def P16826814210876651100.Spec : Prop :=
  ∀ n, P16826814210876651100.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P1413834146389209931

`∩[A141468(n+1), A005843(n)]-A141468(n+1)`
-/

namespace A163751.P1413834146389209931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A141468 (n + 1)

end

end A163751.P1413834146389209931

namespace A163751

/-- `∩[A141468(n+1), A005843(n)]-A141468(n+1)` -/
def P1413834146389209931.Spec : Prop :=
  ∀ n, P1413834146389209931.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P4527817599620462244

`A165955(n+1)-(A141468(n+1)+A014076(n+1))`
-/

namespace A163751.P4527817599620462244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165955 (n + 1) - (A141468 (n + 1) + A014076 (n + 1))

end

end A163751.P4527817599620462244

namespace A163751

/-- `A165955(n+1)-(A141468(n+1)+A014076(n+1))` -/
def P4527817599620462244.Spec : Prop :=
  ∀ n, P4527817599620462244.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P14122764117835651154

`A014076(n+1)-(A165971(n+1)+A141468(n+1))`
-/

namespace A163751.P14122764117835651154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - (A165971 (n + 1) + A141468 (n + 1))

end

end A163751.P14122764117835651154

namespace A163751

/-- `A014076(n+1)-(A165971(n+1)+A141468(n+1))` -/
def P14122764117835651154.Spec : Prop :=
  ∀ n, P14122764117835651154.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P11814049205386481445

`A035327(A141468(n+1)+A035327(2*(n+1)))`
-/

namespace A163751.P11814049205386481445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A141468 (n + 1) + A035327 (2 * (n + 1))).toNat

end

end A163751.P11814049205386481445

namespace A163751

/-- `A035327(A141468(n+1)+A035327(2*(n+1)))` -/
def P11814049205386481445.Spec : Prop :=
  ∀ n, P11814049205386481445.a n = A163751 (n + 1)

end A163751

/-! ## A163751.P12072077801603588797

`A191558(2*(n+1))-record[A191558(A028920(n+1))]`
-/

namespace A163751.P12072077801603588797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A028920 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * (n + 1)) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163751.P12072077801603588797

namespace A163751

/-- `A191558(2*(n+1))-record[A191558(A028920(n+1))]` -/
def P12072077801603588797.Spec : Prop :=
  ∀ n, P12072077801603588797.a n = A163751 (n + 1)

end A163751

/-!
# A163752: Generalized factorions: numbers which are equal to the sum of the factorials of some or all of their digits in base 10.

The programs for A163752, there is no canonical definition to state claims against.
-/

/-! ## A163752.P8512252690373295239

`A318326(A016125(n))+A053657(n+1)`
-/

namespace A163752.P8512252690373295239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (A016125 n).toNat + A053657 (n + 1)

end

end A163752.P8512252690373295239

/-!
# A163753: At least one prime occurs as a substring of the digits of n.

The programs for A163753, there is no canonical definition to state claims against.
-/

/-! ## A163753.P11043477389477941619

`comp[A062115(n+1)]`
-/

namespace A163753.P11043477389477941619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A163753.P11043477389477941619

/-! ## A163753.P14558226357474160925

`lt[0, A047814(n)]`
-/

namespace A163753.P14558226357474160925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163753.P14558226357474160925

/-! ## A163753.P1374488787971456525

`lt[0, A211396(n)]`
-/

namespace A163753.P1374488787971456525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A163753.P1374488787971456525

/-! ## A163753.P1107372943708885665

`lt[0, A035232(n+1)]+1`
-/

namespace A163753.P1107372943708885665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A163753.P1107372943708885665

/-! ## A163753.P10498161052414902893

`lt[0, A039997(n+1)]+1`
-/

namespace A163753.P10498161052414902893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A163753.P10498161052414902893

/-! ## A163753.P11713261828065704633

`eq[1, A267683(A211396(n)+2)]`
-/

namespace A163753.P11713261828065704633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267683 (A211396 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163753.P11713261828065704633

/-! ## A163753.P4309739383257471334

`eq[2, A032741(A211396(n)²)]`
-/

namespace A163753.P4309739383257471334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A211396 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163753.P4309739383257471334

/-!
# A163754: Exactly two distinct primes occur as substrings of the digits of n.

The programs for A163754, there is no canonical definition to state claims against.
-/

/-! ## A163754.P17947705923768597878

`eq[2, A039997(n+1)]+1`
-/

namespace A163754.P17947705923768597878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A163754.P17947705923768597878

/-! ## A163754.P4537335585566248703

`eq[2, A039997(A028310(n))]`
-/

namespace A163754.P4537335585566248703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163754.P4537335585566248703

/-! ## A163754.P3308056745172980870

`A063660(eq[2, A039997(n+1)])`
-/

namespace A163754.P3308056745172980870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163754.P3308056745172980870

/-! ## A163754.P14477101430217558764

`A020705(eq[2, A039997(n+4)])`
-/

namespace A163754.P14477101430217558764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163754.P14477101430217558764

/-! ## A163754.P7482068408663329995

`eq[2, A039997(A017317(n))]`
-/

namespace A163754.P7482068408663329995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163754.P7482068408663329995

/-! ## A163754.P11914311509162716696

`eq[2, A039997(A017341(n))]`
-/

namespace A163754.P11914311509162716696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163754.P11914311509162716696

/-! ## A163754.P4851295676069738866

`eq[2, A039997(A017365(n))]`
-/

namespace A163754.P4851295676069738866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163754.P4851295676069738866

/-! ## A163754.P14501241936304386970

`eq[2, A039997(A233583(n+1))]`
-/

namespace A163754.P14501241936304386970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163754.P14501241936304386970

/-!
# A163755: a(0)=1. For n>=1, write n in binary. Let b(n,m) be the length of the m-th run of 0's or 1's, reading right to left. Then a(n) = product{m=1 to M} p(m)^b(n,m), where p(m) is the m-th prime, and M is the number of runs of 0's and 1's in binary n.

The programs for A163755, the canonical program `A163755.P822583815578675357` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163755 has offset 0).

The definition of A163755 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057335, A341915, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163755.P822583815578675357

`A057335(A341915(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A163755

/-- `A057335(A341915(n))` -/
def P822583815578675357.Spec : Prop :=
  ∀ n, P822583815578675357.a n = A163755 n

theorem P822583815578675357.correct : P822583815578675357.Spec := by
  intro n
  simp only [A163755]

end A163755

/-! ## A163755.P8211035299418346924

`A334031(xor(n, floor(n/2)))`
-/

namespace A163755.P8211035299418346924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A163755.P8211035299418346924

namespace A163755

/-- `A334031(xor(n, floor(n/2)))` -/
def P8211035299418346924.Spec : Prop :=
  ∀ n, P8211035299418346924.a n = A163755 n

end A163755

/-! ## A163755.P2747786010853772617

`A334031(floor(n/2)+n-and(n, 2*n))`
-/

namespace A163755.P2747786010853772617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (⌊(n : ℚ) / 2⌋ + ((n : ℤ) - (Nat.land n (2 * n) : ℤ))).toNat

end

end A163755.P2747786010853772617

namespace A163755

/-- `A334031(floor(n/2)+n-and(n, 2*n))` -/
def P2747786010853772617.Spec : Prop :=
  ∀ n, P2747786010853772617.a n = A163755 n

end A163755

/-! ## A163755.P4686733039294285463

`A334031(A003188(n))`
-/

namespace A163755.P4686733039294285463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334031 (A003188 n).toNat

end

end A163755.P4686733039294285463

namespace A163755

/-- `A334031(A003188(n))` -/
def P4686733039294285463.Spec : Prop :=
  ∀ n, P4686733039294285463.a n = A163755 n

end A163755

/-! ## A163755.P9633653794787467990

`A055932(A377837(n))`
-/

namespace A163755.P9633653794787467990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A377837 n).toNat

end

end A163755.P9633653794787467990

namespace A163755

/-- `A055932(A377837(n))` -/
def P9633653794787467990.Spec : Prop :=
  ∀ n, P9633653794787467990.a n = A163755 n

end A163755

/-! ## A163755.P14405185899317385081

`A055932(A377835(A056539(n)))`
-/

namespace A163755.P14405185899317385081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A377835 (A056539 n).toNat).toNat

end

end A163755.P14405185899317385081

namespace A163755

/-- `A055932(A377835(A056539(n)))` -/
def P14405185899317385081.Spec : Prop :=
  ∀ n, P14405185899317385081.a n = A163755 n

end A163755

/-! ## A163755.P17893235522083607944

`A055932(A377835(A377836(A377835(n))))`
-/

namespace A163755.P17893235522083607944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A377835 (A377836 (A377835 n).toNat).toNat).toNat

end

end A163755.P17893235522083607944

namespace A163755

/-- `A055932(A377835(A377836(A377835(n))))` -/
def P17893235522083607944.Spec : Prop :=
  ∀ n, P17893235522083607944.a n = A163755 n

end A163755

/-!
# A163756: 14 times triangular numbers.

The programs for A163756, the canonical program `A163756.P13614041795755210983` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163756 has offset 0).

The definition of A163756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163756.P13614041795755210983

`7*n*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163756

/-- `7*n*(n+1)` -/
def P13614041795755210983.Spec : Prop :=
  ∀ n, (P13614041795755210983.a n : ℤ) = A163756 n

theorem P13614041795755210983.correct : P13614041795755210983.Spec := by
  intro n
  simp only [A163756]

end A163756

/-! ## A163756.P14016011014272844127

`A069127(n+1)-1`
-/

namespace A163756.P14016011014272844127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069127 (n + 1) - 1

end

end A163756.P14016011014272844127

namespace A163756

/-- `A069127(n+1)-1` -/
def P14016011014272844127.Spec : Prop :=
  ∀ n, P14016011014272844127.a n = A163756 n

end A163756

/-! ## A163756.P4682615711753555031

`abs(7*n*xor(n, -1))`
-/

namespace A163756.P4682615711753555031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(7 * n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A163756.P4682615711753555031

namespace A163756

/-- `abs(7*n*xor(n, -1))` -/
def P4682615711753555031.Spec : Prop :=
  ∀ n, P4682615711753555031.a n = A163756 n

end A163756

/-! ## A163756.P12285253590242212105

`ogf(14x/(1-3x+3x^2-x^3))`
-/

namespace A163756.P12285253590242212105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 14] [1, -3, 3, -1] n

end

end A163756.P12285253590242212105

namespace A163756

/-- `ogf(14x/(1-3x+3x^2-x^3))` -/
def P12285253590242212105.Spec : Prop :=
  ∀ n, P12285253590242212105.a n = A163756 n

end A163756

/-! ## A163756.P14510255345469185451

`floor(∑[a(n-1)+14])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A163756.P14510255345469185451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163756.P14510255345469185451

namespace A163756

/-- `floor(∑[a(n-1)+14])` -/
def P14510255345469185451.Spec : Prop :=
  ∀ n, (P14510255345469185451.a n : ℤ) = A163756 n

end A163756

/-! ## A163756.P9971323509979733143

`15*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A163756.P9971323509979733143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (15 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A163756.P9971323509979733143

namespace A163756

/-- `15*n-(n-a(n-1))` -/
def P9971323509979733143.Spec : Prop :=
  ∀ n, P9971323509979733143.a n = A163756 n

theorem P9971323509979733143.correct : P9971323509979733143.Spec := by
  intro n
  induction n with
  | zero => simp [A163756, A163756.P9971323509979733143.a, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A163756, Nat.add_sub_cancel, A163756.P9971323509979733143.a, A163756.P13614041795755210983.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A163756

/-!
# A163758: a(n) = 9*n*(n+1).

The programs for A163758, the canonical program `A163758.P16330388119460632135` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163758 has offset 0).

The definition of A163758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n*(n+1)` (program `A163758.P16330388119460632135`, by `A163758.P16330388119460632135.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163758.P16330388119460632135

`9*n*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163758

/-- `9*n*(n+1)` -/
def P16330388119460632135.Spec : Prop :=
  ∀ n, (P16330388119460632135.a n : ℤ) = A163758 n

theorem P16330388119460632135.correct : P16330388119460632135.Spec := by
  intro n
  simp only [A163758]

end A163758

/-! ## A163758.P16229624591802700686

`lcm(3, Δ[n^3])-3`
-/

namespace A163758.P16229624591802700686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - 3

end

end A163758.P16229624591802700686

namespace A163758

/-- `lcm(3, Δ[n^3])-3` -/
def P16229624591802700686.Spec : Prop :=
  ∀ n, P16229624591802700686.a n = A163758 n

end A163758

/-! ## A163758.P11526707562933243295

`floor(∑[a(n-1)+18])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A163758.P11526707562933243295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163758.P11526707562933243295

namespace A163758

/-- `floor(∑[a(n-1)+18])` -/
def P11526707562933243295.Spec : Prop :=
  ∀ n, (P11526707562933243295.a n : ℤ) = A163758 n

end A163758

/-! ## A163758.P2491182103218975938

`abs(∑[n]/tan(acot(36)))/2`
-/

namespace A163758.P2491182103218975938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (36 : ℝ))| / 2

end

end A163758.P2491182103218975938

namespace A163758

/-- `abs(∑[n]/tan(acot(36)))/2` -/
def P2491182103218975938.Spec : Prop :=
  ∀ n, P2491182103218975938.a n = (A163758 n : ℝ)

end A163758

/-! ## A163758.P11531014201990141304

`floor(∑[n]/tan(acot(36)))/2`
-/

namespace A163758.P11531014201990141304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (36 : ℝ))⌋ : ℚ) / 2

end

end A163758.P11531014201990141304

namespace A163758

/-- `floor(∑[n]/tan(acot(36)))/2` -/
def P11531014201990141304.Spec : Prop :=
  ∀ n, P11531014201990141304.a n = (A163758 n : ℚ)

end A163758

/-! ## A163758.P12677336758144517550

`19*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A163758.P12677336758144517550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (19 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A163758.P12677336758144517550

namespace A163758

/-- `19*n-(n-a(n-1))` -/
def P12677336758144517550.Spec : Prop :=
  ∀ n, P12677336758144517550.a n = A163758 n

theorem P12677336758144517550.correct : P12677336758144517550.Spec := by
  intro n
  induction n with
  | zero => simp [A163758, A163758.P12677336758144517550.a, A163758.P16330388119460632135.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A163758, Nat.add_sub_cancel, A163758.P12677336758144517550.a, A163758.P16330388119460632135.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A163758

/-! ## A163758.P309622243317989264

`∑[a(n-1)+18]-(n+1)` with `a(0)=1`
-/

namespace A163758.P309622243317989264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A163758.P309622243317989264

namespace A163758

/-- `∑[a(n-1)+18]-(n+1)` -/
def P309622243317989264.Spec : Prop :=
  ∀ n, P309622243317989264.a n = A163758 n

end A163758

/-! ## A163758.P13468794427171498873

`A069131(n+1)-1`
-/

namespace A163758.P13468794427171498873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069131 (n + 1) - 1

end

end A163758.P13468794427171498873

namespace A163758

/-- `A069131(n+1)-1` -/
def P13468794427171498873.Spec : Prop :=
  ∀ n, P13468794427171498873.a n = A163758 n

end A163758

/-!
# A163759: Exactly three distinct primes occur as substrings of the digits of n.

The programs for A163759, there is no canonical definition to state claims against.
-/

/-! ## A163759.P7034163585381494329

`eq[3, A039997(n+2)]+2`
-/

namespace A163759.P7034163585381494329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A163759.P7034163585381494329

/-! ## A163759.P7199621714201930585

`eq[3, A039997(A028310(n))]`
-/

namespace A163759.P7199621714201930585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163759.P7199621714201930585

/-! ## A163759.P4939815728679762575

`A011760(eq[3, A039997(n+1)])`
-/

namespace A163759.P4939815728679762575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163759.P4939815728679762575

/-! ## A163759.P15928298604051331999

`eq[1, A039997(A017317(n))-2]`
-/

namespace A163759.P15928298604051331999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017317 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163759.P15928298604051331999

/-! ## A163759.P886797754212479864

`eq[1, A039997(A017341(n))-2]`
-/

namespace A163759.P886797754212479864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017341 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163759.P886797754212479864

/-! ## A163759.P11702527705536593935

`eq[1, A039997(A017365(n))-2]`
-/

namespace A163759.P11702527705536593935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017365 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163759.P11702527705536593935

/-! ## A163759.P820528118364876261

`eq[3, A039997(A060000(n+1))]`
-/

namespace A163759.P820528118364876261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163759.P820528118364876261

/-!
# A163760: Exactly four distinct primes occur as substrings of the digits of n.

The programs for A163760, there is no canonical definition to state claims against.
-/

/-! ## A163760.P10545835064243477510

`eq[4, A039997(A028310(n))]`
-/

namespace A163760.P10545835064243477510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163760.P10545835064243477510

/-! ## A163760.P16039743239762622793

`A011760(eq[4, A039997(n+1)])`
-/

namespace A163760.P16039743239762622793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163760.P16039743239762622793

/-! ## A163760.P12343787666894005032

`A063660(eq[4, A039997(n+1)])`
-/

namespace A163760.P12343787666894005032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163760.P12343787666894005032

/-! ## A163760.P14997995907157387522

`A153152(eq[4, A039997(n+1)])`
-/

namespace A163760.P14997995907157387522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163760.P14997995907157387522

/-! ## A163760.P9705179027474202514

`eq[4, A039997(A017317(n))]`
-/

namespace A163760.P9705179027474202514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163760.P9705179027474202514

/-! ## A163760.P16293424119410601456

`eq[4, A039997(A017341(n))]`
-/

namespace A163760.P16293424119410601456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163760.P16293424119410601456

/-! ## A163760.P641078213280976831

`eq[4, A039997(A017365(n))]`
-/

namespace A163760.P641078213280976831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163760.P641078213280976831

/-! ## A163760.P14773052420240187322

`eq[4, A039997(A233583(n+1))]`
-/

namespace A163760.P14773052420240187322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163760.P14773052420240187322

/-!
# A163761: a(n) = 10*n*(n+1).

The programs for A163761, the canonical program `A163761.P557953753826643866` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163761 has offset 0).

The definition of A163761 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n*(n+1)` (program `A163761.P557953753826643866`, by `A163761.P557953753826643866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163761.P557953753826643866

`10*n*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163761

/-- `10*n*(n+1)` -/
def P557953753826643866.Spec : Prop :=
  ∀ n, (P557953753826643866.a n : ℤ) = A163761 n

theorem P557953753826643866.correct : P557953753826643866.Spec := by
  intro n
  simp only [A163761]

end A163761

/-! ## A163761.P5306357380999580141

`∑[a(n-1)+20]` with `a(0)=0`
-/

namespace A163761.P5306357380999580141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 20

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163761.P5306357380999580141

namespace A163761

/-- `∑[a(n-1)+20]` -/
def P5306357380999580141.Spec : Prop :=
  ∀ n, (P5306357380999580141.a n : ℤ) = A163761 n

end A163761

/-! ## A163761.P3643578785957474926

`abs(10*n*xor(n, -1))`
-/

namespace A163761.P3643578785957474926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) * Int.xor (n : ℤ) (-1)|

end

end A163761.P3643578785957474926

namespace A163761

/-- `abs(10*n*xor(n, -1))` -/
def P3643578785957474926.Spec : Prop :=
  ∀ n, P3643578785957474926.a n = A163761 n

end A163761

/-! ## A163761.P9224256162105001609

`-(10*n*xor(n, -1))`
-/

namespace A163761.P9224256162105001609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((10 * n : ℤ) * Int.xor (n : ℤ) (-1))

end

end A163761.P9224256162105001609

namespace A163761

/-- `-(10*n*xor(n, -1))` -/
def P9224256162105001609.Spec : Prop :=
  ∀ n, P9224256162105001609.a n = A163761 n

end A163761

/-! ## A163761.P783911977680423265

`20*n²-a(n-1)` with `a(0)=0`
-/

namespace A163761.P783911977680423265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (20 * n ^ 2 : ℤ) - a (n - 1)

end

end A163761.P783911977680423265

namespace A163761

/-- `20*n²-a(n-1)` -/
def P783911977680423265.Spec : Prop :=
  ∀ n, P783911977680423265.a n = A163761 n

theorem P783911977680423265.correct : P783911977680423265.Spec := by
  intro n
  induction n with
  | zero => simp [A163761, A163761.P783911977680423265.a, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A163761, Nat.add_sub_cancel, A163761.P783911977680423265.a, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A163761

/-! ## A163761.P481284492613123017

`21*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A163761.P481284492613123017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (21 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A163761.P481284492613123017

namespace A163761

/-- `21*n-(n-a(n-1))` -/
def P481284492613123017.Spec : Prop :=
  ∀ n, P481284492613123017.a n = A163761 n

theorem P481284492613123017.correct : P481284492613123017.Spec := by
  intro n
  induction n with
  | zero => simp [A163761, A163761.P481284492613123017.a, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A163761, Nat.add_sub_cancel, A163761.P481284492613123017.a, A163761.P557953753826643866.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A163761

/-! ## A163761.P2150077029120640361

`A273366(n)-2`
-/

namespace A163761.P2150077029120640361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273366 n - 2

end

end A163761.P2150077029120640361

namespace A163761

/-- `A273366(n)-2` -/
def P2150077029120640361.Spec : Prop :=
  ∀ n, P2150077029120640361.a n = A163761 n

end A163761

/-! ## A163761.P1773483480282183338

`A069133(n+1)-1`
-/

namespace A163761.P1773483480282183338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069133 (n + 1) - 1

end

end A163761.P1773483480282183338

namespace A163761

/-- `A069133(n+1)-1` -/
def P1773483480282183338.Spec : Prop :=
  ∀ n, P1773483480282183338.a n = A163761 n

end A163761

/-! ## A163761.P3030433392445866867

`A124437(n+1)/5`
-/

namespace A163761.P3030433392445866867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124437 (n + 1) : ℚ) / 5

end

end A163761.P3030433392445866867

namespace A163761

/-- `A124437(n+1)/5` -/
def P3030433392445866867.Spec : Prop :=
  ∀ n, P3030433392445866867.a n = (A163761 n : ℚ)

end A163761

/-! ## A163761.P394943136449585728

`A033583(n)+A008592(n)`
-/

namespace A163761.P394943136449585728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A008592 n

end

end A163761.P394943136449585728

namespace A163761

/-- `A033583(n)+A008592(n)` -/
def P394943136449585728.Spec : Prop :=
  ∀ n, P394943136449585728.a n = A163761 n

end A163761

/-! ## A163761.P6700471536252095939

`A051874(n)+A008601(n)`
-/

namespace A163761.P6700471536252095939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051874 n + A008601 n

end

end A163761.P6700471536252095939

namespace A163761

/-- `A051874(n)+A008601(n)` -/
def P6700471536252095939.Spec : Prop :=
  ∀ n, P6700471536252095939.a n = A163761 n

end A163761

/-! ## A163761.P9524169455525647847

`A045945(n)+A028563(n)`
-/

namespace A163761.P9524169455525647847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n + A028563 n

end

end A163761.P9524169455525647847

namespace A163761

/-- `A045945(n)+A028563(n)` -/
def P9524169455525647847.Spec : Prop :=
  ∀ n, P9524169455525647847.a n = A163761 n

end A163761

/-! ## A163761.P6518392799132229807

`A046092(n)+A035008(n)`
-/

namespace A163761.P6518392799132229807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + A035008 n

end

end A163761.P6518392799132229807

namespace A163761

/-- `A046092(n)+A035008(n)` -/
def P6518392799132229807.Spec : Prop :=
  ∀ n, P6518392799132229807.a n = A163761 n

end A163761

/-! ## A163761.P17101208185421701056

`A049598(n)+A033996(n)`
-/

namespace A163761.P17101208185421701056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n + A033996 n

end

end A163761.P17101208185421701056

namespace A163761

/-- `A049598(n)+A033996(n)` -/
def P17101208185421701056.Spec : Prop :=
  ∀ n, P17101208185421701056.a n = A163761 n

end A163761

/-! ## A163761.P9885831353120957077

`A098847(n)+A013656(n)`
-/

namespace A163761.P9885831353120957077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098847 n + A013656 n

end

end A163761.P9885831353120957077

namespace A163761

/-- `A098847(n)+A013656(n)` -/
def P9885831353120957077.Spec : Prop :=
  ∀ n, P9885831353120957077.a n = A163761 n

end A163761

/-! ## A163761.P4417739445730138292

`A098603(n)+A016766(n)`
-/

namespace A163761.P4417739445730138292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098603 n + A016766 n

end

end A163761.P4417739445730138292

namespace A163761

/-- `A098603(n)+A016766(n)` -/
def P4417739445730138292.Spec : Prop :=
  ∀ n, P4417739445730138292.a n = A163761 n

end A163761

/-! ## A163761.P13101193081928831998

`A098850(n)+A051872(n)`
-/

namespace A163761.P13101193081928831998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098850 n + A051872 n

end

end A163761.P13101193081928831998

namespace A163761

/-- `A098850(n)+A051872(n)` -/
def P13101193081928831998.Spec : Prop :=
  ∀ n, P13101193081928831998.a n = A163761 n

end A163761

/-! ## A163761.P13251806013918383672

`A139278(n)+A014106(n)`
-/

namespace A163761.P13251806013918383672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139278 n + A014106 n

end

end A163761.P13251806013918383672

namespace A163761

/-- `A139278(n)+A014106(n)` -/
def P13251806013918383672.Spec : Prop :=
  ∀ n, P13251806013918383672.a n = A163761 n

end A163761

/-! ## A163761.P16457931232878803308

`A152745(n)+A008597(n)`
-/

namespace A163761.P16457931232878803308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152745 n + A008597 n

end

end A163761.P16457931232878803308

namespace A163761

/-- `A152745(n)+A008597(n)` -/
def P16457931232878803308.Spec : Prop :=
  ∀ n, P16457931232878803308.a n = A163761 n

end A163761

/-!
# A163763: a(n) = sqrt(sigma(A008847(n)^2)), where A008847 lists numbers m such that sigma(m^2) is a square.

The programs for A163763, there is no canonical definition to state claims against.
-/

/-! ## A163763.P2857370845341992421

`record[A004151(sqrt(A128608(n+1)))]`
-/

namespace A163763.P2857370845341992421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (A128608 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163763.P2857370845341992421

/-! ## A163763.P2258963129434141036

`record[A019554(sqrt(A128608(n+1)))]`
-/

namespace A163763.P2258963129434141036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway (Real.sqrt (A128608 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163763.P2258963129434141036

/-!
# A163765: Inverse binomial transform of A048775 (assuming offset zero in both sequences).

The programs for A163765, the canonical program `A163765.P10197405487920566241` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163765 has offset 1).

The definition of A163765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163765.P10197405487920566241

`round(A225034(n+1)-acot(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163765

/-- `round(A225034(n+1)-acot(n))` -/
def P10197405487920566241.Spec : Prop :=
  ∀ n, P10197405487920566241.a n = A163765 (n + 1)

theorem P10197405487920566241.correct : P10197405487920566241.Spec := by
  intro n
  simp only [A163765, Nat.add_sub_cancel]

end A163765

/-! ## A163765.P876170837430212184

`A225034(n+1)-A233583(n+1)+n`
-/

namespace A163765.P876170837430212184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 (n + 1) - A233583 (n + 1) + (n : ℤ)

end

end A163765.P876170837430212184

namespace A163765

/-- `A225034(n+1)-A233583(n+1)+n` -/
def P876170837430212184.Spec : Prop :=
  ∀ n, P876170837430212184.a n = A163765 (n + 1)

end A163765

/-!
# A163767: a(n) = tau_{n}(n) = number of ordered n-factorizations of n.

The programs for A163767, the canonical program `A163767.P2266895804552245507` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163767 has offset 1).

The definition of A163767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163767.P2266895804552245507

`∏{e}[n+1, C(#+n, n)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163767

/-- `∏{e}[n+1, C(#+n, n)]` -/
def P2266895804552245507.Spec : Prop :=
  ∀ n, (P2266895804552245507.a n : ℤ) = A163767 (n + 1)

theorem P2266895804552245507.correct : P2266895804552245507.Spec := by
  intro n
  simp only [A163767, Nat.add_sub_cancel]

end A163767

/-! ## A163767.P1782882601891314723

`A334997(∑[4*n]+1)`
-/

namespace A163767.P1782882601891314723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A163767.P1782882601891314723

namespace A163767

/-- `A334997(∑[4*n]+1)` -/
def P1782882601891314723.Spec : Prop :=
  ∀ n, P1782882601891314723.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P6622052187104935181

`and(-1, A334997(n²+(n+1)²))`
-/

namespace A163767.P6622052187104935181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A334997 (n ^ 2 + (n + 1) ^ 2))

end

end A163767.P6622052187104935181

namespace A163767

/-- `and(-1, A334997(n²+(n+1)²))` -/
def P6622052187104935181.Spec : Prop :=
  ∀ n, P6622052187104935181.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P13924450819433477155

`or(char[2], A334997(A001844(n)))`
-/

namespace A163767.P13924450819433477155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A334997 (A001844 n).toNat)

end

end A163767.P13924450819433477155

namespace A163767

/-- `or(char[2], A334997(A001844(n)))` -/
def P13924450819433477155.Spec : Prop :=
  ∀ n, P13924450819433477155.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P7930133676712361881

`A334997((n+1)²+n²)%A131993(n+1)`
-/

namespace A163767.P7930133676712361881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334997 ((n + 1) ^ 2 + n ^ 2)) (A131993 (n + 1))

end

end A163767.P7930133676712361881

namespace A163767

/-- `A334997((n+1)²+n²)%A131993(n+1)` -/
def P7930133676712361881.Spec : Prop :=
  ∀ n, P7930133676712361881.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P5621105965762378367

`A014963(82*(n+1))*A334997((n+1)²+n²)`
-/

namespace A163767.P5621105965762378367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (82 * (n + 1)) * A334997 ((n + 1) ^ 2 + n ^ 2)

end

end A163767.P5621105965762378367

namespace A163767

/-- `A014963(82*(n+1))*A334997((n+1)²+n²)` -/
def P5621105965762378367.Spec : Prop :=
  ∀ n, P5621105965762378367.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P16680134760089682699

`lcm(A033999(n), A334997(A001844(n)))`
-/

namespace A163767.P16680134760089682699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A334997 (A001844 n).toNat)

end

end A163767.P16680134760089682699

namespace A163767

/-- `lcm(A033999(n), A334997(A001844(n)))` -/
def P16680134760089682699.Spec : Prop :=
  ∀ n, (P16680134760089682699.a n : ℤ) = A163767 (n + 1)

end A163767

/-! ## A163767.P9211524715168868327

`A334997(A001844(n))%(A001792(n)+1)`
-/

namespace A163767.P9211524715168868327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334997 (A001844 n).toNat) (A001792 n + 1)

end

end A163767.P9211524715168868327

namespace A163767

/-- `A334997(A001844(n))%(A001792(n)+1)` -/
def P9211524715168868327.Spec : Prop :=
  ∀ n, P9211524715168868327.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P14551226651422025702

`A000010(C(2, n)!)*A334997(A001844(n))`
-/

namespace A163767.P14551226651422025702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A334997 (A001844 n).toNat

end

end A163767.P14551226651422025702

namespace A163767

/-- `A000010(C(2, n)!)*A334997(A001844(n))` -/
def P14551226651422025702.Spec : Prop :=
  ∀ n, P14551226651422025702.a n = A163767 (n + 1)

end A163767

/-! ## A163767.P17215601752081721888

`A334997(A001844(n))+char[A000108(n+12)]`
-/

namespace A163767.P17215601752081721888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 12)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334997 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A163767.P17215601752081721888

namespace A163767

/-- `A334997(A001844(n))+char[A000108(n+12)]` -/
def P17215601752081721888.Spec : Prop :=
  ∀ n, P17215601752081721888.a n = A163767 (n + 1)

end A163767

/-!
# A163768: Distance of Fibonacci(n) to the closest prime which is not Fibonacci(n) itself.

The programs for A163768, there is no canonical definition to state claims against.
-/

/-! ## A163768.P1268471619158014700

`A051700(A000045(n))`
-/

namespace A163768.P1268471619158014700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A000045 n).toNat

end

end A163768.P1268471619158014700

/-! ## A163768.P15117347936236706187

`A051700(abs(A236191(n)%A004402(n)))`
-/

namespace A163768.P15117347936236706187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 |Int.tmod (A236191 n) (A004402 n)|.toNat

end

end A163768.P15117347936236706187

/-! ## A163768.P9676315578463316671

`A051700(A039913(∑[n])%A004402(n))`
-/

namespace A163768.P9676315578463316671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (Int.tmod (A039913 (∑ j ∈ Finset.range (n + 1), f1 j)) (A004402 n)).toNat

end

end A163768.P9676315578463316671

/-! ## A163768.P1571643002510987997

`A051700(A212804(n+1)%A004402(n))`
-/

namespace A163768.P1571643002510987997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (Int.tmod (A212804 (n + 1)) (A004402 n)).toNat

end

end A163768.P1571643002510987997

/-!
# A163769: Primes p such that 2*p+3 is not prime.

The programs for A163769, the canonical program `A163769.P6265540848864808962` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163769 has offset 1).

The definition of A163769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163769.P6265540848864808962

`p?[gcd(n, A156707(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163769

/-- `p?[gcd(n, A156707(n+1))]` -/
def P6265540848864808962.Spec : Prop :=
  ∀ n, (P6265540848864808962.a n : ℤ) = A163769 (n + 1)

theorem P6265540848864808962.correct : P6265540848864808962.Spec := by
  intro n
  simp only [A163769, Nat.add_sub_cancel]

end A163769

/-! ## A163769.P16914339965097613326

`p?[comp[(n-1)*A001222(2*n+1)]]`
-/

namespace A163769.P16914339965097613326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001222 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P16914339965097613326

namespace A163769

/-- `p?[comp[(n-1)*A001222(2*n+1)]]` -/
def P16914339965097613326.Spec : Prop :=
  ∀ n, (P16914339965097613326.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P17380219305639946180

`record[A020639(A077654(n+1)-1)]`
-/

namespace A163769.P17380219305639946180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A077654 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163769.P17380219305639946180

namespace A163769

/-- `record[A020639(A077654(n+1)-1)]` -/
def P17380219305639946180.Spec : Prop :=
  ∀ n, P17380219305639946180.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P17517491608210090437

`p?[A153238(n+1)]`
-/

namespace A163769.P17517491608210090437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163769.P17517491608210090437

namespace A163769

/-- `p?[A153238(n+1)]` -/
def P17517491608210090437.Spec : Prop :=
  ∀ n, P17517491608210090437.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P1797594086475498582

`p?[A053726(n+1)-2]`
-/

namespace A163769.P1797594086475498582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163769.P1797594086475498582

namespace A163769

/-- `p?[A053726(n+1)-2]` -/
def P1797594086475498582.Spec : Prop :=
  ∀ n, P1797594086475498582.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P16608236097100176529

`p?[A104275(n+1)-2]`
-/

namespace A163769.P16608236097100176529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163769.P16608236097100176529

namespace A163769

/-- `p?[A104275(n+1)-2]` -/
def P16608236097100176529.Spec : Prop :=
  ∀ n, P16608236097100176529.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P11426438281531972010

`p?[lt[A101264(n+1), 1]]`
-/

namespace A163769.P11426438281531972010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P11426438281531972010

namespace A163769

/-- `p?[lt[A101264(n+1), 1]]` -/
def P11426438281531972010.Spec : Prop :=
  ∀ n, (P11426438281531972010.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P2721274373734873431

`p?[comp[A005097(n+1)-1]]`
-/

namespace A163769.P2721274373734873431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P2721274373734873431

namespace A163769

/-- `p?[comp[A005097(n+1)-1]]` -/
def P2721274373734873431.Spec : Prop :=
  ∀ n, (P2721274373734873431.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P7117490272779717993

`p?[comp[A130290(n+1)-1]]`
-/

namespace A163769.P7117490272779717993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P7117490272779717993

namespace A163769

/-- `p?[comp[A130290(n+1)-1]]` -/
def P7117490272779717993.Spec : Prop :=
  ∀ n, (P7117490272779717993.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P6067784105799656150

`p?[comp[A006530(2*n+1)-(n+2)]]`
-/

namespace A163769.P6067784105799656150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n + 2 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P6067784105799656150

namespace A163769

/-- `p?[comp[A006530(2*n+1)-(n+2)]]` -/
def P6067784105799656150.Spec : Prop :=
  ∀ n, (P6067784105799656150.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P18092068282759507821

`p?[comp[A020639(2*n+1)-(n+2)]]`
-/

namespace A163769.P18092068282759507821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) - (n + 2 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163769.P18092068282759507821

namespace A163769

/-- `p?[comp[A020639(2*n+1)-(n+2)]]` -/
def P18092068282759507821.Spec : Prop :=
  ∀ n, (P18092068282759507821.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P5594326393400511735

`record[A006530(A153238(n+2))]`
-/

namespace A163769.P5594326393400511735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163769.P5594326393400511735

namespace A163769

/-- `record[A006530(A153238(n+2))]` -/
def P5594326393400511735.Spec : Prop :=
  ∀ n, P5594326393400511735.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P11399684000726041122

`record[A020639(A153238(n+3))]`
-/

namespace A163769.P11399684000726041122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A153238 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163769.P11399684000726041122

namespace A163769

/-- `record[A020639(A153238(n+3))]` -/
def P11399684000726041122.Spec : Prop :=
  ∀ n, P11399684000726041122.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P15375101047744530591

`filter[A153238(n+1), A010051(#)]`
-/

namespace A163769.P15375101047744530591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163769.P15375101047744530591

namespace A163769

/-- `filter[A153238(n+1), A010051(#)]` -/
def P15375101047744530591.Spec : Prop :=
  ∀ n, P15375101047744530591.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P12319086151981425240

`record[A006530(A007921(n+1)-1)]`
-/

namespace A163769.P12319086151981425240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007921 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163769.P12319086151981425240

namespace A163769

/-- `record[A006530(A007921(n+1)-1)]` -/
def P12319086151981425240.Spec : Prop :=
  ∀ n, P12319086151981425240.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P2891789654894486517

`record[A006530(A309355(n+1)-2)]`
-/

namespace A163769.P2891789654894486517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A309355 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163769.P2891789654894486517

namespace A163769

/-- `record[A006530(A309355(n+1)-2)]` -/
def P2891789654894486517.Spec : Prop :=
  ∀ n, P2891789654894486517.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P14318659029716597967

`record[A006530(A104275(n+2)-2)]`
-/

namespace A163769.P14318659029716597967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A104275 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163769.P14318659029716597967

namespace A163769

/-- `record[A006530(A104275(n+2)-2)]` -/
def P14318659029716597967.Spec : Prop :=
  ∀ n, P14318659029716597967.a n = A163769 (n + 1)

end A163769

/-! ## A163769.P12335634421365771611

`∩[A000040(n+1), A153238(n+1)]`
-/

namespace A163769.P12335634421365771611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163769.P12335634421365771611

namespace A163769

/-- `∩[A000040(n+1), A153238(n+1)]` -/
def P12335634421365771611.Spec : Prop :=
  ∀ n, (P12335634421365771611.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P959875951752307631

`∩[A004139(n+1), A153238(n+1)]`
-/

namespace A163769.P959875951752307631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163769.P959875951752307631

namespace A163769

/-- `∩[A004139(n+1), A153238(n+1)]` -/
def P959875951752307631.Spec : Prop :=
  ∀ n, (P959875951752307631.a n : ℤ) = A163769 (n + 1)

end A163769

/-! ## A163769.P10818919247327647805

`∩[A006005(n+1), A153238(n+1)]`
-/

namespace A163769.P10818919247327647805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163769.P10818919247327647805

namespace A163769

/-- `∩[A006005(n+1), A153238(n+1)]` -/
def P10818919247327647805.Spec : Prop :=
  ∀ n, (P10818919247327647805.a n : ℤ) = A163769 (n + 1)

end A163769

/-!
# A163773: Row sums of the swinging derangement triangle (A163770).

The programs for A163773, there is no canonical definition to state claims against.
-/

/-! ## A163773.P4795676005239538330

`A056040(n+1)-A163650(n+1)`
-/

namespace A163773.P4795676005239538330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) - A163650 (n + 1)

end

end A163773.P4795676005239538330

/-! ## A163773.P3659169077189215173

`A163865(n+1)-(A163843(n)+A163650(n+1))`
-/

namespace A163773.P3659169077189215173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 (n + 1) - (A163843 n + A163650 (n + 1))

end

end A163773.P3659169077189215173

/-! ## A163773.P6096961243900579913

`A056040(n+1)-A163770(∑[n+1])`
-/

namespace A163773.P6096961243900579913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) - A163770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163773.P6096961243900579913

/-!
# A163774: Row sums of the central coefficients triangle (A163771).

The programs for A163774, the canonical program `A163774.P18138271461630038501` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163774 has offset 0).

The definition of A163774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163774.P12995416180763211670

`Δ[A006134(n)-A097893(n)]`
-/

namespace A163774.P12995416180763211670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163774.P12995416180763211670

namespace A163774

/-- `Δ[A006134(n)-A097893(n)]` -/
def P12995416180763211670.Spec : Prop :=
  ∀ n, P12995416180763211670.a n = A163774 n

end A163774

/-! ## A163774.P18138271461630038501

`A000984(n+1)-A002426(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163774

/-- `A000984(n+1)-A002426(n+1)` -/
def P18138271461630038501.Spec : Prop :=
  ∀ n, P18138271461630038501.a n = A163774 n

theorem P18138271461630038501.correct : P18138271461630038501.Spec := by
  intro n
  simp only [A163774]

end A163774

/-! ## A163774.P14755525518466319376

`A126869(2*(n+1))-Δ[A097893(n)]`
-/

namespace A163774.P14755525518466319376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A163774.P14755525518466319376

namespace A163774

/-- `A126869(2*(n+1))-Δ[A097893(n)]` -/
def P14755525518466319376.Spec : Prop :=
  ∀ n, P14755525518466319376.a n = A163774 n

end A163774

/-! ## A163774.P17727141557569094675

`record[A081668(n+1)]-A002426(n+1)`
-/

namespace A163774.P17727141557569094675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002426 (n + 1)

end

end A163774.P17727141557569094675

namespace A163774

/-- `record[A081668(n+1)]-A002426(n+1)` -/
def P17727141557569094675.Spec : Prop :=
  ∀ n, P17727141557569094675.a n = A163774 n

end A163774

/-! ## A163774.P16044998915165791304

`A001405(2*(n+1))-A002426(n+1)`
-/

namespace A163774.P16044998915165791304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * (n + 1)) - A002426 (n + 1)

end

end A163774.P16044998915165791304

namespace A163774

/-- `A001405(2*(n+1))-A002426(n+1)` -/
def P16044998915165791304.Spec : Prop :=
  ∀ n, P16044998915165791304.a n = A163774 n

end A163774

/-! ## A163774.P3044922040411660016

`A063886(2*(n+1))-A002426(n+1)`
-/

namespace A163774.P3044922040411660016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * (n + 1)) - A002426 (n + 1)

end

end A163774.P3044922040411660016

namespace A163774

/-- `A063886(2*(n+1))-A002426(n+1)` -/
def P3044922040411660016.Spec : Prop :=
  ∀ n, P3044922040411660016.a n = A163774 n

end A163774

/-! ## A163774.P15388998377351875346

`A081668(2*(n+1))-A002426(n+1)`
-/

namespace A163774.P15388998377351875346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * (n + 1)) - A002426 (n + 1)

end

end A163774.P15388998377351875346

namespace A163774

/-- `A081668(2*(n+1))-A002426(n+1)` -/
def P15388998377351875346.Spec : Prop :=
  ∀ n, P15388998377351875346.a n = A163774 n

end A163774

/-! ## A163774.P728223302202083506

`2*A088218(n+1)-A002426(n+1)`
-/

namespace A163774.P728223302202083506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088218 (n + 1) - A002426 (n + 1)

end

end A163774.P728223302202083506

namespace A163774

/-- `2*A088218(n+1)-A002426(n+1)` -/
def P728223302202083506.Spec : Prop :=
  ∀ n, P728223302202083506.a n = A163774 n

end A163774

/-! ## A163774.P1448223414530812529

`A128014(2*(n+1))-A002426(n+1)`
-/

namespace A163774.P1448223414530812529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * (n + 1)) - A002426 (n + 1)

end

end A163774.P1448223414530812529

namespace A163774

/-- `A128014(2*(n+1))-A002426(n+1)` -/
def P1448223414530812529.Spec : Prop :=
  ∀ n, P1448223414530812529.a n = A163774 n

end A163774

/-! ## A163774.P5094793590927166092

`A337499(2*n+1)-A002426(n+1)`
-/

namespace A163774.P5094793590927166092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n + 1) - A002426 (n + 1)

end

end A163774.P5094793590927166092

namespace A163774

/-- `A337499(2*n+1)-A002426(n+1)` -/
def P5094793590927166092.Spec : Prop :=
  ∀ n, P5094793590927166092.a n = A163774 n

end A163774

/-! ## A163774.P11286194756492292241

`A001700(n)+A001700(n)-A002426(n+1)`
-/

namespace A163774.P11286194756492292241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n + (A001700 n - A002426 (n + 1))

end

end A163774.P11286194756492292241

namespace A163774

/-- `A001700(n)+A001700(n)-A002426(n+1)` -/
def P11286194756492292241.Spec : Prop :=
  ∀ n, P11286194756492292241.a n = A163774 n

end A163774

/-! ## A163774.P18157300894485459867

`A006134(n+1)-(A006134(n)+A002426(n+1))`
-/

namespace A163774.P18157300894485459867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 (n + 1) - (A006134 n + A002426 (n + 1))

end

end A163774.P18157300894485459867

namespace A163774

/-- `A006134(n+1)-(A006134(n)+A002426(n+1))` -/
def P18157300894485459867.Spec : Prop :=
  ∀ n, P18157300894485459867.a n = A163774 n

end A163774

/-! ## A163774.P1731429112138520856

`A000984(n+1)+A097893(n)-A097893(n+1)`
-/

namespace A163774.P1731429112138520856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + (A097893 n - A097893 (n + 1))

end

end A163774.P1731429112138520856

namespace A163774

/-- `A000984(n+1)+A097893(n)-A097893(n+1)` -/
def P1731429112138520856.Spec : Prop :=
  ∀ n, P1731429112138520856.a n = A163774 n

end A163774

/-! ## A163774.P2800178401868651677

`A188622(n+1)-(A082590(n)+A002426(n+1))`
-/

namespace A163774.P2800178401868651677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188622 (n + 1) - (A082590 n + A002426 (n + 1))

end

end A163774.P2800178401868651677

namespace A163774

/-- `A188622(n+1)-(A082590(n)+A002426(n+1))` -/
def P2800178401868651677.Spec : Prop :=
  ∀ n, P2800178401868651677.a n = A163774 n

end A163774

/-! ## A163774.P10267311902184342192

`A000108(n+1)+A001791(n+1)-A002426(n+1)`
-/

namespace A163774.P10267311902184342192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) + (A001791 (n + 1) - A002426 (n + 1))

end

end A163774.P10267311902184342192

namespace A163774

/-- `A000108(n+1)+A001791(n+1)-A002426(n+1)` -/
def P10267311902184342192.Spec : Prop :=
  ∀ n, P10267311902184342192.a n = A163774 n

end A163774

/-! ## A163774.P18178183928618434165

`A000079(n+1)+A000984(n+1)-A081669(n+1)`
-/

namespace A163774.P18178183928618434165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A000984 (n + 1) - A081669 (n + 1))

end

end A163774.P18178183928618434165

namespace A163774

/-- `A000079(n+1)+A000984(n+1)-A081669(n+1)` -/
def P18178183928618434165.Spec : Prop :=
  ∀ n, P18178183928618434165.a n = A163774 n

end A163774

/-! ## A163774.P4460895390643736363

`A000984(n+1)-(A257520(n+1)+A097861(n+1))`
-/

namespace A163774.P4460895390643736363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - (A257520 (n + 1) + A097861 (n + 1))

end

end A163774.P4460895390643736363

namespace A163774

/-- `A000984(n+1)-(A257520(n+1)+A097861(n+1))` -/
def P4460895390643736363.Spec : Prop :=
  ∀ n, P4460895390643736363.a n = A163774 n

end A163774

/-! ## A163774.P1482849680018898987

`A026375(n+1)-(A163844(n)+A002426(n+1))`
-/

namespace A163774.P1482849680018898987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - (A163844 n + A002426 (n + 1))

end

end A163774.P1482849680018898987

namespace A163774

/-- `A026375(n+1)-(A163844(n)+A002426(n+1))` -/
def P1482849680018898987.Spec : Prop :=
  ∀ n, P1482849680018898987.a n = A163774 n

end A163774

/-! ## A163774.P16779370959992089916

`record[A115255(n+1)]-A002426(n+1)`
-/

namespace A163774.P16779370959992089916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002426 (n + 1)

end

end A163774.P16779370959992089916

namespace A163774

/-- `record[A115255(n+1)]-A002426(n+1)` -/
def P16779370959992089916.Spec : Prop :=
  ∀ n, P16779370959992089916.a n = A163774 n

end A163774

/-! ## A163774.P8591359631189452203

`A000984(n+1)-A098453(n+1)/A000079(n+1)`
-/

namespace A163774.P8591359631189452203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 (n + 1) : ℚ) - (A098453 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A163774.P8591359631189452203

namespace A163774

/-- `A000984(n+1)-A098453(n+1)/A000079(n+1)` -/
def P8591359631189452203.Spec : Prop :=
  ∀ n, P8591359631189452203.a n = (A163774 n : ℚ)

end A163774

/-!
# A163775: Row sums of triangle A163772.

The programs for A163775, the canonical program `A163775.P4626799535494798513` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163775 has offset 0).

The definition of A163775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163775.P4626799535494798513

`A002457(n+1)-A163872(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163775

/-- `A002457(n+1)-A163872(n+1)` -/
def P4626799535494798513.Spec : Prop :=
  ∀ n, P4626799535494798513.a n = A163775 n

theorem P4626799535494798513.correct : P4626799535494798513.Spec := by
  intro n
  simp only [A163775]

end A163775

/-! ## A163775.P11190399992693434714

`A056040(2*n+3)-A163872(n+1)`
-/

namespace A163775.P11190399992693434714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 3) - A163872 (n + 1)

end

end A163775.P11190399992693434714

namespace A163775

/-- `A056040(2*n+3)-A163872(n+1)` -/
def P11190399992693434714.Spec : Prop :=
  ∀ n, P11190399992693434714.a n = A163775 n

end A163775

/-! ## A163775.P7307230608488010631

`A002457(n+1)-A163772(∑[n+1])`
-/

namespace A163775.P7307230608488010631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (n + 1) - A163772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163775.P7307230608488010631

namespace A163775

/-- `A002457(n+1)-A163772(∑[n+1])` -/
def P7307230608488010631.Spec : Prop :=
  ∀ n, P7307230608488010631.a n = A163775 n

end A163775

/-!
# A163776: a(n) is the n-th dS-prime (dual Shuffle prime).

The programs for A163776, there is no canonical definition to state claims against.
-/

/-! ## A163776.P7651308775139816141

`2*A163781(n+1)`
-/

namespace A163776.P7651308775139816141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163781 (n + 1)

end

end A163776.P7651308775139816141

/-! ## A163776.P888623034741994102

`record[A337878(n+3)]`
-/

namespace A163776.P888623034741994102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337878 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163776.P888623034741994102

/-! ## A163776.P18288109342551315891

`A105874(n+1)-1`
-/

namespace A163776.P18288109342551315891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105874 (n + 1) - 1

end

end A163776.P18288109342551315891

/-! ## A163776.P17120077614049799523

`p?[A167798(n+1)]-1`
-/

namespace A163776.P17120077614049799523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A163776.P17120077614049799523

/-! ## A163776.P6112638533154901741

`A000010(A105874(n+1))`
-/

namespace A163776.P6112638533154901741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A105874 (n + 1)).toNat

end

end A163776.P6112638533154901741

/-! ## A163776.P16608961670010602629

`∩[A167798(n+1), A260442(n)]-1`
-/

namespace A163776.P16608961670010602629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P16608961670010602629

/-! ## A163776.P16599342163667518279

`∩[A003628(n+1), A007885(n+1)]-1`
-/

namespace A163776.P16599342163667518279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P16599342163667518279

/-! ## A163776.P2934658317266150199

`∩[A007885(n+1), A045442(n+1)]-1`
-/

namespace A163776.P2934658317266150199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P2934658317266150199

/-! ## A163776.P5949926563603202775

`∩[A000040(n+1), A167798(n+1)]-1`
-/

namespace A163776.P5949926563603202775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P5949926563603202775

/-! ## A163776.P3770975466097683549

`∩[A003628(n+1), A167798(n+1)]-1`
-/

namespace A163776.P3770975466097683549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P3770975466097683549

/-! ## A163776.P2017426387124965085

`∩[A006005(n+1), A167798(n+1)]-1`
-/

namespace A163776.P2017426387124965085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P2017426387124965085

/-! ## A163776.P13827893538378740602

`∩[A007885(n+1), A167798(n+1)]-1`
-/

namespace A163776.P13827893538378740602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P13827893538378740602

/-! ## A163776.P14490390626934835779

`∩[A008578(n+1), A167798(n+1)]-1`
-/

namespace A163776.P14490390626934835779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P14490390626934835779

/-! ## A163776.P10399874586408574807

`∩[A003628(n+1), A179538(n+1)]-1`
-/

namespace A163776.P10399874586408574807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P10399874586408574807

/-! ## A163776.P14393790553817346707

`∩[A015919(n+1), A167798(n+1)]-1`
-/

namespace A163776.P14393790553817346707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P14393790553817346707

/-! ## A163776.P4076852843725545401

`∩[A033946(n+1), A167798(n+1)]-1`
-/

namespace A163776.P4076852843725545401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P4076852843725545401

/-! ## A163776.P10584739114148456333

`∩[A042987(n+1), A167798(n+1)]-1`
-/

namespace A163776.P10584739114148456333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P10584739114148456333

/-! ## A163776.P9778526777497482803

`∩[A045395(n+1), A167798(n+1)]-1`
-/

namespace A163776.P9778526777497482803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P9778526777497482803

/-! ## A163776.P14287921204250608370

`∩[A053813(n+1), A167798(n+1)]-1`
-/

namespace A163776.P14287921204250608370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167798 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P14287921204250608370

/-! ## A163776.P3677432820213022798

`∩[A007885(n+1), A216747(n+1)]-1`
-/

namespace A163776.P3677432820213022798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A163776.P3677432820213022798

/-!
# A163777: Even terms in the sequence of Queneau numbers A054639.

The programs for A163777, there is no canonical definition to state claims against.
-/

/-! ## A163777.P795431161273057508

`2*A137310(n+1)`
-/

namespace A163777.P795431161273057508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137310 (n + 1)

end

end A163777.P795431161273057508

/-! ## A163777.P6248039218520675461

`floor(A213050(n+1)/2)`
-/

namespace A163777.P6248039218520675461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213050 (n + 1) : ℚ) / 2⌋

end

end A163777.P6248039218520675461

/-! ## A163777.P141844019442584327

`∩[A163781(n+1), A163782(n+1)]`
-/

namespace A163777.P141844019442584327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P141844019442584327

/-! ## A163777.P15241641082789819676

`∩[A163781(n+1), A224486(n+1)]`
-/

namespace A163777.P15241641082789819676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P15241641082789819676

/-! ## A163777.P12806611200479900550

`∩[A054639(n+1), A186299(n+1)]`
-/

namespace A163777.P12806611200479900550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P12806611200479900550

/-! ## A163777.P9621427304356330241

`∩[A054639(n+1), A016825(n)]`
-/

namespace A163777.P9621427304356330241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P9621427304356330241

/-! ## A163777.P221108037520316121

`∩[A163781(n+1), A016825(n)]`
-/

namespace A163777.P221108037520316121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P221108037520316121

/-! ## A163777.P4224521977983239157

`∩[A163782(n+1), A016825(n)]`
-/

namespace A163777.P4224521977983239157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P4224521977983239157

/-! ## A163777.P17155625373188951027

`filter[A163781(n+1), A354034(#)]`
-/

namespace A163777.P17155625373188951027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A163777.P17155625373188951027

/-! ## A163777.P12576645934281966116

`2*record[A240659(n+3)]`
-/

namespace A163777.P12576645934281966116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240659 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163777.P12576645934281966116

/-! ## A163777.P18127895317374091159

`∩[A054639(n+1), A130824(n)]`
-/

namespace A163777.P18127895317374091159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P18127895317374091159

/-! ## A163777.P15813034166966428269

`∩[A163781(n+1), A130824(n)]`
-/

namespace A163777.P15813034166966428269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P15813034166966428269

/-! ## A163777.P8170327164934096097

`∩[A163782(n+1), A130824(n)]`
-/

namespace A163777.P8170327164934096097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P8170327164934096097

/-! ## A163777.P8287740746043440657

`∩[A054639(n+1), A016813(n)+1]`
-/

namespace A163777.P8287740746043440657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P8287740746043440657

/-! ## A163777.P4800873988524519125

`∩[A054639(n+1), A004767(n)-1]`
-/

namespace A163777.P4800873988524519125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P4800873988524519125

/-! ## A163777.P3327637143369705033

`∩[A111284(n+1), A163781(n+1)]`
-/

namespace A163777.P3327637143369705033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P3327637143369705033

/-! ## A163777.P10995099567776803769

`∩[A111284(n+1), A163782(n+1)]`
-/

namespace A163777.P10995099567776803769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P10995099567776803769

/-! ## A163777.P8288588713292085008

`∩[A102212(n+1), A163781(n+1)]`
-/

namespace A163777.P8288588713292085008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P8288588713292085008

/-! ## A163777.P8507742300373051784

`∩[A054639(n+1), A213638(n+1)]`
-/

namespace A163777.P8507742300373051784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P8507742300373051784

/-! ## A163777.P3350609477414279983

`∩[A054639(n+1), A067368(n+1)]`
-/

namespace A163777.P3350609477414279983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163777.P3350609477414279983

/-!
# A163778: Odd terms in A054639.

The programs for A163778, there is no canonical definition to state claims against.
-/

/-! ## A163778.P18217191231959103515

`floor(A105876(n+2)/2)`
-/

namespace A163778.P18217191231959103515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105876 (n + 2) : ℚ) / 2⌋

end

end A163778.P18217191231959103515

/-! ## A163778.P12069918205517151530

`2*A294434(n+1)+1`
-/

namespace A163778.P12069918205517151530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294434 (n + 1) + 1

end

end A163778.P12069918205517151530

/-! ## A163778.P2756664295512754982

`record[A385164(n+2)]`
-/

namespace A163778.P2756664295512754982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385164 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163778.P2756664295512754982

/-! ## A163778.P12464020686038831554

`filter[A014109(n+3), A373157(#)]`
-/

namespace A163778.P12464020686038831554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A163778.P12464020686038831554

/-! ## A163778.P6995783111734410849

`filter[A014109(n+3), A379952(#)]`
-/

namespace A163778.P6995783111734410849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A163778.P6995783111734410849

/-! ## A163778.P14880099373661515149

`record[A385227(n+2)]`
-/

namespace A163778.P14880099373661515149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163778.P14880099373661515149

/-! ## A163778.P12709662633868693822

`filter[A014109(n+2), A035263(#)]`
-/

namespace A163778.P12709662633868693822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A163778.P12709662633868693822

/-! ## A163778.P16823858060061501455

`filter[A054639(n+2), A035263(#)]`
-/

namespace A163778.P16823858060061501455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A163778.P16823858060061501455

/-! ## A163778.P6250067872793882121

`filter[A014109(n+2), A152822(#)]`
-/

namespace A163778.P6250067872793882121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A163778.P6250067872793882121

/-! ## A163778.P18297921520915079759

`filter[A054639(n+2), A152822(#)]`
-/

namespace A163778.P18297921520915079759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A163778.P18297921520915079759

/-! ## A163778.P10113687654159297832

`∩[A014109(n+1), A047270(n+1)]`
-/

namespace A163778.P10113687654159297832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163778.P10113687654159297832

/-! ## A163778.P12073920848111191571

`∩[A047270(n+1), A054639(n+1)]`
-/

namespace A163778.P12073920848111191571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163778.P12073920848111191571

/-! ## A163778.P16252191666588878540

`record[A003574(n+2)]`
-/

namespace A163778.P16252191666588878540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003574 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163778.P16252191666588878540

/-! ## A163778.P2970519221769260643

`A005408(A294434(n+1))`
-/

namespace A163778.P2970519221769260643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A294434 (n + 1)).toNat

end

end A163778.P2970519221769260643

/-! ## A163778.P14025808719361568672

`record[A000265(A274299(n+1))]`
-/

namespace A163778.P14025808719361568672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A274299 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163778.P14025808719361568672

/-! ## A163778.P2062609933903996094

`record[A000265(A294673(n+1))]`
-/

namespace A163778.P2062609933903996094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A294673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163778.P2062609933903996094

/-! ## A163778.P967610066367085860

`A004273(A294434(n+1)+1)`
-/

namespace A163778.P967610066367085860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A294434 (n + 1) + 1).toNat

end

end A163778.P967610066367085860

/-! ## A163778.P6590119057802721615

`record[A093178(record[A294673(n+1)])]`
-/

namespace A163778.P6590119057802721615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294673 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163778.P6590119057802721615

/-! ## A163778.P10746141673699374119

`∩[A014109(n+1), A047249(n+1)]`
-/

namespace A163778.P10746141673699374119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163778.P10746141673699374119

/-! ## A163778.P5227057119427304715

`∩[A047249(n+1), A054639(n+1)]`
-/

namespace A163778.P5227057119427304715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163778.P5227057119427304715

/-!
# A163779: Numbers k of the form 4*j + 1 such that 2*k + 1 is a prime with primitive root 2.

The programs for A163779, there is no canonical definition to state claims against.
-/

/-! ## A163779.P18171495228488395605

`floor(A213051(n+1)/2)`
-/

namespace A163779.P18171495228488395605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213051 (n + 1) : ℚ) / 2⌋

end

end A163779.P18171495228488395605

/-! ## A163779.P11968073716385157852

`record[A385228(n+1)]`
-/

namespace A163779.P11968073716385157852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163779.P11968073716385157852

/-! ## A163779.P4580532844462126290

`record[A163782(n+1)^(A163782(n+1)%2)]`
-/

namespace A163779.P4580532844462126290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163782 (n + 1) : ℚ) ^ (Int.tmod (A163782 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163779.P4580532844462126290

/-! ## A163779.P8369631268461365800

`floor(∩[A001122(n+1), A033203(n+1)]/2)`
-/

namespace A163779.P8369631268461365800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033203 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2⌋

end

end A163779.P8369631268461365800

/-! ## A163779.P4982445833907863992

`floor(∩[A042999(n+1), A105876(n+1)]/2)`
-/

namespace A163779.P4982445833907863992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105876 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2⌋

end

end A163779.P4982445833907863992

/-! ## A163779.P13318192592066643528

`∩[A054639(n+1), A186297(n+1)]`
-/

namespace A163779.P13318192592066643528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P13318192592066643528

/-! ## A163779.P5752867849821551356

`∩[A014109(n+1), A186297(n+1)]`
-/

namespace A163779.P5752867849821551356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P5752867849821551356

/-! ## A163779.P3605124970376736023

`∩[A054639(n+1), A016825(n)-1]`
-/

namespace A163779.P3605124970376736023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P3605124970376736023

/-! ## A163779.P10420676699123914606

`floor(∩[A001122(n+1), A045323(n+1)]/2)`
-/

namespace A163779.P10420676699123914606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2⌋

end

end A163779.P10420676699123914606

/-! ## A163779.P12710144929215460754

`A000265(A213051(n+1)-1)`
-/

namespace A163779.P12710144929215460754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A213051 (n + 1) - 1).toNat

end

end A163779.P12710144929215460754

/-! ## A163779.P9213611298195971958

`A000265(xor(1, A213051(n+1)))`
-/

namespace A163779.P9213611298195971958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (A213051 (n + 1))).toNat

end

end A163779.P9213611298195971958

/-! ## A163779.P4616440685421852151

`record[A000265(A001122(n+1)+3)-2]`
-/

namespace A163779.P4616440685421852151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001122 (n + 1) + 3).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163779.P4616440685421852151

/-! ## A163779.P14731771930771606762

`∩[A014109(n+1), A016813(n)]`
-/

namespace A163779.P14731771930771606762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P14731771930771606762

/-! ## A163779.P1956289519254272320

`∩[A054639(n+1), A016813(n)]`
-/

namespace A163779.P1956289519254272320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P1956289519254272320

/-! ## A163779.P17901658963764335494

`∩[A054639(n+1), A130824(n)-1]`
-/

namespace A163779.P17901658963764335494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P17901658963764335494

/-! ## A163779.P6255471299320951755

`∩[A014109(n+1), A004767(n)-2]`
-/

namespace A163779.P6255471299320951755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P6255471299320951755

/-! ## A163779.P4168207257611980809

`∩[A054639(n+1), A004767(n)-2]`
-/

namespace A163779.P4168207257611980809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P4168207257611980809

/-! ## A163779.P7669380200826939374

`∩[A014109(n+1), A277549(n+1)]`
-/

namespace A163779.P7669380200826939374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P7669380200826939374

/-! ## A163779.P15950880003406878784

`∩[A054639(n+1), A277549(n+1)]`
-/

namespace A163779.P15950880003406878784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P15950880003406878784

/-! ## A163779.P11548230086840906197

`∩[A014109(n+1), A047610(n+1)]`
-/

namespace A163779.P11548230086840906197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163779.P11548230086840906197

/-!
# A163780: Terms in A054639 equal to 3 mod 4.

The programs for A163780, there is no canonical definition to state claims against.
-/

/-! ## A163780.P974255677506749415

`record[A139686(n+1)]`
-/

namespace A163780.P974255677506749415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163780.P974255677506749415

/-! ## A163780.P11385019228096999663

`floor(A139035(n+1)/2)`
-/

namespace A163780.P11385019228096999663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139035 (n + 1) : ℚ) / 2⌋

end

end A163780.P11385019228096999663

/-! ## A163780.P5408310620993050651

`∩[A163778(n+1), A186302(n+1)]`
-/

namespace A163780.P5408310620993050651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P5408310620993050651

/-! ## A163780.P2158096223844656226

`∩[A163778(n+1), A364086(n+1)]`
-/

namespace A163780.P2158096223844656226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P2158096223844656226

/-! ## A163780.P13874042476074412713

`∩[A163778(n+1), A163781(n+1)]`
-/

namespace A163780.P13874042476074412713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P13874042476074412713

/-! ## A163780.P3483092398106355733

`∩[A163781(n+1), A186302(n+1)]`
-/

namespace A163780.P3483092398106355733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P3483092398106355733

/-! ## A163780.P4969783356807841316

`record[and(1, A163781(n+2))*A163781(n+2)]`
-/

namespace A163780.P4969783356807841316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A163781 (n + 2)) * A163781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163780.P4969783356807841316

/-! ## A163780.P9542269549921663161

`∩[A104635(n+1), A163781(n+1)]`
-/

namespace A163780.P9542269549921663161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P9542269549921663161

/-! ## A163780.P9607554416464701516

`∩[A104635(n+1), A364086(n+1)]`
-/

namespace A163780.P9607554416464701516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P9607554416464701516

/-! ## A163780.P7989609827430663066

`∩[A081858(n+1), A163778(n+1)]`
-/

namespace A163780.P7989609827430663066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P7989609827430663066

/-! ## A163780.P2156117219412970689

`∩[A081858(n+1), A163781(n+1)]`
-/

namespace A163780.P2156117219412970689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P2156117219412970689

/-! ## A163780.P15549431994885339980

`filter[A163781(n+1), A373157(#)]`
-/

namespace A163780.P15549431994885339980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373157 (f1 j).toNat = 1) n)

end

end A163780.P15549431994885339980

/-! ## A163780.P11088904197595809287

`filter[A163781(n+1), A379952(#)]`
-/

namespace A163780.P11088904197595809287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A163780.P11088904197595809287

/-! ## A163780.P13053951196493420351

`filter[A364086(n+1), A379952(#)]`
-/

namespace A163780.P13053951196493420351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A163780.P13053951196493420351

/-! ## A163780.P261821706467828146

`∩[A054639(n+1), A081858(n+1)]`
-/

namespace A163780.P261821706467828146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P261821706467828146

/-! ## A163780.P9966379199566508227

`∩[A054639(n+1), A186302(n+1)]`
-/

namespace A163780.P9966379199566508227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P9966379199566508227

/-! ## A163780.P5206166496204414753

`∩[A364086(n+1), A054639(n+1)]`
-/

namespace A163780.P5206166496204414753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P5206166496204414753

/-! ## A163780.P7198786992960541652

`∩[A014109(n+1), A081858(n+1)]`
-/

namespace A163780.P7198786992960541652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P7198786992960541652

/-! ## A163780.P3566661921509096818

`∩[A014109(n+1), A186302(n+1)]`
-/

namespace A163780.P3566661921509096818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P3566661921509096818

/-! ## A163780.P17153173307028961381

`∩[A364086(n+1), A014109(n+1)]`
-/

namespace A163780.P17153173307028961381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163780.P17153173307028961381

/-!
# A163781: a(n) is the n-th dJ_2 prime (dual Josephus_2 prime).

The programs for A163781, there is no canonical definition to state claims against.
-/

/-! ## A163781.P4221430155708981351

`floor(A105874(n+1)/2)`
-/

namespace A163781.P4221430155708981351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105874 (n + 1) : ℚ) / 2⌋

end

end A163781.P4221430155708981351

/-! ## A163781.P17848234421281754615

`∪[A163777(n+1), A163780(n+1)]`
-/

namespace A163781.P17848234421281754615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P17848234421281754615

/-! ## A163781.P2090171543028729552

`(A105874(n+1)-A217581(A217581(n+1)))/2`
-/

namespace A163781.P2090171543028729552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A217581 (A217581 (n + 1)).toNat : ℚ) / 2

end

end A163781.P2090171543028729552

/-! ## A163781.P15917235364507142450

`∩[A054639(n+1), A374913(n+1)]`
-/

namespace A163781.P15917235364507142450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P15917235364507142450

/-! ## A163781.P13597578975728502988

`(A105874(n+1)-A001221(A105875(n+1)))/2`
-/

namespace A163781.P13597578975728502988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105875 (n + 1)).toNat : ℚ) / 2

end

end A163781.P13597578975728502988

/-! ## A163781.P12800457215083665618

`(A105874(n+1)-A001221(A105884(n+1)))/2`
-/

namespace A163781.P12800457215083665618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105884 (n + 1)).toNat : ℚ) / 2

end

end A163781.P12800457215083665618

/-! ## A163781.P2582551969516268505

`(A105874(n+1)-A001221(A105885(n+1)))/2`
-/

namespace A163781.P2582551969516268505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105885 (n + 1)).toNat : ℚ) / 2

end

end A163781.P2582551969516268505

/-! ## A163781.P15784660128418358737

`(A105874(n+1)-A001221(A105892(n+1)))/2`
-/

namespace A163781.P15784660128418358737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105892 (n + 1)).toNat : ℚ) / 2

end

end A163781.P15784660128418358737

/-! ## A163781.P14236154783228555199

`A163776(n+1)/2`
-/

namespace A163781.P14236154783228555199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163776 (n + 1) : ℚ) / 2

end

end A163781.P14236154783228555199

/-! ## A163781.P12567957601337773029

`A000010(A105874(n+1))/A056619(2*n+3)`
-/

namespace A163781.P12567957601337773029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A105874 (n + 1)).toNat : ℚ) / (A056619 (2 * n + 3) : ℚ)

end

end A163781.P12567957601337773029

/-! ## A163781.P449144004107239997

`(A105874(n+1)-A001221(A105898(n+1)))/2`
-/

namespace A163781.P449144004107239997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105898 (n + 1)).toNat : ℚ) / 2

end

end A163781.P449144004107239997

/-! ## A163781.P4148017942976379821

`(A105874(n+1)-A001221(A105903(n+1)))/2`
-/

namespace A163781.P4148017942976379821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105903 (n + 1)).toNat : ℚ) / 2

end

end A163781.P4148017942976379821

/-! ## A163781.P36610288061827406

`(A105874(n+1)-A001221(A105913(n+1)))/2`
-/

namespace A163781.P36610288061827406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105913 (n + 1)).toNat : ℚ) / 2

end

end A163781.P36610288061827406

/-! ## A163781.P1244143490610602314

`(A105874(n+1)-A001221(A105887(n+1)))/2`
-/

namespace A163781.P1244143490610602314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105887 (n + 1)).toNat : ℚ) / 2

end

end A163781.P1244143490610602314

/-! ## A163781.P9892408619167293502

`∩[A054639(n+1), A218155(n+1)]`
-/

namespace A163781.P9892408619167293502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P9892408619167293502

/-! ## A163781.P3244171808681034628

`(A105874(n+1)-A001221(A105888(n+1)))/2`
-/

namespace A163781.P3244171808681034628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105874 (n + 1) - A001221 (A105888 (n + 1)).toNat : ℚ) / 2

end

end A163781.P3244171808681034628

/-! ## A163781.P8740133646942942024

`∩[A042964(n+1), A054639(n+1)]`
-/

namespace A163781.P8740133646942942024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P8740133646942942024

/-! ## A163781.P11581140808757326496

`∩[A042964(n+1), A137606(n+1)-1]`
-/

namespace A163781.P11581140808757326496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P11581140808757326496

/-! ## A163781.P2879284008371624120

`∩[A047518(n+1), A054639(n+1)]`
-/

namespace A163781.P2879284008371624120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P2879284008371624120

/-! ## A163781.P7114322029994187404

`∩[A047560(n+1), A054639(n+1)]`
-/

namespace A163781.P7114322029994187404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163781.P7114322029994187404

/-!
# A163782: a(n) is the n-th J_2-prime (Josephus_2 prime).

The programs for A163782, there is no canonical definition to state claims against.
-/

/-! ## A163782.P7836064891618827273

`A071642(n+4)/2`
-/

namespace A163782.P7836064891618827273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071642 (n + 4) : ℚ) / 2

end

end A163782.P7836064891618827273

/-! ## A163782.P13390523671807125797

`floor(A001122(n+2)/2)`
-/

namespace A163782.P13390523671807125797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001122 (n + 2) : ℚ) / 2⌋

end

end A163782.P13390523671807125797

/-! ## A163782.P3223397040207423425

`(A001122(n+2)-A254377(2*n))/2`
-/

namespace A163782.P3223397040207423425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001122 (n + 2) - A254377 (2 * n) : ℚ) / 2

end

end A163782.P3223397040207423425

/-! ## A163782.P16364215171638807813

`(1-A001122(n+2))/A118824(2*n+1)`
-/

namespace A163782.P16364215171638807813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A001122 (n + 2) : ℚ) / (A118824 (2 * n + 1) : ℚ)

end

end A163782.P16364215171638807813

/-! ## A163782.P4885944931990173706

`(A001122(n+2)-A160267(2*(n+1)))/2`
-/

namespace A163782.P4885944931990173706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001122 (n + 2) - A160267 (2 * (n + 1)) : ℚ) / 2

end

end A163782.P4885944931990173706

/-! ## A163782.P5055656890891161749

`A051733(n+2)-1`
-/

namespace A163782.P5055656890891161749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051733 (n + 2) - 1

end

end A163782.P5055656890891161749

/-! ## A163782.P14167509706158640517

`A217948(n+2)/2-1`
-/

namespace A163782.P14167509706158640517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217948 (n + 2) : ℚ) / 2 - 1

end

end A163782.P14167509706158640517

/-! ## A163782.P6202179521254833221

`A001122(n+2)%A051733(n+2)`
-/

namespace A163782.P6202179521254833221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001122 (n + 2)) (A051733 (n + 2))

end

end A163782.P6202179521254833221

/-! ## A163782.P3129701304852094544

`(A001122(n+2)-A010691(2*n))/2`
-/

namespace A163782.P3129701304852094544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001122 (n + 2) - A010691 (2 * n) : ℚ) / 2

end

end A163782.P3129701304852094544

/-! ## A163782.P3782390269483884108

`(A001122(n+2)-1)/A056619(2*n+1)`
-/

namespace A163782.P3782390269483884108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001122 (n + 2) - 1 : ℚ) / (A056619 (2 * n + 1) : ℚ)

end

end A163782.P3782390269483884108

/-! ## A163782.P12862874571493066673

`(A001122(n+2)-A006519(2*n+1))/2`
-/

namespace A163782.P12862874571493066673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001122 (n + 2) - A006519 (2 * n + 1) : ℚ) / 2

end

end A163782.P12862874571493066673

/-! ## A163782.P18334566118725658028

`record[A014664(n+3)/2]`
-/

namespace A163782.P18334566118725658028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014664 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163782.P18334566118725658028

/-! ## A163782.P2193954745631599341

`A082654(A072190(n+2))`
-/

namespace A163782.P2193954745631599341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (A072190 (n + 2)).toNat

end

end A163782.P2193954745631599341

/-! ## A163782.P4522325847412016106

`record[A005097(n+2)/A001917(n+3)]`
-/

namespace A163782.P4522325847412016106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 2) : ℚ) / (A001917 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163782.P4522325847412016106

/-! ## A163782.P9245700030000135885

`record[A240657(n+3)]`
-/

namespace A163782.P9245700030000135885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163782.P9245700030000135885

/-! ## A163782.P3800395513138237331

`∩[A042964(n+2)-1, A054639(n+2)]`
-/

namespace A163782.P3800395513138237331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163782.P3800395513138237331

/-! ## A163782.P11229612203653924495

`∩[A047238(n+2)-n, A054639(n+2)]`
-/

namespace A163782.P11229612203653924495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 2) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163782.P11229612203653924495

/-! ## A163782.P5263796237894388004

`∩[A004772(n+1)+2, A054639(n+1)]`
-/

namespace A163782.P5263796237894388004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163782.P5263796237894388004

/-! ## A163782.P12198567413299386033

`lt[A006694(n), atan(n)]`
-/

namespace A163782.P12198567413299386033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A163782.P12198567413299386033

/-! ## A163782.P5812014582446686919

`record[2*A293219(n)-n]`
-/

namespace A163782.P5812014582446686919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293219 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163782.P5812014582446686919

/-!
# A163783: a(n) is the n-th J_3-prime (Josephus_3 prime).

The programs for A163783, there is no canonical definition to state claims against.
-/

/-! ## A163783.P16099672892588199058

`A378196(n)+A039649(A004041(n))`
-/

namespace A163783.P16099672892588199058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378196 n + A039649 (A004041 n).toNat

end

end A163783.P16099672892588199058

/-!
# A163787: a(n) is the n-th J_7-prime (Josephus_7 prime).

The programs for A163787, there is no canonical definition to state claims against.
-/

/-! ## A163787.P6990498152016726045

`∑[A138469((n+1)*A000010(n+1))]`
-/

namespace A163787.P6990498152016726045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138469 ((n + 1 : ℤ) * A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163787.P6990498152016726045

/-! ## A163787.P1941752256148326392

`A111619(A028876(3*n+1))+(-1)^∑[n]`
-/

namespace A163787.P1941752256148326392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111619 (A028876 (3 * n + 1)).toNat + (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163787.P1941752256148326392

/-!
# A163788: a(n) is the n-th J_8-prime (Josephus_8 prime).

The programs for A163788, there is no canonical definition to state claims against.
-/

/-! ## A163788.P13783755351720960981

`∏{p}[A314762(A000045(2^n-1))+1, #]`
-/

namespace A163788.P13783755351720960981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314762 (A000045 (2 ^ n - 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A163788.P13783755351720960981

/-!
# A163792: a(n) is the n-th J_12-prime (Josephus_12 prime).

The programs for A163792, there is no canonical definition to state claims against.
-/

/-! ## A163792.P2610837581492459920

`eq[A196020(3*n+5), A286549(A065717(n))]`
-/

namespace A163792.P2610837581492459920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196020 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286549 (A065717 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163792.P2610837581492459920

/-!
# A163795: a(n) is the n-th J_15-prime (Josephus_15 prime).

The programs for A163795, there is no canonical definition to state claims against.
-/

/-! ## A163795.P16696720378743032376

`record[A285323(Δ[A108659(n+1)])]`
-/

namespace A163795.P16696720378743032376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108659 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285323 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163795.P16696720378743032376

/-! ## A163795.P4395172923530170976

`record[A242033(n+5)^A242082(n+1)]`
-/

namespace A163795.P4395172923530170976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242033 (n + 5) : ℚ) ^ (A242082 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163795.P4395172923530170976

/-!
# A163797: a(n) is the n-th J_17-prime (Josephus_17 prime).

The programs for A163797, there is no canonical definition to state claims against.
-/

/-! ## A163797.P10071985102559312334

`or(A014132(n+1), A317420(A110953(n+1)))`
-/

namespace A163797.P10071985102559312334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014132 (n + 1)) (A317420 (A110953 (n + 1)).toNat)

end

end A163797.P10071985102559312334

/-! ## A163797.P14353323232042231431

`A023201(A023147(n+1))-A023153(2*(n+1))`
-/

namespace A163797.P14353323232042231431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (A023147 (n + 1)).toNat - A023153 (2 * (n + 1))

end

end A163797.P14353323232042231431


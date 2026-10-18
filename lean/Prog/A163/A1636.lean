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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A163600: Number of reduced words of length n in Coxeter group on 35 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163600, there is no canonical definition to state claims against.
-/

/-! ## A163600.P5901921923987877479

`A165167(n*(n*(n-5)+5)²)`
-/

namespace A163600.P5901921923987877479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165167 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat

end

end A163600.P5901921923987877479

/-!
# A163602: First differences of A161753.

The programs for A163602, the canonical program `A163602.P924882261121524970` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163602 has offset 1).

The definition of A163602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161753, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163602.P924882261121524970

`A161753(n+2)-A161753(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163602

/-- `A161753(n+2)-A161753(n+1)` -/
def P924882261121524970.Spec : Prop :=
  ∀ n, P924882261121524970.a n = A163602 (n + 1)

theorem P924882261121524970.correct : P924882261121524970.Spec := by
  intro n
  simp only [A163602, Nat.add_sub_cancel]

end A163602

/-! ## A163602.P5084292657757770070

`Δ[A141468(n+1)²]`
-/

namespace A163602.P5084292657757770070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163602.P5084292657757770070

namespace A163602

/-- `Δ[A141468(n+1)²]` -/
def P5084292657757770070.Spec : Prop :=
  ∀ n, P5084292657757770070.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P11507963433889242827

`Δ[∪[A018252(n+1), n²]²]`
-/

namespace A163602.P11507963433889242827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A163602.P11507963433889242827

namespace A163602

/-- `Δ[∪[A018252(n+1), n²]²]` -/
def P11507963433889242827.Spec : Prop :=
  ∀ n, P11507963433889242827.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P236295352501049222

`A054546(n+1)*A166037(n+1)`
-/

namespace A163602.P236295352501049222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1) * A166037 (n + 1)

end

end A163602.P236295352501049222

namespace A163602

/-- `A054546(n+1)*A166037(n+1)` -/
def P236295352501049222.Spec : Prop :=
  ∀ n, P236295352501049222.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P771470232123363386

`A062312(n+1)-A141468(n+1)²`
-/

namespace A163602.P771470232123363386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) - A141468 (n + 1) ^ 2

end

end A163602.P771470232123363386

namespace A163602

/-- `A062312(n+1)-A141468(n+1)²` -/
def P771470232123363386.Spec : Prop :=
  ∀ n, P771470232123363386.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P3077363150370586394

`A018252(n+1)²-A141468(n+1)²`
-/

namespace A163602.P3077363150370586394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2 - A141468 (n + 1) ^ 2

end

end A163602.P3077363150370586394

namespace A163602

/-- `A018252(n+1)²-A141468(n+1)²` -/
def P3077363150370586394.Spec : Prop :=
  ∀ n, P3077363150370586394.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P9019103473650343327

`A018252(n+1)²-comp[A000040(n+1)]²`
-/

namespace A163602.P9019103473650343327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ)

end

end A163602.P9019103473650343327

namespace A163602

/-- `A018252(n+1)²-comp[A000040(n+1)]²` -/
def P9019103473650343327.Spec : Prop :=
  ∀ n, P9019103473650343327.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P10443073985797055090

`A062312(n+1)-∪[A062312(n+1), A000583(n)]`
-/

namespace A163602.P10443073985797055090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A163602.P10443073985797055090

namespace A163602

/-- `A062312(n+1)-∪[A062312(n+1), A000583(n)]` -/
def P10443073985797055090.Spec : Prop :=
  ∀ n, P10443073985797055090.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P11231105923144097642

`A062312(n+1)-∪[A062312(n+1), A001014(n)]`
-/

namespace A163602.P11231105923144097642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A163602.P11231105923144097642

namespace A163602

/-- `A062312(n+1)-∪[A062312(n+1), A001014(n)]` -/
def P11231105923144097642.Spec : Prop :=
  ∀ n, P11231105923144097642.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P8297892628036509265

`A062312(n+1)-∪[A062312(n+1), A001016(n)]`
-/

namespace A163602.P8297892628036509265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A163602.P8297892628036509265

namespace A163602

/-- `A062312(n+1)-∪[A062312(n+1), A001016(n)]` -/
def P8297892628036509265.Spec : Prop :=
  ∀ n, P8297892628036509265.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P14706771277236285758

`A062312(n+1)-∪[A062312(n+1), A014188(n)]`
-/

namespace A163602.P14706771277236285758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A163602.P14706771277236285758

namespace A163602

/-- `A062312(n+1)-∪[A062312(n+1), A014188(n)]` -/
def P14706771277236285758.Spec : Prop :=
  ∀ n, P14706771277236285758.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P6349008342574578601

`A062312(n+1)+A161757(n+1)-A001248(n+1)`
-/

namespace A163602.P6349008342574578601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1) + (A161757 (n + 1) - A001248 (n + 1))

end

end A163602.P6349008342574578601

namespace A163602

/-- `A062312(n+1)+A161757(n+1)-A001248(n+1)` -/
def P6349008342574578601.Spec : Prop :=
  ∀ n, P6349008342574578601.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P14850527775384286426

`(A141468(n+1)+A018252(n+1))*A054546(n+1)`
-/

namespace A163602.P14850527775384286426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) + A018252 (n + 1)) * A054546 (n + 1)

end

end A163602.P14850527775384286426

namespace A163602

/-- `(A141468(n+1)+A018252(n+1))*A054546(n+1)` -/
def P14850527775384286426.Spec : Prop :=
  ∀ n, P14850527775384286426.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P8138928587592231904

`(A176100(n+1)+A054546(n+1))*A054546(n+1)`
-/

namespace A163602.P8138928587592231904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176100 (n + 1) + A054546 (n + 1)) * A054546 (n + 1)

end

end A163602.P8138928587592231904

namespace A163602

/-- `(A176100(n+1)+A054546(n+1))*A054546(n+1)` -/
def P8138928587592231904.Spec : Prop :=
  ∀ n, P8138928587592231904.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P16985771698972352122

`(A139270(n+1)-A054546(n+1))*A054546(n+1)`
-/

namespace A163602.P16985771698972352122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139270 (n + 1) - A054546 (n + 1)) * A054546 (n + 1)

end

end A163602.P16985771698972352122

namespace A163602

/-- `(A139270(n+1)-A054546(n+1))*A054546(n+1)` -/
def P16985771698972352122.Spec : Prop :=
  ∀ n, P16985771698972352122.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P546384383263917972

`(A018252(n+1)-A141468(n+1))*A166037(n+1)`
-/

namespace A163602.P546384383263917972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) - A141468 (n + 1)) * A166037 (n + 1)

end

end A163602.P546384383263917972

namespace A163602

/-- `(A018252(n+1)-A141468(n+1))*A166037(n+1)` -/
def P546384383263917972.Spec : Prop :=
  ∀ n, P546384383263917972.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P1990144835901065048

`(A141468(n+1)+A141468(n+2))*A054546(n+1)`
-/

namespace A163602.P1990144835901065048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 1) + A141468 (n + 2)) * A054546 (n + 1)

end

end A163602.P1990144835901065048

namespace A163602

/-- `(A141468(n+1)+A141468(n+2))*A054546(n+1)` -/
def P1990144835901065048.Spec : Prop :=
  ∀ n, P1990144835901065048.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P13869400535219620854

`(A139270(n+1)-A166037(n+1))*A166037(n+1)`
-/

namespace A163602.P13869400535219620854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A139270 (n + 1) - A166037 (n + 1)) * A166037 (n + 1)

end

end A163602.P13869400535219620854

namespace A163602

/-- `(A139270(n+1)-A166037(n+1))*A166037(n+1)` -/
def P13869400535219620854.Spec : Prop :=
  ∀ n, P13869400535219620854.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P17954477588737915831

`(A166037(n+1)-A176100(n+1))*A166037(n+1)`
-/

namespace A163602.P17954477588737915831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166037 (n + 1) - A176100 (n + 1)) * A166037 (n + 1)

end

end A163602.P17954477588737915831

namespace A163602

/-- `(A166037(n+1)-A176100(n+1))*A166037(n+1)` -/
def P17954477588737915831.Spec : Prop :=
  ∀ n, P17954477588737915831.a n = A163602 (n + 1)

end A163602

/-! ## A163602.P7919705510766621768

`(A141468(n+2)-A141468(n+1))*A166037(n+1)`
-/

namespace A163602.P7919705510766621768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 2) - A141468 (n + 1)) * A166037 (n + 1)

end

end A163602.P7919705510766621768

namespace A163602

/-- `(A141468(n+2)-A141468(n+1))*A166037(n+1)` -/
def P7919705510766621768.Spec : Prop :=
  ∀ n, P7919705510766621768.a n = A163602 (n + 1)

end A163602

/-!
# A163603: Numbers k such that prime(k) == 5 (mod 7).

The programs for A163603, the canonical program `A163603.P6748960401507520383` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163603 has offset 1).

The definition of A163603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A045458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163603.P6748960401507520383

`A000720(A045458(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163603

/-- `A000720(A045458(n+1))` -/
def P6748960401507520383.Spec : Prop :=
  ∀ n, P6748960401507520383.a n = A163603 (n + 1)

theorem P6748960401507520383.correct : P6748960401507520383.Spec := by
  intro n
  simp only [A163603, Nat.add_sub_cancel]

end A163603

/-! ## A163603.P8569565948633479315

`eq[5, A000040(n+1)%7]+1`
-/

namespace A163603.P8569565948633479315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A163603.P8569565948633479315

namespace A163603

/-- `eq[5, A000040(n+1)%7]+1` -/
def P8569565948633479315.Spec : Prop :=
  ∀ n, (P8569565948633479315.a n : ℤ) = A163603 (n + 1)

end A163603

/-! ## A163603.P17517673168897090904

`A000720(p?[7*n-2])`
-/

namespace A163603.P17517673168897090904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P17517673168897090904

namespace A163603

/-- `A000720(p?[7*n-2])` -/
def P17517673168897090904.Spec : Prop :=
  ∀ n, P17517673168897090904.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P15343572393021739726

`A061395(p?[7*n-2])`
-/

namespace A163603.P15343572393021739726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P15343572393021739726

namespace A163603

/-- `A061395(p?[7*n-2])` -/
def P15343572393021739726.Spec : Prop :=
  ∀ n, P15343572393021739726.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P16493384082344798835

`record[A061395(6*n+5+n)]`
-/

namespace A163603.P16493384082344798835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (6 * n + 5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163603.P16493384082344798835

namespace A163603

/-- `record[A061395(6*n+5+n)]` -/
def P16493384082344798835.Spec : Prop :=
  ∀ n, P16493384082344798835.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P16866491164915378137

`record[A303753(A016969(n)+n)]`
-/

namespace A163603.P16866491164915378137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303753 (A016969 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163603.P16866491164915378137

namespace A163603

/-- `record[A303753(A016969(n)+n)]` -/
def P16866491164915378137.Spec : Prop :=
  ∀ n, P16866491164915378137.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P580779311917537984

`lt[1, A268354(A052147(n+1))]+1`
-/

namespace A163603.P580779311917537984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A052147 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A163603.P580779311917537984

namespace A163603

/-- `lt[1, A268354(A052147(n+1))]+1` -/
def P580779311917537984.Spec : Prop :=
  ∀ n, (P580779311917537984.a n : ℤ) = A163603 (n + 1)

end A163603

/-! ## A163603.P5715055703091043176

`lt[1, A268354(A048974(n+1))]+2`
-/

namespace A163603.P5715055703091043176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268354 (A048974 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A163603.P5715055703091043176

namespace A163603

/-- `lt[1, A268354(A048974(n+1))]+2` -/
def P5715055703091043176.Spec : Prop :=
  ∀ n, (P5715055703091043176.a n : ℤ) = A163603 (n + 1)

end A163603

/-! ## A163603.P573709938439153375

`record[A289508(A017041(n))]`
-/

namespace A163603.P573709938439153375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A017041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163603.P573709938439153375

namespace A163603

/-- `record[A289508(A017041(n))]` -/
def P573709938439153375.Spec : Prop :=
  ∀ n, P573709938439153375.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P12757155532015625999

`record[A049084(6*n+5+n)]`
-/

namespace A163603.P12757155532015625999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (6 * n + 5 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163603.P12757155532015625999

namespace A163603

/-- `record[A049084(6*n+5+n)]` -/
def P12757155532015625999.Spec : Prop :=
  ∀ n, P12757155532015625999.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P2333835592006549045

`A230980(p?[6*n+5+n])`
-/

namespace A163603.P2333835592006549045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 5 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A163603.P2333835592006549045

namespace A163603

/-- `A230980(p?[6*n+5+n])` -/
def P2333835592006549045.Spec : Prop :=
  ∀ n, P2333835592006549045.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P5362829236229904726

`A003963(p?[A017017(n)+2])`
-/

namespace A163603.P5362829236229904726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P5362829236229904726

namespace A163603

/-- `A003963(p?[A017017(n)+2])` -/
def P5362829236229904726.Spec : Prop :=
  ∀ n, P5362829236229904726.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P5203898614862108168

`A026233(p?[A017017(n)+2])`
-/

namespace A163603.P5203898614862108168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P5203898614862108168

namespace A163603

/-- `A026233(p?[A017017(n)+2])` -/
def P5203898614862108168.Spec : Prop :=
  ∀ n, P5203898614862108168.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P4803912762710453589

`A026238(p?[A017017(n)+2])`
-/

namespace A163603.P4803912762710453589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P4803912762710453589

namespace A163603

/-- `A026238(p?[A017017(n)+2])` -/
def P4803912762710453589.Spec : Prop :=
  ∀ n, P4803912762710453589.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P4476401947965258959

`A049084(p?[A017017(n)+2])`
-/

namespace A163603.P4476401947965258959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P4476401947965258959

namespace A163603

/-- `A049084(p?[A017017(n)+2])` -/
def P4476401947965258959.Spec : Prop :=
  ∀ n, P4476401947965258959.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P9933261483759686026

`A055396(p?[A017017(n)+2])`
-/

namespace A163603.P9933261483759686026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P9933261483759686026

namespace A163603

/-- `A055396(p?[A017017(n)+2])` -/
def P9933261483759686026.Spec : Prop :=
  ∀ n, P9933261483759686026.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P901060164789958708

`A056239(p?[A017017(n)+2])`
-/

namespace A163603.P901060164789958708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P901060164789958708

namespace A163603

/-- `A056239(p?[A017017(n)+2])` -/
def P901060164789958708.Spec : Prop :=
  ∀ n, P901060164789958708.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P13389188054717502052

`record[A324729(A016969(n)+n)]`
-/

namespace A163603.P13389188054717502052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324729 (A016969 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163603.P13389188054717502052

namespace A163603

/-- `record[A324729(A016969(n)+n)]` -/
def P13389188054717502052.Spec : Prop :=
  ∀ n, P13389188054717502052.a n = A163603 (n + 1)

end A163603

/-! ## A163603.P13978797044356904750

`A055396(p?[A113805(2*n+1)])`
-/

namespace A163603.P13978797044356904750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113805 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163603.P13978797044356904750

namespace A163603

/-- `A055396(p?[A113805(2*n+1)])` -/
def P13978797044356904750.Spec : Prop :=
  ∀ n, P13978797044356904750.a n = A163603 (n + 1)

end A163603

/-!
# A163604: a(n) = ((3+2*sqrt(2))*(4+sqrt(2))^n + (3-2*sqrt(2))*(4-sqrt(2))^n)/2.

The programs for A163604, the canonical program `A163604.P3823398551746103365` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163604 has offset 0).

The definition of A163604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163604.P3823398551746103365

`8*a(n-1)-14*a(n-2)` with `a(0)=3, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163604

/-- `8*a(n-1)-14*a(n-2)` -/
def P3823398551746103365.Spec : Prop :=
  ∀ n, P3823398551746103365.a n = A163604 n

theorem P3823398551746103365.correct : P3823398551746103365.Spec := by
  intro n
  simp only [A163604]

end A163604

/-! ## A163604.P15834864374396931026

`((3+2*sqrt(2))*(4+sqrt(2))^n+(3-2*sqrt(2))*(4-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163604.P15834864374396931026
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (3 - 2 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163604.P15834864374396931026

namespace A163604

/-- `((3+2*sqrt(2))*(4+sqrt(2))^n+(3-2*sqrt(2))*(4-sqrt(2))^n)/2` -/
def P15834864374396931026.Spec : Prop :=
  ∀ n, P15834864374396931026.a n = (A163604 n : ℝ)

end A163604

/-! ## A163604.P8676530434498847246

`ogf((3-8x)/(1-8x+14x^2))`
-/

namespace A163604.P8676530434498847246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -8, 14] n

end

end A163604.P8676530434498847246

namespace A163604

/-- `ogf((3-8x)/(1-8x+14x^2))` -/
def P8676530434498847246.Spec : Prop :=
  ∀ n, P8676530434498847246.a n = A163604 n

end A163604

/-! ## A163604.P14083199445698353901

`Δ[A161731(n)]-A161731(n)`
-/

namespace A163604.P14083199445698353901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A161731 n

end

end A163604.P14083199445698353901

namespace A163604

/-- `Δ[A161731(n)]-A161731(n)` -/
def P14083199445698353901.Spec : Prop :=
  ∀ n, P14083199445698353901.a n = A163604 n

end A163604

/-! ## A163604.P1739225242235095310

`A163350(n)+2*A161731(n)`
-/

namespace A163604.P1739225242235095310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + 2 * A161731 n

end

end A163604.P1739225242235095310

namespace A163604

/-- `A163350(n)+2*A161731(n)` -/
def P1739225242235095310.Spec : Prop :=
  ∀ n, P1739225242235095310.a n = A163604 n

end A163604

/-! ## A163604.P6285233878203685392

`A081180(n)+3*A161731(n)`
-/

namespace A163604.P6285233878203685392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 n + 3 * A161731 n

end

end A163604.P6285233878203685392

namespace A163604

/-- `A081180(n)+3*A161731(n)` -/
def P6285233878203685392.Spec : Prop :=
  ∀ n, P6285233878203685392.a n = A163604 n

end A163604

/-! ## A163604.P3547831717365237729

`A164535(n)-4*A081180(n)`
-/

namespace A163604.P3547831717365237729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164535 n - 4 * A081180 n

end

end A163604.P3547831717365237729

namespace A163604

/-- `A164535(n)-4*A081180(n)` -/
def P3547831717365237729.Spec : Prop :=
  ∀ n, P3547831717365237729.a n = A163604 n

end A163604

/-! ## A163604.P3472829634781491817

`A161731(n+1)-2*A161731(n)`
-/

namespace A163604.P3472829634781491817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 (n + 1) - 2 * A161731 n

end

end A163604.P3472829634781491817

namespace A163604

/-- `A161731(n+1)-2*A161731(n)` -/
def P3472829634781491817.Spec : Prop :=
  ∀ n, P3472829634781491817.a n = A163604 n

end A163604

/-!
# A163605: a(n) = ((3+2*sqrt(2))*(5+sqrt(2))^n + (3-2*sqrt(2))*(5-sqrt(2))^n)/2.

The programs for A163605, the canonical program `A163605.P2247594589615427050` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163605 has offset 0).

The definition of A163605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163605.P2247594589615427050

`10*a(n-1)-23*a(n-2)` with `a(0)=3, a(1)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163605

/-- `10*a(n-1)-23*a(n-2)` -/
def P2247594589615427050.Spec : Prop :=
  ∀ n, P2247594589615427050.a n = A163605 n

theorem P2247594589615427050.correct : P2247594589615427050.Spec := by
  intro n
  simp only [A163605]

end A163605

/-! ## A163605.P12017227789576545493

`((3+2*sqrt(2))*(5+sqrt(2))^n+(3-2*sqrt(2))*(5-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163605.P12017227789576545493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (3 - 2 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163605.P12017227789576545493

namespace A163605

/-- `((3+2*sqrt(2))*(5+sqrt(2))^n+(3-2*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P12017227789576545493.Spec : Prop :=
  ∀ n, P12017227789576545493.a n = (A163605 n : ℝ)

end A163605

/-! ## A163605.P18408928877812799245

`ogf((3-11x)/(1-10x+23x^2))`
-/

namespace A163605.P18408928877812799245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11] [1, -10, 23] n

end

end A163605.P18408928877812799245

namespace A163605

/-- `ogf((3-11x)/(1-10x+23x^2))` -/
def P18408928877812799245.Spec : Prop :=
  ∀ n, P18408928877812799245.a n = A163605 n

end A163605

/-! ## A163605.P4345504319991388136

`A164035(n)+A161734(n)`
-/

namespace A163605.P4345504319991388136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n + A161734 n

end

end A163605.P4345504319991388136

namespace A163605

/-- `A164035(n)+A161734(n)` -/
def P4345504319991388136.Spec : Prop :=
  ∀ n, P4345504319991388136.a n = A163605 n

end A163605

/-! ## A163605.P5282394739754237500

`A163346(n)+2*A161734(n)`
-/

namespace A163605.P5282394739754237500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + 2 * A161734 n

end

end A163605.P5282394739754237500

namespace A163605

/-- `A163346(n)+2*A161734(n)` -/
def P5282394739754237500.Spec : Prop :=
  ∀ n, P5282394739754237500.a n = A163605 n

end A163605

/-! ## A163605.P18202240189991130869

`A081182(n)+3*A161734(n)`
-/

namespace A163605.P18202240189991130869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + 3 * A161734 n

end

end A163605.P18202240189991130869

namespace A163605

/-- `A081182(n)+3*A161734(n)` -/
def P18202240189991130869.Spec : Prop :=
  ∀ n, P18202240189991130869.a n = A163605 n

end A163605

/-! ## A163605.P9929046438254959014

`A164038(n)-2*A161734(n)`
-/

namespace A163605.P9929046438254959014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164038 n - 2 * A161734 n

end

end A163605.P9929046438254959014

namespace A163605

/-- `A164038(n)-2*A161734(n)` -/
def P9929046438254959014.Spec : Prop :=
  ∀ n, P9929046438254959014.a n = A163605 n

end A163605

/-! ## A163605.P13518087165918017562

`2*A164035(n)-A163346(n)`
-/

namespace A163605.P13518087165918017562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164035 n - A163346 n

end

end A163605.P13518087165918017562

namespace A163605

/-- `2*A164035(n)-A163346(n)` -/
def P13518087165918017562.Spec : Prop :=
  ∀ n, P13518087165918017562.a n = A163605 n

end A163605

/-! ## A163605.P14171225730251740462

`A164536(n)-4*A081182(n)`
-/

namespace A163605.P14171225730251740462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164536 n - 4 * A081182 n

end

end A163605.P14171225730251740462

namespace A163605

/-- `A164536(n)-4*A081182(n)` -/
def P14171225730251740462.Spec : Prop :=
  ∀ n, P14171225730251740462.a n = A163605 n

end A163605

/-! ## A163605.P1928221891571875962

`A163346(n)+A164035(n)-A081182(n)`
-/

namespace A163605.P1928221891571875962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + (A164035 n - A081182 n)

end

end A163605.P1928221891571875962

namespace A163605

/-- `A163346(n)+A164035(n)-A081182(n)` -/
def P1928221891571875962.Spec : Prop :=
  ∀ n, P1928221891571875962.a n = A163605 n

end A163605

/-! ## A163605.P1294130542725929812

`Δ[A161947(n)]-2*A161940(n)`
-/

namespace A163605.P1294130542725929812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A161940 n

end

end A163605.P1294130542725929812

namespace A163605

/-- `Δ[A161947(n)]-2*A161940(n)` -/
def P1294130542725929812.Spec : Prop :=
  ∀ n, P1294130542725929812.a n = A163605 n

end A163605

/-!
# A163606: a(n) = ((3 + 2*sqrt(2))*(3 + sqrt(2))^n + (3 - 2*sqrt(2))*(3 - sqrt(2))^n)/2.

The programs for A163606, the canonical program `A163606.P404356851543253425` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163606 has offset 0).

The definition of A163606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163606.P404356851543253425

`6*a(n-1)-7*a(n-2)` with `a(0)=3, a(1)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163606

/-- `6*a(n-1)-7*a(n-2)` -/
def P404356851543253425.Spec : Prop :=
  ∀ n, P404356851543253425.a n = A163606 n

theorem P404356851543253425.correct : P404356851543253425.Spec := by
  intro n
  simp only [A163606]

end A163606

/-! ## A163606.P14663474018281281803

`ogf((3-5x)/(1-6x+7x^2))`
-/

namespace A163606.P14663474018281281803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -6, 7] n

end

end A163606.P14663474018281281803

namespace A163606

/-- `ogf((3-5x)/(1-6x+7x^2))` -/
def P14663474018281281803.Spec : Prop :=
  ∀ n, P14663474018281281803.a n = A163606 n

end A163606

/-! ## A163606.P9922725865178098052

`Δ[A086351(n)]`
-/

namespace A163606.P9922725865178098052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163606.P9922725865178098052

namespace A163606

/-- `Δ[A086351(n)]` -/
def P9922725865178098052.Spec : Prop :=
  ∀ n, P9922725865178098052.a n = A163606 n

end A163606

/-! ## A163606.P1143826860887438495

`A164033(n)+A086351(n)`
-/

namespace A163606.P1143826860887438495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164033 n + A086351 n

end

end A163606.P1143826860887438495

namespace A163606

/-- `A164033(n)+A086351(n)` -/
def P1143826860887438495.Spec : Prop :=
  ∀ n, P1143826860887438495.a n = A163606 n

end A163606

/-! ## A163606.P3511371292825230721

`Δ[A083878(n)+A081179(n)]`
-/

namespace A163606.P3511371292825230721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n + A081179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163606.P3511371292825230721

namespace A163606

/-- `Δ[A083878(n)+A081179(n)]` -/
def P3511371292825230721.Spec : Prop :=
  ∀ n, P3511371292825230721.a n = A163606 n

end A163606

/-! ## A163606.P1083471504068755169

`A102285(n)+A034999(n+1)`
-/

namespace A163606.P1083471504068755169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + A034999 (n + 1)

end

end A163606.P1083471504068755169

namespace A163606

/-- `A102285(n)+A034999(n+1)` -/
def P1083471504068755169.Spec : Prop :=
  ∀ n, P1083471504068755169.a n = A163606 n

end A163606

/-! ## A163606.P1328385931779071378

`A086351(n+1)-A086351(n)`
-/

namespace A163606.P1328385931779071378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086351 (n + 1) - A086351 n

end

end A163606.P1328385931779071378

namespace A163606

/-- `A086351(n+1)-A086351(n)` -/
def P1328385931779071378.Spec : Prop :=
  ∀ n, P1328385931779071378.a n = A163606 n

end A163606

/-! ## A163606.P6021036936965801927

`A102285(n)+2*A086351(n)`
-/

namespace A163606.P6021036936965801927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + 2 * A086351 n

end

end A163606.P6021036936965801927

namespace A163606

/-- `A102285(n)+2*A086351(n)` -/
def P6021036936965801927.Spec : Prop :=
  ∀ n, P6021036936965801927.a n = A163606 n

end A163606

/-! ## A163606.P7974525958486732398

`A163609(n)-2*A083878(n)`
-/

namespace A163606.P7974525958486732398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163609 n - 2 * A083878 n

end

end A163606.P7974525958486732398

namespace A163606

/-- `A163609(n)-2*A083878(n)` -/
def P7974525958486732398.Spec : Prop :=
  ∀ n, P7974525958486732398.a n = A163606 n

end A163606

/-! ## A163606.P13140602987952570216

`A164037(n)-2*A086351(n)`
-/

namespace A163606.P13140602987952570216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164037 n - 2 * A086351 n

end

end A163606.P13140602987952570216

namespace A163606

/-- `A164037(n)-2*A086351(n)` -/
def P13140602987952570216.Spec : Prop :=
  ∀ n, P13140602987952570216.a n = A163606 n

end A163606

/-! ## A163606.P6523987051900435465

`2*A164033(n)-A102285(n)`
-/

namespace A163606.P6523987051900435465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164033 n - A102285 n

end

end A163606.P6523987051900435465

namespace A163606

/-- `2*A164033(n)-A102285(n)` -/
def P6523987051900435465.Spec : Prop :=
  ∀ n, P6523987051900435465.a n = A163606 n

end A163606

/-! ## A163606.P4432271279419999611

`A164305(n)-4*A081179(n)`
-/

namespace A163606.P4432271279419999611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164305 n - 4 * A081179 n

end

end A163606.P4432271279419999611

namespace A163606

/-- `A164305(n)-4*A081179(n)` -/
def P4432271279419999611.Spec : Prop :=
  ∀ n, P4432271279419999611.a n = A163606 n

end A163606

/-! ## A163606.P15007400271595387013

`4*A102285(n)-A163348(n)`
-/

namespace A163606.P15007400271595387013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A102285 n - A163348 n

end

end A163606.P15007400271595387013

namespace A163606

/-- `4*A102285(n)-A163348(n)` -/
def P15007400271595387013.Spec : Prop :=
  ∀ n, P15007400271595387013.a n = A163606 n

end A163606

/-! ## A163606.P7044266829076415243

`A083878(n+1)+2*A081179(n)`
-/

namespace A163606.P7044266829076415243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 (n + 1) + 2 * A081179 n

end

end A163606.P7044266829076415243

namespace A163606

/-- `A083878(n+1)+2*A081179(n)` -/
def P7044266829076415243.Spec : Prop :=
  ∀ n, P7044266829076415243.a n = A163606 n

end A163606

/-! ## A163606.P11875367607026102144

`A102285(n)+A164033(n)-A081179(n)`
-/

namespace A163606.P11875367607026102144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + (A164033 n - A081179 n)

end

end A163606.P11875367607026102144

namespace A163606

/-- `A102285(n)+A164033(n)-A081179(n)` -/
def P11875367607026102144.Spec : Prop :=
  ∀ n, P11875367607026102144.a n = A163606 n

end A163606

/-! ## A163606.P7063288437133624606

`((3+2*sqrt(2))*(sqrt(2)+3)^n+(3-2*sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A163606.P7063288437133624606
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (3 - 2 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163606.P7063288437133624606

namespace A163606

/-- `((3+2*sqrt(2))*(sqrt(2)+3)^n+(3-2*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P7063288437133624606.Spec : Prop :=
  ∀ n, P7063288437133624606.a n = (A163606 n : ℝ)

end A163606

/-! ## A163606.P17288783382697414215

`Δ[A102285(n)]-A102285(n)`
-/

namespace A163606.P17288783382697414215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A102285 n

end

end A163606.P17288783382697414215

namespace A163606

/-- `Δ[A102285(n)]-A102285(n)` -/
def P17288783382697414215.Spec : Prop :=
  ∀ n, P17288783382697414215.a n = A163606 n

end A163606

/-! ## A163606.P5019630805827266510

`A102285(n+1)-2*A102285(n)`
-/

namespace A163606.P5019630805827266510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 (n + 1) - 2 * A102285 n

end

end A163606.P5019630805827266510

namespace A163606

/-- `A102285(n+1)-2*A102285(n)` -/
def P5019630805827266510.Spec : Prop :=
  ∀ n, P5019630805827266510.a n = A163606 n

end A163606

/-!
# A163607: a(n) = ((5 + 2*sqrt(2))*(1 + sqrt(2))^n + (5 - 2*sqrt(2))*(1 - sqrt(2))^n)/2.

The programs for A163607, the canonical program `A163607.P8543922765040950589` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163607 has offset 0).

The definition of A163607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163607.P8543922765040950589

`2*a(n-1)+a(n-2)` with `a(0)=5, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163607

/-- `2*a(n-1)+a(n-2)` -/
def P8543922765040950589.Spec : Prop :=
  ∀ n, (P8543922765040950589.a n : ℤ) = A163607 n

theorem P8543922765040950589.correct : P8543922765040950589.Spec := by
  intro n
  simp only [A163607]

end A163607

/-! ## A163607.P10645439760529871137

`2*A001333(n)+A001333(n+2)`
-/

namespace A163607.P10645439760529871137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n + A001333 (n + 2)

end

end A163607.P10645439760529871137

namespace A163607

/-- `2*A001333(n)+A001333(n+2)` -/
def P10645439760529871137.Spec : Prop :=
  ∀ n, P10645439760529871137.a n = A163607 n

end A163607

/-! ## A163607.P12200469267592012568

`5*A000129(n+1)-A000129(n)`
-/

namespace A163607.P12200469267592012568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000129 (n + 1) - A000129 n

end

end A163607.P12200469267592012568

namespace A163607

/-- `5*A000129(n+1)-A000129(n)` -/
def P12200469267592012568.Spec : Prop :=
  ∀ n, P12200469267592012568.a n = A163607 n

end A163607

/-! ## A163607.P2551195931730104486

`ogf((-5+x)/(-1+2x+x^2))`
-/

namespace A163607.P2551195931730104486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -1] [1, -2, -1] n

end

end A163607.P2551195931730104486

namespace A163607

/-- `ogf((-5+x)/(-1+2x+x^2))` -/
def P2551195931730104486.Spec : Prop :=
  ∀ n, P2551195931730104486.a n = A163607 n

end A163607

/-! ## A163607.P15022153282367693222

`a(n-2)+lcm(2, a(n-1))` with `a(0)=5, a(1)=9`
-/

namespace A163607.P15022153282367693222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n a =>
  a (n - 2) + Nat.lcm 2 (a (n - 1))

end

end A163607.P15022153282367693222

namespace A163607

/-- `a(n-2)+lcm(2, a(n-1))` -/
def P15022153282367693222.Spec : Prop :=
  ∀ n, (P15022153282367693222.a n : ℤ) = A163607 n

end A163607

/-! ## A163607.P13234441103722272440

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=5, a(1)=9`
-/

namespace A163607.P13234441103722272440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 9] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A163607.P13234441103722272440

namespace A163607

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P13234441103722272440.Spec : Prop :=
  ∀ n, (P13234441103722272440.a n : ℤ) = A163607 n

theorem P13234441103722272440.correct : P13234441103722272440.Spec := by
  intro n
  simp only [A163607, Nat.add_sub_cancel, A163607.P13234441103722272440.a, A163607.P8543922765040950589.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163607

/-! ## A163607.P10627955833769323612

`A277369(n)+A000129(n)`
-/

namespace A163607.P10627955833769323612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277369 n + A000129 n

end

end A163607.P10627955833769323612

namespace A163607

/-- `A277369(n)+A000129(n)` -/
def P10627955833769323612.Spec : Prop :=
  ∀ n, P10627955833769323612.a n = A163607 n

end A163607

/-! ## A163607.P11630892046622806814

`A078057(n+1)+A002203(n)`
-/

namespace A163607.P11630892046622806814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) + A002203 n

end

end A163607.P11630892046622806814

namespace A163607

/-- `A078057(n+1)+A002203(n)` -/
def P11630892046622806814.Spec : Prop :=
  ∀ n, P11630892046622806814.a n = A163607 n

end A163607

/-! ## A163607.P17777458186543811690

`A221173(n+1)+A048654(n)`
-/

namespace A163607.P17777458186543811690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221173 (n + 1) + A048654 n

end

end A163607.P17777458186543811690

namespace A163607

/-- `A221173(n+1)+A048654(n)` -/
def P17777458186543811690.Spec : Prop :=
  ∀ n, P17777458186543811690.a n = A163607 n

end A163607

/-! ## A163607.P2690867063644360790

`A221175(n+1)+A078343(n)`
-/

namespace A163607.P2690867063644360790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221175 (n + 1) + A078343 n

end

end A163607.P2690867063644360790

namespace A163607

/-- `A221175(n+1)+A078343(n)` -/
def P2690867063644360790.Spec : Prop :=
  ∀ n, P2690867063644360790.a n = A163607 n

end A163607

/-! ## A163607.P17830407570749409750

`A163271(n+1)+A162268(n)`
-/

namespace A163607.P17830407570749409750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) + A162268 n

end

end A163607.P17830407570749409750

namespace A163607

/-- `A163271(n+1)+A162268(n)` -/
def P17830407570749409750.Spec : Prop :=
  ∀ n, P17830407570749409750.a n = A163607 n

end A163607

/-! ## A163607.P15608011530531025113

`A371596(n+1)+A001333(n)`
-/

namespace A163607.P15608011530531025113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371596 (n + 1) + A001333 n

end

end A163607.P15608011530531025113

namespace A163607

/-- `A371596(n+1)+A001333(n)` -/
def P15608011530531025113.Spec : Prop :=
  ∀ n, P15608011530531025113.a n = A163607 n

end A163607

/-! ## A163607.P15161306649474813180

`A002203(n)+A001333(n+2)`
-/

namespace A163607.P15161306649474813180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + A001333 (n + 2)

end

end A163607.P15161306649474813180

namespace A163607

/-- `A002203(n)+A001333(n+2)` -/
def P15161306649474813180.Spec : Prop :=
  ∀ n, P15161306649474813180.a n = A163607 n

end A163607

/-! ## A163607.P2091753106299867039

`A048693(n+1)-A048654(n)`
-/

namespace A163607.P2091753106299867039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048693 (n + 1) - A048654 n

end

end A163607.P2091753106299867039

namespace A163607

/-- `A048693(n+1)-A048654(n)` -/
def P2091753106299867039.Spec : Prop :=
  ∀ n, P2091753106299867039.a n = A163607 n

end A163607

/-! ## A163607.P5012888844876824835

`A002203(n+2)-A048655(n)`
-/

namespace A163607.P5012888844876824835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 2) - A048655 n

end

end A163607.P5012888844876824835

namespace A163607

/-- `A002203(n+2)-A048655(n)` -/
def P5012888844876824835.Spec : Prop :=
  ∀ n, P5012888844876824835.a n = A163607 n

end A163607

/-! ## A163607.P9197415667415438439

`A221174(n+2)-A048695(n)`
-/

namespace A163607.P9197415667415438439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221174 (n + 2) - A048695 n

end

end A163607.P9197415667415438439

namespace A163607

/-- `A221174(n+2)-A048695(n)` -/
def P9197415667415438439.Spec : Prop :=
  ∀ n, P9197415667415438439.a n = A163607 n

end A163607

/-! ## A163607.P13035986780069337780

`A221172(n+2)-A078343(n)`
-/

namespace A163607.P13035986780069337780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 2) - A078343 n

end

end A163607.P13035986780069337780

namespace A163607

/-- `A221172(n+2)-A078343(n)` -/
def P13035986780069337780.Spec : Prop :=
  ∀ n, P13035986780069337780.a n = A163607 n

end A163607

/-! ## A163607.P17896748468001674093

`A048655(n)+2*A002203(n)`
-/

namespace A163607.P17896748468001674093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048655 n + 2 * A002203 n

end

end A163607.P17896748468001674093

namespace A163607

/-- `A048655(n)+2*A002203(n)` -/
def P17896748468001674093.Spec : Prop :=
  ∀ n, P17896748468001674093.a n = A163607 n

end A163607

/-! ## A163607.P14619664224873818718

`A162268(n)+2*A000129(n)`
-/

namespace A163607.P14619664224873818718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162268 n + 2 * A000129 n

end

end A163607.P14619664224873818718

namespace A163607

/-- `A162268(n)+2*A000129(n)` -/
def P14619664224873818718.Spec : Prop :=
  ∀ n, P14619664224873818718.a n = A163607 n

end A163607

/-! ## A163607.P2795004059176528303

`Δ[A048654(n)]+∑[A002203(n)]`
-/

namespace A163607.P2795004059176528303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163607.P2795004059176528303

namespace A163607

/-- `Δ[A048654(n)]+∑[A002203(n)]` -/
def P2795004059176528303.Spec : Prop :=
  ∀ n, P2795004059176528303.a n = A163607 n

end A163607

/-!
# A163608: a(n) = ((5 + 2*sqrt(2))*(2 + sqrt(2))^n + (5 - 2*sqrt(2))*(2 - sqrt(2))^n)/2.

The programs for A163608, the canonical program `A163608.P1663082391884477451` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163608 has offset 0).

The definition of A163608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163608.P1663082391884477451

`4*a(n-1)-2*a(n-2)` with `a(0)=5, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163608

/-- `4*a(n-1)-2*a(n-2)` -/
def P1663082391884477451.Spec : Prop :=
  ∀ n, P1663082391884477451.a n = A163608 n

theorem P1663082391884477451.correct : P1663082391884477451.Spec := by
  intro n
  simp only [A163608]

end A163608

/-! ## A163608.P14182135331772941588

`ogf((5-6x)/(1-4x+2x^2))`
-/

namespace A163608.P14182135331772941588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6] [1, -4, 2] n

end

end A163608.P14182135331772941588

namespace A163608

/-- `ogf((5-6x)/(1-4x+2x^2))` -/
def P14182135331772941588.Spec : Prop :=
  ∀ n, P14182135331772941588.a n = A163608 n

end A163608

/-! ## A163608.P18225330850975921070

`A056236(n)+A048580(n)`
-/

namespace A163608.P18225330850975921070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n + A048580 n

end

end A163608.P18225330850975921070

namespace A163608

/-- `A056236(n)+A048580(n)` -/
def P18225330850975921070.Spec : Prop :=
  ∀ n, P18225330850975921070.a n = A163608 n

end A163608

/-! ## A163608.P3707843934785085397

`A265185(n)+A111566(n)`
-/

namespace A163608.P3707843934785085397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265185 n + A111566 n

end

end A163608.P3707843934785085397

namespace A163608

/-- `A265185(n)+A111566(n)` -/
def P3707843934785085397.Spec : Prop :=
  ∀ n, P3707843934785085397.a n = A163608 n

end A163608

/-! ## A163608.P12452056116067346755

`A162269(n)-A106731(n)`
-/

namespace A163608.P12452056116067346755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162269 n - A106731 n

end

end A163608.P12452056116067346755

namespace A163608

/-- `A162269(n)-A106731(n)` -/
def P12452056116067346755.Spec : Prop :=
  ∀ n, P12452056116067346755.a n = A163608 n

end A163608

/-! ## A163608.P7569362204390129605

`A056236(n+1)+A006012(n)`
-/

namespace A163608.P7569362204390129605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 (n + 1) + A006012 n

end

end A163608.P7569362204390129605

namespace A163608

/-- `A056236(n+1)+A006012(n)` -/
def P7569362204390129605.Spec : Prop :=
  ∀ n, P7569362204390129605.a n = A163608 n

end A163608

/-! ## A163608.P12927339975086453824

`A056236(n)+A007052(n+1)`
-/

namespace A163608.P12927339975086453824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n + A007052 (n + 1)

end

end A163608.P12927339975086453824

namespace A163608

/-- `A056236(n)+A007052(n+1)` -/
def P12927339975086453824.Spec : Prop :=
  ∀ n, P12927339975086453824.a n = A163608 n

end A163608

/-! ## A163608.P1055639813356443860

`A161938(n)+A006012(n+1)`
-/

namespace A163608.P1055639813356443860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161938 n + A006012 (n + 1)

end

end A163608.P1055639813356443860

namespace A163608

/-- `A161938(n)+A006012(n+1)` -/
def P1055639813356443860.Spec : Prop :=
  ∀ n, P1055639813356443860.a n = A163608 n

end A163608

/-! ## A163608.P17855698010552824783

`A162269(n)+A060995(n+1)`
-/

namespace A163608.P17855698010552824783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162269 n + A060995 (n + 1)

end

end A163608.P17855698010552824783

namespace A163608

/-- `A162269(n)+A060995(n+1)` -/
def P17855698010552824783.Spec : Prop :=
  ∀ n, P17855698010552824783.a n = A163608 n

end A163608

/-! ## A163608.P14045306032906998553

`A161941(n+1)+A106731(n)`
-/

namespace A163608.P14045306032906998553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 (n + 1) + A106731 n

end

end A163608.P14045306032906998553

namespace A163608

/-- `A161941(n+1)+A106731(n)` -/
def P14045306032906998553.Spec : Prop :=
  ∀ n, P14045306032906998553.a n = A163608 n

end A163608

/-! ## A163608.P15749163100998948508

`A006012(n+2)-A111566(n)`
-/

namespace A163608.P15749163100998948508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 2) - A111566 n

end

end A163608.P15749163100998948508

namespace A163608

/-- `A006012(n+2)-A111566(n)` -/
def P15749163100998948508.Spec : Prop :=
  ∀ n, P15749163100998948508.a n = A163608 n

end A163608

/-! ## A163608.P12839294098661929166

`A111566(n)+2*A056236(n)`
-/

namespace A163608.P12839294098661929166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + 2 * A056236 n

end

end A163608.P12839294098661929166

namespace A163608

/-- `A111566(n)+2*A056236(n)` -/
def P12839294098661929166.Spec : Prop :=
  ∀ n, P12839294098661929166.a n = A163608 n

end A163608

/-! ## A163608.P11194290182516329223

`A161938(n)+2*A007052(n)`
-/

namespace A163608.P11194290182516329223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161938 n + 2 * A007052 n

end

end A163608.P11194290182516329223

namespace A163608

/-- `A161938(n)+2*A007052(n)` -/
def P11194290182516329223.Spec : Prop :=
  ∀ n, P11194290182516329223.a n = A163608 n

end A163608

/-! ## A163608.P7120509398939788925

`A007070(n)+2*A161941(n)`
-/

namespace A163608.P7120509398939788925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + 2 * A161941 n

end

end A163608.P7120509398939788925

namespace A163608

/-- `A007070(n)+2*A161941(n)` -/
def P7120509398939788925.Spec : Prop :=
  ∀ n, P7120509398939788925.a n = A163608 n

end A163608

/-! ## A163608.P17746213379270651569

`2*A048580(n)-A111566(n)`
-/

namespace A163608.P17746213379270651569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048580 n - A111566 n

end

end A163608.P17746213379270651569

namespace A163608

/-- `2*A048580(n)-A111566(n)` -/
def P17746213379270651569.Spec : Prop :=
  ∀ n, P17746213379270651569.a n = A163608 n

end A163608

/-! ## A163608.P4641727813663268764

`2*A161938(n)-A006012(n)`
-/

namespace A163608.P4641727813663268764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161938 n - A006012 n

end

end A163608.P4641727813663268764

namespace A163608

/-- `2*A161938(n)-A006012(n)` -/
def P4641727813663268764.Spec : Prop :=
  ∀ n, P4641727813663268764.a n = A163608 n

end A163608

/-! ## A163608.P14707332427752538977

`6*A007052(n)-A007070(n)`
-/

namespace A163608.P14707332427752538977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A007052 n - A007070 n

end

end A163608.P14707332427752538977

namespace A163608

/-- `6*A007052(n)-A007070(n)` -/
def P14707332427752538977.Spec : Prop :=
  ∀ n, P14707332427752538977.a n = A163608 n

end A163608

/-! ## A163608.P8444279004367431363

`A161941(n+1)-A060995(n+1)`
-/

namespace A163608.P8444279004367431363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 (n + 1) - A060995 (n + 1)

end

end A163608.P8444279004367431363

namespace A163608

/-- `A161941(n+1)-A060995(n+1)` -/
def P8444279004367431363.Spec : Prop :=
  ∀ n, P8444279004367431363.a n = A163608 n

end A163608

/-! ## A163608.P18436545168383099216

`A007052(n+1)+2*A006012(n)`
-/

namespace A163608.P18436545168383099216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 (n + 1) + 2 * A006012 n

end

end A163608.P18436545168383099216

namespace A163608

/-- `A007052(n+1)+2*A006012(n)` -/
def P18436545168383099216.Spec : Prop :=
  ∀ n, P18436545168383099216.a n = A163608 n

end A163608

/-! ## A163608.P10432039374205621677

`A030435(2*n)+A007052(n+1)`
-/

namespace A163608.P10432039374205621677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030435 (2 * n) + A007052 (n + 1)

end

end A163608.P10432039374205621677

namespace A163608

/-- `A030435(2*n)+A007052(n+1)` -/
def P10432039374205621677.Spec : Prop :=
  ∀ n, P10432039374205621677.a n = A163608 n

end A163608

/-!
# A163609: a(n) = ((5 + 2*sqrt(2))*(3 + sqrt(2))^n + (5 - 2*sqrt(2))*(3 - sqrt(2))^n)/2.

The programs for A163609, the canonical program `A163609.P5453406577255148823` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163609 has offset 0).

The definition of A163609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163609.P5453406577255148823

`6*a(n-1)-7*a(n-2)` with `a(0)=5, a(1)=19`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163609

/-- `6*a(n-1)-7*a(n-2)` -/
def P5453406577255148823.Spec : Prop :=
  ∀ n, P5453406577255148823.a n = A163609 n

theorem P5453406577255148823.correct : P5453406577255148823.Spec := by
  intro n
  simp only [A163609]

end A163609

/-! ## A163609.P1595953161619060624

`5*A081179(n+1)-11*A081179(n)`
-/

namespace A163609.P1595953161619060624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081179 (n + 1) - 11 * A081179 n

end

end A163609.P1595953161619060624

namespace A163609

/-- `5*A081179(n+1)-11*A081179(n)` -/
def P1595953161619060624.Spec : Prop :=
  ∀ n, P1595953161619060624.a n = A163609 n

end A163609

/-! ## A163609.P17977272455563215777

`ogf((5-11x)/(1-6x+7x^2))`
-/

namespace A163609.P17977272455563215777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -11] [1, -6, 7] n

end

end A163609.P17977272455563215777

namespace A163609

/-- `ogf((5-11x)/(1-6x+7x^2))` -/
def P17977272455563215777.Spec : Prop :=
  ∀ n, P17977272455563215777.a n = A163609 n

end A163609

/-! ## A163609.P14474646860181577514

`A162270(n)+2*A081179(n)`
-/

namespace A163609.P14474646860181577514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162270 n + 2 * A081179 n

end

end A163609.P14474646860181577514

namespace A163609

/-- `A162270(n)+2*A081179(n)` -/
def P14474646860181577514.Spec : Prop :=
  ∀ n, P14474646860181577514.a n = A163609 n

end A163609

/-! ## A163609.P15604915093069652592

`A102285(n)+2*A161944(n)`
-/

namespace A163609.P15604915093069652592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + 2 * A161944 n

end

end A163609.P15604915093069652592

namespace A163609

/-- `A102285(n)+2*A161944(n)` -/
def P15604915093069652592.Spec : Prop :=
  ∀ n, P15604915093069652592.a n = A163609 n

end A163609

/-! ## A163609.P1267032309223552542

`A083878(n+1)+Δ[A083878(n)]`
-/

namespace A163609.P1267032309223552542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163609.P1267032309223552542

namespace A163609

/-- `A083878(n+1)+Δ[A083878(n)]` -/
def P1267032309223552542.Spec : Prop :=
  ∀ n, P1267032309223552542.a n = A163609 n

end A163609

/-! ## A163609.P9523712618351086725

`A163606(n)+A163606(n)-A163348(n)`
-/

namespace A163609.P9523712618351086725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163606 n + (A163606 n - A163348 n)

end

end A163609.P9523712618351086725

namespace A163609

/-- `A163606(n)+A163606(n)-A163348(n)` -/
def P9523712618351086725.Spec : Prop :=
  ∀ n, P9523712618351086725.a n = A163609 n

end A163609

/-! ## A163609.P1334835027302138030

`((5+2*sqrt(2))*(sqrt(2)+3)^n+(5-2*sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A163609.P1334835027302138030
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 3) ^ n + (5 - 2 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163609.P1334835027302138030

namespace A163609

/-- `((5+2*sqrt(2))*(sqrt(2)+3)^n+(5-2*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P1334835027302138030.Spec : Prop :=
  ∀ n, P1334835027302138030.a n = (A163609 n : ℝ)

end A163609

/-! ## A163609.P13325853023190308241

`Δ[A163348(n)]-A163614(n)`
-/

namespace A163609.P13325853023190308241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163614 n

end

end A163609.P13325853023190308241

namespace A163609

/-- `Δ[A163348(n)]-A163614(n)` -/
def P13325853023190308241.Spec : Prop :=
  ∀ n, P13325853023190308241.a n = A163609 n

end A163609

/-! ## A163609.P9476912428224063799

`2*A163606(n)-A163348(n)`
-/

namespace A163609.P9476912428224063799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163606 n - A163348 n

end

end A163609.P9476912428224063799

namespace A163609

/-- `2*A163606(n)-A163348(n)` -/
def P9476912428224063799.Spec : Prop :=
  ∀ n, P9476912428224063799.a n = A163609 n

end A163609

/-! ## A163609.P16231787204847465742

`A102285(n+2)%(A102285(n+1)+A102285(n))`
-/

namespace A163609.P16231787204847465742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102285 (n + 2)) (A102285 (n + 1) + A102285 n)

end

end A163609.P16231787204847465742

namespace A163609

/-- `A102285(n+2)%(A102285(n+1)+A102285(n))` -/
def P16231787204847465742.Spec : Prop :=
  ∀ n, P16231787204847465742.a n = A163609 n

end A163609

/-!
# A163610: a(n) = ((5 + 2*sqrt(2))*(4 + sqrt(2))^n + (5 - 2*sqrt(2))*(4 - sqrt(2))^n)/2.

The programs for A163610, the canonical program `A163610.P11225952386309572997` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163610 has offset 0).

The definition of A163610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163610.P11225952386309572997

`8*a(n-1)-14*a(n-2)` with `a(0)=5, a(1)=24`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163610

/-- `8*a(n-1)-14*a(n-2)` -/
def P11225952386309572997.Spec : Prop :=
  ∀ n, P11225952386309572997.a n = A163610 n

theorem P11225952386309572997.correct : P11225952386309572997.Spec := by
  intro n
  simp only [A163610]

end A163610

/-! ## A163610.P17219837708925042212

`ogf((5-16x)/(1-8x+14x^2))`
-/

namespace A163610.P17219837708925042212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -16] [1, -8, 14] n

end

end A163610.P17219837708925042212

namespace A163610

/-- `ogf((5-16x)/(1-8x+14x^2))` -/
def P17219837708925042212.Spec : Prop :=
  ∀ n, P17219837708925042212.a n = A163610 n

end A163610

/-! ## A163610.P1451242055917559052

`((5+2*sqrt(2))*(sqrt(2)+4)^n+(5-2*sqrt(2))*(4-sqrt(2))^n)/2`
-/

namespace A163610.P1451242055917559052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 4) ^ n + (5 - 2 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163610.P1451242055917559052

namespace A163610

/-- `((5+2*sqrt(2))*(sqrt(2)+4)^n+(5-2*sqrt(2))*(4-sqrt(2))^n)/2` -/
def P1451242055917559052.Spec : Prop :=
  ∀ n, P1451242055917559052.a n = (A163610 n : ℝ)

end A163610

/-! ## A163610.P7073161171831837687

`A163350(n+1)-A163615(n)`
-/

namespace A163610.P7073161171831837687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 (n + 1) - A163615 n

end

end A163610.P7073161171831837687

namespace A163610

/-- `A163350(n+1)-A163615(n)` -/
def P7073161171831837687.Spec : Prop :=
  ∀ n, P7073161171831837687.a n = A163610 n

end A163610

/-! ## A163610.P16993262015451908663

`6*A161731(n)-A163350(n)`
-/

namespace A163610.P16993262015451908663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A161731 n - A163350 n

end

end A163610.P16993262015451908663

namespace A163610

/-- `6*A161731(n)-A163350(n)` -/
def P16993262015451908663.Spec : Prop :=
  ∀ n, P16993262015451908663.a n = A163610 n

end A163610

/-! ## A163610.P14584387348475233504

`Δ[2*A083879(n)]-A083879(n)`
-/

namespace A163610.P14584387348475233504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083879 n

end

end A163610.P14584387348475233504

namespace A163610

/-- `Δ[2*A083879(n)]-A083879(n)` -/
def P14584387348475233504.Spec : Prop :=
  ∀ n, P14584387348475233504.a n = A163610 n

end A163610

/-! ## A163610.P9361315513329111034

`A161731(n+1)-2*A081180(n)`
-/

namespace A163610.P9361315513329111034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 (n + 1) - 2 * A081180 n

end

end A163610.P9361315513329111034

namespace A163610

/-- `A161731(n+1)-2*A081180(n)` -/
def P9361315513329111034.Spec : Prop :=
  ∀ n, P9361315513329111034.a n = A163610 n

end A163610

/-!
# A163611: a(n) = ((5 + 2*sqrt(2))*(5 + sqrt(2))^n + (5 - 2*sqrt(2))*(5 - sqrt(2))^n)/2.

The programs for A163611, the canonical program `A163611.P13470172246636587633` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163611 has offset 0).

The definition of A163611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163611.P13470172246636587633

`10*a(n-1)-23*a(n-2)` with `a(0)=5, a(1)=29`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163611

/-- `10*a(n-1)-23*a(n-2)` -/
def P13470172246636587633.Spec : Prop :=
  ∀ n, P13470172246636587633.a n = A163611 n

theorem P13470172246636587633.correct : P13470172246636587633.Spec := by
  intro n
  simp only [A163611]

end A163611

/-! ## A163611.P11448119888075336505

`((5+2*sqrt(2))*(5+sqrt(2))^n+(5-2*sqrt(2))*(5-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163611.P11448119888075336505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (5 - 2 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163611.P11448119888075336505

namespace A163611

/-- `((5+2*sqrt(2))*(5+sqrt(2))^n+(5-2*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P11448119888075336505.Spec : Prop :=
  ∀ n, P11448119888075336505.a n = (A163611 n : ℝ)

end A163611

/-! ## A163611.P15116131452601964150

`ogf((5-21x)/(1-10x+23x^2))`
-/

namespace A163611.P15116131452601964150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -21] [1, -10, 23] n

end

end A163611.P15116131452601964150

namespace A163611

/-- `ogf((5-21x)/(1-10x+23x^2))` -/
def P15116131452601964150.Spec : Prop :=
  ∀ n, P15116131452601964150.a n = A163611 n

end A163611

/-! ## A163611.P2145982382906385796

`5*A161734(n)-A081182(n)`
-/

namespace A163611.P2145982382906385796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A161734 n - A081182 n

end

end A163611.P2145982382906385796

namespace A163611

/-- `5*A161734(n)-A081182(n)` -/
def P2145982382906385796.Spec : Prop :=
  ∀ n, P2145982382906385796.a n = A163611 n

end A163611

/-! ## A163611.P15494197367044288054

`6*A161734(n)-A163346(n)`
-/

namespace A163611.P15494197367044288054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A161734 n - A163346 n

end

end A163611.P15494197367044288054

namespace A163611

/-- `6*A161734(n)-A163346(n)` -/
def P15494197367044288054.Spec : Prop :=
  ∀ n, P15494197367044288054.a n = A163611 n

end A163611

/-! ## A163611.P18371225018986021104

`A161734(n+1)-A164031(n)`
-/

namespace A163611.P18371225018986021104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 (n + 1) - A164031 n

end

end A163611.P18371225018986021104

namespace A163611

/-- `A161734(n+1)-A164031(n)` -/
def P18371225018986021104.Spec : Prop :=
  ∀ n, P18371225018986021104.a n = A163611 n

end A163611

/-! ## A163611.P8463896494448567075

`7*A161734(n)-A164035(n)`
-/

namespace A163611.P8463896494448567075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A161734 n - A164035 n

end

end A163611.P8463896494448567075

namespace A163611

/-- `7*A161734(n)-A164035(n)` -/
def P8463896494448567075.Spec : Prop :=
  ∀ n, P8463896494448567075.a n = A163611 n

end A163611

/-! ## A163611.P17558530824201254949

`A163346(n+1)-(A164031(n)+A081182(n+1))`
-/

namespace A163611.P17558530824201254949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 (n + 1) - (A164031 n + A081182 (n + 1))

end

end A163611.P17558530824201254949

namespace A163611

/-- `A163346(n+1)-(A164031(n)+A081182(n+1))` -/
def P17558530824201254949.Spec : Prop :=
  ∀ n, P17558530824201254949.a n = A163611 n

end A163611

/-! ## A163611.P13796071692807292549

`A164035(n+2)%A164035(n+1)-A164031(n)`
-/

namespace A163611.P13796071692807292549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164035 (n + 2)) (A164035 (n + 1)) - A164031 n

end

end A163611.P13796071692807292549

namespace A163611

/-- `A164035(n+2)%A164035(n+1)-A164031(n)` -/
def P13796071692807292549.Spec : Prop :=
  ∀ n, P13796071692807292549.a n = A163611 n

end A163611

/-!
# A163613: a(n) = ((1 + 3*sqrt(2))*(2 + sqrt(2))^n + (1 - 3*sqrt(2))*(2 - sqrt(2))^n)/2.

The programs for A163613, the canonical program `A163613.P3604274273288887266` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163613 has offset 0).

The definition of A163613 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163613.P3604274273288887266

`4*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163613

/-- `4*a(n-1)-2*a(n-2)` -/
def P3604274273288887266.Spec : Prop :=
  ∀ n, P3604274273288887266.a n = A163613 n

theorem P3604274273288887266.correct : P3604274273288887266.Spec := by
  intro n
  simp only [A163613]

end A163613

/-! ## A163613.P7059155304835760461

`ogf((1+4x)/(1-4x+2x^2))`
-/

namespace A163613.P7059155304835760461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -4, 2] n

end

end A163613.P7059155304835760461

namespace A163613

/-- `ogf((1+4x)/(1-4x+2x^2))` -/
def P7059155304835760461.Spec : Prop :=
  ∀ n, P7059155304835760461.a n = A163613 n

end A163613

/-! ## A163613.P2450195142348005626

`((1+3*sqrt(2))*(2+sqrt(2))^n+(1-3*sqrt(2))*(2-sqrt(2))^n)/2`
-/

namespace A163613.P2450195142348005626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (2 : ℝ)) * (2 + Real.sqrt (2 : ℝ)) ^ n + (1 - 3 * Real.sqrt (2 : ℝ)) * (2 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163613.P2450195142348005626

namespace A163613

/-- `((1+3*sqrt(2))*(2+sqrt(2))^n+(1-3*sqrt(2))*(2-sqrt(2))^n)/2` -/
def P2450195142348005626.Spec : Prop :=
  ∀ n, P2450195142348005626.a n = (A163613 n : ℝ)

end A163613

/-! ## A163613.P17245673782583097633

`A164298(n)+A106731(n)`
-/

namespace A163613.P17245673782583097633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164298 n + A106731 n

end

end A163613.P17245673782583097633

namespace A163613

/-- `A164298(n)+A106731(n)` -/
def P17245673782583097633.Spec : Prop :=
  ∀ n, P17245673782583097633.a n = A163613 n

end A163613

/-! ## A163613.P8248933493149037698

`A111566(n)-A106731(n)`
-/

namespace A163613.P8248933493149037698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n - A106731 n

end

end A163613.P8248933493149037698

namespace A163613

/-- `A111566(n)-A106731(n)` -/
def P8248933493149037698.Spec : Prop :=
  ∀ n, P8248933493149037698.a n = A163613 n

end A163613

/-! ## A163613.P1224363656715766176

`A111566(n)+A060995(n+1)`
-/

namespace A163613.P1224363656715766176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + A060995 (n + 1)

end

end A163613.P1224363656715766176

namespace A163613

/-- `A111566(n)+A060995(n+1)` -/
def P1224363656715766176.Spec : Prop :=
  ∀ n, P1224363656715766176.a n = A163613 n

end A163613

/-! ## A163613.P10203733969666286631

`A164298(n)-A060995(n+1)`
-/

namespace A163613.P10203733969666286631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164298 n - A060995 (n + 1)

end

end A163613.P10203733969666286631

namespace A163613

/-- `A164298(n)-A060995(n+1)` -/
def P10203733969666286631.Spec : Prop :=
  ∀ n, P10203733969666286631.a n = A163613 n

end A163613

/-! ## A163613.P2147364017466532371

`A161941(n+1)-A265185(n)`
-/

namespace A163613.P2147364017466532371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161941 (n + 1) - A265185 n

end

end A163613.P2147364017466532371

namespace A163613

/-- `A161941(n+1)-A265185(n)` -/
def P2147364017466532371.Spec : Prop :=
  ∀ n, P2147364017466532371.a n = A163613 n

end A163613

/-! ## A163613.P8666123898676109922

`A007070(n)-2*A106731(n)`
-/

namespace A163613.P8666123898676109922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n - 2 * A106731 n

end

end A163613.P8666123898676109922

namespace A163613

/-- `A007070(n)-2*A106731(n)` -/
def P8666123898676109922.Spec : Prop :=
  ∀ n, P8666123898676109922.a n = A163613 n

end A163613

/-! ## A163613.P6990275042096026404

`2*A111567(n)-A006012(n)`
-/

namespace A163613.P6990275042096026404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111567 n - A006012 n

end

end A163613.P6990275042096026404

namespace A163613

/-- `2*A111567(n)-A006012(n)` -/
def P6990275042096026404.Spec : Prop :=
  ∀ n, P6990275042096026404.a n = A163613 n

end A163613

/-! ## A163613.P6918110368826576192

`2*A111566(n)-A007070(n)`
-/

namespace A163613.P6918110368826576192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111566 n - A007070 n

end

end A163613.P6918110368826576192

namespace A163613

/-- `2*A111566(n)-A007070(n)` -/
def P6918110368826576192.Spec : Prop :=
  ∀ n, P6918110368826576192.a n = A163613 n

end A163613

/-! ## A163613.P10009625890074017853

`3*A007070(n)-A056236(n)`
-/

namespace A163613.P10009625890074017853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007070 n - A056236 n

end

end A163613.P10009625890074017853

namespace A163613

/-- `3*A007070(n)-A056236(n)` -/
def P10009625890074017853.Spec : Prop :=
  ∀ n, P10009625890074017853.a n = A163613 n

end A163613

/-! ## A163613.P3763297887836866736

`∑[A056236(n)+A007052(n)]-2`
-/

namespace A163613.P3763297887836866736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056236 n + A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A163613.P3763297887836866736

namespace A163613

/-- `∑[A056236(n)+A007052(n)]-2` -/
def P3763297887836866736.Spec : Prop :=
  ∀ n, P3763297887836866736.a n = A163613 n

end A163613

/-! ## A163613.P12630438984663397049

`∑[A007052(n)]-2*A106731(n)`
-/

namespace A163613.P12630438984663397049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A106731 n

end

end A163613.P12630438984663397049

namespace A163613

/-- `∑[A007052(n)]-2*A106731(n)` -/
def P12630438984663397049.Spec : Prop :=
  ∀ n, P12630438984663397049.a n = A163613 n

end A163613

/-! ## A163613.P779088735388980573

`A007070(n)+2*A060995(n+1)`
-/

namespace A163613.P779088735388980573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + 2 * A060995 (n + 1)

end

end A163613.P779088735388980573

namespace A163613

/-- `A007070(n)+2*A060995(n+1)` -/
def P779088735388980573.Spec : Prop :=
  ∀ n, P779088735388980573.a n = A163613 n

end A163613

/-! ## A163613.P5679387650242319849

`A007070(n+1)-3*A006012(n)`
-/

namespace A163613.P5679387650242319849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) - 3 * A006012 n

end

end A163613.P5679387650242319849

namespace A163613

/-- `A007070(n+1)-3*A006012(n)` -/
def P5679387650242319849.Spec : Prop :=
  ∀ n, P5679387650242319849.a n = A163613 n

end A163613

/-! ## A163613.P548376087165558338

`A007070(n)+A111566(n)-A006012(n)`
-/

namespace A163613.P548376087165558338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n + (A111566 n - A006012 n)

end

end A163613.P548376087165558338

namespace A163613

/-- `A007070(n)+A111566(n)-A006012(n)` -/
def P548376087165558338.Spec : Prop :=
  ∀ n, P548376087165558338.a n = A163613 n

end A163613

/-! ## A163613.P4968305793759224237

`A111566(n)+A111567(n)-A007052(n)`
-/

namespace A163613.P4968305793759224237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111566 n + (A111567 n - A007052 n)

end

end A163613.P4968305793759224237

namespace A163613

/-- `A111566(n)+A111567(n)-A007052(n)` -/
def P4968305793759224237.Spec : Prop :=
  ∀ n, P4968305793759224237.a n = A163613 n

end A163613

/-! ## A163613.P1419583840985831147

`A007070(n+1)-(A056236(n)+A006012(n))`
-/

namespace A163613.P1419583840985831147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 (n + 1) - (A056236 n + A006012 n)

end

end A163613.P1419583840985831147

namespace A163613

/-- `A007070(n+1)-(A056236(n)+A006012(n))` -/
def P1419583840985831147.Spec : Prop :=
  ∀ n, P1419583840985831147.a n = A163613 n

end A163613

/-!
# A163614: a(n) = ((1 + 3*sqrt(2))*(3 + sqrt(2))^n + (1 - 3*sqrt(2))*(3 - sqrt(2))^n)/2.

The programs for A163614, the canonical program `A163614.P10482562429390466359` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163614 has offset 0).

The definition of A163614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163614.P10482562429390466359

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163614

/-- `6*a(n-1)-7*a(n-2)` -/
def P10482562429390466359.Spec : Prop :=
  ∀ n, P10482562429390466359.a n = A163614 n

theorem P10482562429390466359.correct : P10482562429390466359.Spec := by
  intro n
  simp only [A163614]

end A163614

/-! ## A163614.P2783706411724461983

`((1+3*sqrt(2))*(3+sqrt(2))^n+(1-3*sqrt(2))*(3-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163614.P2783706411724461983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (2 : ℝ)) * (3 + Real.sqrt (2 : ℝ)) ^ n + (1 - 3 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163614.P2783706411724461983

namespace A163614

/-- `((1+3*sqrt(2))*(3+sqrt(2))^n+(1-3*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P2783706411724461983.Spec : Prop :=
  ∀ n, P2783706411724461983.a n = (A163614 n : ℝ)

end A163614

/-! ## A163614.P11127530620269851164

`ogf((1+3x)/(1-6x+7x^2))`
-/

namespace A163614.P11127530620269851164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -6, 7] n

end

end A163614.P11127530620269851164

namespace A163614

/-- `ogf((1+3x)/(1-6x+7x^2))` -/
def P11127530620269851164.Spec : Prop :=
  ∀ n, P11127530620269851164.a n = A163614 n

end A163614

/-! ## A163614.P8134983331040636251

`A163348(n)+2*A081179(n)`
-/

namespace A163614.P8134983331040636251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 n + 2 * A081179 n

end

end A163614.P8134983331040636251

namespace A163614

/-- `A163348(n)+2*A081179(n)` -/
def P8134983331040636251.Spec : Prop :=
  ∀ n, P8134983331040636251.a n = A163614 n

end A163614

/-! ## A163614.P6371714884643414798

`A164299(n)-2*A081179(n)`
-/

namespace A163614.P6371714884643414798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164299 n - 2 * A081179 n

end

end A163614.P6371714884643414798

namespace A163614

/-- `A164299(n)-2*A081179(n)` -/
def P6371714884643414798.Spec : Prop :=
  ∀ n, P6371714884643414798.a n = A163614 n

end A163614

/-! ## A163614.P2107181392235093676

`2*A163348(n)-A102285(n)`
-/

namespace A163614.P2107181392235093676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163348 n - A102285 n

end

end A163614.P2107181392235093676

namespace A163614

/-- `2*A163348(n)-A102285(n)` -/
def P2107181392235093676.Spec : Prop :=
  ∀ n, P2107181392235093676.a n = A163614 n

end A163614

/-! ## A163614.P8364509626856522338

`A102285(n)+4*A081179(n)`
-/

namespace A163614.P8364509626856522338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n + 4 * A081179 n

end

end A163614.P8364509626856522338

namespace A163614

/-- `A102285(n)+4*A081179(n)` -/
def P8364509626856522338.Spec : Prop :=
  ∀ n, P8364509626856522338.a n = A163614 n

end A163614

/-! ## A163614.P16955306491854719895

`A081179(n+1)+3*A081179(n)`
-/

namespace A163614.P16955306491854719895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) + 3 * A081179 n

end

end A163614.P16955306491854719895

namespace A163614

/-- `A081179(n+1)+3*A081179(n)` -/
def P16955306491854719895.Spec : Prop :=
  ∀ n, P16955306491854719895.a n = A163614 n

end A163614

/-! ## A163614.P10801802047070152708

`A081179(n+1)+A081179(n+1)-A083878(n)`
-/

namespace A163614.P10801802047070152708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) + (A081179 (n + 1) - A083878 n)

end

end A163614.P10801802047070152708

namespace A163614

/-- `A081179(n+1)+A081179(n+1)-A083878(n)` -/
def P10801802047070152708.Spec : Prop :=
  ∀ n, P10801802047070152708.a n = A163614 n

end A163614

/-! ## A163614.P17550291621087181517

`A102285(n+1)+A102285(n)-A163609(n)`
-/

namespace A163614.P17550291621087181517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 (n + 1) + (A102285 n - A163609 n)

end

end A163614.P17550291621087181517

namespace A163614

/-- `A102285(n+1)+A102285(n)-A163609(n)` -/
def P17550291621087181517.Spec : Prop :=
  ∀ n, P17550291621087181517.a n = A163614 n

end A163614

/-! ## A163614.P7457311556178958176

`A163348(n+1)-(A163609(n)+A163348(n))`
-/

namespace A163614.P7457311556178958176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163348 (n + 1) - (A163609 n + A163348 n)

end

end A163614.P7457311556178958176

namespace A163614

/-- `A163348(n+1)-(A163609(n)+A163348(n))` -/
def P7457311556178958176.Spec : Prop :=
  ∀ n, P7457311556178958176.a n = A163614 n

end A163614

/-!
# A163615: a(n) = ((1 + 3*sqrt(2))*(4 + sqrt(2))^n + (1 - 3*sqrt(2))*(4 - sqrt(2))^n)/2.

The programs for A163615, the canonical program `A163615.P9526934099632185611` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163615 has offset 0).

The definition of A163615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163615.P9526934099632185611

`8*a(n-1)-14*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163615

/-- `8*a(n-1)-14*a(n-2)` -/
def P9526934099632185611.Spec : Prop :=
  ∀ n, P9526934099632185611.a n = A163615 n

theorem P9526934099632185611.correct : P9526934099632185611.Spec := by
  intro n
  simp only [A163615]

end A163615

/-! ## A163615.P7355884976030671589

`((1+3*sqrt(2))*(4+sqrt(2))^n+(1-3*sqrt(2))*(4-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163615.P7355884976030671589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (2 : ℝ)) * (4 + Real.sqrt (2 : ℝ)) ^ n + (1 - 3 * Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163615.P7355884976030671589

namespace A163615

/-- `((1+3*sqrt(2))*(4+sqrt(2))^n+(1-3*sqrt(2))*(4-sqrt(2))^n)/2` -/
def P7355884976030671589.Spec : Prop :=
  ∀ n, P7355884976030671589.a n = (A163615 n : ℝ)

end A163615

/-! ## A163615.P13284130020317369909

`ogf((1+2x)/(1-8x+14x^2))`
-/

namespace A163615.P13284130020317369909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 14] n

end

end A163615.P13284130020317369909

namespace A163615

/-- `ogf((1+2x)/(1-8x+14x^2))` -/
def P13284130020317369909.Spec : Prop :=
  ∀ n, P13284130020317369909.a n = A163615 n

end A163615

/-! ## A163615.P875022619890436053

`A164072(n)+3*A081180(n)`
-/

namespace A163615.P875022619890436053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n + 3 * A081180 n

end

end A163615.P875022619890436053

namespace A163615

/-- `A164072(n)+3*A081180(n)` -/
def P875022619890436053.Spec : Prop :=
  ∀ n, P875022619890436053.a n = A163615 n

end A163615

/-! ## A163615.P5182291994924512153

`A164300(n)-2*A081180(n)`
-/

namespace A163615.P5182291994924512153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164300 n - 2 * A081180 n

end

end A163615.P5182291994924512153

namespace A163615

/-- `A164300(n)-2*A081180(n)` -/
def P5182291994924512153.Spec : Prop :=
  ∀ n, P5182291994924512153.a n = A163615 n

end A163615

/-! ## A163615.P4452572689502336250

`A163350(n)+4*A081180(n)`
-/

namespace A163615.P4452572689502336250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163350 n + 4 * A081180 n

end

end A163615.P4452572689502336250

namespace A163615

/-- `A163350(n)+4*A081180(n)` -/
def P4452572689502336250.Spec : Prop :=
  ∀ n, P4452572689502336250.a n = A163615 n

end A163615

/-! ## A163615.P11407565257702136879

`A161731(n)+5*A081180(n)`
-/

namespace A163615.P11407565257702136879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n + 5 * A081180 n

end

end A163615.P11407565257702136879

namespace A163615

/-- `A161731(n)+5*A081180(n)` -/
def P11407565257702136879.Spec : Prop :=
  ∀ n, P11407565257702136879.a n = A163615 n

end A163615

/-! ## A163615.P9065207368193941843

`A081180(n+1)+2*A081180(n)`
-/

namespace A163615.P9065207368193941843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) + 2 * A081180 n

end

end A163615.P9065207368193941843

namespace A163615

/-- `A081180(n+1)+2*A081180(n)` -/
def P9065207368193941843.Spec : Prop :=
  ∀ n, P9065207368193941843.a n = A163615 n

end A163615

/-!
# A163616: a(n) = ((1 + 3*sqrt(2))*(5 + sqrt(2))^n + (1 - 3*sqrt(2))*(5 - sqrt(2))^n)/2.

The programs for A163616, the canonical program `A163616.P11647714253586319673` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163616 has offset 0).

The definition of A163616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163616.P11647714253586319673

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163616

/-- `10*a(n-1)-23*a(n-2)` -/
def P11647714253586319673.Spec : Prop :=
  ∀ n, P11647714253586319673.a n = A163616 n

theorem P11647714253586319673.correct : P11647714253586319673.Spec := by
  intro n
  simp only [A163616]

end A163616

/-! ## A163616.P18288982715218835565

`((1+3*sqrt(2))*(5+sqrt(2))^n+(1-3*sqrt(2))*(5-sqrt(2))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163616.P18288982715218835565
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 3 * Real.sqrt (2 : ℝ)) * (5 + Real.sqrt (2 : ℝ)) ^ n + (1 - 3 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163616.P18288982715218835565

namespace A163616

/-- `((1+3*sqrt(2))*(5+sqrt(2))^n+(1-3*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P18288982715218835565.Spec : Prop :=
  ∀ n, P18288982715218835565.a n = (A163616 n : ℝ)

end A163616

/-! ## A163616.P4847606996563354187

`A081182(n)+A081182(n+1)`
-/

namespace A163616.P4847606996563354187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + A081182 (n + 1)

end

end A163616.P4847606996563354187

namespace A163616

/-- `A081182(n)+A081182(n+1)` -/
def P4847606996563354187.Spec : Prop :=
  ∀ n, P4847606996563354187.a n = A163616 n

end A163616

/-! ## A163616.P3831563200089454069

`ogf((1+x)/(1-10x+23x^2))`
-/

namespace A163616.P3831563200089454069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -10, 23] n

end

end A163616.P3831563200089454069

namespace A163616

/-- `ogf((1+x)/(1-10x+23x^2))` -/
def P3831563200089454069.Spec : Prop :=
  ∀ n, P3831563200089454069.a n = A163616 n

end A163616

/-! ## A163616.P15566763313901605743

`A081182(n)+∑[A163349(n)]`
-/

namespace A163616.P15566763313901605743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163616.P15566763313901605743

namespace A163616

/-- `A081182(n)+∑[A163349(n)]` -/
def P15566763313901605743.Spec : Prop :=
  ∀ n, P15566763313901605743.a n = A163616 n

end A163616

/-! ## A163616.P13557178385699689153

`A164301(n)-2*A081182(n)`
-/

namespace A163616.P13557178385699689153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164301 n - 2 * A081182 n

end

end A163616.P13557178385699689153

namespace A163616

/-- `A164301(n)-2*A081182(n)` -/
def P13557178385699689153.Spec : Prop :=
  ∀ n, P13557178385699689153.a n = A163616 n

end A163616

/-! ## A163616.P4917362726979060436

`2*A163349(n)-A163346(n)`
-/

namespace A163616.P4917362726979060436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163349 n - A163346 n

end

end A163616.P4917362726979060436

namespace A163616

/-- `2*A163349(n)-A163346(n)` -/
def P4917362726979060436.Spec : Prop :=
  ∀ n, P4917362726979060436.a n = A163616 n

end A163616

/-! ## A163616.P13162430025941966945

`Δ[2*A081182(n)]-A163346(n)`
-/

namespace A163616.P13162430025941966945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163346 n

end

end A163616.P13162430025941966945

namespace A163616

/-- `Δ[2*A081182(n)]-A163346(n)` -/
def P13162430025941966945.Spec : Prop :=
  ∀ n, P13162430025941966945.a n = A163616 n

end A163616

/-! ## A163616.P1428803788869032817

`Δ[A164031(n)]%A163605(n)`
-/

namespace A163616.P1428803788869032817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A163605 n)

end

end A163616.P1428803788869032817

namespace A163616

/-- `Δ[A164031(n)]%A163605(n)` -/
def P1428803788869032817.Spec : Prop :=
  ∀ n, P1428803788869032817.a n = A163616 n

end A163616

/-! ## A163616.P7248159409227195162

`Δ[A163349(n)]-A163346(n+1)`
-/

namespace A163616.P7248159409227195162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163346 (n + 1)

end

end A163616.P7248159409227195162

namespace A163616

/-- `Δ[A163349(n)]-A163346(n+1)` -/
def P7248159409227195162.Spec : Prop :=
  ∀ n, P7248159409227195162.a n = A163616 n

end A163616

/-!
# A163617: a(2*n) = 2*a(n), a(2*n + 1) = 2*a(n) + 2 + (-1)^n, for all n in Z.

The programs for A163617, the canonical program `A163617.P10185125821544422075` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163617 has offset 0).

The definition of A163617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163617.P10185125821544422075

`or(n, 2*n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163617

/-- `or(n, 2*n)` -/
def P10185125821544422075.Spec : Prop :=
  ∀ n, (P10185125821544422075.a n : ℤ) = A163617 n

theorem P10185125821544422075.correct : P10185125821544422075.Spec := by
  intro n
  simp only [A163617]

end A163617

/-! ## A163617.P6581460035785237426

`and(2*n, -n)+n`
-/

namespace A163617.P6581460035785237426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ)) + (n : ℤ)

end

end A163617.P6581460035785237426

namespace A163617

/-- `and(2*n, -n)+n` -/
def P6581460035785237426.Spec : Prop :=
  ∀ n, P6581460035785237426.a n = A163617 n

end A163617

/-! ## A163617.P4492129316341418714

`xor(n, and(2*n, -n))`
-/

namespace A163617.P4492129316341418714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (2 * n : ℤ) (-(n : ℤ)))

end

end A163617.P4492129316341418714

namespace A163617

/-- `xor(n, and(2*n, -n))` -/
def P4492129316341418714.Spec : Prop :=
  ∀ n, P4492129316341418714.a n = A163617 n

end A163617

/-! ## A163617.P6647504685265146153

`-and(-n, Δ[-n²])`
-/

namespace A163617.P6647504685265146153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land (-(n : ℤ)) (f1 (n + 1) - f1 n)

end

end A163617.P6647504685265146153

namespace A163617

/-- `-and(-n, Δ[-n²])` -/
def P6647504685265146153.Spec : Prop :=
  ∀ n, P6647504685265146153.a n = A163617 n

end A163617

/-! ## A163617.P16237394060240848986

`3*n-and(n, 2*n)`
-/

namespace A163617.P16237394060240848986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (Nat.land n (2 * n) : ℤ)

end

end A163617.P16237394060240848986

namespace A163617

/-- `3*n-and(n, 2*n)` -/
def P16237394060240848986.Spec : Prop :=
  ∀ n, P16237394060240848986.a n = A163617 n

end A163617

/-! ## A163617.P428482988139955651

`n-1-or(n, Δ[-n²])`
-/

namespace A163617.P428482988139955651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.lor (n : ℤ) (f1 (n + 1) - f1 n)

end

end A163617.P428482988139955651

namespace A163617

/-- `n-1-or(n, Δ[-n²])` -/
def P428482988139955651.Spec : Prop :=
  ∀ n, P428482988139955651.a n = A163617 n

end A163617

/-! ## A163617.P7756262397840359114

`xor(2*n, and(n, 2*n))+n`
-/

namespace A163617.P7756262397840359114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) (Nat.land n (2 * n)) + n

end

end A163617.P7756262397840359114

namespace A163617

/-- `xor(2*n, and(n, 2*n))+n` -/
def P7756262397840359114.Spec : Prop :=
  ∀ n, (P7756262397840359114.a n : ℤ) = A163617 n

end A163617

/-! ## A163617.P5922593626172740206

`or(abs(1-n)+n+1, n-1)+1`
-/

namespace A163617.P5922593626172740206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (|1 - (n : ℤ)| + (n + 1 : ℤ)) ((n : ℤ) - 1) + 1

end

end A163617.P5922593626172740206

namespace A163617

/-- `or(abs(1-n)+n+1, n-1)+1` -/
def P5922593626172740206.Spec : Prop :=
  ∀ n, P5922593626172740206.a n = A163617 n

end A163617

/-! ## A163617.P12269474726398250292

`A213064(n)+n`
-/

namespace A163617.P12269474726398250292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n + (n : ℤ)

end

end A163617.P12269474726398250292

namespace A163617

/-- `A213064(n)+n` -/
def P12269474726398250292.Spec : Prop :=
  ∀ n, P12269474726398250292.a n = A163617 n

end A163617

/-! ## A163617.P2896164651284921340

`A229763(n)+2*n`
-/

namespace A163617.P2896164651284921340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n + (2 * n : ℤ)

end

end A163617.P2896164651284921340

namespace A163617

/-- `A229763(n)+2*n` -/
def P2896164651284921340.Spec : Prop :=
  ∀ n, P2896164651284921340.a n = A163617 n

end A163617

/-! ## A163617.P11963539184352407900

`2*A292272(n)+n`
-/

namespace A163617.P11963539184352407900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292272 n + (n : ℤ)

end

end A163617.P11963539184352407900

namespace A163617

/-- `2*A292272(n)+n` -/
def P11963539184352407900.Spec : Prop :=
  ∀ n, P11963539184352407900.a n = A163617 n

end A163617

/-! ## A163617.P8751225241723880960

`3*n-A213370(n)`
-/

namespace A163617.P8751225241723880960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A213370 n

end

end A163617.P8751225241723880960

namespace A163617

/-- `3*n-A213370(n)` -/
def P8751225241723880960.Spec : Prop :=
  ∀ n, P8751225241723880960.a n = A163617 n

end A163617

/-! ## A163617.P11156456600471686804

`xor(n, A269160(n))/2`
-/

namespace A163617.P11156456600471686804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (n : ℤ) (A269160 n) : ℚ) / 2

end

end A163617.P11156456600471686804

namespace A163617

/-- `xor(n, A269160(n))/2` -/
def P11156456600471686804.Spec : Prop :=
  ∀ n, P11156456600471686804.a n = (A163617 n : ℚ)

end A163617

/-! ## A163617.P2630954943428175391

`(3*n+A003188(2*n))/2`
-/

namespace A163617.P2630954943428175391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) + A003188 (2 * n) : ℚ) / 2

end

end A163617.P2630954943428175391

namespace A163617

/-- `(3*n+A003188(2*n))/2` -/
def P2630954943428175391.Spec : Prop :=
  ∀ n, P2630954943428175391.a n = (A163617 n : ℚ)

end A163617

/-! ## A163617.P17500756791394089975

`A007494(n)+A003188(n)`
-/

namespace A163617.P17500756791394089975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n + A003188 n

end

end A163617.P17500756791394089975

namespace A163617

/-- `A007494(n)+A003188(n)` -/
def P17500756791394089975.Spec : Prop :=
  ∀ n, P17500756791394089975.a n = A163617 n

end A163617

/-! ## A163617.P7651444651191620240

`A213370(n)+A048724(n)`
-/

namespace A163617.P7651444651191620240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 n + A048724 n

end

end A163617.P7651444651191620240

namespace A163617

/-- `A213370(n)+A048724(n)` -/
def P7651444651191620240.Spec : Prop :=
  ∀ n, P7651444651191620240.a n = A163617 n

end A163617

/-! ## A163617.P5852303237607268000

`xor(A005843(n), A229763(n))`
-/

namespace A163617.P5852303237607268000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 n) (A229763 n)

end

end A163617.P5852303237607268000

namespace A163617

/-- `xor(A005843(n), A229763(n))` -/
def P5852303237607268000.Spec : Prop :=
  ∀ n, P5852303237607268000.a n = A163617 n

end A163617

/-! ## A163617.P3522634622401603394

`xor(A008586(n), A269161(n))`
-/

namespace A163617.P3522634622401603394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008586 n) (A269161 n)

end

end A163617.P3522634622401603394

namespace A163617

/-- `xor(A008586(n), A269161(n))` -/
def P3522634622401603394.Spec : Prop :=
  ∀ n, P3522634622401603394.a n = A163617 n

end A163617

/-! ## A163617.P9337757390088888620

`xor(A004526(n), A387312(n))`
-/

namespace A163617.P9337757390088888620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A387312 n)

end

end A163617.P9337757390088888620

namespace A163617

/-- `xor(A004526(n), A387312(n))` -/
def P9337757390088888620.Spec : Prop :=
  ∀ n, P9337757390088888620.a n = A163617 n

end A163617

/-! ## A163617.P16662684630603745560

`A286548(n)+A047218(n+1)`
-/

namespace A163617.P16662684630603745560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n + A047218 (n + 1)

end

end A163617.P16662684630603745560

namespace A163617

/-- `A286548(n)+A047218(n+1)` -/
def P16662684630603745560.Spec : Prop :=
  ∀ n, P16662684630603745560.a n = A163617 n

end A163617

/-!
# A163618: a(2*n) = 2 * a(n). a(2*n - 1) = 2 * a(n) - 2 - (-1)^n, for all n in Z.

The programs for A163618, the canonical program `A163618.P11430297045745956195` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163618 has offset 0).

The definition of A163618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163618.P11430297045745956195

`and(2*n-1, n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163618

/-- `and(2*n-1, n)` -/
def P11430297045745956195.Spec : Prop :=
  ∀ n, P11430297045745956195.a n = A163618 n

theorem P11430297045745956195.correct : P11430297045745956195.Spec := by
  intro n
  simp only [A163618]

end A163618

/-! ## A163618.P6988841280832205987

`xor(n, and(n, -2*n))`
-/

namespace A163618.P6988841280832205987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land (n : ℤ) (-(2 * n : ℤ)))

end

end A163618.P6988841280832205987

namespace A163618

/-- `xor(n, and(n, -2*n))` -/
def P6988841280832205987.Spec : Prop :=
  ∀ n, P6988841280832205987.a n = A163618 n

end A163618

/-! ## A163618.P12466880618179259309

`n-and(n, 1-Δ[n²])`
-/

namespace A163618.P12466880618179259309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A163618.P12466880618179259309

namespace A163618

/-- `n-and(n, 1-Δ[n²])` -/
def P12466880618179259309.Spec : Prop :=
  ∀ n, P12466880618179259309.a n = A163618 n

end A163618

/-! ## A163618.P1895876256800960672

`or(n, -2*n)+2*n`
-/

namespace A163618.P1895876256800960672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(2 * n : ℤ)) + (2 * n : ℤ)

end

end A163618.P1895876256800960672

namespace A163618

/-- `or(n, -2*n)+2*n` -/
def P1895876256800960672.Spec : Prop :=
  ∀ n, P1895876256800960672.a n = A163618 n

end A163618

/-! ## A163618.P9311909459948078921

`-or(-n, and(n, -2*n))`
-/

namespace A163618.P9311909459948078921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (-(n : ℤ)) (Int.land (n : ℤ) (-(2 * n : ℤ)))

end

end A163618.P9311909459948078921

namespace A163618

/-- `-or(-n, and(n, -2*n))` -/
def P9311909459948078921.Spec : Prop :=
  ∀ n, P9311909459948078921.a n = A163618 n

end A163618

/-! ## A163618.P13547833432657734760

`and(n-1+n, n-1)+1`
-/

namespace A163618.P13547833432657734760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1 + (n : ℤ)) ((n : ℤ) - 1) + 1

end

end A163618.P13547833432657734760

namespace A163618

/-- `and(n-1+n, n-1)+1` -/
def P13547833432657734760.Spec : Prop :=
  ∀ n, P13547833432657734760.a n = A163618 n

end A163618

/-! ## A163618.P107771026353003124

`2*n-abs(or(n, -2*n))`
-/

namespace A163618.P107771026353003124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - |Int.lor (n : ℤ) (-(2 * n : ℤ))|

end

end A163618.P107771026353003124

namespace A163618

/-- `2*n-abs(or(n, -2*n))` -/
def P107771026353003124.Spec : Prop :=
  ∀ n, P107771026353003124.a n = A163618 n

end A163618

/-! ## A163618.P14281391930848967018

`-or(n-2*n, -2*n)`
-/

namespace A163618.P14281391930848967018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor ((n : ℤ) - (2 * n : ℤ)) (-(2 * n : ℤ))

end

end A163618.P14281391930848967018

namespace A163618

/-- `-or(n-2*n, -2*n)` -/
def P14281391930848967018.Spec : Prop :=
  ∀ n, P14281391930848967018.a n = A163618 n

end A163618

/-! ## A163618.P8160751639574439519

`xor(-2*n, or(n, -2*n))`
-/

namespace A163618.P8160751639574439519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * n : ℤ)) (Int.lor (n : ℤ) (-(2 * n : ℤ)))

end

end A163618.P8160751639574439519

namespace A163618

/-- `xor(-2*n, or(n, -2*n))` -/
def P8160751639574439519.Spec : Prop :=
  ∀ n, P8160751639574439519.a n = A163618 n

end A163618

/-! ## A163618.P8303309019182626833

`and(n, A004273(n))%(n+1)`
-/

namespace A163618.P8303309019182626833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (A004273 n)) (n + 1 : ℤ)

end

end A163618.P8303309019182626833

namespace A163618

/-- `and(n, A004273(n))%(n+1)` -/
def P8303309019182626833.Spec : Prop :=
  ∀ n, P8303309019182626833.a n = A163618 n

end A163618

/-! ## A163618.P13025240329623766438

`and(n, round(sqrt(A002939(n))))%(n+1)`
-/

namespace A163618.P13025240329623766438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A002939 n : ℝ)))) (n + 1 : ℤ)

end

end A163618.P13025240329623766438

namespace A163618

/-- `and(n, round(sqrt(A002939(n))))%(n+1)` -/
def P13025240329623766438.Spec : Prop :=
  ∀ n, P13025240329623766438.a n = A163618 n

end A163618

/-! ## A163618.P12362721198916735716

`and(n, comp[2*(n+1)])*A057427(n)`
-/

namespace A163618.P12362721198916735716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℤ) * A057427 n

end

end A163618.P12362721198916735716

namespace A163618

/-- `and(n, comp[2*(n+1)])*A057427(n)` -/
def P12362721198916735716.Spec : Prop :=
  ∀ n, P12362721198916735716.a n = A163618 n

end A163618

/-! ## A163618.P15144547033132139

`A080099(2*n²)`
-/

namespace A163618.P15144547033132139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (2 * n ^ 2)

end

end A163618.P15144547033132139

namespace A163618

/-- `A080099(2*n²)` -/
def P15144547033132139.Spec : Prop :=
  ∀ n, P15144547033132139.a n = A163618 n

end A163618

/-!
# A163619: Let q(p) be the smallest prime greater than the prime p. A positive integer n is included in this sequence if n+1 is divisible by q(p) for each prime p dividing n.

The programs for A163619, there is no canonical definition to state claims against.
-/

/-! ## A163619.P13747476596954663989

`eq[n+1, A163620(A233583(n+1))]`
-/

namespace A163619.P13747476596954663989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163620 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163619.P13747476596954663989

/-! ## A163619.P16974766989584776616

`record[A250120(n)+A036867(A352844(n+3)+1)]`
-/

namespace A163619.P16974766989584776616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A036867 (A352844 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163619.P16974766989584776616

/-!
# A163621: Square array read by antidiagonals: Write n and m in binary with n on the left. Concatenate. a(n,m) is the decimal equivalent of the result.

The programs for A163621, there is no canonical definition to state claims against.
-/

/-! ## A163621.P12724319768645568408

`A085207(eq[0, A103451(n)])`
-/

namespace A163621.P12724319768645568408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163621.P12724319768645568408

/-! ## A163621.P16822270435371622957

`A085207(eq[0, A103452(n)])`
-/

namespace A163621.P16822270435371622957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163621.P16822270435371622957

/-! ## A163621.P17285209793272956257

`A085207(eq[0, A103516(n)])`
-/

namespace A163621.P17285209793272956257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163621.P17285209793272956257

/-! ## A163621.P16927922450536795411

`A085207(eq[0, A145677(n)])`
-/

namespace A163621.P16927922450536795411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163621.P16927922450536795411

/-! ## A163621.P3402809639606516274

`A085207(lt[1, A131238(n)])`
-/

namespace A163621.P3402809639606516274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163621.P3402809639606516274

/-! ## A163621.P4716093089824400604

`A085207(lt[1, A210764(n)])`
-/

namespace A163621.P4716093089824400604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163621.P4716093089824400604

/-! ## A163621.P704780466903749580

`A085207(A014132(comp[∑[n]]))`
-/

namespace A163621.P704780466903749580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (A014132 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A163621.P704780466903749580

/-! ## A163621.P526675317118334087

`A085207(eq[0, A128541(n)]+1)`
-/

namespace A163621.P526675317118334087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163621.P526675317118334087

/-! ## A163621.P14381798785141933821

`A175930(A204985(n+1))`
-/

namespace A163621.P14381798785141933821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175930 (A204985 (n + 1)).toNat

end

end A163621.P14381798785141933821

/-! ## A163621.P10902501802284145434

`A175930(2*A130328(n))`
-/

namespace A163621.P10902501802284145434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175930 (2 * A130328 n).toNat

end

end A163621.P10902501802284145434

/-!
# A163622: Composite numbers such that the sum of its smallest digit and the largest digit is a prime.

The programs for A163622, there is no canonical definition to state claims against.
-/

/-! ## A163622.P959149503605340338

`A141642(n+1)+A121373(A016838(n))`
-/

namespace A163622.P959149503605340338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1) + A121373 (A016838 n).toNat

end

end A163622.P959149503605340338

/-!
# A163623: Primes of the form 120*k + 1.

The programs for A163623, the canonical program `A163623.P14271077986675833918` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163623 has offset 1).

The definition of A163623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163623.P5055039960404636177

`∩[A088955(n+1), A139502(n+1)]`
-/

namespace A163623.P5055039960404636177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P5055039960404636177

namespace A163623

/-- `∩[A088955(n+1), A139502(n+1)]` -/
def P5055039960404636177.Spec : Prop :=
  ∀ n, (P5055039960404636177.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P7185757950016539226

`∩[A088955(n+1), A142183(n+1)]`
-/

namespace A163623.P7185757950016539226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P7185757950016539226

namespace A163623

/-- `∩[A088955(n+1), A142183(n+1)]` -/
def P7185757950016539226.Spec : Prop :=
  ∀ n, (P7185757950016539226.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P14271077986675833918

`∩[A139502(n+1), A142183(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163623

/-- `∩[A139502(n+1), A142183(n+1)]` -/
def P14271077986675833918.Spec : Prop :=
  ∀ n, (P14271077986675833918.a n : ℤ) = A163623 (n + 1)

theorem P14271077986675833918.correct : P14271077986675833918.Spec := by
  intro n
  simp only [A163623, Nat.add_sub_cancel]

end A163623

/-! ## A163623.P5152825690129265871

`∩[A088955(n+1), A107145(n+1)]`
-/

namespace A163623.P5152825690129265871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P5152825690129265871

namespace A163623

/-- `∩[A088955(n+1), A107145(n+1)]` -/
def P5152825690129265871.Spec : Prop :=
  ∀ n, (P5152825690129265871.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P16467895998231254284

`∩[A033220(n+1), A088955(n+1)]`
-/

namespace A163623.P16467895998231254284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P16467895998231254284

namespace A163623

/-- `∩[A033220(n+1), A088955(n+1)]` -/
def P16467895998231254284.Spec : Prop :=
  ∀ n, (P16467895998231254284.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P7334931689370723193

`∩[A033220(n+1), A142183(n+1)]`
-/

namespace A163623.P7334931689370723193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P7334931689370723193

namespace A163623

/-- `∩[A033220(n+1), A142183(n+1)]` -/
def P7334931689370723193.Spec : Prop :=
  ∀ n, (P7334931689370723193.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P12250838165993310131

`∩[A088955(n+1), A107008(n+1)]`
-/

namespace A163623.P12250838165993310131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P12250838165993310131

namespace A163623

/-- `∩[A088955(n+1), A107008(n+1)]` -/
def P12250838165993310131.Spec : Prop :=
  ∀ n, (P12250838165993310131.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P11096692714234926723

`∩[A107008(n+1), A142183(n+1)]`
-/

namespace A163623.P11096692714234926723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P11096692714234926723

namespace A163623

/-- `∩[A107008(n+1), A142183(n+1)]` -/
def P11096692714234926723.Spec : Prop :=
  ∀ n, (P11096692714234926723.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P6381333386833311806

`∩[A107152(n+1), A142183(n+1)]`
-/

namespace A163623.P6381333386833311806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P6381333386833311806

namespace A163623

/-- `∩[A107152(n+1), A142183(n+1)]` -/
def P6381333386833311806.Spec : Prop :=
  ∀ n, (P6381333386833311806.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P5208278849632898107

`∩[A033220(n+1), A141881(n+1)]`
-/

namespace A163623.P5208278849632898107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P5208278849632898107

namespace A163623

/-- `∩[A033220(n+1), A141881(n+1)]` -/
def P5208278849632898107.Spec : Prop :=
  ∀ n, (P5208278849632898107.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P1653642440679915432

`∩[A107008(n+1), A141881(n+1)]`
-/

namespace A163623.P1653642440679915432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P1653642440679915432

namespace A163623

/-- `∩[A107008(n+1), A141881(n+1)]` -/
def P1653642440679915432.Spec : Prop :=
  ∀ n, (P1653642440679915432.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P7939832744674316112

`∩[A139502(n+1), A141881(n+1)]`
-/

namespace A163623.P7939832744674316112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P7939832744674316112

namespace A163623

/-- `∩[A139502(n+1), A141881(n+1)]` -/
def P7939832744674316112.Spec : Prop :=
  ∀ n, (P7939832744674316112.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P7418711344500762639

`∩[A107008(n+1), A132230(n+1)]`
-/

namespace A163623.P7418711344500762639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P7418711344500762639

namespace A163623

/-- `∩[A107008(n+1), A132230(n+1)]` -/
def P7418711344500762639.Spec : Prop :=
  ∀ n, (P7418711344500762639.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P6312283758649629915

`∩[A107145(n+1), A132230(n+1)]`
-/

namespace A163623.P6312283758649629915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P6312283758649629915

namespace A163623

/-- `∩[A107145(n+1), A132230(n+1)]` -/
def P6312283758649629915.Spec : Prop :=
  ∀ n, (P6312283758649629915.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P3244976770832573914

`∩[A132230(n+1), A139502(n+1)]`
-/

namespace A163623.P3244976770832573914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P3244976770832573914

namespace A163623

/-- `∩[A132230(n+1), A139502(n+1)]` -/
def P3244976770832573914.Spec : Prop :=
  ∀ n, (P3244976770832573914.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P11973963501380775932

`∩[A132230(n+1), A142183(n+1)]`
-/

namespace A163623.P11973963501380775932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P11973963501380775932

namespace A163623

/-- `∩[A132230(n+1), A142183(n+1)]` -/
def P11973963501380775932.Spec : Prop :=
  ∀ n, (P11973963501380775932.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P12102665613437548383

`p?[10*12*n+1]`
-/

namespace A163623.P12102665613437548383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (12 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A163623.P12102665613437548383

namespace A163623

/-- `p?[10*12*n+1]` -/
def P12102665613437548383.Spec : Prop :=
  ∀ n, (P12102665613437548383.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P2222430242171331753

`∩[A088955(n+1), A155708(n+1)]`
-/

namespace A163623.P2222430242171331753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P2222430242171331753

namespace A163623

/-- `∩[A088955(n+1), A155708(n+1)]` -/
def P2222430242171331753.Spec : Prop :=
  ∀ n, (P2222430242171331753.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P5238285134614993382

`∩[A132230(n+1), A155708(n+1)]`
-/

namespace A163623.P5238285134614993382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P5238285134614993382

namespace A163623

/-- `∩[A132230(n+1), A155708(n+1)]` -/
def P5238285134614993382.Spec : Prop :=
  ∀ n, (P5238285134614993382.a n : ℤ) = A163623 (n + 1)

end A163623

/-! ## A163623.P15600806378124858456

`∩[A141881(n+1), A155708(n+1)]`
-/

namespace A163623.P15600806378124858456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163623.P15600806378124858456

namespace A163623

/-- `∩[A141881(n+1), A155708(n+1)]` -/
def P15600806378124858456.Spec : Prop :=
  ∀ n, (P15600806378124858456.a n : ℤ) = A163623 (n + 1)

end A163623

/-!
# A163624: Numbers k such that 120*k+1 is prime.

The programs for A163624, the canonical program `A163624.P2636095778930404415` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163624 has offset 1).

The definition of A163624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163623, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163624.P2636095778930404415

`(A163623(n+1)-1)/120`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163624

/-- `(A163623(n+1)-1)/120` -/
def P2636095778930404415.Spec : Prop :=
  ∀ n, P2636095778930404415.a n = (A163624 (n + 1) : ℚ)

end A163624

/-! ## A163624.P18284130911602870745

`eq[1, A237053(A249674(2*n))]`
-/

namespace A163624.P18284130911602870745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A249674 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P18284130911602870745

namespace A163624

/-- `eq[1, A237053(A249674(2*n))]` -/
def P18284130911602870745.Spec : Prop :=
  ∀ n, (P18284130911602870745.a n : ℤ) = A163624 (n + 1)

end A163624

/-! ## A163624.P13311902201330853758

`eq[1, A091088(12*n)]`
-/

namespace A163624.P13311902201330853758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091088 (12 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P13311902201330853758

namespace A163624

/-- `eq[1, A091088(12*n)]` -/
def P13311902201330853758.Spec : Prop :=
  ∀ n, (P13311902201330853758.a n : ℤ) = A163624 (n + 1)

end A163624

/-! ## A163624.P18444697027083579964

`eq[1, A001222(10*12*n+1)]`
-/

namespace A163624.P18444697027083579964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (10 * (12 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P18444697027083579964

namespace A163624

/-- `eq[1, A001222(10*12*n+1)]` -/
def P18444697027083579964.Spec : Prop :=
  ∀ n, (P18444697027083579964.a n : ℤ) = A163624 (n + 1)

end A163624

/-! ## A163624.P16539279777122762249

`eq[1, A010051(10*12*n+1)]`
-/

namespace A163624.P16539279777122762249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (10 * (12 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P16539279777122762249

namespace A163624

/-- `eq[1, A010051(10*12*n+1)]` -/
def P16539279777122762249.Spec : Prop :=
  ∀ n, (P16539279777122762249.a n : ℤ) = A163624 (n + 1)

end A163624

/-! ## A163624.P11865279132671145692

`eq[2, A000005(10*12*n+1)]`
-/

namespace A163624.P11865279132671145692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (12 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P11865279132671145692

namespace A163624

/-- `eq[2, A000005(10*12*n+1)]` -/
def P11865279132671145692.Spec : Prop :=
  ∀ n, (P11865279132671145692.a n : ℤ) = A163624 (n + 1)

end A163624

/-! ## A163624.P16597094614991407034

`eq[2, A071364(10*12*n+1)]`
-/

namespace A163624.P16597094614991407034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (10 * (12 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P16597094614991407034

namespace A163624

/-- `eq[2, A071364(10*12*n+1)]` -/
def P16597094614991407034.Spec : Prop :=
  ∀ n, (P16597094614991407034.a n : ℤ) = A163624 (n + 1)

end A163624

/-! ## A163624.P1185640765375040742

`eq[1, A068695(2*A008458(n))]`
-/

namespace A163624.P1185640765375040742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068695 (2 * A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163624.P1185640765375040742

namespace A163624

/-- `eq[1, A068695(2*A008458(n))]` -/
def P1185640765375040742.Spec : Prop :=
  ∀ n, (P1185640765375040742.a n : ℤ) = A163624 (n + 1)

end A163624

/-!
# A163625: Numbers k such that 120*k + 1 is a term in A163573.

The programs for A163625, there is no canonical definition to state claims against.
-/

/-! ## A163625.P5334756273998349238

`(A163573(n+1)-1)/120`
-/

namespace A163625.P5334756273998349238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163573 (n + 1) - 1 : ℚ) / 120

end

end A163625.P5334756273998349238

/-! ## A163625.P1503126256444156259

`floor(A278585(n+1)/60)/2`
-/

namespace A163625.P1503126256444156259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A278585 (n + 1) : ℚ) / 60⌋ : ℚ) / 2

end

end A163625.P1503126256444156259

/-! ## A163625.P4281701505988585549

`round(A278585(n+1)/60)/A020639(2*(n+1))`
-/

namespace A163625.P4281701505988585549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A278585 (n + 1) : ℚ) / 60) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A163625.P4281701505988585549

/-! ## A163625.P1172644192739458335

`A001222(A060254(n+1))/2*A278585(n+1)/60`
-/

namespace A163625.P1172644192739458335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A060254 (n + 1)).toNat : ℚ) / 2 * ((A278585 (n + 1) : ℚ) / 60)

end

end A163625.P1172644192739458335

/-! ## A163625.P9805948562682323303

`A278585(n+1)/60*A269529(n)²/2`
-/

namespace A163625.P9805948562682323303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278585 (n + 1) : ℚ) / 60 * ((A269529 n ^ 2 : ℚ) / 2)

end

end A163625.P9805948562682323303

/-! ## A163625.P1178173397472496172

`A000027(A278585(n+1)/60)/2`
-/

namespace A163625.P1178173397472496172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A278585 (n + 1) : ℚ) / 60)).toNat : ℚ) / 2

end

end A163625.P1178173397472496172

/-! ## A163625.P14805398255806710570

`A273943(A278585(n+1)/60)`
-/

namespace A163625.P14805398255806710570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway ((A278585 (n + 1) : ℚ) / 60)).toNat

end

end A163625.P14805398255806710570

/-! ## A163625.P2188121804019106978

`A014682(A278585(n+1)/60)`
-/

namespace A163625.P2188121804019106978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.roundAway ((A278585 (n + 1) : ℚ) / 60)).toNat

end

end A163625.P2188121804019106978

/-! ## A163625.P6677084778792313713

`A319702(A278585(n+1)/60-3)`
-/

namespace A163625.P6677084778792313713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (SequenceMachineLib.roundAway ((A278585 (n + 1) : ℚ) / 60 - 3)).toNat

end

end A163625.P6677084778792313713

/-! ## A163625.P2571435547330335135

`A328399(A278585(n+1)/60)-1`
-/

namespace A163625.P2571435547330335135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (SequenceMachineLib.roundAway ((A278585 (n + 1) : ℚ) / 60)).toNat - 1

end

end A163625.P2571435547330335135

/-!
# A163626: Triangle read by rows: The n-th derivative of the logistic function written in terms of y, where y = 1/(1 + exp(-x)).

The programs for A163626, there is no canonical definition to state claims against.
-/

/-! ## A163626.P9689941947018323380

`A080417(n+1)*A233543(n)`
-/

namespace A163626.P9689941947018323380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080417 (n + 1) * A233543 n

end

end A163626.P9689941947018323380

/-! ## A163626.P12795279301935285809

`A028246(n+1)*A033999(A002262(n))`
-/

namespace A163626.P12795279301935285809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A033999 (A002262 n).toNat

end

end A163626.P12795279301935285809

/-! ## A163626.P7096035610129980877

`A008277(n+1)*A133942(A002262(n))`
-/

namespace A163626.P7096035610129980877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) * A133942 (A002262 n).toNat

end

end A163626.P7096035610129980877

/-! ## A163626.P15545844455976689695

`A028246(n+1)*A033999(A294317(n))`
-/

namespace A163626.P15545844455976689695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A033999 (A294317 n).toNat

end

end A163626.P15545844455976689695

/-! ## A163626.P1952840287175594981

`A028246(n+1)*A062157(A002260(n+1))`
-/

namespace A163626.P1952840287175594981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A062157 (A002260 (n + 1)).toNat

end

end A163626.P1952840287175594981

/-! ## A163626.P16858709890629985095

`A008276(n+1)/A094638(n+1)*A028246(n+1)`
-/

namespace A163626.P16858709890629985095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008276 (n + 1) : ℚ) / (A094638 (n + 1) : ℚ) * (A028246 (n + 1) : ℚ)

end

end A163626.P16858709890629985095

/-! ## A163626.P14198003836024863671

`A033999(A002262(n))*A142071(A014132(n+1))`
-/

namespace A163626.P14198003836024863671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A142071 (A014132 (n + 1)).toNat

end

end A163626.P14198003836024863671

/-! ## A163626.P6841156546234569111

`A028246(n+1)/A075263(n)*A130850(n)`
-/

namespace A163626.P6841156546234569111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028246 (n + 1) : ℚ) / (A075263 n : ℚ) * (A130850 n : ℚ)

end

end A163626.P6841156546234569111

/-! ## A163626.P17677800113795140436

`A097807(A061579(n))*A130850(A061579(n))`
-/

namespace A163626.P17677800113795140436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (A061579 n).toNat * A130850 (A061579 n).toNat

end

end A163626.P17677800113795140436

/-! ## A163626.P3849335483475246631

`A028246(n+1)*A165591(A059268(n))`
-/

namespace A163626.P3849335483475246631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A165591 (A059268 n).toNat

end

end A163626.P3849335483475246631

/-!
# A163627: Numbers k such that 42k + 5 is prime.

The programs for A163627, the canonical program `A163627.P7916223262864117195` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163627 has offset 1).

The definition of A163627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163627.P7916223262864117195

`floor(p?[a(n-1)+42]/42)` with `a(0)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163627

/-- `floor(p?[a(n-1)+42]/42)` -/
def P7916223262864117195.Spec : Prop :=
  ∀ n, P7916223262864117195.a n = A163627 (n + 1)

theorem P7916223262864117195.correct : P7916223262864117195.Spec := by
  intro n
  simp only [A163627, Nat.add_sub_cancel]

end A163627

/-! ## A163627.P6190149012751917966

`lt[∏{e}[42*n+5, #+1]+1, 4]`
-/

namespace A163627.P6190149012751917966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A163627.P6190149012751917966

namespace A163627

/-- `lt[∏{e}[42*n+5, #+1]+1, 4]` -/
def P6190149012751917966.Spec : Prop :=
  ∀ n, (P6190149012751917966.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P18357763137421468603

`eq[1, A010051(42*n+5)]`
-/

namespace A163627.P18357763137421468603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (42 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163627.P18357763137421468603

namespace A163627

/-- `eq[1, A010051(42*n+5)]` -/
def P18357763137421468603.Spec : Prop :=
  ∀ n, (P18357763137421468603.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P17760668742771606282

`eq[2, A000005(42*n+5)]`
-/

namespace A163627.P17760668742771606282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (42 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163627.P17760668742771606282

namespace A163627

/-- `eq[2, A000005(42*n+5)]` -/
def P17760668742771606282.Spec : Prop :=
  ∀ n, (P17760668742771606282.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P16154698001455728139

`lt[A001222(42*n+5), 2]`
-/

namespace A163627.P16154698001455728139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (42 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163627.P16154698001455728139

namespace A163627

/-- `lt[A001222(42*n+5), 2]` -/
def P16154698001455728139.Spec : Prop :=
  ∀ n, (P16154698001455728139.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P11400741779034156071

`eq[1, A075743(2*7*n+1)]`
-/

namespace A163627.P11400741779034156071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (7 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163627.P11400741779034156071

namespace A163627

/-- `eq[1, A075743(2*7*n+1)]` -/
def P11400741779034156071.Spec : Prop :=
  ∀ n, (P11400741779034156071.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P2693917806459887695

`lt[(42*n+5)/A020639(42*n+5), 4]`
-/

namespace A163627.P2693917806459887695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (42 * n + 5 : ℚ) / (A020639 (42 * n + 5) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A163627.P2693917806459887695

namespace A163627

/-- `lt[(42*n+5)/A020639(42*n+5), 4]` -/
def P2693917806459887695.Spec : Prop :=
  ∀ n, (P2693917806459887695.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P13196034115468569065

`eq[1, A078770(3*7*n+2)]`
-/

namespace A163627.P13196034115468569065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078770 (3 * (7 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163627.P13196034115468569065

namespace A163627

/-- `eq[1, A078770(3*7*n+2)]` -/
def P13196034115468569065.Spec : Prop :=
  ∀ n, (P13196034115468569065.a n : ℤ) = A163627 (n + 1)

end A163627

/-! ## A163627.P17191382640102664795

`lt[A076290(42*n+5), 7]`
-/

namespace A163627.P17191382640102664795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076290 (42 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163627.P17191382640102664795

namespace A163627

/-- `lt[A076290(42*n+5), 7]` -/
def P17191382640102664795.Spec : Prop :=
  ∀ n, (P17191382640102664795.a n : ℤ) = A163627 (n + 1)

end A163627

/-!
# A163628: Integers such that the two adjacent integers are a prime and three times a prime.

The programs for A163628, there is no canonical definition to state claims against.
-/

/-! ## A163628.P11531473701119225015

`eq[4, A077462(A000212(n))]`
-/

namespace A163628.P11531473701119225015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A000212 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163628.P11531473701119225015

/-! ## A163628.P7568132115704767183

`eq[4, A077462(A069905(2*n))]`
-/

namespace A163628.P7568132115704767183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A069905 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163628.P7568132115704767183

/-! ## A163628.P11487952461614871410

`eq[2, A001222(A001399(2*n+1))]+2`
-/

namespace A163628.P11487952461614871410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001399 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A163628.P11487952461614871410

/-! ## A163628.P14078887731233374312

`eq[2, A001222(A000212(A233583(n+1)))]`
-/

namespace A163628.P14078887731233374312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000212 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163628.P14078887731233374312

/-! ## A163628.P4122395146971377446

`eq[C(3, n%3), A001222(A082562(n))]`
-/

namespace A163628.P4122395146971377446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n % 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A082562 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163628.P4122395146971377446

/-!
# A163629: Numbers such that the two adjacent integers are a prime and 5 times a prime.

The programs for A163629, there is no canonical definition to state claims against.
-/

/-! ## A163629.P964684451813835072

`eq[A174857(n+2), A284289(A118015(n))]`
-/

namespace A163629.P964684451813835072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174857 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (A118015 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163629.P964684451813835072

/-!
# A163631: Partial sums of the odd nonprimes, A014076.

The programs for A163631, the canonical program `A163631.P18137767789929216853` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163631 has offset 1).

The definition of A163631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163631.P18137767789929216853

`∑[A014076(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163631

/-- `∑[A014076(n+1)]` -/
def P18137767789929216853.Spec : Prop :=
  ∀ n, P18137767789929216853.a n = A163631 (n + 1)

theorem P18137767789929216853.correct : P18137767789929216853.Spec := by
  intro n
  simp only [A163631, Nat.add_sub_cancel]

end A163631

/-! ## A163631.P17864889873382709324

`∑[sqrt(A062532(n+1))]`
-/

namespace A163631.P17864889873382709324
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P17864889873382709324

namespace A163631

/-- `∑[sqrt(A062532(n+1))]` -/
def P17864889873382709324.Spec : Prop :=
  ∀ n, P17864889873382709324.a n = (A163631 (n + 1) : ℝ)

end A163631

/-! ## A163631.P1105393113386089534

`∑[record[A171435(n+7)]]`
-/

namespace A163631.P1105393113386089534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P1105393113386089534

namespace A163631

/-- `∑[record[A171435(n+7)]]` -/
def P1105393113386089534.Spec : Prop :=
  ∀ n, P1105393113386089534.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P3182891676144647699

`∑[eq[gcd(2, n), A292438(n)]]`
-/

namespace A163631.P3182891676144647699
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P3182891676144647699

namespace A163631

/-- `∑[eq[gcd(2, n), A292438(n)]]` -/
def P3182891676144647699.Spec : Prop :=
  ∀ n, (P3182891676144647699.a n : ℤ) = A163631 (n + 1)

end A163631

/-! ## A163631.P5749295153376820186

`A071904(n)+a(n-1)` with `a(0)=1`
-/

namespace A163631.P5749295153376820186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A071904 n + a (n - 1)

end

end A163631.P5749295153376820186

namespace A163631

/-- `A071904(n)+a(n-1)` -/
def P5749295153376820186.Spec : Prop :=
  ∀ n, P5749295153376820186.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P9019184019049540235

`∑[2*A047845(n+1)+1]`
-/

namespace A163631.P9019184019049540235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P9019184019049540235

namespace A163631

/-- `∑[2*A047845(n+1)+1]` -/
def P9019184019049540235.Spec : Prop :=
  ∀ n, P9019184019049540235.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P17486574317835382116

`∑[2*A104275(n+1)-1]`
-/

namespace A163631.P17486574317835382116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P17486574317835382116

namespace A163631

/-- `∑[2*A104275(n+1)-1]` -/
def P17486574317835382116.Spec : Prop :=
  ∀ n, P17486574317835382116.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P576123462151083952

`∑[2*comp[A005097(n+1)]+1]`
-/

namespace A163631.P576123462151083952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P576123462151083952

namespace A163631

/-- `∑[2*comp[A005097(n+1)]+1]` -/
def P576123462151083952.Spec : Prop :=
  ∀ n, (P576123462151083952.a n : ℤ) = A163631 (n + 1)

end A163631

/-! ## A163631.P6377857971597941435

`∑[A163506(n+1)/(2*n+1)]`
-/

namespace A163631.P6377857971597941435
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163506 (n + 1) : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P6377857971597941435

namespace A163631

/-- `∑[A163506(n+1)/(2*n+1)]` -/
def P6377857971597941435.Spec : Prop :=
  ∀ n, P6377857971597941435.a n = (A163631 (n + 1) : ℚ)

end A163631

/-! ## A163631.P13860840302149287510

`∑[or(1, 2*lt[A010051(2*n+1), 1]+1)]`
-/

namespace A163631.P13860840302149287510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P13860840302149287510

namespace A163631

/-- `∑[or(1, 2*lt[A010051(2*n+1), 1]+1)]` -/
def P13860840302149287510.Spec : Prop :=
  ∀ n, (P13860840302149287510.a n : ℤ) = A163631 (n + 1)

end A163631

/-! ## A163631.P9155480884755211269

`∑[sqrt(record[(2*n+1)^(2%A000005(2*n+1))])]`
-/

namespace A163631.P9155480884755211269
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (Int.tmod 2 (A000005 (2 * n + 1)) : ℤ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P9155480884755211269

namespace A163631

/-- `∑[sqrt(record[(2*n+1)^(2%A000005(2*n+1))])]` -/
def P9155480884755211269.Spec : Prop :=
  ∀ n, P9155480884755211269.a n = (A163631 (n + 1) : ℝ)

end A163631

/-! ## A163631.P5384502477700435711

`A262044(n+1)-A309355(n+1)`
-/

namespace A163631.P5384502477700435711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262044 (n + 1) - A309355 (n + 1)

end

end A163631.P5384502477700435711

namespace A163631

/-- `A262044(n+1)-A309355(n+1)` -/
def P5384502477700435711.Spec : Prop :=
  ∀ n, P5384502477700435711.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P12024158973135184125

`∑[A071904(n+1)]+1-A071904(n+1)`
-/

namespace A163631.P12024158973135184125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A071904 (n + 1))

end

end A163631.P12024158973135184125

namespace A163631

/-- `∑[A071904(n+1)]+1-A071904(n+1)` -/
def P12024158973135184125.Spec : Prop :=
  ∀ n, P12024158973135184125.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P10135472085233638458

`∑[A014092(n+3)-2]`
-/

namespace A163631.P10135472085233638458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P10135472085233638458

namespace A163631

/-- `∑[A014092(n+3)-2]` -/
def P10135472085233638458.Spec : Prop :=
  ∀ n, P10135472085233638458.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P7338405175076810576

`∑[A005408(comp[A005097(n+1)])]`
-/

namespace A163631.P7338405175076810576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P7338405175076810576

namespace A163631

/-- `∑[A005408(comp[A005097(n+1)])]` -/
def P7338405175076810576.Spec : Prop :=
  ∀ n, P7338405175076810576.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P14446025521190341405

`∑[∩[2*n+1, A018252(n+1)]]`
-/

namespace A163631.P14446025521190341405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P14446025521190341405

namespace A163631

/-- `∑[∩[2*n+1, A018252(n+1)]]` -/
def P14446025521190341405.Spec : Prop :=
  ∀ n, (P14446025521190341405.a n : ℤ) = A163631 (n + 1)

end A163631

/-! ## A163631.P1760302274457009928

`∑[A075065(2*n+1)]`
-/

namespace A163631.P1760302274457009928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P1760302274457009928

namespace A163631

/-- `∑[A075065(2*n+1)]` -/
def P1760302274457009928.Spec : Prop :=
  ∀ n, P1760302274457009928.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P2937403508430383367

`∑[A308833(2*n+1)]+n`
-/

namespace A163631.P2937403508430383367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A163631.P2937403508430383367

namespace A163631

/-- `∑[A308833(2*n+1)]+n` -/
def P2937403508430383367.Spec : Prop :=
  ∀ n, P2937403508430383367.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P5773286469076850317

`∑[A068780(2*(n+1))]-A068780(2*n+1)`
-/

namespace A163631.P5773286469076850317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A068780 (2 * n + 1)

end

end A163631.P5773286469076850317

namespace A163631

/-- `∑[A068780(2*(n+1))]-A068780(2*n+1)` -/
def P5773286469076850317.Spec : Prop :=
  ∀ n, P5773286469076850317.a n = A163631 (n + 1)

end A163631

/-! ## A163631.P9250982770338928304

`∑[∩[2*n+1, comp[p?[2*n+1]]]]`
-/

namespace A163631.P9250982770338928304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => (f5 j).Prime) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163631.P9250982770338928304

namespace A163631

/-- `∑[∩[2*n+1, comp[p?[2*n+1]]]]` -/
def P9250982770338928304.Spec : Prop :=
  ∀ n, (P9250982770338928304.a n : ℤ) = A163631 (n + 1)

end A163631

/-!
# A163632: Triple and reverse digits.

The programs for A163632, there is no canonical definition to state claims against.
-/

/-! ## A163632.P1183768180783855860

`A042938(comp[2*(char[1]+n)])%A000956(n+1)`
-/

namespace A163632.P1183768180783855860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042938 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A000956 (n + 1))

end

end A163632.P1183768180783855860

/-! ## A163632.P14883215611783772818

`A042938(lt[A117778(n+1), A018614(n+1)])`
-/

namespace A163632.P14883215611783772818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163632.P14883215611783772818

/-! ## A163632.P1855949682872933046

`A042938(A042943(n+1)^A010194(n))`
-/

namespace A163632.P1855949682872933046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042938 (SequenceMachineLib.roundAway ((A042943 (n + 1) : ℚ) ^ (A010194 n : ℤ))).toNat

end

end A163632.P1855949682872933046

/-! ## A163632.P2133732878955478631

`A042938(A042943(n+1))%A262456(n+1)`
-/

namespace A163632.P2133732878955478631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042938 (A042943 (n + 1)).toNat) (A262456 (n + 1))

end

end A163632.P2133732878955478631

/-!
# A163633: 4n^2-2n+p: p=5,n=0,1,2 connects to next p=17,n=0,1,2 connects to next p=29,n=0,1,2 connects to next 4n^2-2n+41 where n=0,1,-1,2,-2,3,-3,... This is part of Prime Helix and for 41 an extension of Euler's x^2-x+41 but this sequence has 46 primes. The first are twin primes with 12 separation.

The programs for A163633, there is no canonical definition to state claims against.
-/

/-! ## A163633.P18063578684016687165

`A300271(A329979(n+1))`
-/

namespace A163633.P18063578684016687165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300271 (A329979 (n + 1)).toNat

end

end A163633.P18063578684016687165

/-! ## A163633.P3113446162108522047

`p?[∑[A040711(A123231(n+1))]]`
-/

namespace A163633.P3113446162108522047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040711 (A123231 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163633.P3113446162108522047

/-! ## A163633.P11790796386481525943

`A000040(lt[A250120(2*(n+1)), A194271(3*n)])`
-/

namespace A163633.P11790796386481525943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194271 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163633.P11790796386481525943

/-! ## A163633.P4557801642907264692

`p?[A094802(A313950(n))]`
-/

namespace A163633.P4557801642907264692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A313950 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163633.P4557801642907264692

/-! ## A163633.P3249644434055811510

`A094802(A098022(n+1))`
-/

namespace A163633.P3249644434055811510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094802 (A098022 (n + 1)).toNat

end

end A163633.P3249644434055811510

/-!
# A163634: a(n) = (p*(p+4)+1)/2 where (p,p+4) are the n-th cousin prime pair.

The programs for A163634, there is no canonical definition to state claims against.
-/

/-! ## A163634.P185164104892171277

`(A143206(n+1)+1)/2`
-/

namespace A163634.P185164104892171277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143206 (n + 1) + 1 : ℚ) / 2

end

end A163634.P185164104892171277

/-! ## A163634.P572288405368598658

`ceil(A143206(n+1)/2)`
-/

namespace A163634.P572288405368598658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A143206 (n + 1) : ℚ) / 2⌉

end

end A163634.P572288405368598658

/-! ## A163634.P6130379749331457721

`(A087679(n+1)²-3)/2`
-/

namespace A163634.P6130379749331457721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087679 (n + 1) ^ 2 - 3 : ℚ) / 2

end

end A163634.P6130379749331457721

/-! ## A163634.P11109171830251036925

`A015913(n+1)+2*A088762(n+1)²`
-/

namespace A163634.P11109171830251036925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) + 2 * A088762 (n + 1) ^ 2

end

end A163634.P11109171830251036925

/-! ## A163634.P9101482096842639564

`A047847(n+1)+A087679(n+1)*A088762(n+1)`
-/

namespace A163634.P9101482096842639564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047847 (n + 1) + A087679 (n + 1) * A088762 (n + 1)

end

end A163634.P9101482096842639564

/-! ## A163634.P6103050381392797109

`A132209(A088762(n+1))`
-/

namespace A163634.P6103050381392797109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 (A088762 (n + 1)).toNat

end

end A163634.P6103050381392797109

/-! ## A163634.P10613548734971662005

`A132209(A047847(n+1)+1)`
-/

namespace A163634.P10613548734971662005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 (A047847 (n + 1) + 1).toNat

end

end A163634.P10613548734971662005

/-! ## A163634.P16519265771233653326

`A116940(A015913(n+1))`
-/

namespace A163634.P16519265771233653326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 (A015913 (n + 1)).toNat

end

end A163634.P16519265771233653326

/-! ## A163634.P6311315287228910445

`A047838(A087679(n+1))`
-/

namespace A163634.P6311315287228910445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A087679 (n + 1)).toNat

end

end A163634.P6311315287228910445

/-! ## A163634.P27591580851630494

`A116940(A172238(n+2))`
-/

namespace A163634.P27591580851630494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116940 (A172238 (n + 2)).toNat

end

end A163634.P27591580851630494

/-! ## A163634.P13745571179812670178

`A047838(A046132(n+1)-2)`
-/

namespace A163634.P13745571179812670178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A046132 (n + 1) - 2).toNat

end

end A163634.P13745571179812670178

/-! ## A163634.P4385328276198678689

`A000982(A015913(n+1)+2)-2`
-/

namespace A163634.P4385328276198678689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A015913 (n + 1) + 2).toNat - 2

end

end A163634.P4385328276198678689

/-! ## A163634.P8488290086141545040

`A015913(n+1)+A000982(A015913(n+1)+1)`
-/

namespace A163634.P8488290086141545040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1) + A000982 (A015913 (n + 1) + 1).toNat

end

end A163634.P8488290086141545040

/-! ## A163634.P11222334851318904410

`(A061041(A167607(n+1))+1)/2`
-/

namespace A163634.P11222334851318904410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061041 (A167607 (n + 1)).toNat + 1 : ℚ) / 2

end

end A163634.P11222334851318904410

/-! ## A163634.P8192979445921694309

`A004116(A167607(n+1)-3)/2`
-/

namespace A163634.P8192979445921694309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004116 (A167607 (n + 1) - 3).toNat : ℚ) / 2

end

end A163634.P8192979445921694309

/-!
# A163635: a(n) = 3*A022004(n) + 8.

The programs for A163635, there is no canonical definition to state claims against.
-/

/-! ## A163635.P5648259623361093325

`3*A022004(n+1)+8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163635.P5648259623361093325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022004 (n + 1) + 8

end

end A163635.P5648259623361093325

/-! ## A163635.P7536414528613153708

`A022004(n+1)+A073648(n+1)+A098412(n+1)`
-/

namespace A163635.P7536414528613153708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022004 (n + 1) + A073648 (n + 1) + A098412 (n + 1)

end

end A163635.P7536414528613153708

/-! ## A163635.P9722466890591267992

`3*A073648(n+1)+2`
-/

namespace A163635.P9722466890591267992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A073648 (n + 1) + 2

end

end A163635.P9722466890591267992

/-! ## A163635.P1869713819939266537

`3*(A098412(n+1)-4)+2`
-/

namespace A163635.P1869713819939266537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A098412 (n + 1) - 4) + 2

end

end A163635.P1869713819939266537

/-! ## A163635.P9486911037125015858

`lcm(4, A073648(n+1))-A022004(n+1)`
-/

namespace A163635.P9486911037125015858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A073648 (n + 1)) : ℤ) - A022004 (n + 1)

end

end A163635.P9486911037125015858

/-! ## A163635.P9416721137534380058

`∩[A390613(n+1), A050200(n)]`
-/

namespace A163635.P9416721137534380058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050200 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163635.P9416721137534380058

/-! ## A163635.P10313501599842383005

`A242215(A174359(n+1))`
-/

namespace A163635.P10313501599842383005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242215 (A174359 (n + 1)).toNat

end

end A163635.P10313501599842383005

/-! ## A163635.P5152882393965669475

`A016969(A174359(n+1)+2*A174359(n+1))`
-/

namespace A163635.P5152882393965669475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A174359 (n + 1) + 2 * A174359 (n + 1)).toNat

end

end A163635.P5152882393965669475

/-! ## A163635.P4882839504949449677

`A016789(A073648(n+1))`
-/

namespace A163635.P4882839504949449677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A073648 (n + 1)).toNat

end

end A163635.P4882839504949449677

/-! ## A163635.P18030085088302270762

`A166304(p?[A073648(n+1)])`
-/

namespace A163635.P18030085088302270762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163635.P18030085088302270762

/-!
# A163636: The sum of all odd numbers from 2n-1 up to the n-th odd nonprime.

The programs for A163636, the canonical program `A163636.P2641427512781820136` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163636 has offset 1).

The definition of A163636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163636.P2641427512781820136

`(A014076(n+1)+2*(n+1)-1)*(A014076(n+1)-2*(n+1)+3)/4`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163636

/-- `(A014076(n+1)+2*(n+1)-1)*(A014076(n+1)-2*(n+1)+3)/4` -/
def P2641427512781820136.Spec : Prop :=
  ∀ n, P2641427512781820136.a n = (A163636 (n + 1) : ℚ)

end A163636

/-! ## A163636.P10357150870569033077

`A104275(n+1)²-n²`
-/

namespace A163636.P10357150870569033077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P10357150870569033077

namespace A163636

/-- `A104275(n+1)²-n²` -/
def P10357150870569033077.Spec : Prop :=
  ∀ n, P10357150870569033077.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P16277580528789778617

`(A047845(n+1)+1)²-n²`
-/

namespace A163636.P16277580528789778617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047845 (n + 1) + 1) ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P16277580528789778617

namespace A163636

/-- `(A047845(n+1)+1)²-n²` -/
def P16277580528789778617.Spec : Prop :=
  ∀ n, P16277580528789778617.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P4823460307082995320

`(1-A153043(n+1))²-n²`
-/

namespace A163636.P4823460307082995320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A153043 (n + 1)) ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P4823460307082995320

namespace A163636

/-- `(1-A153043(n+1))²-n²` -/
def P4823460307082995320.Spec : Prop :=
  ∀ n, P4823460307082995320.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P8591241145720371922

`(6-A153049(n+1))²-n²`
-/

namespace A163636.P8591241145720371922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 - A153049 (n + 1)) ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P8591241145720371922

namespace A163636

/-- `(6-A153049(n+1))²-n²` -/
def P8591241145720371922.Spec : Prop :=
  ∀ n, P8591241145720371922.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P8036380683769691744

`A000290(A104275(n+1))-A000290(n)`
-/

namespace A163636.P8036380683769691744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A104275 (n + 1)).toNat - A000290 n

end

end A163636.P8036380683769691744

namespace A163636

/-- `A000290(A104275(n+1))-A000290(n)` -/
def P8036380683769691744.Spec : Prop :=
  ∀ n, P8036380683769691744.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P10603318640627140448

`A000290(A153043(n+1)-1)-A000290(n)`
-/

namespace A163636.P10603318640627140448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A153043 (n + 1) - 1).toNat - A000290 n

end

end A163636.P10603318640627140448

namespace A163636

/-- `A000290(A153043(n+1)-1)-A000290(n)` -/
def P10603318640627140448.Spec : Prop :=
  ∀ n, P10603318640627140448.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P4439055972319674719

`A023443(A153043(n+1))²-n²`
-/

namespace A163636.P4439055972319674719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153043 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P4439055972319674719

namespace A163636

/-- `A023443(A153043(n+1))²-n²` -/
def P4439055972319674719.Spec : Prop :=
  ∀ n, P4439055972319674719.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P2866077637058013767

`eq[A000007(n), A283361(n)]²-n²`
-/

namespace A163636.P2866077637058013767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2 : ℤ) - (n ^ 2 : ℤ)

end

end A163636.P2866077637058013767

namespace A163636

/-- `eq[A000007(n), A283361(n)]²-n²` -/
def P2866077637058013767.Spec : Prop :=
  ∀ n, P2866077637058013767.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P12531032423413783394

`A023446(A153044(n+1))²-n²`
-/

namespace A163636.P12531032423413783394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A153044 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P12531032423413783394

namespace A163636

/-- `A023446(A153044(n+1))²-n²` -/
def P12531032423413783394.Spec : Prop :=
  ∀ n, P12531032423413783394.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P1049990563393569781

`A023448(A153049(n+1))²-n²`
-/

namespace A163636.P1049990563393569781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A153049 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P1049990563393569781

namespace A163636

/-- `A023448(A153049(n+1))²-n²` -/
def P1049990563393569781.Spec : Prop :=
  ∀ n, P1049990563393569781.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P7920823864423187680

`A023451(A153041(n+1))²-n²`
-/

namespace A163636.P7920823864423187680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023451 (A153041 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P7920823864423187680

namespace A163636

/-- `A023451(A153041(n+1))²-n²` -/
def P7920823864423187680.Spec : Prop :=
  ∀ n, P7920823864423187680.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P769666632704683161

`A000463(A014076(n+1))²-n²`
-/

namespace A163636.P769666632704683161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A014076 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P769666632704683161

namespace A163636

/-- `A000463(A014076(n+1))²-n²` -/
def P769666632704683161.Spec : Prop :=
  ∀ n, P769666632704683161.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P16394771837060873568

`A008611(A179899(n+1))²-n²`
-/

namespace A163636.P16394771837060873568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A179899 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P16394771837060873568

namespace A163636

/-- `A008611(A179899(n+1))²-n²` -/
def P16394771837060873568.Spec : Prop :=
  ∀ n, P16394771837060873568.a n = A163636 (n + 1)

end A163636

/-! ## A163636.P8813389686435743764

`A008611(A172048(n+1))²-n²`
-/

namespace A163636.P8813389686435743764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A172048 (n + 1)).toNat ^ 2 - (n ^ 2 : ℤ)

end

end A163636.P8813389686435743764

namespace A163636

/-- `A008611(A172048(n+1))²-n²` -/
def P8813389686435743764.Spec : Prop :=
  ∀ n, P8813389686435743764.a n = A163636 (n + 1)

end A163636

/-!
# A163637: The sum of all odd numbers from 2*n-1 to prime(n).

The programs for A163637, there is no canonical definition to state claims against.
-/

/-! ## A163637.P8673403934069590386

`floor((p?[xor(1, n)+1]+1)/2)²-n²`
-/

namespace A163637.P8673403934069590386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2⌋ ^ 2 - (n ^ 2 : ℤ)

end

end A163637.P8673403934069590386

/-! ## A163637.P3817056811163046956

`A111333(n+1)²-n²`
-/

namespace A163637.P3817056811163046956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) ^ 2 - (n ^ 2 : ℤ)

end

end A163637.P3817056811163046956

/-! ## A163637.P9791297433027156577

`(A102781(n+1)+1)²-n²`
-/

namespace A163637.P9791297433027156577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102781 (n + 1) + 1) ^ 2 - (n ^ 2 : ℤ)

end

end A163637.P9791297433027156577

/-! ## A163637.P17838533277098091657

`ceil(A000040(n+1)/2)²-n²`
-/

namespace A163637.P17838533277098091657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℚ) / 2⌉ ^ 2 - (n ^ 2 : ℤ)

end

end A163637.P17838533277098091657

/-! ## A163637.P14466831150921776

`floor(-record[A006530(n+2)]/2)²-n²`
-/

namespace A163637.P14466831150921776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)⌋ ^ 2 - (n ^ 2 : ℤ)

end

end A163637.P14466831150921776

/-!
# A163638: Two copies of the sequence A141468, one at prime the other at nonprime indices.

The programs for A163638, there is no canonical definition to state claims against.
-/

/-! ## A163638.P13852138112271301281

`A141468(A102885(n))`
-/

namespace A163638.P13852138112271301281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A102885 n).toNat

end

end A163638.P13852138112271301281

/-! ## A163638.P17404089118440547939

`A141468(abs(A086936(n+1)-A055672(n)))`
-/

namespace A163638.P17404089118440547939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 |A086936 (n + 1) - A055672 n|.toNat

end

end A163638.P17404089118440547939

/-! ## A163638.P14628125618284070861

`A309892(n*A163465(n))`
-/

namespace A163638.P14628125618284070861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 ((n : ℤ) * A163465 n).toNat

end

end A163638.P14628125618284070861

/-! ## A163638.P9851275170848225924

`A309892(lcm(n, A163465(n)))`
-/

namespace A163638.P9851275170848225924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309892 (Int.lcm (n : ℤ) (A163465 n))

end

end A163638.P9851275170848225924

/-! ## A163638.P7181103033006385331

`A163465(n)+n-A163466(n)`
-/

namespace A163638.P7181103033006385331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163465 n + ((n : ℤ) - A163466 n)

end

end A163638.P7181103033006385331

/-!
# A163639: The count of odd numbers from prime(n) up to the n-th odd nonprime, A014076(n).

The programs for A163639, there is no canonical definition to state claims against.
-/

/-! ## A163639.P12538847720745679157

`ceil(cosh(log(A163504(n+1))))`
-/

namespace A163639.P12538847720745679157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A163504 (n + 1) : ℝ))⌉

end

end A163639.P12538847720745679157

/-! ## A163639.P15182926927711418946

`A008619(A163504(n+1))`
-/

namespace A163639.P15182926927711418946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A163504 (n + 1)).toNat

end

end A163639.P15182926927711418946

/-! ## A163639.P7386318647587434489

`A000463(A163504(n+1)+1)`
-/

namespace A163639.P7386318647587434489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A163504 (n + 1) + 1).toNat

end

end A163639.P7386318647587434489

/-! ## A163639.P16278857667618331181

`A003602(A163504(n+1)+1)`
-/

namespace A163639.P16278857667618331181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A163504 (n + 1) + 1).toNat

end

end A163639.P16278857667618331181

/-! ## A163639.P68848514317092290

`A065033(A163504(n+1)+1)`
-/

namespace A163639.P68848514317092290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A163504 (n + 1) + 1).toNat

end

end A163639.P68848514317092290

/-! ## A163639.P11482764416655568935

`A110654(A163504(n+1)+1)`
-/

namespace A163639.P11482764416655568935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A163504 (n + 1) + 1).toNat

end

end A163639.P11482764416655568935

/-! ## A163639.P7032380037049919667

`A004525(A163504(n+1)+2)`
-/

namespace A163639.P7032380037049919667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A163504 (n + 1) + 2).toNat

end

end A163639.P7032380037049919667

/-! ## A163639.P3579178020940436581

`A004526(A163504(n+1)+2)`
-/

namespace A163639.P3579178020940436581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A163504 (n + 1) + 2).toNat

end

end A163639.P3579178020940436581

/-! ## A163639.P4572955793187866958

`A032742(A163504(n+1)+2)`
-/

namespace A163639.P4572955793187866958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A163504 (n + 1) + 2).toNat

end

end A163639.P4572955793187866958

/-! ## A163639.P269611070766808207

`A057979(A163504(n+1)+3)`
-/

namespace A163639.P269611070766808207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A163504 (n + 1) + 3).toNat

end

end A163639.P269611070766808207

/-!
# A163640: The radical of the swinging factorial A056040 for odd indices.

The programs for A163640, the canonical program `A163640.P1112088024654319400` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163640 has offset 0).

The definition of A163640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163640.P1112088024654319400

`A163641(Δ[n²])`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163640

/-- `A163641(Δ[n²])` -/
def P1112088024654319400.Spec : Prop :=
  ∀ n, P1112088024654319400.a n = A163640 n

theorem P1112088024654319400.correct : P1112088024654319400.Spec := by
  intro n
  simp only [A163640]

end A163640

/-! ## A163640.P2447590636697889191

`lcm(A080397(n), A099984(n+1))`
-/

namespace A163640.P2447590636697889191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080397 n) (A099984 (n + 1))

end

end A163640.P2447590636697889191

namespace A163640

/-- `lcm(A080397(n), A099984(n+1))` -/
def P2447590636697889191.Spec : Prop :=
  ∀ n, (P2447590636697889191.a n : ℤ) = A163640 n

end A163640

/-! ## A163640.P16562618363587241518

`lcm(A163641(2*n+1), A163641(2*n))`
-/

namespace A163640.P16562618363587241518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163641 (2 * n + 1)) (A163641 (2 * n))

end

end A163640.P16562618363587241518

namespace A163640

/-- `lcm(A163641(2*n+1), A163641(2*n))` -/
def P16562618363587241518.Spec : Prop :=
  ∀ n, (P16562618363587241518.a n : ℤ) = A163640 n

end A163640

/-! ## A163640.P6841249824413751368

`A034386(2*n+1)/A163644(2*n+1)`
-/

namespace A163640.P6841249824413751368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 (2 * n + 1) : ℚ) / (A163644 (2 * n + 1) : ℚ)

end

end A163640.P6841249824413751368

namespace A163640

/-- `A034386(2*n+1)/A163644(2*n+1)` -/
def P6841249824413751368.Spec : Prop :=
  ∀ n, P6841249824413751368.a n = (A163640 n : ℚ)

end A163640

/-! ## A163640.P8237554581190555203

`gcd(A034386(2*n+1), A056040(2*n+1))`
-/

namespace A163640.P8237554581190555203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 (2 * n + 1)) (A056040 (2 * n + 1))

end

end A163640.P8237554581190555203

namespace A163640

/-- `gcd(A034386(2*n+1), A056040(2*n+1))` -/
def P8237554581190555203.Spec : Prop :=
  ∀ n, (P8237554581190555203.a n : ℤ) = A163640 n

end A163640

/-! ## A163640.P10017230087710976495

`A066838(A151800(2*n+1))/A163644(2*n+1)`
-/

namespace A163640.P10017230087710976495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A151800 (2 * n + 1)).toNat : ℚ) / (A163644 (2 * n + 1) : ℚ)

end

end A163640.P10017230087710976495

namespace A163640

/-- `A066838(A151800(2*n+1))/A163644(2*n+1)` -/
def P10017230087710976495.Spec : Prop :=
  ∀ n, P10017230087710976495.a n = (A163640 n : ℚ)

end A163640

/-! ## A163640.P14443745459414354871

`A066838(A159477(2*(n+1)))/A163644(2*n+1)`
-/

namespace A163640.P14443745459414354871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A159477 (2 * (n + 1))).toNat : ℚ) / (A163644 (2 * n + 1) : ℚ)

end

end A163640.P14443745459414354871

namespace A163640

/-- `A066838(A159477(2*(n+1)))/A163644(2*n+1)` -/
def P14443745459414354871.Spec : Prop :=
  ∀ n, P14443745459414354871.a n = (A163640 n : ℚ)

end A163640

/-! ## A163640.P15980087407284199033

`A002110(A230980(2*n+1))/A163644(2*n+1)`
-/

namespace A163640.P15980087407284199033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A230980 (2 * n + 1)).toNat : ℚ) / (A163644 (2 * n + 1) : ℚ)

end

end A163640.P15980087407284199033

namespace A163640

/-- `A002110(A230980(2*n+1))/A163644(2*n+1)` -/
def P15980087407284199033.Spec : Prop :=
  ∀ n, P15980087407284199033.a n = (A163640 n : ℚ)

end A163640

/-! ## A163640.P15024160203235166896

`gcd(A186944(2*(n+1)), A327998(2*n+1))`
-/

namespace A163640.P15024160203235166896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A186944 (2 * (n + 1))) (A327998 (2 * n + 1))

end

end A163640.P15024160203235166896

namespace A163640

/-- `gcd(A186944(2*(n+1)), A327998(2*n+1))` -/
def P15024160203235166896.Spec : Prop :=
  ∀ n, (P15024160203235166896.a n : ℤ) = A163640 n

end A163640

/-!
# A163641: The radical of the swinging factorial A056040.

The programs for A163641, the canonical program `A163641.P921846724175378980` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163641 has offset 0).

The definition of A163641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163641.P357086344168095810

`A034386(n)/A163644(n)`
-/

namespace A163641.P357086344168095810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (A163644 n : ℚ)

end

end A163641.P357086344168095810

namespace A163641

/-- `A034386(n)/A163644(n)` -/
def P357086344168095810.Spec : Prop :=
  ∀ n, P357086344168095810.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P15753108316434589253

`gcd(A034386(n), A056040(n))`
-/

namespace A163641.P15753108316434589253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A056040 n)

end

end A163641.P15753108316434589253

namespace A163641

/-- `gcd(A034386(n), A056040(n))` -/
def P15753108316434589253.Spec : Prop :=
  ∀ n, (P15753108316434589253.a n : ℤ) = A163641 n

end A163641

/-! ## A163641.P10293699940065698725

`A300951(2*n)/A163644(n)`
-/

namespace A163641.P10293699940065698725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A163644 n : ℚ)

end

end A163641.P10293699940065698725

namespace A163641

/-- `A300951(2*n)/A163644(n)` -/
def P10293699940065698725.Spec : Prop :=
  ∀ n, P10293699940065698725.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P3135693639341118611

`(2^n-A319880(n))/A163644(n)`
-/

namespace A163641.P3135693639341118611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - A319880 n : ℚ) / (A163644 n : ℚ)

end

end A163641.P3135693639341118611

namespace A163641

/-- `(2^n-A319880(n))/A163644(n)` -/
def P3135693639341118611.Spec : Prop :=
  ∀ n, P3135693639341118611.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P9735120510061201408

`A066838(A151800(n))/A163644(n)`
-/

namespace A163641.P9735120510061201408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A151800 n).toNat : ℚ) / (A163644 n : ℚ)

end

end A163641.P9735120510061201408

namespace A163641

/-- `A066838(A151800(n))/A163644(n)` -/
def P9735120510061201408.Spec : Prop :=
  ∀ n, P9735120510061201408.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P7070999657870199955

`A002110(A230980(n))/A163644(n)`
-/

namespace A163641.P7070999657870199955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A230980 n).toNat : ℚ) / (A163644 n : ℚ)

end

end A163641.P7070999657870199955

namespace A163641

/-- `A002110(A230980(n))/A163644(n)` -/
def P7070999657870199955.Spec : Prop :=
  ∀ n, P7070999657870199955.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P108037234407540010

`A066838(A159477(n+1))/A163644(n)`
-/

namespace A163641.P108037234407540010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A159477 (n + 1)).toNat : ℚ) / (A163644 n : ℚ)

end

end A163641.P108037234407540010

namespace A163641

/-- `A066838(A159477(n+1))/A163644(n)` -/
def P108037234407540010.Spec : Prop :=
  ∀ n, P108037234407540010.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P4267423514309786849

`A002110(A095117(n)-n)/A163644(n)`
-/

namespace A163641.P4267423514309786849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A095117 n - (n : ℤ)).toNat : ℚ) / (A163644 n : ℚ)

end

end A163641.P4267423514309786849

namespace A163641

/-- `A002110(A095117(n)-n)/A163644(n)` -/
def P4267423514309786849.Spec : Prop :=
  ∀ n, P4267423514309786849.a n = (A163641 n : ℚ)

end A163641

/-! ## A163641.P16666242331840874259

`gcd(A275329(n)-A057977(n), A034386(n+1))`
-/

namespace A163641.P16666242331840874259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275329 n - A057977 n) (A034386 (n + 1))

end

end A163641.P16666242331840874259

namespace A163641

/-- `gcd(A275329(n)-A057977(n), A034386(n+1))` -/
def P16666242331840874259.Spec : Prop :=
  ∀ n, (P16666242331840874259.a n : ℤ) = A163641 n

end A163641

/-! ## A163641.P921846724175378980

`gcd(A186944(n+1), A327998(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163641

/-- `gcd(A186944(n+1), A327998(n))` -/
def P921846724175378980.Spec : Prop :=
  ∀ n, (P921846724175378980.a n : ℤ) = A163641 n

theorem P921846724175378980.correct : P921846724175378980.Spec := by
  intro n
  simp only [A163641]

end A163641

/-!
# A163643: a(0)=1. For n >= 1, a(n) is the smallest composite integer that is > a(n-1) and that is coprime to n.

The programs for A163643, there is no canonical definition to state claims against.
-/

/-! ## A163643.P9604066747405196257

`eq[char[A080220(n+1)], A151622(n)]`
-/

namespace A163643.P9604066747405196257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080220 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A163643.P9604066747405196257

/-! ## A163643.P4055386642217925857

`∑[gcd(A204086(3*n+2), A204088(3*n+1))]`
-/

namespace A163643.P4055386642217925857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A204086 (3 * n + 2)) (A204088 (3 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163643.P4055386642217925857

/-! ## A163643.P6322614117253230655

`∑[A005811(A049084(n+1)*A107462(n+1))+1]`
-/

namespace A163643.P6322614117253230655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A049084 (n + 1) * A107462 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163643.P6322614117253230655

/-!
# A163644: Product of primes which do not exceed n and do not divide the swinging factorial n$ (A056040).

The programs for A163644, the canonical program `A163644.P53681428900422597` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163644 has offset 0).

The definition of A163644 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034386, A163641, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163644.P53681428900422597

`A034386(n)/A163641(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163644

/-- `A034386(n)/A163641(n)` -/
def P53681428900422597.Spec : Prop :=
  ∀ n, P53681428900422597.a n = (A163644 n : ℚ)

end A163644

/-! ## A163644.P2851350159856082810

`A300951(2*n)/A163641(n)`
-/

namespace A163644.P2851350159856082810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300951 (2 * n) : ℚ) / (A163641 n : ℚ)

end

end A163644.P2851350159856082810

namespace A163644

/-- `A300951(2*n)/A163641(n)` -/
def P2851350159856082810.Spec : Prop :=
  ∀ n, P2851350159856082810.a n = (A163644 n : ℚ)

end A163644

/-! ## A163644.P4103277158396340596

`A066838(A151800(n))/A163641(n)`
-/

namespace A163644.P4103277158396340596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066838 (A151800 n).toNat : ℚ) / (A163641 n : ℚ)

end

end A163644.P4103277158396340596

namespace A163644

/-- `A066838(A151800(n))/A163641(n)` -/
def P4103277158396340596.Spec : Prop :=
  ∀ n, P4103277158396340596.a n = (A163644 n : ℚ)

end A163644

/-! ## A163644.P15728375488361293810

`A002110(A230980(n))/A163641(n)`
-/

namespace A163644.P15728375488361293810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A230980 n).toNat : ℚ) / (A163641 n : ℚ)

end

end A163644.P15728375488361293810

namespace A163644

/-- `A002110(A230980(n))/A163641(n)` -/
def P15728375488361293810.Spec : Prop :=
  ∀ n, P15728375488361293810.a n = (A163644 n : ℚ)

end A163644

/-! ## A163644.P7599383600109870496

`A034386(n)/gcd(A034386(n), A056040(n))`
-/

namespace A163644.P7599383600109870496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034386 n : ℚ) / (Int.gcd (A034386 n) (A056040 n) : ℚ)

end

end A163644.P7599383600109870496

namespace A163644

/-- `A034386(n)/gcd(A034386(n), A056040(n))` -/
def P7599383600109870496.Spec : Prop :=
  ∀ n, P7599383600109870496.a n = (A163644 n : ℚ)

end A163644

/-!
# A163645: Number of reduced words of length n in Coxeter group on 37 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163645, there is no canonical definition to state claims against.
-/

/-! ## A163645.P12877087977965830042

`A166431(2*6*10*C(n, 5)+n)`
-/

namespace A163645.P12877087977965830042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166431 (2 * (6 * (10 * Nat.choose n 5)) + n)

end

end A163645.P12877087977965830042

/-!
# A163646: Two copies of the twin primes inserted at positions depending on prime(n) being isolated or not.

The programs for A163646, there is no canonical definition to state claims against.
-/

/-! ## A163646.P15376594049547315441

`A001097(A167514(n+1))`
-/

namespace A163646.P15376594049547315441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (A167514 (n + 1)).toNat

end

end A163646.P15376594049547315441

/-! ## A163646.P4302820328911802408

`A171821(A167514(n+1)+1)`
-/

namespace A163646.P4302820328911802408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A167514 (n + 1) + 1).toNat

end

end A163646.P4302820328911802408

/-! ## A163646.P13404975335250875714

`A006530(record[lcm(6, A085516(n+1))])`
-/

namespace A163646.P13404975335250875714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (A085516 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A163646.P13404975335250875714

/-! ## A163646.P14469533415949421966

`A117243(A167514(n+1)%A273497(n+1))`
-/

namespace A163646.P14469533415949421966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117243 (Int.tmod (A167514 (n + 1)) (A273497 (n + 1))).toNat

end

end A163646.P14469533415949421966

/-! ## A163646.P12660320748841870454

`A008864(n+1)-A051953(A089472(n))`
-/

namespace A163646.P12660320748841870454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A051953 (A089472 n).toNat

end

end A163646.P12660320748841870454

/-!
# A163649: Triangle interpolating between (-1)^n (A033999) and A056040(n), read by rows.

The programs for A163649, the canonical program `A163649.P13387088983405012079` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163649 has offset 0).

The definition of A163649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163649.P13387088983405012079

`A056040(A002262(n))*A130595(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A163649

/-- `A056040(A002262(n))*A130595(n)` -/
def P13387088983405012079.Spec : Prop :=
  ∀ n, P13387088983405012079.a n = A163649 n

theorem P13387088983405012079.correct : P13387088983405012079.Spec := by
  intro n
  simp only [A163649]

end A163649

/-! ## A163649.P15399344957232438399

`A056040(A144328(n+1))*A130595(n)`
-/

namespace A163649.P15399344957232438399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A144328 (n + 1)).toNat * A130595 n

end

end A163649.P15399344957232438399

namespace A163649

/-- `A056040(A144328(n+1))*A130595(n)` -/
def P15399344957232438399.Spec : Prop :=
  ∀ n, P15399344957232438399.a n = A163649 n

end A163649

/-! ## A163649.P8925984114737178369

`A056040(A002260(n+1)-1)*A130595(n)`
-/

namespace A163649.P8925984114737178369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A002260 (n + 1) - 1).toNat * A130595 n

end

end A163649.P8925984114737178369

namespace A163649

/-- `A056040(A002260(n+1)-1)*A130595(n)` -/
def P8925984114737178369.Spec : Prop :=
  ∀ n, P8925984114737178369.a n = A163649 n

end A163649

/-! ## A163649.P16016688052581890754

`A130595(n)*A182073(A112367(n))`
-/

namespace A163649.P16016688052581890754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A182073 (A112367 n).toNat

end

end A163649.P16016688052581890754

namespace A163649

/-- `A130595(n)*A182073(A112367(n))` -/
def P16016688052581890754.Spec : Prop :=
  ∀ n, P16016688052581890754.a n = A163649 n

end A163649

/-! ## A163649.P18030258164487421674

`A351870(A008459(n)*A233543(n))/A130595(n)`
-/

namespace A163649.P18030258164487421674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351870 (A008459 n * A233543 n).toNat : ℚ) / (A130595 n : ℚ)

end

end A163649.P18030258164487421674

namespace A163649

/-- `A351870(A008459(n)*A233543(n))/A130595(n)` -/
def P18030258164487421674.Spec : Prop :=
  ∀ n, P18030258164487421674.a n = (A163649 n : ℚ)

end A163649

/-!
# A163650: Subswing - the inverse binomial transform of the swinging factorial (A056040).

The programs for A163650, there is no canonical definition to state claims against.
-/

/-! ## A163650.P6321654252493780911

`A163770(∑[n])`
-/

namespace A163650.P6321654252493780911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163650.P6321654252493780911

/-! ## A163650.P15048030351213445126

`A163770(A000217(n))%A041374(n)`
-/

namespace A163650.P15048030351213445126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163770 (A000217 n).toNat) (A041374 n)

end

end A163650.P15048030351213445126

/-! ## A163650.P5253353631078872541

`(A159075(n)+1)*A163770(A000217(n))`
-/

namespace A163650.P5253353631078872541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n + 1) * A163770 (A000217 n).toNat

end

end A163650.P5253353631078872541

/-! ## A163650.P8639167854507721494

`A163770(A000217(n))+A000035(A005843(n))`
-/

namespace A163650.P8639167854507721494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (A000217 n).toNat + A000035 (A005843 n).toNat

end

end A163650.P8639167854507721494

/-! ## A163650.P6226236354279963370

`A163770(A000217(n))*A340596(A099375(n))`
-/

namespace A163650.P6226236354279963370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163770 (A000217 n).toNat * A340596 (A099375 n).toNat

end

end A163650.P6226236354279963370

/-! ## A163650.P2177354295655945964

`A151934(n)!*A163770(A000217(n))`
-/

namespace A163650.P2177354295655945964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151934 n).toNat : ℤ) * A163770 (A000217 n).toNat

end

end A163650.P2177354295655945964

/-!
# A163651: Zero-less composite numbers such that exactly eight distinct anagrams are primes.

The programs for A163651, there is no canonical definition to state claims against.
-/

/-! ## A163651.P8223942506775072734

`filter[A163560(n+1), A168046(#)]`
-/

namespace A163651.P8223942506775072734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A163651.P8223942506775072734

/-! ## A163651.P116583586824964118

`A163560(comp[A000040(3*n+5)-A059100(n+3)])`
-/

namespace A163651.P116583586824964118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 * n + 5) - A059100 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163651.P116583586824964118

/-!
# A163652: Triangle read by rows where T(n,m)=2*m*n + m + n + 6.

The programs for A163652, the canonical program `A163652.P16440456399062423218` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163652 has offset 1).

The definition of A163652 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163652.P504465896739714635

`A154631(n+1)+1`
-/

namespace A163652.P504465896739714635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) + 1

end

end A163652.P504465896739714635

namespace A163652

/-- `A154631(n+1)+1` -/
def P504465896739714635.Spec : Prop :=
  ∀ n, P504465896739714635.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P16440456399062423218

`A154685(n+1)+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A163652

/-- `A154685(n+1)+2` -/
def P16440456399062423218.Spec : Prop :=
  ∀ n, P16440456399062423218.a n = A163652 (n + 1)

theorem P16440456399062423218.correct : P16440456399062423218.Spec := by
  intro n
  simp only [A163652, Nat.add_sub_cancel]

end A163652

/-! ## A163652.P4386031220798637010

`A163672(n+1)-1`
-/

namespace A163652.P4386031220798637010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) - 1

end

end A163652.P4386031220798637010

namespace A163652

/-- `A163672(n+1)-1` -/
def P4386031220798637010.Spec : Prop :=
  ∀ n, P4386031220798637010.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P13568163327975465444

`A154681(n+1)+3`
-/

namespace A163652.P13568163327975465444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 3

end

end A163652.P13568163327975465444

namespace A163652

/-- `A154681(n+1)+3` -/
def P13568163327975465444.Spec : Prop :=
  ∀ n, P13568163327975465444.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P16603447250536207588

`A163657(n+1)-2`
-/

namespace A163652.P16603447250536207588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 2

end

end A163652.P16603447250536207588

namespace A163652

/-- `A163657(n+1)-2` -/
def P16603447250536207588.Spec : Prop :=
  ∀ n, P16603447250536207588.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P10018204650421112025

`A155705(n+1)+4`
-/

namespace A163652.P10018204650421112025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 4

end

end A163652.P10018204650421112025

namespace A163652

/-- `A155705(n+1)+4` -/
def P10018204650421112025.Spec : Prop :=
  ∀ n, P10018204650421112025.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P3506346918370201587

`A163674(n+1)-3`
-/

namespace A163652.P3506346918370201587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 3

end

end A163652.P3506346918370201587

namespace A163652

/-- `A163674(n+1)-3` -/
def P3506346918370201587.Spec : Prop :=
  ∀ n, P3506346918370201587.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P2493697298265237617

`A144650(n+1)+5`
-/

namespace A163652.P2493697298265237617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 5

end

end A163652.P2493697298265237617

namespace A163652

/-- `A144650(n+1)+5` -/
def P2493697298265237617.Spec : Prop :=
  ∀ n, P2493697298265237617.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P15974843726207855657

`A155704(n+1)-4`
-/

namespace A163652.P15974843726207855657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 4

end

end A163652.P15974843726207855657

namespace A163652

/-- `A155704(n+1)-4` -/
def P15974843726207855657.Spec : Prop :=
  ∀ n, P15974843726207855657.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P16448675284047581

`A083487(n+1)+6`
-/

namespace A163652.P16448675284047581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 6

end

end A163652.P16448675284047581

namespace A163652

/-- `A083487(n+1)+6` -/
def P16448675284047581.Spec : Prop :=
  ∀ n, P16448675284047581.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P11141828514760252939

`A144562(n+1)+7`
-/

namespace A163652.P11141828514760252939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 7

end

end A163652.P11141828514760252939

namespace A163652

/-- `A144562(n+1)+7` -/
def P11141828514760252939.Spec : Prop :=
  ∀ n, P11141828514760252939.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P12003133417643924948

`A154680(n+1)+8`
-/

namespace A163652.P12003133417643924948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 8

end

end A163652.P12003133417643924948

namespace A163652

/-- `A154680(n+1)+8` -/
def P12003133417643924948.Spec : Prop :=
  ∀ n, P12003133417643924948.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P6699179109098754548

`A154684(n+1)+9`
-/

namespace A163652.P6699179109098754548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) + 9

end

end A163652.P6699179109098754548

namespace A163652

/-- `A154684(n+1)+9` -/
def P6699179109098754548.Spec : Prop :=
  ∀ n, P6699179109098754548.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P7770388763484500110

`A155546(n+1)+11`
-/

namespace A163652.P7770388763484500110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 11

end

end A163652.P7770388763484500110

namespace A163652

/-- `A155546(n+1)+11` -/
def P7770388763484500110.Spec : Prop :=
  ∀ n, P7770388763484500110.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P18042803257923445926

`A155550(n+1)+12`
-/

namespace A163652.P18042803257923445926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 12

end

end A163652.P18042803257923445926

namespace A163652

/-- `A155550(n+1)+12` -/
def P18042803257923445926.Spec : Prop :=
  ∀ n, P18042803257923445926.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P10067334312573419175

`A155151(n+1)/2+5`
-/

namespace A163652.P10067334312573419175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155151 (n + 1) : ℚ) / 2 + 5

end

end A163652.P10067334312573419175

namespace A163652

/-- `A155151(n+1)/2+5` -/
def P10067334312573419175.Spec : Prop :=
  ∀ n, P10067334312573419175.a n = (A163652 (n + 1) : ℚ)

end A163652

/-! ## A163652.P18341698793387981888

`A163676(n+1)-A144670(n+1)`
-/

namespace A163652.P18341698793387981888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - A144670 (n + 1)

end

end A163652.P18341698793387981888

namespace A163652

/-- `A163676(n+1)-A144670(n+1)` -/
def P18341698793387981888.Spec : Prop :=
  ∀ n, P18341698793387981888.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P1705050458471395599

`A155151(n+1)-A155724(n+1)`
-/

namespace A163652.P1705050458471395599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A155724 (n + 1)

end

end A163652.P1705050458471395599

namespace A163652

/-- `A155151(n+1)-A155724(n+1)` -/
def P1705050458471395599.Spec : Prop :=
  ∀ n, P1705050458471395599.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P9528037011148751394

`A155156(n+1)-(A144670(n+1)+1)`
-/

namespace A163652.P9528037011148751394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - (A144670 (n + 1) + 1)

end

end A163652.P9528037011148751394

namespace A163652

/-- `A155156(n+1)-(A144670(n+1)+1)` -/
def P9528037011148751394.Spec : Prop :=
  ∀ n, P9528037011148751394.a n = A163652 (n + 1)

end A163652

/-! ## A163652.P12611309541594927581

`A172292(n+1)-(A144670(n+1)+2)`
-/

namespace A163652.P12611309541594927581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - (A144670 (n + 1) + 2)

end

end A163652.P12611309541594927581

namespace A163652

/-- `A172292(n+1)-(A144670(n+1)+2)` -/
def P12611309541594927581.Spec : Prop :=
  ∀ n, P12611309541594927581.a n = A163652 (n + 1)

end A163652

/-!
# A163653: Irregular table which contains the primes between the (2n-1)st and (2n)th amicable number in row n.

The programs for A163653, there is no canonical definition to state claims against.
-/

/-! ## A163653.P4395714525834211308

`p?[A086557(n+8)]`
-/

namespace A163653.P4395714525834211308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086557 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163653.P4395714525834211308

/-! ## A163653.P6441914659328964570

`p?[Δ[A114134(n+5)²]]`
-/

namespace A163653.P6441914659328964570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114134 (n + 5) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163653.P6441914659328964570

/-! ## A163653.P9420306366794904773

`A045708(A077168(n)+4)`
-/

namespace A163653.P9420306366794904773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045708 (A077168 n + 4).toNat

end

end A163653.P9420306366794904773

/-! ## A163653.P16347697816194891528

`A000040(A190482(n+37))`
-/

namespace A163653.P16347697816194891528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A190482 (n + 37)).toNat

end

end A163653.P16347697816194891528

/-! ## A163653.P7508329000109799847

`A000040(A077168(n)+47)`
-/

namespace A163653.P7508329000109799847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A077168 n + 47).toNat

end

end A163653.P7508329000109799847

/-!
# A163654: The sum of the n-th and (n+1)st isolated prime.

The programs for A163654, the canonical program `A163654.P17404434252909917711` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163654 has offset 1).

The definition of A163654 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007510, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163654.P17404434252909917711

`A007510(n+1)+A007510(n+2)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A163654

/-- `A007510(n+1)+A007510(n+2)` -/
def P17404434252909917711.Spec : Prop :=
  ∀ n, P17404434252909917711.a n = A163654 (n + 1)

theorem P17404434252909917711.correct : P17404434252909917711.Spec := by
  intro n
  simp only [A163654, Nat.add_sub_cancel]

end A163654

/-! ## A163654.P15137665884870999258

`A085434(n+1)-A068015(n+1)`
-/

namespace A163654.P15137665884870999258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085434 (n + 1) - A068015 (n + 1)

end

end A163654.P15137665884870999258

namespace A163654

/-- `A085434(n+1)-A068015(n+1)` -/
def P15137665884870999258.Spec : Prop :=
  ∀ n, P15137665884870999258.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P6272292296658738820

`2*A134797(n+1)-A068015(n+1)`
-/

namespace A163654.P6272292296658738820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134797 (n + 1) - A068015 (n + 1)

end

end A163654.P6272292296658738820

namespace A163654

/-- `2*A134797(n+1)-A068015(n+1)` -/
def P6272292296658738820.Spec : Prop :=
  ∀ n, P6272292296658738820.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P10274743171535234711

`Δ[2*A153478(n+1)]-A068015(n+1)`
-/

namespace A163654.P10274743171535234711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A068015 (n + 1)

end

end A163654.P10274743171535234711

namespace A163654

/-- `Δ[2*A153478(n+1)]-A068015(n+1)` -/
def P10274743171535234711.Spec : Prop :=
  ∀ n, P10274743171535234711.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P13434046413252713543

`p?[A167706(n+2)]+p?[A167706(n+1)]`
-/

namespace A163654.P13434046413252713543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A163654.P13434046413252713543

namespace A163654

/-- `p?[A167706(n+2)]+p?[A167706(n+1)]` -/
def P13434046413252713543.Spec : Prop :=
  ∀ n, P13434046413252713543.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P1166194552933442670

`A134797(n+1)+A000040(A176656(n+1))`
-/

namespace A163654.P1166194552933442670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) + A000040 (A176656 (n + 1)).toNat

end

end A163654.P1166194552933442670

namespace A163654

/-- `A134797(n+1)+A000040(A176656(n+1))` -/
def P1166194552933442670.Spec : Prop :=
  ∀ n, P1166194552933442670.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P4991600454589341711

`A151800(A167277(n+2))+A161165(n+1)-A001097(n+1)`
-/

namespace A163654.P4991600454589341711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A167277 (n + 2)).toNat + (A161165 (n + 1) - A001097 (n + 1))

end

end A163654.P4991600454589341711

namespace A163654

/-- `A151800(A167277(n+2))+A161165(n+1)-A001097(n+1)` -/
def P4991600454589341711.Spec : Prop :=
  ∀ n, P4991600454589341711.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P9800644286638709302

`A134797(n+1)+p?[A062729(n+1)]`
-/

namespace A163654.P9800644286638709302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163654.P9800644286638709302

namespace A163654

/-- `A134797(n+1)+p?[A062729(n+1)]` -/
def P9800644286638709302.Spec : Prop :=
  ∀ n, P9800644286638709302.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P12543818532003585665

`p?[A062729(n+1)]+p?[A062729(n+3)]`
-/

namespace A163654.P12543818532003585665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A163654.P12543818532003585665

namespace A163654

/-- `p?[A062729(n+1)]+p?[A062729(n+3)]` -/
def P12543818532003585665.Spec : Prop :=
  ∀ n, P12543818532003585665.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P9407420081981017922

`A134797(n+1)+record[A006530(A176312(n+1))]`
-/

namespace A163654.P9407420081981017922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A176312 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163654.P9407420081981017922

namespace A163654

/-- `A134797(n+1)+record[A006530(A176312(n+1))]` -/
def P9407420081981017922.Spec : Prop :=
  ∀ n, P9407420081981017922.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P15699267195470103595

`A134797(n+1)+record[A014963(A062729(n+2))]`
-/

namespace A163654.P15699267195470103595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A062729 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163654.P15699267195470103595

namespace A163654

/-- `A134797(n+1)+record[A014963(A062729(n+2))]` -/
def P15699267195470103595.Spec : Prop :=
  ∀ n, P15699267195470103595.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P6343419486659688928

`A167277(n+1)+A097362(A167277(n+2))`
-/

namespace A163654.P6343419486659688928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) + A097362 (A167277 (n + 2)).toNat

end

end A163654.P6343419486659688928

namespace A163654

/-- `A167277(n+1)+A097362(A167277(n+2))` -/
def P6343419486659688928.Spec : Prop :=
  ∀ n, P6343419486659688928.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P5804139864732490572

`A073830(∑[A068015(n+1)])-A068015(n+1)`
-/

namespace A163654.P5804139864732490572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073830 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A068015 (n + 1)

end

end A163654.P5804139864732490572

namespace A163654

/-- `A073830(∑[A068015(n+1)])-A068015(n+1)` -/
def P5804139864732490572.Spec : Prop :=
  ∀ n, P5804139864732490572.a n = A163654 (n + 1)

end A163654

/-! ## A163654.P5277362528189010661

`A005843(Δ[A153478(n+1)])-A068015(n+1)`
-/

namespace A163654.P5277362528189010661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat - A068015 (n + 1)

end

end A163654.P5277362528189010661

namespace A163654

/-- `A005843(Δ[A153478(n+1)])-A068015(n+1)` -/
def P5277362528189010661.Spec : Prop :=
  ∀ n, P5277362528189010661.a n = A163654 (n + 1)

end A163654

/-!
# A163655: a(n) = n*(2*n^2 + 5*n + 13)/2.

The programs for A163655, the canonical program `A163655.P3896228820145787364` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163655 has offset 0).

The definition of A163655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+5*n+13)/2` (program `A163655.P81414319499809698`, by `A163655.P81414319499809698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163655.P81414319499809698

`n*(2*n²+5*n+13)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163655.P81414319499809698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 * n ^ 2 + 5 * n + 13 : ℚ) / 2)

end

end A163655.P81414319499809698

namespace A163655

/-- `n*(2*n²+5*n+13)/2` -/
def P81414319499809698.Spec : Prop :=
  ∀ n, P81414319499809698.a n = (A163655 n : ℚ)

theorem P81414319499809698.correct : P81414319499809698.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163655, Nat.add_sub_cancel, A163655.P81414319499809698.a, A163655.P3896228820145787364.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163655, Nat.add_sub_cancel, A163655.P81414319499809698.a, A163655.P3896228820145787364.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163655

/-! ## A163655.P3896228820145787364

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=31, a(3)=69`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163655

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3896228820145787364.Spec : Prop :=
  ∀ n, P3896228820145787364.a n = A163655 n

theorem P3896228820145787364.correct : P3896228820145787364.Spec := by
  intro n
  simp only [A163655]

end A163655

/-! ## A163655.P17717502678222289804

`∑[∑[ogf((10x-9x^2+5x^3)/(1-2x+x^2))]]`
-/

namespace A163655.P17717502678222289804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -9, 5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163655.P17717502678222289804

namespace A163655

/-- `∑[∑[ogf((10x-9x^2+5x^3)/(1-2x+x^2))]]` -/
def P17717502678222289804.Spec : Prop :=
  ∀ n, P17717502678222289804.a n = A163655 n

end A163655

/-! ## A163655.P17886405690191965095

`A163673(n)-n`
-/

namespace A163655.P17886405690191965095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 n - (n : ℤ)

end

end A163655.P17886405690191965095

namespace A163655

/-- `A163673(n)-n` -/
def P17886405690191965095.Spec : Prop :=
  ∀ n, P17886405690191965095.a n = A163655 n

end A163655

/-! ## A163655.P2519349411659622215

`A163661(n)-2*n`
-/

namespace A163655.P2519349411659622215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 n - (2 * n : ℤ)

end

end A163655.P2519349411659622215

namespace A163655

/-- `A163661(n)-2*n` -/
def P2519349411659622215.Spec : Prop :=
  ∀ n, P2519349411659622215.a n = A163655 n

end A163655

/-! ## A163655.P17738085584860581667

`A163675(n)-3*n`
-/

namespace A163655.P17738085584860581667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163675 n - (3 * n : ℤ)

end

end A163655.P17738085584860581667

namespace A163655

/-- `A163675(n)-3*n` -/
def P17738085584860581667.Spec : Prop :=
  ∀ n, P17738085584860581667.a n = A163655 n

end A163655

/-! ## A163655.P12552099967859430869

`A302906(n)+n^3`
-/

namespace A163655.P12552099967859430869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + (n ^ 3 : ℤ)

end

end A163655.P12552099967859430869

namespace A163655

/-- `A302906(n)+n^3` -/
def P12552099967859430869.Spec : Prop :=
  ∀ n, P12552099967859430869.a n = A163655 n

end A163655

/-! ## A163655.P4169786692023732932

`A059845(n)+A027444(n)`
-/

namespace A163655.P4169786692023732932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n + A027444 n

end

end A163655.P4169786692023732932

namespace A163655

/-- `A059845(n)+A027444(n)` -/
def P4169786692023732932.Spec : Prop :=
  ∀ n, P4169786692023732932.a n = A163655 n

end A163655

/-! ## A163655.P12831146458569691396

`A059270(n)+A028560(n)`
-/

namespace A163655.P12831146458569691396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A028560 n

end

end A163655.P12831146458569691396

namespace A163655

/-- `A059270(n)+A028560(n)` -/
def P12831146458569691396.Spec : Prop :=
  ∀ n, P12831146458569691396.a n = A163655 n

end A163655

/-! ## A163655.P5615314478667734647

`A140672(n)+A011379(n)`
-/

namespace A163655.P5615314478667734647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + A011379 n

end

end A163655.P5615314478667734647

namespace A163655

/-- `A140672(n)+A011379(n)` -/
def P5615314478667734647.Spec : Prop :=
  ∀ n, P5615314478667734647.a n = A163655 n

end A163655

/-! ## A163655.P1278651401722612689

`A147656(n)+A028557(n)`
-/

namespace A163655.P1278651401722612689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A028557 n

end

end A163655.P1278651401722612689

namespace A163655

/-- `A147656(n)+A028557(n)` -/
def P1278651401722612689.Spec : Prop :=
  ∀ n, P1278651401722612689.a n = A163655 n

end A163655

/-! ## A163655.P2236135398526658993

`A155965(n)+A028895(n)`
-/

namespace A163655.P2236135398526658993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155965 n + A028895 n

end

end A163655.P2236135398526658993

namespace A163655

/-- `A155965(n)+A028895(n)` -/
def P2236135398526658993.Spec : Prop :=
  ∀ n, P2236135398526658993.a n = A163655 n

end A163655

/-! ## A163655.P15061105121404739105

`A131874(n)+A083074(n)`
-/

namespace A163655.P15061105121404739105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131874 n + A083074 n

end

end A163655.P15061105121404739105

namespace A163655

/-- `A131874(n)+A083074(n)` -/
def P15061105121404739105.Spec : Prop :=
  ∀ n, P15061105121404739105.a n = A163655 n

end A163655

/-! ## A163655.P12403875396431948819

`A211013(n)+A007531(n)`
-/

namespace A163655.P12403875396431948819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211013 n + A007531 n

end

end A163655.P12403875396431948819

namespace A163655

/-- `A211013(n)+A007531(n)` -/
def P12403875396431948819.Spec : Prop :=
  ∀ n, P12403875396431948819.a n = A163655 n

end A163655

/-! ## A163655.P978835810740953756

`A140673(n)+A085490(n)`
-/

namespace A163655.P978835810740953756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + A085490 n

end

end A163655.P978835810740953756

namespace A163655

/-- `A140673(n)+A085490(n)` -/
def P978835810740953756.Spec : Prop :=
  ∀ n, P978835810740953756.a n = A163655 n

end A163655

/-! ## A163655.P6548714965549590780

`A198017(n)+A062158(n)`
-/

namespace A163655.P6548714965549590780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198017 n + A062158 n

end

end A163655.P6548714965549590780

namespace A163655

/-- `A198017(n)+A062158(n)` -/
def P6548714965549590780.Spec : Prop :=
  ∀ n, P6548714965549590780.a n = A163655 n

end A163655

/-! ## A163655.P10279714274995011144

`A279895(n)+A034262(n)`
-/

namespace A163655.P10279714274995011144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A034262 n

end

end A163655.P10279714274995011144

namespace A163655

/-- `A279895(n)+A034262(n)` -/
def P10279714274995011144.Spec : Prop :=
  ∀ n, P10279714274995011144.a n = A163655 n

end A163655

/-! ## A163655.P16404912820297108407

`A270867(n)+A046691(n)`
-/

namespace A163655.P16404912820297108407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270867 n + A046691 n

end

end A163655.P16404912820297108407

namespace A163655

/-- `A270867(n)+A046691(n)` -/
def P16404912820297108407.Spec : Prop :=
  ∀ n, P16404912820297108407.a n = A163655 n

end A163655

/-! ## A163655.P1379077424171187897

`A090197(n)-A140063(n)`
-/

namespace A163655.P1379077424171187897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090197 n - A140063 n

end

end A163655.P1379077424171187897

namespace A163655

/-- `A090197(n)-A140063(n)` -/
def P1379077424171187897.Spec : Prop :=
  ∀ n, P1379077424171187897.a n = A163655 n

end A163655

/-! ## A163655.P13767150897161894962

`A370912(n)-A186029(n)`
-/

namespace A163655.P13767150897161894962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - A186029 n

end

end A163655.P13767150897161894962

namespace A163655

/-- `A370912(n)-A186029(n)` -/
def P13767150897161894962.Spec : Prop :=
  ∀ n, P13767150897161894962.a n = A163655 n

end A163655

/-!
# A163656: Arithmetic mean of the n-th and (n+1)st twin prime member A001097.

The programs for A163656, the canonical program `A163656.P15274253072224242917` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163656 has offset 1).

The definition of A163656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163656.P4894159743890306166

`(A001097(n+1)+A001097(n+2))/2`
-/

namespace A163656.P4894159743890306166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001097 (n + 1) + A001097 (n + 2) : ℚ) / 2

end

end A163656.P4894159743890306166

namespace A163656

/-- `(A001097(n+1)+A001097(n+2))/2` -/
def P4894159743890306166.Spec : Prop :=
  ∀ n, P4894159743890306166.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P18095028439547565120

`A280968(n+1)/2`
-/

namespace A163656.P18095028439547565120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280968 (n + 1) : ℚ) / 2

end

end A163656.P18095028439547565120

namespace A163656

/-- `A280968(n+1)/2` -/
def P18095028439547565120.Spec : Prop :=
  ∀ n, P18095028439547565120.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P15274253072224242917

`A096281((n+1)%(2*n+1)+1)/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A163656

/-- `A096281((n+1)%(2*n+1)+1)/2` -/
def P15274253072224242917.Spec : Prop :=
  ∀ n, P15274253072224242917.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P18096242780060364714

`A096281(A065475(n+1))/2`
-/

namespace A163656.P18096242780060364714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (A065475 (n + 1)).toNat : ℚ) / 2

end

end A163656.P18096242780060364714

namespace A163656

/-- `A096281(A065475(n+1))/2` -/
def P18096242780060364714.Spec : Prop :=
  ∀ n, P18096242780060364714.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P1138547564861459392

`A096281(A181440(n+2))/2`
-/

namespace A163656.P1138547564861459392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (A181440 (n + 2)).toNat : ℚ) / 2

end

end A163656.P1138547564861459392

namespace A163656

/-- `A096281(A181440(n+2))/2` -/
def P1138547564861459392.Spec : Prop :=
  ∀ n, P1138547564861459392.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P7286944970935574641

`A096281(A184985(n+2))/2`
-/

namespace A163656.P7286944970935574641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (A184985 (n + 2)).toNat : ℚ) / 2

end

end A163656.P7286944970935574641

namespace A163656

/-- `A096281(A184985(n+2))/2` -/
def P7286944970935574641.Spec : Prop :=
  ∀ n, P7286944970935574641.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P11855465025237699012

`A096281(A103517(n)-n)/2`
-/

namespace A163656.P11855465025237699012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (A103517 n - (n : ℤ)).toNat : ℚ) / 2

end

end A163656.P11855465025237699012

namespace A163656

/-- `A096281(A103517(n)-n)/2` -/
def P11855465025237699012.Spec : Prop :=
  ∀ n, P11855465025237699012.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P2199769080431794755

`A096281(ceil(sqrt(A028387(n))))/2`
-/

namespace A163656.P2199769080431794755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 ⌈Real.sqrt (A028387 n : ℝ)⌉.toNat : ℚ) / 2

end

end A163656.P2199769080431794755

namespace A163656

/-- `A096281(ceil(sqrt(A028387(n))))/2` -/
def P2199769080431794755.Spec : Prop :=
  ∀ n, P2199769080431794755.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P612295795905230767

`(A096281(n+2)-A000038(n))/2`
-/

namespace A163656.P612295795905230767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (n + 2) - A000038 n : ℚ) / 2

end

end A163656.P612295795905230767

namespace A163656

/-- `(A096281(n+2)-A000038(n))/2` -/
def P612295795905230767.Spec : Prop :=
  ∀ n, P612295795905230767.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P15334612632879509327

`(A265760(n+2)+A077800(n+2))/2`
-/

namespace A163656.P15334612632879509327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265760 (n + 2) + A077800 (n + 2) : ℚ) / 2

end

end A163656.P15334612632879509327

namespace A163656

/-- `(A265760(n+2)+A077800(n+2))/2` -/
def P15334612632879509327.Spec : Prop :=
  ∀ n, P15334612632879509327.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P18332505494533699869

`A171821(n+2)+Δ[A171821(n+2)/2]`
-/

namespace A163656.P18332505494533699869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171821 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171821 (n + 2) : ℚ) + (f1 (n + 1) - f1 n)

end

end A163656.P18332505494533699869

namespace A163656

/-- `A171821(n+2)+Δ[A171821(n+2)/2]` -/
def P18332505494533699869.Spec : Prop :=
  ∀ n, P18332505494533699869.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P17164358520630575345

`record[A096281(A052938(n))/2]`
-/

namespace A163656.P17164358520630575345
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096281 (A052938 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163656.P17164358520630575345

namespace A163656

/-- `record[A096281(A052938(n))/2]` -/
def P17164358520630575345.Spec : Prop :=
  ∀ n, P17164358520630575345.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P5597110006917636474

`∩[A096281(n+1), A103288(n+1)]/2`
-/

namespace A163656.P5597110006917636474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163656.P5597110006917636474

namespace A163656

/-- `∩[A096281(n+1), A103288(n+1)]/2` -/
def P5597110006917636474.Spec : Prop :=
  ∀ n, P5597110006917636474.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P17156522663717612940

`∩[A096281(n+1), A177085(n+1)]/2`
-/

namespace A163656.P17156522663717612940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177085 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163656.P17156522663717612940

namespace A163656

/-- `∩[A096281(n+1), A177085(n+1)]/2` -/
def P17156522663717612940.Spec : Prop :=
  ∀ n, P17156522663717612940.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P17424376889940458110

`∩[A096281(n+1), A243937(n+1)]/2`
-/

namespace A163656.P17424376889940458110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243937 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A163656.P17424376889940458110

namespace A163656

/-- `∩[A096281(n+1), A243937(n+1)]/2` -/
def P17424376889940458110.Spec : Prop :=
  ∀ n, P17424376889940458110.a n = (A163656 (n + 1) : ℚ)

end A163656

/-! ## A163656.P4777644733549690699

`A001281(A280968(n+1))`
-/

namespace A163656.P4777644733549690699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A280968 (n + 1)).toNat

end

end A163656.P4777644733549690699

namespace A163656

/-- `A001281(A280968(n+1))` -/
def P4777644733549690699.Spec : Prop :=
  ∀ n, P4777644733549690699.a n = A163656 (n + 1)

end A163656

/-! ## A163656.P8138006749682590534

`A300293(A096281(n+2))`
-/

namespace A163656.P8138006749682590534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A096281 (n + 2)).toNat

end

end A163656.P8138006749682590534

namespace A163656

/-- `A300293(A096281(n+2))` -/
def P8138006749682590534.Spec : Prop :=
  ∀ n, P8138006749682590534.a n = A163656 (n + 1)

end A163656

/-! ## A163656.P17932690215864389361

`A029578(A171821(n+2)+A171821(n+3))`
-/

namespace A163656.P17932690215864389361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A171821 (n + 2) + A171821 (n + 3)).toNat

end

end A163656.P17932690215864389361

namespace A163656

/-- `A029578(A171821(n+2)+A171821(n+3))` -/
def P17932690215864389361.Spec : Prop :=
  ∀ n, P17932690215864389361.a n = A163656 (n + 1)

end A163656

/-!
# A163657: Triangle T(m,n) = 2*m*n + m + n + 8 read by rows.

The programs for A163657, the canonical program `A163657.P2784034745379012211` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163657 has offset 1).

The definition of A163657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163657.P12553146425915926802

`A163672(n+1)+1`
-/

namespace A163657.P12553146425915926802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) + 1

end

end A163657.P12553146425915926802

namespace A163657

/-- `A163672(n+1)+1` -/
def P12553146425915926802.Spec : Prop :=
  ∀ n, P12553146425915926802.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P2784034745379012211

`A163652(n+1)+2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A163657

/-- `A163652(n+1)+2` -/
def P2784034745379012211.Spec : Prop :=
  ∀ n, P2784034745379012211.a n = A163657 (n + 1)

theorem P2784034745379012211.correct : P2784034745379012211.Spec := by
  intro n
  simp only [A163657, Nat.add_sub_cancel]

end A163657

/-! ## A163657.P2983645680183156959

`A163674(n+1)-1`
-/

namespace A163657.P2983645680183156959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 1

end

end A163657.P2983645680183156959

namespace A163657

/-- `A163674(n+1)-1` -/
def P2983645680183156959.Spec : Prop :=
  ∀ n, P2983645680183156959.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P9615402327811935692

`A154631(n+1)+3`
-/

namespace A163657.P9615402327811935692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) + 3

end

end A163657.P9615402327811935692

namespace A163657

/-- `A154631(n+1)+3` -/
def P9615402327811935692.Spec : Prop :=
  ∀ n, P9615402327811935692.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P892021687146209901

`A155704(n+1)-2`
-/

namespace A163657.P892021687146209901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 2

end

end A163657.P892021687146209901

namespace A163657

/-- `A155704(n+1)-2` -/
def P892021687146209901.Spec : Prop :=
  ∀ n, P892021687146209901.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P15340049719653177311

`A154685(n+1)+4`
-/

namespace A163657.P15340049719653177311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 4

end

end A163657.P15340049719653177311

namespace A163657

/-- `A154685(n+1)+4` -/
def P15340049719653177311.Spec : Prop :=
  ∀ n, P15340049719653177311.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P3723328739664283463

`A154681(n+1)+5`
-/

namespace A163657.P3723328739664283463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 5

end

end A163657.P3723328739664283463

namespace A163657

/-- `A154681(n+1)+5` -/
def P3723328739664283463.Spec : Prop :=
  ∀ n, P3723328739664283463.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P4503507354453854586

`A155705(n+1)+6`
-/

namespace A163657.P4503507354453854586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 6

end

end A163657.P4503507354453854586

namespace A163657

/-- `A155705(n+1)+6` -/
def P4503507354453854586.Spec : Prop :=
  ∀ n, P4503507354453854586.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P16939763483021768892

`A144650(n+1)+7`
-/

namespace A163657.P16939763483021768892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 7

end

end A163657.P16939763483021768892

namespace A163657

/-- `A144650(n+1)+7` -/
def P16939763483021768892.Spec : Prop :=
  ∀ n, P16939763483021768892.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P11312410149125278631

`A083487(n+1)+8`
-/

namespace A163657.P11312410149125278631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 8

end

end A163657.P11312410149125278631

namespace A163657

/-- `A083487(n+1)+8` -/
def P11312410149125278631.Spec : Prop :=
  ∀ n, P11312410149125278631.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P8686472092396493779

`A144562(n+1)+9`
-/

namespace A163657.P8686472092396493779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 9

end

end A163657.P8686472092396493779

namespace A163657

/-- `A144562(n+1)+9` -/
def P8686472092396493779.Spec : Prop :=
  ∀ n, P8686472092396493779.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P16579515260204852401

`A155546(n+1)+13`
-/

namespace A163657.P16579515260204852401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 13

end

end A163657.P16579515260204852401

namespace A163657

/-- `A155546(n+1)+13` -/
def P16579515260204852401.Spec : Prop :=
  ∀ n, P16579515260204852401.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P7909551035284267264

`A000027(A155550(n+1)+8)+6`
-/

namespace A163657.P7909551035284267264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A155550 (n + 1) + 8).toNat + 6

end

end A163657.P7909551035284267264

namespace A163657

/-- `A000027(A155550(n+1)+8)+6` -/
def P7909551035284267264.Spec : Prop :=
  ∀ n, P7909551035284267264.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P9645698179755401678

`A155151(n+1)-A155550(n+1)`
-/

namespace A163657.P9645698179755401678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A155550 (n + 1)

end

end A163657.P9645698179755401678

namespace A163657

/-- `A155151(n+1)-A155550(n+1)` -/
def P9645698179755401678.Spec : Prop :=
  ∀ n, P9645698179755401678.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P10334558807527093952

`A172292(n+1)-A144670(n+1)`
-/

namespace A163657.P10334558807527093952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A144670 (n + 1)

end

end A163657.P10334558807527093952

namespace A163657

/-- `A172292(n+1)-A144670(n+1)` -/
def P10334558807527093952.Spec : Prop :=
  ∀ n, P10334558807527093952.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P17004156819736190046

`A163676(n+1)-A155551(n+1)`
-/

namespace A163657.P17004156819736190046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - A155551 (n + 1)

end

end A163657.P17004156819736190046

namespace A163657

/-- `A163676(n+1)-A155551(n+1)` -/
def P17004156819736190046.Spec : Prop :=
  ∀ n, P17004156819736190046.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P991778477879544843

`A155151(n+1)-(A144670(n+1)+1)`
-/

namespace A163657.P991778477879544843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A144670 (n + 1) + 1)

end

end A163657.P991778477879544843

namespace A163657

/-- `A155151(n+1)-(A144670(n+1)+1)` -/
def P991778477879544843.Spec : Prop :=
  ∀ n, P991778477879544843.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P14736407292182300757

`A155156(n+1)+1-A144670(n+1)`
-/

namespace A163657.P14736407292182300757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + (1 - A144670 (n + 1))

end

end A163657.P14736407292182300757

namespace A163657

/-- `A155156(n+1)+1-A144670(n+1)` -/
def P14736407292182300757.Spec : Prop :=
  ∀ n, P14736407292182300757.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P3449700243812672902

`A155156(n+1)-(A155551(n+1)+1)`
-/

namespace A163657.P3449700243812672902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - (A155551 (n + 1) + 1)

end

end A163657.P3449700243812672902

namespace A163657

/-- `A155156(n+1)-(A155551(n+1)+1)` -/
def P3449700243812672902.Spec : Prop :=
  ∀ n, P3449700243812672902.a n = A163657 (n + 1)

end A163657

/-! ## A163657.P12379127082248040478

`A172292(n+1)+1-A155550(n+1)`
-/

namespace A163657.P12379127082248040478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + (1 - A155550 (n + 1))

end

end A163657.P12379127082248040478

namespace A163657

/-- `A172292(n+1)+1-A155550(n+1)` -/
def P12379127082248040478.Spec : Prop :=
  ∀ n, P12379127082248040478.a n = A163657 (n + 1)

end A163657

/-!
# A163659: L.g.f.: Sum_{n>=1} a(n)*x^n/n = log(S(x)/x) where S(x) is the g.f. of Stern's diatomic series (A002487).

The programs for A163659, the canonical program `A163659.P14378206319616432805` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163659 has offset 1).

The definition of A163659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163659.P14378206319616432805

`A038712(n+1)*A061347(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163659

/-- `A038712(n+1)*A061347(n+1)` -/
def P14378206319616432805.Spec : Prop :=
  ∀ n, P14378206319616432805.a n = A163659 (n + 1)

theorem P14378206319616432805.correct : P14378206319616432805.Spec := by
  intro n
  simp only [A163659, Nat.add_sub_cancel]

end A163659

/-! ## A163659.P3798701463909974745

`(A118830(2*(n+1))-1)*A061347(n+1)`
-/

namespace A163659.P3798701463909974745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118830 (2 * (n + 1)) - 1) * A061347 (n + 1)

end

end A163659.P3798701463909974745

namespace A163659

/-- `(A118830(2*(n+1))-1)*A061347(n+1)` -/
def P3798701463909974745.Spec : Prop :=
  ∀ n, P3798701463909974745.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P9456593968588442805

`A000203(2^val(n+1, 2))*A061347(n+1)`
-/

namespace A163659.P9456593968588442805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 ^ SequenceMachineLib.valuation (n + 1) 2) * A061347 (n + 1)

end

end A163659.P9456593968588442805

namespace A163659

/-- `A000203(2^val(n+1, 2))*A061347(n+1)` -/
def P9456593968588442805.Spec : Prop :=
  ∀ n, P9456593968588442805.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P6212774196617392178

`∑{d}[n+1, A046913(#)*A349343((n+1)/#)]`
-/

namespace A163659.P6212774196617392178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046913 d * A349343 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A163659.P6212774196617392178

namespace A163659

/-- `∑{d}[n+1, A046913(#)*A349343((n+1)/#)]` -/
def P6212774196617392178.Spec : Prop :=
  ∀ n, P6212774196617392178.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P5002701479233491589

`∑{d}[n+1, A061347(#)*A099894((n+1)/#-1)]`
-/

namespace A163659.P5002701479233491589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061347 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A163659.P5002701479233491589

namespace A163659

/-- `∑{d}[n+1, A061347(#)*A099894((n+1)/#-1)]` -/
def P5002701479233491589.Spec : Prop :=
  ∀ n, P5002701479233491589.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P10598994594566662582

`A000203(A006519(n+1))*A061347(n+1)`
-/

namespace A163659.P10598994594566662582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006519 (n + 1)).toNat * A061347 (n + 1)

end

end A163659.P10598994594566662582

namespace A163659

/-- `A000203(A006519(n+1))*A061347(n+1)` -/
def P10598994594566662582.Spec : Prop :=
  ∀ n, P10598994594566662582.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P4964978453387509989

`A038712(n+1)*A237649(A038500(n+1))`
-/

namespace A163659.P4964978453387509989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A237649 (A038500 (n + 1)).toNat

end

end A163659.P4964978453387509989

namespace A163659

/-- `A038712(n+1)*A237649(A038500(n+1))` -/
def P4964978453387509989.Spec : Prop :=
  ∀ n, P4964978453387509989.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P349707417024452165

`A061347(n+1)/A116607(A000265(n+1))*A116607(n+1)`
-/

namespace A163659.P349707417024452165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061347 (n + 1) : ℚ) / (A116607 (A000265 (n + 1)).toNat : ℚ) * (A116607 (n + 1) : ℚ)

end

end A163659.P349707417024452165

namespace A163659

/-- `A061347(n+1)/A116607(A000265(n+1))*A116607(n+1)` -/
def P349707417024452165.Spec : Prop :=
  ∀ n, P349707417024452165.a n = (A163659 (n + 1) : ℚ)

end A163659

/-! ## A163659.P4504648602612402810

`A057079(2*n)*A135481(2*n+1)`
-/

namespace A163659.P4504648602612402810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A135481 (2 * n + 1)

end

end A163659.P4504648602612402810

namespace A163659

/-- `A057079(2*n)*A135481(2*n+1)` -/
def P4504648602612402810.Spec : Prop :=
  ∀ n, P4504648602612402810.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P1406716655521695026

`(A006519(2*(n+1))-1)*A061347(n+1)`
-/

namespace A163659.P1406716655521695026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006519 (2 * (n + 1)) - 1) * A061347 (n + 1)

end

end A163659.P1406716655521695026

namespace A163659

/-- `(A006519(2*(n+1))-1)*A061347(n+1)` -/
def P1406716655521695026.Spec : Prop :=
  ∀ n, P1406716655521695026.a n = A163659 (n + 1)

end A163659

/-! ## A163659.P7861378047840289858

`(A079343(2*n+1)-A079343(2*n))*A135481(2*n+1)`
-/

namespace A163659.P7861378047840289858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079343 (2 * n + 1) - A079343 (2 * n)) * A135481 (2 * n + 1)

end

end A163659.P7861378047840289858

namespace A163659

/-- `(A079343(2*n+1)-A079343(2*n))*A135481(2*n+1)` -/
def P7861378047840289858.Spec : Prop :=
  ∀ n, P7861378047840289858.a n = A163659 (n + 1)

end A163659

/-!
# A163661: a(n) = n*(2*n^2 + 5*n + 17)/2.

The programs for A163661, the canonical program `A163661.P10068493561119576264` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163661 has offset 0).

The definition of A163661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+5*n+17)/2` (program `A163661.P11619832103243853981`, by `A163661.P11619832103243853981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163661.P11619832103243853981

`n*(2*n²+5*n+17)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163661.P11619832103243853981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 * n ^ 2 + 5 * n + 17 : ℚ) / 2)

end

end A163661.P11619832103243853981

namespace A163661

/-- `n*(2*n²+5*n+17)/2` -/
def P11619832103243853981.Spec : Prop :=
  ∀ n, P11619832103243853981.a n = (A163661 n : ℚ)

theorem P11619832103243853981.correct : P11619832103243853981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163661, Nat.add_sub_cancel, A163661.P11619832103243853981.a, A163661.P10068493561119576264.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163661, Nat.add_sub_cancel, A163661.P11619832103243853981.a, A163661.P10068493561119576264.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163661

/-! ## A163661.P10068493561119576264

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=12, a(2)=35, a(3)=75`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163661

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10068493561119576264.Spec : Prop :=
  ∀ n, P10068493561119576264.a n = A163661 n

theorem P10068493561119576264.correct : P10068493561119576264.Spec := by
  intro n
  simp only [A163661]

end A163661

/-! ## A163661.P5487007577709363334

`A163655(n)+2*n`
-/

namespace A163661.P5487007577709363334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163655 n + (2 * n : ℤ)

end

end A163661.P5487007577709363334

namespace A163661

/-- `A163655(n)+2*n` -/
def P5487007577709363334.Spec : Prop :=
  ∀ n, P5487007577709363334.a n = A163661 n

end A163661

/-! ## A163661.P9896716279157486522

`A163673(n)+n`
-/

namespace A163661.P9896716279157486522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 n + (n : ℤ)

end

end A163661.P9896716279157486522

namespace A163661

/-- `A163673(n)+n` -/
def P9896716279157486522.Spec : Prop :=
  ∀ n, P9896716279157486522.a n = A163661 n

end A163661

/-! ## A163661.P16094935108083883852

`A163675(n)-n`
-/

namespace A163661.P16094935108083883852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163675 n - (n : ℤ)

end

end A163661.P16094935108083883852

namespace A163661

/-- `A163675(n)-n` -/
def P16094935108083883852.Spec : Prop :=
  ∀ n, P16094935108083883852.a n = A163661 n

end A163661

/-! ## A163661.P15783054203585458026

`A059270(n)+A028566(n)`
-/

namespace A163661.P15783054203585458026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A028566 n

end

end A163661.P15783054203585458026

namespace A163661

/-- `A059270(n)+A028566(n)` -/
def P15783054203585458026.Spec : Prop :=
  ∀ n, P15783054203585458026.a n = A163661 n

end A163661

/-! ## A163661.P2095809486319128032

`A140674(n)+A011379(n)`
-/

namespace A163661.P2095809486319128032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + A011379 n

end

end A163661.P2095809486319128032

namespace A163661

/-- `A140674(n)+A011379(n)` -/
def P2095809486319128032.Spec : Prop :=
  ∀ n, P2095809486319128032.a n = A163661 n

end A163661

/-! ## A163661.P4524336494121435864

`A140673(n)+A027444(n)`
-/

namespace A163661.P4524336494121435864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + A027444 n

end

end A163661.P4524336494121435864

namespace A163661

/-- `A140673(n)+A027444(n)` -/
def P4524336494121435864.Spec : Prop :=
  ∀ n, P4524336494121435864.a n = A163661 n

end A163661

/-! ## A163661.P9892929964287536221

`A147656(n)+A028563(n)`
-/

namespace A163661.P9892929964287536221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A028563 n

end

end A163661.P9892929964287536221

namespace A163661

/-- `A147656(n)+A028563(n)` -/
def P9892929964287536221.Spec : Prop :=
  ∀ n, P9892929964287536221.a n = A163661 n

end A163661

/-! ## A163661.P12867143789064107217

`A131874(n)+A062158(n)`
-/

namespace A163661.P12867143789064107217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131874 n + A062158 n

end

end A163661.P12867143789064107217

namespace A163661

/-- `A131874(n)+A062158(n)` -/
def P12867143789064107217.Spec : Prop :=
  ∀ n, P12867143789064107217.a n = A163661 n

end A163661

/-! ## A163661.P18141369386716341585

`A140675(n)+A085490(n)`
-/

namespace A163661.P18141369386716341585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140675 n + A085490 n

end

end A163661.P18141369386716341585

namespace A163661

/-- `A140675(n)+A085490(n)` -/
def P18141369386716341585.Spec : Prop :=
  ∀ n, P18141369386716341585.a n = A163661 n

end A163661

/-! ## A163661.P16448505047463284304

`A264443(n)+A004068(n)`
-/

namespace A163661.P16448505047463284304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n + A004068 n

end

end A163661.P16448505047463284304

namespace A163661

/-- `A264443(n)+A004068(n)` -/
def P16448505047463284304.Spec : Prop :=
  ∀ n, P16448505047463284304.a n = A163661 n

end A163661

/-! ## A163661.P11742210278744803404

`A302906(n)+A054602(n)`
-/

namespace A163661.P11742210278744803404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + A054602 n

end

end A163661.P11742210278744803404

namespace A163661

/-- `A302906(n)+A054602(n)` -/
def P11742210278744803404.Spec : Prop :=
  ∀ n, P11742210278744803404.a n = A163661 n

end A163661

/-! ## A163661.P5820303314272105831

`A277978(n)+A160378(n)`
-/

namespace A163661.P5820303314272105831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277978 n + A160378 n

end

end A163661.P5820303314272105831

namespace A163661

/-- `A277978(n)+A160378(n)` -/
def P5820303314272105831.Spec : Prop :=
  ∀ n, P5820303314272105831.a n = A163661 n

end A163661

/-! ## A163661.P15683557425187533036

`A242659(n)+A211013(n)`
-/

namespace A163661.P15683557425187533036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n + A211013 n

end

end A163661.P15683557425187533036

namespace A163661

/-- `A242659(n)+A211013(n)` -/
def P15683557425187533036.Spec : Prop :=
  ∀ n, P15683557425187533036.a n = A163661 n

end A163661

/-! ## A163661.P9561955093868957034

`A370912(n)-A022264(n)`
-/

namespace A163661.P9561955093868957034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - A022264 n

end

end A163661.P9561955093868957034

namespace A163661

/-- `A370912(n)-A022264(n)` -/
def P9561955093868957034.Spec : Prop :=
  ∀ n, P9561955093868957034.a n = A163661 n

end A163661

/-! ## A163661.P12861354193270832195

`abs(A163675(n)+A001489(n))`
-/

namespace A163661.P12861354193270832195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163675 n + A001489 n|

end

end A163661.P12861354193270832195

namespace A163661

/-- `abs(A163675(n)+A001489(n))` -/
def P12861354193270832195.Spec : Prop :=
  ∀ n, P12861354193270832195.a n = A163661 n

end A163661

/-! ## A163661.P4830052007708896073

`abs(A001489(n)-A163673(n))`
-/

namespace A163661.P4830052007708896073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A163673 n|

end

end A163661.P4830052007708896073

namespace A163661

/-- `abs(A001489(n)-A163673(n))` -/
def P4830052007708896073.Spec : Prop :=
  ∀ n, P4830052007708896073.a n = A163661 n

end A163661

/-! ## A163661.P6951365913510381035

`abs(A001057(2*n)-A163673(n))`
-/

namespace A163661.P6951365913510381035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (2 * n) - A163673 n|

end

end A163661.P6951365913510381035

namespace A163661

/-- `abs(A001057(2*n)-A163673(n))` -/
def P6951365913510381035.Spec : Prop :=
  ∀ n, P6951365913510381035.a n = A163661 n

end A163661

/-! ## A163661.P16524661169766233334

`A211379(2*(n+2))+A056126(n)`
-/

namespace A163661.P16524661169766233334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211379 (2 * (n + 2)) + A056126 n

end

end A163661.P16524661169766233334

namespace A163661

/-- `A211379(2*(n+2))+A056126(n)` -/
def P16524661169766233334.Spec : Prop :=
  ∀ n, P16524661169766233334.a n = A163661 n

end A163661

/-!
# A163662: A020988 written in base 2.

The programs for A163662, the canonical program `A163662.P15022582128547681332` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163662 has offset 1).

The definition of A163662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163662.P15022582128547681332

`10/99*(10^(2*(n+1))-1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163662

/-- `10/99*(10^(2*(n+1))-1)` -/
def P15022582128547681332.Spec : Prop :=
  ∀ n, P15022582128547681332.a n = (A163662 (n + 1) : ℚ)

end A163662

/-! ## A163662.P4939351528025862089

`lcm(10, ∑[(10^n)²])`
-/

namespace A163662.P4939351528025862089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163662.P4939351528025862089

namespace A163662

/-- `lcm(10, ∑[(10^n)²])` -/
def P4939351528025862089.Spec : Prop :=
  ∀ n, (P4939351528025862089.a n : ℤ) = A163662 (n + 1)

end A163662

/-! ## A163662.P1411424205229279637

`and(∑[10*(10^n)²], -1)`
-/

namespace A163662.P1411424205229279637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A163662.P1411424205229279637

namespace A163662

/-- `and(∑[10*(10^n)²], -1)` -/
def P1411424205229279637.Spec : Prop :=
  ∀ n, P1411424205229279637.a n = A163662 (n + 1)

end A163662

/-! ## A163662.P2802348386914722497

`or(2, ∑[10^(2*n+1)])`
-/

namespace A163662.P2802348386914722497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163662.P2802348386914722497

namespace A163662

/-- `or(2, ∑[10^(2*n+1)])` -/
def P2802348386914722497.Spec : Prop :=
  ∀ n, (P2802348386914722497.a n : ℤ) = A163662 (n + 1)

end A163662

/-! ## A163662.P1138012714566682803

`floor(∑[10*10*a(n-1)])` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A163662.P1138012714566682803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  10 * (10 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163662.P1138012714566682803

namespace A163662

/-- `floor(∑[10*10*a(n-1)])` -/
def P1138012714566682803.Spec : Prop :=
  ∀ n, (P1138012714566682803.a n : ℤ) = A163662 (n + 1)

end A163662

/-!
# A163663: a(0) = 0 and A059153(n-1) written in base 2 otherwise.

The programs for A163663, the canonical program `A163663.P6786322968925299673` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163663 has offset 0).

The definition of A163663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163663.P6786322968925299673

`10/9*10^n*(10^n-1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163663

/-- `10/9*10^n*(10^n-1)` -/
def P6786322968925299673.Spec : Prop :=
  ∀ n, P6786322968925299673.a n = (A163663 n : ℚ)

end A163663

/-! ## A163663.P7556534951941996452

`(10^n)²+10*a(n-1)` with `a(0)=0`
-/

namespace A163663.P7556534951941996452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (10 ^ n) ^ 2 + 10 * a (n - 1)

end

end A163663.P7556534951941996452

namespace A163663

/-- `(10^n)²+10*a(n-1)` -/
def P7556534951941996452.Spec : Prop :=
  ∀ n, (P7556534951941996452.a n : ℤ) = A163663 n

end A163663

/-! ## A163663.P2579490817819731476

`lcm(((dr(9^n)+1)^n-1)/9, 10^(n+1))`
-/

namespace A163663.P2579490817819731476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((((SequenceMachineLib.digitalRoot (9 ^ n : ℤ) + 1) ^ n : ℤ) - 1 : ℚ) / 9)) (10 ^ (n + 1) : ℤ)

end

end A163663.P2579490817819731476

namespace A163663

/-- `lcm(((dr(9^n)+1)^n-1)/9, 10^(n+1))` -/
def P2579490817819731476.Spec : Prop :=
  ∀ n, (P2579490817819731476.a n : ℤ) = A163663 n

end A163663

/-! ## A163663.P5120555309262030857

`record[Δ[-A290233(n)]]`
-/

namespace A163663.P5120555309262030857
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A290233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163663.P5120555309262030857

namespace A163663

/-- `record[Δ[-A290233(n)]]` -/
def P5120555309262030857.Spec : Prop :=
  ∀ n, P5120555309262030857.a n = A163663 n

end A163663

/-! ## A163663.P1577218876065947319

`or(1, A290412(2*n))-1`
-/

namespace A163663.P1577218876065947319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290412 (2 * n)) - 1

end

end A163663.P1577218876065947319

namespace A163663

/-- `or(1, A290412(2*n))-1` -/
def P1577218876065947319.Spec : Prop :=
  ∀ n, P1577218876065947319.a n = A163663 n

end A163663

/-! ## A163663.P13645488812243193632

`or(1, A290525(2*n))-1`
-/

namespace A163663.P13645488812243193632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A290525 (2 * n)) - 1

end

end A163663.P13645488812243193632

namespace A163663

/-- `or(1, A290525(2*n))-1` -/
def P13645488812243193632.Spec : Prop :=
  ∀ n, P13645488812243193632.a n = A163663 n

end A163663

/-! ## A163663.P17142706311656047478

`lcm(10^(n+1), A002275(n))`
-/

namespace A163663.P17142706311656047478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 ^ (n + 1) : ℤ) (A002275 n)

end

end A163663.P17142706311656047478

namespace A163663

/-- `lcm(10^(n+1), A002275(n))` -/
def P17142706311656047478.Spec : Prop :=
  ∀ n, (P17142706311656047478.a n : ℤ) = A163663 n

end A163663

/-! ## A163663.P13327111276628327628

`A138148(n)-floor(10^n/9)`
-/

namespace A163663.P13327111276628327628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138148 n - ⌊(10 ^ n : ℚ) / 9⌋

end

end A163663.P13327111276628327628

namespace A163663

/-- `A138148(n)-floor(10^n/9)` -/
def P13327111276628327628.Spec : Prop :=
  ∀ n, P13327111276628327628.a n = A163663 n

end A163663

/-! ## A163663.P1569158223349650001

`A100706(n)-A002275(n+1)`
-/

namespace A163663.P1569158223349650001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100706 n - A002275 (n + 1)

end

end A163663.P1569158223349650001

namespace A163663

/-- `A100706(n)-A002275(n+1)` -/
def P1569158223349650001.Spec : Prop :=
  ∀ n, P1569158223349650001.a n = A163663 n

end A163663

/-! ## A163663.P14964729907401745890

`A105279(2*n)-A105279(n)`
-/

namespace A163663.P14964729907401745890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105279 (2 * n) - A105279 n

end

end A163663.P14964729907401745890

namespace A163663

/-- `A105279(2*n)-A105279(n)` -/
def P14964729907401745890.Spec : Prop :=
  ∀ n, P14964729907401745890.a n = A163663 n

end A163663

/-!
# A163664: a(n) = 10^(2*n) + 10^n.

The programs for A163664, the canonical program `A163664.P13528938347737039620` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163664 has offset 1).

The definition of A163664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^(2*(n+1))+10^(n+1)` (program `A163664.P13528938347737039620`, by `A163664.P13528938347737039620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163664.P13528938347737039620

`10^(2*(n+1))+10^(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163664

/-- `10^(2*(n+1))+10^(n+1)` -/
def P13528938347737039620.Spec : Prop :=
  ∀ n, (P13528938347737039620.a n : ℤ) = A163664 (n + 1)

theorem P13528938347737039620.correct : P13528938347737039620.Spec := by
  intro n
  simp only [A163664, Nat.add_sub_cancel]

end A163664

/-! ## A163664.P2823833365314326971

`10*A163449(n+1)`
-/

namespace A163664.P2823833365314326971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A163449 (n + 1)

end

end A163664.P2823833365314326971

namespace A163664

/-- `10*A163449(n+1)` -/
def P2823833365314326971.Spec : Prop :=
  ∀ n, P2823833365314326971.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P12298439737208191017

`lcm(10^(n+1)+1, 10^(n+1))`
-/

namespace A163664.P12298439737208191017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (10 ^ (n + 1) + 1) (10 ^ (n + 1))

end

end A163664.P12298439737208191017

namespace A163664

/-- `lcm(10^(n+1)+1, 10^(n+1))` -/
def P12298439737208191017.Spec : Prop :=
  ∀ n, (P12298439737208191017.a n : ℤ) = A163664 (n + 1)

end A163664

/-! ## A163664.P11045468635398165786

`2*A037156(n+1)`
-/

namespace A163664.P11045468635398165786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037156 (n + 1)

end

end A163664.P11045468635398165786

namespace A163664

/-- `2*A037156(n+1)` -/
def P11045468635398165786.Spec : Prop :=
  ∀ n, P11045468635398165786.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P1053235076071836317

`A164370(2*(n+2))`
-/

namespace A163664.P1053235076071836317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164370 (2 * (n + 2))

end

end A163664.P1053235076071836317

namespace A163664

/-- `A164370(2*(n+2))` -/
def P1053235076071836317.Spec : Prop :=
  ∀ n, P1053235076071836317.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P1529943686959991077

`xor(1, A066138(n+1))`
-/

namespace A163664.P1529943686959991077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A066138 (n + 1))

end

end A163664.P1529943686959991077

namespace A163664

/-- `xor(1, A066138(n+1))` -/
def P1529943686959991077.Spec : Prop :=
  ∀ n, P1529943686959991077.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P17404029001583992217

`∑[abs(Δ[A135577(n+1)])]`
-/

namespace A163664.P17404029001583992217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135577 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163664.P17404029001583992217

namespace A163664

/-- `∑[abs(Δ[A135577(n+1)])]` -/
def P17404029001583992217.Spec : Prop :=
  ∀ n, P17404029001583992217.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P15289838062240364867

`10*A164046(2*n+1)`
-/

namespace A163664.P15289838062240364867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A164046 (2 * n + 1)

end

end A163664.P15289838062240364867

namespace A163664

/-- `10*A164046(2*n+1)` -/
def P15289838062240364867.Spec : Prop :=
  ∀ n, P15289838062240364867.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P8193046727973235925

`floor((A199682(n+1)/2)²)`
-/

namespace A163664.P8193046727973235925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A199682 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A163664.P8193046727973235925

namespace A163664

/-- `floor((A199682(n+1)/2)²)` -/
def P8193046727973235925.Spec : Prop :=
  ∀ n, P8193046727973235925.a n = A163664 (n + 1)

end A163664

/-! ## A163664.P13207605908728273886

`A052216((n+1)²+(n+2)²)`
-/

namespace A163664.P13207605908728273886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A163664.P13207605908728273886

namespace A163664

/-- `A052216((n+1)²+(n+2)²)` -/
def P13207605908728273886.Spec : Prop :=
  ∀ n, P13207605908728273886.a n = A163664 (n + 1)

end A163664

/-!
# A163665: Numbers k such that k=prime(phi(sigma(pi(k)))).

The programs for A163665, there is no canonical definition to state claims against.
-/

/-! ## A163665.P17363634923691789854

`A000040(A001229(n+1))`
-/

namespace A163665.P17363634923691789854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001229 (n + 1)).toNat

end

end A163665.P17363634923691789854

/-! ## A163665.P8247589084883804675

`A008578(A001229(n+1)+1)`
-/

namespace A163665.P8247589084883804675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A001229 (n + 1) + 1).toNat

end

end A163665.P8247589084883804675

/-! ## A163665.P5731412426741462659

`A182986(A001229(n+1)+1)`
-/

namespace A163665.P5731412426741462659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A001229 (n + 1) + 1).toNat

end

end A163665.P5731412426741462659

/-! ## A163665.P9668835080249116951

`A158611(A001229(n+1)+2)`
-/

namespace A163665.P9668835080249116951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A001229 (n + 1) + 2).toNat

end

end A163665.P9668835080249116951

/-!
# A163666: Numbers k such that k=prime(sigma(phi(pi(k)))).

The programs for A163666, there is no canonical definition to state claims against.
-/

/-! ## A163666.P8373308511819633614

`A000040(A018784(n+1))`
-/

namespace A163666.P8373308511819633614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A018784 (n + 1)).toNat

end

end A163666.P8373308511819633614

/-! ## A163666.P5337175607150907333

`A067161(A001229(n+1))`
-/

namespace A163666.P5337175607150907333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067161 (A001229 (n + 1)).toNat

end

end A163666.P5337175607150907333

/-! ## A163666.P13874002492080450914

`A008578(A018784(n+1)+1)`
-/

namespace A163666.P13874002492080450914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A018784 (n + 1) + 1).toNat

end

end A163666.P13874002492080450914

/-!
# A163667: Numbers k such that sigma(k) = 9*phi(k).

The programs for A163667, there is no canonical definition to state claims against.
-/

/-! ## A163667.P1860397907870735522

`filter[A293391(n+1), A294937(#)]`
-/

namespace A163667.P1860397907870735522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A163667.P1860397907870735522

/-! ## A163667.P5509466014754777888

`filter[A293391(n+1), A179527(#)]`
-/

namespace A163667.P5509466014754777888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179527 (f1 j).toNat = 1) n)

end

end A163667.P5509466014754777888

/-!
# A163668: Number of reduced words of length n in Coxeter group on 39 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163668, there is no canonical definition to state claims against.
-/

/-! ## A163668.P17170400183013249587

`A165688(n)-A184974(A000217(n)-n)`
-/

namespace A163668.P17170400183013249587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165688 n - A184974 (A000217 n - (n : ℤ)).toNat

end

end A163668.P17170400183013249587

/-!
# A163671: Expansion of Sum_{k>=1} x^k / (1 - x^(k^2)).

The programs for A163671, there is no canonical definition to state claims against.
-/

/-! ## A163671.P6124199172561388139

`A000005(n+1)-A394830(n+1)`
-/

namespace A163671.P6124199172561388139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A394830 (n + 1)

end

end A163671.P6124199172561388139

/-! ## A163671.P2632142167284883693

`A006530(gcd(A046523(n+1), A345676(n+1)))`
-/

namespace A163671.P2632142167284883693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A046523 (n + 1)) (A345676 (n + 1)))

end

end A163671.P2632142167284883693

/-! ## A163671.P952629036293892898

`ceil(A007538(A183092(n+1))-acot(n))`
-/

namespace A163671.P952629036293892898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007538 (A183092 (n + 1)).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A163671.P952629036293892898

/-! ## A163671.P3019548350466514211

`A000005(gcd(A019222(n+3), A034444(n+1)))`
-/

namespace A163671.P3019548350466514211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A019222 (n + 3)) (A034444 (n + 1)))

end

end A163671.P3019548350466514211

/-! ## A163671.P11586560091837912515

`A007538(A183092(n+1))-A000045(C(2, n+2))`
-/

namespace A163671.P11586560091837912515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (A183092 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A163671.P11586560091837912515

/-!
# A163672: Triangle T(n,m) = 2mn + m + n + 7 read by rows.

The programs for A163672, the canonical program `A163672.P97015289542930309` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163672 has offset 1).

The definition of A163672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163672.P97015289542930309

`A163652(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A163672

/-- `A163652(n+1)+1` -/
def P97015289542930309.Spec : Prop :=
  ∀ n, P97015289542930309.a n = A163672 (n + 1)

theorem P97015289542930309.correct : P97015289542930309.Spec := by
  intro n
  simp only [A163672, Nat.add_sub_cancel]

end A163672

/-! ## A163672.P8029072301243352934

`A154631(n+1)+2`
-/

namespace A163672.P8029072301243352934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) + 2

end

end A163672.P8029072301243352934

namespace A163672

/-- `A154631(n+1)+2` -/
def P8029072301243352934.Spec : Prop :=
  ∀ n, P8029072301243352934.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P1587620751603680728

`A163657(n+1)-1`
-/

namespace A163672.P1587620751603680728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) - 1

end

end A163672.P1587620751603680728

namespace A163672

/-- `A163657(n+1)-1` -/
def P1587620751603680728.Spec : Prop :=
  ∀ n, P1587620751603680728.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P7830098952234869409

`A154685(n+1)+3`
-/

namespace A163672.P7830098952234869409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 3

end

end A163672.P7830098952234869409

namespace A163672

/-- `A154685(n+1)+3` -/
def P7830098952234869409.Spec : Prop :=
  ∀ n, P7830098952234869409.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P9724904423832168852

`A163674(n+1)-2`
-/

namespace A163672.P9724904423832168852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163674 (n + 1) - 2

end

end A163672.P9724904423832168852

namespace A163672

/-- `A163674(n+1)-2` -/
def P9724904423832168852.Spec : Prop :=
  ∀ n, P9724904423832168852.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P17585863178708960870

`A154681(n+1)+4`
-/

namespace A163672.P17585863178708960870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 4

end

end A163672.P17585863178708960870

namespace A163672

/-- `A154681(n+1)+4` -/
def P17585863178708960870.Spec : Prop :=
  ∀ n, P17585863178708960870.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P10571585810935634585

`A155704(n+1)-3`
-/

namespace A163672.P10571585810935634585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 3

end

end A163672.P10571585810935634585

namespace A163672

/-- `A155704(n+1)-3` -/
def P10571585810935634585.Spec : Prop :=
  ∀ n, P10571585810935634585.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P4389109774572695303

`A155705(n+1)+5`
-/

namespace A163672.P4389109774572695303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 5

end

end A163672.P4389109774572695303

namespace A163672

/-- `A155705(n+1)+5` -/
def P4389109774572695303.Spec : Prop :=
  ∀ n, P4389109774572695303.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P6938080751035562030

`A144650(n+1)+6`
-/

namespace A163672.P6938080751035562030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 6

end

end A163672.P6938080751035562030

namespace A163672

/-- `A144650(n+1)+6` -/
def P6938080751035562030.Spec : Prop :=
  ∀ n, P6938080751035562030.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P14530664113016371024

`A083487(n+1)+7`
-/

namespace A163672.P14530664113016371024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 7

end

end A163672.P14530664113016371024

namespace A163672

/-- `A083487(n+1)+7` -/
def P14530664113016371024.Spec : Prop :=
  ∀ n, P14530664113016371024.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P15719975702234164766

`A144562(n+1)+8`
-/

namespace A163672.P15719975702234164766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 8

end

end A163672.P15719975702234164766

namespace A163672

/-- `A144562(n+1)+8` -/
def P15719975702234164766.Spec : Prop :=
  ∀ n, P15719975702234164766.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P15472354914409231250

`A154680(n+1)+9`
-/

namespace A163672.P15472354914409231250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + 9

end

end A163672.P15472354914409231250

namespace A163672

/-- `A154680(n+1)+9` -/
def P15472354914409231250.Spec : Prop :=
  ∀ n, P15472354914409231250.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P16457428561905020416

`A155546(n+1)+12`
-/

namespace A163672.P16457428561905020416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 12

end

end A163672.P16457428561905020416

namespace A163672

/-- `A155546(n+1)+12` -/
def P16457428561905020416.Spec : Prop :=
  ∀ n, P16457428561905020416.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P11551001452467889629

`A155156(n+1)-A144670(n+1)`
-/

namespace A163672.P11551001452467889629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A144670 (n + 1)

end

end A163672.P11551001452467889629

namespace A163672

/-- `A155156(n+1)-A144670(n+1)` -/
def P11551001452467889629.Spec : Prop :=
  ∀ n, P11551001452467889629.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P9715434151815575045

`A172292(n+1)-A155550(n+1)`
-/

namespace A163672.P9715434151815575045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A155550 (n + 1)

end

end A163672.P9715434151815575045

namespace A163672

/-- `A172292(n+1)-A155550(n+1)` -/
def P9715434151815575045.Spec : Prop :=
  ∀ n, P9715434151815575045.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P7204284332339876096

`A163676(n+1)+1-A144670(n+1)`
-/

namespace A163672.P7204284332339876096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + (1 - A144670 (n + 1))

end

end A163672.P7204284332339876096

namespace A163672

/-- `A163676(n+1)+1-A144670(n+1)` -/
def P7204284332339876096.Spec : Prop :=
  ∀ n, P7204284332339876096.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P1159419237753754551

`A155151(n+1)-(A155550(n+1)+1)`
-/

namespace A163672.P1159419237753754551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A155550 (n + 1) + 1)

end

end A163672.P1159419237753754551

namespace A163672

/-- `A155151(n+1)-(A155550(n+1)+1)` -/
def P1159419237753754551.Spec : Prop :=
  ∀ n, P1159419237753754551.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P5342164817146762747

`A155151(n+1)+1-A155724(n+1)`
-/

namespace A163672.P5342164817146762747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) + (1 - A155724 (n + 1))

end

end A163672.P5342164817146762747

namespace A163672

/-- `A155151(n+1)+1-A155724(n+1)` -/
def P5342164817146762747.Spec : Prop :=
  ∀ n, P5342164817146762747.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P8507080906241270268

`A172292(n+1)-(A144670(n+1)+1)`
-/

namespace A163672.P8507080906241270268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - (A144670 (n + 1) + 1)

end

end A163672.P8507080906241270268

namespace A163672

/-- `A172292(n+1)-(A144670(n+1)+1)` -/
def P8507080906241270268.Spec : Prop :=
  ∀ n, P8507080906241270268.a n = A163672 (n + 1)

end A163672

/-! ## A163672.P6508716135634420322

`A163676(n+1)-(A155551(n+1)+1)`
-/

namespace A163672.P6508716135634420322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - (A155551 (n + 1) + 1)

end

end A163672.P6508716135634420322

namespace A163672

/-- `A163676(n+1)-(A155551(n+1)+1)` -/
def P6508716135634420322.Spec : Prop :=
  ∀ n, P6508716135634420322.a n = A163672 (n + 1)

end A163672

/-!
# A163673: a(n) = n*(2*n^2 + 5*n + 15)/2.

The programs for A163673, the canonical program `A163673.P16883461114431550399` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163673 has offset 0).

The definition of A163673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+5*n+15)/2` (program `A163673.P13220207948370222857`, by `A163673.P13220207948370222857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163673.P13220207948370222857

`n*(2*n²+5*n+15)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163673.P13220207948370222857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 * n ^ 2 + 5 * n + 15 : ℚ) / 2)

end

end A163673.P13220207948370222857

namespace A163673

/-- `n*(2*n²+5*n+15)/2` -/
def P13220207948370222857.Spec : Prop :=
  ∀ n, P13220207948370222857.a n = (A163673 n : ℚ)

theorem P13220207948370222857.correct : P13220207948370222857.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163673, Nat.add_sub_cancel, A163673.P13220207948370222857.a, A163673.P16883461114431550399.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163673, Nat.add_sub_cancel, A163673.P13220207948370222857.a, A163673.P16883461114431550399.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163673

/-! ## A163673.P16883461114431550399

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=11, a(2)=33, a(3)=72`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163673

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16883461114431550399.Spec : Prop :=
  ∀ n, P16883461114431550399.a n = A163673 n

theorem P16883461114431550399.correct : P16883461114431550399.Spec := by
  intro n
  simp only [A163673]

end A163673

/-! ## A163673.P7908897548028949051

`A163661(n)-n`
-/

namespace A163673.P7908897548028949051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 n - (n : ℤ)

end

end A163673.P7908897548028949051

namespace A163673

/-- `A163661(n)-n` -/
def P7908897548028949051.Spec : Prop :=
  ∀ n, P7908897548028949051.a n = A163673 n

end A163673

/-! ## A163673.P16505052932448027271

`A163655(n)+n`
-/

namespace A163673.P16505052932448027271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163655 n + (n : ℤ)

end

end A163673.P16505052932448027271

namespace A163673

/-- `A163655(n)+n` -/
def P16505052932448027271.Spec : Prop :=
  ∀ n, P16505052932448027271.a n = A163673 n

end A163673

/-! ## A163673.P2108007082386307450

`A163675(n)-2*n`
-/

namespace A163673.P2108007082386307450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163675 n - (2 * n : ℤ)

end

end A163673.P2108007082386307450

namespace A163673

/-- `A163675(n)-2*n` -/
def P2108007082386307450.Spec : Prop :=
  ∀ n, P2108007082386307450.a n = A163673 n

end A163673

/-! ## A163673.P9507151458640730191

`A059270(n)+A028563(n)`
-/

namespace A163673.P9507151458640730191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A028563 n

end

end A163673.P9507151458640730191

namespace A163673

/-- `A059270(n)+A028563(n)` -/
def P9507151458640730191.Spec : Prop :=
  ∀ n, P9507151458640730191.a n = A163673 n

end A163673

/-! ## A163673.P11257192374056875409

`A140673(n)+A011379(n)`
-/

namespace A163673.P11257192374056875409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n + A011379 n

end

end A163673.P11257192374056875409

namespace A163673

/-- `A140673(n)+A011379(n)` -/
def P11257192374056875409.Spec : Prop :=
  ∀ n, P11257192374056875409.a n = A163673 n

end A163673

/-! ## A163673.P16871337765170875087

`A152740(n)+A007531(n)`
-/

namespace A163673.P16871337765170875087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152740 n + A007531 n

end

end A163673.P16871337765170875087

namespace A163673

/-- `A152740(n)+A007531(n)` -/
def P16871337765170875087.Spec : Prop :=
  ∀ n, P16871337765170875087.a n = A163673 n

end A163673

/-! ## A163673.P16608727789640587064

`A140672(n)+A027444(n)`
-/

namespace A163673.P16608727789640587064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + A027444 n

end

end A163673.P16608727789640587064

namespace A163673

/-- `A140672(n)+A027444(n)` -/
def P16608727789640587064.Spec : Prop :=
  ∀ n, P16608727789640587064.a n = A163673 n

end A163673

/-! ## A163673.P13881601994286767944

`A147656(n)+A028560(n)`
-/

namespace A163673.P13881601994286767944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A028560 n

end

end A163673.P13881601994286767944

namespace A163673

/-- `A147656(n)+A028560(n)` -/
def P13881601994286767944.Spec : Prop :=
  ∀ n, P13881601994286767944.a n = A163673 n

end A163673

/-! ## A163673.P5059701390808675471

`A140674(n)+A085490(n)`
-/

namespace A163673.P5059701390808675471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + A085490 n

end

end A163673.P5059701390808675471

namespace A163673

/-- `A140674(n)+A085490(n)` -/
def P5059701390808675471.Spec : Prop :=
  ∀ n, P5059701390808675471.a n = A163673 n

end A163673

/-! ## A163673.P14234989849573717548

`A160378(n)+A140677(n)`
-/

namespace A163673.P14234989849573717548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A140677 n

end

end A163673.P14234989849573717548

namespace A163673

/-- `A160378(n)+A140677(n)` -/
def P14234989849573717548.Spec : Prop :=
  ∀ n, P14234989849573717548.a n = A163673 n

end A163673

/-! ## A163673.P13692672956999847978

`A279895(n)+A054602(n)`
-/

namespace A163673.P13692672956999847978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A054602 n

end

end A163673.P13692672956999847978

namespace A163673

/-- `A279895(n)+A054602(n)` -/
def P13692672956999847978.Spec : Prop :=
  ∀ n, P13692672956999847978.a n = A163673 n

end A163673

/-! ## A163673.P3723150397585602414

`A302906(n)+A034262(n)`
-/

namespace A163673.P3723150397585602414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302906 n + A034262 n

end

end A163673.P3723150397585602414

namespace A163673

/-- `A302906(n)+A034262(n)` -/
def P3723150397585602414.Spec : Prop :=
  ∀ n, P3723150397585602414.a n = A163673 n

end A163673

/-! ## A163673.P4531341736159571061

`A370912(n)-A022265(n)`
-/

namespace A163673.P4531341736159571061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - A022265 n

end

end A163673.P4531341736159571061

namespace A163673

/-- `A370912(n)-A022265(n)` -/
def P4531341736159571061.Spec : Prop :=
  ∀ n, P4531341736159571061.a n = A163673 n

end A163673

/-! ## A163673.P1526988899636984222

`abs(A163661(n)+A001489(n))`
-/

namespace A163673.P1526988899636984222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163661 n + A001489 n|

end

end A163673.P1526988899636984222

namespace A163673

/-- `abs(A163661(n)+A001489(n))` -/
def P1526988899636984222.Spec : Prop :=
  ∀ n, P1526988899636984222.a n = A163673 n

end A163673

/-! ## A163673.P13172502659357469956

`abs(A163675(n)-A005843(n))`
-/

namespace A163673.P13172502659357469956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163675 n - A005843 n|

end

end A163673.P13172502659357469956

namespace A163673

/-- `abs(A163675(n)-A005843(n))` -/
def P13172502659357469956.Spec : Prop :=
  ∀ n, P13172502659357469956.a n = A163673 n

end A163673

/-! ## A163673.P10084783894884963760

`A007531(n)+11*A000217(n)`
-/

namespace A163673.P10084783894884963760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + 11 * A000217 n

end

end A163673.P10084783894884963760

namespace A163673

/-- `A007531(n)+11*A000217(n)` -/
def P10084783894884963760.Spec : Prop :=
  ∀ n, P10084783894884963760.a n = A163673 n

end A163673

/-! ## A163673.P14639227232977008727

`A055999(n)+A059270(n)+A055999(n)`
-/

namespace A163673.P14639227232977008727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n + (A059270 n + A055999 n)

end

end A163673.P14639227232977008727

namespace A163673

/-- `A055999(n)+A059270(n)+A055999(n)` -/
def P14639227232977008727.Spec : Prop :=
  ∀ n, P14639227232977008727.a n = A163673 n

end A163673

/-! ## A163673.P11055210622790533677

`A007531(n)+A049598(n)-A000217(n)`
-/

namespace A163673.P11055210622790533677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 n + (A049598 n - A000217 n)

end

end A163673.P11055210622790533677

namespace A163673

/-- `A007531(n)+A049598(n)-A000217(n)` -/
def P11055210622790533677.Spec : Prop :=
  ∀ n, P11055210622790533677.a n = A163673 n

end A163673

/-!
# A163674: Triangle T(n,m) = 2*m*n + m + n + 9 read by rows.

The programs for A163674, the canonical program `A163674.P10701403474106452160` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163674 has offset 1).

The definition of A163674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163674.P10701403474106452160

`A163657(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A163674

/-- `A163657(n+1)+1` -/
def P10701403474106452160.Spec : Prop :=
  ∀ n, P10701403474106452160.a n = A163674 (n + 1)

theorem P10701403474106452160.correct : P10701403474106452160.Spec := by
  intro n
  simp only [A163674, Nat.add_sub_cancel]

end A163674

/-! ## A163674.P6267829557797314871

`A155704(n+1)-1`
-/

namespace A163674.P6267829557797314871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155704 (n + 1) - 1

end

end A163674.P6267829557797314871

namespace A163674

/-- `A155704(n+1)-1` -/
def P6267829557797314871.Spec : Prop :=
  ∀ n, P6267829557797314871.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P18151910490424183441

`A163672(n+1)+2`
-/

namespace A163674.P18151910490424183441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163672 (n + 1) + 2

end

end A163674.P18151910490424183441

namespace A163674

/-- `A163672(n+1)+2` -/
def P18151910490424183441.Spec : Prop :=
  ∀ n, P18151910490424183441.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P15373506533713561143

`A163652(n+1)+3`
-/

namespace A163674.P15373506533713561143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) + 3

end

end A163674.P15373506533713561143

namespace A163674

/-- `A163652(n+1)+3` -/
def P15373506533713561143.Spec : Prop :=
  ∀ n, P15373506533713561143.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P17519846080318462671

`A154631(n+1)+4`
-/

namespace A163674.P17519846080318462671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) + 4

end

end A163674.P17519846080318462671

namespace A163674

/-- `A154631(n+1)+4` -/
def P17519846080318462671.Spec : Prop :=
  ∀ n, P17519846080318462671.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P17208214468861158760

`A154685(n+1)+5`
-/

namespace A163674.P17208214468861158760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + 5

end

end A163674.P17208214468861158760

namespace A163674

/-- `A154685(n+1)+5` -/
def P17208214468861158760.Spec : Prop :=
  ∀ n, P17208214468861158760.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P15348776383699597945

`A154681(n+1)+6`
-/

namespace A163674.P15348776383699597945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154681 (n + 1) + 6

end

end A163674.P15348776383699597945

namespace A163674

/-- `A154681(n+1)+6` -/
def P15348776383699597945.Spec : Prop :=
  ∀ n, P15348776383699597945.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P15802254866503709485

`A155705(n+1)+7`
-/

namespace A163674.P15802254866503709485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + 7

end

end A163674.P15802254866503709485

namespace A163674

/-- `A155705(n+1)+7` -/
def P15802254866503709485.Spec : Prop :=
  ∀ n, P15802254866503709485.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P15979627790924278523

`A144650(n+1)+8`
-/

namespace A163674.P15979627790924278523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) + 8

end

end A163674.P15979627790924278523

namespace A163674

/-- `A144650(n+1)+8` -/
def P15979627790924278523.Spec : Prop :=
  ∀ n, P15979627790924278523.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P5816650813597944856

`A083487(n+1)+9`
-/

namespace A163674.P5816650813597944856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) + 9

end

end A163674.P5816650813597944856

namespace A163674

/-- `A083487(n+1)+9` -/
def P5816650813597944856.Spec : Prop :=
  ∀ n, P5816650813597944856.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P3909531657647901536

`A144562(n+1)+10`
-/

namespace A163674.P3909531657647901536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + 10

end

end A163674.P3909531657647901536

namespace A163674

/-- `A144562(n+1)+10` -/
def P3909531657647901536.Spec : Prop :=
  ∀ n, P3909531657647901536.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P7045044751695332642

`A155546(n+1)+14`
-/

namespace A163674.P7045044751695332642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + 14

end

end A163674.P7045044751695332642

namespace A163674

/-- `A155546(n+1)+14` -/
def P7045044751695332642.Spec : Prop :=
  ∀ n, P7045044751695332642.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P14441010615243105000

`A155550(n+1)+15`
-/

namespace A163674.P14441010615243105000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + 15

end

end A163674.P14441010615243105000

namespace A163674

/-- `A155550(n+1)+15` -/
def P14441010615243105000.Spec : Prop :=
  ∀ n, P14441010615243105000.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P793326700125408862

`A155151(n+1)-A144670(n+1)`
-/

namespace A163674.P793326700125408862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A144670 (n + 1)

end

end A163674.P793326700125408862

namespace A163674

/-- `A155151(n+1)-A144670(n+1)` -/
def P793326700125408862.Spec : Prop :=
  ∀ n, P793326700125408862.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P18430056530548606078

`A155156(n+1)-A155551(n+1)`
-/

namespace A163674.P18430056530548606078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A155551 (n + 1)

end

end A163674.P18430056530548606078

namespace A163674

/-- `A155156(n+1)-A155551(n+1)` -/
def P18430056530548606078.Spec : Prop :=
  ∀ n, P18430056530548606078.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P10410555089546812659

`A172292(n+1)-A324937(n+1)`
-/

namespace A163674.P10410555089546812659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A324937 (n + 1)

end

end A163674.P10410555089546812659

namespace A163674

/-- `A172292(n+1)-A324937(n+1)` -/
def P10410555089546812659.Spec : Prop :=
  ∀ n, P10410555089546812659.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P18163754439563294465

`A172292(n+1)+1-A144670(n+1)`
-/

namespace A163674.P18163754439563294465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) + (1 - A144670 (n + 1))

end

end A163674.P18163754439563294465

namespace A163674

/-- `A172292(n+1)+1-A144670(n+1)` -/
def P18163754439563294465.Spec : Prop :=
  ∀ n, P18163754439563294465.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P9976421476839581837

`A163676(n+1)+1-A155551(n+1)`
-/

namespace A163674.P9976421476839581837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + (1 - A155551 (n + 1))

end

end A163674.P9976421476839581837

namespace A163674

/-- `A163676(n+1)+1-A155551(n+1)` -/
def P9976421476839581837.Spec : Prop :=
  ∀ n, P9976421476839581837.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P10401275932965043532

`A172292(n+1)-(A155551(n+1)+1)`
-/

namespace A163674.P10401275932965043532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - (A155551 (n + 1) + 1)

end

end A163674.P10401275932965043532

namespace A163674

/-- `A172292(n+1)-(A155551(n+1)+1)` -/
def P10401275932965043532.Spec : Prop :=
  ∀ n, P10401275932965043532.a n = A163674 (n + 1)

end A163674

/-! ## A163674.P2500113839008582499

`A155151(n+1)-(A324937(n+1)+1)`
-/

namespace A163674.P2500113839008582499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A324937 (n + 1) + 1)

end

end A163674.P2500113839008582499

namespace A163674

/-- `A155151(n+1)-(A324937(n+1)+1)` -/
def P2500113839008582499.Spec : Prop :=
  ∀ n, P2500113839008582499.a n = A163674 (n + 1)

end A163674

/-!
# A163675: a(n) = n*(2*n^2 + 5*n + 19)/2.

The programs for A163675, the canonical program `A163675.P11454917303674658960` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163675 has offset 0).

The definition of A163675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+5*n+19)/2` (program `A163675.P8364502459263654084`, by `A163675.P8364502459263654084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163675.P8364502459263654084

`n*(2*n²+5*n+19)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163675.P8364502459263654084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((2 * n ^ 2 + 5 * n + 19 : ℚ) / 2)

end

end A163675.P8364502459263654084

namespace A163675

/-- `n*(2*n²+5*n+19)/2` -/
def P8364502459263654084.Spec : Prop :=
  ∀ n, P8364502459263654084.a n = (A163675 n : ℚ)

theorem P8364502459263654084.correct : P8364502459263654084.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163675, Nat.add_sub_cancel, A163675.P8364502459263654084.a, A163675.P11454917303674658960.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163675, Nat.add_sub_cancel, A163675.P8364502459263654084.a, A163675.P11454917303674658960.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163675

/-! ## A163675.P11454917303674658960

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=13, a(2)=37, a(3)=78`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163675

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11454917303674658960.Spec : Prop :=
  ∀ n, P11454917303674658960.a n = A163675 n

theorem P11454917303674658960.correct : P11454917303674658960.Spec := by
  intro n
  simp only [A163675]

end A163675

/-! ## A163675.P3826153892010073347

`A163673(n)+2*n`
-/

namespace A163675.P3826153892010073347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163673 n + (2 * n : ℤ)

end

end A163675.P3826153892010073347

namespace A163675

/-- `A163673(n)+2*n` -/
def P3826153892010073347.Spec : Prop :=
  ∀ n, P3826153892010073347.a n = A163675 n

end A163675

/-! ## A163675.P8965059239332821950

`A163661(n)+n`
-/

namespace A163675.P8965059239332821950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163661 n + (n : ℤ)

end

end A163675.P8965059239332821950

namespace A163675

/-- `A163661(n)+n` -/
def P8965059239332821950.Spec : Prop :=
  ∀ n, P8965059239332821950.a n = A163675 n

end A163675

/-! ## A163675.P605597976771961149

`A163655(n)+3*n`
-/

namespace A163675.P605597976771961149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163655 n + (3 * n : ℤ)

end

end A163675.P605597976771961149

namespace A163675

/-- `A163655(n)+3*n` -/
def P605597976771961149.Spec : Prop :=
  ∀ n, P605597976771961149.a n = A163675 n

end A163675

/-! ## A163675.P10743758471579046022

`A059270(n)+A028569(n)`
-/

namespace A163675.P10743758471579046022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n + A028569 n

end

end A163675.P10743758471579046022

namespace A163675

/-- `A059270(n)+A028569(n)` -/
def P10743758471579046022.Spec : Prop :=
  ∀ n, P10743758471579046022.a n = A163675 n

end A163675

/-! ## A163675.P7413966053115643372

`A111396(n)+A004068(n)`
-/

namespace A163675.P7413966053115643372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n + A004068 n

end

end A163675.P7413966053115643372

namespace A163675

/-- `A111396(n)+A004068(n)` -/
def P7413966053115643372.Spec : Prop :=
  ∀ n, P7413966053115643372.a n = A163675 n

end A163675

/-! ## A163675.P12696626268821771209

`A140675(n)+A011379(n)`
-/

namespace A163675.P12696626268821771209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140675 n + A011379 n

end

end A163675.P12696626268821771209

namespace A163675

/-- `A140675(n)+A011379(n)` -/
def P12696626268821771209.Spec : Prop :=
  ∀ n, P12696626268821771209.a n = A163675 n

end A163675

/-! ## A163675.P13265055878808772993

`A140674(n)+A027444(n)`
-/

namespace A163675.P13265055878808772993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140674 n + A027444 n

end

end A163675.P13265055878808772993

namespace A163675

/-- `A140674(n)+A027444(n)` -/
def P13265055878808772993.Spec : Prop :=
  ∀ n, P13265055878808772993.a n = A163675 n

end A163675

/-! ## A163675.P8911542810094039084

`A147656(n)+A028566(n)`
-/

namespace A163675.P8911542810094039084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + A028566 n

end

end A163675.P8911542810094039084

namespace A163675

/-- `A147656(n)+A028566(n)` -/
def P8911542810094039084.Spec : Prop :=
  ∀ n, P8911542810094039084.a n = A163675 n

end A163675

/-! ## A163675.P11259516321881187279

`A151542(n)+A085490(n)`
-/

namespace A163675.P11259516321881187279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + A085490 n

end

end A163675.P11259516321881187279

namespace A163675

/-- `A151542(n)+A085490(n)` -/
def P11259516321881187279.Spec : Prop :=
  ∀ n, P11259516321881187279.a n = A163675 n

end A163675

/-! ## A163675.P13468540010575798192

`A160378(n)+A140678(n)`
-/

namespace A163675.P13468540010575798192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + A140678 n

end

end A163675.P13468540010575798192

namespace A163675

/-- `A160378(n)+A140678(n)` -/
def P13468540010575798192.Spec : Prop :=
  ∀ n, P13468540010575798192.a n = A163675 n

end A163675

/-! ## A163675.P18040994689094759726

`A212331(n)+A121670(n)`
-/

namespace A163675.P18040994689094759726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212331 n + A121670 n

end

end A163675.P18040994689094759726

namespace A163675

/-- `A212331(n)+A121670(n)` -/
def P18040994689094759726.Spec : Prop :=
  ∀ n, P18040994689094759726.a n = A163675 n

end A163675

/-! ## A163675.P9853862249393711663

`A242659(n)+A152740(n)`
-/

namespace A163675.P9853862249393711663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 n + A152740 n

end

end A163675.P9853862249393711663

namespace A163675

/-- `A242659(n)+A152740(n)` -/
def P9853862249393711663.Spec : Prop :=
  ∀ n, P9853862249393711663.a n = A163675 n

end A163675

/-! ## A163675.P7642254129402917207

`A279895(n)+A155965(n)`
-/

namespace A163675.P7642254129402917207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + A155965 n

end

end A163675.P7642254129402917207

namespace A163675

/-- `A279895(n)+A155965(n)` -/
def P7642254129402917207.Spec : Prop :=
  ∀ n, P7642254129402917207.a n = A163675 n

end A163675

/-! ## A163675.P15336832365380859496

`A370912(n)-A218471(n)`
-/

namespace A163675.P15336832365380859496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370912 n - A218471 n

end

end A163675.P15336832365380859496

namespace A163675

/-- `A370912(n)-A218471(n)` -/
def P15336832365380859496.Spec : Prop :=
  ∀ n, P15336832365380859496.a n = A163675 n

end A163675

/-! ## A163675.P17038959595774308040

`abs(A001489(n)-A163661(n))`
-/

namespace A163675.P17038959595774308040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A163661 n|

end

end A163675.P17038959595774308040

namespace A163675

/-- `abs(A001489(n)-A163661(n))` -/
def P17038959595774308040.Spec : Prop :=
  ∀ n, P17038959595774308040.a n = A163675 n

end A163675

/-! ## A163675.P15512748986358465642

`A166146(n+1)+A083074(n)`
-/

namespace A163675.P15512748986358465642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166146 (n + 1) + A083074 n

end

end A163675.P15512748986358465642

namespace A163675

/-- `A166146(n+1)+A083074(n)` -/
def P15512748986358465642.Spec : Prop :=
  ∀ n, P15512748986358465642.a n = A163675 n

end A163675

/-! ## A163675.P3466645213788966567

`A211379(2*n+3)+A056115(2*n)`
-/

namespace A163675.P3466645213788966567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211379 (2 * n + 3) + A056115 (2 * n)

end

end A163675.P3466645213788966567

namespace A163675

/-- `A211379(2*n+3)+A056115(2*n)` -/
def P3466645213788966567.Spec : Prop :=
  ∀ n, P3466645213788966567.a n = A163675 n

end A163675

/-!
# A163676: Triangle T(n,m) = 4mn + 2m + 2n - 1 read by rows.

The programs for A163676, the canonical program `A163676.P4041084556409764895` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163676 has offset 1).

The definition of A163676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163676.P4215902250601641538

`A155156(n+1)-1`
-/

namespace A163676.P4215902250601641538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - 1

end

end A163676.P4215902250601641538

namespace A163676

/-- `A155156(n+1)-1` -/
def P4215902250601641538.Spec : Prop :=
  ∀ n, P4215902250601641538.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P13460577537747834294

`A172292(n+1)-2`
-/

namespace A163676.P13460577537747834294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - 2

end

end A163676.P13460577537747834294

namespace A163676

/-- `A172292(n+1)-2` -/
def P13460577537747834294.Spec : Prop :=
  ∀ n, P13460577537747834294.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P16856117788610730883

`A155151(n+1)-3`
-/

namespace A163676.P16856117788610730883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - 3

end

end A163676.P16856117788610730883

namespace A163676

/-- `A155151(n+1)-3` -/
def P16856117788610730883.Spec : Prop :=
  ∀ n, P16856117788610730883.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P1380894612759057389

`2*A144562(n+1)+1`
-/

namespace A163676.P1380894612759057389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144562 (n + 1) + 1

end

end A163676.P1380894612759057389

namespace A163676

/-- `2*A144562(n+1)+1` -/
def P1380894612759057389.Spec : Prop :=
  ∀ n, P1380894612759057389.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P5322270419579335979

`2*A083487(n+1)-1`
-/

namespace A163676.P5322270419579335979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083487 (n + 1) - 1

end

end A163676.P5322270419579335979

namespace A163676

/-- `2*A083487(n+1)-1` -/
def P5322270419579335979.Spec : Prop :=
  ∀ n, P5322270419579335979.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P4813436044368529777

`2*A154680(n+1)+3`
-/

namespace A163676.P4813436044368529777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154680 (n + 1) + 3

end

end A163676.P4813436044368529777

namespace A163676

/-- `2*A154680(n+1)+3` -/
def P4813436044368529777.Spec : Prop :=
  ∀ n, P4813436044368529777.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P17577420909001413416

`2*A144650(n+1)-3`
-/

namespace A163676.P17577420909001413416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144650 (n + 1) - 3

end

end A163676.P17577420909001413416

namespace A163676

/-- `2*A144650(n+1)-3` -/
def P17577420909001413416.Spec : Prop :=
  ∀ n, P17577420909001413416.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P4041084556409764895

`2*A154684(n+1)+5`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A163676

/-- `2*A154684(n+1)+5` -/
def P4041084556409764895.Spec : Prop :=
  ∀ n, P4041084556409764895.a n = A163676 (n + 1)

theorem P4041084556409764895.correct : P4041084556409764895.Spec := by
  intro n
  simp only [A163676, Nat.add_sub_cancel]

end A163676

/-! ## A163676.P3401910039880819330

`2*A155705(n+1)-5`
-/

namespace A163676.P3401910039880819330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155705 (n + 1) - 5

end

end A163676.P3401910039880819330

namespace A163676

/-- `2*A155705(n+1)-5` -/
def P3401910039880819330.Spec : Prop :=
  ∀ n, P3401910039880819330.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P14618944455830350581

`2*(A155546(n+1)+4)+1`
-/

namespace A163676.P14618944455830350581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155546 (n + 1) + 4) + 1

end

end A163676.P14618944455830350581

namespace A163676

/-- `2*(A155546(n+1)+4)+1` -/
def P14618944455830350581.Spec : Prop :=
  ∀ n, P14618944455830350581.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P11657283896224488755

`2*(A155550(n+1)+5)+1`
-/

namespace A163676.P11657283896224488755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155550 (n + 1) + 5) + 1

end

end A163676.P11657283896224488755

namespace A163676

/-- `2*(A155550(n+1)+5)+1` -/
def P11657283896224488755.Spec : Prop :=
  ∀ n, P11657283896224488755.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P11294563521775893906

`A144562(n+1)+A083487(n+1)`
-/

namespace A163676.P11294563521775893906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) + A083487 (n + 1)

end

end A163676.P11294563521775893906

namespace A163676

/-- `A144562(n+1)+A083487(n+1)` -/
def P11294563521775893906.Spec : Prop :=
  ∀ n, P11294563521775893906.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P13757201527812801372

`A154680(n+1)+A144650(n+1)`
-/

namespace A163676.P13757201527812801372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) + A144650 (n + 1)

end

end A163676.P13757201527812801372

namespace A163676

/-- `A154680(n+1)+A144650(n+1)` -/
def P13757201527812801372.Spec : Prop :=
  ∀ n, P13757201527812801372.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P6607175570004628070

`A163652(n+1)+A144670(n+1)`
-/

namespace A163676.P6607175570004628070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163652 (n + 1) + A144670 (n + 1)

end

end A163676.P6607175570004628070

namespace A163676

/-- `A163652(n+1)+A144670(n+1)` -/
def P6607175570004628070.Spec : Prop :=
  ∀ n, P6607175570004628070.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P7337809255353145967

`A155550(n+1)+A154631(n+1)`
-/

namespace A163676.P7337809255353145967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) + A154631 (n + 1)

end

end A163676.P7337809255353145967

namespace A163676

/-- `A155550(n+1)+A154631(n+1)` -/
def P7337809255353145967.Spec : Prop :=
  ∀ n, P7337809255353145967.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P6759641878201664300

`A155546(n+1)+A154685(n+1)`
-/

namespace A163676.P6759641878201664300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) + A154685 (n + 1)

end

end A163676.P6759641878201664300

namespace A163676

/-- `A155546(n+1)+A154685(n+1)` -/
def P6759641878201664300.Spec : Prop :=
  ∀ n, P6759641878201664300.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P162534444050060090

`A155705(n+1)+A154684(n+1)`
-/

namespace A163676.P162534444050060090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155705 (n + 1) + A154684 (n + 1)

end

end A163676.P162534444050060090

namespace A163676

/-- `A155705(n+1)+A154684(n+1)` -/
def P162534444050060090.Spec : Prop :=
  ∀ n, P162534444050060090.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P8972429798799369458

`A155724(n+1)+A154681(n+1)`
-/

namespace A163676.P8972429798799369458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + A154681 (n + 1)

end

end A163676.P8972429798799369458

namespace A163676

/-- `A155724(n+1)+A154681(n+1)` -/
def P8972429798799369458.Spec : Prop :=
  ∀ n, P8972429798799369458.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P237970958227210518

`A163657(n+1)+A155551(n+1)`
-/

namespace A163676.P237970958227210518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163657 (n + 1) + A155551 (n + 1)

end

end A163676.P237970958227210518

namespace A163676

/-- `A163657(n+1)+A155551(n+1)` -/
def P237970958227210518.Spec : Prop :=
  ∀ n, P237970958227210518.a n = A163676 (n + 1)

end A163676

/-! ## A163676.P16426507160724269337

`A324937(n+1)+A163672(n+1)`
-/

namespace A163676.P16426507160724269337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324937 (n + 1) + A163672 (n + 1)

end

end A163676.P16426507160724269337

namespace A163676

/-- `A324937(n+1)+A163672(n+1)` -/
def P16426507160724269337.Spec : Prop :=
  ∀ n, P16426507160724269337.a n = A163676 (n + 1)

end A163676

/-!
# A163678: Smaller prime p in Ormiston pairs (p, q) with q - p = 18.

The programs for A163678, there is no canonical definition to state claims against.
-/

/-! ## A163678.P6851740470290980666

`∩[A069567(n+1), A209875(n+1)]`
-/

namespace A163678.P6851740470290980666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163678.P6851740470290980666

/-! ## A163678.P9779914262014920424

`∩[A031936(n+1), A069567(n+1)]`
-/

namespace A163678.P9779914262014920424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069567 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163678.P9779914262014920424

/-! ## A163678.P738564285311748127

`∩[A072274(2*n+1), A209875(n+2)]`
-/

namespace A163678.P738564285311748127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209875 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163678.P738564285311748127

/-! ## A163678.P16772401172146460082

`p?[A072274(2*(n+1))-18]`
-/

namespace A163678.P16772401172146460082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (2 * (n + 1)) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163678.P16772401172146460082

/-! ## A163678.P10936095475928466472

`A175517(n+1)`
-/

namespace A163678.P10936095475928466472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175517 (n + 1)

end

end A163678.P10936095475928466472

/-!
# A163679: Smaller prime p in Ormiston pairs (p, q) with q - p = 36.

The programs for A163679, there is no canonical definition to state claims against.
-/

/-! ## A163679.P2299424102022081446

`∩[A069567(n+1), A134117(n+1)]`
-/

namespace A163679.P2299424102022081446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163679.P2299424102022081446

/-! ## A163679.P6726725405816245698

`∩[A072274(2*n+1), A134117(n+2)]`
-/

namespace A163679.P6726725405816245698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072274 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134117 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163679.P6726725405816245698

/-!
# A163680: Smaller prime p in Ormiston pairs (p, q) with q - p = 54.

The programs for A163680, there is no canonical definition to state claims against.
-/

/-! ## A163680.P13130613745585410705

`∩[A069567(n+1), A204666(n+1)]`
-/

namespace A163680.P13130613745585410705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163680.P13130613745585410705

/-!
# A163683: a(n) = n^2*(2*n + 5).

The programs for A163683, the canonical program `A163683.P9077121025577207897` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163683 has offset 0).

The definition of A163683 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(2*n+5)` (program `A163683.P9077121025577207897`, by `A163683.P9077121025577207897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163683.P9077121025577207897

`n²*(2*n+5)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163683

/-- `n²*(2*n+5)` -/
def P9077121025577207897.Spec : Prop :=
  ∀ n, (P9077121025577207897.a n : ℤ) = A163683 n

theorem P9077121025577207897.correct : P9077121025577207897.Spec := by
  intro n
  simp only [A163683]

end A163683

/-! ## A163683.P13346054015493315917

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=7, a(2)=36, a(3)=99`
-/

namespace A163683.P13346054015493315917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 36, 99] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A163683.P13346054015493315917

namespace A163683

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13346054015493315917.Spec : Prop :=
  ∀ n, P13346054015493315917.a n = A163683 n

theorem P13346054015493315917.correct : P13346054015493315917.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163683, Nat.add_sub_cancel, A163683.P13346054015493315917.a, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163683, Nat.add_sub_cancel, A163683.P13346054015493315917.a, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163683

/-! ## A163683.P3395997984986803490

`n*∑[record[xor(3, n)]]-3*n`
-/

namespace A163683.P3395997984986803490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (3 * n : ℤ)

end

end A163683.P3395997984986803490

namespace A163683

/-- `n*∑[record[xor(3, n)]]-3*n` -/
def P3395997984986803490.Spec : Prop :=
  ∀ n, P3395997984986803490.a n = A163683 n

end A163683

/-! ## A163683.P13830201902688764141

`floor(n*∑[a(n-1)+4])` with `a(0)=0, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A163683.P13830201902688764141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163683.P13830201902688764141

namespace A163683

/-- `floor(n*∑[a(n-1)+4])` -/
def P13830201902688764141.Spec : Prop :=
  ∀ n, (P13830201902688764141.a n : ℤ) = A163683 n

end A163683

/-! ## A163683.P17146651882358510620

`record[2*n*(3-n)²]-n²`
-/

namespace A163683.P17146651882358510620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (3 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n ^ 2 : ℤ)

end

end A163683.P17146651882358510620

namespace A163683

/-- `record[2*n*(3-n)²]-n²` -/
def P17146651882358510620.Spec : Prop :=
  ∀ n, P17146651882358510620.a n = A163683 n

end A163683

/-! ## A163683.P13504156753501738357

`n*C(2*n+3, 2)-3*n`
-/

namespace A163683.P13504156753501738357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (2 * n + 3) 2 : ℤ) - (3 * n : ℤ)

end

end A163683.P13504156753501738357

namespace A163683

/-- `n*C(2*n+3, 2)-3*n` -/
def P13504156753501738357.Spec : Prop :=
  ∀ n, P13504156753501738357.a n = A163683 n

end A163683

/-! ## A163683.P8039839405307610125

`lcm(n, n*(2*n*(n+2)+n))`
-/

namespace A163683.P8039839405307610125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * (2 * (n * (n + 2)) + n))

end

end A163683.P8039839405307610125

namespace A163683

/-- `lcm(n, n*(2*n*(n+2)+n))` -/
def P8039839405307610125.Spec : Prop :=
  ∀ n, (P8039839405307610125.a n : ℤ) = A163683 n

theorem P8039839405307610125.correct : P8039839405307610125.Spec := by
  intro n
  simp only [A163683, Nat.add_sub_cancel, A163683.P8039839405307610125.a, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A163683

/-! ## A163683.P14977192199158650046

`2*n+(n+3)*C(2*n, 2)+n`
-/

namespace A163683.P14977192199158650046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + ((n + 3) * Nat.choose (2 * n) 2 + n)

end

end A163683.P14977192199158650046

namespace A163683

/-- `2*n+(n+3)*C(2*n, 2)+n` -/
def P14977192199158650046.Spec : Prop :=
  ∀ n, (P14977192199158650046.a n : ℤ) = A163683 n

end A163683

/-! ## A163683.P12533440614353423039

`(2*n+1)*record[n*(n-2)]-2*n`
-/

namespace A163683.P12533440614353423039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 * n : ℤ)

end

end A163683.P12533440614353423039

namespace A163683

/-- `(2*n+1)*record[n*(n-2)]-2*n` -/
def P12533440614353423039.Spec : Prop :=
  ∀ n, P12533440614353423039.a n = A163683 n

end A163683

/-! ## A163683.P4007216400687778440

`(2*n+1)*(n+2)*gcd(n, 2*n)-2*n`
-/

namespace A163683.P4007216400687778440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * ((n + 2) * Nat.gcd n (2 * n)) : ℤ) - (2 * n : ℤ)

end

end A163683.P4007216400687778440

namespace A163683

/-- `(2*n+1)*(n+2)*gcd(n, 2*n)-2*n` -/
def P4007216400687778440.Spec : Prop :=
  ∀ n, P4007216400687778440.a n = A163683 n

theorem P4007216400687778440.correct : P4007216400687778440.Spec := by
  intro n
  simp only [A163683, Nat.add_sub_cancel, A163683.P4007216400687778440.a, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A163683

/-! ## A163683.P4205690708520470047

`(2*n+1)*n*(n+2)-and(2*n+1, 2*n)`
-/

namespace A163683.P4205690708520470047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (n * (n + 2)) : ℤ) - (Nat.land (2 * n + 1) (2 * n) : ℤ)

end

end A163683.P4205690708520470047

namespace A163683

/-- `(2*n+1)*n*(n+2)-and(2*n+1, 2*n)` -/
def P4205690708520470047.Spec : Prop :=
  ∀ n, P4205690708520470047.a n = A163683 n

end A163683

/-! ## A163683.P9544619426630282768

`A163832(n)-n`
-/

namespace A163683.P9544619426630282768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163832 n - (n : ℤ)

end

end A163683.P9544619426630282768

namespace A163683

/-- `A163832(n)-n` -/
def P9544619426630282768.Spec : Prop :=
  ∀ n, P9544619426630282768.a n = A163683 n

end A163683

/-! ## A163683.P16985320947863040715

`A163815(n)-3*n`
-/

namespace A163683.P16985320947863040715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n - (3 * n : ℤ)

end

end A163683.P16985320947863040715

namespace A163683

/-- `A163815(n)-3*n` -/
def P16985320947863040715.Spec : Prop :=
  ∀ n, P16985320947863040715.a n = A163683 n

end A163683

/-! ## A163683.P2987755421386445491

`A099721(n)+(2*n)²`
-/

namespace A163683.P2987755421386445491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + ((2 * n) ^ 2 : ℤ)

end

end A163683.P2987755421386445491

namespace A163683

/-- `A099721(n)+(2*n)²` -/
def P2987755421386445491.Spec : Prop :=
  ∀ n, P2987755421386445491.a n = A163683 n

end A163683

/-! ## A163683.P716338547356689583

`A275709(n)+2*n²`
-/

namespace A163683.P716338547356689583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n + (2 * n ^ 2 : ℤ)

end

end A163683.P716338547356689583

namespace A163683

/-- `A275709(n)+2*n²` -/
def P716338547356689583.Spec : Prop :=
  ∀ n, P716338547356689583.a n = A163683 n

end A163683

/-! ## A163683.P3526840778308968490

`n²+A258617(n)/2`
-/

namespace A163683.P3526840778308968490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) + (A258617 n : ℚ) / 2

end

end A163683.P3526840778308968490

namespace A163683

/-- `n²+A258617(n)/2` -/
def P3526840778308968490.Spec : Prop :=
  ∀ n, P3526840778308968490.a n = (A163683 n : ℚ)

end A163683

/-! ## A163683.P839109210191378073

`(A258618(n)+n²)/2`
-/

namespace A163683.P839109210191378073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258618 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A163683.P839109210191378073

namespace A163683

/-- `(A258618(n)+n²)/2` -/
def P839109210191378073.Spec : Prop :=
  ∀ n, P839109210191378073.a n = (A163683 n : ℚ)

end A163683

/-! ## A163683.P13221198423598051783

`∑[2*A270710(n)]+2-n`
-/

namespace A163683.P13221198423598051783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 - (n : ℤ)

end

end A163683.P13221198423598051783

namespace A163683

/-- `∑[2*A270710(n)]+2-n` -/
def P13221198423598051783.Spec : Prop :=
  ∀ n, P13221198423598051783.a n = A163683 n

end A163683

/-! ## A163683.P6129593740851842400

`∑[n*A016957(n)-3]+3`
-/

namespace A163683.P6129593740851842400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016957 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A163683.P6129593740851842400

namespace A163683

/-- `∑[n*A016957(n)-3]+3` -/
def P6129593740851842400.Spec : Prop :=
  ∀ n, P6129593740851842400.a n = A163683 n

end A163683

/-! ## A163683.P13378955308789655763

`A035006(n+1)+n*(n-2)`
-/

namespace A163683.P13378955308789655763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035006 (n + 1) + (n : ℤ) * ((n : ℤ) - 2)

end

end A163683.P13378955308789655763

namespace A163683

/-- `A035006(n+1)+n*(n-2)` -/
def P13378955308789655763.Spec : Prop :=
  ∀ n, P13378955308789655763.a n = A163683 n

end A163683

/-!
# A163684: Number of n X n binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163684, there is no canonical definition to state claims against.
-/

/-! ## A163684.P18111700653991474776

`A391818((n+1)²+n²)`
-/

namespace A163684.P18111700653991474776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 ((n + 1) ^ 2 + n ^ 2)

end

end A163684.P18111700653991474776

/-!
# A163685: Number of n X 2 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163685, the canonical program `A163685.P10654618114412449373` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163685 has offset 1).

The definition of A163685 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163685.P10654618114412449373

`2*a(n-1)-a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=13, a(5)=20`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163685

/-- `2*a(n-1)-a(n-2)+a(n-4)` -/
def P10654618114412449373.Spec : Prop :=
  ∀ n, P10654618114412449373.a n = A163685 (n + 1)

theorem P10654618114412449373.correct : P10654618114412449373.Spec := by
  intro n
  simp only [A163685, Nat.add_sub_cancel]

end A163685

/-! ## A163685.P15715206836726729191

`A169985(n)+record[Δ[A226956(n)]]`
-/

namespace A163685.P15715206836726729191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163685.P15715206836726729191

namespace A163685

/-- `A169985(n)+record[Δ[A226956(n)]]` -/
def P15715206836726729191.Spec : Prop :=
  ∀ n, P15715206836726729191.a n = A163685 (n + 1)

end A163685

/-! ## A163685.P14988478946614618577

`A169985(n)+Δ[A226956(n+2)]`
-/

namespace A163685.P14988478946614618577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + (f1 (n + 1) - f1 n)

end

end A163685.P14988478946614618577

namespace A163685

/-- `A169985(n)+Δ[A226956(n+2)]` -/
def P14988478946614618577.Spec : Prop :=
  ∀ n, P14988478946614618577.a n = A163685 (n + 1)

end A163685

/-! ## A163685.P12093392908331353747

`record[A226956(n)-Δ[A329723(n)]]`
-/

namespace A163685.P12093392908331353747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226956 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163685.P12093392908331353747

namespace A163685

/-- `record[A226956(n)-Δ[A329723(n)]]` -/
def P12093392908331353747.Spec : Prop :=
  ∀ n, P12093392908331353747.a n = A163685 (n + 1)

end A163685

/-! ## A163685.P8314781803649289175

`A391818(∑[n+2])`
-/

namespace A163685.P8314781803649289175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163685.P8314781803649289175

namespace A163685

/-- `A391818(∑[n+2])` -/
def P8314781803649289175.Spec : Prop :=
  ∀ n, P8314781803649289175.a n = A163685 (n + 1)

end A163685

/-!
# A163686: Number of n X 3 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163686, there is no canonical definition to state claims against.
-/

/-! ## A163686.P7033475336140004576

`A391818(∑[n+3]+1)`
-/

namespace A163686.P7033475336140004576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A163686.P7033475336140004576

/-! ## A163686.P3719603684060733163

`record[A391818(n+1)/A051142(n+3)]`
-/

namespace A163686.P3719603684060733163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391818 (n + 1) : ℚ) / (A051142 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163686.P3719603684060733163

/-!
# A163687: Number of n X 4 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163687, there is no canonical definition to state claims against.
-/

/-! ## A163687.P350337010615585105

`A391818(∑[n+4]+3)`
-/

namespace A163687.P350337010615585105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A163687.P350337010615585105

/-!
# A163688: Number of n X 5 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163688, there is no canonical definition to state claims against.
-/

/-! ## A163688.P17116494710722290955

`A391818(A374005(n+1))`
-/

namespace A163688.P17116494710722290955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A374005 (n + 1)).toNat

end

end A163688.P17116494710722290955

/-! ## A163688.P10622175106771587772

`A391818(A000217(n+4)+5)`
-/

namespace A163688.P10622175106771587772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A000217 (n + 4) + 5).toNat

end

end A163688.P10622175106771587772

/-!
# A163689: Number of n X 6 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163689, there is no canonical definition to state claims against.
-/

/-! ## A163689.P711200612522098081

`A391818(A374007(n+1))`
-/

namespace A163689.P711200612522098081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A374007 (n + 1)).toNat

end

end A163689.P711200612522098081

/-!
# A163690: Number of n X 7 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163690, there is no canonical definition to state claims against.
-/

/-! ## A163690.P7845730840237922961

`A391818(A374008(n+1))`
-/

namespace A163690.P7845730840237922961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A374008 (n + 1)).toNat

end

end A163690.P7845730840237922961

/-!
# A163691: Number of n X 8 binary arrays with all 1's connected, a path of 1's from upper left corner to lower right corner, and no 1 having more than two 1's adjacent.

The programs for A163691, there is no canonical definition to state claims against.
-/

/-! ## A163691.P12032270730380931322

`A391818(A374009(n+1))`
-/

namespace A163691.P12032270730380931322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A374009 (n + 1)).toNat

end

end A163691.P12032270730380931322

/-!
# A163692: Number of n X 9 binary arrays with all 1s connected, a path of 1s from upper left corner to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163692, there is no canonical definition to state claims against.
-/

/-! ## A163692.P6417966984977352808

`A391818(A374010(n+1))`
-/

namespace A163692.P6417966984977352808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A374010 (n + 1)).toNat

end

end A163692.P6417966984977352808

/-!
# A163693: Number of n X 10 binary arrays with all 1's connected, a path of 1's from upper left corner to lower right corner, and no 1 having more than two 1's adjacent.

The programs for A163693, there is no canonical definition to state claims against.
-/

/-! ## A163693.P1820487563628632060

`A391818(A374011(n+1))`
-/

namespace A163693.P1820487563628632060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391818 (A374011 (n + 1)).toNat

end

end A163693.P1820487563628632060

/-!
# A163694: Number of n X n binary arrays with all 1s connected, a path of 1s from top row to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163694, there is no canonical definition to state claims against.
-/

/-! ## A163694.P10565120682411697952

`A391823((n+1)²+n²)`
-/

namespace A163694.P10565120682411697952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 ((n + 1) ^ 2 + n ^ 2)

end

end A163694.P10565120682411697952

/-! ## A163694.P2587350333461873449

`A057427(n+1)*A391823(A001844(n))`
-/

namespace A163694.P2587350333461873449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A391823 (A001844 n).toNat

end

end A163694.P2587350333461873449

/-! ## A163694.P6034449198415681506

`A391823(A001844(n))+A080116(2*n+1)`
-/

namespace A163694.P6034449198415681506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A001844 n).toNat + A080116 (2 * n + 1)

end

end A163694.P6034449198415681506

/-! ## A163694.P6605252736075884630

`A391823(A001844(n))+A147607(2*n+3)`
-/

namespace A163694.P6605252736075884630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A001844 n).toNat + A147607 (2 * n + 3)

end

end A163694.P6605252736075884630

/-!
# A163695: Number of n X 2 binary arrays with all 1s connected, a path of 1s from top row to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163695, the canonical program `A163695.P11478173791877846260` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163695 has offset 1).

The definition of A163695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163695.P11478173791877846260

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A163695

/-- `a(n-1)+a(n-2)` -/
def P11478173791877846260.Spec : Prop :=
  ∀ n, (P11478173791877846260.a n : ℤ) = A163695 (n + 1)

theorem P11478173791877846260.correct : P11478173791877846260.Spec := by
  intro n
  simp only [A163695, Nat.add_sub_cancel]

end A163695

/-! ## A163695.P13200135775334676287

`ogf((2+3x-x^3)/(1-x-x^2))`
-/

namespace A163695.P13200135775334676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 0, -1] [1, -1, -1] n

end

end A163695.P13200135775334676287

namespace A163695

/-- `ogf((2+3x-x^3)/(1-x-x^2))` -/
def P13200135775334676287.Spec : Prop :=
  ∀ n, P13200135775334676287.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P17078446950510651341

`round(ϕ*a(n-1))` with `a(0)=2, a(1)=5, a(2)=7`
-/

namespace A163695.P17078446950510651341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 7] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A163695.P17078446950510651341

namespace A163695

/-- `round(ϕ*a(n-1))` -/
def P17078446950510651341.Spec : Prop :=
  ∀ n, P17078446950510651341.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P251930000435744318

`a(n-1)-(char[3]-a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A163695.P251930000435744318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A163695.P251930000435744318

namespace A163695

/-- `a(n-1)-(char[3]-a(n-2))` -/
def P251930000435744318.Spec : Prop :=
  ∀ n, P251930000435744318.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P17508356812460711094

`char[1]+∑[A169985(n)]+1`
-/

namespace A163695.P17508356812460711094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A163695.P17508356812460711094

namespace A163695

/-- `char[1]+∑[A169985(n)]+1` -/
def P17508356812460711094.Spec : Prop :=
  ∀ n, P17508356812460711094.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P4681516240558318299

`char[1]+∑[char[1]+A000032(n)]`
-/

namespace A163695.P4681516240558318299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + A000032 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163695.P4681516240558318299

namespace A163695

/-- `char[1]+∑[char[1]+A000032(n)]` -/
def P4681516240558318299.Spec : Prop :=
  ∀ n, P4681516240558318299.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P1127918042049466504

`char[1]+record[A000032(char[2]+n)]`
-/

namespace A163695.P1127918042049466504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((if ∃ j, f3 j = n then 1 else 0) + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A163695.P1127918042049466504

namespace A163695

/-- `char[1]+record[A000032(char[2]+n)]` -/
def P1127918042049466504.Spec : Prop :=
  ∀ n, P1127918042049466504.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P5036215666004780192

`xor(C(n, n²), A000032(n+2))`
-/

namespace A163695.P5036215666004780192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose n (n ^ 2) : ℤ) (A000032 (n + 2))

end

end A163695.P5036215666004780192

namespace A163695

/-- `xor(C(n, n²), A000032(n+2))` -/
def P5036215666004780192.Spec : Prop :=
  ∀ n, P5036215666004780192.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P2527168463108149397

`round(ratio[A000045(n+3)]^(n+2))`
-/

namespace A163695.P2527168463108149397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 2))

end

end A163695.P2527168463108149397

namespace A163695

/-- `round(ratio[A000045(n+3)]^(n+2))` -/
def P2527168463108149397.Spec : Prop :=
  ∀ n, P2527168463108149397.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P7272023563865904746

`char[1]+A000032(ceil(sqrt(n*(n+4))))`
-/

namespace A163695.P7272023563865904746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A000032 ⌈Real.sqrt (n * (n + 4) : ℝ)⌉.toNat

end

end A163695.P7272023563865904746

namespace A163695

/-- `char[1]+A000032(ceil(sqrt(n*(n+4))))` -/
def P7272023563865904746.Spec : Prop :=
  ∀ n, P7272023563865904746.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P14779962430561086680

`A288219(n)+A063524(n)`
-/

namespace A163695.P14779962430561086680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n + A063524 n

end

end A163695.P14779962430561086680

namespace A163695

/-- `A288219(n)+A063524(n)` -/
def P14779962430561086680.Spec : Prop :=
  ∀ n, P14779962430561086680.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P3900621976241593261

`A288219(n)-A159075(n)`
-/

namespace A163695.P3900621976241593261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 n - A159075 n

end

end A163695.P3900621976241593261

namespace A163695

/-- `A288219(n)-A159075(n)` -/
def P3900621976241593261.Spec : Prop :=
  ∀ n, P3900621976241593261.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P11744107467054111572

`A104435(n+1)+A014739(n)`
-/

namespace A163695.P11744107467054111572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104435 (n + 1) + A014739 n

end

end A163695.P11744107467054111572

namespace A163695

/-- `A104435(n+1)+A014739(n)` -/
def P11744107467054111572.Spec : Prop :=
  ∀ n, P11744107467054111572.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P14603059879817103975

`A163733(n+1)+A000285(n)`
-/

namespace A163695.P14603059879817103975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 1) + A000285 n

end

end A163695.P14603059879817103975

namespace A163695

/-- `A163733(n+1)+A000285(n)` -/
def P14603059879817103975.Spec : Prop :=
  ∀ n, P14603059879817103975.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P14015511636761609973

`A169985(n)+A000204(n+1)`
-/

namespace A163695.P14015511636761609973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + A000204 (n + 1)

end

end A163695.P14015511636761609973

namespace A163695

/-- `A169985(n)+A000204(n+1)` -/
def P14015511636761609973.Spec : Prop :=
  ∀ n, P14015511636761609973.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P15438687943632502104

`A001610(n)+A169985(n)+1`
-/

namespace A163695.P15438687943632502104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + (A169985 n + 1)

end

end A163695.P15438687943632502104

namespace A163695

/-- `A001610(n)+A169985(n)+1` -/
def P15438687943632502104.Spec : Prop :=
  ∀ n, P15438687943632502104.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P1472629555100703431

`A373566(n)+A128588(n+1)`
-/

namespace A163695.P1472629555100703431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 n + A128588 (n + 1)

end

end A163695.P1472629555100703431

namespace A163695

/-- `A373566(n)+A128588(n+1)` -/
def P1472629555100703431.Spec : Prop :=
  ∀ n, P1472629555100703431.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P5112573634501403937

`A001610(n)+A324015(n)+2`
-/

namespace A163695.P5112573634501403937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + (A324015 n + 2)

end

end A163695.P5112573634501403937

namespace A163695

/-- `A001610(n)+A324015(n)+2` -/
def P5112573634501403937.Spec : Prop :=
  ∀ n, P5112573634501403937.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P13799858442452103947

`A169985(n)+A090244(2*n)`
-/

namespace A163695.P13799858442452103947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n + A090244 (2 * n)

end

end A163695.P13799858442452103947

namespace A163695

/-- `A169985(n)+A090244(2*n)` -/
def P13799858442452103947.Spec : Prop :=
  ∀ n, P13799858442452103947.a n = A163695 (n + 1)

end A163695

/-! ## A163695.P10759180227029587761

`A090244(2*n)+record[A090244(n)]`
-/

namespace A163695.P10759180227029587761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163695.P10759180227029587761

namespace A163695

/-- `A090244(2*n)+record[A090244(n)]` -/
def P10759180227029587761.Spec : Prop :=
  ∀ n, P10759180227029587761.a n = A163695 (n + 1)

end A163695

/-!
# A163696: Number of n X 3 binary arrays with all 1s connected, a path of 1s from top row to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163696, there is no canonical definition to state claims against.
-/

/-! ## A163696.P8339191324832260699

`A391823(∑[n+3]+1)`
-/

namespace A163696.P8339191324832260699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A163696.P8339191324832260699

/-! ## A163696.P836964259293920157

`A158388(n+1)*A391823(A052905(n)+3)`
-/

namespace A163696.P836964259293920157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A391823 (A052905 n + 3).toNat

end

end A163696.P836964259293920157

/-!
# A163697: Number of n X 4 binary arrays with all 1s connected, a path of 1s from top row to lower right corner, and no 1 having more than two 1s adjacent.

The programs for A163697, there is no canonical definition to state claims against.
-/

/-! ## A163697.P13461153897823214327

`A391823(A141214(n+1))`
-/

namespace A163697.P13461153897823214327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A141214 (n + 1)).toNat

end

end A163697.P13461153897823214327

/-! ## A163697.P12149909115909688467

`A391823(A027379(n+2))`
-/

namespace A163697.P12149909115909688467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A027379 (n + 2)).toNat

end

end A163697.P12149909115909688467

/-! ## A163697.P4658832337264564642

`A391823(A000217(n+4)-3)`
-/

namespace A163697.P4658832337264564642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391823 (A000217 (n + 4) - 3).toNat

end

end A163697.P4658832337264564642


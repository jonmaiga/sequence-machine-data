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
import Seq.B001.C010
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A192800: Coefficient of x^2 in the reduction of the n-th Fibonacci polynomial by x^3->x^2+2.

The programs for A192800, the canonical program `A192800.P18173862455780255605` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192800 has offset 1).

The definition of A192800 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192800.P18173862455780255605

`a(n-1)+3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4, a(5)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192800

/-- `a(n-1)+3*a(n-2)-3*a(n-4)+a(n-5)+a(n-6)` -/
def P18173862455780255605.Spec : Prop :=
  ∀ n, P18173862455780255605.a n = A192800 (n + 1)

theorem P18173862455780255605.correct : P18173862455780255605.Spec := by
  intro n
  simp only [A192800, Nat.add_sub_cancel]

end A192800

/-! ## A192800.P16545238814713372313

`A135663(or(n², A148987(n)))`
-/

namespace A192800.P16545238814713372313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (Int.lor (n ^ 2 : ℤ) (A148987 n)).toNat

end

end A192800.P16545238814713372313

namespace A192800

/-- `A135663(or(n², A148987(n)))` -/
def P16545238814713372313.Spec : Prop :=
  ∀ n, P16545238814713372313.a n = A192800 (n + 1)

end A192800

/-! ## A192800.P3581046608724685383

`A138366(A351938(n)+A004526(n))`
-/

namespace A192800.P3581046608724685383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138366 (A351938 n + A004526 n).toNat

end

end A192800.P3581046608724685383

namespace A192800

/-- `A138366(A351938(n)+A004526(n))` -/
def P3581046608724685383.Spec : Prop :=
  ∀ n, P3581046608724685383.a n = A192800 (n + 1)

end A192800

/-! ## A192800.P6655616151824918790

`A332669(n)+A326839(A001405(n))`
-/

namespace A192800.P6655616151824918790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332669 n + A326839 (A001405 n).toNat

end

end A192800.P6655616151824918790

namespace A192800

/-- `A332669(n)+A326839(A001405(n))` -/
def P6655616151824918790.Spec : Prop :=
  ∀ n, P6655616151824918790.a n = A192800 (n + 1)

end A192800

/-! ## A192800.P9972616956981052872

`A100617(A268213(n))-A025047(n)`
-/

namespace A192800.P9972616956981052872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A268213 n).toNat - A025047 n

end

end A192800.P9972616956981052872

namespace A192800

/-- `A100617(A268213(n))-A025047(n)` -/
def P9972616956981052872.Spec : Prop :=
  ∀ n, P9972616956981052872.a n = A192800 (n + 1)

end A192800

/-!
# A192801: Constant term in the reduction of the polynomial (x+2)^n by x^3->x^2+x+1. See Comments.

The programs for A192801, the canonical program `A192801.P15048149650280483727` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192801 has offset 0).

The definition of A192801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192801.P15048149650280483727

`7*a(n-1)-15*a(n-2)+11*a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192801

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)` -/
def P15048149650280483727.Spec : Prop :=
  ∀ n, P15048149650280483727.a n = A192801 n

theorem P15048149650280483727.correct : P15048149650280483727.Spec := by
  intro n
  simp only [A192801]

end A192801

/-! ## A192801.P14779004597946711926

`∑[∑[A339765(A007581(n)+2)]+2]`
-/

namespace A192801.P14779004597946711926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339765 (A007581 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192801.P14779004597946711926

namespace A192801

/-- `∑[∑[A339765(A007581(n)+2)]+2]` -/
def P14779004597946711926.Spec : Prop :=
  ∀ n, P14779004597946711926.a n = A192801 n

end A192801

/-! ## A192801.P16394965693277381286

`∑[A157271(A122452(n))]`
-/

namespace A192801.P16394965693277381286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A122452 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192801.P16394965693277381286

namespace A192801

/-- `∑[A157271(A122452(n))]` -/
def P16394965693277381286.Spec : Prop :=
  ∀ n, P16394965693277381286.a n = A192801 n

end A192801

/-!
# A192802: Coefficient of x in the reduction of the polynomial (x+2)^n by x^3->x^2+x+1.

The programs for A192802, the canonical program `A192802.P7040804911179671190` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192802 has offset 0).

The definition of A192802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192802.P7040804911179671190

`7*a(n-1)-15*a(n-2)+11*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192802

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)` -/
def P7040804911179671190.Spec : Prop :=
  ∀ n, P7040804911179671190.a n = A192802 n

theorem P7040804911179671190.correct : P7040804911179671190.Spec := by
  intro n
  simp only [A192802]

end A192802

/-! ## A192802.P11577635393035572215

`A192803(n+1)-3*A192803(n)`
-/

namespace A192802.P11577635393035572215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192803 (n + 1) - 3 * A192803 n

end

end A192802.P11577635393035572215

namespace A192802

/-- `A192803(n+1)-3*A192803(n)` -/
def P11577635393035572215.Spec : Prop :=
  ∀ n, P11577635393035572215.a n = A192802 n

end A192802

/-! ## A192802.P11337711947361821573

`A192803(n+1)-A008585(A192803(n))`
-/

namespace A192802.P11337711947361821573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192803 (n + 1) - A008585 (A192803 n).toNat

end

end A192802.P11337711947361821573

namespace A192802

/-- `A192803(n+1)-A008585(A192803(n))` -/
def P11337711947361821573.Spec : Prop :=
  ∀ n, P11337711947361821573.a n = A192802 n

end A192802

/-! ## A192802.P15368561673713256531

`A081134(∑[∑[A071721(n)]])`
-/

namespace A192802.P15368561673713256531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192802.P15368561673713256531

namespace A192802

/-- `A081134(∑[∑[A071721(n)]])` -/
def P15368561673713256531.Spec : Prop :=
  ∀ n, P15368561673713256531.a n = A192802 n

end A192802

/-!
# A192803: Coefficient of x^2 in the reduction of the polynomial (x+2)^n by x^3->x^2+x+1.

The programs for A192803, the canonical program `A192803.P4094213241484811850` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192803 has offset 0).

The definition of A192803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192803.P4094213241484811850

`7*a(n-1)-15*a(n-2)+11*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192803

/-- `7*a(n-1)-15*a(n-2)+11*a(n-3)` -/
def P4094213241484811850.Spec : Prop :=
  ∀ n, P4094213241484811850.a n = A192803 n

theorem P4094213241484811850.correct : P4094213241484811850.Spec := by
  intro n
  simp only [A192803]

end A192803

/-! ## A192803.P6388458585569604907

`Δ[A192801(n)]-A192801(n)`
-/

namespace A192803.P6388458585569604907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192801 n

end

end A192803.P6388458585569604907

namespace A192803

/-- `Δ[A192801(n)]-A192801(n)` -/
def P6388458585569604907.Spec : Prop :=
  ∀ n, P6388458585569604907.a n = A192803 n

end A192803

/-! ## A192803.P16193469790811038418

`A192801(n+1)-2*A192801(n)`
-/

namespace A192803.P16193469790811038418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192801 (n + 1) - 2 * A192801 n

end

end A192803.P16193469790811038418

namespace A192803

/-- `A192801(n+1)-2*A192801(n)` -/
def P16193469790811038418.Spec : Prop :=
  ∀ n, P16193469790811038418.a n = A192803 n

end A192803

/-! ## A192803.P16530284311445931733

`A192801(comp[2*n]-n)%(2*A192801(n))`
-/

namespace A192803.P16530284311445931733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192801 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)) (2 * A192801 n)

end

end A192803.P16530284311445931733

namespace A192803

/-- `A192801(comp[2*n]-n)%(2*A192801(n))` -/
def P16530284311445931733.Spec : Prop :=
  ∀ n, P16530284311445931733.a n = A192803 n

end A192803

/-! ## A192803.P10463638575594846398

`A192801(n+1)%A028310(2*A192801(n))`
-/

namespace A192803.P10463638575594846398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192801 (n + 1)) (A028310 (2 * A192801 n).toNat)

end

end A192803.P10463638575594846398

namespace A192803

/-- `A192801(n+1)%A028310(2*A192801(n))` -/
def P10463638575594846398.Spec : Prop :=
  ∀ n, P10463638575594846398.a n = A192803 n

end A192803

/-!
# A192804: Constant term in the reduction of the polynomial 1+x+x^2+...+x^n by x^3->x^2+x+1. See Comments.

The programs for A192804, the canonical program `A192804.P8468806043529360004` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192804 has offset 0).

The definition of A192804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192804.P8468806043529360004

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192804

/-- `2*a(n-1)-a(n-4)` -/
def P8468806043529360004.Spec : Prop :=
  ∀ n, P8468806043529360004.a n = A192804 n

theorem P8468806043529360004.correct : P8468806043529360004.Spec := by
  intro n
  simp only [A192804]

end A192804

/-! ## A192804.P963113952642801152

`a(n-1)+a(n-2)+a(n-3)-1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192804.P963113952642801152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - 1

end

end A192804.P963113952642801152

namespace A192804

/-- `a(n-1)+a(n-2)+a(n-3)-1` -/
def P963113952642801152.Spec : Prop :=
  ∀ n, P963113952642801152.a n = A192804 n

end A192804

/-! ## A192804.P18423038966830402145

`∑[ogf((-1+x+x^2)/(-1+x+x^2+x^3))]`
-/

namespace A192804.P18423038966830402145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192804.P18423038966830402145

namespace A192804

/-- `∑[ogf((-1+x+x^2)/(-1+x+x^2+x^3))]` -/
def P18423038966830402145.Spec : Prop :=
  ∀ n, P18423038966830402145.a n = A192804 n

end A192804

/-! ## A192804.P14098008661946618719

`ogf((1-x-x^2)/(1-2x+x^4))`
-/

namespace A192804.P14098008661946618719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -2, 0, 0, 1] n

end

end A192804.P14098008661946618719

namespace A192804

/-- `ogf((1-x-x^2)/(1-2x+x^4))` -/
def P14098008661946618719.Spec : Prop :=
  ∀ n, P14098008661946618719.a n = A192804 n

end A192804

/-! ## A192804.P14687370083349114761

`a(n-1)+a(n-1)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A192804.P14687370083349114761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 4))

end

end A192804.P14687370083349114761

namespace A192804

/-- `a(n-1)+a(n-1)-a(n-4)` -/
def P14687370083349114761.Spec : Prop :=
  ∀ n, P14687370083349114761.a n = A192804 n

theorem P14687370083349114761.correct : P14687370083349114761.Spec := by
  intro n
  simp only [A192804, Nat.add_sub_cancel, A192804.P14687370083349114761.a, A192804.P8468806043529360004.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192804

/-! ## A192804.P4084417484429380611

`a(n-1)-(1-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192804.P4084417484429380611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (1 - a (n - 2) - a (n - 3))

end

end A192804.P4084417484429380611

namespace A192804

/-- `a(n-1)-(1-a(n-2)-a(n-3))` -/
def P4084417484429380611.Spec : Prop :=
  ∀ n, P4084417484429380611.a n = A192804 n

end A192804

/-! ## A192804.P6003456555100292406

`A001590(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192804.P6003456555100292406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001590 n + a (n - 2)

end

end A192804.P6003456555100292406

namespace A192804

/-- `A001590(n)+a(n-2)` -/
def P6003456555100292406.Spec : Prop :=
  ∀ n, P6003456555100292406.a n = A192804 n

end A192804

/-! ## A192804.P17882458565733551491

`A000073(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192804.P17882458565733551491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000073 n + a (n - 3)

end

end A192804.P17882458565733551491

namespace A192804

/-- `A000073(n)+a(n-3)` -/
def P17882458565733551491.Spec : Prop :=
  ∀ n, P17882458565733551491.a n = A192804 n

end A192804

/-! ## A192804.P12776854985015421500

`A390349(n)-A004695(n)`
-/

namespace A192804.P12776854985015421500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390349 n - A004695 n

end

end A192804.P12776854985015421500

namespace A192804

/-- `A390349(n)-A004695(n)` -/
def P12776854985015421500.Spec : Prop :=
  ∀ n, P12776854985015421500.a n = A192804 n

end A192804

/-! ## A192804.P8656581437965457821

`ceil(A000213(n)/2)`
-/

namespace A192804.P8656581437965457821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000213 n : ℚ) / 2⌉

end

end A192804.P8656581437965457821

namespace A192804

/-- `ceil(A000213(n)/2)` -/
def P8656581437965457821.Spec : Prop :=
  ∀ n, P8656581437965457821.a n = A192804 n

end A192804

/-! ## A192804.P2873142623043248287

`A000007(n)+Δ[A325473(n)]`
-/

namespace A192804.P2873142623043248287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A192804.P2873142623043248287

namespace A192804

/-- `A000007(n)+Δ[A325473(n)]` -/
def P2873142623043248287.Spec : Prop :=
  ∀ n, P2873142623043248287.a n = A192804 n

end A192804

/-! ## A192804.P11694613828358027628

`∑[A000213(n)-∑[A001590(n)]]`
-/

namespace A192804.P11694613828358027628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192804.P11694613828358027628

namespace A192804

/-- `∑[A000213(n)-∑[A001590(n)]]` -/
def P11694613828358027628.Spec : Prop :=
  ∀ n, P11694613828358027628.a n = A192804 n

end A192804

/-! ## A192804.P2047678095630839829

`(A000213(n)+A057077(n)²)/2`
-/

namespace A192804.P2047678095630839829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n + A057077 n ^ 2 : ℚ) / 2

end

end A192804.P2047678095630839829

namespace A192804

/-- `(A000213(n)+A057077(n)²)/2` -/
def P2047678095630839829.Spec : Prop :=
  ∀ n, P2047678095630839829.a n = (A192804 n : ℚ)

end A192804

/-! ## A192804.P1679234327520572247

`∑[A000073(n)]+1-A000073(n)`
-/

namespace A192804.P1679234327520572247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000073 n)

end

end A192804.P1679234327520572247

namespace A192804

/-- `∑[A000073(n)]+1-A000073(n)` -/
def P1679234327520572247.Spec : Prop :=
  ∀ n, P1679234327520572247.a n = A192804 n

end A192804

/-! ## A192804.P2338309662524358493

`Δ[A325473(n)]+A000038(n)/2`
-/

namespace A192804.P2338309662524358493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A000038 n : ℚ) / 2

end

end A192804.P2338309662524358493

namespace A192804

/-- `Δ[A325473(n)]+A000038(n)/2` -/
def P2338309662524358493.Spec : Prop :=
  ∀ n, P2338309662524358493.a n = (A192804 n : ℚ)

end A192804

/-! ## A192804.P9696103449160773627

`A325473(A028310(n)+1)-A325473(n)`
-/

namespace A192804.P9696103449160773627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (A028310 n + 1).toNat - A325473 n

end

end A192804.P9696103449160773627

namespace A192804

/-- `A325473(A028310(n)+1)-A325473(n)` -/
def P9696103449160773627.Spec : Prop :=
  ∀ n, P9696103449160773627.a n = A192804 n

end A192804

/-! ## A192804.P16261521457229237886

`A325473(A233583(n+2))-A325473(n)`
-/

namespace A192804.P16261521457229237886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (A233583 (n + 2)).toNat - A325473 n

end

end A192804.P16261521457229237886

namespace A192804

/-- `A325473(A233583(n+2))-A325473(n)` -/
def P16261521457229237886.Spec : Prop :=
  ∀ n, P16261521457229237886.a n = A192804 n

end A192804

/-! ## A192804.P8258322951486007268

`∑[A112476(n)+A033999(n)]-A112476(n)`
-/

namespace A192804.P8258322951486007268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 n + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A112476 n

end

end A192804.P8258322951486007268

namespace A192804

/-- `∑[A112476(n)+A033999(n)]-A112476(n)` -/
def P8258322951486007268.Spec : Prop :=
  ∀ n, P8258322951486007268.a n = A192804 n

end A192804

/-! ## A192804.P16771643687867023285

`∑[A081172(n)+A081172(n)-A276658(n)]`
-/

namespace A192804.P16771643687867023285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (A081172 n - A276658 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192804.P16771643687867023285

namespace A192804

/-- `∑[A081172(n)+A081172(n)-A276658(n)]` -/
def P16771643687867023285.Spec : Prop :=
  ∀ n, P16771643687867023285.a n = A192804 n

end A192804

/-! ## A192804.P4998317810402669117

`A000073(n)-(∑[A000073(n)]-A000213(n))`
-/

namespace A192804.P4998317810402669117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n - (∑ j ∈ Finset.range (n + 1), f1 j - A000213 n)

end

end A192804.P4998317810402669117

namespace A192804

/-- `A000073(n)-(∑[A000073(n)]-A000213(n))` -/
def P4998317810402669117.Spec : Prop :=
  ∀ n, P4998317810402669117.a n = A192804 n

end A192804

/-!
# A192805: Constant term in the reduction of the polynomial 1+x+x^2+...+x^n by x^3->x^2+2x+1. See Comments.

The programs for A192805, the canonical program `A192805.P15901281959514749608` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192805 has offset 0).

The definition of A192805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192805.P15901281959514749608

`2*a(n-1)+a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192805

/-- `2*a(n-1)+a(n-2)-a(n-3)-a(n-4)` -/
def P15901281959514749608.Spec : Prop :=
  ∀ n, P15901281959514749608.a n = A192805 n

theorem P15901281959514749608.correct : P15901281959514749608.Spec := by
  intro n
  simp only [A192805]

end A192805

/-! ## A192805.P7474991637783696053

`∑[ogf((-1+x+2x^2)/(-1+x+2x^2+x^3))]`
-/

namespace A192805.P7474991637783696053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -1, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192805.P7474991637783696053

namespace A192805

/-- `∑[ogf((-1+x+2x^2)/(-1+x+2x^2+x^3))]` -/
def P7474991637783696053.Spec : Prop :=
  ∀ n, P7474991637783696053.a n = A192805 n

end A192805

/-! ## A192805.P11288289987717927477

`ogf((1-x-2x^2)/(1-2x-x^2+x^3+x^4))`
-/

namespace A192805.P11288289987717927477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2] [1, -2, -1, 1, 1] n

end

end A192805.P11288289987717927477

namespace A192805

/-- `ogf((1-x-2x^2)/(1-2x-x^2+x^3+x^4))` -/
def P11288289987717927477.Spec : Prop :=
  ∀ n, P11288289987717927477.a n = A192805 n

end A192805

/-! ## A192805.P371855042761040307

`2*(a(n-2)-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192805.P371855042761040307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * (a (n - 2) - 1) + (a (n - 1) + a (n - 3))

end

end A192805.P371855042761040307

namespace A192805

/-- `2*(a(n-2)-1)+a(n-1)+a(n-3)` -/
def P371855042761040307.Spec : Prop :=
  ∀ n, P371855042761040307.a n = A192805 n

end A192805

/-! ## A192805.P7198400355672593659

`a(n-1)-(2*(1-a(n-2))-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192805.P7198400355672593659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (2 * (1 - a (n - 2)) - a (n - 3))

end

end A192805.P7198400355672593659

namespace A192805

/-- `a(n-1)-(2*(1-a(n-2))-a(n-3))` -/
def P7198400355672593659.Spec : Prop :=
  ∀ n, P7198400355672593659.a n = A192805 n

end A192805

/-! ## A192805.P2561341970353328302

`a(n-1)-2+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192805.P2561341970353328302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - 2 + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A192805.P2561341970353328302

namespace A192805

/-- `a(n-1)-2+a(n-2)+a(n-2)+a(n-3)` -/
def P2561341970353328302.Spec : Prop :=
  ∀ n, P2561341970353328302.a n = A192805 n

end A192805

/-! ## A192805.P11922889666373344873

`a(n-1)-(2-a(n-2)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A192805.P11922889666373344873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - (2 - a (n - 2) - a (n - 2) - a (n - 3))

end

end A192805.P11922889666373344873

namespace A192805

/-- `a(n-1)-(2-a(n-2)-a(n-2)-a(n-3))` -/
def P11922889666373344873.Spec : Prop :=
  ∀ n, P11922889666373344873.a n = A192805 n

end A192805

/-! ## A192805.P11452072310368460075

`A107458(Δ[n²])+1`
-/

namespace A192805.P11452072310368460075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A192805.P11452072310368460075

namespace A192805

/-- `A107458(Δ[n²])+1` -/
def P11452072310368460075.Spec : Prop :=
  ∀ n, P11452072310368460075.a n = A192805 n

end A192805

/-! ## A192805.P5706942061833997124

`∑[A078012(abs(2*n-3))]`
-/

namespace A192805.P5706942061833997124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 |(2 * n : ℤ) - 3|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192805.P5706942061833997124

namespace A192805

/-- `∑[A078012(abs(2*n-3))]` -/
def P5706942061833997124.Spec : Prop :=
  ∀ n, P5706942061833997124.a n = A192805 n

end A192805

/-! ## A192805.P6361777691982108945

`A142474(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A192805.P6361777691982108945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A142474 n + a (n - 2)

end

end A192805.P6361777691982108945

namespace A192805

/-- `A142474(n)+a(n-2)` -/
def P6361777691982108945.Spec : Prop :=
  ∀ n, P6361777691982108945.a n = A192805 n

end A192805

/-! ## A192805.P1077610460132134378

`A262735(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A192805.P1077610460132134378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262735 n + (1 - a (n - 1))

end

end A192805.P1077610460132134378

namespace A192805

/-- `A262735(n)+1-a(n-1)` -/
def P1077610460132134378.Spec : Prop :=
  ∀ n, P1077610460132134378.a n = A192805 n

end A192805

/-! ## A192805.P16292614740903786296

`1-(A107458(2*n)-A078012(2*n))`
-/

namespace A192805.P16292614740903786296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A107458 (2 * n) - A078012 (2 * n))

end

end A192805.P16292614740903786296

namespace A192805

/-- `1-(A107458(2*n)-A078012(2*n))` -/
def P16292614740903786296.Spec : Prop :=
  ∀ n, P16292614740903786296.a n = A192805 n

end A192805

/-! ## A192805.P18404935609199024463

`ceil(A108122(n)/3)`
-/

namespace A192805.P18404935609199024463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108122 n : ℚ) / 3⌉

end

end A192805.P18404935609199024463

namespace A192805

/-- `ceil(A108122(n)/3)` -/
def P18404935609199024463.Spec : Prop :=
  ∀ n, P18404935609199024463.a n = A192805 n

end A192805

/-! ## A192805.P10649499663061051409

`A277253(2*n)+1-A078012(2*n)`
-/

namespace A192805.P10649499663061051409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (2 * n) + (1 - A078012 (2 * n))

end

end A192805.P10649499663061051409

namespace A192805

/-- `A277253(2*n)+1-A078012(2*n)` -/
def P10649499663061051409.Spec : Prop :=
  ∀ n, P10649499663061051409.a n = A192805 n

end A192805

/-! ## A192805.P9328512565753468130

`A013979(2*n)-A107458(2*n+3)`
-/

namespace A192805.P9328512565753468130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (2 * n) - A107458 (2 * n + 3)

end

end A192805.P9328512565753468130

namespace A192805

/-- `A013979(2*n)-A107458(2*n+3)` -/
def P9328512565753468130.Spec : Prop :=
  ∀ n, P9328512565753468130.a n = A192805 n

end A192805

/-! ## A192805.P8324607256800843328

`∑[∑[A078012(2*n)]-A277252(2*n)]`
-/

namespace A192805.P8324607256800843328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A277252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192805.P8324607256800843328

namespace A192805

/-- `∑[∑[A078012(2*n)]-A277252(2*n)]` -/
def P8324607256800843328.Spec : Prop :=
  ∀ n, P8324607256800843328.a n = A192805 n

end A192805

/-! ## A192805.P18369120730830512399

`A058278(2*n+1)+1-A013979(2*n)`
-/

namespace A192805.P18369120730830512399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n + 1) + (1 - A013979 (2 * n))

end

end A192805.P18369120730830512399

namespace A192805

/-- `A058278(2*n+1)+1-A013979(2*n)` -/
def P18369120730830512399.Spec : Prop :=
  ∀ n, P18369120730830512399.a n = A192805 n

end A192805

/-! ## A192805.P6179746836868682062

`∑[A078012(2*n+1)-Δ[A078012(2*n)]]`
-/

namespace A192805.P6179746836868682062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192805.P6179746836868682062

namespace A192805

/-- `∑[A078012(2*n+1)-Δ[A078012(2*n)]]` -/
def P6179746836868682062.Spec : Prop :=
  ∀ n, P6179746836868682062.a n = A192805 n

end A192805

/-! ## A192805.P8186061165988699949

`A078012(2*n+1)+A013979(2*n)-A013979(2*n+1)`
-/

namespace A192805.P8186061165988699949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 1) + (A013979 (2 * n) - A013979 (2 * n + 1))

end

end A192805.P8186061165988699949

namespace A192805

/-- `A078012(2*n+1)+A013979(2*n)-A013979(2*n+1)` -/
def P8186061165988699949.Spec : Prop :=
  ∀ n, P8186061165988699949.a n = A192805 n

end A192805

/-! ## A192805.P9322827369986303333

`∑[Δ[A141015(n)]-A141015(n)]`
-/

namespace A192805.P9322827369986303333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A141015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192805.P9322827369986303333

namespace A192805

/-- `∑[Δ[A141015(n)]-A141015(n)]` -/
def P9322827369986303333.Spec : Prop :=
  ∀ n, P9322827369986303333.a n = A192805 n

end A192805

/-!
# A192806: a(n) = 7*a(n-1) - 5*a(n-2) + a(n-3), with initial values a(0) = a(1) = 1, a(2)=4.

The programs for A192806, the canonical program `A192806.P1284850001285261182` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192806 has offset 0).

The definition of A192806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-5*a(n-2)+a(n-3)` (program `A192806.P1284850001285261182`, by `A192806.P1284850001285261182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192806.P1284850001285261182

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192806

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P1284850001285261182.Spec : Prop :=
  ∀ n, P1284850001285261182.a n = A192806 n

theorem P1284850001285261182.correct : P1284850001285261182.Spec := by
  intro n
  simp only [A192806]

end A192806

/-! ## A192806.P16443056976412438805

`ogf((1-6x+2x^2)/(1-7x+5x^2-x^3))`
-/

namespace A192806.P16443056976412438805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 2] [1, -7, 5, -1] n

end

end A192806.P16443056976412438805

namespace A192806

/-- `ogf((1-6x+2x^2)/(1-7x+5x^2-x^3))` -/
def P16443056976412438805.Spec : Prop :=
  ∀ n, P16443056976412438805.a n = A192806 n

end A192806

/-! ## A192806.P13006507194381607366

`A213816(A100764(n+2))`
-/

namespace A192806.P13006507194381607366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (A100764 (n + 2)).toNat

end

end A192806.P13006507194381607366

namespace A192806

/-- `A213816(A100764(n+2))` -/
def P13006507194381607366.Spec : Prop :=
  ∀ n, P13006507194381607366.a n = A192806 n

end A192806

/-! ## A192806.P7439318647217859895

`A000073(ceil(sqrt(A154254(n))))`
-/

namespace A192806.P7439318647217859895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 ⌈Real.sqrt (A154254 n : ℝ)⌉.toNat

end

end A192806.P7439318647217859895

namespace A192806

/-- `A000073(ceil(sqrt(A154254(n))))` -/
def P7439318647217859895.Spec : Prop :=
  ∀ n, P7439318647217859895.a n = A192806 n

end A192806

/-! ## A192806.P1599940403250871040

`A000073(record[A006368(n)+2])`
-/

namespace A192806.P1599940403250871040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192806.P1599940403250871040

namespace A192806

/-- `A000073(record[A006368(n)+2])` -/
def P1599940403250871040.Spec : Prop :=
  ∀ n, P1599940403250871040.a n = A192806 n

end A192806

/-! ## A192806.P118851683869759873

`A000073(A004277(n)+abs(1-n))`
-/

namespace A192806.P118851683869759873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A004277 n + |1 - (n : ℤ)|).toNat

end

end A192806.P118851683869759873

namespace A192806

/-- `A000073(A004277(n)+abs(1-n))` -/
def P118851683869759873.Spec : Prop :=
  ∀ n, P118851683869759873.a n = A192806 n

end A192806

/-! ## A192806.P1590162732827641953

`∑[A001590(A004280(2*n+1)-n)]`
-/

namespace A192806.P1590162732827641953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A004280 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192806.P1590162732827641953

namespace A192806

/-- `∑[A001590(A004280(2*n+1)-n)]` -/
def P1590162732827641953.Spec : Prop :=
  ∀ n, P1590162732827641953.a n = A192806 n

end A192806

/-! ## A192806.P10769523324417749302

`A213816(A271114(round(sqrt(n²+1))-1))`
-/

namespace A192806.P10769523324417749302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (A271114 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat).toNat

end

end A192806.P10769523324417749302

namespace A192806

/-- `A213816(A271114(round(sqrt(n²+1))-1))` -/
def P10769523324417749302.Spec : Prop :=
  ∀ n, P10769523324417749302.a n = A192806 n

end A192806

/-! ## A192806.P2588638098792359062

`A000073(A233583(abs(1-n)+2*n)+1)`
-/

namespace A192806.P2588638098792359062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A233583 (|1 - (n : ℤ)| + (2 * n : ℤ)).toNat + 1).toNat

end

end A192806.P2588638098792359062

namespace A192806

/-- `A000073(A233583(abs(1-n)+2*n)+1)` -/
def P2588638098792359062.Spec : Prop :=
  ∀ n, P2588638098792359062.a n = A192806 n

end A192806

/-! ## A192806.P7913309961058171358

`A000073(A007494(record[A029579(n)]))`
-/

namespace A192806.P7913309961058171358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A007494 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A192806.P7913309961058171358

namespace A192806

/-- `A000073(A007494(record[A029579(n)]))` -/
def P7913309961058171358.Spec : Prop :=
  ∀ n, P7913309961058171358.a n = A192806 n

end A192806

/-! ## A192806.P11226770025443725630

`A000073(A080513(record[A165355(n)]))`
-/

namespace A192806.P11226770025443725630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A080513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A192806.P11226770025443725630

namespace A192806

/-- `A000073(A080513(record[A165355(n)]))` -/
def P11226770025443725630.Spec : Prop :=
  ∀ n, P11226770025443725630.a n = A192806 n

end A192806

/-! ## A192806.P16339008725995572365

`A213816(record[A026741(A016777(n))])`
-/

namespace A192806.P16339008725995572365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A192806.P16339008725995572365

namespace A192806

/-- `A213816(record[A026741(A016777(n))])` -/
def P16339008725995572365.Spec : Prop :=
  ∀ n, P16339008725995572365.a n = A192806 n

end A192806

/-!
# A192807: Coefficient of x in the reduction of the polynomial (x^2 + x + 1)^n by x^3 -> x^2 + x + 1.

The programs for A192807, the canonical program `A192807.P18316777381519479978` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192807 has offset 0).

The definition of A192807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192807.P18316777381519479978

`7*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192807

/-- `7*a(n-1)-5*a(n-2)+a(n-3)` -/
def P18316777381519479978.Spec : Prop :=
  ∀ n, P18316777381519479978.a n = A192807 n

theorem P18316777381519479978.correct : P18316777381519479978.Spec := by
  intro n
  simp only [A192807]

end A192807

/-! ## A192807.P12454904122784876114

`ogf((x-x^2)/(1-7x+5x^2-x^3))`
-/

namespace A192807.P12454904122784876114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1] [1, -7, 5, -1] n

end

end A192807.P12454904122784876114

namespace A192807

/-- `ogf((x-x^2)/(1-7x+5x^2-x^3))` -/
def P12454904122784876114.Spec : Prop :=
  ∀ n, P12454904122784876114.a n = A192807 n

end A192807

/-! ## A192807.P12922331966718359691

`A001590(3*n)`
-/

namespace A192807.P12922331966718359691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (3 * n)

end

end A192807.P12922331966718359691

namespace A192807

/-- `A001590(3*n)` -/
def P12922331966718359691.Spec : Prop :=
  ∀ n, P12922331966718359691.a n = A192807 n

end A192807

/-! ## A192807.P9763878645349236262

`record[A001590(A006368(n))]`
-/

namespace A192807.P9763878645349236262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192807.P9763878645349236262

namespace A192807

/-- `record[A001590(A006368(n))]` -/
def P9763878645349236262.Spec : Prop :=
  ∀ n, P9763878645349236262.a n = A192807 n

end A192807

/-! ## A192807.P7923115671761042622

`record[A001590(n-A001057(n))]`
-/

namespace A192807.P7923115671761042622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 ((n : ℤ) - A001057 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192807.P7923115671761042622

namespace A192807

/-- `record[A001590(n-A001057(n))]` -/
def P7923115671761042622.Spec : Prop :=
  ∀ n, P7923115671761042622.a n = A192807 n

end A192807

/-! ## A192807.P13331026546375299176

`A000073(3*n+1)-A000073(3*n)`
-/

namespace A192807.P13331026546375299176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (3 * n + 1) - A000073 (3 * n)

end

end A192807.P13331026546375299176

namespace A192807

/-- `A000073(3*n+1)-A000073(3*n)` -/
def P13331026546375299176.Spec : Prop :=
  ∀ n, P13331026546375299176.a n = A192807 n

end A192807

/-! ## A192807.P5900962556446876022

`record[A001590(A032766(A014681(n)))]`
-/

namespace A192807.P5900962556446876022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A032766 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192807.P5900962556446876022

namespace A192807

/-- `record[A001590(A032766(A014681(n)))]` -/
def P5900962556446876022.Spec : Prop :=
  ∀ n, P5900962556446876022.a n = A192807 n

end A192807

/-! ## A192807.P17666845978990228689

`A001590(A008486(n))-A000007(n)`
-/

namespace A192807.P17666845978990228689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (A008486 n).toNat - A000007 n

end

end A192807.P17666845978990228689

namespace A192807

/-- `A001590(A008486(n))-A000007(n)` -/
def P17666845978990228689.Spec : Prop :=
  ∀ n, P17666845978990228689.a n = A192807 n

end A192807

/-!
# A192808: Constant term in the reduction of the polynomial (x^2 + 2)^n by x^3 -> x^2 + 2. See Comments.

The programs for A192808, the canonical program `A192808.P9707940023616927394` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192808 has offset 0).

The definition of A192808 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192808.P9707940023616927394

`7*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192808

/-- `7*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P9707940023616927394.Spec : Prop :=
  ∀ n, P9707940023616927394.a n = A192808 n

theorem P9707940023616927394.correct : P9707940023616927394.Spec := by
  intro n
  simp only [A192808]

end A192808

/-! ## A192808.P16640103550447219818

`A052537(3*n)`
-/

namespace A192808.P16640103550447219818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (3 * n)

end

end A192808.P16640103550447219818

namespace A192808

/-- `A052537(3*n)` -/
def P16640103550447219818.Spec : Prop :=
  ∀ n, P16640103550447219818.a n = A192808 n

end A192808

/-! ## A192808.P15384569299535411313

`record[A052537(A006368(n))]`
-/

namespace A192808.P15384569299535411313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192808.P15384569299535411313

namespace A192808

/-- `record[A052537(A006368(n))]` -/
def P15384569299535411313.Spec : Prop :=
  ∀ n, P15384569299535411313.a n = A192808 n

end A192808

/-! ## A192808.P3342820903849370944

`record[A052537(A317319(n)%A004277(n))]`
-/

namespace A192808.P3342820903849370944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (Int.tmod (A317319 n) (A004277 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192808.P3342820903849370944

namespace A192808

/-- `record[A052537(A317319(n)%A004277(n))]` -/
def P3342820903849370944.Spec : Prop :=
  ∀ n, P3342820903849370944.a n = A192808 n

end A192808

/-! ## A192808.P1127961732110572477

`Δ[A192810(n)-A192809(n)]`
-/

namespace A192808.P1127961732110572477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192810 n - A192809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192808.P1127961732110572477

namespace A192808

/-- `Δ[A192810(n)-A192809(n)]` -/
def P1127961732110572477.Spec : Prop :=
  ∀ n, P1127961732110572477.a n = A192808 n

end A192808

/-!
# A192809: Coefficient of x in the reduction of the polynomial (x^2 + 2)^n by x^3 -> x^2 + 2.

The programs for A192809, the canonical program `A192809.P14098078105104878226` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192809 has offset 0).

The definition of A192809 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192809.P14098078105104878226

`7*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192809

/-- `7*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P14098078105104878226.Spec : Prop :=
  ∀ n, P14098078105104878226.a n = A192809 n

theorem P14098078105104878226.correct : P14098078105104878226.Spec := by
  intro n
  simp only [A192809]

end A192809

/-! ## A192809.P16178383692134195456

`2*A192811(n)`
-/

namespace A192809.P16178383692134195456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192811 n

end

end A192809.P16178383692134195456

namespace A192809

/-- `2*A192811(n)` -/
def P16178383692134195456.Spec : Prop :=
  ∀ n, P16178383692134195456.a n = A192809 n

end A192809

/-! ## A192809.P9349358878012845391

`A192811(n+1)-A192810(n)`
-/

namespace A192809.P9349358878012845391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 (n + 1) - A192810 n

end

end A192809.P9349358878012845391

namespace A192809

/-- `A192811(n+1)-A192810(n)` -/
def P9349358878012845391.Spec : Prop :=
  ∀ n, P9349358878012845391.a n = A192809 n

end A192809

/-! ## A192809.P4070391089140709787

`A192811(A005843(n)/2)+A192811(n)`
-/

namespace A192809.P4070391089140709787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A192811 n

end

end A192809.P4070391089140709787

namespace A192809

/-- `A192811(A005843(n)/2)+A192811(n)` -/
def P4070391089140709787.Spec : Prop :=
  ∀ n, P4070391089140709787.a n = A192809 n

end A192809

/-! ## A192809.P15826843566593982137

`A192811(A005843(n)-n)+A192811(n)`
-/

namespace A192809.P15826843566593982137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 (A005843 n - (n : ℤ)).toNat + A192811 n

end

end A192809.P15826843566593982137

namespace A192809

/-- `A192811(A005843(n)-n)+A192811(n)` -/
def P15826843566593982137.Spec : Prop :=
  ∀ n, P15826843566593982137.a n = A192809 n

end A192809

/-! ## A192809.P17385088722947295000

`A192811(n)+A192811(n)%A192808(n)`
-/

namespace A192809.P17385088722947295000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 n + Int.tmod (A192811 n) (A192808 n)

end

end A192809.P17385088722947295000

namespace A192809

/-- `A192811(n)+A192811(n)%A192808(n)` -/
def P17385088722947295000.Spec : Prop :=
  ∀ n, P17385088722947295000.a n = A192809 n

end A192809

/-! ## A192809.P18193126152971727879

`A052537(A008574(n)-A008624(A008574(n)))`
-/

namespace A192809.P18193126152971727879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 (A008574 n - A008624 (A008574 n).toNat).toNat

end

end A192809.P18193126152971727879

namespace A192809

/-- `A052537(A008574(n)-A008624(A008574(n)))` -/
def P18193126152971727879.Spec : Prop :=
  ∀ n, P18193126152971727879.a n = A192809 n

end A192809

/-! ## A192809.P14620499104890954713

`Δ[A192808(n)-A192810(n)]`
-/

namespace A192809.P14620499104890954713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192808 n - A192810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192809.P14620499104890954713

namespace A192809

/-- `Δ[A192808(n)-A192810(n)]` -/
def P14620499104890954713.Spec : Prop :=
  ∀ n, P14620499104890954713.a n = A192809 n

end A192809

/-! ## A192809.P5763824881349542270

`A052537(∑{digits}[A323639(n), #])`
-/

namespace A192809.P5763824881349542270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A192809.P5763824881349542270

namespace A192809

/-- `A052537(∑{digits}[A323639(n), #])` -/
def P5763824881349542270.Spec : Prop :=
  ∀ n, P5763824881349542270.a n = A192809 n

end A192809

/-!
# A192810: Coefficient of x^2 in the reduction of the polynomial (x^2 + 2)^n by x^3 -> x^2 + 2.

The programs for A192810, the canonical program `A192810.P1813220023227683044` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192810 has offset 0).

The definition of A192810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192810.P1813220023227683044

`7*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192810

/-- `7*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P1813220023227683044.Spec : Prop :=
  ∀ n, P1813220023227683044.a n = A192810 n

theorem P1813220023227683044.correct : P1813220023227683044.Spec := by
  intro n
  simp only [A192810]

end A192810

/-! ## A192810.P8379883208786114231

`Δ[A192811(n)]-A192811(n)`
-/

namespace A192810.P8379883208786114231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192811 n

end

end A192810.P8379883208786114231

namespace A192810

/-- `Δ[A192811(n)]-A192811(n)` -/
def P8379883208786114231.Spec : Prop :=
  ∀ n, P8379883208786114231.a n = A192810 n

end A192810

/-! ## A192810.P8217752523577496684

`A192811(n+1)-A192809(n)`
-/

namespace A192810.P8217752523577496684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 (n + 1) - A192809 n

end

end A192810.P8217752523577496684

namespace A192810

/-- `A192811(n+1)-A192809(n)` -/
def P8217752523577496684.Spec : Prop :=
  ∀ n, P8217752523577496684.a n = A192810 n

end A192810

/-! ## A192810.P5096046310097554613

`A192811(n+1)-2*A192811(n)`
-/

namespace A192810.P5096046310097554613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 (n + 1) - 2 * A192811 n

end

end A192810.P5096046310097554613

namespace A192810

/-- `A192811(n+1)-2*A192811(n)` -/
def P5096046310097554613.Spec : Prop :=
  ∀ n, P5096046310097554613.a n = A192810 n

end A192810

/-! ## A192810.P9635667009866777820

`A052537(A016777(n))/2`
-/

namespace A192810.P9635667009866777820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 (A016777 n).toNat : ℚ) / 2

end

end A192810.P9635667009866777820

namespace A192810

/-- `A052537(A016777(n))/2` -/
def P9635667009866777820.Spec : Prop :=
  ∀ n, P9635667009866777820.a n = (A192810 n : ℚ)

end A192810

/-!
# A192811: a(n) = A192809(n)/2.

The programs for A192811, the canonical program `A192811.P13885055028167925105` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192811 has offset 0).

The definition of A192811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192811.P13885055028167925105

`7*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192811

/-- `7*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P13885055028167925105.Spec : Prop :=
  ∀ n, P13885055028167925105.a n = A192811 n

theorem P13885055028167925105.correct : P13885055028167925105.Spec := by
  intro n
  simp only [A192811]

end A192811

/-! ## A192811.P6473672526909256031

`A192809(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192811.P6473672526909256031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192809 n : ℚ) / 2

end

end A192811.P6473672526909256031

namespace A192811

/-- `A192809(n)/2` -/
def P6473672526909256031.Spec : Prop :=
  ∀ n, P6473672526909256031.a n = (A192811 n : ℚ)

end A192811

/-! ## A192811.P10420146420242040228

`A052537(record[lcm(2, n)]-(n-1))/2`
-/

namespace A192811.P10420146420242040228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2

end

end A192811.P10420146420242040228

namespace A192811

/-- `A052537(record[lcm(2, n)]-(n-1))/2` -/
def P10420146420242040228.Spec : Prop :=
  ∀ n, P10420146420242040228.a n = (A192811 n : ℚ)

end A192811

/-! ## A192811.P792277796439066128

`A052537(A165355(A004273(n)))/2`
-/

namespace A192811.P792277796439066128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 (A165355 (A004273 n).toNat).toNat : ℚ) / 2

end

end A192811.P792277796439066128

namespace A192811

/-- `A052537(A165355(A004273(n)))/2` -/
def P792277796439066128.Spec : Prop :=
  ∀ n, P792277796439066128.a n = (A192811 n : ℚ)

end A192811

/-! ## A192811.P17031783942009194621

`Δ[(A192808(n)-A192810(n))/2]`
-/

namespace A192811.P17031783942009194621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192808 n - A192810 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192811.P17031783942009194621

namespace A192811

/-- `Δ[(A192808(n)-A192810(n))/2]` -/
def P17031783942009194621.Spec : Prop :=
  ∀ n, P17031783942009194621.a n = (A192811 n : ℚ)

end A192811

/-! ## A192811.P171714040993044559

`A052537(∑{digits}[A323639(n), #])/2`
-/

namespace A192811.P171714040993044559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℚ) / 2

end

end A192811.P171714040993044559

namespace A192811

/-- `A052537(∑{digits}[A323639(n), #])/2` -/
def P171714040993044559.Spec : Prop :=
  ∀ n, P171714040993044559.a n = (A192811 n : ℚ)

end A192811

/-!
# A192812: Constant term in the reduction of the polynomial x^(2*n) + x^n + 1 by x^3 -> x + 1. See Comments.

The programs for A192812, the canonical program `A192812.P9142334217640746212` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192812 has offset 0).

The definition of A192812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 413 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192812.P9142334217640746212

`A000931(2*n)+A000931(n)+1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192812

/-- `A000931(2*n)+A000931(n)+1` -/
def P9142334217640746212.Spec : Prop :=
  ∀ n, P9142334217640746212.a n = A192812 n

theorem P9142334217640746212.correct : P9142334217640746212.Spec := by
  intro n
  simp only [A192812]

end A192812

/-! ## A192812.P11866401296510255246

`A000931(n+n)+A000931(n)+1`
-/

namespace A192812.P11866401296510255246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + n) + A000931 n + 1

end

end A192812.P11866401296510255246

namespace A192812

/-- `A000931(n+n)+A000931(n)+1` -/
def P11866401296510255246.Spec : Prop :=
  ∀ n, P11866401296510255246.a n = A192812 n

theorem P11866401296510255246.correct : P11866401296510255246.Spec := by
  intro n
  simp only [A192812, Nat.add_sub_cancel, A192812.P11866401296510255246.a, A192812.P9142334217640746212.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192812

/-! ## A192812.P6068222190787196910

`A078027(2*(n+1))+A078027(n+2)+1`
-/

namespace A192812.P6068222190787196910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * (n + 1)) + (A078027 (n + 2) + 1)

end

end A192812.P6068222190787196910

namespace A192812

/-- `A078027(2*(n+1))+A078027(n+2)+1` -/
def P6068222190787196910.Spec : Prop :=
  ∀ n, P6068222190787196910.a n = A192812 n

end A192812

/-! ## A192812.P7717315141138514964

`A133034(2*(n+2))+Δ[A052954(n+1)]+1`
-/

namespace A192812.P7717315141138514964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * (n + 2)) + (f1 (n + 1) - f1 n + 1)

end

end A192812.P7717315141138514964

namespace A192812

/-- `A133034(2*(n+2))+Δ[A052954(n+1)]+1` -/
def P7717315141138514964.Spec : Prop :=
  ∀ n, P7717315141138514964.a n = A192812 n

end A192812

/-! ## A192812.P14635892239590640130

`A133034(2*(n+2))+A182097(n+2)-A182097(n+1)+1`
-/

namespace A192812.P14635892239590640130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * (n + 2)) + (A182097 (n + 2) - A182097 (n + 1) + 1)

end

end A192812.P14635892239590640130

namespace A192812

/-- `A133034(2*(n+2))+A182097(n+2)-A182097(n+1)+1` -/
def P14635892239590640130.Spec : Prop :=
  ∀ n, P14635892239590640130.a n = A192812 n

end A192812

/-! ## A192812.P10792980543494665888

`A000931(n)+Δ[A005251(n)]+1`
-/

namespace A192812.P10792980543494665888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + (f1 (n + 1) - f1 n + 1)

end

end A192812.P10792980543494665888

namespace A192812

/-- `A000931(n)+Δ[A005251(n)]+1` -/
def P10792980543494665888.Spec : Prop :=
  ∀ n, P10792980543494665888.a n = A192812 n

end A192812

/-!
# A192813: Coefficient of x in the reduction of the polynomial x^(2*n) + x^n + 1 by x^3 -> x + 1.

The programs for A192813, the canonical program `A192813.P3480870503495421817` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192813 has offset 1).

The definition of A192813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192813.P3480870503495421817

`2*a(n-1)-a(n-4)-a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=3, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192813

/-- `2*a(n-1)-a(n-4)-a(n-6)` -/
def P3480870503495421817.Spec : Prop :=
  ∀ n, P3480870503495421817.a n = A192813 (n + 1)

theorem P3480870503495421817.correct : P3480870503495421817.Spec := by
  intro n
  simp only [A192813, Nat.add_sub_cancel]

end A192813

/-! ## A192813.P16319520280875017503

`A000931(2*(n+1))+A000931(n+2)`
-/

namespace A192813.P16319520280875017503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * (n + 1)) + A000931 (n + 2)

end

end A192813.P16319520280875017503

namespace A192813

/-- `A000931(2*(n+1))+A000931(n+2)` -/
def P16319520280875017503.Spec : Prop :=
  ∀ n, P16319520280875017503.a n = A192813 (n + 1)

end A192813

/-! ## A192813.P8764217066357864023

`Δ[A134816(n+2)+A005251(n+1)]`
-/

namespace A192813.P8764217066357864023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) + A005251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192813.P8764217066357864023

namespace A192813

/-- `Δ[A134816(n+2)+A005251(n+1)]` -/
def P8764217066357864023.Spec : Prop :=
  ∀ n, P8764217066357864023.a n = A192813 (n + 1)

end A192813

/-! ## A192813.P641351300668181427

`Δ[A134816(n+2)+A052954(2*n)]`
-/

namespace A192813.P641351300668181427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) + A052954 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192813.P641351300668181427

namespace A192813

/-- `Δ[A134816(n+2)+A052954(2*n)]` -/
def P641351300668181427.Spec : Prop :=
  ∀ n, P641351300668181427.a n = A192813 (n + 1)

end A192813

/-! ## A192813.P9797391972991994526

`Δ[A182097(2*n)+A134816(n+2)]`
-/

namespace A192813.P9797391972991994526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n) + A134816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192813.P9797391972991994526

namespace A192813

/-- `Δ[A182097(2*n)+A134816(n+2)]` -/
def P9797391972991994526.Spec : Prop :=
  ∀ n, P9797391972991994526.a n = A192813 (n + 1)

end A192813

/-! ## A192813.P16373638677364223728

`Δ[Δ[A054405(n)+A005314(n)]]`
-/

namespace A192813.P16373638677364223728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 n + A005314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192813.P16373638677364223728

namespace A192813

/-- `Δ[Δ[A054405(n)+A005314(n)]]` -/
def P16373638677364223728.Spec : Prop :=
  ∀ n, P16373638677364223728.a n = A192813 (n + 1)

end A192813

/-! ## A192813.P1163187801014852887

`Δ[A127682(2*(n+1))+Δ[A127682(4*n+1)]]`
-/

namespace A192813.P1163187801014852887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (2 * (n + 1)) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192813.P1163187801014852887

namespace A192813

/-- `Δ[A127682(2*(n+1))+Δ[A127682(4*n+1)]]` -/
def P1163187801014852887.Spec : Prop :=
  ∀ n, P1163187801014852887.a n = A192813 (n + 1)

end A192813

/-!
# A192814: Constant term in the reduction of the polynomial (2*x+1)^n by x^3 -> x^2 + x + 1. See Comments.

The programs for A192814, the canonical program `A192814.P9678888869849779105` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192814 has offset 0).

The definition of A192814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192814.P9678888869849779105

`5*a(n-1)-3*a(n-2)+7*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192814

/-- `5*a(n-1)-3*a(n-2)+7*a(n-3)` -/
def P9678888869849779105.Spec : Prop :=
  ∀ n, P9678888869849779105.a n = A192814 n

theorem P9678888869849779105.correct : P9678888869849779105.Spec := by
  intro n
  simp only [A192814]

end A192814

/-! ## A192814.P18108533639207247407

`ogf((-1+4x+x^2)/(-1+5x-3x^2+7x^3))`
-/

namespace A192814.P18108533639207247407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -1] [1, -5, 3, -7] n

end

end A192814.P18108533639207247407

namespace A192814

/-- `ogf((-1+4x+x^2)/(-1+5x-3x^2+7x^3))` -/
def P18108533639207247407.Spec : Prop :=
  ∀ n, P18108533639207247407.a n = A192814 n

end A192814

/-! ## A192814.P12902222264388672377

`A226203(C(A128588(n+1), 3))`
-/

namespace A192814.P12902222264388672377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226203 (Nat.choose (A128588 (n + 1)).toNat 3)

end

end A192814.P12902222264388672377

namespace A192814

/-- `A226203(C(A128588(n+1), 3))` -/
def P12902222264388672377.Spec : Prop :=
  ∀ n, P12902222264388672377.a n = A192814 n

end A192814

/-!
# A192815: Coefficient of x in the reduction of the polynomial (2*x + 1)^n by x^3 -> x^2 + x + 1.

The programs for A192815, the canonical program `A192815.P15491554078009876918` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192815 has offset 0).

The definition of A192815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192815.P15491554078009876918

`5*a(n-1)-3*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192815

/-- `5*a(n-1)-3*a(n-2)+7*a(n-3)` -/
def P15491554078009876918.Spec : Prop :=
  ∀ n, P15491554078009876918.a n = A192815 n

theorem P15491554078009876918.correct : P15491554078009876918.Spec := by
  intro n
  simp only [A192815]

end A192815

/-! ## A192815.P4049104645824241739

`2*A192816(n)`
-/

namespace A192815.P4049104645824241739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192816 n

end

end A192815.P4049104645824241739

namespace A192815

/-- `2*A192816(n)` -/
def P4049104645824241739.Spec : Prop :=
  ∀ n, P4049104645824241739.a n = A192815 n

end A192815

/-! ## A192815.P7485300892437424481

`ogf((2x-6x^2)/(1-5x+3x^2-7x^3))`
-/

namespace A192815.P7485300892437424481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -6] [1, -5, 3, -7] n

end

end A192815.P7485300892437424481

namespace A192815

/-- `ogf((2x-6x^2)/(1-5x+3x^2-7x^3))` -/
def P7485300892437424481.Spec : Prop :=
  ∀ n, P7485300892437424481.a n = A192815 n

end A192815

/-! ## A192815.P1330489920940450585

`A192816(sqrt(A000290(n)))+A192816(n)`
-/

namespace A192815.P1330489920940450585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192816 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A192816 n

end

end A192815.P1330489920940450585

namespace A192815

/-- `A192816(sqrt(A000290(n)))+A192816(n)` -/
def P1330489920940450585.Spec : Prop :=
  ∀ n, P1330489920940450585.a n = A192815 n

end A192815

/-! ## A192815.P17377784194413632625

`A192816(A005843(n)/2)+A192816(n)`
-/

namespace A192815.P17377784194413632625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192816 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A192816 n

end

end A192815.P17377784194413632625

namespace A192815

/-- `A192816(A005843(n)/2)+A192816(n)` -/
def P17377784194413632625.Spec : Prop :=
  ∀ n, P17377784194413632625.a n = A192815 n

end A192815

/-! ## A192815.P12957537405401800544

`A192816(A005843(n)-n)+A192816(n)`
-/

namespace A192815.P12957537405401800544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192816 (A005843 n - (n : ℤ)).toNat + A192816 n

end

end A192815.P12957537405401800544

namespace A192815

/-- `A192816(A005843(n)-n)+A192816(n)` -/
def P12957537405401800544.Spec : Prop :=
  ∀ n, P12957537405401800544.a n = A192815 n

end A192815

/-! ## A192815.P6850673521720147881

`A192816(A118759(n))+A192816(n)`
-/

namespace A192815.P6850673521720147881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192816 (A118759 n).toNat + A192816 n

end

end A192815.P6850673521720147881

namespace A192815

/-- `A192816(A118759(n))+A192816(n)` -/
def P6850673521720147881.Spec : Prop :=
  ∀ n, P6850673521720147881.a n = A192815 n

end A192815

/-!
# A192816: a(n) = A192815(n)/2.

The programs for A192816, the canonical program `A192816.P1686005172041558771` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192816 has offset 0).

The definition of A192816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192816.P1686005172041558771

`5*a(n-1)-3*a(n-2)+7*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192816

/-- `5*a(n-1)-3*a(n-2)+7*a(n-3)` -/
def P1686005172041558771.Spec : Prop :=
  ∀ n, P1686005172041558771.a n = A192816 n

theorem P1686005172041558771.correct : P1686005172041558771.Spec := by
  intro n
  simp only [A192816]

end A192816

/-! ## A192816.P12645574001252208094

`A192815(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192816.P12645574001252208094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192815 n : ℚ) / 2

end

end A192816.P12645574001252208094

namespace A192816

/-- `A192815(n)/2` -/
def P12645574001252208094.Spec : Prop :=
  ∀ n, P12645574001252208094.a n = (A192816 n : ℚ)

end A192816

/-! ## A192816.P9076571015853349676

`ogf((x-3x^2)/(1-5x+3x^2-7x^3))`
-/

namespace A192816.P9076571015853349676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -3] [1, -5, 3, -7] n

end

end A192816.P9076571015853349676

namespace A192816

/-- `ogf((x-3x^2)/(1-5x+3x^2-7x^3))` -/
def P9076571015853349676.Spec : Prop :=
  ∀ n, P9076571015853349676.a n = A192816 n

end A192816

/-! ## A192816.P5035034736109025564

`A014682(A192815(n))`
-/

namespace A192816.P5035034736109025564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A192815 n).toNat

end

end A192816.P5035034736109025564

namespace A192816

/-- `A014682(A192815(n))` -/
def P5035034736109025564.Spec : Prop :=
  ∀ n, P5035034736109025564.a n = A192816 n

end A192816

/-!
# A192817: Numbers that are coprime to their 9's complement.

The programs for A192817, the canonical program `A192817.P8246135497186958092` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192817 has offset 1).

The definition of A192817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192817.P8246135497186958092

`eq[1, gcd(n, A061601(n))]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192817

/-- `eq[1, gcd(n, A061601(n))]` -/
def P8246135497186958092.Spec : Prop :=
  ∀ n, (P8246135497186958092.a n : ℤ) = A192817 (n + 1)

theorem P8246135497186958092.correct : P8246135497186958092.Spec := by
  intro n
  simp only [A192817, Nat.add_sub_cancel]

end A192817

/-! ## A192817.P2002837631098489785

`record[A172500(n+1)]`
-/

namespace A192817.P2002837631098489785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192817.P2002837631098489785

namespace A192817

/-- `record[A172500(n+1)]` -/
def P2002837631098489785.Spec : Prop :=
  ∀ n, P2002837631098489785.a n = A192817 (n + 1)

end A192817

/-! ## A192817.P5855152634078562928

`eq[1, A109848(n+1)]+1`
-/

namespace A192817.P5855152634078562928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109848 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192817.P5855152634078562928

namespace A192817

/-- `eq[1, A109848(n+1)]+1` -/
def P5855152634078562928.Spec : Prop :=
  ∀ n, (P5855152634078562928.a n : ℤ) = A192817 (n + 1)

end A192817

/-! ## A192817.P8117155785334270641

`eq[0, A172503(n+1)%(n+1)]+1`
-/

namespace A192817.P8117155785334270641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172503 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192817.P8117155785334270641

namespace A192817

/-- `eq[0, A172503(n+1)%(n+1)]+1` -/
def P8117155785334270641.Spec : Prop :=
  ∀ n, (P8117155785334270641.a n : ℤ) = A192817 (n + 1)

end A192817

/-! ## A192817.P3386207322047385431

`eq[A000027(n+1), A172500(n+1)]+1`
-/

namespace A192817.P3386207322047385431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A192817.P3386207322047385431

namespace A192817

/-- `eq[A000027(n+1), A172500(n+1)]+1` -/
def P3386207322047385431.Spec : Prop :=
  ∀ n, (P3386207322047385431.a n : ℤ) = A192817 (n + 1)

end A192817

/-! ## A192817.P10092557109515971338

`record[n+1-A172502(n+1)%A172502(n+2)]`
-/

namespace A192817.P10092557109515971338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (A172502 (n + 1)) (A172502 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192817.P10092557109515971338

namespace A192817

/-- `record[n+1-A172502(n+1)%A172502(n+2)]` -/
def P10092557109515971338.Spec : Prop :=
  ∀ n, P10092557109515971338.a n = A192817 (n + 1)

end A192817

/-! ## A192817.P5688436078173917839

`lt[A066258(A109848(n+1)+1), 6]+1`
-/

namespace A192817.P5688436078173917839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (A109848 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192817.P5688436078173917839

namespace A192817

/-- `lt[A066258(A109848(n+1)+1), 6]+1` -/
def P5688436078173917839.Spec : Prop :=
  ∀ n, (P5688436078173917839.a n : ℤ) = A192817 (n + 1)

end A192817

/-!
# A192818: Numbers which are both deficient (A005100) and anti-deficient (A192267).

The programs for A192818, there is no canonical definition to state claims against.
-/

/-! ## A192818.P9687200074907767994

`record[A125746(A192267(n+1))]`
-/

namespace A192818.P9687200074907767994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A192267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192818.P9687200074907767994

/-! ## A192818.P10554871255152729963

`filter[A192267(n+1), A294934(#)]`
-/

namespace A192818.P10554871255152729963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A192818.P10554871255152729963

/-! ## A192818.P6934084188177485176

`∩[A005100(n+1), A192267(n+1)]`
-/

namespace A192818.P6934084188177485176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192818.P6934084188177485176

/-! ## A192818.P6667999047905754760

`∩[A136447(n+1), A192267(n+1)]`
-/

namespace A192818.P6667999047905754760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192818.P6667999047905754760

/-! ## A192818.P6103106480276137228

`eq[char[A192267(n+1)], A033630(n)]`
-/

namespace A192818.P6103106480276137228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192267 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A192818.P6103106480276137228

/-!
# A192819: Numbers which are both abundant (A005101) and anti-abundant (A192268).

The programs for A192819, there is no canonical definition to state claims against.
-/

/-! ## A192819.P15360054268299422264

`filter[A192268(n+1), A294937(#)]`
-/

namespace A192819.P15360054268299422264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A192819.P15360054268299422264

/-! ## A192819.P5509553869374465711

`∩[A005101(n+1), A192268(n+1)]`
-/

namespace A192819.P5509553869374465711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192819.P5509553869374465711

/-! ## A192819.P17811770268371898183

`∩[lt[A341621(n+1)², 1]+1, A192268(n+1)]`
-/

namespace A192819.P17811770268371898183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A192819.P17811770268371898183

/-! ## A192819.P8258508595873394892

`∩[A192268(n+1), A204822(n+1)-A205098(n+1)]`
-/

namespace A192819.P8258508595873394892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A205098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192819.P8258508595873394892

/-! ## A192819.P15018799089320121654

`∩[lt[n+1, A066417(n+1)]+1, A005101(n+1)]`
-/

namespace A192819.P15018799089320121654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A192819.P15018799089320121654

/-!
# A192820: 2-Ramanujan primes: the interval (x/2,x] has at least n Ramanujan primes for x >= a(n) but not for x = a(n) - 1.

The programs for A192820, there is no canonical definition to state claims against.
-/

/-! ## A192820.P6046318884831370527

`A000040(∑{digits}[A246492(2*(n+2)), #])`
-/

namespace A192820.P6046318884831370527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246492 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A192820.P6046318884831370527

/-! ## A192820.P3157546483198642156

`A326623(A101866(n+1)+A017101(n))`
-/

namespace A192820.P3157546483198642156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326623 (A101866 (n + 1) + A017101 n).toNat

end

end A192820.P3157546483198642156

/-!
# A192823: 5-Ramanujan primes; the interval (x/2,x] has at least n 4-Ramanujan primes for x >= a(n) but not for x = a(n)-1.

The programs for A192823, there is no canonical definition to state claims against.
-/

/-! ## A192823.P10321970335202376769

`A192822(A392568(n+2))`
-/

namespace A192823.P10321970335202376769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192822 (A392568 (n + 2)).toNat

end

end A192823.P10321970335202376769

/-! ## A192823.P15067222990588148645

`A192822(A077528(n+3))`
-/

namespace A192823.P15067222990588148645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192822 (A077528 (n + 3)).toNat

end

end A192823.P15067222990588148645

/-!
# A192824: Least n-Ramanujan prime.

The programs for A192824, there is no canonical definition to state claims against.
-/

/-! ## A192824.P14668516461819196964

`A045493(A041729(n))`
-/

namespace A192824.P14668516461819196964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045493 (A041729 n).toNat

end

end A192824.P14668516461819196964

/-!
# A192825: Numbers m containing in decimal representation at least one zero and having no common digit in m and 2*m.

The programs for A192825, there is no canonical definition to state claims against.
-/

/-! ## A192825.P8292677804308972529

`∩[A038365(n+1), A274612(n+1)]`
-/

namespace A192825.P8292677804308972529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192825.P8292677804308972529

/-! ## A192825.P11729885422955569027

`∩[A038365(n+1), A252480(n+1)]`
-/

namespace A192825.P11729885422955569027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192825.P11729885422955569027

/-! ## A192825.P9900157508634050768

`∩[A011540(n+1), A038365(n+1)]`
-/

namespace A192825.P9900157508634050768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192825.P9900157508634050768

/-! ## A192825.P17335086979088054407

`∩[A038365(n+1), A249626(A249648(n+1))]`
-/

namespace A192825.P17335086979088054407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249626 (A249648 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192825.P17335086979088054407

/-!
# A192827: Molecular topological indices of the gear graphs.

The programs for A192827, the canonical program `A192827.P18109276834334599653` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192827 has offset 1).

The definition of A192827 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192827.P18109276834334599653

`11*(n+1)*(3*(n+1)-2)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192827

/-- `11*(n+1)*(3*(n+1)-2)` -/
def P18109276834334599653.Spec : Prop :=
  ∀ n, P18109276834334599653.a n = A192827 (n + 1)

theorem P18109276834334599653.correct : P18109276834334599653.Spec := by
  intro n
  simp only [A192827, Nat.add_sub_cancel]

end A192827

/-! ## A192827.P15507978151523924386

`∑[A139612(n)]-(n+1)`
-/

namespace A192827.P15507978151523924386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A192827.P15507978151523924386

namespace A192827

/-- `∑[A139612(n)]-(n+1)` -/
def P15507978151523924386.Spec : Prop :=
  ∀ n, P15507978151523924386.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P12778166454595343611

`A195038(n)+A178572(n+1)`
-/

namespace A192827.P12778166454595343611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195038 n + A178572 (n + 1)

end

end A192827.P12778166454595343611

namespace A192827

/-- `A195038(n)+A178572(n+1)` -/
def P12778166454595343611.Spec : Prop :=
  ∀ n, P12778166454595343611.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P3070020225441481001

`A177071(n)-A143838(n+1)`
-/

namespace A192827.P3070020225441481001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177071 n - A143838 (n + 1)

end

end A192827.P3070020225441481001

namespace A192827

/-- `A177071(n)-A143838(n+1)` -/
def P3070020225441481001.Spec : Prop :=
  ∀ n, P3070020225441481001.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P13913918284162458959

`(7*n+6)²-A016813(n+1)²`
-/

namespace A192827.P13913918284162458959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n + 6) ^ 2 : ℤ) - A016813 (n + 1) ^ 2

end

end A192827.P13913918284162458959

namespace A192827

/-- `(7*n+6)²-A016813(n+1)²` -/
def P13913918284162458959.Spec : Prop :=
  ∀ n, P13913918284162458959.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P9275916821113377476

`A139267(n+1)+A064201(n+1)`
-/

namespace A192827.P9275916821113377476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 (n + 1) + A064201 (n + 1)

end

end A192827.P9275916821113377476

namespace A192827

/-- `A139267(n+1)+A064201(n+1)` -/
def P9275916821113377476.Spec : Prop :=
  ∀ n, P9275916821113377476.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P608048089224668665

`A153808(n+1)+A152751(n+1)`
-/

namespace A192827.P608048089224668665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153808 (n + 1) + A152751 (n + 1)

end

end A192827.P608048089224668665

namespace A192827

/-- `A153808(n+1)+A152751(n+1)` -/
def P608048089224668665.Spec : Prop :=
  ∀ n, P608048089224668665.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P14219263088909936161

`A153796(n+1)+A153795(n+1)`
-/

namespace A192827.P14219263088909936161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153796 (n + 1) + A153795 (n + 1)

end

end A192827.P14219263088909936161

namespace A192827

/-- `A153796(n+1)+A153795(n+1)` -/
def P14219263088909936161.Spec : Prop :=
  ∀ n, P14219263088909936161.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P9321770128189216774

`A153797(n+1)+A153794(n+1)`
-/

namespace A192827.P9321770128189216774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 (n + 1) + A153794 (n + 1)

end

end A192827.P9321770128189216774

namespace A192827

/-- `A153797(n+1)+A153794(n+1)` -/
def P9321770128189216774.Spec : Prop :=
  ∀ n, P9321770128189216774.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P13674535004080852156

`A153797(n+1)+2*A139267(n+1)`
-/

namespace A192827.P13674535004080852156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153797 (n + 1) + 2 * A139267 (n + 1)

end

end A192827.P13674535004080852156

namespace A192827

/-- `A153797(n+1)+2*A139267(n+1)` -/
def P13674535004080852156.Spec : Prop :=
  ∀ n, P13674535004080852156.a n = A192827 (n + 1)

end A192827

/-! ## A192827.P5782188833563505483

`A152751(n+1)+2*A153794(n+1)`
-/

namespace A192827.P5782188833563505483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152751 (n + 1) + 2 * A153794 (n + 1)

end

end A192827.P5782188833563505483

namespace A192827

/-- `A152751(n+1)+2*A153794(n+1)` -/
def P5782188833563505483.Spec : Prop :=
  ∀ n, P5782188833563505483.a n = A192827 (n + 1)

end A192827

/-!
# A192828: Molecular topological indices of the n X n grid graphs.

The programs for A192828, the canonical program `A192828.P1669850986164736826` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192828 has offset 2).

The definition of A192828 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192828.P1669850986164736826

`2*(2+n+2)*(6-24*(n+2)+25*(n+2)²-13*(n+2)^3+4*(n+2)^4)/3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192828

/-- `2*(2+n+2)*(6-24*(n+2)+25*(n+2)²-13*(n+2)^3+4*(n+2)^4)/3` -/
def P1669850986164736826.Spec : Prop :=
  ∀ n, P1669850986164736826.a n = (A192828 (n + 2) : ℚ)

end A192828

/-!
# A192830: Molecular topological indices of the halved cube graphs.

The programs for A192830, the canonical program `A192830.P15651406880770052507` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192830 has offset 1).

The definition of A192830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192830.P15651406880770052507

`2^(n-2)*(n+1)²*n*(n+2^(n-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192830

/-- `2^(n-2)*(n+1)²*n*(n+2^(n-1))` -/
def P15651406880770052507.Spec : Prop :=
  ∀ n, P15651406880770052507.a n = (A192830 (n + 1) : ℚ)

end A192830

/-!
# A192831: Molecular topological indices of the hypercube graphs.

The programs for A192831, the canonical program `A192831.P16506262444525795816` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192831 has offset 1).

The definition of A192831 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192831.P16506262444525795816

`2^(n+1)*(n+1)²*(1+2^n)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192831

/-- `2^(n+1)*(n+1)²*(1+2^n)` -/
def P16506262444525795816.Spec : Prop :=
  ∀ n, (P16506262444525795816.a n : ℤ) = A192831 (n + 1)

theorem P16506262444525795816.correct : P16506262444525795816.Spec := by
  intro n
  simp only [A192831, Nat.add_sub_cancel]

end A192831

/-!
# A192832: Molecular topological indices of the lattice graphs.

The programs for A192832, the canonical program `A192832.P2612599550121453344` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192832 has offset 1).

The definition of A192832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192832.P2612599550121453344

`4*(n+1)²*(n+2)*n²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192832

/-- `4*(n+1)²*(n+2)*n²` -/
def P2612599550121453344.Spec : Prop :=
  ∀ n, (P2612599550121453344.a n : ℤ) = A192832 (n + 1)

theorem P2612599550121453344.correct : P2612599550121453344.Spec := by
  intro n
  simp only [A192832, Nat.add_sub_cancel]

end A192832

/-! ## A192832.P12528293582008527347

`∑[A049598(n)]²/(n+2)`
-/

namespace A192832.P12528293582008527347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A192832.P12528293582008527347

namespace A192832

/-- `∑[A049598(n)]²/(n+2)` -/
def P12528293582008527347.Spec : Prop :=
  ∀ n, P12528293582008527347.a n = (A192832 (n + 1) : ℚ)

end A192832

/-! ## A192832.P15939194137335741195

`A060300(n)+(n+1)*A060300(n)`
-/

namespace A192832.P15939194137335741195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060300 n + (n + 1 : ℤ) * A060300 n

end

end A192832.P15939194137335741195

namespace A192832

/-- `A060300(n)+(n+1)*A060300(n)` -/
def P15939194137335741195.Spec : Prop :=
  ∀ n, P15939194137335741195.a n = A192832 (n + 1)

end A192832

/-! ## A192832.P15797836415342459465

`n*A239607(n+1)-n`
-/

namespace A192832.P15797836415342459465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A239607 (n + 1) - (n : ℤ)

end

end A192832.P15797836415342459465

namespace A192832

/-- `n*A239607(n+1)-n` -/
def P15797836415342459465.Spec : Prop :=
  ∀ n, P15797836415342459465.a n = A192832 (n + 1)

end A192832

/-! ## A192832.P5983159090840283760

`A280058(n+2)²/(n+2)`
-/

namespace A192832.P5983159090840283760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280058 (n + 2) ^ 2 : ℚ) / (n + 2 : ℚ)

end

end A192832.P5983159090840283760

namespace A192832

/-- `A280058(n+2)²/(n+2)` -/
def P5983159090840283760.Spec : Prop :=
  ∀ n, P5983159090840283760.a n = (A192832 (n + 1) : ℚ)

end A192832

/-! ## A192832.P7255571513785278156

`∑[∑[n]*A273365(4*n)]`
-/

namespace A192832.P7255571513785278156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A273365 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192832.P7255571513785278156

namespace A192832

/-- `∑[∑[n]*A273365(4*n)]` -/
def P7255571513785278156.Spec : Prop :=
  ∀ n, P7255571513785278156.a n = A192832 (n + 1)

end A192832

/-! ## A192832.P10902979714951535196

`8*n*A046092(A005563(n))/4`
-/

namespace A192832.P10902979714951535196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * ((n : ℤ) * A046092 (A005563 n).toNat) : ℚ) / 4

end

end A192832.P10902979714951535196

namespace A192832

/-- `8*n*A046092(A005563(n))/4` -/
def P10902979714951535196.Spec : Prop :=
  ∀ n, P10902979714951535196.a n = (A192832 (n + 1) : ℚ)

end A192832

/-!
# A192833: Molecular topological indices of the Moebius ladders.

The programs for A192833, the canonical program `A192833.P1208743282511878131` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192833 has offset 1).

The definition of A192833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192833.P1208743282511878131

`3/2*(n+1)*(9-(-1)^(n+1)+4*(n+1)+2*(n+1)²)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192833

/-- `3/2*(n+1)*(9-(-1)^(n+1)+4*(n+1)+2*(n+1)²)` -/
def P1208743282511878131.Spec : Prop :=
  ∀ n, P1208743282511878131.a n = (A192833 (n + 1) : ℚ)

end A192833

/-! ## A192833.P3009315826709062459

`∑[12*(A014255(n)+1)]`
-/

namespace A192833.P3009315826709062459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A014255 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192833.P3009315826709062459

namespace A192833

/-- `∑[12*(A014255(n)+1)]` -/
def P3009315826709062459.Spec : Prop :=
  ∀ n, P3009315826709062459.a n = A192833 (n + 1)

end A192833

/-!
# A192834: Molecular topological indices of the Mycielski graphs.

The programs for A192834, the canonical program `A192834.P13094885623892816327` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192834 has offset 1).

The definition of A192834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192834.P13094885623892816327

`(A154251(n)+A083329(n))*A122695(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192834

/-- `(A154251(n)+A083329(n))*A122695(n+1)` -/
def P13094885623892816327.Spec : Prop :=
  ∀ n, P13094885623892816327.a n = A192834 (n + 1)

theorem P13094885623892816327.correct : P13094885623892816327.Spec := by
  intro n
  simp only [A192834, Nat.add_sub_cancel]

end A192834

/-!
# A192836: Molecular topological indices of the pan graphs.

The programs for A192836, the canonical program `A192836.P6789889025628040740` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192836 has offset 1).

The definition of A192836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192836.P6789889025628040740

`(26+27*(n+1)+4*(n+1)²+2*(n+1)^3+(-1)^(n+1)*(2+n+1))/4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192836

/-- `(26+27*(n+1)+4*(n+1)²+2*(n+1)^3+(-1)^(n+1)*(2+n+1))/4` -/
def P6789889025628040740.Spec : Prop :=
  ∀ n, P6789889025628040740.a n = (A192836 (n + 1) : ℚ)

end A192836

/-! ## A192836.P14392981005046667610

`A074149(n+3)-(A000217(2*n+1)+n)`
-/

namespace A192836.P14392981005046667610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - (A000217 (2 * n + 1) + (n : ℤ))

end

end A192836.P14392981005046667610

namespace A192836

/-- `A074149(n+3)-(A000217(2*n+1)+n)` -/
def P14392981005046667610.Spec : Prop :=
  ∀ n, P14392981005046667610.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P17629657591728370478

`A074149(n+3)-∑[A103517(2*n)]`
-/

namespace A192836.P17629657591728370478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192836.P17629657591728370478

namespace A192836

/-- `A074149(n+3)-∑[A103517(2*n)]` -/
def P17629657591728370478.Spec : Prop :=
  ∀ n, P17629657591728370478.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P727769377251742933

`A074149(n+3)-A047838(2*(n+1))`
-/

namespace A192836.P727769377251742933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - A047838 (2 * (n + 1))

end

end A192836.P727769377251742933

namespace A192836

/-- `A074149(n+3)-A047838(2*(n+1))` -/
def P727769377251742933.Spec : Prop :=
  ∀ n, P727769377251742933.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P16234848539586089221

`A074149(n+3)-A074148(2*n+1)`
-/

namespace A192836.P16234848539586089221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - A074148 (2 * n + 1)

end

end A192836.P16234848539586089221

namespace A192836

/-- `A074149(n+3)-A074148(2*n+1)` -/
def P16234848539586089221.Spec : Prop :=
  ∀ n, P16234848539586089221.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P12015621846442786793

`A074149(n+3)-A105638(2*(n+2))`
-/

namespace A192836.P12015621846442786793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - A105638 (2 * (n + 2))

end

end A192836.P12015621846442786793

namespace A192836

/-- `A074149(n+3)-A105638(2*(n+2))` -/
def P12015621846442786793.Spec : Prop :=
  ∀ n, P12015621846442786793.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P14291838497154044742

`A074149(n+3)-A138179(2*n+1)/A109613(2*n)`
-/

namespace A192836.P14291838497154044742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074149 (n + 3) : ℚ) - (A138179 (2 * n + 1) : ℚ) / (A109613 (2 * n) : ℚ)

end

end A192836.P14291838497154044742

namespace A192836

/-- `A074149(n+3)-A138179(2*n+1)/A109613(2*n)` -/
def P14291838497154044742.Spec : Prop :=
  ∀ n, P14291838497154044742.a n = (A192836 (n + 1) : ℚ)

end A192836

/-! ## A192836.P2645494585250869419

`A138179(n+3)-A016777(A110660(2*(n+1)))`
-/

namespace A192836.P2645494585250869419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138179 (n + 3) - A016777 (A110660 (2 * (n + 1))).toNat

end

end A192836.P2645494585250869419

namespace A192836

/-- `A138179(n+3)-A016777(A110660(2*(n+1)))` -/
def P2645494585250869419.Spec : Prop :=
  ∀ n, P2645494585250869419.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P3697376443238119641

`A074149(n+3)-A109613(A116940(2*n))`
-/

namespace A192836.P3697376443238119641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - A109613 (A116940 (2 * n)).toNat

end

end A192836.P3697376443238119641

namespace A192836

/-- `A074149(n+3)-A109613(A116940(2*n))` -/
def P3697376443238119641.Spec : Prop :=
  ∀ n, P3697376443238119641.a n = A192836 (n + 1)

end A192836

/-! ## A192836.P5551097462816057837

`A074149(n+3)-A074147(A000217(2*n+1))`
-/

namespace A192836.P5551097462816057837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (n + 3) - A074147 (A000217 (2 * n + 1)).toNat

end

end A192836.P5551097462816057837

namespace A192836

/-- `A074149(n+3)-A074147(A000217(2*n+1))` -/
def P5551097462816057837.Spec : Prop :=
  ∀ n, P5551097462816057837.a n = A192836 (n + 1)

end A192836

/-!
# A192838: Molecular topological indices of the prism graphs Y_n.

The programs for A192838, the canonical program `A192838.P784099826862136434` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192838 has offset 1).

The definition of A192838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192838.P784099826862136434

`3/2*(n+1)*(11+(-1)^(n+1)+2*(n+1)*(n+3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192838

/-- `3/2*(n+1)*(11+(-1)^(n+1)+2*(n+1)*(n+3))` -/
def P784099826862136434.Spec : Prop :=
  ∀ n, P784099826862136434.a n = (A192838 (n + 1) : ℚ)

end A192838

/-!
# A192839: Molecular topological indices of the square graphs.

The programs for A192839, the canonical program `A192839.P15577854668075387688` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192839 has offset 1).

The definition of A192839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192839.P15577854668075387688

`8*(n+1)*(n+2)*n^3`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192839

/-- `8*(n+1)*(n+2)*n^3` -/
def P15577854668075387688.Spec : Prop :=
  ∀ n, (P15577854668075387688.a n : ℤ) = A192839 (n + 1)

theorem P15577854668075387688.correct : P15577854668075387688.Spec := by
  intro n
  simp only [A192839, Nat.add_sub_cancel]

end A192839

/-! ## A192839.P6471192508497633951

`4*A292282(n+1)/(n+1)`
-/

namespace A192839.P6471192508497633951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A292282 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A192839.P6471192508497633951

namespace A192839

/-- `4*A292282(n+1)/(n+1)` -/
def P6471192508497633951.Spec : Prop :=
  ∀ n, P6471192508497633951.a n = (A192839 (n + 1) : ℚ)

end A192839

/-! ## A192839.P10769534343310237700

`abs((A272039(n)-A272130(n))*∑[n+1])`
-/

namespace A192839.P10769534343310237700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A272039 n - A272130 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A192839.P10769534343310237700

namespace A192839

/-- `abs((A272039(n)-A272130(n))*∑[n+1])` -/
def P10769534343310237700.Spec : Prop :=
  ∀ n, P10769534343310237700.a n = A192839 (n + 1)

end A192839

/-! ## A192839.P4826217555467744401

`lcm(2, A000578(n)*A035008(n+1))`
-/

namespace A192839.P4826217555467744401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000578 n * A035008 (n + 1))

end

end A192839.P4826217555467744401

namespace A192839

/-- `lcm(2, A000578(n)*A035008(n+1))` -/
def P4826217555467744401.Spec : Prop :=
  ∀ n, (P4826217555467744401.a n : ℤ) = A192839 (n + 1)

end A192839

/-! ## A192839.P12325357695886385567

`A001844(n+1)*A033430(n)-A033430(n)`
-/

namespace A192839.P12325357695886385567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (n + 1) * A033430 n - A033430 n

end

end A192839.P12325357695886385567

namespace A192839

/-- `A001844(n+1)*A033430(n)-A033430(n)` -/
def P12325357695886385567.Spec : Prop :=
  ∀ n, P12325357695886385567.a n = A192839 (n + 1)

end A192839

/-! ## A192839.P7662824740129747688

`A000578(n)*A035008(n+1)/A054977(n)`
-/

namespace A192839.P7662824740129747688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n * A035008 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A192839.P7662824740129747688

namespace A192839

/-- `A000578(n)*A035008(n+1)/A054977(n)` -/
def P7662824740129747688.Spec : Prop :=
  ∀ n, P7662824740129747688.a n = (A192839 (n + 1) : ℚ)

end A192839

/-! ## A192839.P7476414872582106152

`A000578(n)*A035008(n+1)/A000040(n+2)%2`
-/

namespace A192839.P7476414872582106152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n * A035008 (n + 1) : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A192839.P7476414872582106152

namespace A192839

/-- `A000578(n)*A035008(n+1)/A000040(n+2)%2` -/
def P7476414872582106152.Spec : Prop :=
  ∀ n, P7476414872582106152.a n = (A192839 (n + 1) : ℚ)

end A192839

/-! ## A192839.P17253782702524834379

`record[C(A084964(n), 2)*A033431(n)]`
-/

namespace A192839.P17253782702524834379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A084964 n).toNat 2 : ℤ) * A033431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192839.P17253782702524834379

namespace A192839

/-- `record[C(A084964(n), 2)*A033431(n)]` -/
def P17253782702524834379.Spec : Prop :=
  ∀ n, P17253782702524834379.a n = A192839 (n + 1)

end A192839

/-! ## A192839.P16431911441010964152

`A183063(2*n+1)+A000578(n)*A035008(n+1)`
-/

namespace A192839.P16431911441010964152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * n + 1) + A000578 n * A035008 (n + 1)

end

end A192839.P16431911441010964152

namespace A192839

/-- `A183063(2*n+1)+A000578(n)*A035008(n+1)` -/
def P16431911441010964152.Spec : Prop :=
  ∀ n, P16431911441010964152.a n = A192839 (n + 1)

end A192839

/-!
# A192840: Number of n X n symmetric 0..1 arrays with each element equal to at least two horizontal or vertical neighbors, containing at least one 1 and with new values 0..1 introduced in lower triangular row major order.

The programs for A192840, there is no canonical definition to state claims against.
-/

/-! ## A192840.P8523361863019108009

`A192995(A028310(n)+1)-1`
-/

namespace A192840.P8523361863019108009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192995 (A028310 n + 1).toNat - 1

end

end A192840.P8523361863019108009

/-! ## A192840.P13547875269692228084

`A192995(A233583(n+2))-1`
-/

namespace A192840.P13547875269692228084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192995 (A233583 (n + 2)).toNat - 1

end

end A192840.P13547875269692228084

/-! ## A192840.P3322606894090617341

`A192995(n+1)-char[A242971(n)]`
-/

namespace A192840.P3322606894090617341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192995 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192840.P3322606894090617341

/-! ## A192840.P17970146358047253388

`A192995(n+1)^(A000040(n+1)%2)-1`
-/

namespace A192840.P17970146358047253388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192995 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ) - 1

end

end A192840.P17970146358047253388

/-! ## A192840.P10634975063876471926

`A192995(n+1)-A001222(A224502(n+1))`
-/

namespace A192840.P10634975063876471926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192995 (n + 1) - A001222 (A224502 (n + 1)).toNat

end

end A192840.P10634975063876471926

/-!
# A192841: Number of n X n symmetric 0..2 arrays with each element equal to at least two horizontal or vertical neighbors, containing at least one 2 and with new values 0..2 introduced in lower triangular row major order.

The programs for A192841, there is no canonical definition to state claims against.
-/

/-! ## A192841.P1060892515329876542

`A192996(n+1)-A192995(n+1)`
-/

namespace A192841.P1060892515329876542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192996 (n + 1) - A192995 (n + 1)

end

end A192841.P1060892515329876542

/-! ## A192841.P1702745339986807376

`A210717(∑[n²]+2)`
-/

namespace A192841.P1702745339986807376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A192841.P1702745339986807376

/-!
# A192842: Number of n X n symmetric 0..3 arrays with each element equal to at least two horizontal or vertical neighbors, containing at least one 3 and with new values 0..3 introduced in lower triangular row major order.

The programs for A192842, there is no canonical definition to state claims against.
-/

/-! ## A192842.P4828828933236678189

`A192997(n+1)-A192996(n+1)`
-/

namespace A192842.P4828828933236678189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192997 (n + 1) - A192996 (n + 1)

end

end A192842.P4828828933236678189

/-! ## A192842.P16811555499734861879

`A192998(n+1)-(A192996(n+1)+A192843(n+1))`
-/

namespace A192842.P16811555499734861879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192998 (n + 1) - (A192996 (n + 1) + A192843 (n + 1))

end

end A192842.P16811555499734861879

/-! ## A192842.P17723923971569431981

`A192999(n+1)-(A192844(n+1)+A192843(n+1))-A192996(n+1)`
-/

namespace A192842.P17723923971569431981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - (A192844 (n + 1) + A192843 (n + 1)) - A192996 (n + 1)

end

end A192842.P17723923971569431981

/-!
# A192843: Number of n X n symmetric 0..4 arrays with each element equal to at least two horizontal or vertical neighbors, containing at least one 4 and with new values 0..4 introduced in lower triangular row major order.

The programs for A192843, there is no canonical definition to state claims against.
-/

/-! ## A192843.P10880738493338715541

`A192998(n+1)-A192997(n+1)`
-/

namespace A192843.P10880738493338715541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192998 (n + 1) - A192997 (n + 1)

end

end A192843.P10880738493338715541

/-! ## A192843.P17083248347844093888

`A192998(n+1)-(A192996(n+1)+A192842(n+1))`
-/

namespace A192843.P17083248347844093888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192998 (n + 1) - (A192996 (n + 1) + A192842 (n + 1))

end

end A192843.P17083248347844093888

/-! ## A192843.P10217053806994846791

`A192999(n+1)-(A192997(n+1)+A192844(n+1))`
-/

namespace A192843.P10217053806994846791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - (A192997 (n + 1) + A192844 (n + 1))

end

end A192843.P10217053806994846791

/-!
# A192844: Number of n X n symmetric 0..5 arrays with each element equal to at least two horizontal or vertical neighbors, containing at least one 5 and with new values 0..5 introduced in lower triangular row major order.

The programs for A192844, there is no canonical definition to state claims against.
-/

/-! ## A192844.P1249934191533222759

`A192999(n+1)-A192998(n+1)`
-/

namespace A192844.P1249934191533222759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - A192998 (n + 1)

end

end A192844.P1249934191533222759

/-! ## A192844.P1277061266810164587

`A192999(n+1)-(A192997(n+1)+A192843(n+1))`
-/

namespace A192844.P1277061266810164587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - (A192997 (n + 1) + A192843 (n + 1))

end

end A192844.P1277061266810164587

/-! ## A192844.P12504057458676207194

`A192999(n+1)-(A192842(n+1)+A192996(n+1)+A192843(n+1))`
-/

namespace A192844.P12504057458676207194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192999 (n + 1) - (A192842 (n + 1) + (A192996 (n + 1) + A192843 (n + 1)))

end

end A192844.P12504057458676207194

/-!
# A192845: Molecular topological indices of the sun graphs.

The programs for A192845, the canonical program `A192845.P10036743651103174878` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192845 has offset 1).

The definition of A192845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192845.P10036743651103174878

`4*A090197(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192845

/-- `4*A090197(n)` -/
def P10036743651103174878.Spec : Prop :=
  ∀ n, P10036743651103174878.a n = A192845 (n + 1)

theorem P10036743651103174878.correct : P10036743651103174878.Spec := by
  intro n
  simp only [A192845, Nat.add_sub_cancel]

end A192845

/-! ## A192845.P9737390600817190173

`∑[∑[24*(n+1)]-20]`
-/

namespace A192845.P9737390600817190173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192845.P9737390600817190173

namespace A192845

/-- `∑[∑[24*(n+1)]-20]` -/
def P9737390600817190173.Spec : Prop :=
  ∀ n, P9737390600817190173.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P5564427733270498029

`round(∑[∑[a(n-1)+24]])` with `a(0)=4, a(1)=48`

`round` is left out, it is the identity on integers.
-/

namespace A192845.P5564427733270498029
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 48] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192845.P5564427733270498029

namespace A192845

/-- `round(∑[∑[a(n-1)+24]])` -/
def P5564427733270498029.Spec : Prop :=
  ∀ n, (P5564427733270498029.a n : ℤ) = A192845 (n + 1)

end A192845

/-! ## A192845.P576619968168741341

`4*∑[∑[ogf((1+10x-5x^2)/(1-2x+x^2))]]`
-/

namespace A192845.P576619968168741341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -5] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192845.P576619968168741341

namespace A192845

/-- `4*∑[∑[ogf((1+10x-5x^2)/(1-2x+x^2))]]` -/
def P576619968168741341.Spec : Prop :=
  ∀ n, P576619968168741341.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P16892192109404609798

`4*∑[A166143(n+1)]`
-/

namespace A192845.P16892192109404609798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A192845.P16892192109404609798

namespace A192845

/-- `4*∑[A166143(n+1)]` -/
def P16892192109404609798.Spec : Prop :=
  ∀ n, P16892192109404609798.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P17550701158499013153

`4*(A229013(n+1)-1)`
-/

namespace A192845.P17550701158499013153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A229013 (n + 1) - 1)

end

end A192845.P17550701158499013153

namespace A192845

/-- `4*(A229013(n+1)-1)` -/
def P17550701158499013153.Spec : Prop :=
  ∀ n, P17550701158499013153.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P13369402586087856217

`Δ[(1-A028552(n))²]-(12*n+4)`
-/

namespace A192845.P13369402586087856217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A028552 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (12 * n + 4 : ℤ)

end

end A192845.P13369402586087856217

namespace A192845

/-- `Δ[(1-A028552(n))²]-(12*n+4)` -/
def P13369402586087856217.Spec : Prop :=
  ∀ n, P13369402586087856217.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P3686267859066830591

`lcm(A059159(n+1), A090197(n))`
-/

namespace A192845.P3686267859066830591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059159 (n + 1)) (A090197 n)

end

end A192845.P3686267859066830591

namespace A192845

/-- `lcm(A059159(n+1), A090197(n))` -/
def P3686267859066830591.Spec : Prop :=
  ∀ n, (P3686267859066830591.a n : ℤ) = A192845 (n + 1)

end A192845

/-! ## A192845.P12458038327726045244

`(A016897(n)-n)*A082111(n)`
-/

namespace A192845.P12458038327726045244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 n - (n : ℤ)) * A082111 n

end

end A192845.P12458038327726045244

namespace A192845

/-- `(A016897(n)-n)*A082111(n)` -/
def P12458038327726045244.Spec : Prop :=
  ∀ n, P12458038327726045244.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P14540211735876446443

`4*(A003154(n+1)+A000578(n))`
-/

namespace A192845.P14540211735876446443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A003154 (n + 1) + A000578 n)

end

end A192845.P14540211735876446443

namespace A192845

/-- `4*(A003154(n+1)+A000578(n))` -/
def P14540211735876446443.Spec : Prop :=
  ∀ n, P14540211735876446443.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P4631451516541631685

`A008574(n+1)*A082111(n)`
-/

namespace A192845.P4631451516541631685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) * A082111 n

end

end A192845.P4631451516541631685

namespace A192845

/-- `A008574(n+1)*A082111(n)` -/
def P4631451516541631685.Spec : Prop :=
  ∀ n, P4631451516541631685.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P12147309612546905828

`Δ[A272871(n)+A002378(n)²]`
-/

namespace A192845.P12147309612546905828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 n + A002378 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192845.P12147309612546905828

namespace A192845

/-- `Δ[A272871(n)+A002378(n)²]` -/
def P12147309612546905828.Spec : Prop :=
  ∀ n, P12147309612546905828.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P15138903426770863617

`2*(A051866(n+1)+A007588(n+1))`
-/

namespace A192845.P15138903426770863617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051866 (n + 1) + A007588 (n + 1))

end

end A192845.P15138903426770863617

namespace A192845

/-- `2*(A051866(n+1)+A007588(n+1))` -/
def P15138903426770863617.Spec : Prop :=
  ∀ n, P15138903426770863617.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P10875021938506384674

`(A014209(n+1)-2)*A008586(n+1)`
-/

namespace A192845.P10875021938506384674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014209 (n + 1) - 2) * A008586 (n + 1)

end

end A192845.P10875021938506384674

namespace A192845

/-- `(A014209(n+1)-2)*A008586(n+1)` -/
def P10875021938506384674.Spec : Prop :=
  ∀ n, P10875021938506384674.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P126316592808902345

`A144138(n+1)-2*A280058(n+1)`
-/

namespace A192845.P126316592808902345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144138 (n + 1) - 2 * A280058 (n + 1)

end

end A192845.P126316592808902345

namespace A192845

/-- `A144138(n+1)-2*A280058(n+1)` -/
def P126316592808902345.Spec : Prop :=
  ∀ n, P126316592808902345.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P8248004210038450254

`(A008585(n)+(n+1)²)*A008586(n+1)`
-/

namespace A192845.P8248004210038450254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008585 n + ((n + 1) ^ 2 : ℤ)) * A008586 (n + 1)

end

end A192845.P8248004210038450254

namespace A192845

/-- `(A008585(n)+(n+1)²)*A008586(n+1)` -/
def P8248004210038450254.Spec : Prop :=
  ∀ n, P8248004210038450254.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P1662754304864005235

`(6*n+A001105(n+1))*A005843(n+1)`
-/

namespace A192845.P1662754304864005235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 * n : ℤ) + A001105 (n + 1)) * A005843 (n + 1)

end

end A192845.P1662754304864005235

namespace A192845

/-- `(6*n+A001105(n+1))*A005843(n+1)` -/
def P1662754304864005235.Spec : Prop :=
  ∀ n, P1662754304864005235.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P4568030656234160656

`(A051890(n+1)+8*n)*A005843(n+1)`
-/

namespace A192845.P4568030656234160656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051890 (n + 1) + (8 * n : ℤ)) * A005843 (n + 1)

end

end A192845.P4568030656234160656

namespace A192845

/-- `(A051890(n+1)+8*n)*A005843(n+1)` -/
def P4568030656234160656.Spec : Prop :=
  ∀ n, P4568030656234160656.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P4516175465110507544

`(A056108(n+1)-A003215(n))*A082111(n)`
-/

namespace A192845.P4516175465110507544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056108 (n + 1) - A003215 n) * A082111 n

end

end A192845.P4516175465110507544

namespace A192845

/-- `(A056108(n+1)-A003215(n))*A082111(n)` -/
def P4516175465110507544.Spec : Prop :=
  ∀ n, P4516175465110507544.a n = A192845 (n + 1)

end A192845

/-! ## A192845.P505218943094929607

`(A294774(n+1)-A294774(n))*A082111(n)`
-/

namespace A192845.P505218943094929607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294774 (n + 1) - A294774 n) * A082111 n

end

end A192845.P505218943094929607

namespace A192845

/-- `(A294774(n+1)-A294774(n))*A082111(n)` -/
def P505218943094929607.Spec : Prop :=
  ∀ n, P505218943094929607.a n = A192845 (n + 1)

end A192845

/-!
# A192846: Molecular topological indices of the sunlet graphs.

The programs for A192846, the canonical program `A192846.P8324826037198382381` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192846 has offset 1).

The definition of A192846 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192846.P8324826037198382381

`(n+1)*(2*(n+1)*(n+4)+(-1)^(n+1)+7)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192846

/-- `(n+1)*(2*(n+1)*(n+4)+(-1)^(n+1)+7)` -/
def P8324826037198382381.Spec : Prop :=
  ∀ n, P8324826037198382381.a n = A192846 (n + 1)

theorem P8324826037198382381.correct : P8324826037198382381.Spec := by
  intro n
  simp only [A192846, Nat.add_sub_cancel]

end A192846

/-!
# A192847: Molecular topological indices of the tetrahedral graphs.

The programs for A192847, the canonical program `A192847.P8966423665736733353` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192847 has offset 1).

The definition of A192847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192847.P8966423665736733353

`6*C(n+1, 4)*(n-2)*((n+1)²-3*(n+1)+8)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192847

/-- `6*C(n+1, 4)*(n-2)*((n+1)²-3*(n+1)+8)` -/
def P8966423665736733353.Spec : Prop :=
  ∀ n, P8966423665736733353.a n = A192847 (n + 1)

theorem P8966423665736733353.correct : P8966423665736733353.Spec := by
  intro n
  simp only [A192847, Nat.add_sub_cancel]

end A192847

/-! ## A192847.P1809749461126156373

`(n+1)*n*(n-1)*(n-2)²*((n+1)²-3*(n+1)+8)/4`
-/

namespace A192847.P1809749461126156373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) ^ 2 * (((n + 1) ^ 2 : ℤ) - (3 * (n + 1) : ℤ) + 8) : ℚ) / 4

end

end A192847.P1809749461126156373

namespace A192847

/-- `(n+1)*n*(n-1)*(n-2)²*((n+1)²-3*(n+1)+8)/4` -/
def P1809749461126156373.Spec : Prop :=
  ∀ n, P1809749461126156373.a n = (A192847 (n + 1) : ℚ)

end A192847

/-!
# A192848: Molecular topological indices of the graph join C_n + C_n of cycle graphs.

The programs for A192848, the canonical program `A192848.P2598608813376400390` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192848 has offset 1).

The definition of A192848 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192848.P2598608813376400390

`4*(n+1)*(2+n+1)*(2*(n+1)-1)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192848

/-- `4*(n+1)*(2+n+1)*(2*(n+1)-1)` -/
def P2598608813376400390.Spec : Prop :=
  ∀ n, P2598608813376400390.a n = A192848 (n + 1)

theorem P2598608813376400390.correct : P2598608813376400390.Spec := by
  intro n
  simp only [A192848, Nat.add_sub_cancel]

end A192848

/-! ## A192848.P9655871532595565545

`lcm(2, (n+1)*(n+3)*(8*n+4))`
-/

namespace A192848.P9655871532595565545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((n + 1) * ((n + 3) * (8 * n + 4)))

end

end A192848.P9655871532595565545

namespace A192848

/-- `lcm(2, (n+1)*(n+3)*(8*n+4))` -/
def P9655871532595565545.Spec : Prop :=
  ∀ n, (P9655871532595565545.a n : ℤ) = A192848 (n + 1)

end A192848

/-! ## A192848.P8690430712505259887

`A061550(n)-(6*n+3)`
-/

namespace A192848.P8690430712505259887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061550 n - (6 * n + 3 : ℤ)

end

end A192848.P8690430712505259887

namespace A192848

/-- `A061550(n)-(6*n+3)` -/
def P8690430712505259887.Spec : Prop :=
  ∀ n, P8690430712505259887.a n = A192848 (n + 1)

end A192848

/-! ## A192848.P271641158536980799

`A069080(n)/(2*n+7)`
-/

namespace A192848.P271641158536980799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069080 n : ℚ) / (2 * n + 7 : ℚ)

end

end A192848.P271641158536980799

namespace A192848

/-- `A069080(n)/(2*n+7)` -/
def P271641158536980799.Spec : Prop :=
  ∀ n, P271641158536980799.a n = (A192848 (n + 1) : ℚ)

end A192848

/-!
# A192849: Molecular topological indices of the triangular graphs.

The programs for A192849, the canonical program `A192849.P3682910703452933421` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192849 has offset 1).

The definition of A192849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192849.P3682910703452933421

`(n+1)*((n+1)²-1)*(n-1)²`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192849

/-- `(n+1)*((n+1)²-1)*(n-1)²` -/
def P3682910703452933421.Spec : Prop :=
  ∀ n, P3682910703452933421.a n = A192849 (n + 1)

theorem P3682910703452933421.correct : P3682910703452933421.Spec := by
  intro n
  simp only [A192849, Nat.add_sub_cancel]

end A192849

/-! ## A192849.P9715188936546193632

`(n+1)²*A152618(n)-A152618(n)`
-/

namespace A192849.P9715188936546193632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A152618 n - A152618 n

end

end A192849.P9715188936546193632

namespace A192849

/-- `(n+1)²*A152618(n)-A152618(n)` -/
def P9715188936546193632.Spec : Prop :=
  ∀ n, P9715188936546193632.a n = A192849 (n + 1)

end A192849

/-! ## A192849.P7568439437863429946

`(A007588(n)-n)*A000217(n)-(A007588(n)-n)`
-/

namespace A192849.P7568439437863429946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007588 n - (n : ℤ)) * A000217 n - (A007588 n - (n : ℤ))

end

end A192849.P7568439437863429946

namespace A192849

/-- `(A007588(n)-n)*A000217(n)-(A007588(n)-n)` -/
def P7568439437863429946.Spec : Prop :=
  ∀ n, P7568439437863429946.a n = A192849 (n + 1)

end A192849

/-! ## A192849.P11897849642870205382

`A052762(n+1)+n²*A007531(n+1)`
-/

namespace A192849.P11897849642870205382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 (n + 1) + (n ^ 2 : ℤ) * A007531 (n + 1)

end

end A192849.P11897849642870205382

namespace A192849

/-- `A052762(n+1)+n²*A007531(n+1)` -/
def P11897849642870205382.Spec : Prop :=
  ∀ n, P11897849642870205382.a n = A192849 (n + 1)

end A192849

/-! ## A192849.P3573890307697109979

`abs((A006011(n)-A161680(n))*A008574(n+1))`
-/

namespace A192849.P3573890307697109979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A006011 n - A161680 n) * A008574 (n + 1)|

end

end A192849.P3573890307697109979

namespace A192849

/-- `abs((A006011(n)-A161680(n))*A008574(n+1))` -/
def P3573890307697109979.Spec : Prop :=
  ∀ n, P3573890307697109979.a n = A192849 (n + 1)

end A192849

/-! ## A192849.P2644194449424114659

`A000217(n)*A280058(n+1)-A280058(n+1)`
-/

namespace A192849.P2644194449424114659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A280058 (n + 1) - A280058 (n + 1)

end

end A192849.P2644194449424114659

namespace A192849

/-- `A000217(n)*A280058(n+1)-A280058(n+1)` -/
def P2644194449424114659.Spec : Prop :=
  ∀ n, P2644194449424114659.a n = A192849 (n + 1)

end A192849

/-! ## A192849.P15587583185281717811

`A052787(n+2)+A052762(n+2)`
-/

namespace A192849.P15587583185281717811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052787 (n + 2) + A052762 (n + 2)

end

end A192849.P15587583185281717811

namespace A192849

/-- `A052787(n+2)+A052762(n+2)` -/
def P15587583185281717811.Spec : Prop :=
  ∀ n, P15587583185281717811.a n = A192849 (n + 1)

end A192849

/-! ## A192849.P4831717753857404679

`A117465(2*(n+1))+A052787(n+2)`
-/

namespace A192849.P4831717753857404679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117465 (2 * (n + 1)) + A052787 (n + 2)

end

end A192849.P4831717753857404679

namespace A192849

/-- `A117465(2*(n+1))+A052787(n+2)` -/
def P4831717753857404679.Spec : Prop :=
  ∀ n, P4831717753857404679.a n = A192849 (n + 1)

end A192849

/-!
# A192850: Molecular topological indices of the web graphs.

The programs for A192850, the canonical program `A192850.P16351202770794821522` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192850 has offset 1).

The definition of A192850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192850.P16351202770794821522

`(n+1)*(6*(n+1)²+22*(n+1)+3*((-1)^(n+1)+7))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192850

/-- `(n+1)*(6*(n+1)²+22*(n+1)+3*((-1)^(n+1)+7))` -/
def P16351202770794821522.Spec : Prop :=
  ∀ n, P16351202770794821522.a n = A192850 (n + 1)

theorem P16351202770794821522.correct : P16351202770794821522.Spec := by
  intro n
  simp only [A192850, Nat.add_sub_cancel]

end A192850

/-!
# A192851: Integers n such that 6n, 36n, and 216n fall between pairs of twin primes, that is, 6n-1, 6n+1, 36n-1, 36n+1, 216n-1, and 216n+1 are prime.

The programs for A192851, there is no canonical definition to state claims against.
-/

/-! ## A192851.P919711419944622916

`A337321(A337317(n+1))+A210849(n)`
-/

namespace A192851.P919711419944622916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337321 (A337317 (n + 1)).toNat + A210849 n

end

end A192851.P919711419944622916

/-!
# A192852: Lexicographically earliest sequence such that a(n+1+a(n)) = n - a(n).

The programs for A192852, there is no canonical definition to state claims against.
-/

/-! ## A192852.P17784644456002056321

`A169956(n+1)-(n+2)`
-/

namespace A192852.P17784644456002056321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169956 (n + 1) - (n + 2 : ℤ)

end

end A192852.P17784644456002056321

/-! ## A192852.P8320327971601116546

`A169957(n+2)-(n+3)`
-/

namespace A192852.P8320327971601116546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169957 (n + 2) - (n + 3 : ℤ)

end

end A192852.P8320327971601116546

/-! ## A192852.P14703378145994339319

`A023444(A169956(n+1)-n)`
-/

namespace A192852.P14703378145994339319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A169956 (n + 1) - (n : ℤ)).toNat

end

end A192852.P14703378145994339319

/-! ## A192852.P12503515452366776271

`A169956(n+1)%A020725(n+1)`
-/

namespace A192852.P12503515452366776271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169956 (n + 1)) (A020725 (n + 1))

end

end A192852.P12503515452366776271

/-! ## A192852.P1492728819402560235

`A169956(A028310(n)+1)%(n+2)`
-/

namespace A192852.P1492728819402560235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169956 (A028310 n + 1).toNat) (n + 2 : ℤ)

end

end A192852.P1492728819402560235

/-! ## A192852.P16884193927980722583

`A169957(n+2)%A028310(n+3)`
-/

namespace A192852.P16884193927980722583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169957 (n + 2)) (A028310 (n + 3))

end

end A192852.P16884193927980722583

/-! ## A192852.P3787169396906636602

`A169956(A065033(2*n)+1)%(n+2)`
-/

namespace A192852.P3787169396906636602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169956 (A065033 (2 * n) + 1).toNat) (n + 2 : ℤ)

end

end A192852.P3787169396906636602

/-! ## A192852.P15804337610019862074

`(A169956(n+1)+A057428(n))%(n+1)`
-/

namespace A192852.P15804337610019862074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169956 (n + 1) + A057428 n) (n + 1 : ℤ)

end

end A192852.P15804337610019862074

/-! ## A192852.P2968467132017638007

`Δ[∑[A169957(n+1)]%A034856(n+1)]`
-/

namespace A192852.P2968467132017638007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A034856 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192852.P2968467132017638007

/-!
# A192853: Places n such that the two remainders A187680(n) and A191906(n) are both zero.

The programs for A192853, there is no canonical definition to state claims against.
-/

/-! ## A192853.P14021751980781608437

`∩[A192035(n+1), A247145(n+1)]`
-/

namespace A192853.P14021751980781608437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192853.P14021751980781608437

/-! ## A192853.P5002052885399485553

`∩[A145551(n+1), A192035(n+1)]`
-/

namespace A192853.P5002052885399485553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192853.P5002052885399485553

/-! ## A192853.P1629033865837675241

`∩[A145551(n+1), A247145(n+1)]`
-/

namespace A192853.P1629033865837675241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192853.P1629033865837675241

/-! ## A192853.P1795626791457099694

`∩[A105402(n+1), A192035(n+1)]`
-/

namespace A192853.P1795626791457099694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192853.P1795626791457099694

/-!
# A192854: Places n where tau(n) + tau(n+2) = tau(2*n+2).

The programs for A192854, the canonical program `A192854.P480192498423683373` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192854 has offset 1).

The definition of A192854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 545 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192854.P480192498423683373

`eq[A183063(n+1)+A051951(n), A000007(n)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A192854

/-- `eq[A183063(n+1)+A051951(n), A000007(n)]` -/
def P480192498423683373.Spec : Prop :=
  ∀ n, (P480192498423683373.a n : ℤ) = A192854 (n + 1)

theorem P480192498423683373.correct : P480192498423683373.Spec := by
  intro n
  simp only [A192854, Nat.add_sub_cancel]

end A192854

/-! ## A192854.P14298246623552259725

`eq[A183063(n+1)+A051951(n), A000038(n)]`
-/

namespace A192854.P14298246623552259725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A051951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P14298246623552259725

namespace A192854

/-- `eq[A183063(n+1)+A051951(n), A000038(n)]` -/
def P14298246623552259725.Spec : Prop :=
  ∀ n, (P14298246623552259725.a n : ℤ) = A192854 (n + 1)

end A192854

/-! ## A192854.P2488347297169329931

`eq[A183063(n+1)+A051951(n), A036987(2*n)]`
-/

namespace A192854.P2488347297169329931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A051951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P2488347297169329931

namespace A192854

/-- `eq[A183063(n+1)+A051951(n), A036987(2*n)]` -/
def P2488347297169329931.Spec : Prop :=
  ∀ n, (P2488347297169329931.a n : ℤ) = A192854 (n + 1)

end A192854

/-! ## A192854.P11756791713039621154

`eq[A048272(A103517(n)), A051951(n)]`
-/

namespace A192854.P11756791713039621154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A103517 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051951 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P11756791713039621154

namespace A192854

/-- `eq[A048272(A103517(n)), A051951(n)]` -/
def P11756791713039621154.Spec : Prop :=
  ∀ n, (P11756791713039621154.a n : ℤ) = A192854 (n + 1)

end A192854

/-! ## A192854.P12280145615103678192

`eq[A145154(n+2)+A145154(n), A145154(2*(n+1))]`
-/

namespace A192854.P12280145615103678192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 2) + A145154 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192854.P12280145615103678192

namespace A192854

/-- `eq[A145154(n+2)+A145154(n), A145154(2*(n+1))]` -/
def P12280145615103678192.Spec : Prop :=
  ∀ n, (P12280145615103678192.a n : ℤ) = A192854 (n + 1)

end A192854

/-!
# A192855: Number of set partitions of {1, ..., n} that avoid enhanced 4-crossings (or enhanced 4-nestings).

The programs for A192855, there is no canonical definition to state claims against.
-/

/-! ## A192855.P4674599417249690950

`A059717(A061140(n))+A056273(n)`
-/

namespace A192855.P4674599417249690950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 (A061140 n).toNat + A056273 n

end

end A192855.P4674599417249690950

/-! ## A192855.P17603357428729069298

`A287667(n)+A000989(A061140(n))`
-/

namespace A192855.P17603357428729069298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287667 n + A000989 (A061140 n).toNat

end

end A192855.P17603357428729069298

/-! ## A192855.P17049256215722068605

`A056273(n)+A036873(A274935(n))`
-/

namespace A192855.P17049256215722068605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n + A036873 (A274935 n).toNat

end

end A192855.P17049256215722068605

/-! ## A192855.P17249439050098324606

`A343667(n)+A173452(A006498(n))`
-/

namespace A192855.P17249439050098324606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343667 n + A173452 (A006498 n).toNat

end

end A192855.P17249439050098324606

/-! ## A192855.P17106206885526034381

`A000110(n)-A002620(A309861(n))`
-/

namespace A192855.P17106206885526034381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A002620 (A309861 n).toNat

end

end A192855.P17106206885526034381

/-!
# A192856: Number of matchings in the n-sun graph.

The programs for A192856, there is no canonical definition to state claims against.
-/

/-! ## A192856.P7749278639035817525

`∑[A347358(A291247(n))]`
-/

namespace A192856.P7749278639035817525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347358 (A291247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192856.P7749278639035817525

/-! ## A192856.P2708886436176544857

`A002637(A262844(n+1))`
-/

namespace A192856.P2708886436176544857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002637 (A262844 (n + 1)).toNat

end

end A192856.P2708886436176544857

/-!
# A192858: Hosoya indices of the 2n-wheel graphs W_{2n}.

The programs for A192858, the canonical program `A192858.P5601919120665578777` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192858 has offset 1).

The definition of A192858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192858.P15912016599665510332

`2*A377857(n+3)`
-/

namespace A192858.P15912016599665510332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A377857 (n + 3)

end

end A192858.P15912016599665510332

namespace A192858

/-- `2*A377857(n+3)` -/
def P15912016599665510332.Spec : Prop :=
  ∀ n, P15912016599665510332.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P5601919120665578777

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=2, a(1)=10, a(2)=36, a(3)=120`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192858

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P5601919120665578777.Spec : Prop :=
  ∀ n, P5601919120665578777.a n = A192858 (n + 1)

theorem P5601919120665578777.correct : P5601919120665578777.Spec := by
  intro n
  simp only [A192858, Nat.add_sub_cancel]

end A192858

/-! ## A192858.P15648868830358108419

`A061705(Δ[n²])`
-/

namespace A192858.P15648868830358108419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A192858.P15648868830358108419

namespace A192858

/-- `A061705(Δ[n²])` -/
def P15648868830358108419.Spec : Prop :=
  ∀ n, P15648868830358108419.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P11366921065933941578

`2*Δ[A317408(n)]`
-/

namespace A192858.P11366921065933941578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A192858.P11366921065933941578

namespace A192858

/-- `2*Δ[A317408(n)]` -/
def P11366921065933941578.Spec : Prop :=
  ∀ n, P11366921065933941578.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P171557897264686608

`2*Δ[n*A001906(n)]`
-/

namespace A192858.P171557897264686608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A192858.P171557897264686608

namespace A192858

/-- `2*Δ[n*A001906(n)]` -/
def P171557897264686608.Spec : Prop :=
  ∀ n, P171557897264686608.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P12241532512100648173

`2*Δ[n*A088305(n)]`
-/

namespace A192858.P12241532512100648173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A088305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A192858.P12241532512100648173

namespace A192858

/-- `2*Δ[n*A088305(n)]` -/
def P12241532512100648173.Spec : Prop :=
  ∀ n, P12241532512100648173.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P12888492235628005244

`lcm(2, A061705(2*n+1))`
-/

namespace A192858.P12888492235628005244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A061705 (2 * n + 1))

end

end A192858.P12888492235628005244

namespace A192858

/-- `lcm(2, A061705(2*n+1))` -/
def P12888492235628005244.Spec : Prop :=
  ∀ n, (P12888492235628005244.a n : ℤ) = A192858 (n + 1)

end A192858

/-! ## A192858.P5581439905658640397

`2*Δ[n*A000045(2*n)]`
-/

namespace A192858.P5581439905658640397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A192858.P5581439905658640397

namespace A192858

/-- `2*Δ[n*A000045(2*n)]` -/
def P5581439905658640397.Spec : Prop :=
  ∀ n, P5581439905658640397.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P17466266605983680807

`A007574(2*n+1)+2*n+1`
-/

namespace A192858.P17466266605983680807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007574 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A192858.P17466266605983680807

namespace A192858

/-- `A007574(2*n+1)+2*n+1` -/
def P17466266605983680807.Spec : Prop :=
  ∀ n, P17466266605983680807.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P13825492212557139368

`A167478(n)+A054492(n)`
-/

namespace A192858.P13825492212557139368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167478 n + A054492 n

end

end A192858.P13825492212557139368

namespace A192858

/-- `A167478(n)+A054492(n)` -/
def P13825492212557139368.Spec : Prop :=
  ∀ n, P13825492212557139368.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P7974945745725479276

`A045925(2*n+1)+A002878(n)`
-/

namespace A192858.P7974945745725479276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (2 * n + 1) + A002878 n

end

end A192858.P7974945745725479276

namespace A192858

/-- `A045925(2*n+1)+A002878(n)` -/
def P7974945745725479276.Spec : Prop :=
  ∀ n, P7974945745725479276.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P7354979968693767059

`A178521(2*n)+A001060(2*n)`
-/

namespace A192858.P7354979968693767059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (2 * n) + A001060 (2 * n)

end

end A192858.P7354979968693767059

namespace A192858

/-- `A178521(2*n)+A001060(2*n)` -/
def P7354979968693767059.Spec : Prop :=
  ∀ n, P7354979968693767059.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P1851097967826064083

`A354044(2*n)+A020695(2*n)`
-/

namespace A192858.P1851097967826064083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354044 (2 * n) + A020695 (2 * n)

end

end A192858.P1851097967826064083

namespace A192858

/-- `A354044(2*n)+A020695(2*n)` -/
def P1851097967826064083.Spec : Prop :=
  ∀ n, P1851097967826064083.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P14692768515211944057

`A001629(2*n)+Δ[A055244(2*n)]`
-/

namespace A192858.P14692768515211944057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (2 * n) + (f1 (n + 1) - f1 n)

end

end A192858.P14692768515211944057

namespace A192858

/-- `A001629(2*n)+Δ[A055244(2*n)]` -/
def P14692768515211944057.Spec : Prop :=
  ∀ n, P14692768515211944057.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P1629211572828943736

`A061705(2*n+1)+A000007(n+1)`
-/

namespace A192858.P1629211572828943736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061705 (2 * n + 1) + A000007 (n + 1)

end

end A192858.P1629211572828943736

namespace A192858

/-- `A061705(2*n+1)+A000007(n+1)` -/
def P1629211572828943736.Spec : Prop :=
  ∀ n, P1629211572828943736.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P5193454919680432194

`A007502(2*(n+1))+A000045(2*n)`
-/

namespace A192858.P5193454919680432194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007502 (2 * (n + 1)) + A000045 (2 * n)

end

end A192858.P5193454919680432194

namespace A192858

/-- `A007502(2*(n+1))+A000045(2*n)` -/
def P5193454919680432194.Spec : Prop :=
  ∀ n, P5193454919680432194.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P7933402219527203958

`A029907(2*(n+1))+A029907(2*n)`
-/

namespace A192858.P7933402219527203958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (2 * (n + 1)) + A029907 (2 * n)

end

end A192858.P7933402219527203958

namespace A192858

/-- `A029907(2*(n+1))+A029907(2*n)` -/
def P7933402219527203958.Spec : Prop :=
  ∀ n, P7933402219527203958.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P12446369617420696401

`2*(A117202(n+1)+A000045(2*n))`
-/

namespace A192858.P12446369617420696401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117202 (n + 1) + A000045 (2 * n))

end

end A192858.P12446369617420696401

namespace A192858

/-- `2*(A117202(n+1)+A000045(2*n))` -/
def P12446369617420696401.Spec : Prop :=
  ∀ n, P12446369617420696401.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P1284239482208944162

`A339610(2*n+1)+A099920(2*n)`
-/

namespace A192858.P1284239482208944162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339610 (2 * n + 1) + A099920 (2 * n)

end

end A192858.P1284239482208944162

namespace A192858

/-- `A339610(2*n+1)+A099920(2*n)` -/
def P1284239482208944162.Spec : Prop :=
  ∀ n, P1284239482208944162.a n = A192858 (n + 1)

end A192858

/-! ## A192858.P6646653791890664121

`A045925(2*n+1)+A000032(2*n+1)`
-/

namespace A192858.P6646653791890664121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (2 * n + 1) + A000032 (2 * n + 1)

end

end A192858.P6646653791890664121

namespace A192858

/-- `A045925(2*n+1)+A000032(2*n+1)` -/
def P6646653791890664121.Spec : Prop :=
  ∀ n, P6646653791890664121.a n = A192858 (n + 1)

end A192858

/-!
# A192860: G.f.: exp( Sum_{n>=1} (Sum_{d|n} d*x^d)^n/n ).

The programs for A192860, there is no canonical definition to state claims against.
-/

/-! ## A192860.P14989302741250083542

`ceil(A117619(3*n+2)/A145592(3*n+5))`
-/

namespace A192860.P14989302741250083542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A117619 (3 * n + 2) : ℚ) / (A145592 (3 * n + 5) : ℚ)⌉

end

end A192860.P14989302741250083542

/-! ## A192860.P15837403898061116305

`A002024(A289694(n+1)+A006067(n+1))`
-/

namespace A192860.P15837403898061116305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A289694 (n + 1) + A006067 (n + 1)).toNat

end

end A192860.P15837403898061116305

/-!
# A192861: Flat numbers: odd n such that n+1 is a squarefree number times a power of two.

The programs for A192861, the canonical program `A192861.P8332335553101968689` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192861 has offset 1).

The definition of A192861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192861.P3709361401159214933

`A192863(n+1)-2`
-/

namespace A192861.P3709361401159214933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1) - 2

end

end A192861.P3709361401159214933

namespace A192861

/-- `A192863(n+1)-2` -/
def P3709361401159214933.Spec : Prop :=
  ∀ n, P3709361401159214933.a n = A192861 (n + 1)

end A192861

/-! ## A192861.P13997074485985311163

`eq[2, A078461(n+1)]`
-/

namespace A192861.P13997074485985311163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P13997074485985311163

namespace A192861

/-- `eq[2, A078461(n+1)]` -/
def P13997074485985311163.Spec : Prop :=
  ∀ n, (P13997074485985311163.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P11745854137079043132

`2*A122132(n+1)-1`
-/

namespace A192861.P11745854137079043132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122132 (n + 1) - 1

end

end A192861.P11745854137079043132

namespace A192861

/-- `2*A122132(n+1)-1` -/
def P11745854137079043132.Spec : Prop :=
  ∀ n, P11745854137079043132.a n = A192861 (n + 1)

end A192861

/-! ## A192861.P17817056445149901915

`eq[1, A333842(2*(n+1))]`
-/

namespace A192861.P17817056445149901915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P17817056445149901915

namespace A192861

/-- `eq[1, A333842(2*(n+1))]` -/
def P17817056445149901915.Spec : Prop :=
  ∀ n, (P17817056445149901915.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P7344551937569123310

`eq[1, A333842(n+2)]/2`
-/

namespace A192861.P7344551937569123310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A192861.P7344551937569123310

namespace A192861

/-- `eq[1, A333842(n+2)]/2` -/
def P7344551937569123310.Spec : Prop :=
  ∀ n, P7344551937569123310.a n = (A192861 (n + 1) : ℚ)

end A192861

/-! ## A192861.P8332335553101968689

`eq[4, A071327(2*(n+1))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A192861

/-- `eq[4, A071327(2*(n+1))]` -/
def P8332335553101968689.Spec : Prop :=
  ∀ n, (P8332335553101968689.a n : ℤ) = A192861 (n + 1)

theorem P8332335553101968689.correct : P8332335553101968689.Spec := by
  intro n
  simp only [A192861, Nat.add_sub_cancel]

end A192861

/-! ## A192861.P9643368312173362726

`eq[val(n+1, 2), A005361(n+1)]`
-/

namespace A192861.P9643368312173362726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P9643368312173362726

namespace A192861

/-- `eq[val(n+1, 2), A005361(n+1)]` -/
def P9643368312173362726.Spec : Prop :=
  ∀ n, (P9643368312173362726.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P570491623313689850

`lt[A000265(n+1), A007947(n+1)]`
-/

namespace A192861.P570491623313689850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A192861.P570491623313689850

namespace A192861

/-- `lt[A000265(n+1), A007947(n+1)]` -/
def P570491623313689850.Spec : Prop :=
  ∀ n, (P570491623313689850.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P1447251881076073613

`2*lt[A040451(A336158(n+1)), 3]+1`
-/

namespace A192861.P1447251881076073613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040451 (A336158 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A192861.P1447251881076073613

namespace A192861

/-- `2*lt[A040451(A336158(n+1)), 3]+1` -/
def P1447251881076073613.Spec : Prop :=
  ∀ n, (P1447251881076073613.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P17148643806203603586

`eq[A007947(n+1), A076998(2*(n+1))]`
-/

namespace A192861.P17148643806203603586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192861.P17148643806203603586

namespace A192861

/-- `eq[A007947(n+1), A076998(2*(n+1))]` -/
def P17148643806203603586.Spec : Prop :=
  ∀ n, (P17148643806203603586.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P4112545367199108971

`A004273(A122132(n+1))`
-/

namespace A192861.P4112545367199108971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A122132 (n + 1)).toNat

end

end A192861.P4112545367199108971

namespace A192861

/-- `A004273(A122132(n+1))` -/
def P4112545367199108971.Spec : Prop :=
  ∀ n, P4112545367199108971.a n = A192861 (n + 1)

end A192861

/-! ## A192861.P13361519370524962285

`2*lt[A292380(n+1), A162510(n+1)]+1`
-/

namespace A192861.P13361519370524962285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162510 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A192861.P13361519370524962285

namespace A192861

/-- `2*lt[A292380(n+1), A162510(n+1)]+1` -/
def P13361519370524962285.Spec : Prop :=
  ∀ n, (P13361519370524962285.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P15136805809617360348

`eq[A010873(n), A295295(n+1)]`
-/

namespace A192861.P15136805809617360348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192861.P15136805809617360348

namespace A192861

/-- `eq[A010873(n), A295295(n+1)]` -/
def P15136805809617360348.Spec : Prop :=
  ∀ n, (P15136805809617360348.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P11416178769747963355

`eq[A135481(n), A324910(n+1)]`
-/

namespace A192861.P11416178769747963355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192861.P11416178769747963355

namespace A192861

/-- `eq[A135481(n), A324910(n+1)]` -/
def P11416178769747963355.Spec : Prop :=
  ∀ n, (P11416178769747963355.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P6705990573409442651

`lt[(n+1)/and(n+1, -(n+1)), ∏{p}[n+1, #]]`
-/

namespace A192861.P6705990573409442651
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A192861.P6705990573409442651

namespace A192861

/-- `lt[(n+1)/and(n+1, -(n+1)), ∏{p}[n+1, #]]` -/
def P6705990573409442651.Spec : Prop :=
  ∀ n, (P6705990573409442651.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P9582243962160298376

`eq[2, A063958(2*(n+1))]`
-/

namespace A192861.P9582243962160298376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P9582243962160298376

namespace A192861

/-- `eq[2, A063958(2*(n+1))]` -/
def P9582243962160298376.Spec : Prop :=
  ∀ n, (P9582243962160298376.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P12640743344111066583

`A023444(A192863(n+1))`
-/

namespace A192861.P12640743344111066583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A192863 (n + 1)).toNat

end

end A192861.P12640743344111066583

namespace A192861

/-- `A023444(A192863(n+1))` -/
def P12640743344111066583.Spec : Prop :=
  ∀ n, P12640743344111066583.a n = A192861 (n + 1)

end A192861

/-! ## A192861.P3574110190445161579

`eq[2, A007947(A357689(n+1))]`
-/

namespace A192861.P3574110190445161579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A357689 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P3574110190445161579

namespace A192861

/-- `eq[2, A007947(A357689(n+1))]` -/
def P3574110190445161579.Spec : Prop :=
  ∀ n, (P3574110190445161579.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P5182431504021593736

`eq[2, A246029(A286875(2*(n+1)))]`
-/

namespace A192861.P5182431504021593736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A286875 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P5182431504021593736

namespace A192861

/-- `eq[2, A246029(A286875(2*(n+1)))]` -/
def P5182431504021593736.Spec : Prop :=
  ∀ n, (P5182431504021593736.a n : ℤ) = A192861 (n + 1)

end A192861

/-! ## A192861.P16053635817850586172

`eq[2, A071773(2*(n+1))]`
-/

namespace A192861.P16053635817850586172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192861.P16053635817850586172

namespace A192861

/-- `eq[2, A071773(2*(n+1))]` -/
def P16053635817850586172.Spec : Prop :=
  ∀ n, (P16053635817850586172.a n : ℤ) = A192861 (n + 1)

end A192861

/-!
# A192862: Flat primes: odd primes p such that p+1 is a squarefree number times a power of two.

The programs for A192862, the canonical program `A192862.P1837713112636375079` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192862 has offset 1).

The definition of A192862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192862.P1837713112636375079

`p?[A353627(n+1)+2*n]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A192862

/-- `p?[A353627(n+1)+2*n]` -/
def P1837713112636375079.Spec : Prop :=
  ∀ n, P1837713112636375079.a n = A192862 (n + 1)

theorem P1837713112636375079.correct : P1837713112636375079.Spec := by
  intro n
  simp only [A192862, Nat.add_sub_cancel]

end A192862

/-! ## A192862.P12678391510419299489

`p?[n*(A078461(n+1)-1)]`
-/

namespace A192862.P12678391510419299489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A078461 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P12678391510419299489

namespace A192862

/-- `p?[n*(A078461(n+1)-1)]` -/
def P12678391510419299489.Spec : Prop :=
  ∀ n, P12678391510419299489.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P16925732729954264265

`eq[A077462(n), A078461(n+1)]`
-/

namespace A192862.P16925732729954264265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192862.P16925732729954264265

namespace A192862

/-- `eq[A077462(n), A078461(n+1)]` -/
def P16925732729954264265.Spec : Prop :=
  ∀ n, (P16925732729954264265.a n : ℤ) = A192862 (n + 1)

end A192862

/-! ## A192862.P17042183801488603456

`p?[A326297(n+1)+2*n]`
-/

namespace A192862.P17042183801488603456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P17042183801488603456

namespace A192862

/-- `p?[A326297(n+1)+2*n]` -/
def P17042183801488603456.Spec : Prop :=
  ∀ n, P17042183801488603456.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P9798200334731872135

`p?[n*A333842(2*(n+1))]`
-/

namespace A192862.P9798200334731872135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A333842 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P9798200334731872135

namespace A192862

/-- `p?[n*A333842(2*(n+1))]` -/
def P9798200334731872135.Spec : Prop :=
  ∀ n, P9798200334731872135.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P7614074371739369544

`p?[A192861(n+1)]`
-/

namespace A192862.P7614074371739369544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P7614074371739369544

namespace A192862

/-- `p?[A192861(n+1)]` -/
def P7614074371739369544.Spec : Prop :=
  ∀ n, P7614074371739369544.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P4138649741269189100

`p?[A192863(n+1)-2]`
-/

namespace A192862.P4138649741269189100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P4138649741269189100

namespace A192862

/-- `p?[A192863(n+1)-2]` -/
def P4138649741269189100.Spec : Prop :=
  ∀ n, P4138649741269189100.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P10704810183202244912

`p?[2*A122132(n+1)-1]`
-/

namespace A192862.P10704810183202244912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122132 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192862.P10704810183202244912

namespace A192862

/-- `p?[2*A122132(n+1)-1]` -/
def P10704810183202244912.Spec : Prop :=
  ∀ n, P10704810183202244912.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P6322545991798851115

`record[A006530(A192861(n+2))]`
-/

namespace A192862.P6322545991798851115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A192861 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192862.P6322545991798851115

namespace A192862

/-- `record[A006530(A192861(n+2))]` -/
def P6322545991798851115.Spec : Prop :=
  ∀ n, P6322545991798851115.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P1656801008612871010

`filter[A192861(n+1), A010051(#)]`
-/

namespace A192862.P1656801008612871010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192862.P1656801008612871010

namespace A192862

/-- `filter[A192861(n+1), A010051(#)]` -/
def P1656801008612871010.Spec : Prop :=
  ∀ n, P1656801008612871010.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P9210969432613801284

`filter[A192861(n+1), A323153(#)]`
-/

namespace A192862.P9210969432613801284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192862.P9210969432613801284

namespace A192862

/-- `filter[A192861(n+1), A323153(#)]` -/
def P9210969432613801284.Spec : Prop :=
  ∀ n, P9210969432613801284.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P18350831650880524823

`filter[A192861(n+1), A353670(#)]`
-/

namespace A192862.P18350831650880524823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A192862.P18350831650880524823

namespace A192862

/-- `filter[A192861(n+1), A353670(#)]` -/
def P18350831650880524823.Spec : Prop :=
  ∀ n, P18350831650880524823.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P11762529739071480751

`filter[A192861(n+1), A379969(#)]`
-/

namespace A192862.P11762529739071480751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A192862.P11762529739071480751

namespace A192862

/-- `filter[A192861(n+1), A379969(#)]` -/
def P11762529739071480751.Spec : Prop :=
  ∀ n, P11762529739071480751.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P9084413636864686484

`filter[A192861(n+2), A323152(#)]`
-/

namespace A192862.P9084413636864686484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192862.P9084413636864686484

namespace A192862

/-- `filter[A192861(n+2), A323152(#)]` -/
def P9084413636864686484.Spec : Prop :=
  ∀ n, P9084413636864686484.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P15020945350680695649

`filter[A192861(n+2), A340371(#)]`
-/

namespace A192862.P15020945350680695649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192862.P15020945350680695649

namespace A192862

/-- `filter[A192861(n+2), A340371(#)]` -/
def P15020945350680695649.Spec : Prop :=
  ∀ n, P15020945350680695649.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P12394517459934945652

`filter[A192861(n+2), A365716(#)]`
-/

namespace A192862.P12394517459934945652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A192862.P12394517459934945652

namespace A192862

/-- `filter[A192861(n+2), A365716(#)]` -/
def P12394517459934945652.Spec : Prop :=
  ∀ n, P12394517459934945652.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P4914984817262942317

`filter[A192861(n+2), A380467(#)]`
-/

namespace A192862.P4914984817262942317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A192862.P4914984817262942317

namespace A192862

/-- `filter[A192861(n+2), A380467(#)]` -/
def P4914984817262942317.Spec : Prop :=
  ∀ n, P4914984817262942317.a n = A192862 (n + 1)

end A192862

/-! ## A192862.P5152540400064517197

`∩[A000040(n+1), A192861(n+1)]`
-/

namespace A192862.P5152540400064517197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192862.P5152540400064517197

namespace A192862

/-- `∩[A000040(n+1), A192861(n+1)]` -/
def P5152540400064517197.Spec : Prop :=
  ∀ n, (P5152540400064517197.a n : ℤ) = A192862 (n + 1)

end A192862

/-! ## A192862.P9832492772276938132

`∩[A001751(n+1), A192861(n+1)]`
-/

namespace A192862.P9832492772276938132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192862.P9832492772276938132

namespace A192862

/-- `∩[A001751(n+1), A192861(n+1)]` -/
def P9832492772276938132.Spec : Prop :=
  ∀ n, (P9832492772276938132.a n : ℤ) = A192862 (n + 1)

end A192862

/-! ## A192862.P1732515016374824051

`∩[A038550(n+1), A192861(n+1)]`
-/

namespace A192862.P1732515016374824051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192862.P1732515016374824051

namespace A192862

/-- `∩[A038550(n+1), A192861(n+1)]` -/
def P1732515016374824051.Spec : Prop :=
  ∀ n, (P1732515016374824051.a n : ℤ) = A192862 (n + 1)

end A192862

/-!
# A192863: Lower flat numbers: odd numbers k such that k-1 is a squarefree number times a power of two.

The programs for A192863, the canonical program `A192863.P913331448569208009` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192863 has offset 1).

The definition of A192863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192863.P913331448569208009

`A192861(n+1)+2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192863

/-- `A192861(n+1)+2` -/
def P913331448569208009.Spec : Prop :=
  ∀ n, P913331448569208009.a n = A192863 (n + 1)

theorem P913331448569208009.correct : P913331448569208009.Spec := by
  intro n
  simp only [A192863, Nat.add_sub_cancel]

end A192863

/-! ## A192863.P4905504547289902592

`2*A122132(n+1)+1`
-/

namespace A192863.P4905504547289902592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122132 (n + 1) + 1

end

end A192863.P4905504547289902592

namespace A192863

/-- `2*A122132(n+1)+1` -/
def P4905504547289902592.Spec : Prop :=
  ∀ n, P4905504547289902592.a n = A192863 (n + 1)

end A192863

/-! ## A192863.P10412146167340412584

`eq[2, A078461(n+1)]+2`
-/

namespace A192863.P10412146167340412584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A192863.P10412146167340412584

namespace A192863

/-- `eq[2, A078461(n+1)]+2` -/
def P10412146167340412584.Spec : Prop :=
  ∀ n, (P10412146167340412584.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P13037321244628444160

`eq[1, A333842(2*(n+1))]+2`
-/

namespace A192863.P13037321244628444160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333842 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A192863.P13037321244628444160

namespace A192863

/-- `eq[1, A333842(2*(n+1))]+2` -/
def P13037321244628444160.Spec : Prop :=
  ∀ n, (P13037321244628444160.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P10888132548907212776

`record[2*(n+1)*A353627(n+1)+1]`
-/

namespace A192863.P10888132548907212776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A353627 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192863.P10888132548907212776

namespace A192863

/-- `record[2*(n+1)*A353627(n+1)+1]` -/
def P10888132548907212776.Spec : Prop :=
  ∀ n, P10888132548907212776.a n = A192863 (n + 1)

end A192863

/-! ## A192863.P15660142425917278784

`A016825(A122132(n+1))/2`
-/

namespace A192863.P15660142425917278784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A122132 (n + 1)).toNat : ℚ) / 2

end

end A192863.P15660142425917278784

namespace A192863

/-- `A016825(A122132(n+1))/2` -/
def P15660142425917278784.Spec : Prop :=
  ∀ n, P15660142425917278784.a n = (A192863 (n + 1) : ℚ)

end A192863

/-! ## A192863.P13167557022102378454

`2*lt[A040451(A336158(n+1)), 3]+3`
-/

namespace A192863.P13167557022102378454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040451 (A336158 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A192863.P13167557022102378454

namespace A192863

/-- `2*lt[A040451(A336158(n+1)), 3]+3` -/
def P13167557022102378454.Spec : Prop :=
  ∀ n, (P13167557022102378454.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P5839800596877122548

`lt[A000265(n+1), A007947(n+1)]+2`
-/

namespace A192863.P5839800596877122548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A192863.P5839800596877122548

namespace A192863

/-- `lt[A000265(n+1), A007947(n+1)]+2` -/
def P5839800596877122548.Spec : Prop :=
  ∀ n, (P5839800596877122548.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P5529991222390443381

`eq[A007947(2*(n+1)), A076998(2*(n+1))]+2`
-/

namespace A192863.P5529991222390443381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076998 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A192863.P5529991222390443381

namespace A192863

/-- `eq[A007947(2*(n+1)), A076998(2*(n+1))]+2` -/
def P5529991222390443381.Spec : Prop :=
  ∀ n, (P5529991222390443381.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P4131091646824539902

`A122132(A000027(n+1))+A122132(n+1)+1`
-/

namespace A192863.P4131091646824539902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (A000027 (n + 1)).toNat + (A122132 (n + 1) + 1)

end

end A192863.P4131091646824539902

namespace A192863

/-- `A122132(A000027(n+1))+A122132(n+1)+1` -/
def P4131091646824539902.Spec : Prop :=
  ∀ n, P4131091646824539902.a n = A192863 (n + 1)

end A192863

/-! ## A192863.P5083099957002199053

`A000265(A122132(n+1)+A122132(n+1)+1)`
-/

namespace A192863.P5083099957002199053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A122132 (n + 1) + A122132 (n + 1) + 1).toNat

end

end A192863.P5083099957002199053

namespace A192863

/-- `A000265(A122132(n+1)+A122132(n+1)+1)` -/
def P5083099957002199053.Spec : Prop :=
  ∀ n, P5083099957002199053.a n = A192863 (n + 1)

end A192863

/-! ## A192863.P16826404897546355195

`A144396(A122132(n+1))`
-/

namespace A192863.P16826404897546355195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A122132 (n + 1)).toNat

end

end A192863.P16826404897546355195

namespace A192863

/-- `A144396(A122132(n+1))` -/
def P16826404897546355195.Spec : Prop :=
  ∀ n, P16826404897546355195.a n = A192863 (n + 1)

end A192863

/-! ## A192863.P10052516046041031922

`A004273(A122132(n+1)+1)`
-/

namespace A192863.P10052516046041031922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A122132 (n + 1) + 1).toNat

end

end A192863.P10052516046041031922

namespace A192863

/-- `A004273(A122132(n+1)+1)` -/
def P10052516046041031922.Spec : Prop :=
  ∀ n, P10052516046041031922.a n = A192863 (n + 1)

end A192863

/-! ## A192863.P2963970452172693285

`eq[A010873(n), A295295(n+1)]+2`
-/

namespace A192863.P2963970452172693285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295295 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A192863.P2963970452172693285

namespace A192863

/-- `eq[A010873(n), A295295(n+1)]+2` -/
def P2963970452172693285.Spec : Prop :=
  ∀ n, (P2963970452172693285.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P14855798894201956286

`eq[A135481(n), A324910(n+1)]+2`
-/

namespace A192863.P14855798894201956286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A192863.P14855798894201956286

namespace A192863

/-- `eq[A135481(n), A324910(n+1)]+2` -/
def P14855798894201956286.Spec : Prop :=
  ∀ n, (P14855798894201956286.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P5067161366374947915

`eq[2, A063958(2*(n+1))]+2`
-/

namespace A192863.P5067161366374947915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A192863.P5067161366374947915

namespace A192863

/-- `eq[2, A063958(2*(n+1))]+2` -/
def P5067161366374947915.Spec : Prop :=
  ∀ n, (P5067161366374947915.a n : ℤ) = A192863 (n + 1)

end A192863

/-! ## A192863.P7665616189206609750

`A009056(A192861(n+1))`
-/

namespace A192863.P7665616189206609750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A192861 (n + 1)).toNat

end

end A192863.P7665616189206609750

namespace A192863

/-- `A009056(A192861(n+1))` -/
def P7665616189206609750.Spec : Prop :=
  ∀ n, P7665616189206609750.a n = A192863 (n + 1)

end A192863

/-!
# A192864: Lower flat primes: odd primes p such that p-1 is a squarefree number times a power of two.

The programs for A192864, the canonical program `A192864.P4257417878317545726` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192864 has offset 1).

The definition of A192864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192864.P4257417878317545726

`abs(p?[A353627(n+1)+2*(n+1)]-1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A192864

/-- `abs(p?[A353627(n+1)+2*(n+1)]-1)+1` -/
def P4257417878317545726.Spec : Prop :=
  ∀ n, P4257417878317545726.a n = A192864 (n + 1)

theorem P4257417878317545726.correct : P4257417878317545726.Spec := by
  intro n
  simp only [A192864, Nat.add_sub_cancel]

end A192864

/-! ## A192864.P11382386418848926614

`record[A020639(2*n+3)*A353627(n+1)]`
-/

namespace A192864.P11382386418848926614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 3) * A353627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192864.P11382386418848926614

namespace A192864

/-- `record[A020639(2*n+3)*A353627(n+1)]` -/
def P11382386418848926614.Spec : Prop :=
  ∀ n, P11382386418848926614.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P11158054344029417293

`p?[(n+1)*A078461(n+1)-n]`
-/

namespace A192864.P11158054344029417293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078461 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192864.P11158054344029417293

namespace A192864

/-- `p?[(n+1)*A078461(n+1)-n]` -/
def P11158054344029417293.Spec : Prop :=
  ∀ n, P11158054344029417293.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P11237288549287147366

`p?[A192863(n+1)]`
-/

namespace A192864.P11237288549287147366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192864.P11237288549287147366

namespace A192864

/-- `p?[A192863(n+1)]` -/
def P11237288549287147366.Spec : Prop :=
  ∀ n, P11237288549287147366.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P15414242529260401514

`p?[A192861(n+1)+2]`
-/

namespace A192864.P15414242529260401514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192861 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192864.P15414242529260401514

namespace A192864

/-- `p?[A192861(n+1)+2]` -/
def P15414242529260401514.Spec : Prop :=
  ∀ n, P15414242529260401514.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P9068204992118730988

`p?[2*A122132(n+1)+1]`
-/

namespace A192864.P9068204992118730988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122132 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192864.P9068204992118730988

namespace A192864

/-- `p?[2*A122132(n+1)+1]` -/
def P9068204992118730988.Spec : Prop :=
  ∀ n, P9068204992118730988.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P8529035182275367452

`filter[A192863(n+1), A010051(#)]`
-/

namespace A192864.P8529035182275367452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192864.P8529035182275367452

namespace A192864

/-- `filter[A192863(n+1), A010051(#)]` -/
def P8529035182275367452.Spec : Prop :=
  ∀ n, P8529035182275367452.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P14271319364980930949

`filter[A192863(n+1), A323152(#)]`
-/

namespace A192864.P14271319364980930949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192864.P14271319364980930949

namespace A192864

/-- `filter[A192863(n+1), A323152(#)]` -/
def P14271319364980930949.Spec : Prop :=
  ∀ n, P14271319364980930949.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P3456202686812933876

`filter[A192863(n+1), A323153(#)]`
-/

namespace A192864.P3456202686812933876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192864.P3456202686812933876

namespace A192864

/-- `filter[A192863(n+1), A323153(#)]` -/
def P3456202686812933876.Spec : Prop :=
  ∀ n, P3456202686812933876.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P1059639946614115302

`filter[A192863(n+1), A340371(#)]`
-/

namespace A192864.P1059639946614115302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192864.P1059639946614115302

namespace A192864

/-- `filter[A192863(n+1), A340371(#)]` -/
def P1059639946614115302.Spec : Prop :=
  ∀ n, P1059639946614115302.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P8063407719058731052

`filter[A192863(n+1), A353670(#)]`
-/

namespace A192864.P8063407719058731052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A192864.P8063407719058731052

namespace A192864

/-- `filter[A192863(n+1), A353670(#)]` -/
def P8063407719058731052.Spec : Prop :=
  ∀ n, P8063407719058731052.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P16917063812293714365

`filter[A192863(n+1), A365716(#)]`
-/

namespace A192864.P16917063812293714365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A192864.P16917063812293714365

namespace A192864

/-- `filter[A192863(n+1), A365716(#)]` -/
def P16917063812293714365.Spec : Prop :=
  ∀ n, P16917063812293714365.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P16348370196446259297

`filter[A192863(n+1), A379969(#)]`
-/

namespace A192864.P16348370196446259297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A192864.P16348370196446259297

namespace A192864

/-- `filter[A192863(n+1), A379969(#)]` -/
def P16348370196446259297.Spec : Prop :=
  ∀ n, P16348370196446259297.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P7982459911526468639

`filter[A192863(n+1), A380467(#)]`
-/

namespace A192864.P7982459911526468639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A192864.P7982459911526468639

namespace A192864

/-- `filter[A192863(n+1), A380467(#)]` -/
def P7982459911526468639.Spec : Prop :=
  ∀ n, P7982459911526468639.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P6730681607824943146

`record[A006530(A192861(n+1)+2)]`
-/

namespace A192864.P6730681607824943146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A192861 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192864.P6730681607824943146

namespace A192864

/-- `record[A006530(A192861(n+1)+2)]` -/
def P6730681607824943146.Spec : Prop :=
  ∀ n, P6730681607824943146.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P12687046571868420685

`record[A020639(A192861(n+1)+2)]`
-/

namespace A192864.P12687046571868420685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A192861 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192864.P12687046571868420685

namespace A192864

/-- `record[A020639(A192861(n+1)+2)]` -/
def P12687046571868420685.Spec : Prop :=
  ∀ n, P12687046571868420685.a n = A192864 (n + 1)

end A192864

/-! ## A192864.P2359110743811077000

`∩[A000040(n+1), A192863(n+1)]`
-/

namespace A192864.P2359110743811077000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192864.P2359110743811077000

namespace A192864

/-- `∩[A000040(n+1), A192863(n+1)]` -/
def P2359110743811077000.Spec : Prop :=
  ∀ n, (P2359110743811077000.a n : ℤ) = A192864 (n + 1)

end A192864

/-! ## A192864.P5887970328261302496

`∩[A001751(n+1), A192863(n+1)]`
-/

namespace A192864.P5887970328261302496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192864.P5887970328261302496

namespace A192864

/-- `∩[A001751(n+1), A192863(n+1)]` -/
def P5887970328261302496.Spec : Prop :=
  ∀ n, (P5887970328261302496.a n : ℤ) = A192864 (n + 1)

end A192864

/-! ## A192864.P17221232013061716258

`∩[A006005(n+1), A192863(n+1)]`
-/

namespace A192864.P17221232013061716258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192864.P17221232013061716258

namespace A192864

/-- `∩[A006005(n+1), A192863(n+1)]` -/
def P17221232013061716258.Spec : Prop :=
  ∀ n, (P17221232013061716258.a n : ℤ) = A192864 (n + 1)

end A192864

/-! ## A192864.P7074998727480197618

`∩[A008578(n+1), A192863(n+1)]`
-/

namespace A192864.P7074998727480197618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192864.P7074998727480197618

namespace A192864

/-- `∩[A008578(n+1), A192863(n+1)]` -/
def P7074998727480197618.Spec : Prop :=
  ∀ n, (P7074998727480197618.a n : ℤ) = A192864 (n + 1)

end A192864

/-!
# A192865: Number of set partitions of {1,...,n} that avoid enhanced 5-crossings (or 5-nestings).

The programs for A192865, there is no canonical definition to state claims against.
-/

/-! ## A192865.P2521022533766919036

`A000110(n)-A072931(A184974(n))`
-/

namespace A192865.P2521022533766919036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A072931 (A184974 n).toNat

end

end A192865.P2521022533766919036

/-! ## A192865.P13228720725919212734

`A000110(n)-A106443(A255379(n))`
-/

namespace A192865.P13228720725919212734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A106443 (A255379 n).toNat

end

end A192865.P13228720725919212734

/-! ## A192865.P6370512200343344283

`A000110(n)-A254131(A115205(n))`
-/

namespace A192865.P6370512200343344283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A254131 (A115205 n).toNat

end

end A192865.P6370512200343344283

/-! ## A192865.P1268234765910999176

`A164864(n)-A106443(A255379(n))`
-/

namespace A192865.P1268234765910999176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164864 n - A106443 (A255379 n).toNat

end

end A192865.P1268234765910999176

/-! ## A192865.P16272004256699306543

`A192126(n)-A306600(A035041(n))`
-/

namespace A192865.P16272004256699306543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192126 n - A306600 (A035041 n).toNat

end

end A192865.P16272004256699306543

/-!
# A192866: Number of set partitions of {1, ..., n} that avoid enhanced 6-crossings (or enhanced 6-nestings).

The programs for A192866, there is no canonical definition to state claims against.
-/

/-! ## A192866.P6596284527557869815

`A324417(A304430(n))+A164864(n)`
-/

namespace A192866.P6596284527557869815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324417 (A304430 n).toNat + A164864 n

end

end A192866.P6596284527557869815

/-!
# A192868: Thin numbers: odd numbers k > 1 such that k+1 is a prime times a power of two.

The programs for A192868, the canonical program `A192868.P10087640679497259836` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192868 has offset 1).

The definition of A192868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192868.P10087640679497259836

`A108144(n+1)-2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A192868

/-- `A108144(n+1)-2` -/
def P10087640679497259836.Spec : Prop :=
  ∀ n, P10087640679497259836.a n = A192868 (n + 1)

theorem P10087640679497259836.correct : P10087640679497259836.Spec := by
  intro n
  simp only [A192868, Nat.add_sub_cancel]

end A192868

/-! ## A192868.P4818397749420402938

`2*A093641(n+2)-1`
-/

namespace A192868.P4818397749420402938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093641 (n + 2) - 1

end

end A192868.P4818397749420402938

namespace A192868

/-- `2*A093641(n+2)-1` -/
def P4818397749420402938.Spec : Prop :=
  ∀ n, P4818397749420402938.a n = A192868 (n + 1)

end A192868

/-! ## A192868.P1317122059752134593

`eq[2, A006530((n+1)/A006530(n+1))]`
-/

namespace A192868.P1317122059752134593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192868.P1317122059752134593

namespace A192868

/-- `eq[2, A006530((n+1)/A006530(n+1))]` -/
def P1317122059752134593.Spec : Prop :=
  ∀ n, (P1317122059752134593.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P12887178648966208432

`lt[A000010(n+1)*A336158(n+1), n]`
-/

namespace A192868.P12887178648966208432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A336158 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A192868.P12887178648966208432

namespace A192868

/-- `lt[A000010(n+1)*A336158(n+1), n]` -/
def P12887178648966208432.Spec : Prop :=
  ∀ n, (P12887178648966208432.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P14506700286129465383

`eq[2, A322813(n+1)]`
-/

namespace A192868.P14506700286129465383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192868.P14506700286129465383

namespace A192868

/-- `eq[2, A322813(n+1)]` -/
def P14506700286129465383.Spec : Prop :=
  ∀ n, (P14506700286129465383.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P3121560077335963419

`A004273(A093641(n+2))`
-/

namespace A192868.P3121560077335963419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A093641 (n + 2)).toNat

end

end A192868.P3121560077335963419

namespace A192868

/-- `A004273(A093641(n+2))` -/
def P3121560077335963419.Spec : Prop :=
  ∀ n, P3121560077335963419.a n = A192868 (n + 1)

end A192868

/-! ## A192868.P9350715365767371660

`A144396(A093641(n+2)-1)`
-/

namespace A192868.P9350715365767371660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A093641 (n + 2) - 1).toNat

end

end A192868.P9350715365767371660

namespace A192868

/-- `A144396(A093641(n+2)-1)` -/
def P9350715365767371660.Spec : Prop :=
  ∀ n, P9350715365767371660.a n = A192868 (n + 1)

end A192868

/-! ## A192868.P5569925483941829295

`A004277(eq[1, A257990(n+1)])+1`
-/

namespace A192868.P5569925483941829295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A192868.P5569925483941829295

namespace A192868

/-- `A004277(eq[1, A257990(n+1)])+1` -/
def P5569925483941829295.Spec : Prop :=
  ∀ n, P5569925483941829295.a n = A192868 (n + 1)

end A192868

/-! ## A192868.P7967260874182442184

`eq[A005171(n+1), A257990(n+1)]`
-/

namespace A192868.P7967260874182442184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192868.P7967260874182442184

namespace A192868

/-- `eq[A005171(n+1), A257990(n+1)]` -/
def P7967260874182442184.Spec : Prop :=
  ∀ n, (P7967260874182442184.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P9861116442512589986

`eq[2, A014963(A329888(n+1))]`
-/

namespace A192868.P9861116442512589986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A329888 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192868.P9861116442512589986

namespace A192868

/-- `eq[2, A014963(A329888(n+1))]` -/
def P9861116442512589986.Spec : Prop :=
  ∀ n, (P9861116442512589986.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P3441894173442165046

`eq[A257990(n+1)², A166333(n)]`
-/

namespace A192868.P3441894173442165046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192868.P3441894173442165046

namespace A192868

/-- `eq[A257990(n+1)², A166333(n)]` -/
def P3441894173442165046.Spec : Prop :=
  ∀ n, (P3441894173442165046.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P9525756090881896380

`eq[A325135(n+1)², A106458(n)]`
-/

namespace A192868.P9525756090881896380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192868.P9525756090881896380

namespace A192868

/-- `eq[A325135(n+1)², A106458(n)]` -/
def P9525756090881896380.Spec : Prop :=
  ∀ n, (P9525756090881896380.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P3351476751602673355

`eq[A257990(n+1), A288872(n)]`
-/

namespace A192868.P3351476751602673355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192868.P3351476751602673355

namespace A192868

/-- `eq[A257990(n+1), A288872(n)]` -/
def P3351476751602673355.Spec : Prop :=
  ∀ n, (P3351476751602673355.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P2375164500918582802

`eq[2, A087039(n+1)]`
-/

namespace A192868.P2375164500918582802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192868.P2375164500918582802

namespace A192868

/-- `eq[2, A087039(n+1)]` -/
def P2375164500918582802.Spec : Prop :=
  ∀ n, (P2375164500918582802.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P15717807144662939757

`A023444(A108144(n+1))`
-/

namespace A192868.P15717807144662939757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A108144 (n + 1)).toNat

end

end A192868.P15717807144662939757

namespace A192868

/-- `A023444(A108144(n+1))` -/
def P15717807144662939757.Spec : Prop :=
  ∀ n, P15717807144662939757.a n = A192868 (n + 1)

end A192868

/-! ## A192868.P16852601447236158951

`eq[2, A014963(A052126(n+1))]`
-/

namespace A192868.P16852601447236158951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A192868.P16852601447236158951

namespace A192868

/-- `eq[2, A014963(A052126(n+1))]` -/
def P16852601447236158951.Spec : Prop :=
  ∀ n, (P16852601447236158951.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P16945361322546424865

`eq[A091090(n), A144494(n+1)]`
-/

namespace A192868.P16945361322546424865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192868.P16945361322546424865

namespace A192868

/-- `eq[A091090(n), A144494(n+1)]` -/
def P16945361322546424865.Spec : Prop :=
  ∀ n, (P16945361322546424865.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P6981916009491134917

`eq[A027642(n), A257990(n+1)]`
-/

namespace A192868.P6981916009491134917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A192868.P6981916009491134917

namespace A192868

/-- `eq[A027642(n), A257990(n+1)]` -/
def P6981916009491134917.Spec : Prop :=
  ∀ n, (P6981916009491134917.a n : ℤ) = A192868 (n + 1)

end A192868

/-! ## A192868.P17572390493475835096

`eq[1, A257990(A181569(n+1))]+1`
-/

namespace A192868.P17572390493475835096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A181569 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A192868.P17572390493475835096

namespace A192868

/-- `eq[1, A257990(A181569(n+1))]+1` -/
def P17572390493475835096.Spec : Prop :=
  ∀ n, (P17572390493475835096.a n : ℤ) = A192868 (n + 1)

end A192868

/-!
# A192869: Thin primes: odd primes p such that p+1 is a prime (or 1) times a power of two.

The programs for A192869, the canonical program `A192869.P9466224486082789538` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192869 has offset 1).

The definition of A192869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192869.P1493433260591974938

`p?[A192868(n+1)]`
-/

namespace A192869.P1493433260591974938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192869.P1493433260591974938

namespace A192869

/-- `p?[A192868(n+1)]` -/
def P1493433260591974938.Spec : Prop :=
  ∀ n, P1493433260591974938.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P7108239921697842253

`p?[A108144(n+1)-2]`
-/

namespace A192869.P7108239921697842253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108144 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192869.P7108239921697842253

namespace A192869

/-- `p?[A108144(n+1)-2]` -/
def P7108239921697842253.Spec : Prop :=
  ∀ n, P7108239921697842253.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P9466224486082789538

`p?[2*A093641(n+1)-1]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A192869

/-- `p?[2*A093641(n+1)-1]` -/
def P9466224486082789538.Spec : Prop :=
  ∀ n, P9466224486082789538.a n = A192869 (n + 1)

theorem P9466224486082789538.correct : P9466224486082789538.Spec := by
  intro n
  simp only [A192869, Nat.add_sub_cancel]

end A192869

/-! ## A192869.P139931745416551216

`p?[A340371(n+1)+2*n]`
-/

namespace A192869.P139931745416551216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340371 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A192869.P139931745416551216

namespace A192869

/-- `p?[A340371(n+1)+2*n]` -/
def P139931745416551216.Spec : Prop :=
  ∀ n, P139931745416551216.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P8355319679138911792

`filter[A192868(n+1), A010051(#)]`
-/

namespace A192869.P8355319679138911792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A192869.P8355319679138911792

namespace A192869

/-- `filter[A192868(n+1), A010051(#)]` -/
def P8355319679138911792.Spec : Prop :=
  ∀ n, P8355319679138911792.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P17697668942383746345

`filter[A192868(n+1), A323152(#)]`
-/

namespace A192869.P17697668942383746345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A192869.P17697668942383746345

namespace A192869

/-- `filter[A192868(n+1), A323152(#)]` -/
def P17697668942383746345.Spec : Prop :=
  ∀ n, P17697668942383746345.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P9862277147916713462

`filter[A192868(n+1), A323153(#)]`
-/

namespace A192869.P9862277147916713462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A192869.P9862277147916713462

namespace A192869

/-- `filter[A192868(n+1), A323153(#)]` -/
def P9862277147916713462.Spec : Prop :=
  ∀ n, P9862277147916713462.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P728947490632716732

`filter[A192868(n+1), A340371(#)]`
-/

namespace A192869.P728947490632716732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A192869.P728947490632716732

namespace A192869

/-- `filter[A192868(n+1), A340371(#)]` -/
def P728947490632716732.Spec : Prop :=
  ∀ n, P728947490632716732.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P2046620929595739254

`filter[A192868(n+1), A353670(#)]`
-/

namespace A192869.P2046620929595739254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A192869.P2046620929595739254

namespace A192869

/-- `filter[A192868(n+1), A353670(#)]` -/
def P2046620929595739254.Spec : Prop :=
  ∀ n, P2046620929595739254.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P5870452784989694700

`filter[A192868(n+1), A365716(#)]`
-/

namespace A192869.P5870452784989694700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A192869.P5870452784989694700

namespace A192869

/-- `filter[A192868(n+1), A365716(#)]` -/
def P5870452784989694700.Spec : Prop :=
  ∀ n, P5870452784989694700.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P2850884134860051039

`filter[A192868(n+1), A379969(#)]`
-/

namespace A192869.P2850884134860051039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A192869.P2850884134860051039

namespace A192869

/-- `filter[A192868(n+1), A379969(#)]` -/
def P2850884134860051039.Spec : Prop :=
  ∀ n, P2850884134860051039.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P10159096094757252083

`filter[A192868(n+1), A380467(#)]`
-/

namespace A192869.P10159096094757252083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A192869.P10159096094757252083

namespace A192869

/-- `filter[A192868(n+1), A380467(#)]` -/
def P10159096094757252083.Spec : Prop :=
  ∀ n, P10159096094757252083.a n = A192869 (n + 1)

end A192869

/-! ## A192869.P3359880725870693355

`∩[A000040(n+1), A192868(n+1)]`
-/

namespace A192869.P3359880725870693355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P3359880725870693355

namespace A192869

/-- `∩[A000040(n+1), A192868(n+1)]` -/
def P3359880725870693355.Spec : Prop :=
  ∀ n, (P3359880725870693355.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P2510463036751771145

`∩[A001751(n+1), A192868(n+1)]`
-/

namespace A192869.P2510463036751771145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P2510463036751771145

namespace A192869

/-- `∩[A001751(n+1), A192868(n+1)]` -/
def P2510463036751771145.Spec : Prop :=
  ∀ n, (P2510463036751771145.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P16571145753547579482

`∩[A006005(n+1), A192868(n+1)]`
-/

namespace A192869.P16571145753547579482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P16571145753547579482

namespace A192869

/-- `∩[A006005(n+1), A192868(n+1)]` -/
def P16571145753547579482.Spec : Prop :=
  ∀ n, (P16571145753547579482.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P12120320850455659642

`∩[A008578(n+1), A192868(n+1)]`
-/

namespace A192869.P12120320850455659642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P12120320850455659642

namespace A192869

/-- `∩[A008578(n+1), A192868(n+1)]` -/
def P12120320850455659642.Spec : Prop :=
  ∀ n, (P12120320850455659642.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P18304948360740660622

`∩[A046022(n+1), A192868(n+1)]`
-/

namespace A192869.P18304948360740660622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P18304948360740660622

namespace A192869

/-- `∩[A046022(n+1), A192868(n+1)]` -/
def P18304948360740660622.Spec : Prop :=
  ∀ n, (P18304948360740660622.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P13351590544816411420

`∩[A051948(n+1), A192868(n+1)]`
-/

namespace A192869.P13351590544816411420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P13351590544816411420

namespace A192869

/-- `∩[A051948(n+1), A192868(n+1)]` -/
def P13351590544816411420.Spec : Prop :=
  ∀ n, (P13351590544816411420.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P1420350749982748676

`∩[A053577(n+1), A192868(n+1)]`
-/

namespace A192869.P1420350749982748676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P1420350749982748676

namespace A192869

/-- `∩[A053577(n+1), A192868(n+1)]` -/
def P1420350749982748676.Spec : Prop :=
  ∀ n, (P1420350749982748676.a n : ℤ) = A192869 (n + 1)

end A192869

/-! ## A192869.P2558270239299444250

`∩[A053813(n+1), A192868(n+1)]`
-/

namespace A192869.P2558270239299444250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A192869.P2558270239299444250

namespace A192869

/-- `∩[A053813(n+1), A192868(n+1)]` -/
def P2558270239299444250.Spec : Prop :=
  ∀ n, (P2558270239299444250.a n : ℤ) = A192869 (n + 1)

end A192869

/-!
# A192872: Constant term in the reduction by (x^2 -> x+1) of the polynomial p(n,x) given in Comments.

The programs for A192872, the canonical program `A192872.P3830109272780654336` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192872 has offset 0).

The definition of A192872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192872.P3830109272780654336

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192872

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P3830109272780654336.Spec : Prop :=
  ∀ n, P3830109272780654336.a n = A192872 n

theorem P3830109272780654336.correct : P3830109272780654336.Spec := by
  intro n
  simp only [A192872]

end A192872

/-! ## A192872.P235047370778238928

`ogf((1-3x+3x^2-2x^3)/(1-3x+3x^3-x^4))`
-/

namespace A192872.P235047370778238928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -2] [1, -3, 0, 3, -1] n

end

end A192872.P235047370778238928

namespace A192872

/-- `ogf((1-3x+3x^2-2x^3)/(1-3x+3x^3-x^4))` -/
def P235047370778238928.Spec : Prop :=
  ∀ n, P235047370778238928.a n = A192872 n

end A192872

/-! ## A192872.P11681204707495372737

`A192908(n)-a(n-1)` with `a(0)=1`
-/

namespace A192872.P11681204707495372737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A192908 n - a (n - 1)

end

end A192872.P11681204707495372737

namespace A192872

/-- `A192908(n)-a(n-1)` -/
def P11681204707495372737.Spec : Prop :=
  ∀ n, P11681204707495372737.a n = A192872 n

end A192872

/-! ## A192872.P17489626888701773079

`A066983(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A192872.P17489626888701773079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066983 (2 * n) - a (n - 1)

end

end A192872.P17489626888701773079

namespace A192872

/-- `A066983(2*n)-a(n-1)` -/
def P17489626888701773079.Spec : Prop :=
  ∀ n, P17489626888701773079.a n = A192872 n

end A192872

/-! ## A192872.P9215320038915977483

`∑[A052995(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A192872.P9215320038915977483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A052995 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192872.P9215320038915977483

namespace A192872

/-- `∑[A052995(n-1)-a(n-1)]` -/
def P9215320038915977483.Spec : Prop :=
  ∀ n, P9215320038915977483.a n = A192872 n

end A192872

/-! ## A192872.P8119634202556578377

`A295671(2*n+1)+A000035(n)`
-/

namespace A192872.P8119634202556578377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295671 (2 * n + 1) + A000035 n

end

end A192872.P8119634202556578377

namespace A192872

/-- `A295671(2*n+1)+A000035(n)` -/
def P8119634202556578377.Spec : Prop :=
  ∀ n, P8119634202556578377.a n = A192872 n

end A192872

/-! ## A192872.P7993360445644035754

`A226205(n+1)+A001654(n)-A192873(n)`
-/

namespace A192872.P7993360445644035754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 1) + (A001654 n - A192873 n)

end

end A192872.P7993360445644035754

namespace A192872

/-- `A226205(n+1)+A001654(n)-A192873(n)` -/
def P7993360445644035754.Spec : Prop :=
  ∀ n, P7993360445644035754.a n = A192872 n

end A192872

/-! ## A192872.P3258821272974515919

`A110035(n)-A175395(n)`
-/

namespace A192872.P3258821272974515919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n - A175395 n

end

end A192872.P3258821272974515919

namespace A192872

/-- `A110035(n)-A175395(n)` -/
def P3258821272974515919.Spec : Prop :=
  ∀ n, P3258821272974515919.a n = A192872 n

end A192872

/-! ## A192872.P964969162066062183

`A236428(n)-A192873(n)`
-/

namespace A192872.P964969162066062183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n - A192873 n

end

end A192872.P964969162066062183

namespace A192872

/-- `A236428(n)-A192873(n)` -/
def P964969162066062183.Spec : Prop :=
  ∀ n, P964969162066062183.a n = A192872 n

end A192872

/-! ## A192872.P13591714817038910929

`A192914(n)-A059840(n+1)`
-/

namespace A192872.P13591714817038910929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n - A059840 (n + 1)

end

end A192872.P13591714817038910929

namespace A192872

/-- `A192914(n)-A059840(n+1)` -/
def P13591714817038910929.Spec : Prop :=
  ∀ n, P13591714817038910929.a n = A192872 n

end A192872

/-! ## A192872.P16373666976371084515

`A110035(n)-2*A007598(n)`
-/

namespace A192872.P16373666976371084515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n - 2 * A007598 n

end

end A192872.P16373666976371084515

namespace A192872

/-- `A110035(n)-2*A007598(n)` -/
def P16373666976371084515.Spec : Prop :=
  ∀ n, P16373666976371084515.a n = A192872 n

end A192872

/-! ## A192872.P12916327093877167522

`A192873(n+1)-2*A192873(n)`
-/

namespace A192872.P12916327093877167522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 (n + 1) - 2 * A192873 n

end

end A192872.P12916327093877167522

namespace A192872

/-- `A192873(n+1)-2*A192873(n)` -/
def P12916327093877167522.Spec : Prop :=
  ∀ n, P12916327093877167522.a n = A192872 n

end A192872

/-! ## A192872.P10232741216362350074

`A001654(n+1)+A110034(n)-A192921(n)`
-/

namespace A192872.P10232741216362350074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) + (A110034 n - A192921 n)

end

end A192872.P10232741216362350074

namespace A192872

/-- `A001654(n+1)+A110034(n)-A192921(n)` -/
def P10232741216362350074.Spec : Prop :=
  ∀ n, P10232741216362350074.a n = A192872 n

end A192872

/-! ## A192872.P12400657308497754078

`A192921(n+1)-(A192921(n)+A059840(n+1))`
-/

namespace A192872.P12400657308497754078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192921 (n + 1) - (A192921 n + A059840 (n + 1))

end

end A192872.P12400657308497754078

namespace A192872

/-- `A192921(n+1)-(A192921(n)+A059840(n+1))` -/
def P12400657308497754078.Spec : Prop :=
  ∀ n, P12400657308497754078.a n = A192872 n

end A192872

/-! ## A192872.P9305342101843334208

`A215602(n)-A064831(n+1)`
-/

namespace A192872.P9305342101843334208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n - A064831 (n + 1)

end

end A192872.P9305342101843334208

namespace A192872

/-- `A215602(n)-A064831(n+1)` -/
def P9305342101843334208.Spec : Prop :=
  ∀ n, P9305342101843334208.a n = A192872 n

end A192872

/-!
# A192873: Coefficient of x in the reduction by (x^2->x+1) of the polynomial p(n,x) given in Comments.

The programs for A192873, the canonical program `A192873.P8323010108294074355` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192873 has offset 0).

The definition of A192873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192873.P8323010108294074355

`3*a(n-1)-3*a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192873

/-- `3*a(n-1)-3*a(n-3)+a(n-4)` -/
def P8323010108294074355.Spec : Prop :=
  ∀ n, P8323010108294074355.a n = A192873 n

theorem P8323010108294074355.correct : P8323010108294074355.Spec := by
  intro n
  simp only [A192873]

end A192873

/-! ## A192873.P6248236441350386733

`xor(1, ceil(ϕ²*a(n-1)))` with `a(0)=0`
-/

namespace A192873.P6248236441350386733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A192873.P6248236441350386733

namespace A192873

/-- `xor(1, ceil(ϕ²*a(n-1)))` -/
def P6248236441350386733.Spec : Prop :=
  ∀ n, P6248236441350386733.a n = A192873 n

end A192873

/-! ## A192873.P1575613841897973013

`ogf((x-x^2+x^3)/(1-3x+3x^3-x^4))`
-/

namespace A192873.P1575613841897973013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 1] [1, -3, 0, 3, -1] n

end

end A192873.P1575613841897973013

namespace A192873

/-- `ogf((x-x^2+x^3)/(1-3x+3x^3-x^4))` -/
def P1575613841897973013.Spec : Prop :=
  ∀ n, P1575613841897973013.a n = A192873 n

end A192873

/-! ## A192873.P16071498664966114675

`xor(1, ceil(a(n-1)/(2-ϕ)))` with `a(0)=0`
-/

namespace A192873.P16071498664966114675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 ⌈(a (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A192873.P16071498664966114675

namespace A192873

/-- `xor(1, ceil(a(n-1)/(2-ϕ)))` -/
def P16071498664966114675.Spec : Prop :=
  ∀ n, P16071498664966114675.a n = A192873 n

end A192873

/-! ## A192873.P13106741741100215208

`record[a(n-2)-or(1, a(n-1))]` with `a(0)=0, a(1)=0`
-/

namespace A192873.P13106741741100215208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - Int.lor 1 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A192873.P13106741741100215208

namespace A192873

/-- `record[a(n-2)-or(1, a(n-1))]` -/
def P13106741741100215208.Spec : Prop :=
  ∀ n, P13106741741100215208.a n = A192873 n

end A192873

/-! ## A192873.P4527856802961177136

`ceil(ϕ²*a(n-1))-(-1)^n` with `a(0)=0`
-/

namespace A192873.P4527856802961177136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉ - (-1) ^ n

end

end A192873.P4527856802961177136

namespace A192873

/-- `ceil(ϕ²*a(n-1))-(-1)^n` -/
def P4527856802961177136.Spec : Prop :=
  ∀ n, P4527856802961177136.a n = A192873 n

end A192873

/-! ## A192873.P15616622608215790811

`A175395(n)-n%2`
-/

namespace A192873.P15616622608215790811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - ((n % 2 : ℕ) : ℤ)

end

end A192873.P15616622608215790811

namespace A192873

/-- `A175395(n)-n%2` -/
def P15616622608215790811.Spec : Prop :=
  ∀ n, P15616622608215790811.a n = A192873 n

end A192873

/-! ## A192873.P13122104090306792377

`A382845(n)+A059841(n)`
-/

namespace A192873.P13122104090306792377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 n + A059841 n

end

end A192873.P13122104090306792377

namespace A192873

/-- `A382845(n)+A059841(n)` -/
def P13122104090306792377.Spec : Prop :=
  ∀ n, P13122104090306792377.a n = A192873 n

end A192873

/-! ## A192873.P7927811804504298043

`A382843(n)+A062114(n)`
-/

namespace A192873.P7927811804504298043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382843 n + A062114 n

end

end A192873.P7927811804504298043

namespace A192873

/-- `A382843(n)+A062114(n)` -/
def P7927811804504298043.Spec : Prop :=
  ∀ n, P7927811804504298043.a n = A192873 n

end A192873

/-! ## A192873.P6562461542986513301

`A175395(n)-A000035(n)`
-/

namespace A192873.P6562461542986513301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n - A000035 n

end

end A192873.P6562461542986513301

namespace A192873

/-- `A175395(n)-A000035(n)` -/
def P6562461542986513301.Spec : Prop :=
  ∀ n, P6562461542986513301.a n = A192873 n

end A192873

/-! ## A192873.P9854294145064835273

`A229912(n)-A109522(n)`
-/

namespace A192873.P9854294145064835273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n - A109522 n

end

end A192873.P9854294145064835273

namespace A192873

/-- `A229912(n)-A109522(n)` -/
def P9854294145064835273.Spec : Prop :=
  ∀ n, P9854294145064835273.a n = A192873 n

end A192873

/-! ## A192873.P7696574594401504732

`∑[A126116(A004273(n))]-1`
-/

namespace A192873.P7696574594401504732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A192873.P7696574594401504732

namespace A192873

/-- `∑[A126116(A004273(n))]-1` -/
def P7696574594401504732.Spec : Prop :=
  ∀ n, P7696574594401504732.a n = A192873 n

end A192873

/-! ## A192873.P13092718001669951235

`A007598(n)+A166516(n)-1`
-/

namespace A192873.P13092718001669951235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + (A166516 n - 1)

end

end A192873.P13092718001669951235

namespace A192873

/-- `A007598(n)+A166516(n)-1` -/
def P13092718001669951235.Spec : Prop :=
  ∀ n, P13092718001669951235.a n = A192873 n

end A192873

/-! ## A192873.P17111748497379193231

`A392415(n+1)-A000034(n)`
-/

namespace A192873.P17111748497379193231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) - A000034 n

end

end A192873.P17111748497379193231

namespace A192873

/-- `A392415(n+1)-A000034(n)` -/
def P17111748497379193231.Spec : Prop :=
  ∀ n, P17111748497379193231.a n = A192873 n

end A192873

/-! ## A192873.P12424923174737435775

`2*A007598(n)-A000035(n)`
-/

namespace A192873.P12424923174737435775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007598 n - A000035 n

end

end A192873.P12424923174737435775

namespace A192873

/-- `2*A007598(n)-A000035(n)` -/
def P12424923174737435775.Spec : Prop :=
  ∀ n, P12424923174737435775.a n = A192873 n

end A192873

/-! ## A192873.P9921123545499624419

`A000045(n)²+A166516(n)-1`
-/

namespace A192873.P9921123545499624419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 + (A166516 n - 1)

end

end A192873.P9921123545499624419

namespace A192873

/-- `A000045(n)²+A166516(n)-1` -/
def P9921123545499624419.Spec : Prop :=
  ∀ n, P9921123545499624419.a n = A192873 n

end A192873

/-! ## A192873.P1780404383745869872

`2*A000045(n)²-A000035(n)`
-/

namespace A192873.P1780404383745869872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 - A000035 n

end

end A192873.P1780404383745869872

namespace A192873

/-- `2*A000045(n)²-A000035(n)` -/
def P1780404383745869872.Spec : Prop :=
  ∀ n, P1780404383745869872.a n = A192873 n

end A192873

/-!
# A192874: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) given in Comments.

The programs for A192874, the canonical program `A192874.P2356691331651833001` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192874 has offset 0).

The definition of A192874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192874.P2356691331651833001

`2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=6, a(4)=26`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192874

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` -/
def P2356691331651833001.Spec : Prop :=
  ∀ n, P2356691331651833001.a n = A192874 n

theorem P2356691331651833001.correct : P2356691331651833001.Spec := by
  intro n
  simp only [A192874]

end A192874

/-! ## A192874.P1845646489022856304

`A262689(A052841(n)*A072715(n+1))`
-/

namespace A192874.P1845646489022856304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A052841 n * A072715 (n + 1)).toNat

end

end A192874.P1845646489022856304

namespace A192874

/-- `A262689(A052841(n)*A072715(n+1))` -/
def P1845646489022856304.Spec : Prop :=
  ∀ n, P1845646489022856304.a n = A192874 n

end A192874

/-!
# A192875: Coefficient of x in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) given in Comments.

The programs for A192875, the canonical program `A192875.P1472694528890367751` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192875 has offset 0).

The definition of A192875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192875.P1472694528890367751

`2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=11, a(4)=37`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192875

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` -/
def P1472694528890367751.Spec : Prop :=
  ∀ n, P1472694528890367751.a n = A192875 n

theorem P1472694528890367751.correct : P1472694528890367751.Spec := by
  intro n
  simp only [A192875]

end A192875

/-! ## A192875.P9129733584715095858

`A192877(n)-A093043(n)`
-/

namespace A192875.P9129733584715095858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192877 n - A093043 n

end

end A192875.P9129733584715095858

namespace A192875

/-- `A192877(n)-A093043(n)` -/
def P9129733584715095858.Spec : Prop :=
  ∀ n, P9129733584715095858.a n = A192875 n

end A192875

/-! ## A192875.P9016167600464063685

`∑[A093043(n+1)]-A093043(n)`
-/

namespace A192875.P9016167600464063685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A093043 n

end

end A192875.P9016167600464063685

namespace A192875

/-- `∑[A093043(n+1)]-A093043(n)` -/
def P9016167600464063685.Spec : Prop :=
  ∀ n, P9016167600464063685.a n = A192875 n

end A192875

/-! ## A192875.P239772987889521684

`A192877(n)-Δ[A192877(A289207(n))]`
-/

namespace A192875.P239772987889521684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192877 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192877 n - (f1 (n + 1) - f1 n)

end

end A192875.P239772987889521684

namespace A192875

/-- `A192877(n)-Δ[A192877(A289207(n))]` -/
def P239772987889521684.Spec : Prop :=
  ∀ n, P239772987889521684.a n = A192875 n

end A192875

/-! ## A192875.P17142950672158317757

`A192877(n)-A001045(n)*A212804(n)`
-/

namespace A192875.P17142950672158317757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192877 n - A001045 n * A212804 n

end

end A192875.P17142950672158317757

namespace A192875

/-- `A192877(n)-A001045(n)*A212804(n)` -/
def P17142950672158317757.Spec : Prop :=
  ∀ n, P17142950672158317757.a n = A192875 n

end A192875

/-!
# A192876: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) given in Comments.

The programs for A192876, the canonical program `A192876.P18058722384598942419` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192876 has offset 0).

The definition of A192876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192876.P18058722384598942419

`2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=9, a(4)=31`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192876

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` -/
def P18058722384598942419.Spec : Prop :=
  ∀ n, P18058722384598942419.a n = A192876 n

theorem P18058722384598942419.correct : P18058722384598942419.Spec := by
  intro n
  simp only [A192876]

end A192876

/-! ## A192876.P3343376285312219715

`∑[A093044(n)+A093043(n)]`
-/

namespace A192876.P3343376285312219715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093044 n + A093043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P3343376285312219715

namespace A192876

/-- `∑[A093044(n)+A093043(n)]` -/
def P3343376285312219715.Spec : Prop :=
  ∀ n, P3343376285312219715.a n = A192876 n

end A192876

/-! ## A192876.P6361954420304757887

`∑[∑[A078008(n)]*A212804(n)]`
-/

namespace A192876.P6361954420304757887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P6361954420304757887

namespace A192876

/-- `∑[∑[A078008(n)]*A212804(n)]` -/
def P6361954420304757887.Spec : Prop :=
  ∀ n, P6361954420304757887.a n = A192876 n

end A192876

/-! ## A192876.P10788928804501933576

`∑[Δ[A000975(n)]*A212804(n)]`
-/

namespace A192876.P10788928804501933576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P10788928804501933576

namespace A192876

/-- `∑[Δ[A000975(n)]*A212804(n)]` -/
def P10788928804501933576.Spec : Prop :=
  ∀ n, P10788928804501933576.a n = A192876 n

end A192876

/-! ## A192876.P8859284716371648617

`∑[A001045(n+1)*A212804(n)]`
-/

namespace A192876.P8859284716371648617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P8859284716371648617

namespace A192876

/-- `∑[A001045(n+1)*A212804(n)]` -/
def P8859284716371648617.Spec : Prop :=
  ∀ n, P8859284716371648617.a n = A192876 n

end A192876

/-! ## A192876.P1894660774105126232

`∑[Δ[A000045(n)]*A001045(n+1)]`
-/

namespace A192876.P1894660774105126232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P1894660774105126232

namespace A192876

/-- `∑[Δ[A000045(n)]*A001045(n+1)]` -/
def P1894660774105126232.Spec : Prop :=
  ∀ n, P1894660774105126232.a n = A192876 n

end A192876

/-! ## A192876.P3697739972527205872

`∑[(A000045(n+1)-A000045(n))*A001045(n+1)]`
-/

namespace A192876.P3697739972527205872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P3697739972527205872

namespace A192876

/-- `∑[(A000045(n+1)-A000045(n))*A001045(n+1)]` -/
def P3697739972527205872.Spec : Prop :=
  ∀ n, P3697739972527205872.a n = A192876 n

end A192876

/-! ## A192876.P4000185823424926505

`A093042(n+1)-∑[A093045(n)]`
-/

namespace A192876.P4000185823424926505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093042 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P4000185823424926505

namespace A192876

/-- `A093042(n+1)-∑[A093045(n)]` -/
def P4000185823424926505.Spec : Prop :=
  ∀ n, P4000185823424926505.a n = A192876 n

end A192876

/-! ## A192876.P15117240704934698089

`∑[A094633(n)-A093042(n+1)]`
-/

namespace A192876.P15117240704934698089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094633 n - A093042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192876.P15117240704934698089

namespace A192876

/-- `∑[A094633(n)-A093042(n+1)]` -/
def P15117240704934698089.Spec : Prop :=
  ∀ n, P15117240704934698089.a n = A192876 n

end A192876

/-!
# A192877: Coefficient of x in the reduction by (x^2->x+1) of the polynomial p(n,x) given in Comments.

The programs for A192877, the canonical program `A192877.P11652196507941922056` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192877 has offset 0).

The definition of A192877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192877.P11652196507941922056

`2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14, a(4)=47`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192877

/-- `2*a(n-1)+6*a(n-2)-5*a(n-3)-6*a(n-4)+4*a(n-5)` -/
def P11652196507941922056.Spec : Prop :=
  ∀ n, P11652196507941922056.a n = A192877 n

theorem P11652196507941922056.correct : P11652196507941922056.Spec := by
  intro n
  simp only [A192877]

end A192877

/-! ## A192877.P11938057533692548915

`∑[A093043(n+1)]`
-/

namespace A192877.P11938057533692548915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P11938057533692548915

namespace A192877

/-- `∑[A093043(n+1)]` -/
def P11938057533692548915.Spec : Prop :=
  ∀ n, P11938057533692548915.a n = A192877 n

end A192877

/-! ## A192877.P15698099058230431626

`A192875(n)+A093043(n)`
-/

namespace A192877.P15698099058230431626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192875 n + A093043 n

end

end A192877.P15698099058230431626

namespace A192877

/-- `A192875(n)+A093043(n)` -/
def P15698099058230431626.Spec : Prop :=
  ∀ n, P15698099058230431626.a n = A192877 n

end A192877

/-! ## A192877.P15325150212813726569

`∑[A093045(n)+A093042(n)]`
-/

namespace A192877.P15325150212813726569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093045 n + A093042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P15325150212813726569

namespace A192877

/-- `∑[A093045(n)+A093042(n)]` -/
def P15325150212813726569.Spec : Prop :=
  ∀ n, P15325150212813726569.a n = A192877 n

end A192877

/-! ## A192877.P7449356765156574839

`∑[A000045(n)*∑[A078008(n)]]`
-/

namespace A192877.P7449356765156574839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P7449356765156574839

namespace A192877

/-- `∑[A000045(n)*∑[A078008(n)]]` -/
def P7449356765156574839.Spec : Prop :=
  ∀ n, P7449356765156574839.a n = A192877 n

end A192877

/-! ## A192877.P5096071762490147561

`∑[A000045(n)*Δ[A000975(n)]]`
-/

namespace A192877.P5096071762490147561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P5096071762490147561

namespace A192877

/-- `∑[A000045(n)*Δ[A000975(n)]]` -/
def P5096071762490147561.Spec : Prop :=
  ∀ n, P5096071762490147561.a n = A192877 n

end A192877

/-! ## A192877.P5569473895755250131

`∑[A000045(n)*A001045(n+1)]`
-/

namespace A192877.P5569473895755250131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P5569473895755250131

namespace A192877

/-- `∑[A000045(n)*A001045(n+1)]` -/
def P5569473895755250131.Spec : Prop :=
  ∀ n, P5569473895755250131.a n = A192877 n

end A192877

/-! ## A192877.P17711009438982182855

`∑[A001045(n+1)*A212804(n+1)]`
-/

namespace A192877.P17711009438982182855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) * A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P17711009438982182855

namespace A192877

/-- `∑[A001045(n+1)*A212804(n+1)]` -/
def P17711009438982182855.Spec : Prop :=
  ∀ n, P17711009438982182855.a n = A192877 n

end A192877

/-! ## A192877.P2811321492960836144

`∑[(A157726(n)-3)*A001045(n+1)]`
-/

namespace A192877.P2811321492960836144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157726 n - 3) * A001045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P2811321492960836144

namespace A192877

/-- `∑[(A157726(n)-3)*A001045(n+1)]` -/
def P2811321492960836144.Spec : Prop :=
  ∀ n, P2811321492960836144.a n = A192877 n

end A192877

/-! ## A192877.P4195851606410879169

`∑[(A001611(n)-1)*or(1, A000975(n))]`
-/

namespace A192877.P4195851606410879169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * Int.lor 1 (A000975 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192877.P4195851606410879169

namespace A192877

/-- `∑[(A001611(n)-1)*or(1, A000975(n))]` -/
def P4195851606410879169.Spec : Prop :=
  ∀ n, P4195851606410879169.a n = A192877 n

end A192877

/-!
# A192878: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) given in Comments.

The programs for A192878, the canonical program `A192878.P15318273520193299525` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192878 has offset 0).

The definition of A192878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192878.P15318273520193299525

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=3, a(1)=0, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192878

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P15318273520193299525.Spec : Prop :=
  ∀ n, P15318273520193299525.a n = A192878 n

theorem P15318273520193299525.correct : P15318273520193299525.Spec := by
  intro n
  simp only [A192878]

end A192878

/-! ## A192878.P3014531179655894850

`ogf((-3+6x+2x^2)/(-1+2x+2x^2-x^3))`
-/

namespace A192878.P3014531179655894850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -2] [1, -2, -2, 1] n

end

end A192878.P3014531179655894850

namespace A192878

/-- `ogf((-3+6x+2x^2)/(-1+2x+2x^2-x^3))` -/
def P3014531179655894850.Spec : Prop :=
  ∀ n, P3014531179655894850.a n = A192878 n

end A192878

/-! ## A192878.P48870307010558071

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=3, a(1)=0, a(2)=4`
-/

namespace A192878.P48870307010558071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 0, 4] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192878.P48870307010558071

namespace A192878

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P48870307010558071.Spec : Prop :=
  ∀ n, P48870307010558071.a n = A192878 n

theorem P48870307010558071.correct : P48870307010558071.Spec := by
  intro n
  simp only [A192878, Nat.add_sub_cancel, A192878.P48870307010558071.a, A192878.P15318273520193299525.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192878

/-! ## A192878.P8872220731418288170

`∑[A295677(2*n+1)]+2`
-/

namespace A192878.P8872220731418288170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295677 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A192878.P8872220731418288170

namespace A192878

/-- `∑[A295677(2*n+1)]+2` -/
def P8872220731418288170.Spec : Prop :=
  ∀ n, P8872220731418288170.a n = A192878 n

end A192878

/-! ## A192878.P17945031370890253952

`A104449(n)*A212804(n)`
-/

namespace A192878.P17945031370890253952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n * A212804 n

end

end A192878.P17945031370890253952

namespace A192878

/-- `A104449(n)*A212804(n)` -/
def P17945031370890253952.Spec : Prop :=
  ∀ n, P17945031370890253952.a n = A192878 n

end A192878

/-! ## A192878.P17815151536109107116

`Δ[A000045(n)]*A104449(n)`
-/

namespace A192878.P17815151536109107116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A104449 n

end

end A192878.P17815151536109107116

namespace A192878

/-- `Δ[A000045(n)]*A104449(n)` -/
def P17815151536109107116.Spec : Prop :=
  ∀ n, P17815151536109107116.a n = A192878 n

end A192878

/-! ## A192878.P7591583973460855261

`Δ[A001611(n)]*A104449(n)`
-/

namespace A192878.P7591583973460855261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A104449 n

end

end A192878.P7591583973460855261

namespace A192878

/-- `Δ[A001611(n)]*A104449(n)` -/
def P7591583973460855261.Spec : Prop :=
  ∀ n, P7591583973460855261.a n = A192878 n

end A192878

/-! ## A192878.P16718826197351253347

`Δ[A000285(n)]*A212804(n)`
-/

namespace A192878.P16718826197351253347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192878.P16718826197351253347

namespace A192878

/-- `Δ[A000285(n)]*A212804(n)` -/
def P16718826197351253347.Spec : Prop :=
  ∀ n, P16718826197351253347.a n = A192878 n

end A192878

/-! ## A192878.P6611718596876215462

`Δ[A022308(n)]*A212804(n)`
-/

namespace A192878.P6611718596876215462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192878.P6611718596876215462

namespace A192878

/-- `Δ[A022308(n)]*A212804(n)` -/
def P6611718596876215462.Spec : Prop :=
  ∀ n, P6611718596876215462.a n = A192878 n

end A192878

/-! ## A192878.P10303285385061127789

`Δ[A000045(n)]*Δ[A000285(n)]`
-/

namespace A192878.P10303285385061127789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192878.P10303285385061127789

namespace A192878

/-- `Δ[A000045(n)]*Δ[A000285(n)]` -/
def P10303285385061127789.Spec : Prop :=
  ∀ n, P10303285385061127789.a n = A192878 n

end A192878

/-! ## A192878.P7457443524512307219

`Δ[A000285(n)]*Δ[A001611(n)]`
-/

namespace A192878.P7457443524512307219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192878.P7457443524512307219

namespace A192878

/-- `Δ[A000285(n)]*Δ[A001611(n)]` -/
def P7457443524512307219.Spec : Prop :=
  ∀ n, P7457443524512307219.a n = A192878 n

end A192878

/-! ## A192878.P925723328733967455

`Δ[A000285(n)]*Δ[A157726(n)]`
-/

namespace A192878.P925723328733967455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192878.P925723328733967455

namespace A192878

/-- `Δ[A000285(n)]*Δ[A157726(n)]` -/
def P925723328733967455.Spec : Prop :=
  ∀ n, P925723328733967455.a n = A192878 n

end A192878

/-! ## A192878.P14608137326354377718

`A295684(2*n)+A057077(2*n)`
-/

namespace A192878.P14608137326354377718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 (2 * n) + A057077 (2 * n)

end

end A192878.P14608137326354377718

namespace A192878

/-- `A295684(2*n)+A057077(2*n)` -/
def P14608137326354377718.Spec : Prop :=
  ∀ n, P14608137326354377718.a n = A192878 n

end A192878

/-! ## A192878.P8669015543384785767

`A295672(2*n+1)+2*A295671(2*n)`
-/

namespace A192878.P8669015543384785767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295672 (2 * n + 1) + 2 * A295671 (2 * n)

end

end A192878.P8669015543384785767

namespace A192878

/-- `A295672(2*n+1)+2*A295671(2*n)` -/
def P8669015543384785767.Spec : Prop :=
  ∀ n, P8669015543384785767.a n = A192878 n

end A192878

/-! ## A192878.P12699654404880855300

`(A212804(n)+A000032(n))*A212804(n)`
-/

namespace A192878.P12699654404880855300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 n + A000032 n) * A212804 n

end

end A192878.P12699654404880855300

namespace A192878

/-- `(A212804(n)+A000032(n))*A212804(n)` -/
def P12699654404880855300.Spec : Prop :=
  ∀ n, P12699654404880855300.a n = A192878 n

end A192878

/-! ## A192878.P11487454293781267502

`(A104449(n)-A000032(n))*A104449(n)`
-/

namespace A192878.P11487454293781267502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A104449 n - A000032 n) * A104449 n

end

end A192878.P11487454293781267502

namespace A192878

/-- `(A104449(n)-A000032(n))*A104449(n)` -/
def P11487454293781267502.Spec : Prop :=
  ∀ n, P11487454293781267502.a n = A192878 n

end A192878

/-! ## A192878.P12241803356112381472

`(A000045(n)+Δ[A187893(n)])*A212804(n)`
-/

namespace A192878.P12241803356112381472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n + (f1 (n + 1) - f1 n)) * A212804 n

end

end A192878.P12241803356112381472

namespace A192878

/-- `(A000045(n)+Δ[A187893(n)])*A212804(n)` -/
def P12241803356112381472.Spec : Prop :=
  ∀ n, P12241803356112381472.a n = A192878 n

end A192878

/-! ## A192878.P5363032105953529461

`(A000285(n)-A022087(n))*Δ[A000285(n)]`
-/

namespace A192878.P5363032105953529461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000285 n - A022087 n) * (f1 (n + 1) - f1 n)

end

end A192878.P5363032105953529461

namespace A192878

/-- `(A000285(n)-A022087(n))*Δ[A000285(n)]` -/
def P5363032105953529461.Spec : Prop :=
  ∀ n, P5363032105953529461.a n = A192878 n

end A192878

/-! ## A192878.P12413052676544002993

`(A000045(n+1)-A000045(n))*A104449(n)`
-/

namespace A192878.P12413052676544002993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A104449 n

end

end A192878.P12413052676544002993

namespace A192878

/-- `(A000045(n+1)-A000045(n))*A104449(n)` -/
def P12413052676544002993.Spec : Prop :=
  ∀ n, P12413052676544002993.a n = A192878 n

end A192878

/-!
# A192879: Coefficient of x in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) given in Comments.

The programs for A192879, the canonical program `A192879.P12433509315677372158` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192879 has offset 0).

The definition of A192879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192879.P12433509315677372158

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192879

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P12433509315677372158.Spec : Prop :=
  ∀ n, P12433509315677372158.a n = A192879 n

theorem P12433509315677372158.correct : P12433509315677372158.Spec := by
  intro n
  simp only [A192879]

end A192879

/-! ## A192879.P7271545840814954345

`ogf((x+2x^2)/(1-2x-2x^2+x^3))`
-/

namespace A192879.P7271545840814954345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -2, -2, 1] n

end

end A192879.P7271545840814954345

namespace A192879

/-- `ogf((x+2x^2)/(1-2x-2x^2+x^3))` -/
def P7271545840814954345.Spec : Prop :=
  ∀ n, P7271545840814954345.a n = A192879 n

end A192879

/-! ## A192879.P728137029789221233

`3*a(n-1)-(a(n-2)-(-1)^n)` with `a(0)=0, a(1)=1`
-/

namespace A192879.P728137029789221233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * a (n - 1) - (a (n - 2) - (-1) ^ n)

end

end A192879.P728137029789221233

namespace A192879

/-- `3*a(n-1)-(a(n-2)-(-1)^n)` -/
def P728137029789221233.Spec : Prop :=
  ∀ n, P728137029789221233.a n = A192879 n

end A192879

/-! ## A192879.P2725905356519628654

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A192879.P2725905356519628654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192879.P2725905356519628654

namespace A192879

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P2725905356519628654.Spec : Prop :=
  ∀ n, P2725905356519628654.a n = A192879 n

theorem P2725905356519628654.correct : P2725905356519628654.Spec := by
  intro n
  simp only [A192879, Nat.add_sub_cancel, A192879.P2725905356519628654.a, A192879.P12433509315677372158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192879

/-! ## A192879.P505945699696043343

`A295684(Δ[n²])`
-/

namespace A192879.P505945699696043343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A192879.P505945699696043343

namespace A192879

/-- `A295684(Δ[n²])` -/
def P505945699696043343.Spec : Prop :=
  ∀ n, P505945699696043343.a n = A192879 n

end A192879

/-! ## A192879.P4994049451018636516

`∑[A295684(2*n)]-2`
-/

namespace A192879.P4994049451018636516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295684 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A192879.P4994049451018636516

namespace A192879

/-- `∑[A295684(2*n)]-2` -/
def P4994049451018636516.Spec : Prop :=
  ∀ n, P4994049451018636516.a n = A192879 n

end A192879

/-! ## A192879.P10245924373364175114

`A175395(n)+A128535(n)`
-/

namespace A192879.P10245924373364175114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 n + A128535 n

end

end A192879.P10245924373364175114

namespace A192879

/-- `A175395(n)+A128535(n)` -/
def P10245924373364175114.Spec : Prop :=
  ∀ n, P10245924373364175114.a n = A192879 n

end A192879

/-! ## A192879.P12045441507635696850

`A192914(n)-A033999(n)`
-/

namespace A192879.P12045441507635696850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192914 n - A033999 n

end

end A192879.P12045441507635696850

namespace A192879

/-- `A192914(n)-A033999(n)` -/
def P12045441507635696850.Spec : Prop :=
  ∀ n, P12045441507635696850.a n = A192879 n

end A192879

/-! ## A192879.P3753035896867712126

`A120718(n)-A175395(n)`
-/

namespace A192879.P3753035896867712126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120718 n - A175395 n

end

end A192879.P3753035896867712126

namespace A192879

/-- `A120718(n)-A175395(n)` -/
def P3753035896867712126.Spec : Prop :=
  ∀ n, P3753035896867712126.a n = A192879 n

end A192879

/-! ## A192879.P17926005486539407951

`A129905(n)-A192921(n)`
-/

namespace A192879.P17926005486539407951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129905 n - A192921 n

end

end A192879.P17926005486539407951

namespace A192879

/-- `A129905(n)-A192921(n)` -/
def P17926005486539407951.Spec : Prop :=
  ∀ n, P17926005486539407951.a n = A192879 n

end A192879

/-! ## A192879.P6885375526554703765

`A000045(n)*A104449(n)`
-/

namespace A192879.P6885375526554703765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A104449 n

end

end A192879.P6885375526554703765

namespace A192879

/-- `A000045(n)*A104449(n)` -/
def P6885375526554703765.Spec : Prop :=
  ∀ n, P6885375526554703765.a n = A192879 n

end A192879

/-! ## A192879.P8005761497619818727

`A000045(n)*Δ[A000285(n)]`
-/

namespace A192879.P8005761497619818727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192879.P8005761497619818727

namespace A192879

/-- `A000045(n)*Δ[A000285(n)]` -/
def P8005761497619818727.Spec : Prop :=
  ∀ n, P8005761497619818727.a n = A192879 n

end A192879

/-! ## A192879.P12232471333025416824

`A001654(n+1)-A001519(n)`
-/

namespace A192879.P12232471333025416824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) - A001519 n

end

end A192879.P12232471333025416824

namespace A192879

/-- `A001654(n+1)-A001519(n)` -/
def P12232471333025416824.Spec : Prop :=
  ∀ n, P12232471333025416824.a n = A192879 n

end A192879

/-! ## A192879.P10314287298553223398

`A001906(n+1)-A099016(n)`
-/

namespace A192879.P10314287298553223398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A099016 n

end

end A192879.P10314287298553223398

namespace A192879

/-- `A001906(n+1)-A099016(n)` -/
def P10314287298553223398.Spec : Prop :=
  ∀ n, P10314287298553223398.a n = A192879 n

end A192879

/-! ## A192879.P12652745628801790618

`A104449(n)*A212804(n+1)`
-/

namespace A192879.P12652745628801790618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n * A212804 (n + 1)

end

end A192879.P12652745628801790618

namespace A192879

/-- `A104449(n)*A212804(n+1)` -/
def P12652745628801790618.Spec : Prop :=
  ∀ n, P12652745628801790618.a n = A192879 n

end A192879

/-! ## A192879.P6813201775014100685

`A226205(n+2)-A128534(n)`
-/

namespace A192879.P6813201775014100685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226205 (n + 2) - A128534 n

end

end A192879.P6813201775014100685

namespace A192879

/-- `A226205(n+2)-A128534(n)` -/
def P6813201775014100685.Spec : Prop :=
  ∀ n, P6813201775014100685.a n = A192879 n

end A192879

/-! ## A192879.P10939636631763899947

`(A001611(n)-1)*A104449(n)`
-/

namespace A192879.P10939636631763899947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A104449 n

end

end A192879.P10939636631763899947

namespace A192879

/-- `(A001611(n)-1)*A104449(n)` -/
def P10939636631763899947.Spec : Prop :=
  ∀ n, P10939636631763899947.a n = A192879 n

end A192879

/-! ## A192879.P9684972512608807991

`A128535(n)+2*A007598(n)`
-/

namespace A192879.P9684972512608807991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 n + 2 * A007598 n

end

end A192879.P9684972512608807991

namespace A192879

/-- `A128535(n)+2*A007598(n)` -/
def P9684972512608807991.Spec : Prop :=
  ∀ n, P9684972512608807991.a n = A192879 n

end A192879

/-! ## A192879.P3239401213633703089

`A295680(2*n)+A001654(n)`
-/

namespace A192879.P3239401213633703089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (2 * n) + A001654 n

end

end A192879.P3239401213633703089

namespace A192879

/-- `A295680(2*n)+A001654(n)` -/
def P3239401213633703089.Spec : Prop :=
  ∀ n, P3239401213633703089.a n = A192879 n

end A192879

/-!
# A192880: Constant term in the reduction by (x^2 -> x + 1) of the polynomial p(n,x) given in Comments.

The programs for A192880, the canonical program `A192880.P8938414586513401959` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192880 has offset 0).

The definition of A192880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192880.P8938414586513401959

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192880

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P8938414586513401959.Spec : Prop :=
  ∀ n, P8938414586513401959.a n = A192880 n

theorem P8938414586513401959.correct : P8938414586513401959.Spec := by
  intro n
  simp only [A192880]

end A192880

/-! ## A192880.P14837531287253750706

`A001333(n)*A212804(n)`
-/

namespace A192880.P14837531287253750706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A212804 n

end

end A192880.P14837531287253750706

namespace A192880

/-- `A001333(n)*A212804(n)` -/
def P14837531287253750706.Spec : Prop :=
  ∀ n, P14837531287253750706.a n = A192880 n

end A192880

/-! ## A192880.P15993740445342915344

`abs(A123335(n)*A212804(n))`
-/

namespace A192880.P15993740445342915344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n * A212804 n|

end

end A192880.P15993740445342915344

namespace A192880

/-- `abs(A123335(n)*A212804(n))` -/
def P15993740445342915344.Spec : Prop :=
  ∀ n, P15993740445342915344.a n = A192880 n

end A192880

/-! ## A192880.P5154410627124702673

`Δ[A000045(n)]*A001333(n)`
-/

namespace A192880.P5154410627124702673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 n

end

end A192880.P5154410627124702673

namespace A192880

/-- `Δ[A000045(n)]*A001333(n)` -/
def P5154410627124702673.Spec : Prop :=
  ∀ n, P5154410627124702673.a n = A192880 n

end A192880

/-! ## A192880.P18338125390765897702

`Δ[A001611(n)]*A001333(n)`
-/

namespace A192880.P18338125390765897702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 n

end

end A192880.P18338125390765897702

namespace A192880

/-- `Δ[A001611(n)]*A001333(n)` -/
def P18338125390765897702.Spec : Prop :=
  ∀ n, P18338125390765897702.a n = A192880 n

end A192880

/-! ## A192880.P9165544771992919791

`Δ[A157725(n)]*A001333(n)`
-/

namespace A192880.P9165544771992919791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 n

end

end A192880.P9165544771992919791

namespace A192880

/-- `Δ[A157725(n)]*A001333(n)` -/
def P9165544771992919791.Spec : Prop :=
  ∀ n, P9165544771992919791.a n = A192880 n

end A192880

/-! ## A192880.P18332383429757801743

`Δ[A157726(n)]*A001333(n)`
-/

namespace A192880.P18332383429757801743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 n

end

end A192880.P18332383429757801743

namespace A192880

/-- `Δ[A157726(n)]*A001333(n)` -/
def P18332383429757801743.Spec : Prop :=
  ∀ n, P18332383429757801743.a n = A192880 n

end A192880

/-! ## A192880.P15213055458149696704

`Δ[A157727(n)]*A001333(n)`
-/

namespace A192880.P15213055458149696704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 n

end

end A192880.P15213055458149696704

namespace A192880

/-- `Δ[A157727(n)]*A001333(n)` -/
def P15213055458149696704.Spec : Prop :=
  ∀ n, P15213055458149696704.a n = A192880 n

end A192880

/-! ## A192880.P16295058203976737505

`Δ[A157729(n)]*A001333(n)`
-/

namespace A192880.P16295058203976737505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001333 n

end

end A192880.P16295058203976737505

namespace A192880

/-- `Δ[A157729(n)]*A001333(n)` -/
def P16295058203976737505.Spec : Prop :=
  ∀ n, P16295058203976737505.a n = A192880 n

end A192880

/-! ## A192880.P3215583854545037143

`Δ[A000129(n)]*A212804(n)`
-/

namespace A192880.P3215583854545037143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192880.P3215583854545037143

namespace A192880

/-- `Δ[A000129(n)]*A212804(n)` -/
def P3215583854545037143.Spec : Prop :=
  ∀ n, P3215583854545037143.a n = A192880 n

end A192880

/-! ## A192880.P5844150540608723744

`Δ[A174191(n)]*A212804(n)`
-/

namespace A192880.P5844150540608723744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192880.P5844150540608723744

namespace A192880

/-- `Δ[A174191(n)]*A212804(n)` -/
def P5844150540608723744.Spec : Prop :=
  ∀ n, P5844150540608723744.a n = A192880 n

end A192880

/-! ## A192880.P8766708842412099785

`(A293004(n)+1)*A212804(n)`
-/

namespace A192880.P8766708842412099785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A293004 n + 1) * A212804 n

end

end A192880.P8766708842412099785

namespace A192880

/-- `(A293004(n)+1)*A212804(n)` -/
def P8766708842412099785.Spec : Prop :=
  ∀ n, P8766708842412099785.a n = A192880 n

end A192880

/-! ## A192880.P9787558501295113811

`A002203(n)/2*A212804(n)`
-/

namespace A192880.P9787558501295113811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 n : ℚ) / 2 * (A212804 n : ℚ)

end

end A192880.P9787558501295113811

namespace A192880

/-- `A002203(n)/2*A212804(n)` -/
def P9787558501295113811.Spec : Prop :=
  ∀ n, P9787558501295113811.a n = (A192880 n : ℚ)

end A192880

/-! ## A192880.P11873343187389414373

`A002965(Δ[n²])*A212804(n)`
-/

namespace A192880.P11873343187389414373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A212804 n

end

end A192880.P11873343187389414373

namespace A192880

/-- `A002965(Δ[n²])*A212804(n)` -/
def P11873343187389414373.Spec : Prop :=
  ∀ n, P11873343187389414373.a n = A192880 n

end A192880

/-! ## A192880.P11953300232612222532

`Δ[A000045(n)]*Δ[A000129(n)]`
-/

namespace A192880.P11953300232612222532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192880.P11953300232612222532

namespace A192880

/-- `Δ[A000045(n)]*Δ[A000129(n)]` -/
def P11953300232612222532.Spec : Prop :=
  ∀ n, P11953300232612222532.a n = A192880 n

end A192880

/-! ## A192880.P9126973546931468381

`Δ[A000129(n)]*Δ[A001611(n)]`
-/

namespace A192880.P9126973546931468381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192880.P9126973546931468381

namespace A192880

/-- `Δ[A000129(n)]*Δ[A001611(n)]` -/
def P9126973546931468381.Spec : Prop :=
  ∀ n, P9126973546931468381.a n = A192880 n

end A192880

/-! ## A192880.P11856347483174863367

`Δ[Δ[A171842(n)]]*A212804(n)`
-/

namespace A192880.P11856347483174863367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192880.P11856347483174863367

namespace A192880

/-- `Δ[Δ[A171842(n)]]*A212804(n)` -/
def P11856347483174863367.Spec : Prop :=
  ∀ n, P11856347483174863367.a n = A192880 n

end A192880

/-! ## A192880.P4956326774243217070

`Δ[A002965(2*n)]*A212804(n)`
-/

namespace A192880.P4956326774243217070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A192880.P4956326774243217070

namespace A192880

/-- `Δ[A002965(2*n)]*A212804(n)` -/
def P4956326774243217070.Spec : Prop :=
  ∀ n, P4956326774243217070.a n = A192880 n

end A192880

/-! ## A192880.P16346410873625606164

`(A000045(n+1)-A000045(n))*A001333(n)`
-/

namespace A192880.P16346410873625606164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A001333 n

end

end A192880.P16346410873625606164

namespace A192880

/-- `(A000045(n+1)-A000045(n))*A001333(n)` -/
def P16346410873625606164.Spec : Prop :=
  ∀ n, P16346410873625606164.a n = A192880 n

end A192880

/-!
# A192882: Coefficient of x in the reduction by (x^2 -> x+1) of the polynomial p(n,x) given in Comments.

The programs for A192882, the canonical program `A192882.P15672027421127710063` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192882 has offset 0).

The definition of A192882 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192882.P15672027421127710063

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=14`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192882

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P15672027421127710063.Spec : Prop :=
  ∀ n, P15672027421127710063.a n = A192882 n

theorem P15672027421127710063.correct : P15672027421127710063.Spec := by
  intro n
  simp only [A192882]

end A192882

/-! ## A192882.P5708663330149655937

`round((sqrt(2)+1)^n/2)*A000045(n)`
-/

namespace A192882.P5708663330149655937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2) * A000045 n

end

end A192882.P5708663330149655937

namespace A192882

/-- `round((sqrt(2)+1)^n/2)*A000045(n)` -/
def P5708663330149655937.Spec : Prop :=
  ∀ n, P5708663330149655937.a n = A192882 n

end A192882

/-! ## A192882.P11812969545454026963

`A000045(n)*A001333(n)`
-/

namespace A192882.P11812969545454026963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001333 n

end

end A192882.P11812969545454026963

namespace A192882

/-- `A000045(n)*A001333(n)` -/
def P11812969545454026963.Spec : Prop :=
  ∀ n, P11812969545454026963.a n = A192882 n

end A192882

/-! ## A192882.P9986485365075153308

`abs(A000045(n)*A123335(n))`
-/

namespace A192882.P9986485365075153308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 n * A123335 n|

end

end A192882.P9986485365075153308

namespace A192882

/-- `abs(A000045(n)*A123335(n))` -/
def P9986485365075153308.Spec : Prop :=
  ∀ n, P9986485365075153308.a n = A192882 n

end A192882

/-! ## A192882.P7976385700404770807

`sqrt(A007598(n))*A001333(n)`
-/

namespace A192882.P7976385700404770807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007598 n : ℝ) * (A001333 n : ℝ)

end

end A192882.P7976385700404770807

namespace A192882

/-- `sqrt(A007598(n))*A001333(n)` -/
def P7976385700404770807.Spec : Prop :=
  ∀ n, P7976385700404770807.a n = (A192882 n : ℝ)

end A192882

/-! ## A192882.P10102830303677991898

`A000045(n)*Δ[A000129(n)]`
-/

namespace A192882.P10102830303677991898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192882.P10102830303677991898

namespace A192882

/-- `A000045(n)*Δ[A000129(n)]` -/
def P10102830303677991898.Spec : Prop :=
  ∀ n, P10102830303677991898.a n = A192882 n

end A192882

/-! ## A192882.P1784015206603253960

`A000045(n)*Δ[A215928(n)]`
-/

namespace A192882.P1784015206603253960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192882.P1784015206603253960

namespace A192882

/-- `A000045(n)*Δ[A215928(n)]` -/
def P1784015206603253960.Spec : Prop :=
  ∀ n, P1784015206603253960.a n = A192882 n

end A192882

/-! ## A192882.P1822773057367019280

`A001333(n)*A212804(n+1)`
-/

namespace A192882.P1822773057367019280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A212804 (n + 1)

end

end A192882.P1822773057367019280

namespace A192882

/-- `A001333(n)*A212804(n+1)` -/
def P1822773057367019280.Spec : Prop :=
  ∀ n, P1822773057367019280.a n = A192882 n

end A192882

/-! ## A192882.P247141601267050287

`(A001611(n)-1)*A001333(n)`
-/

namespace A192882.P247141601267050287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001333 n

end

end A192882.P247141601267050287

namespace A192882

/-- `(A001611(n)-1)*A001333(n)` -/
def P247141601267050287.Spec : Prop :=
  ∀ n, P247141601267050287.a n = A192882 n

end A192882

/-! ## A192882.P4092044845411172939

`(A157725(n)-2)*A001333(n)`
-/

namespace A192882.P4092044845411172939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n - 2) * A001333 n

end

end A192882.P4092044845411172939

namespace A192882

/-- `(A157725(n)-2)*A001333(n)` -/
def P4092044845411172939.Spec : Prop :=
  ∀ n, P4092044845411172939.a n = A192882 n

end A192882

/-! ## A192882.P6137957285208125850

`A000045(n)*A119016(2*n)`
-/

namespace A192882.P6137957285208125850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A119016 (2 * n)

end

end A192882.P6137957285208125850

namespace A192882

/-- `A000045(n)*A119016(2*n)` -/
def P6137957285208125850.Spec : Prop :=
  ∀ n, P6137957285208125850.a n = A192882 n

end A192882

/-! ## A192882.P822732323328238460

`A000045(n)/2*A002203(n)`
-/

namespace A192882.P822732323328238460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A002203 n : ℚ)

end

end A192882.P822732323328238460

namespace A192882

/-- `A000045(n)/2*A002203(n)` -/
def P822732323328238460.Spec : Prop :=
  ∀ n, P822732323328238460.a n = (A192882 n : ℚ)

end A192882

/-! ## A192882.P13914514019520137034

`A000045(n)*Δ[Δ[A171842(n)]]`
-/

namespace A192882.P13914514019520137034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192882.P13914514019520137034

namespace A192882

/-- `A000045(n)*Δ[Δ[A171842(n)]]` -/
def P13914514019520137034.Spec : Prop :=
  ∀ n, P13914514019520137034.a n = A192882 n

end A192882

/-! ## A192882.P1415667712933417694

`A000045(n)*Δ[xor(1, A111954(n))]`
-/

namespace A192882.P1415667712933417694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A192882.P1415667712933417694

namespace A192882

/-- `A000045(n)*Δ[xor(1, A111954(n))]` -/
def P1415667712933417694.Spec : Prop :=
  ∀ n, P1415667712933417694.a n = A192882 n

end A192882

/-! ## A192882.P3541193861540829888

`A000045(n)*A002965(2*n+1)`
-/

namespace A192882.P3541193861540829888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A002965 (2 * n + 1)

end

end A192882.P3541193861540829888

namespace A192882

/-- `A000045(n)*A002965(2*n+1)` -/
def P3541193861540829888.Spec : Prop :=
  ∀ n, P3541193861540829888.a n = A192882 n

end A192882

/-! ## A192882.P17452553287107479902

`A000045(n)*A249576(3*n+1)`
-/

namespace A192882.P17452553287107479902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A249576 (3 * n + 1)

end

end A192882.P17452553287107479902

namespace A192882

/-- `A000045(n)*A249576(3*n+1)` -/
def P17452553287107479902.Spec : Prop :=
  ∀ n, P17452553287107479902.a n = A192882 n

end A192882

/-! ## A192882.P1192738404030717610

`Δ[A000071(n+1)]*Δ[A000129(n)]`
-/

namespace A192882.P1192738404030717610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A192882.P1192738404030717610

namespace A192882

/-- `Δ[A000071(n+1)]*Δ[A000129(n)]` -/
def P1192738404030717610.Spec : Prop :=
  ∀ n, P1192738404030717610.a n = A192882 n

end A192882

/-! ## A192882.P6133895912757173557

`Δ[A002965(2*n)]*A212804(n+1)`
-/

namespace A192882.P6133895912757173557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 (n + 1)

end

end A192882.P6133895912757173557

namespace A192882

/-- `Δ[A002965(2*n)]*A212804(n+1)` -/
def P6133895912757173557.Spec : Prop :=
  ∀ n, P6133895912757173557.a n = A192882 n

end A192882

/-! ## A192882.P15636949404973478664

`A002965(2*n+1)*A212804(n+1)`
-/

namespace A192882.P15636949404973478664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n + 1) * A212804 (n + 1)

end

end A192882.P15636949404973478664

namespace A192882

/-- `A002965(2*n+1)*A212804(n+1)` -/
def P15636949404973478664.Spec : Prop :=
  ∀ n, P15636949404973478664.a n = A192882 n

end A192882

/-!
# A192883: Constant term in the reduction by (x^2 -> x + 1) of the polynomial F(n+3)*x^n, where F = A000045 (Fibonacci sequence).

The programs for A192883, the canonical program `A192883.P12087581954126736129` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192883 has offset 0).

The definition of A192883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A192883.P12087581954126736129

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=2, a(1)=0, a(2)=5`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192883

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P12087581954126736129.Spec : Prop :=
  ∀ n, P12087581954126736129.a n = A192883 n

theorem P12087581954126736129.correct : P12087581954126736129.Spec := by
  intro n
  simp only [A192883]

end A192883

/-! ## A192883.P9212730089329948873

`ogf((2-4x+x^2)/(1-2x-2x^2+x^3))`
-/

namespace A192883.P9212730089329948873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 1] [1, -2, -2, 1] n

end

end A192883.P9212730089329948873

namespace A192883

/-- `ogf((2-4x+x^2)/(1-2x-2x^2+x^3))` -/
def P9212730089329948873.Spec : Prop :=
  ∀ n, P9212730089329948873.a n = A192883 n

end A192883

/-! ## A192883.P14962123826777057891

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=2, a(1)=0, a(2)=5`
-/

namespace A192883.P14962123826777057891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 5] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A192883.P14962123826777057891

namespace A192883

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P14962123826777057891.Spec : Prop :=
  ∀ n, P14962123826777057891.a n = A192883 n

theorem P14962123826777057891.correct : P14962123826777057891.Spec := by
  intro n
  simp only [A192883, Nat.add_sub_cancel, A192883.P14962123826777057891.a, A192883.P12087581954126736129.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A192883

/-! ## A192883.P10869911161453444990

`A295688(2*n)`
-/

namespace A192883.P10869911161453444990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295688 (2 * n)

end

end A192883.P10869911161453444990

namespace A192883

/-- `A295688(2*n)` -/
def P10869911161453444990.Spec : Prop :=
  ∀ n, P10869911161453444990.a n = A192883 n

end A192883

/-! ## A192883.P3447604825163626946

`Δ[A001654(n)-gcd(2, n)]`
-/

namespace A192883.P3447604825163626946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192883.P3447604825163626946

namespace A192883

/-- `Δ[A001654(n)-gcd(2, n)]` -/
def P3447604825163626946.Spec : Prop :=
  ∀ n, P3447604825163626946.a n = A192883 n

end A192883

/-! ## A192883.P6525805011044316227

`round(Δ[ϕ*A000045(n)²])`
-/

namespace A192883.P6525805011044316227
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * (A000045 n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A192883.P6525805011044316227

namespace A192883

/-- `round(Δ[ϕ*A000045(n)²])` -/
def P6525805011044316227.Spec : Prop :=
  ∀ n, P6525805011044316227.a n = A192883 n

end A192883

/-! ## A192883.P11700262466204344126

`A122367(n)-a(n-1)` with `a(0)=2`
-/

namespace A192883.P11700262466204344126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A122367 n - a (n - 1)

end

end A192883.P11700262466204344126

namespace A192883

/-- `A122367(n)-a(n-1)` -/
def P11700262466204344126.Spec : Prop :=
  ∀ n, P11700262466204344126.a n = A192883 n

end A192883

/-! ## A192883.P7078529873826273336

`(-1)^n+A000045(n+1)²`
-/

namespace A192883.P7078529873826273336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A000045 (n + 1) ^ 2

end

end A192883.P7078529873826273336

namespace A192883

/-- `(-1)^n+A000045(n+1)²` -/
def P7078529873826273336.Spec : Prop :=
  ∀ n, P7078529873826273336.a n = A192883 n

end A192883

/-! ## A192883.P14400107309536672403

`A001519(n+1)-a(n-1)` with `a(0)=2`
-/

namespace A192883.P14400107309536672403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001519 (n + 1) - a (n - 1)

end

end A192883.P14400107309536672403

namespace A192883

/-- `A001519(n+1)-a(n-1)` -/
def P14400107309536672403.Spec : Prop :=
  ∀ n, P14400107309536672403.a n = A192883 n

end A192883

/-! ## A192883.P12355819387451632767

`A000045(Δ[n²])-a(n-1)` with `a(0)=2`
-/

namespace A192883.P12355819387451632767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - a (n - 1)

end

end A192883.P12355819387451632767

namespace A192883

/-- `A000045(Δ[n²])-a(n-1)` -/
def P12355819387451632767.Spec : Prop :=
  ∀ n, P12355819387451632767.a n = A192883 n

end A192883

/-! ## A192883.P8113868192178318421

`Δ[A000045(2*n)]-a(n-1)` with `a(0)=2`
-/

namespace A192883.P8113868192178318421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A192883.P8113868192178318421

namespace A192883

/-- `Δ[A000045(2*n)]-a(n-1)` -/
def P8113868192178318421.Spec : Prop :=
  ∀ n, P8113868192178318421.a n = A192883 n

end A192883

/-! ## A192883.P4921429180498965724

`Δ[A000045(n-1+n)+a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A192883.P4921429180498965724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000045 ((n : ℤ) - 1 + (n : ℤ)).toNat + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192883.P4921429180498965724

namespace A192883

/-- `Δ[A000045(n-1+n)+a(n-2)]` -/
def P4921429180498965724.Spec : Prop :=
  ∀ n, P4921429180498965724.a n = A192883 n

end A192883

/-! ## A192883.P13014741792445635394

`A020695(n)*A212804(n)`
-/

namespace A192883.P13014741792445635394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A212804 n

end

end A192883.P13014741792445635394

namespace A192883

/-- `A020695(n)*A212804(n)` -/
def P13014741792445635394.Spec : Prop :=
  ∀ n, P13014741792445635394.a n = A192883 n

end A192883

/-! ## A192883.P4225599790901822123

`Δ[A001654(n)+A000034(n)]`
-/

namespace A192883.P4225599790901822123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A192883.P4225599790901822123

namespace A192883

/-- `Δ[A001654(n)+A000034(n)]` -/
def P4225599790901822123.Spec : Prop :=
  ∀ n, P4225599790901822123.a n = A192883 n

end A192883

/-! ## A192883.P14831474990082862119

`Δ[A000045(n)]*A020695(n)`
-/

namespace A192883.P14831474990082862119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A192883.P14831474990082862119

namespace A192883

/-- `Δ[A000045(n)]*A020695(n)` -/
def P14831474990082862119.Spec : Prop :=
  ∀ n, P14831474990082862119.a n = A192883 n

end A192883

/-! ## A192883.P13713696972400585201

`Δ[A001611(n)]*A020695(n)`
-/

namespace A192883.P13713696972400585201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A020695 n

end

end A192883.P13713696972400585201

namespace A192883

/-- `Δ[A001611(n)]*A020695(n)` -/
def P13713696972400585201.Spec : Prop :=
  ∀ n, P13713696972400585201.a n = A192883 n

end A192883

/-! ## A192883.P14761490623963291822

`A007598(n+1)+A033999(n)`
-/

namespace A192883.P14761490623963291822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1) + A033999 n

end

end A192883.P14761490623963291822

namespace A192883

/-- `A007598(n+1)+A033999(n)` -/
def P14761490623963291822.Spec : Prop :=
  ∀ n, P14761490623963291822.a n = A192883 n

end A192883

/-! ## A192883.P17978897953401854318

`A168361(n+1)+A064831(n)`
-/

namespace A192883.P17978897953401854318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1) + A064831 n

end

end A192883.P17978897953401854318

namespace A192883

/-- `A168361(n+1)+A064831(n)` -/
def P17978897953401854318.Spec : Prop :=
  ∀ n, P17978897953401854318.a n = A192883 n

end A192883

/-! ## A192883.P15080495546643325744

`A192919(n)+A121646(n+1)`
-/

namespace A192883.P15080495546643325744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192919 n + A121646 (n + 1)

end

end A192883.P15080495546643325744

namespace A192883

/-- `A192919(n)+A121646(n+1)` -/
def P15080495546643325744.Spec : Prop :=
  ∀ n, P15080495546643325744.a n = A192883 n

end A192883

/-! ## A192883.P7320078559402553676

`A175395(n+1)-A059929(n)`
-/

namespace A192883.P7320078559402553676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175395 (n + 1) - A059929 n

end

end A192883.P7320078559402553676

namespace A192883

/-- `A175395(n+1)-A059929(n)` -/
def P7320078559402553676.Spec : Prop :=
  ∀ n, P7320078559402553676.a n = A192883 n

end A192883

/-!
# A192884: Non-superabundant numbers satisfying the reverse of Robin's inequality (A091901).

The programs for A192884, there is no canonical definition to state claims against.
-/

/-! ## A192884.P1145404656537882303

`∪[A244353(n+1), A244325(A041905(n+4))]`
-/

namespace A192884.P1145404656537882303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244325 (A041905 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A192884.P1145404656537882303

/-!
# A192885: A071963(n) - n, where A071963(n) is the largest prime factor of p(n), the n-th partition number A000041(n).

The programs for A192885, there is no canonical definition to state claims against.
-/

/-! ## A192885.P10591760545854578202

`A071963(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A192885.P10591760545854578202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071963 n - (n : ℤ)

end

end A192885.P10591760545854578202

/-! ## A192885.P15033031690733645493

`A006530(A000041(n))-n`
-/

namespace A192885.P15033031690733645493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000041 n).toNat - (n : ℤ)

end

end A192885.P15033031690733645493

/-! ## A192885.P12556515195840938402

`A001478(n+1)+A071963(n)+1`
-/

namespace A192885.P12556515195840938402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A071963 n + 1)

end

end A192885.P12556515195840938402

/-! ## A192885.P209981823774080566

`A246425(A008586(n))+A071963(n)`
-/

namespace A192885.P209981823774080566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A008586 n).toNat + A071963 n

end

end A192885.P209981823774080566

/-! ## A192885.P15237475547058454409

`A114327(A000096(n))+A071963(n)`
-/

namespace A192885.P15237475547058454409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A000096 n).toNat + A071963 n

end

end A192885.P15237475547058454409

/-! ## A192885.P6828207737251659604

`A114327(∑[n+2])+A071963(n)+1`
-/

namespace A192885.P6828207737251659604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (∑ j ∈ Finset.range (n + 1), f1 j) + (A071963 n + 1)

end

end A192885.P6828207737251659604

/-! ## A192885.P1587023701914926680

`A001489(n)+A006530(A071963(n))`
-/

namespace A192885.P1587023701914926680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + A006530 (A071963 n).toNat

end

end A192885.P1587023701914926680

/-!
# A192886: Expansion of x^4*(1 - x)^2*(1 - 3*x^2 - 2*x^3 + x^4 - x^5)/(1 - 2*x)^3.

The programs for A192886, the canonical program `A192886.P6780805925731367398` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192886 has offset 0).

The definition of A192886 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4-2x^5-2x^6+4x^7+2x^8-5x^9+3x^10-x^11)/(1-6x+12x^2-8x^3))` (program `A192886.P6780805925731367398`, by `A192886.P6780805925731367398.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A192886.P6780805925731367398

`ogf((x^4-2x^5-2x^6+4x^7+2x^8-5x^9+3x^10-x^11)/(1-6x+12x^2-8x^3))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A192886

/-- `ogf((x^4-2x^5-2x^6+4x^7+2x^8-5x^9+3x^10-x^11)/(1-6x+12x^2-8x^3))` -/
def P6780805925731367398.Spec : Prop :=
  ∀ n, P6780805925731367398.a n = A192886 n

theorem P6780805925731367398.correct : P6780805925731367398.Spec := by
  intro n
  simp only [A192886]

end A192886

/-! ## A192886.P17751833240287354287

`floor(A339061(3*n)/A339117(n+2))`
-/

namespace A192886.P17751833240287354287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339061 (3 * n) : ℚ) / (A339117 (n + 2) : ℚ)⌋

end

end A192886.P17751833240287354287

namespace A192886

/-- `floor(A339061(3*n)/A339117(n+2))` -/
def P17751833240287354287.Spec : Prop :=
  ∀ n, P17751833240287354287.a n = A192886 n

end A192886

/-! ## A192886.P10588926857406500094

`A110334(n)-A127321(A319558(n))`
-/

namespace A192886.P10588926857406500094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 n - A127321 (A319558 n).toNat

end

end A192886.P10588926857406500094

namespace A192886

/-- `A110334(n)-A127321(A319558(n))` -/
def P10588926857406500094.Spec : Prop :=
  ∀ n, P10588926857406500094.a n = A192886 n

end A192886

/-! ## A192886.P1210161448153593043

`A285006(A054540(n)+2)+A118871(n)`
-/

namespace A192886.P1210161448153593043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A054540 n + 2).toNat + A118871 n

end

end A192886.P1210161448153593043

namespace A192886

/-- `A285006(A054540(n)+2)+A118871(n)` -/
def P1210161448153593043.Spec : Prop :=
  ∀ n, P1210161448153593043.a n = A192886 n

end A192886

/-! ## A192886.P15287147650962589135

`A051889(A034827(n)+A000910(n))+A036597(n)`
-/

namespace A192886.P15287147650962589135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A034827 n + A000910 n).toNat + A036597 n

end

end A192886.P15287147650962589135

namespace A192886

/-- `A051889(A034827(n)+A000910(n))+A036597(n)` -/
def P15287147650962589135.Spec : Prop :=
  ∀ n, P15287147650962589135.a n = A192886 n

end A192886

/-!
# A192887: Number of nXnXn triangular 0..1 arrays with each element equal to at least two neighbors, containing at least one 1 and with new values 0..1 introduced in row major order.

The programs for A192887, there is no canonical definition to state claims against.
-/

/-! ## A192887.P1965329921647227405

`A192897(n+1)+floor(acot(n))-1`
-/

namespace A192887.P1965329921647227405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192897 (n + 1) + (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A192887.P1965329921647227405

/-! ## A192887.P10208449813876165400

`A192897(n+1)-char[A286622(n)]`
-/

namespace A192887.P10208449813876165400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192897 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192887.P10208449813876165400

/-! ## A192887.P1710991926324279771

`A192897(n+1)-char[A284459(n+1)]`
-/

namespace A192887.P1710991926324279771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284459 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192897 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192887.P1710991926324279771

/-! ## A192887.P8060575534195085266

`A192897(n+1)-A001221(A001316(n))`
-/

namespace A192887.P8060575534195085266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192897 (n + 1) - A001221 (A001316 n).toNat

end

end A192887.P8060575534195085266

/-! ## A192887.P15897044674250844690

`A192897(n+1)-A001221(A000015(n+1))`
-/

namespace A192887.P15897044674250844690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192897 (n + 1) - A001221 (A000015 (n + 1)).toNat

end

end A192887.P15897044674250844690

/-!
# A192888: Number of nXnXn triangular 0..2 arrays with each element equal to at least two neighbors, containing at least one 2 and with new values 0..2 introduced in row major order.

The programs for A192888, there is no canonical definition to state claims against.
-/

/-! ## A192888.P17635118098519918133

`A192898(n+1)-A192897(n+1)`
-/

namespace A192888.P17635118098519918133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192898 (n + 1) - A192897 (n + 1)

end

end A192888.P17635118098519918133

/-! ## A192888.P15002863246100206134

`A192898(n+1)+A057428(n)-A192887(n+1)`
-/

namespace A192888.P15002863246100206134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192898 (n + 1) + (A057428 n - A192887 (n + 1))

end

end A192888.P15002863246100206134

/-! ## A192888.P10419528031941300751

`A192898(n+1)-(A192887(n+1)+char[A286622(n)])`
-/

namespace A192888.P10419528031941300751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192898 (n + 1) - (A192887 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A192888.P10419528031941300751

/-! ## A192888.P8698028267894821700

`A192898(n+1)-(A192887(n+1)+A001221(A001316(n)))`
-/

namespace A192888.P8698028267894821700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192898 (n + 1) - (A192887 (n + 1) + A001221 (A001316 n).toNat)

end

end A192888.P8698028267894821700

/-!
# A192889: Number of nXnXn triangular 0..3 arrays with each element equal to at least two neighbors, containing at least one 3 and with new values 0..3 introduced in row major order.

The programs for A192889, there is no canonical definition to state claims against.
-/

/-! ## A192889.P4263883702973653734

`A192899(n+1)-A192898(n+1)`
-/

namespace A192889.P4263883702973653734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192899 (n + 1) - A192898 (n + 1)

end

end A192889.P4263883702973653734

/-! ## A192889.P1523595598112076389

`A192899(n+1)-(A192897(n+1)+A192888(n+1))`
-/

namespace A192889.P1523595598112076389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192899 (n + 1) - (A192897 (n + 1) + A192888 (n + 1))

end

end A192889.P1523595598112076389

/-!
# A192890: Expansion of g.f.: exp( Sum_{n>=1} 2^n*(Sum_{d|n} d*x^d)^n/n ).

The programs for A192890, there is no canonical definition to state claims against.
-/

/-! ## A192890.P16972251480328355350

`A049980(∑[∏[A124859(n+1)]])`
-/

namespace A192890.P16972251480328355350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124859 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A192890.P16972251480328355350

/-! ## A192890.P14354706749163740574

`A027337(n+1)*A097745(A011782(n))`
-/

namespace A192890.P14354706749163740574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027337 (n + 1) * A097745 (A011782 n).toNat

end

end A192890.P14354706749163740574

/-! ## A192890.P17052271013595290402

`A006093(A280765(n+1)^A173304(n))`
-/

namespace A192890.P17052271013595290402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.roundAway ((A280765 (n + 1) : ℚ) ^ (A173304 n : ℤ))).toNat

end

end A192890.P17052271013595290402

/-!
# A192891: Expansion of g.f.: exp( Sum_{n>=1} 3^n*(Sum_{d|n} d*x^d)^n/n ).

The programs for A192891, there is no canonical definition to state claims against.
-/

/-! ## A192891.P14548627894260087196

`∑[∏{e}[(n+3)²*a(n-1), #+1]]` with `a(0)=0, a(1)=2`
-/

namespace A192891.P14548627894260087196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  (n + 3) ^ 2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192891.P14548627894260087196

/-!
# A192893: Number of symmetric 11-ary factorizations of the n-cycle (1,2...n).

The programs for A192893, there is no canonical definition to state claims against.
-/

/-! ## A192893.P6652360428107911935

`A369929(eq[11, A195663(n)])`
-/

namespace A192893.P6652360428107911935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A192893.P6652360428107911935

/-! ## A192893.P16213929717107342766

`A272620(or(A064914(n+1), A242311(3*n)))`
-/

namespace A192893.P16213929717107342766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (Int.lor (A064914 (n + 1)) (A242311 (3 * n))).toNat

end

end A192893.P16213929717107342766

/-!
# A192894: Number of symmetric 13-ary factorizations of the n-cycle (1,2...n).

The programs for A192894, there is no canonical definition to state claims against.
-/

/-! ## A192894.P12501830774296262690

`A350512(A052967(n))`
-/

namespace A192894.P12501830774296262690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350512 (A052967 n).toNat

end

end A192894.P12501830774296262690

/-! ## A192894.P6640625751551590526

`A240708(A292305(n)+2)`
-/

namespace A192894.P6640625751551590526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240708 (A292305 n + 2).toNat

end

end A192894.P6640625751551590526

/-!
# A192895: A000120-deficiency of n.

The programs for A192895, the canonical program `A192895.P9345364931797933177` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A192895 has offset 1).

The definition of A192895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A192895.P15726663295125753660

`A292257(n+1)-A000120(n+1)`
-/

namespace A192895.P15726663295125753660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) - A000120 (n + 1)

end

end A192895.P15726663295125753660

namespace A192895

/-- `A292257(n+1)-A000120(n+1)` -/
def P15726663295125753660.Spec : Prop :=
  ∀ n, P15726663295125753660.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P15301798282756052204

`2*A292257(n+1)-A093653(n+1)`
-/

namespace A192895.P15301798282756052204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292257 (n + 1) - A093653 (n + 1)

end

end A192895.P15301798282756052204

namespace A192895

/-- `2*A292257(n+1)-A093653(n+1)` -/
def P15301798282756052204.Spec : Prop :=
  ∀ n, P15301798282756052204.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P8096183558262841437

`A292257(n+1)+A000788(n)-A000788(n+1)`
-/

namespace A192895.P8096183558262841437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) + (A000788 n - A000788 (n + 1))

end

end A192895.P8096183558262841437

namespace A192895

/-- `A292257(n+1)+A000788(n)-A000788(n+1)` -/
def P8096183558262841437.Spec : Prop :=
  ∀ n, P8096183558262841437.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P9345364931797933177

`∑{d}[n+1, A000120(#)]-A005843(A000120(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A192895

/-- `∑{d}[n+1, A000120(#)]-A005843(A000120(n+1))` -/
def P9345364931797933177.Spec : Prop :=
  ∀ n, P9345364931797933177.a n = A192895 (n + 1)

theorem P9345364931797933177.correct : P9345364931797933177.Spec := by
  intro n
  simp only [A192895, Nat.add_sub_cancel]

end A192895

/-! ## A192895.P11335896521955524240

`A093653(n+1)-(A000120(n+1)+A000120(n+1))`
-/

namespace A192895.P11335896521955524240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (n + 1) - (A000120 (n + 1) + A000120 (n + 1))

end

end A192895.P11335896521955524240

namespace A192895

/-- `A093653(n+1)-(A000120(n+1)+A000120(n+1))` -/
def P11335896521955524240.Spec : Prop :=
  ∀ n, P11335896521955524240.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P7614315080498319435

`A324100(A005940(n+2))`
-/

namespace A192895.P7614315080498319435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (A005940 (n + 2)).toNat

end

end A192895.P7614315080498319435

namespace A192895

/-- `A324100(A005940(n+2))` -/
def P7614315080498319435.Spec : Prop :=
  ∀ n, P7614315080498319435.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P8359598130479024132

`A324100(A163511(A054429(n+1)))`
-/

namespace A192895.P8359598130479024132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324100 (A163511 (A054429 (n + 1)).toNat).toNat

end

end A192895.P8359598130479024132

namespace A192895

/-- `A324100(A163511(A054429(n+1)))` -/
def P8359598130479024132.Spec : Prop :=
  ∀ n, P8359598130479024132.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P2106273679169601066

`A292257(n+1)-A001222(A019565(n+1))`
-/

namespace A192895.P2106273679169601066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) - A001222 (A019565 (n + 1)).toNat

end

end A192895.P2106273679169601066

namespace A192895

/-- `A292257(n+1)-A001222(A019565(n+1))` -/
def P2106273679169601066.Spec : Prop :=
  ∀ n, P2106273679169601066.a n = A192895 (n + 1)

end A192895

/-! ## A192895.P2021364964343919332

`A324114(A156552(n+1))`
-/

namespace A192895.P2021364964343919332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324114 (A156552 (n + 1)).toNat

end

end A192895.P2021364964343919332

namespace A192895

/-- `A324114(A156552(n+1))` -/
def P2021364964343919332.Spec : Prop :=
  ∀ n, P2021364964343919332.a n = A192895 (n + 1)

end A192895

/-!
# A192896: a(n+1) is the sum of a(n) and the prime factors of a(n), counted with multiplicity. Start with a(0) = 3.

The programs for A192896, there is no canonical definition to state claims against.
-/

/-! ## A192896.P12133297869082026949

`∑[A269004(n+2)]+1`
-/

namespace A192896.P12133297869082026949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269004 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A192896.P12133297869082026949

/-! ## A192896.P7864270674743441261

`∑[A269004(A028310(n)+2)]`
-/

namespace A192896.P7864270674743441261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269004 (A028310 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A192896.P7864270674743441261

/-! ## A192896.P10427911585453456166

`A001414(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A192896.P10427911585453456166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001414 (a (n - 1)).toNat + a (n - 1)

end

end A192896.P10427911585453456166

/-! ## A192896.P11147746180221828930

`A337310(a(n-1))+a(A023443(n))` with `a(0)=3`
-/

namespace A192896.P11147746180221828930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A337310 (a (n - 1)).toNat + a (A023443 n).toNat

end

end A192896.P11147746180221828930

/-! ## A192896.P14162044402980704922

`A222416(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A192896.P14162044402980704922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A222416 (a (n - 1)).toNat + a (n - 1)

end

end A192896.P14162044402980704922

/-!
# A192897: Number of nXnXn triangular 0..1 arrays with each element equal to at least two neighbors and with new values 0..1 introduced in row major order.

The programs for A192897, there is no canonical definition to state claims against.
-/

/-! ## A192897.P2173901383018304119

`A192887(n+1)-A057428(n)`
-/

namespace A192897.P2173901383018304119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) - A057428 n

end

end A192897.P2173901383018304119

/-! ## A192897.P10712173300235611957

`A192887(n+1)+char[A286622(n)]`
-/

namespace A192897.P10712173300235611957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A192897.P10712173300235611957

/-! ## A192897.P9063072134176167780

`A192887(n+1)+A019428(2*n)`
-/

namespace A192897.P9063072134176167780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) + A019428 (2 * n)

end

end A192897.P9063072134176167780

/-! ## A192897.P7925937111127699098

`and(A192887(n+1)+1, A057428(2*n))`
-/

namespace A192897.P7925937111127699098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192887 (n + 1) + 1) (A057428 (2 * n))

end

end A192897.P7925937111127699098

/-! ## A192897.P15908715627558095984

`A192887(n+1)+A001221(A001316(n))`
-/

namespace A192897.P15908715627558095984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) + A001221 (A001316 n).toNat

end

end A192897.P15908715627558095984

/-!
# A192898: Number of nXnXn triangular 0..2 arrays with each element equal to at least two neighbors and with new values 0..2 introduced in row major order.

The programs for A192898, there is no canonical definition to state claims against.
-/

/-! ## A192898.P11826564800697878630

`A192897(n+1)+A192888(n+1)`
-/

namespace A192898.P11826564800697878630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192897 (n + 1) + A192888 (n + 1)

end

end A192898.P11826564800697878630

/-! ## A192898.P9058303372488572524

`A192887(n+1)+A192888(n+1)-A057428(n)`
-/

namespace A192898.P9058303372488572524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) + (A192888 (n + 1) - A057428 n)

end

end A192898.P9058303372488572524

/-! ## A192898.P1447580894245767299

`A192887(n+1)+A192888(n+1)+char[A286622(n)]`
-/

namespace A192898.P1447580894245767299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) + (A192888 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A192898.P1447580894245767299

/-! ## A192898.P1593846648113354450

`A192887(n+1)+A192888(n+1)+A001221(A001316(n))`
-/

namespace A192898.P1593846648113354450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192887 (n + 1) + (A192888 (n + 1) + A001221 (A001316 n).toNat)

end

end A192898.P1593846648113354450

/-! ## A192898.P8723073160935901392

`A192899(n+1)-A192889(n+1)`
-/

namespace A192898.P8723073160935901392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192899 (n + 1) - A192889 (n + 1)

end

end A192898.P8723073160935901392

/-!
# A192899: Number of nXnXn triangular 0..3 arrays with each element equal to at least two neighbors and with new values 0..3 introduced in row major order.

The programs for A192899, there is no canonical definition to state claims against.
-/

/-! ## A192899.P3132703538917963654

`A192898(n+1)+A192889(n+1)`
-/

namespace A192899.P3132703538917963654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192898 (n + 1) + A192889 (n + 1)

end

end A192899.P3132703538917963654

/-! ## A192899.P513467759490113791

`A192888(n+1)+A192897(n+1)+A192889(n+1)`
-/

namespace A192899.P513467759490113791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192888 (n + 1) + (A192897 (n + 1) + A192889 (n + 1))

end

end A192899.P513467759490113791


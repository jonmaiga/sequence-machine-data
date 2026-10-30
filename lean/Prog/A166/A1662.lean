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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A166203: Number of nXnXn triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 8.

The programs for A166203, there is no canonical definition to state claims against.
-/

/-! ## A166203.P16259628725298057524

`A372422(A281893(n))+A081493(n+1)`
-/

namespace A166203.P16259628725298057524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372422 (A281893 n).toNat + A081493 (n + 1)

end

end A166203.P16259628725298057524

/-!
# A166204: Number of nXnXn triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 9.

The programs for A166204, there is no canonical definition to state claims against.
-/

/-! ## A166204.P16223913983867194487

`A257475(a(n-1)+1)` with `a(0)=1, a(1)=10, a(2)=4, a(3)=12`
-/

namespace A166204.P16223913983867194487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 4, 12] fun n a =>
  A257475 (a (n - 1) + 1).toNat

end

end A166204.P16223913983867194487

/-!
# A166205: Number of nXnXn triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 10.

The programs for A166205, there is no canonical definition to state claims against.
-/

/-! ## A166205.P16166235424865039358

`A232589(n+1)+A137514(A092484(n))`
-/

namespace A166205.P16166235424865039358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232589 (n + 1) + A137514 (A092484 n).toNat

end

end A166205.P16166235424865039358

/-!
# A166206: Number of n X n X n triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 11.

The programs for A166206, there is no canonical definition to state claims against.
-/

/-! ## A166206.P13746790458438914405

`A002260(A113012(n))*A019774(n)`
-/

namespace A166206.P13746790458438914405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A113012 n).toNat * A019774 (n + 1)

end

end A166206.P13746790458438914405

/-!
# A166207: Number of nXnXn triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 12.

The programs for A166207, there is no canonical definition to state claims against.
-/

/-! ## A166207.P8054369667140622945

`A065091(A004652(a(n-1)))` with `a(0)=1, a(1)=13, a(2)=5`
-/

namespace A166207.P8054369667140622945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 5] fun n a =>
  A065091 (A004652 (a (n - 1)).toNat).toNat

end

end A166207.P8054369667140622945

/-!
# A166208: Number of nXnXn triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 13.

The programs for A166208, there is no canonical definition to state claims against.
-/

/-! ## A166208.P4566400096198680340

`A257802(A181762(n)+A181754(n+1))`
-/

namespace A166208.P4566400096198680340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257802 (A181762 n + A181754 (n + 1)).toNat

end

end A166208.P4566400096198680340

/-!
# A166209: Number of nXnXn triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 14.

The programs for A166209, there is no canonical definition to state claims against.
-/

/-! ## A166209.P11544087276075071255

`A330972(A069915(a(n-1)))` with `a(0)=1, a(1)=15, a(2)=5`
-/

namespace A166209.P11544087276075071255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 15, 5] fun n a =>
  A330972 (A069915 (a (n - 1)).toNat).toNat

end

end A166209.P11544087276075071255

/-!
# A166211: Number of n X n X n triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= 16.

The programs for A166211, there is no canonical definition to state claims against.
-/

/-! ## A166211.P10977291530953495981

`A351736(n)+A293704(A063834(2*(n+2)))`
-/

namespace A166211.P10977291530953495981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351736 n + A293704 (A063834 (2 * (n + 2))).toNat

end

end A166211.P10977291530953495981

/-!
# A166212: Number of 4 X 4 X 4 triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= n.

The programs for A166212, the canonical program `A166212.P11431046879064825305` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166212 has offset 0).

The definition of A166212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166212.P11431046879064825305

`ogf((1+x+x^2+3x^3+x^4+x^5+3x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+2x^9-4x^10+2x^11-x^12+2x^13-x^14))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A166212

/-- `ogf((1+x+x^2+3x^3+x^4+x^5+3x^6)/(1-2x+x^2-2x^3+4x^4-2x^5+2x^9-4x^10+2x^11-x^12+2x^13-x^14))` -/
def P11431046879064825305.Spec : Prop :=
  ∀ n, P11431046879064825305.a n = A166212 n

theorem P11431046879064825305.correct : P11431046879064825305.Spec := by
  intro n
  simp only [A166212]

end A166212

/-!
# A166213: Number of 5 X 5 X 5 triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= n.

The programs for A166213, the canonical program `A166213.P18133957420040739833` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166213 has offset 0).

The definition of A166213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166213.P18133957420040739833

`ogf((1+2x+3x^2+4x^3+3x^4)/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A166213

/-- `ogf((1+2x+3x^2+4x^3+3x^4)/(1-2x-x^2+2x^3+3x^4-6x^6+3x^8+2x^9-x^10-2x^11+x^12))` -/
def P18133957420040739833.Spec : Prop :=
  ∀ n, P18133957420040739833.a n = A166213 n

theorem P18133957420040739833.correct : P18133957420040739833.Spec := by
  intro n
  simp only [A166213]

end A166213

/-! ## A166213.P9293644078141439735

`∑[∑[record[A308096(n+3)]]]`
-/

namespace A166213.P9293644078141439735
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166213.P9293644078141439735

namespace A166213

/-- `∑[∑[record[A308096(n+3)]]]` -/
def P9293644078141439735.Spec : Prop :=
  ∀ n, P9293644078141439735.a n = A166213 n

end A166213

/-! ## A166213.P12502373007902002118

`∑[∑[A308096(2*n+3)]]`
-/

namespace A166213.P12502373007902002118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308096 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166213.P12502373007902002118

namespace A166213

/-- `∑[∑[A308096(2*n+3)]]` -/
def P12502373007902002118.Spec : Prop :=
  ∀ n, P12502373007902002118.a n = A166213 n

end A166213

/-!
# A166214: Number of 6 X 6 X 6 triangular nonnegative integer arrays, symmetric under 120 degree rotation, with all sums of an element and its neighbors <= n.

The programs for A166214, there is no canonical definition to state claims against.
-/

/-! ## A166214.P1056434688850867439

`A141204(A322600(n+1))`
-/

namespace A166214.P1056434688850867439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A322600 (n + 1)).toNat

end

end A166214.P1056434688850867439

/-!
# A166226: Bell number n modulo n.

The programs for A166226, the canonical program `A166226.P4027427936437726870` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166226 has offset 1).

The definition of A166226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166226.P4027427936437726870

`A000110(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166226

/-- `A000110(n+1)%(n+1)` -/
def P4027427936437726870.Spec : Prop :=
  ∀ n, P4027427936437726870.a n = A166226 (n + 1)

theorem P4027427936437726870.correct : P4027427936437726870.Spec := by
  intro n
  simp only [A166226, Nat.add_sub_cancel]

end A166226

/-! ## A166226.P12159864922245937752

`A011972(∑[n])%(n+1)`
-/

namespace A166226.P12159864922245937752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011972 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A166226.P12159864922245937752

namespace A166226

/-- `A011972(∑[n])%(n+1)` -/
def P12159864922245937752.Spec : Prop :=
  ∀ n, P12159864922245937752.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P7679080369985404124

`∑[A052834(n)]%(n+1)`
-/

namespace A166226.P7679080369985404124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A166226.P7679080369985404124

namespace A166226

/-- `∑[A052834(n)]%(n+1)` -/
def P7679080369985404124.Spec : Prop :=
  ∀ n, P7679080369985404124.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P217241890919498141

`A123346(∑[n])%(n+1)`
-/

namespace A166226.P217241890919498141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123346 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A166226.P217241890919498141

namespace A166226

/-- `A123346(∑[n])%(n+1)` -/
def P217241890919498141.Spec : Prop :=
  ∀ n, P217241890919498141.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P2526537270220672037

`A283424(∑[n])%(n+1)`
-/

namespace A166226.P2526537270220672037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283424 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A166226.P2526537270220672037

namespace A166226

/-- `A283424(∑[n])%(n+1)` -/
def P2526537270220672037.Spec : Prop :=
  ∀ n, P2526537270220672037.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P6444823997888967317

`record[A108087(n)]%(n+1)`
-/

namespace A166226.P6444823997888967317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A166226.P6444823997888967317

namespace A166226

/-- `record[A108087(n)]%(n+1)` -/
def P6444823997888967317.Spec : Prop :=
  ∀ n, P6444823997888967317.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P14483497013545531563

`record[A275069(n)]%(n+1)`
-/

namespace A166226.P14483497013545531563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A166226.P14483497013545531563

namespace A166226

/-- `record[A275069(n)]%(n+1)` -/
def P14483497013545531563.Spec : Prop :=
  ∀ n, P14483497013545531563.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P12203532567752617068

`abs(A292935(n+1))%(n+1)`
-/

namespace A166226.P12203532567752617068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A292935 (n + 1)| (n + 1 : ℤ)

end

end A166226.P12203532567752617068

namespace A166226

/-- `abs(A292935(n+1))%(n+1)` -/
def P12203532567752617068.Spec : Prop :=
  ∀ n, P12203532567752617068.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P10762220083555305024

`A011971(∑[n+1])%(n+1)`
-/

namespace A166226.P10762220083555305024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A166226.P10762220083555305024

namespace A166226

/-- `A011971(∑[n+1])%(n+1)` -/
def P10762220083555305024.Spec : Prop :=
  ∀ n, P10762220083555305024.a n = A166226 (n + 1)

end A166226

/-! ## A166226.P859588013390456786

`A327884(∑[n+1])%(n+1)`
-/

namespace A166226.P859588013390456786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327884 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A166226.P859588013390456786

namespace A166226

/-- `A327884(∑[n+1])%(n+1)` -/
def P859588013390456786.Spec : Prop :=
  ∀ n, P859588013390456786.a n = A166226 (n + 1)

end A166226

/-!
# A166228: Alternating sum of large Schroeder numbers.

The programs for A166228, the canonical program `A166228.P12052479130336776295` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166228 has offset 0).

The definition of A166228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166228.P12052479130336776295

`∑{#}[n, (-1)^(n-#)*A006318(#)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166228

/-- `∑{#}[n, (-1)^(n-#)*A006318(#)]` -/
def P12052479130336776295.Spec : Prop :=
  ∀ n, P12052479130336776295.a n = (A166228 n : ℚ)

end A166228

/-! ## A166228.P18062439264533541701

`A006319(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A166228.P18062439264533541701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A006319 n + a (n - 2)

end

end A166228.P18062439264533541701

namespace A166228

/-- `A006319(n)+a(n-2)` -/
def P18062439264533541701.Spec : Prop :=
  ∀ n, P18062439264533541701.a n = A166228 n

end A166228

/-! ## A166228.P2528702947009273640

`A001003(n)+A001003(n)-a(n-1)` with `a(0)=1`
-/

namespace A166228.P2528702947009273640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001003 n + (A001003 n - a (n - 1))

end

end A166228.P2528702947009273640

namespace A166228

/-- `A001003(n)+A001003(n)-a(n-1)` -/
def P2528702947009273640.Spec : Prop :=
  ∀ n, P2528702947009273640.a n = A166228 n

end A166228

/-! ## A166228.P8253574732681509396

`abs(∑[A080245(∑[n])])`
-/

namespace A166228.P8253574732681509396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080245 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166228.P8253574732681509396

namespace A166228

/-- `abs(∑[A080245(∑[n])])` -/
def P8253574732681509396.Spec : Prop :=
  ∀ n, P8253574732681509396.a n = A166228 n

end A166228

/-! ## A166228.P1631695848603964439

`abs(∑[A103137(n+1)])`
-/

namespace A166228.P1631695848603964439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166228.P1631695848603964439

namespace A166228

/-- `abs(∑[A103137(n+1)])` -/
def P1631695848603964439.Spec : Prop :=
  ∀ n, P1631695848603964439.a n = A166228 n

end A166228

/-! ## A166228.P6335216045857407510

`A006318(n)-a(n-1)` with `a(0)=1`
-/

namespace A166228.P6335216045857407510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006318 n - a (n - 1)

end

end A166228.P6335216045857407510

namespace A166228

/-- `A006318(n)-a(n-1)` -/
def P6335216045857407510.Spec : Prop :=
  ∀ n, P6335216045857407510.a n = A166228 n

end A166228

/-! ## A166228.P5884770528991549554

`A080247(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A166228.P5884770528991549554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080247 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A166228.P5884770528991549554

namespace A166228

/-- `A080247(∑[n])-a(n-1)` -/
def P5884770528991549554.Spec : Prop :=
  ∀ n, P5884770528991549554.a n = A166228 n

end A166228

/-! ## A166228.P12223632157187120859

`A035011(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A166228.P12223632157187120859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035011 n + (1 - a (n - 1))

end

end A166228.P12223632157187120859

namespace A166228

/-- `A035011(n)+1-a(n-1)` -/
def P12223632157187120859.Spec : Prop :=
  ∀ n, P12223632157187120859.a n = A166228 n

end A166228

/-! ## A166228.P16075254444060441484

`A155069(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A166228.P16075254444060441484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155069 (n + 1) - a (n - 1)

end

end A166228.P16075254444060441484

namespace A166228

/-- `A155069(n+1)-a(n-1)` -/
def P16075254444060441484.Spec : Prop :=
  ∀ n, P16075254444060441484.a n = A166228 n

end A166228

/-! ## A166228.P8070917745807153426

`abs(∑[A040000(n)*A080243(n)])`
-/

namespace A166228.P8070917745807153426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A080243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166228.P8070917745807153426

namespace A166228

/-- `abs(∑[A040000(n)*A080243(n)])` -/
def P8070917745807153426.Spec : Prop :=
  ∀ n, P8070917745807153426.a n = A166228 n

end A166228

/-! ## A166228.P6850465617227082673

`gcd(∑[A103137(n+1)], A000038(n))`
-/

namespace A166228.P6850465617227082673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A166228.P6850465617227082673

namespace A166228

/-- `gcd(∑[A103137(n+1)], A000038(n))` -/
def P6850465617227082673.Spec : Prop :=
  ∀ n, (P6850465617227082673.a n : ℤ) = A166228 n

end A166228

/-! ## A166228.P12134440393922856045

`A025240(n+1)-a(A023443(n))` with `a(0)=1`
-/

namespace A166228.P12134440393922856045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025240 (n + 1) - a (A023443 n).toNat

end

end A166228.P12134440393922856045

namespace A166228

/-- `A025240(n+1)-a(A023443(n))` -/
def P12134440393922856045.Spec : Prop :=
  ∀ n, P12134440393922856045.a n = A166228 n

end A166228

/-! ## A166228.P7650312400576267198

`abs(∑[A036453(n+1)*A080243(n)])`
-/

namespace A166228.P7650312400576267198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A080243 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166228.P7650312400576267198

namespace A166228

/-- `abs(∑[A036453(n+1)*A080243(n)])` -/
def P7650312400576267198.Spec : Prop :=
  ∀ n, P7650312400576267198.a n = A166228 n

end A166228

/-! ## A166228.P18194768197472165480

`∑{#}[n, (-1)^(n-#)*C(n, #)*A166229(#)]`
-/

namespace A166228.P18194768197472165480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A166229 k : ℚ)

end

end A166228.P18194768197472165480

namespace A166228

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A166229(#)]` -/
def P18194768197472165480.Spec : Prop :=
  ∀ n, P18194768197472165480.a n = (A166228 n : ℚ)

end A166228

/-!
# A166229: Expansion of (1-2x-sqrt(1-8x+8x^2))/(2x).

The programs for A166229, the canonical program `A166229.P13744087807733818278` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166229 has offset 0).

The definition of A166229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166229.P631959351524204454

`∑{#}[n, C(n, #)*A166228(#)]`
-/

namespace A166229.P631959351524204454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A166228 k

end

end A166229.P631959351524204454

namespace A166229

/-- `∑{#}[n, C(n, #)*A166228(#)]` -/
def P631959351524204454.Spec : Prop :=
  ∀ n, P631959351524204454.a n = A166229 n

end A166229

/-! ## A166229.P15827677991946603619

`(ceil(abs(sin(n)))+1)*A068764(n)`
-/

namespace A166229.P15827677991946603619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈|Real.sin (n : ℝ)|⌉ + 1) * A068764 n

end

end A166229.P15827677991946603619

namespace A166229

/-- `(ceil(abs(sin(n)))+1)*A068764(n)` -/
def P15827677991946603619.Spec : Prop :=
  ∀ n, P15827677991946603619.a n = A166229 n

end A166229

/-! ## A166229.P13074987588548515649

`A040000(n)*A068764(n)`
-/

namespace A166229.P13074987588548515649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A068764 n

end

end A166229.P13074987588548515649

namespace A166229

/-- `A040000(n)*A068764(n)` -/
def P13074987588548515649.Spec : Prop :=
  ∀ n, P13074987588548515649.a n = A166229 n

end A166229

/-! ## A166229.P16250866548471317317

`A036453(n+1)*A068764(n)`
-/

namespace A166229.P16250866548471317317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A068764 n

end

end A166229.P16250866548471317317

namespace A166229

/-- `A036453(n+1)*A068764(n)` -/
def P16250866548471317317.Spec : Prop :=
  ∀ n, P16250866548471317317.a n = A166229 n

end A166229

/-! ## A166229.P13744087807733818278

`(2-A000007(n))*A068764(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166229

/-- `(2-A000007(n))*A068764(n)` -/
def P13744087807733818278.Spec : Prop :=
  ∀ n, P13744087807733818278.a n = A166229 n

theorem P13744087807733818278.correct : P13744087807733818278.Spec := by
  intro n
  simp only [A166229]

end A166229

/-! ## A166229.P4200526086055090412

`gcd(2, A000984(n))*A068764(n)`
-/

namespace A166229.P4200526086055090412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000984 n) : ℤ) * A068764 n

end

end A166229.P4200526086055090412

namespace A166229

/-- `gcd(2, A000984(n))*A068764(n)` -/
def P4200526086055090412.Spec : Prop :=
  ∀ n, P4200526086055090412.a n = A166229 n

end A166229

/-! ## A166229.P5102352123114775861

`A020639(A000118(n))*A068764(n)`
-/

namespace A166229.P5102352123114775861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000118 n).toNat * A068764 n

end

end A166229.P5102352123114775861

namespace A166229

/-- `A020639(A000118(n))*A068764(n)` -/
def P5102352123114775861.Spec : Prop :=
  ∀ n, P5102352123114775861.a n = A166229 n

end A166229

/-! ## A166229.P8354358044886789039

`A020639(A001316(n))*A068764(n)`
-/

namespace A166229.P8354358044886789039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A068764 n

end

end A166229.P8354358044886789039

namespace A166229

/-- `A020639(A001316(n))*A068764(n)` -/
def P8354358044886789039.Spec : Prop :=
  ∀ n, P8354358044886789039.a n = A166229 n

end A166229

/-! ## A166229.P2566159266106837018

`A020639(A008458(n))*A068764(n)`
-/

namespace A166229.P2566159266106837018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A068764 n

end

end A166229.P2566159266106837018

namespace A166229

/-- `A020639(A008458(n))*A068764(n)` -/
def P2566159266106837018.Spec : Prop :=
  ∀ n, P2566159266106837018.a n = A166229 n

end A166229

/-! ## A166229.P8706318416453205404

`A010135(A062383(n))*A068764(n)`
-/

namespace A166229.P8706318416453205404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010135 (A062383 n).toNat * A068764 n

end

end A166229.P8706318416453205404

namespace A166229

/-- `A010135(A062383(n))*A068764(n)` -/
def P8706318416453205404.Spec : Prop :=
  ∀ n, P8706318416453205404.a n = A166229 n

end A166229

/-! ## A166229.P9118024519314880046

`A000005(A008578(n+1))*A068764(n)`
-/

namespace A166229.P9118024519314880046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A068764 n

end

end A166229.P9118024519314880046

namespace A166229

/-- `A000005(A008578(n+1))*A068764(n)` -/
def P9118024519314880046.Spec : Prop :=
  ∀ n, P9118024519314880046.a n = A166229 n

end A166229

/-! ## A166229.P3327956354178905851

`A066086(A000040(n+1))*A068764(n)`
-/

namespace A166229.P3327956354178905851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (A000040 (n + 1)).toNat * A068764 n

end

end A166229.P3327956354178905851

namespace A166229

/-- `A066086(A000040(n+1))*A068764(n)` -/
def P3327956354178905851.Spec : Prop :=
  ∀ n, P3327956354178905851.a n = A166229 n

end A166229

/-! ## A166229.P7783725765941357010

`A066086(A051096(n+1))*A068764(n)`
-/

namespace A166229.P7783725765941357010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (A051096 (n + 1)).toNat * A068764 n

end

end A166229.P7783725765941357010

namespace A166229

/-- `A066086(A051096(n+1))*A068764(n)` -/
def P7783725765941357010.Spec : Prop :=
  ∀ n, P7783725765941357010.a n = A166229 n

end A166229

/-! ## A166229.P11359305344316458889

`A398994(∑[n+1]+1)`
-/

namespace A166229.P11359305344316458889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398994 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A166229.P11359305344316458889

namespace A166229

/-- `A398994(∑[n+1]+1)` -/
def P11359305344316458889.Spec : Prop :=
  ∀ n, P11359305344316458889.a n = A166229 n

end A166229

/-!
# A166231: a(n) = 2^C(n+1,2)*A006012(n).

The programs for A166231, the canonical program `A166231.P11317312831400850727` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166231 has offset 0).

The definition of A166231 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^C(n+1, 2)*A006012(n)` (program `A166231.P11317312831400850727`, by `A166231.P11317312831400850727.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166231.P17312065553499086278

`4^n*A166232(n)`
-/

namespace A166231.P17312065553499086278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A166232 n

end

end A166231.P17312065553499086278

namespace A166231

/-- `4^n*A166232(n)` -/
def P17312065553499086278.Spec : Prop :=
  ∀ n, P17312065553499086278.a n = A166231 n

end A166231

/-! ## A166231.P11317312831400850727

`2^C(n+1, 2)*A006012(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166231

/-- `2^C(n+1, 2)*A006012(n)` -/
def P11317312831400850727.Spec : Prop :=
  ∀ n, P11317312831400850727.a n = A166231 n

theorem P11317312831400850727.correct : P11317312831400850727.Spec := by
  intro n
  simp only [A166231]

end A166231

/-! ## A166231.P8785528991384918784

`2^∑[n]*A006012(n)`
-/

namespace A166231.P8785528991384918784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A006012 n

end

end A166231.P8785528991384918784

namespace A166231

/-- `2^∑[n]*A006012(n)` -/
def P8785528991384918784.Spec : Prop :=
  ∀ n, P8785528991384918784.a n = A166231 n

end A166231

/-! ## A166231.P6899630305405952815

`A006012(n)*A006125(n+1)`
-/

namespace A166231.P6899630305405952815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 n * A006125 (n + 1)

end

end A166231.P6899630305405952815

namespace A166231

/-- `A006012(n)*A006125(n+1)` -/
def P6899630305405952815.Spec : Prop :=
  ∀ n, P6899630305405952815.a n = A166231 n

theorem P6899630305405952815.correct : P6899630305405952815.Spec := by
  intro n
  simp only [A166231, Nat.add_sub_cancel, A166231.P6899630305405952815.a, A166231.P11317312831400850727.a, A006012, A006012.P2662888881248971976.a, A006125, A006125.P14908781185794122098.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A166231

/-! ## A166231.P12293007830672853563

`A166232(n)*A166444(n+2)²`
-/

namespace A166231.P12293007830672853563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166232 n * A166444 (n + 2) ^ 2

end

end A166231.P12293007830672853563

namespace A166231

/-- `A166232(n)*A166444(n+2)²` -/
def P12293007830672853563.Spec : Prop :=
  ∀ n, P12293007830672853563.a n = A166231 n

end A166231

/-!
# A166232: a(n) = A166231(n)/4^n.

The programs for A166232, the canonical program `A166232.P12945894669893910141` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166232 has offset 0).

The definition of A166232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A166232.P12945894669893910141

`A166231(n)/4^n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166232

/-- `A166231(n)/4^n` -/
def P12945894669893910141.Spec : Prop :=
  ∀ n, P12945894669893910141.a n = (A166232 n : ℚ)

end A166232

/-! ## A166232.P13626509874344136496

`A006012(n)/A000079(n)*A006125(n)`
-/

namespace A166232.P13626509874344136496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 n : ℚ) / (A000079 n : ℚ) * (A006125 n : ℚ)

end

end A166232.P13626509874344136496

namespace A166232

/-- `A006012(n)/A000079(n)*A006125(n)` -/
def P13626509874344136496.Spec : Prop :=
  ∀ n, P13626509874344136496.a n = (A166232 n : ℚ)

end A166232

/-! ## A166232.P3385526371460047038

`floor(A166231(n)/A000302(n))`
-/

namespace A166232.P3385526371460047038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A166231 n : ℚ) / (A000302 n : ℚ)⌋

end

end A166232.P3385526371460047038

namespace A166232

/-- `floor(A166231(n)/A000302(n))` -/
def P3385526371460047038.Spec : Prop :=
  ∀ n, P3385526371460047038.a n = A166232 n

end A166232

/-! ## A166232.P1205336742622053090

`A006012(n)*A006125(n+1)/A166444(n+2)²`
-/

namespace A166232.P1205336742622053090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 n * A006125 (n + 1) : ℚ) / (A166444 (n + 2) ^ 2 : ℚ)

end

end A166232.P1205336742622053090

namespace A166232

/-- `A006012(n)*A006125(n+1)/A166444(n+2)²` -/
def P1205336742622053090.Spec : Prop :=
  ∀ n, P1205336742622053090.a n = (A166232 n : ℚ)

end A166232

/-! ## A166232.P11959437993874391742

`A006012(n)*A006125(n+1)/A166444(2*(n+1))`
-/

namespace A166232.P11959437993874391742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006012 n * A006125 (n + 1) : ℚ) / (A166444 (2 * (n + 1)) : ℚ)

end

end A166232.P11959437993874391742

namespace A166232

/-- `A006012(n)*A006125(n+1)/A166444(2*(n+1))` -/
def P11959437993874391742.Spec : Prop :=
  ∀ n, P11959437993874391742.a n = (A166232 n : ℚ)

end A166232

/-!
# A166234: The inverse of the constant 1 function under the exponential convolution (also called the exponential Möbius function).

The programs for A166234, the canonical program `A166234.P18016884847511072532` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166234 has offset 1).

The definition of A166234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166234.P2129618286734162698

`∏{e}[n+1, A008683(#)]`
-/

namespace A166234.P2129618286734162698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (Nat.factorization (f1 n) p)

end

end A166234.P2129618286734162698

namespace A166234

/-- `∏{e}[n+1, A008683(#)]` -/
def P2129618286734162698.Spec : Prop :=
  ∀ n, P2129618286734162698.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P6362994417941552183

`∏{e}[1+n, A069158(#)]`
-/

namespace A166234.P6362994417941552183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A069158 (Nat.factorization (f1 n) p)

end

end A166234.P6362994417941552183

namespace A166234

/-- `∏{e}[1+n, A069158(#)]` -/
def P6362994417941552183.Spec : Prop :=
  ∀ n, P6362994417941552183.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P8366941467134205044

`∏{e}[n+1, A133639(#)]`
-/

namespace A166234.P8366941467134205044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A133639 (Nat.factorization (f1 n) p)

end

end A166234.P8366941467134205044

namespace A166234

/-- `∏{e}[n+1, A133639(#)]` -/
def P8366941467134205044.Spec : Prop :=
  ∀ n, P8366941467134205044.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P13201185545797209471

`∏{e}[n+1, A197774(#)]`
-/

namespace A166234.P13201185545797209471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A197774 (Nat.factorization (f1 n) p)

end

end A166234.P13201185545797209471

namespace A166234

/-- `∏{e}[n+1, A197774(#)]` -/
def P13201185545797209471.Spec : Prop :=
  ∀ n, P13201185545797209471.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P18016884847511072532

`∏{e}[n+1, A219009(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A166234

/-- `∏{e}[n+1, A219009(#)]` -/
def P18016884847511072532.Spec : Prop :=
  ∀ n, P18016884847511072532.a n = A166234 (n + 1)

theorem P18016884847511072532.correct : P18016884847511072532.Spec := by
  intro n
  simp only [A166234, Nat.add_sub_cancel]

end A166234

/-! ## A166234.P6158304848605283736

`∏{e}[n+1, A253206(#)]`
-/

namespace A166234.P6158304848605283736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A253206 (Nat.factorization (f1 n) p)

end

end A166234.P6158304848605283736

namespace A166234

/-- `∏{e}[n+1, A253206(#)]` -/
def P6158304848605283736.Spec : Prop :=
  ∀ n, P6158304848605283736.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P4086422538951599818

`∏{e}[n+1, A302050(#)]`
-/

namespace A166234.P4086422538951599818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A302050 (Nat.factorization (f1 n) p)

end

end A166234.P4086422538951599818

namespace A166234

/-- `∏{e}[n+1, A302050(#)]` -/
def P4086422538951599818.Spec : Prop :=
  ∀ n, P4086422538951599818.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P2651992862277325865

`∏{e}[n+1, A162512(#)%2]`
-/

namespace A166234.P2651992862277325865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.tmod (A162512 (Nat.factorization (f1 n) p)) 2

end

end A166234.P2651992862277325865

namespace A166234

/-- `∏{e}[n+1, A162512(#)%2]` -/
def P2651992862277325865.Spec : Prop :=
  ∀ n, P2651992862277325865.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P8476752373052501207

`∏{p}[n+1, A008683(val(n+1, #))]`
-/

namespace A166234.P8476752373052501207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (SequenceMachineLib.valuation (n + 1) p)

end

end A166234.P8476752373052501207

namespace A166234

/-- `∏{p}[n+1, A008683(val(n+1, #))]` -/
def P8476752373052501207.Spec : Prop :=
  ∀ n, P8476752373052501207.a n = A166234 (n + 1)

end A166234

/-! ## A166234.P12550559916053320586

`A178535(A112622(n+1))`
-/

namespace A166234.P12550559916053320586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178535 (A112622 (n + 1)).toNat

end

end A166234.P12550559916053320586

namespace A166234

/-- `A178535(A112622(n+1))` -/
def P12550559916053320586.Spec : Prop :=
  ∀ n, P12550559916053320586.a n = A166234 (n + 1)

end A166234

/-!
# A166236: Absolute value of (n-th odd prime minus n-th odd nonprime)/2.

The programs for A166236, the canonical program `A166236.P17306406694189176569` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166236 has offset 1).

The definition of A166236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166236.P17306406694189176569

`abs(A065091(n+1)-A014076(n+1))/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166236

/-- `abs(A065091(n+1)-A014076(n+1))/2` -/
def P17306406694189176569.Spec : Prop :=
  ∀ n, P17306406694189176569.a n = (A166236 (n + 1) : ℚ)

end A166236

/-! ## A166236.P15472987643218682902

`abs(A097363(n+1)-A153049(n+1))`
-/

namespace A166236.P15472987643218682902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097363 (n + 1) - A153049 (n + 1)|

end

end A166236.P15472987643218682902

namespace A166236

/-- `abs(A097363(n+1)-A153049(n+1))` -/
def P15472987643218682902.Spec : Prop :=
  ∀ n, P15472987643218682902.a n = A166236 (n + 1)

end A166236

/-! ## A166236.P7577173791296407567

`abs(A097932(n+1)-A153041(n+1))`
-/

namespace A166236.P7577173791296407567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097932 (n + 1) - A153041 (n + 1)|

end

end A166236.P7577173791296407567

namespace A166236

/-- `abs(A097932(n+1)-A153041(n+1))` -/
def P7577173791296407567.Spec : Prop :=
  ∀ n, P7577173791296407567.a n = A166236 (n + 1)

end A166236

/-! ## A166236.P2174624998099913310

`abs(A005097(n+1)-comp[A005097(n+1)])`
-/

namespace A166236.P2174624998099913310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005097 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A166236.P2174624998099913310

namespace A166236

/-- `abs(A005097(n+1)-comp[A005097(n+1)])` -/
def P2174624998099913310.Spec : Prop :=
  ∀ n, P2174624998099913310.a n = A166236 (n + 1)

end A166236

/-! ## A166236.P10100774015487451878

`abs(A097480(n+1)-(A153049(n+1)+1))`
-/

namespace A166236.P10100774015487451878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097480 (n + 1) - (A153049 (n + 1) + 1)|

end

end A166236.P10100774015487451878

namespace A166236

/-- `abs(A097480(n+1)-(A153049(n+1)+1))` -/
def P10100774015487451878.Spec : Prop :=
  ∀ n, P10100774015487451878.a n = A166236 (n + 1)

end A166236

/-! ## A166236.P9754387525114494681

`∑{d}[A005097(n+1)-A047845(n+1), A000010(#)]`
-/

namespace A166236.P9754387525114494681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - A047845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A166236.P9754387525114494681

namespace A166236

/-- `∑{d}[A005097(n+1)-A047845(n+1), A000010(#)]` -/
def P9754387525114494681.Spec : Prop :=
  ∀ n, P9754387525114494681.a n = A166236 (n + 1)

end A166236

/-!
# A166237: Differences between consecutive products of two distinct primes: a(n) = A006881(n+1) - A006881(n).

The programs for A166237, the canonical program `A166237.P15849570190296042025` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166237 has offset 1).

The definition of A166237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006881, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166237.P15849570190296042025

`A006881(n+2)-A006881(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166237

/-- `A006881(n+2)-A006881(n+1)` -/
def P15849570190296042025.Spec : Prop :=
  ∀ n, P15849570190296042025.a n = A166237 (n + 1)

theorem P15849570190296042025.correct : P15849570190296042025.Spec := by
  intro n
  simp only [A166237, Nat.add_sub_cancel]

end A166237

/-! ## A166237.P7586570867272760676

`Δ[eq[2, A046645(n+1)]]`
-/

namespace A166237.P7586570867272760676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P7586570867272760676

namespace A166237

/-- `Δ[eq[2, A046645(n+1)]]` -/
def P7586570867272760676.Spec : Prop :=
  ∀ n, P7586570867272760676.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P5915236722375357983

`Δ[eq[4, A101296(n+1)]]`
-/

namespace A166237.P5915236722375357983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P5915236722375357983

namespace A166237

/-- `Δ[eq[4, A101296(n+1)]]` -/
def P5915236722375357983.Spec : Prop :=
  ∀ n, P5915236722375357983.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P1459364647321731067

`Δ[eq[4, A294877(n+1)]]`
-/

namespace A166237.P1459364647321731067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294877 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P1459364647321731067

namespace A166237

/-- `Δ[eq[4, A294877(n+1)]]` -/
def P1459364647321731067.Spec : Prop :=
  ∀ n, P1459364647321731067.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P6868693976559186573

`Δ[A006881(1+n)]`
-/

namespace A166237.P6868693976559186573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166237.P6868693976559186573

namespace A166237

/-- `Δ[A006881(1+n)]` -/
def P6868693976559186573.Spec : Prop :=
  ∀ n, P6868693976559186573.a n = A166237 (n + 1)

theorem P6868693976559186573.correct : P6868693976559186573.Spec := by
  intro n
  simp only [A166237, Nat.add_sub_cancel, A166237.P6868693976559186573.f1, A166237.P6868693976559186573.a, A166237.P15849570190296042025.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A166237

/-! ## A166237.P17160789572215656073

`Δ[sqrt(A085986(n+1))]`
-/

namespace A166237.P17160789572215656073
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085986 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166237.P17160789572215656073

namespace A166237

/-- `Δ[sqrt(A085986(n+1))]` -/
def P17160789572215656073.Spec : Prop :=
  ∀ n, P17160789572215656073.a n = (A166237 (n + 1) : ℝ)

end A166237

/-! ## A166237.P13598018382716054889

`abs(Δ[A006881(-xor(n, -1))])`
-/

namespace A166237.P13598018382716054889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A166237.P13598018382716054889

namespace A166237

/-- `abs(Δ[A006881(-xor(n, -1))])` -/
def P13598018382716054889.Spec : Prop :=
  ∀ n, P13598018382716054889.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P1104535244683768852

`abs(Δ[A006881(2*n-(n-1))])`
-/

namespace A166237.P1104535244683768852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A166237.P1104535244683768852

namespace A166237

/-- `abs(Δ[A006881(2*n-(n-1))])` -/
def P1104535244683768852.Spec : Prop :=
  ∀ n, P1104535244683768852.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P4312609609188835668

`Δ[root(A085986(n+1), A020639(2*(n+1)))]`
-/

namespace A166237.P4312609609188835668
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A085986 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166237.P4312609609188835668

namespace A166237

/-- `Δ[root(A085986(n+1), A020639(2*(n+1)))]` -/
def P4312609609188835668.Spec : Prop :=
  ∀ n, P4312609609188835668.a n = (A166237 (n + 1) : ℝ)

end A166237

/-! ## A166237.P12995544792034151807

`A176819(n+1)/(A006881(n+1)+A006881(n+2))`
-/

namespace A166237.P12995544792034151807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176819 (n + 1) : ℚ) / (A006881 (n + 1) + A006881 (n + 2) : ℚ)

end

end A166237.P12995544792034151807

namespace A166237

/-- `A176819(n+1)/(A006881(n+1)+A006881(n+2))` -/
def P12995544792034151807.Spec : Prop :=
  ∀ n, P12995544792034151807.a n = (A166237 (n + 1) : ℚ)

theorem P12995544792034151807.correct : P12995544792034151807.Spec := by
  intro n
  simp only [A166237, Nat.add_sub_cancel, A166237.P12995544792034151807.a, A166237.P15849570190296042025.a, A006881, A006881.P9546401734316253315.f1, A006881.P9546401734316253315.f2, A006881.P9546401734316253315.a, A176819, A176819.P9087001782378007283.f1, A176819.P9087001782378007283.a, A051709, A051709.P8066883811744733228.a, A085986, A085986.P3066413001146269465.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166237

/-! ## A166237.P15956654587680543693

`Δ[eq[2, A349620(n+1)]]`
-/

namespace A166237.P15956654587680543693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P15956654587680543693

namespace A166237

/-- `Δ[eq[2, A349620(n+1)]]` -/
def P15956654587680543693.Spec : Prop :=
  ∀ n, P15956654587680543693.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P15092408243993039429

`Δ[eq[3, A292587(n+1)]]`
-/

namespace A166237.P15092408243993039429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292587 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P15092408243993039429

namespace A166237

/-- `Δ[eq[3, A292587(n+1)]]` -/
def P15092408243993039429.Spec : Prop :=
  ∀ n, P15092408243993039429.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P5604900808487586452

`Δ[A081761(a(n-1))]` with `a(0)=6`
-/

namespace A166237.P5604900808487586452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A081761 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166237.P5604900808487586452

namespace A166237

/-- `Δ[A081761(a(n-1))]` -/
def P5604900808487586452.Spec : Prop :=
  ∀ n, P5604900808487586452.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P13992558423419207579

`A085072(eq[2, A066882(n)])`
-/

namespace A166237.P13992558423419207579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166237.P13992558423419207579

namespace A166237

/-- `A085072(eq[2, A066882(n)])` -/
def P13992558423419207579.Spec : Prop :=
  ∀ n, P13992558423419207579.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P16819368903380154623

`A085072(eq[2, A293813(n)])`
-/

namespace A166237.P16819368903380154623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A166237.P16819368903380154623

namespace A166237

/-- `A085072(eq[2, A293813(n)])` -/
def P16819368903380154623.Spec : Prop :=
  ∀ n, P16819368903380154623.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P9572700007953677840

`Δ[eq[3, A002033(n)]]`
-/

namespace A166237.P9572700007953677840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P9572700007953677840

namespace A166237

/-- `Δ[eq[3, A002033(n)]]` -/
def P9572700007953677840.Spec : Prop :=
  ∀ n, P9572700007953677840.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P3448385492254361073

`Δ[eq[2, A008476(n+1)]]`
-/

namespace A166237.P3448385492254361073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P3448385492254361073

namespace A166237

/-- `Δ[eq[2, A008476(n+1)]]` -/
def P3448385492254361073.Spec : Prop :=
  ∀ n, P3448385492254361073.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P5900070923233602378

`Δ[eq[4, A046644(n+1)]]`
-/

namespace A166237.P5900070923233602378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046644 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P5900070923233602378

namespace A166237

/-- `Δ[eq[4, A046644(n+1)]]` -/
def P5900070923233602378.Spec : Prop :=
  ∀ n, P5900070923233602378.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P10617119431791384092

`Δ[eq[9, A007425(n+1)]]`
-/

namespace A166237.P10617119431791384092
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P10617119431791384092

namespace A166237

/-- `Δ[eq[9, A007425(n+1)]]` -/
def P10617119431791384092.Spec : Prop :=
  ∀ n, P10617119431791384092.a n = A166237 (n + 1)

end A166237

/-! ## A166237.P2883312615191203806

`Δ[eq[9, A303822(n+1)]]`
-/

namespace A166237.P2883312615191203806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303822 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A166237.P2883312615191203806

namespace A166237

/-- `Δ[eq[9, A303822(n+1)]]` -/
def P2883312615191203806.Spec : Prop :=
  ∀ n, P2883312615191203806.a n = A166237 (n + 1)

end A166237

/-!
# A166238: Horizontal para-Narayana sequence: says which column of 3rd-order Zeckendorf array (starting column count at 0) contains n.

The programs for A166238, the canonical program `A166238.P1577242016306719435` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166238 has offset 1).

The definition of A166238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166238.P11273145855372801338

`val(A048715(n+1), 2)`
-/

namespace A166238.P11273145855372801338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048715 (n + 1)).toNat 2

end

end A166238.P11273145855372801338

namespace A166238

/-- `val(A048715(n+1), 2)` -/
def P11273145855372801338.Spec : Prop :=
  ∀ n, (P11273145855372801338.a n : ℤ) = A166238 (n + 1)

end A166238

/-! ## A166238.P15030517453371002692

`val(A350215(n+1), 2)`
-/

namespace A166238.P15030517453371002692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A350215 (n + 1)).toNat 2

end

end A166238.P15030517453371002692

namespace A166238

/-- `val(A350215(n+1), 2)` -/
def P15030517453371002692.Spec : Prop :=
  ∀ n, (P15030517453371002692.a n : ℤ) = A166238 (n + 1)

end A166238

/-! ## A166238.P6621107660748379275

`val(record[A269160(n+1)], 2)`
-/

namespace A166238.P6621107660748379275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P6621107660748379275

namespace A166238

/-- `val(record[A269160(n+1)], 2)` -/
def P6621107660748379275.Spec : Prop :=
  ∀ n, (P6621107660748379275.a n : ℤ) = A166238 (n + 1)

end A166238

/-! ## A166238.P6362830709960536412

`val(record[A269161(n+1)], 2)`
-/

namespace A166238.P6362830709960536412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P6362830709960536412

namespace A166238

/-- `val(record[A269161(n+1)], 2)` -/
def P6362830709960536412.Spec : Prop :=
  ∀ n, (P6362830709960536412.a n : ℤ) = A166238 (n + 1)

end A166238

/-! ## A166238.P15477196389824457907

`A007814(A048715(n+1))`
-/

namespace A166238.P15477196389824457907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A048715 (n + 1)).toNat

end

end A166238.P15477196389824457907

namespace A166238

/-- `A007814(A048715(n+1))` -/
def P15477196389824457907.Spec : Prop :=
  ∀ n, P15477196389824457907.a n = A166238 (n + 1)

end A166238

/-! ## A166238.P10213061299273476277

`val(record[A048715(A028242(n))], 2)`
-/

namespace A166238.P10213061299273476277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 (A028242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P10213061299273476277

namespace A166238

/-- `val(record[A048715(A028242(n))], 2)` -/
def P10213061299273476277.Spec : Prop :=
  ∀ n, (P10213061299273476277.a n : ℤ) = A166238 (n + 1)

end A166238

/-! ## A166238.P15345907517312602703

`val(record[A048725(A184615(n+1))], 2)`
-/

namespace A166238.P15345907517312602703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A184615 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A166238.P15345907517312602703

namespace A166238

/-- `val(record[A048725(A184615(n+1))], 2)` -/
def P15345907517312602703.Spec : Prop :=
  ∀ n, (P15345907517312602703.a n : ℤ) = A166238 (n + 1)

end A166238

/-! ## A166238.P1577242016306719435

`val(record[A265263(A265263(n)+1+n)], 2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166238

/-- `val(record[A265263(A265263(n)+1+n)], 2)` -/
def P1577242016306719435.Spec : Prop :=
  ∀ n, (P1577242016306719435.a n : ℤ) = A166238 (n + 1)

theorem P1577242016306719435.correct : P1577242016306719435.Spec := by
  intro n
  simp only [A166238, Nat.add_sub_cancel]

end A166238

/-!
# A166240: Triangle read by rows, A000012 * A152140 as infinite lower triangular matrices.

The programs for A166240, there is no canonical definition to state claims against.
-/

/-! ## A166240.P11941812924173307111

`A108917(and(A008284(n+1), A027206(n+5)))`
-/

namespace A166240.P11941812924173307111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 (Int.land (A008284 (n + 1)) (A027206 (n + 5))).toNat

end

end A166240.P11941812924173307111

/-! ## A166240.P9614333125175943647

`A008284(n+1)-A316345(A331569(n))`
-/

namespace A166240.P9614333125175943647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A316345 (A331569 n).toNat

end

end A166240.P9614333125175943647

/-! ## A166240.P16083677662757511253

`A008284(n+1)-A327051(A331039(n))`
-/

namespace A166240.P16083677662757511253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1) - A327051 (A331039 n).toNat

end

end A166240.P16083677662757511253

/-! ## A166240.P1894590876126618787

`A297778(A318490(n+4)*A330964(n))`
-/

namespace A166240.P1894590876126618787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297778 (A318490 (n + 4) * A330964 n).toNat

end

end A166240.P1894590876126618787

/-! ## A166240.P4177742029117295710

`A055642(A022167(n)%A157147(n+1))`
-/

namespace A166240.P4177742029117295710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A022167 n) (A157147 (n + 1))).toNat

end

end A166240.P4177742029117295710

/-!
# A166242: Sequence generated from A014577, the dragon curve.

The programs for A166242, there is no canonical definition to state claims against.
-/

/-! ## A166242.P12492648934524530464

`2^A000120(A003188(n))`
-/

namespace A166242.P12492648934524530464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (A003188 n).toNat : ℤ)

end

end A166242.P12492648934524530464

/-! ## A166242.P3564120884417719133

`2*a(and(n, Δ[-n²])-1)` with `a(0)=1`
-/

namespace A166242.P3564120884417719133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) (f1 (n + 1) - f1 n) - 1).toNat

end

end A166242.P3564120884417719133

/-! ## A166242.P11043143272573655228

`2*a(n-1-and(n, 2*n))` with `a(0)=1`
-/

namespace A166242.P11043143272573655228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ((n : ℤ) - 1 - (Nat.land n (2 * n) : ℤ)).toNat

end

end A166242.P11043143272573655228

/-! ## A166242.P9650286694080107843

`2^(n-∑[2*char[comp[and(n, n-1)+n]]])`
-/

namespace A166242.P9650286694080107843
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A166242.P9650286694080107843

/-! ## A166242.P9146506475220635057

`(2^floor(∑[Δ[xor(n, 2*n-1)]%2]/2))²/(1+n%2)`
-/

namespace A166242.P9146506475220635057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ : ℤ)) ^ 2 / ((1 + n % 2 : ℕ) : ℚ)

end

end A166242.P9146506475220635057

/-! ## A166242.P9403537073073011264

`2^A005811(n)`
-/

namespace A166242.P9403537073073011264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A005811 n : ℤ)

end

end A166242.P9403537073073011264

/-! ## A166242.P17606197201687101960

`2^∑[A112347(n)]`
-/

namespace A166242.P17606197201687101960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A166242.P17606197201687101960

/-! ## A166242.P8688741509211234324

`2^(A088748(n)-1)`
-/

namespace A166242.P8688741509211234324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088748 n - 1 : ℤ)

end

end A166242.P8688741509211234324

/-! ## A166242.P11589266050308077732

`2*a(A035327(n))` with `a(0)=1`
-/

namespace A166242.P11589266050308077732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A035327 n).toNat

end

end A166242.P11589266050308077732

/-! ## A166242.P3910069547374441113

`2*a(A163575(n))` with `a(0)=1`
-/

namespace A166242.P3910069547374441113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A163575 n).toNat

end

end A166242.P3910069547374441113

/-! ## A166242.P16059446190769021091

`2^(n-A236840(n))`
-/

namespace A166242.P16059446190769021091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A236840 n : ℤ)

end

end A166242.P16059446190769021091

/-! ## A166242.P18344825724804912752

`A060632(xor(n, 2*n))`
-/

namespace A166242.P18344825724804912752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (Nat.xor n (2 * n))

end

end A166242.P18344825724804912752

/-! ## A166242.P5562985104602878502

`2*a(A003817(n)-n)` with `a(0)=1`
-/

namespace A166242.P5562985104602878502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A003817 n - (n : ℤ)).toNat

end

end A166242.P5562985104602878502

/-! ## A166242.P17366957148987853882

`2*a(n-A006257(n))` with `a(0)=1`
-/

namespace A166242.P17366957148987853882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ((n : ℤ) - A006257 n).toNat

end

end A166242.P17366957148987853882

/-! ## A166242.P14932637040659128963

`2^(A088743(n+1)-(n+1))`
-/

namespace A166242.P14932637040659128963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A088743 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A166242.P14932637040659128963

/-! ## A166242.P7128136518383322138

`A001316(A003188(n))`
-/

namespace A166242.P7128136518383322138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A003188 n).toNat

end

end A166242.P7128136518383322138

/-! ## A166242.P15253607550402519469

`A000079(A005811(n))`
-/

namespace A166242.P15253607550402519469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A005811 n).toNat

end

end A166242.P15253607550402519469

/-! ## A166242.P1367254588138072569

`A011782(A088748(n))`
-/

namespace A166242.P1367254588138072569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A088748 n).toNat

end

end A166242.P1367254588138072569

/-! ## A166242.P3212525996765813908

`A060632(A048724(n))`
-/

namespace A166242.P3212525996765813908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A048724 n).toNat

end

end A166242.P3212525996765813908

/-! ## A166242.P8744136583548224959

`A062383(A090079(n))`
-/

namespace A166242.P8744136583548224959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A090079 n).toNat

end

end A166242.P8744136583548224959

/-!
# A166245: Numbers n such that the Collatz trajectory of n (iterate T(k)=k/2 if k is even, (3k+1)/2 if k is odd, A014682, starting at n and stopping if you reach 1) never exceeds n.

The programs for A166245, there is no canonical definition to state claims against.
-/

/-! ## A166245.P11374629469270502951

`A033496(n+2)/2`
-/

namespace A166245.P11374629469270502951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033496 (n + 2) : ℚ) / 2

end

end A166245.P11374629469270502951

/-! ## A166245.P14022534154153800292

`record[A087258(n+2)/2]`
-/

namespace A166245.P14022534154153800292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087258 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166245.P14022534154153800292

/-! ## A166245.P6147568233404155104

`record[A261702(n+2)/2]`
-/

namespace A166245.P6147568233404155104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261702 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166245.P6147568233404155104

/-! ## A166245.P8932222762635786362

`lt[A087262(n+1), 2]+1`
-/

namespace A166245.P8932222762635786362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087262 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166245.P8932222762635786362

/-! ## A166245.P6293951829286496061

`eq[n, A213538(n+1)]+1`
-/

namespace A166245.P6293951829286496061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166245.P6293951829286496061

/-! ## A166245.P12950527376066131709

`eq[1, A213204(2*(n+1))]+1`
-/

namespace A166245.P12950527376066131709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A166245.P12950527376066131709

/-! ## A166245.P3974388386043991114

`lt[A220421(2*(n+1)), 1]+1`
-/

namespace A166245.P3974388386043991114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166245.P3974388386043991114

/-! ## A166245.P16983480377789636052

`lt[A222597(2*(n+1)), 1]+1`
-/

namespace A166245.P16983480377789636052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166245.P16983480377789636052

/-! ## A166245.P11503514569668724339

`lt[A087225(2*(n+1)), 2]+1`
-/

namespace A166245.P11503514569668724339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166245.P11503514569668724339

/-! ## A166245.P7352271874104029986

`lt[n, A087258(2*(n+1))]+1`
-/

namespace A166245.P7352271874104029986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166245.P7352271874104029986

/-! ## A166245.P5977318102675523071

`record[(n+1)/floor(A025586(n+1)/(n+1))]`
-/

namespace A166245.P5977318102675523071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(A025586 (n + 1) : ℚ) / (n + 1 : ℚ)⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166245.P5977318102675523071

/-! ## A166245.P17146991752821851105

`A001281(A033496(n+2))`
-/

namespace A166245.P17146991752821851105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033496 (n + 2)).toNat

end

end A166245.P17146991752821851105

/-! ## A166245.P9653325480497068343

`A003602(A033496(n+2)-1)`
-/

namespace A166245.P9653325480497068343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A033496 (n + 2) - 1).toNat

end

end A166245.P9653325480497068343

/-! ## A166245.P3241507686462012322

`A064455(A033496(n+2)-1)`
-/

namespace A166245.P3241507686462012322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (A033496 (n + 2) - 1).toNat

end

end A166245.P3241507686462012322

/-! ## A166245.P8173201662688167066

`record[A267528(A087258(n+1))-n]`
-/

namespace A166245.P8173201662688167066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (A087258 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166245.P8173201662688167066

/-! ## A166245.P2651603626308149799

`∪[A176869(n+2), A222562(n+2)]/2`
-/

namespace A166245.P2651603626308149799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176869 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222562 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A166245.P2651603626308149799

/-! ## A166245.P4884620781854514117

`record[(n+1)/A029467(A220421(2*(n+1))+1)]`
-/

namespace A166245.P4884620781854514117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A029467 (A220421 (2 * (n + 1)) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166245.P4884620781854514117

/-! ## A166245.P12384370218177428684

`A000217(A033496(n+2)-1)%A033496(n+2)`
-/

namespace A166245.P12384370218177428684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A033496 (n + 2) - 1).toNat) (A033496 (n + 2))

end

end A166245.P12384370218177428684

/-! ## A166245.P9966669597321165118

`record[A087258(2*n+2)-A014681(A014681(n+1))]`
-/

namespace A166245.P9966669597321165118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (2 * n + 2) - A014681 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166245.P9966669597321165118

/-! ## A166245.P5931937462416314718

`A328147(2*A033496(n+2))`
-/

namespace A166245.P5931937462416314718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328147 (2 * A033496 (n + 2)).toNat

end

end A166245.P5931937462416314718

/-!
# A166246: Primes representable as the sum of two rational cubes.

The programs for A166246, there is no canonical definition to state claims against.
-/

/-! ## A166246.P17211388346513363732

`p?[A159843(n+1)]`
-/

namespace A166246.P17211388346513363732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166246.P17211388346513363732

/-! ## A166246.P13385950593629691478

`p?[xor(n, -a(A060838(n)))]` with `a(0)=2, a(1)=0, a(2)=0`
-/

namespace A166246.P13385950593629691478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 0] fun n f1 =>
  Int.xor (n : ℤ) (-f1 (A060838 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166246.P13385950593629691478

/-! ## A166246.P18107394572459240563

`record[A014963(A159843(n+2))]`
-/

namespace A166246.P18107394572459240563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A159843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166246.P18107394572459240563

/-! ## A166246.P10671717204571524969

`record[A020639(A159843(n+3))]`
-/

namespace A166246.P10671717204571524969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A159843 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166246.P10671717204571524969

/-! ## A166246.P2993342802658133712

`filter[A159843(n+1), A001222(#)]`
-/

namespace A166246.P2993342802658133712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A166246.P2993342802658133712

/-! ## A166246.P3819785153378862002

`filter[A159843(n+1), A010051(#)]`
-/

namespace A166246.P3819785153378862002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A166246.P3819785153378862002

/-! ## A166246.P9812266365501566441

`filter[A159843(n+2), A080339(#)]`
-/

namespace A166246.P9812266365501566441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A166246.P9812266365501566441

/-! ## A166246.P16970766668108777085

`∩[A000040(n+1), A159843(n+1)]`
-/

namespace A166246.P16970766668108777085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166246.P16970766668108777085

/-! ## A166246.P13057458437158509081

`∩[A045319(n+1), A159843(n+1)]`
-/

namespace A166246.P13057458437158509081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166246.P13057458437158509081

/-! ## A166246.P3798642139121355717

`∩[A045344(n+1), A159843(n+1)]`
-/

namespace A166246.P3798642139121355717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166246.P3798642139121355717

/-!
# A166247: Number of perfect partitions of n-1 plus sum of remainders of n mod k, for k=1,2,3,..,n.

The programs for A166247, there is no canonical definition to state claims against.
-/

/-! ## A166247.P6645940965043129276

`A002033(n)+A004125(n+1)`
-/

namespace A166247.P6645940965043129276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n + A004125 (n + 1)

end

end A166247.P6645940965043129276

/-! ## A166247.P8064927857461916017

`A002033(n)+Δ[A072481(n)]`
-/

namespace A166247.P8064927857461916017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n + (f1 (n + 1) - f1 n)

end

end A166247.P8064927857461916017

/-! ## A166247.P15229403228462222848

`Δ[A173382(n)+A072481(n)]`
-/

namespace A166247.P15229403228462222848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n + A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166247.P15229403228462222848

/-! ## A166247.P8087484522312266145

`A004125(n+1)+A002033(n)`
-/

namespace A166247.P8087484522312266145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + A002033 n

end

end A166247.P8087484522312266145

/-! ## A166247.P13200954283428456954

`A002033(n)+∑[A235796(n+1)]`
-/

namespace A166247.P13200954283428456954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166247.P13200954283428456954

/-! ## A166247.P2731682497601193542

`A074206(n+1)+Δ[A072481(n)]`
-/

namespace A166247.P2731682497601193542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166247.P2731682497601193542

/-! ## A166247.P2902157000031124124

`A004125(n+1)+Δ[A173382(n)]`
-/

namespace A166247.P2902157000031124124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (f1 (n + 1) - f1 n)

end

end A166247.P2902157000031124124

/-! ## A166247.P13654815176876932626

`A002033(n)-∑[A237588(n+1)]`
-/

namespace A166247.P13654815176876932626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166247.P13654815176876932626

/-! ## A166247.P6530044391136878307

`A074206(n+1)+A004125(n+1)`
-/

namespace A166247.P6530044391136878307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (n + 1) + A004125 (n + 1)

end

end A166247.P6530044391136878307

/-! ## A166247.P18093104727053560010

`A002033(n)+∑[A033879(n+1)-1]`
-/

namespace A166247.P18093104727053560010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166247.P18093104727053560010

/-! ## A166247.P16609639575884725122

`A002033(n)+∑[n-A001065(n+1)]`
-/

namespace A166247.P16609639575884725122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166247.P16609639575884725122

/-!
# A166248: a(n) is the absolute value of n minus sum of all the remainders modulo the numbers below n.

The programs for A166248, the canonical program `A166248.P1846598591514235586` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166248 has offset 1).

The definition of A166248 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004125, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166248.P1846598591514235586

`abs(n+1-A004125(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166248

/-- `abs(n+1-A004125(n+1))` -/
def P1846598591514235586.Spec : Prop :=
  ∀ n, P1846598591514235586.a n = A166248 (n + 1)

theorem P1846598591514235586.correct : P1846598591514235586.Spec := by
  intro n
  simp only [A166248, Nat.add_sub_cancel]

end A166248

/-! ## A166248.P4475933606089450656

`abs(∑[2*n-∑{d}[n+1, #]])`
-/

namespace A166248.P4475933606089450656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P4475933606089450656

namespace A166248

/-- `abs(∑[2*n-∑{d}[n+1, #]])` -/
def P4475933606089450656.Spec : Prop :=
  ∀ n, P4475933606089450656.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P9823676465264459858

`abs(∑[∑{d}[n+1, #]-(n+n)])`
-/

namespace A166248.P9823676465264459858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P9823676465264459858

namespace A166248

/-- `abs(∑[∑{d}[n+1, #]-(n+n)])` -/
def P9823676465264459858.Spec : Prop :=
  ∀ n, P9823676465264459858.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P723532922468734769

`abs(∑[A237588(n+1)+1])`
-/

namespace A166248.P723532922468734769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P723532922468734769

namespace A166248

/-- `abs(∑[A237588(n+1)+1])` -/
def P723532922468734769.Spec : Prop :=
  ∀ n, P723532922468734769.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P15875843151194505418

`abs(∑[A033880(n+1)+2])`
-/

namespace A166248.P15875843151194505418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P15875843151194505418

namespace A166248

/-- `abs(∑[A033880(n+1)+2])` -/
def P15875843151194505418.Spec : Prop :=
  ∀ n, P15875843151194505418.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P13850307109778267461

`abs(∑[1-A235796(n+1)])`
-/

namespace A166248.P13850307109778267461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P13850307109778267461

namespace A166248

/-- `abs(∑[1-A235796(n+1)])` -/
def P13850307109778267461.Spec : Prop :=
  ∀ n, P13850307109778267461.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P7584911627792388814

`abs(∑[2-A033879(n+1)])`
-/

namespace A166248.P7584911627792388814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P7584911627792388814

namespace A166248

/-- `abs(∑[2-A033879(n+1)])` -/
def P7584911627792388814.Spec : Prop :=
  ∀ n, P7584911627792388814.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P9690028178546842001

`abs(∑[2*n-A000203(n+1)])`
-/

namespace A166248.P9690028178546842001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P9690028178546842001

namespace A166248

/-- `abs(∑[2*n-A000203(n+1)])` -/
def P9690028178546842001.Spec : Prop :=
  ∀ n, P9690028178546842001.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P14736206825949670041

`abs(∑[A000203(n+1)-A005843(n)])`
-/

namespace A166248.P14736206825949670041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A166248.P14736206825949670041

namespace A166248

/-- `abs(∑[A000203(n+1)-A005843(n)])` -/
def P14736206825949670041.Spec : Prop :=
  ∀ n, P14736206825949670041.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P16624821200992699420

`abs(∑[A001065(n+1)+1]-A000217(n))`
-/

namespace A166248.P16624821200992699420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A000217 n|

end

end A166248.P16624821200992699420

namespace A166248

/-- `abs(∑[A001065(n+1)+1]-A000217(n))` -/
def P16624821200992699420.Spec : Prop :=
  ∀ n, P16624821200992699420.a n = A166248 (n + 1)

end A166248

/-! ## A166248.P14327786394112852523

`abs(Δ[A000124(n)-A072481(n)])`
-/

namespace A166248.P14327786394112852523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A166248.P14327786394112852523

namespace A166248

/-- `abs(Δ[A000124(n)-A072481(n)])` -/
def P14327786394112852523.Spec : Prop :=
  ∀ n, P14327786394112852523.a n = A166248 (n + 1)

end A166248

/-!
# A166249: a(n) = 2*a(n-1) - a(n-3) + 2*a(n-4) for n>3, a(0)=a(1)=1, a(2)=0, a(3)=2.

The programs for A166249, the canonical program `A166249.P2064107582142863584` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166249 has offset 0).

The definition of A166249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+2*a(n-4)` (program `A166249.P2064107582142863584`, by `A166249.P2064107582142863584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A166249.P8857296776858789006

`ogf((1-x-2x^2+3x^3)/(1-2x+x^3-2x^4))`
-/

namespace A166249.P8857296776858789006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 3] [1, -2, 0, 1, -2] n

end

end A166249.P8857296776858789006

namespace A166249

/-- `ogf((1-x-2x^2+3x^3)/(1-2x+x^3-2x^4))` -/
def P8857296776858789006.Spec : Prop :=
  ∀ n, P8857296776858789006.a n = A166249 n

end A166249

/-! ## A166249.P2064107582142863584

`2*a(n-1)-a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A166249

/-- `2*a(n-1)-a(n-3)+2*a(n-4)` -/
def P2064107582142863584.Spec : Prop :=
  ∀ n, P2064107582142863584.a n = A166249 n

theorem P2064107582142863584.correct : P2064107582142863584.Spec := by
  intro n
  simp only [A166249]

end A166249

/-! ## A166249.P1773323409600232515

`A001045(n)+A010892(n+1)`
-/

namespace A166249.P1773323409600232515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + A010892 (n + 1)

end

end A166249.P1773323409600232515

namespace A166249

/-- `A001045(n)+A010892(n+1)` -/
def P1773323409600232515.Spec : Prop :=
  ∀ n, P1773323409600232515.a n = A166249 n

end A166249

/-! ## A166249.P10305568258711708505

`A133511(n)+A132780(n)`
-/

namespace A166249.P10305568258711708505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133511 n + A132780 n

end

end A166249.P10305568258711708505

namespace A166249

/-- `A133511(n)+A132780(n)` -/
def P10305568258711708505.Spec : Prop :=
  ∀ n, P10305568258711708505.a n = A166249 n

end A166249

/-! ## A166249.P10469032101369669565

`A242563(n)+A132419(n)`
-/

namespace A166249.P10469032101369669565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242563 n + A132419 n

end

end A166249.P10469032101369669565

namespace A166249

/-- `A242563(n)+A132419(n)` -/
def P10469032101369669565.Spec : Prop :=
  ∀ n, P10469032101369669565.a n = A166249 n

end A166249

/-! ## A166249.P9800567333736879924

`A010892(n+1)+A001045(n)`
-/

namespace A166249.P9800567333736879924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + A001045 n

end

end A166249.P9800567333736879924

namespace A166249

/-- `A010892(n+1)+A001045(n)` -/
def P9800567333736879924.Spec : Prop :=
  ∀ n, P9800567333736879924.a n = A166249 n

end A166249

/-! ## A166249.P4927164053396103920

`A130151(n+1)+A024495(n)`
-/

namespace A166249.P4927164053396103920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (n + 1) + A024495 n

end

end A166249.P4927164053396103920

namespace A166249

/-- `A130151(n+1)+A024495(n)` -/
def P4927164053396103920.Spec : Prop :=
  ∀ n, P4927164053396103920.a n = A166249 n

end A166249

/-! ## A166249.P1266705285730411997

`A128834(n+2)+A001045(n)`
-/

namespace A166249.P1266705285730411997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (n + 2) + A001045 n

end

end A166249.P1266705285730411997

namespace A166249

/-- `A128834(n+2)+A001045(n)` -/
def P1266705285730411997.Spec : Prop :=
  ∀ n, P1266705285730411997.a n = A166249 n

end A166249

/-! ## A166249.P17106206480674806599

`A024493(n)-A131531(n+1)`
-/

namespace A166249.P17106206480674806599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A131531 (n + 1)

end

end A166249.P17106206480674806599

namespace A166249

/-- `A024493(n)-A131531(n+1)` -/
def P17106206480674806599.Spec : Prop :=
  ∀ n, P17106206480674806599.a n = A166249 n

end A166249

/-! ## A166249.P3981887876857336425

`A131531(n+2)+A086953(n)`
-/

namespace A166249.P3981887876857336425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 2) + A086953 n

end

end A166249.P3981887876857336425

namespace A166249

/-- `A131531(n+2)+A086953(n)` -/
def P3981887876857336425.Spec : Prop :=
  ∀ n, P3981887876857336425.a n = A166249 n

end A166249

/-! ## A166249.P6396082544106428983

`A132780(n+1)-A131666(n)`
-/

namespace A166249.P6396082544106428983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 (n + 1) - A131666 n

end

end A166249.P6396082544106428983

namespace A166249

/-- `A132780(n+1)-A131666(n)` -/
def P6396082544106428983.Spec : Prop :=
  ∀ n, P6396082544106428983.a n = A166249 n

end A166249

/-! ## A166249.P3075740246884140664

`A153772(n)+A134977(n+2)`
-/

namespace A166249.P3075740246884140664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153772 n + A134977 (n + 2)

end

end A166249.P3075740246884140664

namespace A166249

/-- `A153772(n)+A134977(n+2)` -/
def P3075740246884140664.Spec : Prop :=
  ∀ n, P3075740246884140664.a n = A166249 n

end A166249

/-! ## A166249.P13996065375262347082

`A328881(n+2)-A135259(n)`
-/

namespace A166249.P13996065375262347082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (n + 2) - A135259 n

end

end A166249.P13996065375262347082

namespace A166249

/-- `A328881(n+2)-A135259(n)` -/
def P13996065375262347082.Spec : Prop :=
  ∀ n, P13996065375262347082.a n = A166249 n

end A166249

/-! ## A166249.P17633517748217223819

`A131531(n+4)+A024493(n)`
-/

namespace A166249.P17633517748217223819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 4) + A024493 n

end

end A166249.P17633517748217223819

namespace A166249

/-- `A131531(n+4)+A024493(n)` -/
def P17633517748217223819.Spec : Prop :=
  ∀ n, P17633517748217223819.a n = A166249 n

end A166249

/-! ## A166249.P15720061095897896160

`A173432(n+4)+A111927(n)`
-/

namespace A166249.P15720061095897896160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173432 (n + 4) + A111927 n

end

end A166249.P15720061095897896160

namespace A166249

/-- `A173432(n+4)+A111927(n)` -/
def P15720061095897896160.Spec : Prop :=
  ∀ n, P15720061095897896160.a n = A166249 n

end A166249

/-! ## A166249.P16160009351011120711

`A110161(2*n+1)+A001045(n)`
-/

namespace A166249.P16160009351011120711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (2 * n + 1) + A001045 n

end

end A166249.P16160009351011120711

namespace A166249

/-- `A110161(2*n+1)+A001045(n)` -/
def P16160009351011120711.Spec : Prop :=
  ∀ n, P16160009351011120711.a n = A166249 n

end A166249

/-! ## A166249.P9173416875690542551

`A024493(n)+A113405(n)-A131666(n)`
-/

namespace A166249.P9173416875690542551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + (A113405 n - A131666 n)

end

end A166249.P9173416875690542551

namespace A166249

/-- `A024493(n)+A113405(n)-A131666(n)` -/
def P9173416875690542551.Spec : Prop :=
  ∀ n, P9173416875690542551.a n = A166249 n

end A166249

/-! ## A166249.P6445188521336179053

`A024493(n)-(A242563(n)-A024495(n))`
-/

namespace A166249.P6445188521336179053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - (A242563 n - A024495 n)

end

end A166249.P6445188521336179053

namespace A166249

/-- `A024493(n)-(A242563(n)-A024495(n))` -/
def P6445188521336179053.Spec : Prop :=
  ∀ n, P6445188521336179053.a n = A166249 n

end A166249

/-! ## A166249.P5383065799207865286

`A024495(n)-(A135259(n)-A328881(n))`
-/

namespace A166249.P5383065799207865286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 n - (A135259 n - A328881 n)

end

end A166249.P5383065799207865286

namespace A166249

/-- `A024495(n)-(A135259(n)-A328881(n))` -/
def P5383065799207865286.Spec : Prop :=
  ∀ n, P5383065799207865286.a n = A166249 n

end A166249

/-! ## A166249.P16390753231208670284

`A092220(n+1)+A092220(n)+A001045(n)`
-/

namespace A166249.P16390753231208670284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (n + 1) + (A092220 n + A001045 n)

end

end A166249.P16390753231208670284

namespace A166249

/-- `A092220(n+1)+A092220(n)+A001045(n)` -/
def P16390753231208670284.Spec : Prop :=
  ∀ n, P16390753231208670284.a n = A166249 n

end A166249

/-!
# A166250: a(n) = n-1 plus the largest proper divisor of n.

The programs for A166250, there is no canonical definition to state claims against.
-/

/-! ## A166250.P8242952461195506871

`n+1+A032742(n+2)`
-/

namespace A166250.P8242952461195506871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A032742 (n + 2)

end

end A166250.P8242952461195506871

/-! ## A166250.P2243055425982739527

`A338281(n+2)-1`
-/

namespace A166250.P2243055425982739527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338281 (n + 2) - 1

end

end A166250.P2243055425982739527

/-! ## A166250.P8574073248709265630

`A089196(n+1)+2+n`
-/

namespace A166250.P8574073248709265630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089196 (n + 1) + 2 + (n : ℤ)

end

end A166250.P8574073248709265630

/-! ## A166250.P8652012596329858398

`floor(n/A020639(n+2)+n+2)`
-/

namespace A166250.P8652012596329858398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A020639 (n + 2) : ℚ) + (n + 2 : ℚ)⌋

end

end A166250.P8652012596329858398

/-! ## A166250.P42244870835023946

`∑[Δ[ceil(n/A020639(n+1))]+1]`
-/

namespace A166250.P42244870835023946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A020639 (n + 1) : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166250.P42244870835023946

/-! ## A166250.P6140585158565934426

`(n+2)/A092067(n+1)+n+1`
-/

namespace A166250.P6140585158565934426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A092067 (n + 1) : ℚ) + (n + 1 : ℚ)

end

end A166250.P6140585158565934426

/-! ## A166250.P17048339411685490859

`A070935(n+2)/(n+2)+n+1`
-/

namespace A166250.P17048339411685490859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070935 (n + 2) : ℚ) / (n + 2 : ℚ) + (n + 1 : ℚ)

end

end A166250.P17048339411685490859

/-! ## A166250.P8277152904931077082

`(n+2)/A020639(∏{p}[n+2, #])+n+1`
-/

namespace A166250.P8277152904931077082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) + (n + 1 : ℚ)

end

end A166250.P8277152904931077082

/-! ## A166250.P1135510427650230930

`(n+2)/A020639(2*n-(n-2))+n+1`
-/

namespace A166250.P1135510427650230930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) + (n + 1 : ℚ)

end

end A166250.P1135510427650230930

/-! ## A166250.P15812801480832166729

`A064916(n+2)+A046666(n+2)`
-/

namespace A166250.P15812801480832166729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064916 (n + 2) + A046666 (n + 2)

end

end A166250.P15812801480832166729

/-! ## A166250.P15268994163933699014

`A192544(n+1)-(A182084(n+2)+1)`
-/

namespace A166250.P15268994163933699014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1) - (A182084 (n + 2) + 1)

end

end A166250.P15268994163933699014

/-! ## A166250.P12310222323447088306

`A000203(n+2)-(A318505(n+2)+1)`
-/

namespace A166250.P12310222323447088306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A318505 (n + 2) + 1)

end

end A166250.P12310222323447088306

/-! ## A166250.P16870843656570603839

`A318514(n+2)+A318515(n+2)-1`
-/

namespace A166250.P16870843656570603839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318514 (n + 2) + (A318515 (n + 2) - 1)

end

end A166250.P16870843656570603839

/-! ## A166250.P5999794101214450870

`1+A032742(n+2)+n`
-/

namespace A166250.P5999794101214450870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A032742 (n + 2) + (n : ℤ)

end

end A166250.P5999794101214450870

/-! ## A166250.P11360712951094407722

`Δ[A280050(n+1)]+n+1`
-/

namespace A166250.P11360712951094407722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A166250.P11360712951094407722

/-! ## A166250.P11191118494341531662

`2*n+3-A060681(n+2)`
-/

namespace A166250.P11191118494341531662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A060681 (n + 2)

end

end A166250.P11191118494341531662

/-! ## A166250.P2398485275781412818

`A004277(n+1)+1-A060681(n+2)`
-/

namespace A166250.P2398485275781412818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + (1 - A060681 (n + 2))

end

end A166250.P2398485275781412818

/-! ## A166250.P18061084310026377552

`A005843(n+1)+1-A060681(n+2)`
-/

namespace A166250.P18061084310026377552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (1 - A060681 (n + 2))

end

end A166250.P18061084310026377552

/-! ## A166250.P4289370996184022845

`A020725(n+2)-A060681(n+2)+n`
-/

namespace A166250.P4289370996184022845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (n + 2) - A060681 (n + 2) + (n : ℤ)

end

end A166250.P4289370996184022845

/-! ## A166250.P8451186183050515503

`n+1+A060681(n+2)/A057237(n+2)`
-/

namespace A166250.P8451186183050515503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A060681 (n + 2) : ℚ) / (A057237 (n + 2) : ℚ)

end

end A166250.P8451186183050515503

/-!
# A166251: Isolated primes: Primes p such that there is no other prime in the interval [2*prevprime(p/2), 2*nextprime(p/2)].

The programs for A166251, the canonical program `A166251.P5903260242460627242` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166251 has offset 1).

The definition of A166251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166251.P5903260242460627242

`A059788(eq[1, A102820(n+1)]+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A166251

/-- `A059788(eq[1, A102820(n+1)]+2)` -/
def P5903260242460627242.Spec : Prop :=
  ∀ n, P5903260242460627242.a n = A166251 (n + 1)

theorem P5903260242460627242.correct : P5903260242460627242.Spec := by
  intro n
  simp only [A166251, Nat.add_sub_cancel]

end A166251

/-! ## A166251.P14489151616870898912

`record[gcd(A059786(n+1), A059788(n+2))]`
-/

namespace A166251.P14489151616870898912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059786 (n + 1)) (A059788 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166251.P14489151616870898912

namespace A166251

/-- `record[gcd(A059786(n+1), A059788(n+2))]` -/
def P14489151616870898912.Spec : Prop :=
  ∀ n, (P14489151616870898912.a n : ℤ) = A166251 (n + 1)

end A166251

/-! ## A166251.P780442420096013454

`p?[A059786(n+1)*A102820(n+1)]`
-/

namespace A166251.P780442420096013454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (n + 1) * A102820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166251.P780442420096013454

namespace A166251

/-- `p?[A059786(n+1)*A102820(n+1)]` -/
def P780442420096013454.Spec : Prop :=
  ∀ n, P780442420096013454.a n = A166251 (n + 1)

end A166251

/-! ## A166251.P5059432176735949031

`p?[A059788(n+2)*A102820(n+1)]`
-/

namespace A166251.P5059432176735949031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059788 (n + 2) * A102820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166251.P5059432176735949031

namespace A166251

/-- `p?[A059788(n+2)*A102820(n+1)]` -/
def P5059432176735949031.Spec : Prop :=
  ∀ n, P5059432176735949031.a n = A166251 (n + 1)

end A166251

/-! ## A166251.P8847071935574823703

`p?[A102820(n+1)*A151800(A100484(n+1))]`
-/

namespace A166251.P8847071935574823703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (n + 1) * A151800 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166251.P8847071935574823703

namespace A166251

/-- `p?[A102820(n+1)*A151800(A100484(n+1))]` -/
def P8847071935574823703.Spec : Prop :=
  ∀ n, P8847071935574823703.a n = A166251 (n + 1)

end A166251

/-!
# A166252: Primes which are not the smallest or largest prime in an interval of the form (2*prime(k),2*prime(k+1)).

The programs for A166252, the canonical program `A166252.P7121988466875725616` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166252 has offset 1).

The definition of A166252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166252.P7121988466875725616

`∩[A164368(n+1), A151800(A164368(n+1))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A166252

/-- `∩[A164368(n+1), A151800(A164368(n+1))]` -/
def P7121988466875725616.Spec : Prop :=
  ∀ n, (P7121988466875725616.a n : ℤ) = A166252 (n + 1)

theorem P7121988466875725616.correct : P7121988466875725616.Spec := by
  intro n
  simp only [A166252, Nat.add_sub_cancel]

end A166252

/-! ## A166252.P7101612696438664116

`∩[A194598(n+1), A164368(n+3)]`
-/

namespace A166252.P7101612696438664116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166252.P7101612696438664116

namespace A166252

/-- `∩[A194598(n+1), A164368(n+3)]` -/
def P7101612696438664116.Spec : Prop :=
  ∀ n, (P7101612696438664116.a n : ℤ) = A166252 (n + 1)

end A166252

/-! ## A166252.P14904388185835792374

`p?[gcd(A164368(n+2), A194598(n+2))]`
-/

namespace A166252.P14904388185835792374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164368 (n + 2)) (A194598 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A166252.P14904388185835792374

namespace A166252

/-- `p?[gcd(A164368(n+2), A194598(n+2))]` -/
def P14904388185835792374.Spec : Prop :=
  ∀ n, (P14904388185835792374.a n : ℤ) = A166252 (n + 1)

end A166252

/-! ## A166252.P3749754271769131529

`record[gcd(A164368(n+9), A194598(n+9))]`
-/

namespace A166252.P3749754271769131529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164368 (n + 9)) (A194598 (n + 9))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166252.P3749754271769131529

namespace A166252

/-- `record[gcd(A164368(n+9), A194598(n+9))]` -/
def P3749754271769131529.Spec : Prop :=
  ∀ n, (P3749754271769131529.a n : ℤ) = A166252 (n + 1)

end A166252

/-! ## A166252.P18061382765142625361

`∩[A003961(A164368(n+1)), A164368(n+1)]`
-/

namespace A166252.P18061382765142625361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A164368 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166252.P18061382765142625361

namespace A166252

/-- `∩[A003961(A164368(n+1)), A164368(n+1)]` -/
def P18061382765142625361.Spec : Prop :=
  ∀ n, (P18061382765142625361.a n : ℤ) = A166252 (n + 1)

end A166252

/-! ## A166252.P5822832711305631165

`∩[A194598(n+4), A035031(A194598(n+4))]`
-/

namespace A166252.P5822832711305631165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194598 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (A194598 (n + 4)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166252.P5822832711305631165

namespace A166252

/-- `∩[A194598(n+4), A035031(A194598(n+4))]` -/
def P5822832711305631165.Spec : Prop :=
  ∀ n, (P5822832711305631165.a n : ℤ) = A166252 (n + 1)

end A166252

/-! ## A166252.P18334802347861800029

`∪[A166576(n+1), A182451(n+1)]`
-/

namespace A166252.P18334802347861800029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166576 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166252.P18334802347861800029

namespace A166252

/-- `∪[A166576(n+1), A182451(n+1)]` -/
def P18334802347861800029.Spec : Prop :=
  ∀ n, (P18334802347861800029.a n : ℤ) = A166252 (n + 1)

end A166252

/-!
# A166253: String substitution 0 -> 01110, 1 -> 10001, started with 1.

The programs for A166253, the canonical program `A166253.P5914858087420238864` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166253 has offset 1).

The definition of A166253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166253.P13805207021538408050

`ceil(∏[1/A109064(n)])`
-/

namespace A166253.P13805207021538408050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A109064 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A166253.P13805207021538408050

namespace A166253

/-- `ceil(∏[1/A109064(n)])` -/
def P13805207021538408050.Spec : Prop :=
  ∀ n, P13805207021538408050.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P5914858087420238864

`(A136692(n)%3+n)%2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166253

/-- `(A136692(n)%3+n)%2` -/
def P5914858087420238864.Spec : Prop :=
  ∀ n, P5914858087420238864.a n = A166253 (n + 1)

theorem P5914858087420238864.correct : P5914858087420238864.Spec := by
  intro n
  simp only [A166253, Nat.add_sub_cancel]

end A166253

/-! ## A166253.P8603670145478152965

`(A003602(A194459(n))+n)%2`
-/

namespace A166253.P8603670145478152965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A194459 n).toNat + (n : ℤ)) 2

end

end A166253.P8603670145478152965

namespace A166253

/-- `(A003602(A194459(n))+n)%2` -/
def P8603670145478152965.Spec : Prop :=
  ∀ n, P8603670145478152965.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P13237497884171318271

`A059841(∑{digits}[A007091(n), A297498(#)])`
-/

namespace A166253.P13237497884171318271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A297498 x).sum.toNat

end

end A166253.P13237497884171318271

namespace A166253

/-- `A059841(∑{digits}[A007091(n), A297498(#)])` -/
def P13237497884171318271.Spec : Prop :=
  ∀ n, P13237497884171318271.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P15341413504386296217

`A000035(A003602(A194459(n))-A000035(n))`
-/

namespace A166253.P15341413504386296217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003602 (A194459 n).toNat - A000035 n).toNat

end

end A166253.P15341413504386296217

namespace A166253

/-- `A000035(A003602(A194459(n))-A000035(n))` -/
def P15341413504386296217.Spec : Prop :=
  ∀ n, P15341413504386296217.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P10213821574560782858

`A000035(A003602(A194459(n))+n)`
-/

namespace A166253.P10213821574560782858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003602 (A194459 n).toNat + (n : ℤ)).toNat

end

end A166253.P10213821574560782858

namespace A166253

/-- `A000035(A003602(A194459(n))+n)` -/
def P10213821574560782858.Spec : Prop :=
  ∀ n, P10213821574560782858.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P3540142325693785265

`A059841(A117967(A037468(n)))`
-/

namespace A166253.P3540142325693785265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A117967 (A037468 n).toNat).toNat

end

end A166253.P3540142325693785265

namespace A166253

/-- `A059841(A117967(A037468(n)))` -/
def P3540142325693785265.Spec : Prop :=
  ∀ n, P3540142325693785265.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P15344305008015207687

`A059841(A137305(A037468(n))+n)`
-/

namespace A166253.P15344305008015207687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A137305 (A037468 n).toNat + (n : ℤ)).toNat

end

end A166253.P15344305008015207687

namespace A166253

/-- `A059841(A137305(A037468(n))+n)` -/
def P15344305008015207687.Spec : Prop :=
  ∀ n, P15344305008015207687.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P17850189707271397650

`A117188(A060372(record[A316823(n)]))`
-/

namespace A166253.P17850189707271397650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117188 (A060372 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A166253.P17850189707271397650

namespace A166253

/-- `A117188(A060372(record[A316823(n)]))` -/
def P17850189707271397650.Spec : Prop :=
  ∀ n, P17850189707271397650.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P79853397873594456

`A010059(A289831(record[A316823(n)]))`
-/

namespace A166253.P79853397873594456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A289831 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A166253.P79853397873594456

namespace A166253

/-- `A010059(A289831(record[A316823(n)]))` -/
def P79853397873594456.Spec : Prop :=
  ∀ n, P79853397873594456.a n = A166253 (n + 1)

end A166253

/-! ## A166253.P13760785270616136468

`ceil(∏[acot(A205884(n))])`
-/

namespace A166253.P13760785270616136468
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A205884 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A166253.P13760785270616136468

namespace A166253

/-- `ceil(∏[acot(A205884(n))])` -/
def P13760785270616136468.Spec : Prop :=
  ∀ n, P13760785270616136468.a n = A166253 (n + 1)

end A166253

/-!
# A166257: Odd numbers not of the form prime(k) + phi(prime(k)).

The programs for A166257, the canonical program `A166257.P1728091732200163006` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166257 has offset 1).

The definition of A166257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166257.P1728091732200163006

`A139270(n+1)-1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166257

/-- `A139270(n+1)-1` -/
def P1728091732200163006.Spec : Prop :=
  ∀ n, P1728091732200163006.a n = A166257 (n + 1)

theorem P1728091732200163006.correct : P1728091732200163006.Spec := by
  intro n
  simp only [A166257, Nat.add_sub_cancel]

end A166257

/-! ## A166257.P4674036956576157738

`A176100(n+2)-1`
-/

namespace A166257.P4674036956576157738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 2) - 1

end

end A166257.P4674036956576157738

namespace A166257

/-- `A176100(n+2)-1` -/
def P4674036956576157738.Spec : Prop :=
  ∀ n, P4674036956576157738.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P758078167256200180

`A176393(n+2)-2`
-/

namespace A166257.P758078167256200180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176393 (n + 2) - 2

end

end A166257.P758078167256200180

namespace A166257

/-- `A176393(n+2)-2` -/
def P758078167256200180.Spec : Prop :=
  ∀ n, P758078167256200180.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P3452825761216567562

`Δ[2*A051349(n)]-1`
-/

namespace A166257.P3452825761216567562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A166257.P3452825761216567562

namespace A166257

/-- `Δ[2*A051349(n)]-1` -/
def P3452825761216567562.Spec : Prop :=
  ∀ n, P3452825761216567562.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P5499851300052718611

`comp[A256421(n+1)-1]`
-/

namespace A166257.P5499851300052718611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256421 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166257.P5499851300052718611

namespace A166257

/-- `comp[A256421(n+1)-1]` -/
def P5499851300052718611.Spec : Prop :=
  ∀ n, (P5499851300052718611.a n : ℤ) = A166257 (n + 1)

end A166257

/-! ## A166257.P1654010346104777977

`2*comp[A047814(n)]-1`
-/

namespace A166257.P1654010346104777977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A166257.P1654010346104777977

namespace A166257

/-- `2*comp[A047814(n)]-1` -/
def P1654010346104777977.Spec : Prop :=
  ∀ n, P1654010346104777977.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P6933848289546013628

`2*A018252(n+1)-1`
-/

namespace A166257.P6933848289546013628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 1) - 1

end

end A166257.P6933848289546013628

namespace A166257

/-- `2*A018252(n+1)-1` -/
def P6933848289546013628.Spec : Prop :=
  ∀ n, P6933848289546013628.a n = A166257 (n + 1)

theorem P6933848289546013628.correct : P6933848289546013628.Spec := by
  intro n
  simp only [A166257, Nat.add_sub_cancel, A166257.P6933848289546013628.a, A166257.P1728091732200163006.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A139270, A139270.P18097877948354523741.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A166257

/-! ## A166257.P12582421429492433023

`2*A141468(n+2)-1`
-/

namespace A166257.P12582421429492433023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 2) - 1

end

end A166257.P12582421429492433023

namespace A166257

/-- `2*A141468(n+2)-1` -/
def P12582421429492433023.Spec : Prop :=
  ∀ n, P12582421429492433023.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P13854808025667351681

`A004273(A018252(n+1))`
-/

namespace A166257.P13854808025667351681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A018252 (n + 1)).toNat

end

end A166257.P13854808025667351681

namespace A166257

/-- `A004273(A018252(n+1))` -/
def P13854808025667351681.Spec : Prop :=
  ∀ n, P13854808025667351681.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P14271419506733305040

`A014681(A139270(n+1))`
-/

namespace A166257.P14271419506733305040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A139270 (n + 1)).toNat

end

end A166257.P14271419506733305040

namespace A166257

/-- `A014681(A139270(n+1))` -/
def P14271419506733305040.Spec : Prop :=
  ∀ n, P14271419506733305040.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P11881975616123306486

`A073898(A102615(n+1))`
-/

namespace A166257.P11881975616123306486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073898 (A102615 (n + 1)).toNat

end

end A166257.P11881975616123306486

namespace A166257

/-- `A073898(A102615(n+1))` -/
def P11881975616123306486.Spec : Prop :=
  ∀ n, P11881975616123306486.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P8095784457170903738

`A267872(A060462(n+1))`
-/

namespace A166257.P8095784457170903738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A060462 (n + 1)).toNat

end

end A166257.P8095784457170903738

namespace A166257

/-- `A267872(A060462(n+1))` -/
def P8095784457170903738.Spec : Prop :=
  ∀ n, P8095784457170903738.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P11726313721056528805

`A004273(A141468(n+2))`
-/

namespace A166257.P11726313721056528805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A141468 (n + 2)).toNat

end

end A166257.P11726313721056528805

namespace A166257

/-- `A004273(A141468(n+2))` -/
def P11726313721056528805.Spec : Prop :=
  ∀ n, P11726313721056528805.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P157616342446889721

`A014681(A176100(n+2))`
-/

namespace A166257.P157616342446889721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A176100 (n + 2)).toNat

end

end A166257.P157616342446889721

namespace A166257

/-- `A014681(A176100(n+2))` -/
def P157616342446889721.Spec : Prop :=
  ∀ n, P157616342446889721.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P17889592418205272083

`A023444(A176393(n+2))`
-/

namespace A166257.P17889592418205272083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A176393 (n + 2)).toNat

end

end A166257.P17889592418205272083

namespace A166257

/-- `A023444(A176393(n+2))` -/
def P17889592418205272083.Spec : Prop :=
  ∀ n, P17889592418205272083.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P5652685914382186113

`A005408(A018252(n+1)-1)`
-/

namespace A166257.P5652685914382186113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A018252 (n + 1) - 1).toNat

end

end A166257.P5652685914382186113

namespace A166257

/-- `A005408(A018252(n+1)-1)` -/
def P5652685914382186113.Spec : Prop :=
  ∀ n, P5652685914382186113.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P15870866816480166248

`A014681(2*A018252(n+1))`
-/

namespace A166257.P15870866816480166248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A018252 (n + 1)).toNat

end

end A166257.P15870866816480166248

namespace A166257

/-- `A014681(2*A018252(n+1))` -/
def P15870866816480166248.Spec : Prop :=
  ∀ n, P15870866816480166248.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P16913338227884634247

`A023443(2*A018252(n+1))`
-/

namespace A166257.P16913338227884634247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A018252 (n + 1)).toNat

end

end A166257.P16913338227884634247

namespace A166257

/-- `A023443(2*A018252(n+1))` -/
def P16913338227884634247.Spec : Prop :=
  ∀ n, P16913338227884634247.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P12954592447251871606

`A086970(A163975(n+2))-2`
-/

namespace A166257.P12954592447251871606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086970 (A163975 (n + 2)).toNat - 2

end

end A166257.P12954592447251871606

namespace A166257

/-- `A086970(A163975(n+2))-2` -/
def P12954592447251871606.Spec : Prop :=
  ∀ n, P12954592447251871606.a n = A166257 (n + 1)

end A166257

/-! ## A166257.P8381714581261116100

`A014681(2*A141468(n+2))`
-/

namespace A166257.P8381714581261116100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A141468 (n + 2)).toNat

end

end A166257.P8381714581261116100

namespace A166257

/-- `A014681(2*A141468(n+2))` -/
def P8381714581261116100.Spec : Prop :=
  ∀ n, P8381714581261116100.a n = A166257 (n + 1)

end A166257

/-!
# A166259: Positive integers n such that a centered polygonal number n*k*(k+1)/2+1 is not a square for any k > 0.

The programs for A166259, there is no canonical definition to state claims against.
-/

/-! ## A166259.P5090518934342354694

`lt[A120744(n+1), 0]+1`
-/

namespace A166259.P5090518934342354694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120744 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166259.P5090518934342354694

/-! ## A166259.P7823797206043596712

`2*∑[A035214(A020706(n))]²`
-/

namespace A166259.P7823797206043596712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A020706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A166259.P7823797206043596712

/-! ## A166259.P11931026937602925469

`2*∑[A336643(A035593(n))]²`
-/

namespace A166259.P11931026937602925469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A035593 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A166259.P11931026937602925469

/-! ## A166259.P15428997910342360446

`A001105(lt[A141719(3*n+2), A060724(3*(n+1))])`
-/

namespace A166259.P15428997910342360446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141719 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060724 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A166259.P15428997910342360446

/-! ## A166259.P16029901404736729959

`2*(comp[A187902(A344592(comp[4*n]))-1]+1)²`
-/

namespace A166259.P16029901404736729959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187902 (A344592 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A166259.P16029901404736729959

/-!
# A166260: a(n) = A089026(n) - 1.

The programs for A166260, the canonical program `A166260.P5468160099319009475` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166260 has offset 1).

The definition of A166260 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089026, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166260.P5468160099319009475

`A089026(n+1)-1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A166260

/-- `A089026(n+1)-1` -/
def P5468160099319009475.Spec : Prop :=
  ∀ n, P5468160099319009475.a n = A166260 (n + 1)

theorem P5468160099319009475.correct : P5468160099319009475.Spec := by
  intro n
  simp only [A166260, Nat.add_sub_cancel]

end A166260

/-! ## A166260.P2117928114910069644

`n*A010051(n+1)`
-/

namespace A166260.P2117928114910069644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (n + 1)

end

end A166260.P2117928114910069644

namespace A166260

/-- `n*A010051(n+1)` -/
def P2117928114910069644.Spec : Prop :=
  ∀ n, P2117928114910069644.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P9900103839177840861

`n*∑{e}[1+n, #]!%2`
-/

namespace A166260.P9900103839177840861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % 2)

end

end A166260.P9900103839177840861

namespace A166260

/-- `n*∑{e}[1+n, #]!%2` -/
def P9900103839177840861.Spec : Prop :=
  ∀ n, (P9900103839177840861.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P1111479600243974107

`n*and(1, ∑{e}[n+1, #]!)`
-/

namespace A166260.P1111479600243974107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A166260.P1111479600243974107

namespace A166260

/-- `n*and(1, ∑{e}[n+1, #]!)` -/
def P1111479600243974107.Spec : Prop :=
  ∀ n, (P1111479600243974107.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P3401930415323256002

`∑{p}[n+1, floor(n^(#-n))]`
-/

namespace A166260.P3401930415323256002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), ⌊(n : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ)⌋

end

end A166260.P3401930415323256002

namespace A166260

/-- `∑{p}[n+1, floor(n^(#-n))]` -/
def P3401930415323256002.Spec : Prop :=
  ∀ n, P3401930415323256002.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P8985677870657184793

`round(∑{p}[n+1, n^(#-n)])`
-/

namespace A166260.P8985677870657184793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n : ℚ) ^ ((p : ℤ) - (n : ℤ) : ℤ))

end

end A166260.P8985677870657184793

namespace A166260

/-- `round(∑{p}[n+1, n^(#-n)])` -/
def P8985677870657184793.Spec : Prop :=
  ∀ n, P8985677870657184793.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P6386338348364253794

`n*∑{p}[n+1, val(#, n+1)]`
-/

namespace A166260.P6386338348364253794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1))

end

end A166260.P6386338348364253794

namespace A166260

/-- `n*∑{p}[n+1, val(#, n+1)]` -/
def P6386338348364253794.Spec : Prop :=
  ∀ n, (P6386338348364253794.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P2261849519264122180

`n*∏{p}[n+1, val(#, n+1)]`
-/

namespace A166260.P2261849519264122180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p (n + 1))

end

end A166260.P2261849519264122180

namespace A166260

/-- `n*∏{p}[n+1, val(#, n+1)]` -/
def P2261849519264122180.Spec : Prop :=
  ∀ n, (P2261849519264122180.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P2524079554615825046

`n*C(n+2, ∑{d}[n+1, #])`
-/

namespace A166260.P2524079554615825046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 2) (∑ d ∈ Nat.divisors (f1 n), d)

end

end A166260.P2524079554615825046

namespace A166260

/-- `n*C(n+2, ∑{d}[n+1, #])` -/
def P2524079554615825046.Spec : Prop :=
  ∀ n, (P2524079554615825046.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P1973495952013842897

`n*∑{p}[n+1, C(#, n+1)]`
-/

namespace A166260.P1973495952013842897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1))

end

end A166260.P1973495952013842897

namespace A166260

/-- `n*∑{p}[n+1, C(#, n+1)]` -/
def P1973495952013842897.Spec : Prop :=
  ∀ n, (P1973495952013842897.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P429592068347664786

`n*∏{p}[n+1, C(#, n+1)]`
-/

namespace A166260.P429592068347664786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (n + 1))

end

end A166260.P429592068347664786

namespace A166260

/-- `n*∏{p}[n+1, C(#, n+1)]` -/
def P429592068347664786.Spec : Prop :=
  ∀ n, (P429592068347664786.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P4312834638956293651

`C(n, ∏{e}[n+1, #*(n-1)])`
-/

namespace A166260.P4312834638956293651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℤ) * ((n : ℤ) - 1)).toNat

end

end A166260.P4312834638956293651

namespace A166260

/-- `C(n, ∏{e}[n+1, #*(n-1)])` -/
def P4312834638956293651.Spec : Prop :=
  ∀ n, (P4312834638956293651.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P1094444617725403393

`C(n, (n-1)^∑{e}[n+1, #])`
-/

namespace A166260.P1094444617725403393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (((n : ℤ) - 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)).toNat

end

end A166260.P1094444617725403393

namespace A166260

/-- `C(n, (n-1)^∑{e}[n+1, #])` -/
def P1094444617725403393.Spec : Prop :=
  ∀ n, (P1094444617725403393.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P12749548366988766475

`C(n, ∏{p}[n+1, (n+2-#)²])`
-/

namespace A166260.P12749548366988766475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f1 n), ((n + 2 : ℤ) - (p : ℤ)) ^ 2).toNat

end

end A166260.P12749548366988766475

namespace A166260

/-- `C(n, ∏{p}[n+1, (n+2-#)²])` -/
def P12749548366988766475.Spec : Prop :=
  ∀ n, (P12749548366988766475.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P6201657260546842566

`n*floor((n+2)/∑{d}[n+1, #])`
-/

namespace A166260.P6201657260546842566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n + 2 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌋

end

end A166260.P6201657260546842566

namespace A166260

/-- `n*floor((n+2)/∑{d}[n+1, #])` -/
def P6201657260546842566.Spec : Prop :=
  ∀ n, P6201657260546842566.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P11435910774455109230

`C(n, ∏{p}[n+1, (n+1)/#]²)`
-/

namespace A166260.P11435910774455109230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.roundAway ((∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) ^ 2)).toNat

end

end A166260.P11435910774455109230

namespace A166260

/-- `C(n, ∏{p}[n+1, (n+1)/#]²)` -/
def P11435910774455109230.Spec : Prop :=
  ∀ n, (P11435910774455109230.a n : ℤ) = A166260 (n + 1)

end A166260

/-! ## A166260.P17636464633154413347

`n*∑{p}[n+1, floor(#/(n+1))]`
-/

namespace A166260.P17636464633154413347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋)

end

end A166260.P17636464633154413347

namespace A166260

/-- `n*∑{p}[n+1, floor(#/(n+1))]` -/
def P17636464633154413347.Spec : Prop :=
  ∀ n, P17636464633154413347.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P16856270580746762819

`n*∏{p}[n+1, floor(#/(n+1))]`
-/

namespace A166260.P16856270580746762819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋)

end

end A166260.P16856270580746762819

namespace A166260

/-- `n*∏{p}[n+1, floor(#/(n+1))]` -/
def P16856270580746762819.Spec : Prop :=
  ∀ n, P16856270580746762819.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P17563328198393790272

`A010051(n+1)*n`
-/

namespace A166260.P17563328198393790272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * (n : ℤ)

end

end A166260.P17563328198393790272

namespace A166260

/-- `A010051(n+1)*n` -/
def P17563328198393790272.Spec : Prop :=
  ∀ n, P17563328198393790272.a n = A166260 (n + 1)

end A166260

/-! ## A166260.P11110569978497560532

`n*A080339(n+1)`
-/

namespace A166260.P11110569978497560532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080339 (n + 1)

end

end A166260.P11110569978497560532

namespace A166260

/-- `n*A080339(n+1)` -/
def P11110569978497560532.Spec : Prop :=
  ∀ n, P11110569978497560532.a n = A166260 (n + 1)

end A166260

/-!
# A166265: Numbers of the form 1+x^2+y^2, x, y integers >= 1.

The programs for A166265, the canonical program `A166265.P8428829971203259182` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166265 has offset 1).

The definition of A166265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166265.P8428829971203259182

`A000404(1+n)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A166265

/-- `A000404(1+n)+1` -/
def P8428829971203259182.Spec : Prop :=
  ∀ n, P8428829971203259182.a n = A166265 (n + 1)

theorem P8428829971203259182.correct : P8428829971203259182.Spec := by
  intro n
  simp only [A166265, Nat.add_sub_cancel]

end A166265

/-! ## A166265.P4530118188568536712

`sqrt(A135784(n+1))+1`
-/

namespace A166265.P4530118188568536712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135784 (n + 1) : ℝ) + 1

end

end A166265.P4530118188568536712

namespace A166265

/-- `sqrt(A135784(n+1))+1` -/
def P4530118188568536712.Spec : Prop :=
  ∀ n, P4530118188568536712.a n = (A166265 (n + 1) : ℝ)

end A166265

/-! ## A166265.P17735187506235613321

`A339273(n+1)/4+1`
-/

namespace A166265.P17735187506235613321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339273 (n + 1) : ℚ) / 4 + 1

end

end A166265.P17735187506235613321

namespace A166265

/-- `A339273(n+1)/4+1` -/
def P17735187506235613321.Spec : Prop :=
  ∀ n, P17735187506235613321.a n = (A166265 (n + 1) : ℚ)

end A166265

/-! ## A166265.P12239557178657768543

`(A135787(n+1)+A135786(n+1))/A135786(n+1)`
-/

namespace A166265.P12239557178657768543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135787 (n + 1) + A135786 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ)

end

end A166265.P12239557178657768543

namespace A166265

/-- `(A135787(n+1)+A135786(n+1))/A135786(n+1)` -/
def P12239557178657768543.Spec : Prop :=
  ∀ n, P12239557178657768543.a n = (A166265 (n + 1) : ℚ)

end A166265

/-! ## A166265.P8355697723438305224

`(A135788(n+1)+A135787(n+1))/A135787(n+1)`
-/

namespace A166265.P8355697723438305224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135788 (n + 1) + A135787 (n + 1) : ℚ) / (A135787 (n + 1) : ℚ)

end

end A166265.P8355697723438305224

namespace A166265

/-- `(A135788(n+1)+A135787(n+1))/A135787(n+1)` -/
def P8355697723438305224.Spec : Prop :=
  ∀ n, P8355697723438305224.a n = (A166265 (n + 1) : ℚ)

end A166265

/-! ## A166265.P3528746402617999075

`lt[0, A025426(n)]+1`
-/

namespace A166265.P3528746402617999075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166265.P3528746402617999075

namespace A166265

/-- `lt[0, A025426(n)]+1` -/
def P3528746402617999075.Spec : Prop :=
  ∀ n, (P3528746402617999075.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P5585811385861442232

`eq[1, A266314(n)]+2`
-/

namespace A166265.P5585811385861442232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A166265.P5585811385861442232

namespace A166265

/-- `eq[1, A266314(n)]+2` -/
def P5585811385861442232.Spec : Prop :=
  ∀ n, (P5585811385861442232.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P9139152882657505776

`lt[0, A037214(n)]+1`
-/

namespace A166265.P9139152882657505776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166265.P9139152882657505776

namespace A166265

/-- `lt[0, A037214(n)]+1` -/
def P9139152882657505776.Spec : Prop :=
  ∀ n, (P9139152882657505776.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P1692816346276258356

`lt[0, A063725(n)]+1`
-/

namespace A166265.P1692816346276258356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166265.P1692816346276258356

namespace A166265

/-- `lt[0, A063725(n)]+1` -/
def P1692816346276258356.Spec : Prop :=
  ∀ n, (P1692816346276258356.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P2324075671810610438

`∑[runs[A237526(n)]]+1`
-/

namespace A166265.P2324075671810610438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A166265.P2324075671810610438

namespace A166265

/-- `∑[runs[A237526(n)]]+1` -/
def P2324075671810610438.Spec : Prop :=
  ∀ n, (P2324075671810610438.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P1606782808549164705

`A020725(A000404(n+1))`
-/

namespace A166265.P1606782808549164705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000404 (n + 1)).toNat

end

end A166265.P1606782808549164705

namespace A166265

/-- `A020725(A000404(n+1))` -/
def P1606782808549164705.Spec : Prop :=
  ∀ n, P1606782808549164705.a n = A166265 (n + 1)

end A166265

/-! ## A166265.P4497878899659805326

`(A135786(n+1)+A050803(n+1))/A050803(n+1)`
-/

namespace A166265.P4497878899659805326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135786 (n + 1) + A050803 (n + 1) : ℚ) / (A050803 (n + 1) : ℚ)

end

end A166265.P4497878899659805326

namespace A166265

/-- `(A135786(n+1)+A050803(n+1))/A050803(n+1)` -/
def P4497878899659805326.Spec : Prop :=
  ∀ n, P4497878899659805326.a n = (A166265 (n + 1) : ℚ)

end A166265

/-! ## A166265.P16232657730926281244

`(A135784(n+1)+A050803(n+1))/A135784(n+1)`
-/

namespace A166265.P16232657730926281244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135784 (n + 1) + A050803 (n + 1) : ℚ) / (A135784 (n + 1) : ℚ)

end

end A166265.P16232657730926281244

namespace A166265

/-- `(A135784(n+1)+A050803(n+1))/A135784(n+1)` -/
def P16232657730926281244.Spec : Prop :=
  ∀ n, P16232657730926281244.a n = (A166265 (n + 1) : ℚ)

end A166265

/-! ## A166265.P3153342592202560955

`lt[0, A342154(n)]+1`
-/

namespace A166265.P3153342592202560955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166265.P3153342592202560955

namespace A166265

/-- `lt[0, A342154(n)]+1` -/
def P3153342592202560955.Spec : Prop :=
  ∀ n, (P3153342592202560955.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P4132919898131904951

`A008621(A339273(n+1))`
-/

namespace A166265.P4132919898131904951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A339273 (n + 1)).toNat

end

end A166265.P4132919898131904951

namespace A166265

/-- `A008621(A339273(n+1))` -/
def P4132919898131904951.Spec : Prop :=
  ∀ n, P4132919898131904951.a n = A166265 (n + 1)

end A166265

/-! ## A166265.P1931601487206239224

`lt[0, A084888(n)]+1`
-/

namespace A166265.P1931601487206239224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084888 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A166265.P1931601487206239224

namespace A166265

/-- `lt[0, A084888(n)]+1` -/
def P1931601487206239224.Spec : Prop :=
  ∀ n, (P1931601487206239224.a n : ℤ) = A166265 (n + 1)

end A166265

/-! ## A166265.P13800620481089065211

`A336725(∑[n+2])+1`
-/

namespace A166265.P13800620481089065211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336725 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A166265.P13800620481089065211

namespace A166265

/-- `A336725(∑[n+2])+1` -/
def P13800620481089065211.Spec : Prop :=
  ∀ n, P13800620481089065211.a n = A166265 (n + 1)

end A166265

/-!
# A166266: Number of 1's in binary expansion of A000110(n).

The programs for A166266, there is no canonical definition to state claims against.
-/

/-! ## A166266.P5797637790625989217

`∑{digits}[A287014(n), #]`
-/

namespace A166266.P5797637790625989217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A166266.P5797637790625989217

/-!
# A166267: Number of 1's in the binary representation of A000129(n).

The programs for A166267, there is no canonical definition to state claims against.
-/

/-! ## A166267.P16218873732580800016

`A000120(A052542(n)%A158676(n))`
-/

namespace A166267.P16218873732580800016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A052542 n) (A158676 n)).toNat

end

end A166267.P16218873732580800016

/-! ## A166267.P15690215737373856305

`A000120(A089499(n)%A158676(n))`
-/

namespace A166267.P15690215737373856305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A089499 n) (A158676 n)).toNat

end

end A166267.P15690215737373856305

/-! ## A166267.P10117383431295640553

`A000120(A163271(n+1)%A158676(n))`
-/

namespace A166267.P10117383431295640553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A163271 (n + 1)) (A158676 n)).toNat

end

end A166267.P10117383431295640553

/-! ## A166267.P9081467964713739243

`val(A001316(A000129(n)), 2)`
-/

namespace A166267.P9081467964713739243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A000129 n).toNat).toNat 2

end

end A166267.P9081467964713739243

/-! ## A166267.P5304025617383246473

`val(A001316(A089499(n)), 2)`
-/

namespace A166267.P5304025617383246473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A089499 n).toNat).toNat 2

end

end A166267.P5304025617383246473

/-!
# A166268: Bisection 2n of A166050.

The programs for A166268, there is no canonical definition to state claims against.
-/

/-! ## A166268.P6847153613869813557

`A165605(2*n)`
-/

namespace A166268.P6847153613869813557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165605 (2 * n)

end

end A166268.P6847153613869813557

/-! ## A166268.P4969293705738883295

`A166050(2*n)`
-/

namespace A166268.P4969293705738883295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 (2 * n)

end

end A166268.P4969293705738883295

/-! ## A166268.P9970079009986979072

`A166270(n)/2`
-/

namespace A166268.P9970079009986979072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166270 n : ℚ) / 2

end

end A166268.P9970079009986979072

/-! ## A166268.P2071553057987573821

`A165460(2*n)/2`
-/

namespace A166268.P2071553057987573821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165460 (2 * n) : ℚ) / 2

end

end A166268.P2071553057987573821

/-! ## A166268.P7776593847073626285

`A165601(6*n+1)`
-/

namespace A166268.P7776593847073626285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (6 * n + 1)

end

end A166268.P7776593847073626285

/-! ## A166268.P1724384482491689474

`A001281(A166270(n))`
-/

namespace A166268.P1724384482491689474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A166270 n).toNat

end

end A166268.P1724384482491689474

/-! ## A166268.P3410741918591581602

`A002265(2*A166270(n))`
-/

namespace A166268.P3410741918591581602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A166270 n).toNat

end

end A166268.P3410741918591581602

/-! ## A166268.P8209112207867288880

`A004526(A165460(2*n))`
-/

namespace A166268.P8209112207867288880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165460 (2 * n)).toNat

end

end A166268.P8209112207867288880

/-! ## A166268.P1157159863567528435

`A166270(n)-A166050(A005843(n))`
-/

namespace A166268.P1157159863567528435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166270 n - A166050 (A005843 n).toNat

end

end A166268.P1157159863567528435

/-! ## A166268.P11360706267108595244

`A110248(A017557(n))`
-/

namespace A166268.P11360706267108595244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A017557 n).toNat

end

end A166268.P11360706267108595244

/-! ## A166268.P14218560274275592754

`A110249(A316320(n+1))`
-/

namespace A166268.P14218560274275592754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110249 (A316320 (n + 1)).toNat

end

end A166268.P14218560274275592754

/-! ## A166268.P10588261437140979558

`A110248(A016921(2*n)+2)`
-/

namespace A166268.P10588261437140979558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A016921 (2 * n) + 2).toNat

end

end A166268.P10588261437140979558

/-! ## A166268.P997944951441453141

`A110248(A016969(2*n)-2)`
-/

namespace A166268.P997944951441453141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A016969 (2 * n) - 2).toNat

end

end A166268.P997944951441453141

/-! ## A166268.P4010819665935451457

`A110248(A101328(2*n+3)-2)`
-/

namespace A166268.P4010819665935451457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A101328 (2 * n + 3) - 2).toNat

end

end A166268.P4010819665935451457

/-! ## A166268.P7221533494653601999

`A372876(A135659(n))`
-/

namespace A166268.P7221533494653601999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A135659 n).toNat

end

end A166268.P7221533494653601999

/-!
# A166269: Bisection 2n+1 of A166050.

The programs for A166269, there is no canonical definition to state claims against.
-/

/-! ## A166269.P8192438178715436732

`A166050(Δ[n²])`
-/

namespace A166269.P8192438178715436732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166269.P8192438178715436732

/-! ## A166269.P9874186971086580056

`A165460(2*n+1)/(1-6/2)`
-/

namespace A166269.P9874186971086580056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165460 (2 * n + 1) : ℚ) / (1 - (6 : ℚ) / 2)

end

end A166269.P9874186971086580056

/-! ## A166269.P9976984720615305102

`A001057(A166271(n))`
-/

namespace A166269.P9976984720615305102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A166271 n).toNat

end

end A166269.P9976984720615305102

/-! ## A166269.P3235019300193457364

`A166711(A166273(n))`
-/

namespace A166269.P3235019300193457364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A166273 n).toNat

end

end A166269.P3235019300193457364

/-! ## A166269.P48778861853004143

`A166271(n)-A166273(n)`
-/

namespace A166269.P48778861853004143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166271 n - A166273 n

end

end A166269.P48778861853004143

/-! ## A166269.P3045890838024424222

`1-A004525(A166271(n)+2)`
-/

namespace A166269.P3045890838024424222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A004525 (A166271 n + 2).toNat

end

end A166269.P3045890838024424222

/-! ## A166269.P7728498663359586502

`A165460(2*n+1)-A166273(n)`
-/

namespace A166269.P7728498663359586502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 (2 * n + 1) - A166273 n

end

end A166269.P7728498663359586502

/-! ## A166269.P9778692751385343144

`A166271(n)-A165605(2*n+1)`
-/

namespace A166269.P9778692751385343144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166271 n - A165605 (2 * n + 1)

end

end A166269.P9778692751385343144

/-! ## A166269.P15292320861373028390

`A165460(2*n+1)-A165605(2*n+1)`
-/

namespace A166269.P15292320861373028390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 (2 * n + 1) - A165605 (2 * n + 1)

end

end A166269.P15292320861373028390

/-! ## A166269.P4166833424457428528

`A165460(2*n+1)-A165601(6*n+4)`
-/

namespace A166269.P4166833424457428528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 (2 * n + 1) - A165601 (6 * n + 4)

end

end A166269.P4166833424457428528

/-! ## A166269.P2878630013888681283

`2*A166050(2*n+1)-A166050(2*n+1)`
-/

namespace A166269.P2878630013888681283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166050 (2 * n + 1) - A166050 (2 * n + 1)

end

end A166269.P2878630013888681283

/-! ## A166269.P3406072488389453820

`A166273(n)/(A016777(n)-A016777(n+1))`
-/

namespace A166269.P3406072488389453820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166273 n : ℚ) / (A016777 n - A016777 (n + 1) : ℚ)

end

end A166269.P3406072488389453820

/-! ## A166269.P3209026912436541409

`A165605(2*n+1)/(A016777(2*n)-(6*n+4))`
-/

namespace A166269.P3209026912436541409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165605 (2 * n + 1) : ℚ) / (A016777 (2 * n) - (6 * n + 4 : ℤ) : ℚ)

end

end A166269.P3209026912436541409

/-! ## A166269.P3400096557827540367

`A166050(2*n+1)*A284620(2*(n+1))`
-/

namespace A166269.P3400096557827540367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 (2 * n + 1) * A284620 (2 * (n + 1))

end

end A166269.P3400096557827540367

/-! ## A166269.P3932720755422573765

`A004526(A165460(2*n+1))*A033999(2*n+1)`
-/

namespace A166269.P3932720755422573765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A165460 (2 * n + 1)).toNat * A033999 (2 * n + 1)

end

end A166269.P3932720755422573765

/-!
# A166270: Bisection 2n of A165460.

The programs for A166270, there is no canonical definition to state claims against.
-/

/-! ## A166270.P7525118599994264331

`A165460(2*n)`
-/

namespace A166270.P7525118599994264331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 (2 * n)

end

end A166270.P7525118599994264331

/-! ## A166270.P10964716524971078289

`2*A166268(n)`
-/

namespace A166270.P10964716524971078289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166268 n

end

end A166270.P10964716524971078289

/-! ## A166270.P14606280893875764186

`2*A165605(2*n)`
-/

namespace A166270.P14606280893875764186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165605 (2 * n)

end

end A166270.P14606280893875764186

/-! ## A166270.P5774998849446371840

`2*A166050(2*n)`
-/

namespace A166270.P5774998849446371840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166050 (2 * n)

end

end A166270.P5774998849446371840

/-! ## A166270.P8787359663446265906

`2*A165601(6*n+1)`
-/

namespace A166270.P8787359663446265906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165601 (6 * n + 1)

end

end A166270.P8787359663446265906

/-! ## A166270.P15215512720550923175

`A005843(A166268(n))`
-/

namespace A166270.P15215512720550923175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A166268 n).toNat

end

end A166270.P15215512720550923175

/-! ## A166270.P34392156342595104

`A005843(A165605(2*n))`
-/

namespace A166270.P34392156342595104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A165605 (2 * n)).toNat

end

end A166270.P34392156342595104

/-! ## A166270.P14007558511771123660

`A005843(A166050(2*n))`
-/

namespace A166270.P14007558511771123660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A166050 (2 * n)).toNat

end

end A166270.P14007558511771123660

/-! ## A166270.P15881916564755054131

`A005843(A165601(A016777(2*n)))`
-/

namespace A166270.P15881916564755054131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A165601 (A016777 (2 * n)).toNat).toNat

end

end A166270.P15881916564755054131

/-! ## A166270.P15046341910454808137

`2*A110248(A017557(n))`
-/

namespace A166270.P15046341910454808137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110248 (A017557 n).toNat

end

end A166270.P15046341910454808137

/-! ## A166270.P17261324242119879492

`A165604(A242215(n))`
-/

namespace A166270.P17261324242119879492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165604 (A242215 n).toNat

end

end A166270.P17261324242119879492

/-!
# A166271: Bisection 2n+1 of A165460.

The programs for A166271, there is no canonical definition to state claims against.
-/

/-! ## A166271.P5522534338011145848

`A165460(Δ[n²])`
-/

namespace A166271.P5522534338011145848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166271.P5522534338011145848

/-! ## A166271.P14833218420447567531

`abs(2*A166269(n))`
-/

namespace A166271.P14833218420447567531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A166269 n|

end

end A166271.P14833218420447567531

/-! ## A166271.P610360296976143899

`2/3*A166273(n)`
-/

namespace A166271.P610360296976143899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A166273 n : ℚ)

end

end A166271.P610360296976143899

/-! ## A166271.P17783246368171504198

`2*abs(A166050(Δ[n²]))`
-/

namespace A166271.P17783246368171504198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A166050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A166271.P17783246368171504198

/-! ## A166271.P7036735268409536945

`lcm(2, A165460(2*n+1))`
-/

namespace A166271.P7036735268409536945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A165460 (2 * n + 1))

end

end A166271.P7036735268409536945

/-! ## A166271.P18406667700842063193

`2/3*A165605(Δ[n²])`
-/

namespace A166271.P18406667700842063193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A165605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A166271.P18406667700842063193

/-! ## A166271.P6788315819741504312

`abs(2*A166050(2*n+1))`
-/

namespace A166271.P6788315819741504312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A166050 (2 * n + 1)|

end

end A166271.P6788315819741504312

/-! ## A166271.P7186465121880827035

`2*A165605(2*n+1)/3`
-/

namespace A166271.P7186465121880827035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A165605 (2 * n + 1) : ℚ) / 3)

end

end A166271.P7186465121880827035

/-! ## A166271.P13974787492954403402

`A004396(A166273(n))`
-/

namespace A166271.P13974787492954403402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A166273 n).toNat

end

end A166271.P13974787492954403402

/-! ## A166271.P4259444730231902029

`A166273(n)+A166269(n)`
-/

namespace A166271.P4259444730231902029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166273 n + A166269 n

end

end A166271.P4259444730231902029

/-! ## A166271.P12483697123233321141

`A166711(A166273(n)+1)-1`
-/

namespace A166271.P12483697123233321141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 (A166273 n + 1).toNat - 1

end

end A166271.P12483697123233321141

/-! ## A166271.P2674647000664754900

`A005843(1-A166269(n))-2`
-/

namespace A166271.P2674647000664754900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (1 - A166269 n).toNat - 2

end

end A166271.P2674647000664754900

/-! ## A166271.P14750114810112156216

`A005843(abs(A166050(2*n+1)))`
-/

namespace A166271.P14750114810112156216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A166050 (2 * n + 1)|.toNat

end

end A166271.P14750114810112156216

/-! ## A166271.P7944328963829808031

`A005843(-A166050(2*n+1))`
-/

namespace A166271.P7944328963829808031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (-A166050 (2 * n + 1)).toNat

end

end A166271.P7944328963829808031

/-! ## A166271.P18239767805013899659

`A166269(n)+A165605(2*n+1)`
-/

namespace A166271.P18239767805013899659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166269 n + A165605 (2 * n + 1)

end

end A166271.P18239767805013899659

/-! ## A166271.P7972995229121631666

`A166273(n)+A166050(2*n+1)`
-/

namespace A166271.P7972995229121631666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166273 n + A166050 (2 * n + 1)

end

end A166271.P7972995229121631666

/-! ## A166271.P11069723231084143768

`A166050(2*n+1)+A165605(2*n+1)`
-/

namespace A166271.P11069723231084143768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166050 (2 * n + 1) + A165605 (2 * n + 1)

end

end A166271.P11069723231084143768

/-!
# A166272: Numerator of A166100(A166101(n))/A166102(n).

The programs for A166272, there is no canonical definition to state claims against.
-/

/-! ## A166272.P18085949067541868802

`A166100(A166101(n+1))/A166104(n+1)²`
-/

namespace A166272.P18085949067541868802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 (A166101 (n + 1)).toNat : ℚ) / (A166104 (n + 1) ^ 2 : ℚ)

end

end A166272.P18085949067541868802

/-! ## A166272.P7273144410005941187

`A166100(A166101(n+1))/eq[2, A033716(n²)]²`
-/

namespace A166272.P7273144410005941187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 (A166101 (n + 1)).toNat : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 : ℚ)

end

end A166272.P7273144410005941187

/-! ## A166272.P14941939118284353132

`A166100(A166101(n+1))/eq[4, A217220(n²)]²`
-/

namespace A166272.P14941939118284353132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 (A166101 (n + 1)).toNat : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 : ℚ)

end

end A166272.P14941939118284353132

/-! ## A166272.P13885505818386987244

`A166100(floor(3/2*A166104(n+1)²))/A166104(n+1)²`
-/

namespace A166272.P13885505818386987244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 ⌊(3 : ℚ) / 2 * (A166104 (n + 1) ^ 2 : ℚ)⌋.toNat : ℚ) / (A166104 (n + 1) ^ 2 : ℚ)

end

end A166272.P13885505818386987244

/-! ## A166272.P17934297892246686783

`A166100((3*A166104(n+1)²-1)/2)/eq[2, A033716(n²)]²`
-/

namespace A166272.P17934297892246686783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 (SequenceMachineLib.roundAway ((3 * A166104 (n + 1) ^ 2 - 1 : ℚ) / 2)).toNat : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 : ℚ)

end

end A166272.P17934297892246686783

/-! ## A166272.P4722106470781124657

`A166100((3*A166104(n+1)²-1)/2)/eq[4, A217220(n²)]²`
-/

namespace A166272.P4722106470781124657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 (SequenceMachineLib.roundAway ((3 * A166104 (n + 1) ^ 2 - 1 : ℚ) / 2)).toNat : ℚ) / (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 : ℚ)

end

end A166272.P4722106470781124657

/-! ## A166272.P3509397856773656291

`A166100((3*A166104(n+1)²-1)/2)/record[(n+1)²*(-1)^n/A248909(n+1)]`
-/

namespace A166272.P3509397856773656291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (-1) ^ n : ℚ) / (A248909 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166100 (SequenceMachineLib.roundAway ((3 * A166104 (n + 1) ^ 2 - 1 : ℚ) / 2)).toNat : ℚ) / f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166272.P3509397856773656291

/-!
# A166273: Bisection 2n+1 of A165605.

The programs for A166273, there is no canonical definition to state claims against.
-/

/-! ## A166273.P948003002007789206

`A165605(Δ[n²])`
-/

namespace A166273.P948003002007789206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A166273.P948003002007789206

/-! ## A166273.P8455798090737016252

`abs(3*A166269(n))`
-/

namespace A166273.P8455798090737016252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A166269 n|

end

end A166273.P8455798090737016252

/-! ## A166273.P7580416388446970479

`3/2*A166271(n)`
-/

namespace A166273.P7580416388446970479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A166271 n : ℚ)

end

end A166273.P7580416388446970479

/-! ## A166273.P8714960283722739744

`A165601(6*n+4)`
-/

namespace A166273.P8714960283722739744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165601 (6 * n + 4)

end

end A166273.P8714960283722739744

/-! ## A166273.P13705496159381774160

`3*abs(A166050(Δ[n²]))`
-/

namespace A166273.P13705496159381774160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * |A166050 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A166273.P13705496159381774160

/-! ## A166273.P14840607091141163329

`lcm(3, A165605(2*n+1))`
-/

namespace A166273.P14840607091141163329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A165605 (2 * n + 1))

end

end A166273.P14840607091141163329

/-! ## A166273.P17605667961128418678

`3/2*A165460(Δ[n²])`
-/

namespace A166273.P17605667961128418678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A165460 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A166273.P17605667961128418678

/-! ## A166273.P17128656543762911512

`3*A165460(2*n+1)/2`
-/

namespace A166273.P17128656543762911512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A165460 (2 * n + 1) : ℚ) / 2)

end

end A166273.P17128656543762911512

/-! ## A166273.P14547082279020334404

`A006368(A166271(n))`
-/

namespace A166273.P14547082279020334404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A166271 n).toNat

end

end A166273.P14547082279020334404

/-! ## A166273.P6355404605649789798

`A166271(n)-A166269(n)`
-/

namespace A166273.P6355404605649789798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166271 n - A166269 n

end

end A166273.P6355404605649789798

/-! ## A166273.P3253871919778613741

`A008585(A165460(2*n+1)/2)`
-/

namespace A166273.P3253871919778613741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway ((A165460 (2 * n + 1) : ℚ) / 2)).toNat

end

end A166273.P3253871919778613741

/-! ## A166273.P13706633570661233469

`A165460(2*n+1)-A166269(n)`
-/

namespace A166273.P13706633570661233469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 (2 * n + 1) - A166269 n

end

end A166273.P13706633570661233469

/-! ## A166273.P10857473781635709408

`A166271(n)-A166050(2*n+1)`
-/

namespace A166273.P10857473781635709408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166271 n - A166050 (2 * n + 1)

end

end A166273.P10857473781635709408

/-! ## A166273.P16385479092731970185

`A165460(2*n+1)-A166050(2*n+1)`
-/

namespace A166273.P16385479092731970185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165460 (2 * n + 1) - A166050 (2 * n + 1)

end

end A166273.P16385479092731970185

/-! ## A166273.P13080139707627768517

`(A016777(n)-A016777(n+1))*A166269(n)`
-/

namespace A166273.P13080139707627768517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016777 n - A016777 (n + 1)) * A166269 n

end

end A166273.P13080139707627768517

/-! ## A166273.P3367349755021935163

`A110248(A017629(n))`
-/

namespace A166273.P3367349755021935163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110248 (A017629 n).toNat

end

end A166273.P3367349755021935163

/-! ## A166273.P7433768901292429064

`A372876(A350051(n))`
-/

namespace A166273.P7433768901292429064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372876 (A350051 n).toNat

end

end A166273.P7433768901292429064

/-!
# A166274: Positions of nonzero terms in A126441.

The programs for A166274, there is no canonical definition to state claims against.
-/

/-! ## A166274.P12021145138054529459

`lt[0, A126441(n)]`
-/

namespace A166274.P12021145138054529459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A166274.P12021145138054529459

/-! ## A166274.P8249865751242978626

`eq[0, A000007(2*A126441(n))]`
-/

namespace A166274.P8249865751242978626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * A126441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166274.P8249865751242978626

/-! ## A166274.P13895165740109618943

`eq[0, A000038(2*A126441(n))]`
-/

namespace A166274.P13895165740109618943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (2 * A126441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166274.P13895165740109618943

/-! ## A166274.P18108444231910715437

`eq[1, gcd(A126441(n), A128470(n))]`
-/

namespace A166274.P18108444231910715437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126441 n) (A128470 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166274.P18108444231910715437

/-! ## A166274.P7027332086095560355

`eq[0, A109578(2*A126441(n)+1)]`
-/

namespace A166274.P7027332086095560355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109578 (2 * A126441 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166274.P7027332086095560355

/-! ## A166274.P11388537965850966974

`eq[1, A000040(A126441(n)+1)%2]`
-/

namespace A166274.P11388537965850966974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A126441 n + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166274.P11388537965850966974

/-! ## A166274.P6365411156075536305

`eq[1, A000045(ceil(A126441(n)/(n+1)))]`
-/

namespace A166274.P6365411156075536305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(A126441 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166274.P6365411156075536305

/-! ## A166274.P11711381380423432193

`eq[2, A000010((ceil(A126441(n)/(n+1))+1)²)]`
-/

namespace A166274.P11711381380423432193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((⌈(A126441 n : ℚ) / (n + 1 : ℚ)⌉ + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166274.P11711381380423432193

/-! ## A166274.P12099143995818124571

`eq[A033999(n), A062157(A126441(n))]`
-/

namespace A166274.P12099143995818124571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A126441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166274.P12099143995818124571

/-! ## A166274.P1085078671692471531

`eq[A040002(n), A151798(A126441(n))]`
-/

namespace A166274.P1085078671692471531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 (A126441 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A166274.P1085078671692471531

/-!
# A166275: Positions of zeros in A126441.

The programs for A166275, there is no canonical definition to state claims against.
-/

/-! ## A166275.P13266394249759003717

`eq[0, A126441(n)]`
-/

namespace A166275.P13266394249759003717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A166275.P13266394249759003717

/-! ## A166275.P5703077342200977215

`comp[A166274(n+1)]`
-/

namespace A166275.P5703077342200977215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A166275.P5703077342200977215

/-! ## A166275.P3925842611869902540

`lt[A126441(n+1), 1]+1`
-/

namespace A166275.P3925842611869902540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A166275.P3925842611869902540

/-! ## A166275.P2689729384246299592

`lt[A126441(gcd(n, C(2, n))), 1]`
-/

namespace A166275.P2689729384246299592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 (Nat.gcd n (Nat.choose 2 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166275.P2689729384246299592

/-! ## A166275.P7887709193618323971

`record[n+5-A126441(n+5)]`
-/

namespace A166275.P7887709193618323971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A126441 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A166275.P7887709193618323971

/-! ## A166275.P13987050238007412872

`A000027(lt[A126441(n), 1])`
-/

namespace A166275.P13987050238007412872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126441 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A166275.P13987050238007412872

/-! ## A166275.P13632245385190554981

`lt[A001221(A126441(n)+1), 1]`
-/

namespace A166275.P13632245385190554981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A126441 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166275.P13632245385190554981

/-! ## A166275.P15085275299052873939

`lt[A000040(A126441(n)+1), 3]`
-/

namespace A166275.P15085275299052873939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A126441 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A166275.P15085275299052873939

/-!
# A166278: Square array A(n,k), n,k>=0, read by antidiagonals: A(n,k) is the total element sum of the k-fold f transform applied to the length n sequence of 1's. And f returns a sorted result after multiplying the elements in its input sequence with 1, 2, 3,... in descending size order.

The programs for A166278, there is no canonical definition to state claims against.
-/

/-! ## A166278.P2774488037671250751

`A139600(n)+A025465(A118190(n))`
-/

namespace A166278.P2774488037671250751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + A025465 (A118190 n).toNat

end

end A166278.P2774488037671250751

/-! ## A166278.P12267811633879731683

`A139600(n)+A016389(A174545(n))`
-/

namespace A166278.P12267811633879731683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + A016389 (A174545 n).toNat

end

end A166278.P12267811633879731683

/-! ## A166278.P9961990898395691295

`A139600(n)+A127708(A225910(n))`
-/

namespace A166278.P9961990898395691295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 n + A127708 (A225910 n).toNat

end

end A166278.P9961990898395691295

/-! ## A166278.P15923403931646240477

`A317302(A185036(n))+A139600(n)`
-/

namespace A166278.P15923403931646240477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317302 (A185036 n).toNat + A139600 n

end

end A166278.P15923403931646240477

/-! ## A166278.P1800107341397733652

`A348452(A367397(n+5))+A139600(n)`
-/

namespace A166278.P1800107341397733652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348452 (A367397 (n + 5)).toNat + A139600 n

end

end A166278.P1800107341397733652

/-!
# A166279: Triangle, read by rows: T(0,0) = 1, T(n,k) = T(n-1,k-1) (mod 2) + T(n-1,k) (mod 2), T(n,k) = 0 if k < 0 or k > n.

The programs for A166279, the canonical program `A166279.P16082615097360894469` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166279 has offset 0).

The definition of A166279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166279.P2202427805732633267

`5%(T(n-1,k)+T(n-1,k-1)+1)` with `a(0)=1`
-/

namespace A166279.P2202427805732633267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 % (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n + 1)

end

end A166279.P2202427805732633267

namespace A166279

/-- `5%(T(n-1,k)+T(n-1,k-1)+1)` -/
def P2202427805732633267.Spec : Prop :=
  ∀ n, (P2202427805732633267.a n : ℤ) = A166279 n

end A166279

/-! ## A166279.P8178794023190671399

`C(2, xor(3, T(n-1,k-1)+T(n-1,k)))` with `a(0)=1, a(1)=1`
-/

namespace A166279.P8178794023190671399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose 2 (Nat.xor 3 (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n))

end

end A166279.P8178794023190671399

namespace A166279

/-- `C(2, xor(3, T(n-1,k-1)+T(n-1,k)))` -/
def P8178794023190671399.Spec : Prop :=
  ∀ n, (P8178794023190671399.a n : ℤ) = A166279 n

end A166279

/-! ## A166279.P15946636626583406777

`T(2, T(n-1,k-1)+T(n-1,k)-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A166279.P15946636626583406777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  SequenceMachineLib.triAt a 2 ((SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n : ℤ) - 1)

end

end A166279.P15946636626583406777

namespace A166279

/-- `T(2, T(n-1,k-1)+T(n-1,k)-1)` -/
def P15946636626583406777.Spec : Prop :=
  ∀ n, (P15946636626583406777.a n : ℤ) = A166279 n

end A166279

/-! ## A166279.P16082615097360894469

`(2-T(n-1,k-1))*T(n-1,k-1)+(2-T(n-1,k))*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A166279

/-- `(2-T(n-1,k-1))*T(n-1,k-1)+(2-T(n-1,k))*T(n-1,k)` -/
def P16082615097360894469.Spec : Prop :=
  ∀ n, P16082615097360894469.a n = A166279 n

theorem P16082615097360894469.correct : P16082615097360894469.Spec := by
  intro n
  simp only [A166279]

end A166279

/-! ## A166279.P18004050209915772493

`(2-T(n-1,k))*T(n-1,k)-(T(n-1,k-1)-2)*T(n-1,k-1)` with `a(0)=1`
-/

namespace A166279.P18004050209915772493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 - SequenceMachineLib.triUp a n) * SequenceMachineLib.triUp a n - (SequenceMachineLib.triUpLeft a n - 2) * SequenceMachineLib.triUpLeft a n

end

end A166279.P18004050209915772493

namespace A166279

/-- `(2-T(n-1,k))*T(n-1,k)-(T(n-1,k-1)-2)*T(n-1,k-1)` -/
def P18004050209915772493.Spec : Prop :=
  ∀ n, P18004050209915772493.a n = A166279 n

end A166279

/-! ## A166279.P11497540304441475044

`A160114(T(n-1,k-1)+T(n-1,k))` with `a(0)=1`
-/

namespace A166279.P11497540304441475044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160114 (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n).toNat

end

end A166279.P11497540304441475044

namespace A166279

/-- `A160114(T(n-1,k-1)+T(n-1,k))` -/
def P11497540304441475044.Spec : Prop :=
  ∀ n, P11497540304441475044.a n = A166279 n

end A166279

/-! ## A166279.P17079277451425970582

`A065363((T(n-1,k)+T(n-1,k-1))²)` with `a(0)=1`
-/

namespace A166279.P17079277451425970582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065363 ((SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) ^ 2).toNat

end

end A166279.P17079277451425970582

namespace A166279

/-- `A065363((T(n-1,k)+T(n-1,k-1))²)` -/
def P17079277451425970582.Spec : Prop :=
  ∀ n, P17079277451425970582.a n = A166279 n

end A166279

/-! ## A166279.P1174983097959692951

`col(A173511(T(n-1,k)+T(n-1,k-1)))` with `a(0)=1`
-/

namespace A166279.P1174983097959692951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triCol (A173511 (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)).toNat

end

end A166279.P1174983097959692951

namespace A166279

/-- `col(A173511(T(n-1,k)+T(n-1,k-1)))` -/
def P1174983097959692951.Spec : Prop :=
  ∀ n, (P1174983097959692951.a n : ℤ) = A166279 n

end A166279

/-! ## A166279.P15682114532802460106

`A105198((T(n-1,k)+T(n-1,k-1))²)` with `a(0)=1, a(1)=1`
-/

namespace A166279.P15682114532802460106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A105198 ((SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) ^ 2).toNat

end

end A166279.P15682114532802460106

namespace A166279

/-- `A105198((T(n-1,k)+T(n-1,k-1))²)` -/
def P15682114532802460106.Spec : Prop :=
  ∀ n, P15682114532802460106.a n = A166279 n

end A166279

/-! ## A166279.P17733477796968459603

`gcd(1-A219463(n), and(3, T(n-1,k)+T(n-1,k-1)))` with `a(0)=1`
-/

namespace A166279.P17733477796968459603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (1 - A219463 n) (Nat.land 3 (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) : ℤ)

end

end A166279.P17733477796968459603

namespace A166279

/-- `gcd(1-A219463(n), and(3, T(n-1,k)+T(n-1,k-1)))` -/
def P17733477796968459603.Spec : Prop :=
  ∀ n, (P17733477796968459603.a n : ℤ) = A166279 n

end A166279

/-! ## A166279.P355999129201459595

`A307433(n)%4`
-/

namespace A166279.P355999129201459595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307433 n) 4

end

end A166279.P355999129201459595

namespace A166279

/-- `A307433(n)%4` -/
def P355999129201459595.Spec : Prop :=
  ∀ n, P355999129201459595.a n = A166279 n

end A166279

/-! ## A166279.P12477783149844739303

`A130706(val(A307433(n), 2))`
-/

namespace A166279.P12477783149844739303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (SequenceMachineLib.valuation (A307433 n).toNat 2)

end

end A166279.P12477783149844739303

namespace A166279

/-- `A130706(val(A307433(n), 2))` -/
def P12477783149844739303.Spec : Prop :=
  ∀ n, P12477783149844739303.a n = A166279 n

end A166279

/-! ## A166279.P10099887037605628683

`A002251(C(2, A307433(n)))`
-/

namespace A166279.P10099887037605628683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (Nat.choose 2 (A307433 n).toNat)

end

end A166279.P10099887037605628683

namespace A166279

/-- `A002251(C(2, A307433(n)))` -/
def P10099887037605628683.Spec : Prop :=
  ∀ n, P10099887037605628683.a n = A166279 n

end A166279

/-! ## A166279.P15436889135790616297

`and(3, A307433(A028310(n)))`
-/

namespace A166279.P15436889135790616297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A307433 (A028310 n).toNat)

end

end A166279.P15436889135790616297

namespace A166279

/-- `and(3, A307433(A028310(n)))` -/
def P15436889135790616297.Spec : Prop :=
  ∀ n, P15436889135790616297.a n = A166279 n

end A166279

/-! ## A166279.P4579602810785218463

`A103609(C(4, A307433(n)))`
-/

namespace A166279.P4579602810785218463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (Nat.choose 4 (A307433 n).toNat)

end

end A166279.P4579602810785218463

namespace A166279

/-- `A103609(C(4, A307433(n)))` -/
def P4579602810785218463.Spec : Prop :=
  ∀ n, P4579602810785218463.a n = A166279 n

end A166279

/-! ## A166279.P16817286664423220141

`and(A060296(n), A307433(n))`
-/

namespace A166279.P16817286664423220141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060296 n) (A307433 n)

end

end A166279.P16817286664423220141

namespace A166279

/-- `and(A060296(n), A307433(n))` -/
def P16817286664423220141.Spec : Prop :=
  ∀ n, P16817286664423220141.a n = A166279 n

end A166279

/-! ## A166279.P6877127452283797041

`and(A122553(n), A307433(n))`
-/

namespace A166279.P6877127452283797041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A307433 n)

end

end A166279.P6877127452283797041

namespace A166279

/-- `and(A122553(n), A307433(n))` -/
def P6877127452283797041.Spec : Prop :=
  ∀ n, P6877127452283797041.a n = A166279 n

end A166279

/-! ## A166279.P7986236263014649834

`and(A157532(n+2), A307433(n))`
-/

namespace A166279.P7986236263014649834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157532 (n + 2)) (A307433 n)

end

end A166279.P7986236263014649834

namespace A166279

/-- `and(A157532(n+2), A307433(n))` -/
def P7986236263014649834.Spec : Prop :=
  ∀ n, P7986236263014649834.a n = A166279 n

end A166279

/-! ## A166279.P9360613459457501540

`and(A020639(A307433(n)+2), A307433(n))`
-/

namespace A166279.P9360613459457501540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A307433 n + 2).toNat) (A307433 n)

end

end A166279.P9360613459457501540

namespace A166279

/-- `and(A020639(A307433(n)+2), A307433(n))` -/
def P9360613459457501540.Spec : Prop :=
  ∀ n, P9360613459457501540.a n = A166279 n

end A166279

/-! ## A166279.P13728983974170187403

`A000095(A307433(n))`
-/

namespace A166279.P13728983974170187403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A307433 n).toNat

end

end A166279.P13728983974170187403

namespace A166279

/-- `A000095(A307433(n))` -/
def P13728983974170187403.Spec : Prop :=
  ∀ n, P13728983974170187403.a n = A166279 n

end A166279

/-!
# A166280: Stirling2 triangle mod 2, T(n,k) = A008277(n,k) mod 2.

The programs for A166280, the canonical program `A166280.P18195190870057077786` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166280 has offset 0).

The definition of A166280 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008277, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A166280.P18195190870057077786

`A008277(C(row(n)+1, 2)+col(n)+1)%2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A166280

/-- `A008277(C(row(n)+1, 2)+col(n)+1)%2` -/
def P18195190870057077786.Spec : Prop :=
  ∀ n, P18195190870057077786.a n = A166280 n

theorem P18195190870057077786.correct : P18195190870057077786.Spec := by
  intro n
  simp only [A166280]

end A166280

/-! ## A166280.P12916506399172020108

`(col(n+1)*T(n-1,k)+T(n-1,k-1))%2` with `a(0)=1`
-/

namespace A166280.P12916506399172020108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triCol (n + 1) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) % 2

end

end A166280.P12916506399172020108

namespace A166280

/-- `(col(n+1)*T(n-1,k)+T(n-1,k-1))%2` -/
def P12916506399172020108.Spec : Prop :=
  ∀ n, (P12916506399172020108.a n : ℤ) = A166280 n

end A166280

/-! ## A166280.P14613086832706566611

`and(1, col(n+1)*T(n-1,k)+T(n-1,k-1))` with `a(0)=1`
-/

namespace A166280.P14613086832706566611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (SequenceMachineLib.triCol (n + 1) * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n)

end

end A166280.P14613086832706566611

namespace A166280

/-- `and(1, col(n+1)*T(n-1,k)+T(n-1,k-1))` -/
def P14613086832706566611.Spec : Prop :=
  ∀ n, (P14613086832706566611.a n : ℤ) = A166280 n

end A166280

/-! ## A166280.P4747397753903735716

`C(2*row(n)-col(n), col(n))%2`
-/

namespace A166280.P4747397753903735716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n) % 2

end

end A166280.P4747397753903735716

namespace A166280

/-- `C(2*row(n)-col(n), col(n))%2` -/
def P4747397753903735716.Spec : Prop :=
  ∀ n, (P4747397753903735716.a n : ℤ) = A166280 n

end A166280

/-! ## A166280.P11517347366622974883

`1-T(col(n), (T(n-1,k)+2)*T(n-1,k)-T(n-1,k-1))` with `a(0)=1`
-/

namespace A166280.P11517347366622974883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triAt a (SequenceMachineLib.triCol n : ℤ) ((SequenceMachineLib.triUp a n + 2) * SequenceMachineLib.triUp a n - SequenceMachineLib.triUpLeft a n)

end

end A166280.P11517347366622974883

namespace A166280

/-- `1-T(col(n), (T(n-1,k)+2)*T(n-1,k)-T(n-1,k-1))` -/
def P11517347366622974883.Spec : Prop :=
  ∀ n, P11517347366622974883.a n = A166280 n

end A166280

/-! ## A166280.P534353759352756527

`val(((col(n)+1)*T(n-1,k)-T(n-1,k-1))²+1, 2)` with `a(0)=1`
-/

namespace A166280.P534353759352756527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.valuation ((((SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUp a n : ℤ) - ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)) ^ 2 + 1).toNat 2

end

end A166280.P534353759352756527

namespace A166280

/-- `val(((col(n)+1)*T(n-1,k)-T(n-1,k-1))²+1, 2)` -/
def P534353759352756527.Spec : Prop :=
  ∀ n, (P534353759352756527.a n : ℤ) = A166280 n

end A166280

/-! ## A166280.P11612552870050426417

`(T(row(n)-2, col(n)-2)-T(n-1,k))*(T(row(n)-2, col(n)-2)-T(n-1,k))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A166280.P11612552870050426417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) - SequenceMachineLib.triUp a n)

end

end A166280.P11612552870050426417

namespace A166280

/-- `(T(row(n)-2, col(n)-2)-T(n-1,k))*(T(row(n)-2, col(n)-2)-T(n-1,k))` -/
def P11612552870050426417.Spec : Prop :=
  ∀ n, P11612552870050426417.a n = A166280 n

end A166280

/-! ## A166280.P7664272695179766507

`A054142(n)%2`
-/

namespace A166280.P7664272695179766507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054142 n) 2

end

end A166280.P7664272695179766507

namespace A166280

/-- `A054142(n)%2` -/
def P7664272695179766507.Spec : Prop :=
  ∀ n, P7664272695179766507.a n = A166280 n

end A166280

/-! ## A166280.P7166752800280659136

`A065941(n)%2`
-/

namespace A166280.P7166752800280659136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065941 n) 2

end

end A166280.P7166752800280659136

namespace A166280

/-- `A065941(n)%2` -/
def P7166752800280659136.Spec : Prop :=
  ∀ n, P7166752800280659136.a n = A166280 n

end A166280

/-! ## A166280.P17293693232926490665

`A082985(n)%2`
-/

namespace A166280.P17293693232926490665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082985 n) 2

end

end A166280.P17293693232926490665

namespace A166280

/-- `A082985(n)%2` -/
def P17293693232926490665.Spec : Prop :=
  ∀ n, P17293693232926490665.a n = A166280 n

end A166280

/-! ## A166280.P7022832408724588874

`A131299(n)%2`
-/

namespace A166280.P7022832408724588874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131299 n) 2

end

end A166280.P7022832408724588874

namespace A166280

/-- `A131299(n)%2` -/
def P7022832408724588874.Spec : Prop :=
  ∀ n, P7022832408724588874.a n = A166280 n

end A166280

/-! ## A166280.P11141368831095344110

`A131767(n)%2`
-/

namespace A166280.P11141368831095344110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131767 n) 2

end

end A166280.P11141368831095344110

namespace A166280

/-- `A131767(n)%2` -/
def P11141368831095344110.Spec : Prop :=
  ∀ n, P11141368831095344110.a n = A166280 n

end A166280

/-! ## A166280.P13883667842332311787

`and(1, A076756(n))`
-/

namespace A166280.P13883667842332311787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A076756 n)

end

end A166280.P13883667842332311787

namespace A166280

/-- `and(1, A076756(n))` -/
def P13883667842332311787.Spec : Prop :=
  ∀ n, P13883667842332311787.a n = A166280 n

end A166280

/-! ## A166280.P15298192759991270700

`and(1, A108299(n))`
-/

namespace A166280.P15298192759991270700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A108299 n)

end

end A166280.P15298192759991270700

namespace A166280

/-- `and(1, A108299(n))` -/
def P15298192759991270700.Spec : Prop :=
  ∀ n, P15298192759991270700.a n = A166280 n

end A166280

/-! ## A166280.P4262369244910299139

`A304972(n+1)%2`
-/

namespace A166280.P4262369244910299139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304972 (n + 1)) 2

end

end A166280.P4262369244910299139

namespace A166280

/-- `A304972(n+1)%2` -/
def P4262369244910299139.Spec : Prop :=
  ∀ n, P4262369244910299139.a n = A166280 n

end A166280

/-! ## A166280.P8390510809334397757

`and(1, A131777(n+1))`
-/

namespace A166280.P8390510809334397757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A131777 (n + 1))

end

end A166280.P8390510809334397757

namespace A166280

/-- `and(1, A131777(n+1))` -/
def P8390510809334397757.Spec : Prop :=
  ∀ n, P8390510809334397757.a n = A166280 n

end A166280

/-! ## A166280.P17944971849964093074

`and(1, A140068(n+1))`
-/

namespace A166280.P17944971849964093074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A140068 (n + 1))

end

end A166280.P17944971849964093074

namespace A166280

/-- `and(1, A140068(n+1))` -/
def P17944971849964093074.Spec : Prop :=
  ∀ n, P17944971849964093074.a n = A166280 n

end A166280

/-! ## A166280.P17952759636010622385

`and(1, A039961(n+2))`
-/

namespace A166280.P17952759636010622385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A039961 (n + 2))

end

end A166280.P17952759636010622385

namespace A166280

/-- `and(1, A039961(n+2))` -/
def P17952759636010622385.Spec : Prop :=
  ∀ n, P17952759636010622385.a n = A166280 n

end A166280

/-! ## A166280.P10581424390353775822

`and(A001222(A093074(n+2)), A065941(n))`
-/

namespace A166280.P10581424390353775822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001222 (A093074 (n + 2)).toNat) (A065941 n)

end

end A166280.P10581424390353775822

namespace A166280

/-- `and(A001222(A093074(n+2)), A065941(n))` -/
def P10581424390353775822.Spec : Prop :=
  ∀ n, P10581424390353775822.a n = A166280 n

end A166280

/-! ## A166280.P7603532989527033735

`A213061(A014132(n+1))`
-/

namespace A166280.P7603532989527033735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213061 (A014132 (n + 1)).toNat

end

end A166280.P7603532989527033735

namespace A166280

/-- `A213061(A014132(n+1))` -/
def P7603532989527033735.Spec : Prop :=
  ∀ n, P7603532989527033735.a n = A166280 n

end A166280

/-!
# A166281: Number of ordered factorizations of the nonprimes (A018252).

The programs for A166281, there is no canonical definition to state claims against.
-/

/-! ## A166281.P624291251927086784

`A074206(A018252(n+1))`
-/

namespace A166281.P624291251927086784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A018252 (n + 1)).toNat

end

end A166281.P624291251927086784

/-! ## A166281.P14540717564312402793

`A002033(A018252(n+1)-1)`
-/

namespace A166281.P14540717564312402793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A018252 (n + 1) - 1).toNat

end

end A166281.P14540717564312402793

/-! ## A166281.P8076771295684806620

`A074206(comp[p?[xor(1, n)+1]-1]+1)`
-/

namespace A166281.P8076771295684806620
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A166281.P8076771295684806620

/-! ## A166281.P1505402068116467862

`A074206(Δ[A051349(n)])`
-/

namespace A166281.P1505402068116467862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (f1 (n + 1) - f1 n).toNat

end

end A166281.P1505402068116467862

/-! ## A166281.P6690358679782607261

`A074206(A083256(n+1))`
-/

namespace A166281.P6690358679782607261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A083256 (n + 1)).toNat

end

end A166281.P6690358679782607261

/-! ## A166281.P15583422639990819998

`A074206(A083257(n+1))`
-/

namespace A166281.P15583422639990819998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A083257 (n + 1)).toNat

end

end A166281.P15583422639990819998

/-! ## A166281.P8970499947270431968

`A074206(A141468(n+2))`
-/

namespace A166281.P8970499947270431968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A141468 (n + 2)).toNat

end

end A166281.P8970499947270431968

/-! ## A166281.P6508795888957837996

`A074206(A065090(n+2))`
-/

namespace A166281.P6508795888957837996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A065090 (n + 2)).toNat

end

end A166281.P6508795888957837996

/-! ## A166281.P10417188359922971926

`A002033(comp[p?[a(n-1)+2]-1])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A166281.P10417188359922971926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A166281.P10417188359922971926

/-! ## A166281.P15183637937147844499

`A002033(A060462(n+1))`
-/

namespace A166281.P15183637937147844499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A060462 (n + 1)).toNat

end

end A166281.P15183637937147844499

/-!
# A166282: Matrix inverse of Sierpinski's triangle (A047999, Pascal's triangle mod 2).

The programs for A166282, the canonical program `A166282.P3565531868312319310` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166282 has offset 0).

The definition of A166282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166282.P10691560170450698884

`A004718(A166453(n))`
-/

namespace A166282.P10691560170450698884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A166453 n).toNat

end

end A166282.P10691560170450698884

namespace A166282

/-- `A004718(A166453(n))` -/
def P10691560170450698884.Spec : Prop :=
  ∀ n, P10691560170450698884.a n = A166282 n

end A166282

/-! ## A166282.P3565531868312319310

`2*A047999(n)-A167274(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A166282

/-- `2*A047999(n)-A167274(n)` -/
def P3565531868312319310.Spec : Prop :=
  ∀ n, P3565531868312319310.a n = A166282 n

theorem P3565531868312319310.correct : P3565531868312319310.Spec := by
  intro n
  simp only [A166282]

end A166282

/-! ## A166282.P13165015231165059298

`floor(tan(and(3, A055133(n))))`
-/

namespace A166282.P13165015231165059298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (Int.land 3 (A055133 n) : ℝ)⌋

end

end A166282.P13165015231165059298

namespace A166282

/-- `floor(tan(and(3, A055133(n))))` -/
def P13165015231165059298.Spec : Prop :=
  ∀ n, P13165015231165059298.a n = A166282 n

end A166282

/-! ## A166282.P354481648164290804

`Δ[A060154(n+1)]^A139250(n)`
-/

namespace A166282.P354481648164290804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A139250 n : ℤ)

end

end A166282.P354481648164290804

namespace A166282

/-- `Δ[A060154(n+1)]^A139250(n)` -/
def P354481648164290804.Spec : Prop :=
  ∀ n, P354481648164290804.a n = (A166282 n : ℚ)

end A166282

/-! ## A166282.P1831336814429146615

`Δ[A060154(n+1)]^A139843(n+1)`
-/

namespace A166282.P1831336814429146615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060154 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A139843 (n + 1) : ℤ)

end

end A166282.P1831336814429146615

namespace A166282

/-- `Δ[A060154(n+1)]^A139843(n+1)` -/
def P1831336814429146615.Spec : Prop :=
  ∀ n, P1831336814429146615.a n = (A166282 n : ℚ)

end A166282

/-!
# A166283: Primes such that the concatenation of its index and itself is a prime.

The programs for A166283, there is no canonical definition to state claims against.
-/

/-! ## A166283.P7088210297713057810

`A000040(∪[A154963(n+1), A154965(n+1)])`
-/

namespace A166283.P7088210297713057810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154965 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A166283.P7088210297713057810

/-! ## A166283.P4749977121342577469

`∪[A155032(n+1), A155036(n+1)]`
-/

namespace A166283.P4749977121342577469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A166283.P4749977121342577469

/-! ## A166283.P2994920495944686368

`p?[A000040(n+1)*A001222(A045532(n+1))]`
-/

namespace A166283.P2994920495944686368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A045532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166283.P2994920495944686368

/-! ## A166283.P9343801900474257052

`p?[A001222(A045532(n+1))*A008578(n+2)]`
-/

namespace A166283.P9343801900474257052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045532 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166283.P9343801900474257052

/-! ## A166283.P749533821304515872

`p?[(A006093(n+1)+1)*A001222(A045532(n+1))]`
-/

namespace A166283.P749533821304515872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A001222 (A045532 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166283.P749533821304515872

/-!
# A166286: Number of Dyck paths with no UUU's and no DDD's, of semilength n having no peak plateaux (U=(1,1), D=(1,-1)).

The programs for A166286, there is no canonical definition to state claims against.
-/

/-! ## A166286.P17836245926601845803

`Δ[A098051(n)]+1`
-/

namespace A166286.P17836245926601845803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A166286.P17836245926601845803

/-! ## A166286.P4283551358938796630

`Δ[A098051(n)-A001489(n)]`
-/

namespace A166286.P4283551358938796630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 n - A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166286.P4283551358938796630

/-! ## A166286.P17129144531481228515

`Δ[A098051(n)-A022961(n)]`
-/

namespace A166286.P17129144531481228515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 n - A022961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166286.P17129144531481228515

/-! ## A166286.P10242872768148733630

`Δ[A098051(n)-A022985(n)]`
-/

namespace A166286.P10242872768148733630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 n - A022985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166286.P10242872768148733630

/-! ## A166286.P6324723023105688435

`A098051(n+1)+1-A098051(n)`
-/

namespace A166286.P6324723023105688435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098051 (n + 1) + 1 - A098051 n

end

end A166286.P6324723023105688435

/-!
# A166287: Number of peak plateaux in all Dyck paths of semilength n with no UUU's and no DDD's (U=(1,1), D=(1,-1)).

The programs for A166287, the canonical program `A166287.P5069294354886475946` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166287 has offset 0).

The definition of A166287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166287.P8458797382053323280

`∑[A051292(n)%A203611(n)]`
-/

namespace A166287.P8458797382053323280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051292 n) (A203611 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166287.P8458797382053323280

namespace A166287

/-- `∑[A051292(n)%A203611(n)]` -/
def P8458797382053323280.Spec : Prop :=
  ∀ n, P8458797382053323280.a n = A166287 n

end A166287

/-! ## A166287.P18333436432621889802

`∑[A167636(1+n)]-A167639(n)`
-/

namespace A166287.P18333436432621889802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167636 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167639 n

end

end A166287.P18333436432621889802

namespace A166287

/-- `∑[A167636(1+n)]-A167639(n)` -/
def P18333436432621889802.Spec : Prop :=
  ∀ n, P18333436432621889802.a n = A166287 n

end A166287

/-! ## A166287.P5069294354886475946

`A081207(n)-∑[A203611(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A166287

/-- `A081207(n)-∑[A203611(n)]` -/
def P5069294354886475946.Spec : Prop :=
  ∀ n, P5069294354886475946.a n = A166287 n

theorem P5069294354886475946.correct : P5069294354886475946.Spec := by
  intro n
  simp only [A166287]

end A166287

/-! ## A166287.P12508470395536002837

`∑[A051286(n)-A088518(A004273(n))]`
-/

namespace A166287.P12508470395536002837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051286 n - A088518 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166287.P12508470395536002837

namespace A166287

/-- `∑[A051286(n)-A088518(A004273(n))]` -/
def P12508470395536002837.Spec : Prop :=
  ∀ n, P12508470395536002837.a n = A166287 n

end A166287

/-! ## A166287.P13643493485669185863

`A081207(n)-∑[A079487(A001105(n))]`
-/

namespace A166287.P13643493485669185863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A001105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081207 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166287.P13643493485669185863

namespace A166287

/-- `A081207(n)-∑[A079487(A001105(n))]` -/
def P13643493485669185863.Spec : Prop :=
  ∀ n, P13643493485669185863.a n = A166287 n

end A166287

/-! ## A166287.P10044377280987447355

`A091964(n)-∑[A079487(A001844(n))]`
-/

namespace A166287.P10044377280987447355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166287.P10044377280987447355

namespace A166287

/-- `A091964(n)-∑[A079487(A001844(n))]` -/
def P10044377280987447355.Spec : Prop :=
  ∀ n, P10044377280987447355.a n = A166287 n

end A166287

/-!
# A166288: Triangle read by rows: T(n,k) is the number of Dyck paths with no UUU's and no DDD's, of semilength n and having k UDUD's (0<=k <= n-1; U=(1,1), D=(1,-1)).

The programs for A166288, there is no canonical definition to state claims against.
-/

/-! ## A166288.P14321006945259719726

`A338138(A130749(n+1))`
-/

namespace A166288.P14321006945259719726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338138 (A130749 (n + 1)).toNat

end

end A166288.P14321006945259719726

/-! ## A166288.P5851489828022841002

`A117728(A218577(n+2))`
-/

namespace A166288.P5851489828022841002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117728 (A218577 (n + 2)).toNat

end

end A166288.P5851489828022841002

/-! ## A166288.P1282927719394291471

`A235402(A251634(n)+A038207(n))`
-/

namespace A166288.P1282927719394291471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A251634 n + A038207 n).toNat

end

end A166288.P1282927719394291471

/-! ## A166288.P13317080017420064326

`A178616(A152151(n))+A136688(n+1)`
-/

namespace A166288.P13317080017420064326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178616 (A152151 n).toNat + A136688 (n + 1)

end

end A166288.P13317080017420064326

/-! ## A166288.P8477804496693068487

`A185204(A262066(n))+A091867(n)`
-/

namespace A166288.P8477804496693068487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185204 (A262066 n).toNat + A091867 n

end

end A166288.P8477804496693068487

/-!
# A166289: Number of Dyck paths with no UUU's and no DDD's, of semilength n and having no UDUD's (U=(1,1), D=(1,-1)).

The programs for A166289, there is no canonical definition to state claims against.
-/

/-! ## A166289.P5052967946904172539

`A166288(∑[abs(1-n)])`
-/

namespace A166289.P5052967946904172539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166288 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166289.P5052967946904172539

/-! ## A166289.P8365190210282320753

`∑[A028310(A025250(n+3))-A025250(n+1)]`
-/

namespace A166289.P8365190210282320753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A025250 (n + 3)).toNat - A025250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A166289.P8365190210282320753

/-!
# A166290: Number of UDUD's in all Dyck paths of semilength n with no UUU's and no DDD's (U=(1,1), D=(1,-1)).

The programs for A166290, the canonical program `A166290.P4762917797999261548` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A166290 has offset 0).

The definition of A166290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 243 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A166290.P4762917797999261548

`A110320(A028310(n))-A004148(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A166290

/-- `A110320(A028310(n))-A004148(n)` -/
def P4762917797999261548.Spec : Prop :=
  ∀ n, P4762917797999261548.a n = A166290 n

theorem P4762917797999261548.correct : P4762917797999261548.Spec := by
  intro n
  simp only [A166290]

end A166290

/-! ## A166290.P6924313059203404446

`A273713(∑[n]+3)-A004148(n)`
-/

namespace A166290.P6924313059203404446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273713 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - A004148 n

end

end A166290.P6924313059203404446

namespace A166290

/-- `A273713(∑[n]+3)-A004148(n)` -/
def P6924313059203404446.Spec : Prop :=
  ∀ n, P6924313059203404446.a n = A166290 n

end A166290

/-! ## A166290.P13577138108464146887

`abs(A273713(A152950(n+1))-A004148(n))`
-/

namespace A166290.P13577138108464146887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273713 (A152950 (n + 1)).toNat - A004148 n|

end

end A166290.P13577138108464146887

namespace A166290

/-- `abs(A273713(A152950(n+1))-A004148(n))` -/
def P13577138108464146887.Spec : Prop :=
  ∀ n, P13577138108464146887.a n = A166290 n

end A166290

/-! ## A166290.P18372737468379025139

`A292461(n+2)+A273713(A152950(n+1))`
-/

namespace A166290.P18372737468379025139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292461 (n + 2) + A273713 (A152950 (n + 1)).toNat

end

end A166290.P18372737468379025139

namespace A166290

/-- `A292461(n+2)+A273713(A152950(n+1))` -/
def P18372737468379025139.Spec : Prop :=
  ∀ n, P18372737468379025139.a n = A166290 n

end A166290

/-! ## A166290.P17958921391783091953

`A110320(A014473(∑[n]+1)+1)-A004148(n)`
-/

namespace A166290.P17958921391783091953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110320 (A014473 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat - A004148 n

end

end A166290.P17958921391783091953

namespace A166290

/-- `A110320(A014473(∑[n]+1)+1)-A004148(n)` -/
def P17958921391783091953.Spec : Prop :=
  ∀ n, P17958921391783091953.a n = A166290 n

end A166290

/-!
# A166291: Triangle read by rows: T(n,k) is the number of Dyck paths with no UUU's and no DDD's, of semilength n and having k peaks at odd level (0<=k<=n; U=(1,1), D=(1,-1)).

The programs for A166291, there is no canonical definition to state claims against.
-/

/-! ## A166291.P5603466817652961790

`A105422(n)+A054907(A155586(n))`
-/

namespace A166291.P5603466817652961790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n + A054907 (A155586 n).toNat

end

end A166291.P5603466817652961790

/-! ## A166291.P13041767992779299166

`A225099(A225094(n))+A105422(n)`
-/

namespace A166291.P13041767992779299166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A225094 n).toNat + A105422 n

end

end A166291.P13041767992779299166

/-! ## A166291.P4226698493444270627

`A178798(A331332(n)²)+A105422(n)`
-/

namespace A166291.P4226698493444270627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A331332 n ^ 2).toNat + A105422 n

end

end A166291.P4226698493444270627

/-! ## A166291.P3813283122567230287

`A182631(A186761(n))`
-/

namespace A166291.P3813283122567230287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182631 (A186761 n).toNat

end

end A166291.P3813283122567230287

/-! ## A166291.P3443520815000670213

`A105422(n)-A162782(A162798(n+1))`
-/

namespace A166291.P3443520815000670213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 n - A162782 (A162798 (n + 1)).toNat

end

end A166291.P3443520815000670213

/-!
# A166292: Number of peaks at odd level in all Dyck paths of semilength n with no UUU's and no DDD's, (U=(1,1), D=(1,-1)). These Dyck paths are counted by the secondary structure numbers (A004148).

The programs for A166292, there is no canonical definition to state claims against.
-/

/-! ## A166292.P2712985223171813648

`∑{#}[n, #*A166291(C(n+1, 2)+#)]`
-/

namespace A166292.P2712985223171813648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A166291 (Nat.choose (n + 1) 2 + k)

end

end A166292.P2712985223171813648

/-! ## A166292.P2193362719177435832

`A166290(n+1)-A166294(A028310(n))`
-/

namespace A166292.P2193362719177435832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166290 (n + 1) - A166294 (A028310 n).toNat

end

end A166292.P2193362719177435832

/-! ## A166292.P6749246785756299817

`Δ[A199410(A002998(n))]`
-/

namespace A166292.P6749246785756299817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166292.P6749246785756299817

/-! ## A166292.P628444822788633414

`Δ[A199410(A024661(n))]`
-/

namespace A166292.P628444822788633414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 (A024661 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166292.P628444822788633414

/-! ## A166292.P10291209589908573009

`Δ[A199410(A087051(n))]`
-/

namespace A166292.P10291209589908573009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A166292.P10291209589908573009

/-!
# A166293: Triangle read by rows: T(n,k) is the number of Dyck paths with no UUU's and no DDD's, of semilength n and having k peaks at even level (0<=k<=n-1; U=(1,1), D=(1,-1)).

The programs for A166293, there is no canonical definition to state claims against.
-/

/-! ## A166293.P8152671896183284031

`A253829(n)+A166301(A048993(n))`
-/

namespace A166293.P8152671896183284031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253829 n + A166301 (A048993 n).toNat

end

end A166293.P8152671896183284031

/-! ## A166293.P6809987445361768631

`A053534(n)-A023969(A052326(n))`
-/

namespace A166293.P6809987445361768631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 n - A023969 (A052326 n).toNat

end

end A166293.P6809987445361768631

/-! ## A166293.P2281528370944788426

`A086617(n)-A178798(A035607(n))`
-/

namespace A166293.P2281528370944788426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086617 n - A178798 (A035607 n).toNat

end

end A166293.P2281528370944788426

/-! ## A166293.P14650382613542546512

`A028657(n)-A037800(A273712(n))`
-/

namespace A166293.P14650382613542546512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028657 n - A037800 (A273712 n).toNat

end

end A166293.P14650382613542546512

/-! ## A166293.P8607422339757955344

`A053534(n)-A023969(A273712(n))`
-/

namespace A166293.P8607422339757955344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053534 n - A023969 (A273712 n).toNat

end

end A166293.P8607422339757955344

/-!
# A166294: Number of peaks at even level in all Dyck paths of semilength n with no UUU's and no DDD's, (U=(1,1), D=(1,-1)). These Dyck paths are counted by the secondary structure numbers (A004148).

The programs for A166294, there is no canonical definition to state claims against.
-/

/-! ## A166294.P17403588130276487629

`∑{#}[n, #*A166293(C(n+1, 2)+#+1)]`
-/

namespace A166294.P17403588130276487629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A166293 (Nat.choose (n + 1) 2 + k + 1)

end

end A166294.P17403588130276487629

/-! ## A166294.P8269451418653509764

`A166290(n+2)-A166292(n+1)`
-/

namespace A166294.P8269451418653509764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166290 (n + 2) - A166292 (n + 1)

end

end A166294.P8269451418653509764

/-! ## A166294.P3825064761716215203

`A072749(A285928(n)+A000110(n))`
-/

namespace A166294.P3825064761716215203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072749 (A285928 n + A000110 n).toNat

end

end A166294.P3825064761716215203

/-!
# A166296: Number of Dyck paths of semilength n with no UUU's and no DDD's and having no UUDUDD's starting at level 0 (U=(1,1), D=(1,-1)).

The programs for A166296, there is no canonical definition to state claims against.
-/

/-! ## A166296.P10888713425177395320

`A166295(∑[ceil(n/3)])`
-/

namespace A166296.P10888713425177395320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166295 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A166296.P10888713425177395320

/-! ## A166296.P279907854684378936

`A054846(A061815(n))`
-/

namespace A166296.P279907854684378936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A061815 n).toNat

end

end A166296.P279907854684378936

/-! ## A166296.P14850394297862211186

`A104614(A291700(n))+A006054(n)`
-/

namespace A166296.P14850394297862211186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104614 (A291700 n).toNat + A006054 n

end

end A166296.P14850394297862211186

/-! ## A166296.P16504625205260184547

`A301332(A276085(n+1))+A006054(n)`
-/

namespace A166296.P16504625205260184547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301332 (A276085 (n + 1)).toNat + A006054 n

end

end A166296.P16504625205260184547

/-! ## A166296.P14313623688392290881

`A134923(A036633(n))+A008619(A113281(n))`
-/

namespace A166296.P14313623688392290881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134923 (A036633 n).toNat + A008619 (A113281 n).toNat

end

end A166296.P14313623688392290881

/-!
# A166297: Number of UUDUDD's starting at level 0 in all Dyck paths of semilength n with no UUU's and no DDD's (U=(1,1), D=(1,-1)).

The programs for A166297, there is no canonical definition to state claims against.
-/

/-! ## A166297.P1585013141287267973

`Δ[A004148(n)]-A203019(A131209(n))`
-/

namespace A166297.P1585013141287267973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A203019 (A131209 n).toNat

end

end A166297.P1585013141287267973

/-! ## A166297.P5733129218065807418

`A194698(A038746(n+2))`
-/

namespace A166297.P5733129218065807418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A038746 (n + 2)).toNat

end

end A166297.P5733129218065807418

/-! ## A166297.P15464739500993035521

`A033182(floor(sqrt(A026783(n+2))))`
-/

namespace A166297.P15464739500993035521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (Int.sqrt (A026783 (n + 2))).toNat

end

end A166297.P15464739500993035521

/-! ## A166297.P18146774656885022157

`A004148(n)-A105224(A000108(n))`
-/

namespace A166297.P18146774656885022157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004148 n - A105224 (A000108 n).toNat

end

end A166297.P18146774656885022157

/-! ## A166297.P6502476205229982140

`A106364(n+1)-A095139(A358914(n))`
-/

namespace A166297.P6502476205229982140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106364 (n + 1) - A095139 (A358914 n).toNat

end

end A166297.P6502476205229982140

/-!
# A166298: Number of simsun permutations of {1,2,...,n} having at least one 321 pattern. A permutation p in S_n is said to be simsun if it has no double descents and with the hereditary property that when n, n-1, ..., 2, 1 are deleted in succession, the property of not having double descents is preserved after each deletion.

The programs for A166298, there is no canonical definition to state claims against.
-/

/-! ## A166298.P10204424058928596660

`A000111(n+1)-A000108(n)`
-/

namespace A166298.P10204424058928596660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) - A000108 n

end

end A166298.P10204424058928596660

/-! ## A166298.P5886748898203081353

`A000111(n+1)-C(2*n, n)/(n+1)`
-/

namespace A166298.P5886748898203081353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 (n + 1) : ℚ) - (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A166298.P5886748898203081353

/-! ## A166298.P7338389558013623730

`A000111(n+1)-abs(A168491(n))`
-/

namespace A166298.P7338389558013623730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000111 (n + 1) - |A168491 n|

end

end A166298.P7338389558013623730

/-! ## A166298.P18365457459540762923

`A109449(∑[n+1])-A000108(n)`
-/

namespace A166298.P18365457459540762923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j) - A000108 n

end

end A166298.P18365457459540762923

/-! ## A166298.P14330447997881667810

`A115140(n+1)+A000111(n+1)`
-/

namespace A166298.P14330447997881667810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1) + A000111 (n + 1)

end

end A166298.P14330447997881667810

/-!
# A166299: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n, having no ascents and no descents of length 1, and having k UUDD's starting at level 0.

The programs for A166299, there is no canonical definition to state claims against.
-/

/-! ## A166299.P8224957686036159287

`A089731(A091018(n))`
-/

namespace A166299.P8224957686036159287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089731 (A091018 n).toNat

end

end A166299.P8224957686036159287

/-! ## A166299.P15247282695137275708

`A089731(A056536(n+1)-1)`
-/

namespace A166299.P15247282695137275708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089731 (A056536 (n + 1) - 1).toNat

end

end A166299.P15247282695137275708

/-! ## A166299.P14173413861913019629

`and(A003983(A245480(n+1)), A027750(3*n+4))`
-/

namespace A166299.P14173413861913019629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003983 (A245480 (n + 1)).toNat) (A027750 (3 * n + 4))

end

end A166299.P14173413861913019629

/-! ## A166299.P11877951986473583208

`A054386(A054496(n+1))%A005728(A046144(n+1))`
-/

namespace A166299.P11877951986473583208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054386 (A054496 (n + 1)).toNat) (A005728 (A046144 (n + 1)).toNat)

end

end A166299.P11877951986473583208

/-! ## A166299.P3723077340111733674

`A341027(A293654(3*n+1)%(4^n))`
-/

namespace A166299.P3723077340111733674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341027 ((Int.tmod (A293654 (3 * n + 1)) (4 ^ n : ℤ)).toNat + 220)

end

end A166299.P3723077340111733674


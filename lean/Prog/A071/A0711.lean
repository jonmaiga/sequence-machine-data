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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C046
import Seq.B000.C051
import Seq.B000.C052
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A071100: Expansion of (5 + 3*x + x^2 - x^3) / (1 - 2*x - 2*x^2 - 2*x^3 + x^4) in powers of x.

The programs for A071100, the canonical program `A071100.P3496341273697638511` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071100 has offset 0).

The definition of A071100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5+3x+x^2-x^3)/(1-2x-2x^2-2x^3+x^4))` (program `A071100.P3496341273697638511`, by `A071100.P3496341273697638511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071100.P3496341273697638511

`ogf((5+3x+x^2-x^3)/(1-2x-2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071100

/-- `ogf((5+3x+x^2-x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P3496341273697638511.Spec : Prop :=
  ∀ n, P3496341273697638511.a n = A071100 n

theorem P3496341273697638511.correct : P3496341273697638511.Spec := by
  intro n
  simp only [A071100]

end A071100

/-! ## A071100.P3938196378225537457

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=5, a(1)=13, a(2)=37, a(3)=109`
-/

namespace A071100.P3938196378225537457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 13, 37, 109] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A071100.P3938196378225537457

namespace A071100

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P3938196378225537457.Spec : Prop :=
  ∀ n, P3938196378225537457.a n = A071100 n

end A071100

/-! ## A071100.P409109176361201279

`A112835(2*n+2)`
-/

namespace A071100.P409109176361201279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112835 (2 * n + 2)

end

end A071100.P409109176361201279

namespace A071100

/-- `A112835(2*n+2)` -/
def P409109176361201279.Spec : Prop :=
  ∀ n, P409109176361201279.a n = A071100 n

end A071100

/-! ## A071100.P13796654668396970597

`Δ[A389120(n+2)]`
-/

namespace A071100.P13796654668396970597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389120 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071100.P13796654668396970597

namespace A071100

/-- `Δ[A389120(n+2)]` -/
def P13796654668396970597.Spec : Prop :=
  ∀ n, P13796654668396970597.a n = A071100 n

end A071100

/-! ## A071100.P9692818078503675596

`A206625(2*n+5)`
-/

namespace A071100.P9692818078503675596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * n + 5)

end

end A071100.P9692818078503675596

namespace A071100

/-- `A206625(2*n+5)` -/
def P9692818078503675596.Spec : Prop :=
  ∀ n, P9692818078503675596.a n = A071100 n

end A071100

/-! ## A071100.P13117975788641080230

`∑[2*A192236(n+1)]+1`
-/

namespace A071100.P13117975788641080230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071100.P13117975788641080230

namespace A071100

/-- `∑[2*A192236(n+1)]+1` -/
def P13117975788641080230.Spec : Prop :=
  ∀ n, P13117975788641080230.a n = A071100 n

end A071100

/-! ## A071100.P13826752821513586663

`A071101(n)-A192235(n+1)`
-/

namespace A071100.P13826752821513586663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071101 n - A192235 (n + 1)

end

end A071100.P13826752821513586663

namespace A071100

/-- `A071101(n)-A192235(n+1)` -/
def P13826752821513586663.Spec : Prop :=
  ∀ n, P13826752821513586663.a n = A071100 n

end A071100

/-! ## A071100.P37129028053404599

`A387018(n+2)+A138573(n+1)`
-/

namespace A071100.P37129028053404599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387018 (n + 2) + A138573 (n + 1)

end

end A071100.P37129028053404599

namespace A071100

/-- `A387018(n+2)+A138573(n+1)` -/
def P37129028053404599.Spec : Prop :=
  ∀ n, P37129028053404599.a n = A071100 n

end A071100

/-! ## A071100.P5668519514821499812

`A038989(n+2)-A192234(n+2)`
-/

namespace A071100.P5668519514821499812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 (n + 2) - A192234 (n + 2)

end

end A071100.P5668519514821499812

namespace A071100

/-- `A038989(n+2)-A192234(n+2)` -/
def P5668519514821499812.Spec : Prop :=
  ∀ n, P5668519514821499812.a n = A071100 n

end A071100

/-! ## A071100.P2368136008299124523

`3*A038989(n+1)-A038989(n)`
-/

namespace A071100.P2368136008299124523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038989 (n + 1) - A038989 n

end

end A071100.P2368136008299124523

namespace A071100

/-- `3*A038989(n+1)-A038989(n)` -/
def P2368136008299124523.Spec : Prop :=
  ∀ n, P2368136008299124523.a n = A071100 n

end A071100

/-! ## A071100.P2157179388425214744

`Δ[A192236(n+1)+A192235(n+1)]`
-/

namespace A071100.P2157179388425214744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192236 (n + 1) + A192235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071100.P2157179388425214744

namespace A071100

/-- `Δ[A192236(n+1)+A192235(n+1)]` -/
def P2157179388425214744.Spec : Prop :=
  ∀ n, P2157179388425214744.a n = A071100 n

end A071100

/-!
# A071101: Expansion of (5 + 6*x + 3*x^2 - 2*x^3) / (1 - 2*x - 2*x^2 - 2*x^3 + x^4) in powers of x.

The programs for A071101, the canonical program `A071101.P733519798632661096` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071101 has offset 0).

The definition of A071101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5+6x+3x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` (program `A071101.P733519798632661096`, by `A071101.P733519798632661096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071101.P733519798632661096

`ogf((5+6x+3x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071101

/-- `ogf((5+6x+3x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P733519798632661096.Spec : Prop :=
  ∀ n, P733519798632661096.a n = A071101 n

theorem P733519798632661096.correct : P733519798632661096.Spec := by
  intro n
  simp only [A071101]

end A071101

/-! ## A071101.P703734950035105384

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=5, a(1)=16, a(2)=45, a(3)=130`
-/

namespace A071101.P703734950035105384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 16, 45, 130] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A071101.P703734950035105384

namespace A071101

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P703734950035105384.Spec : Prop :=
  ∀ n, P703734950035105384.a n = A071101 n

end A071101

/-! ## A071101.P9924645055518923937

`A112835(2*n+3)`
-/

namespace A071101.P9924645055518923937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112835 (2 * n + 3)

end

end A071101.P9924645055518923937

namespace A071101

/-- `A112835(2*n+3)` -/
def P9924645055518923937.Spec : Prop :=
  ∀ n, P9924645055518923937.a n = A071101 n

end A071101

/-! ## A071101.P7825806121524898992

`A138573(3+n)`
-/

namespace A071101.P7825806121524898992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (3 + n)

end

end A071101.P7825806121524898992

namespace A071101

/-- `A138573(3+n)` -/
def P7825806121524898992.Spec : Prop :=
  ∀ n, P7825806121524898992.a n = A071101 n

end A071101

/-! ## A071101.P10247898285406938469

`A206625(2*(n+3))`
-/

namespace A071101.P10247898285406938469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206625 (2 * (n + 3))

end

end A071101.P10247898285406938469

namespace A071101

/-- `A206625(2*(n+3))` -/
def P10247898285406938469.Spec : Prop :=
  ∀ n, P10247898285406938469.a n = A071101 n

end A071101

/-! ## A071101.P16150898677708586924

`record[A138573(abs(3-n))]`
-/

namespace A071101.P16150898677708586924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071101.P16150898677708586924

namespace A071101

/-- `record[A138573(abs(3-n))]` -/
def P16150898677708586924.Spec : Prop :=
  ∀ n, P16150898677708586924.a n = A071101 n

end A071101

/-! ## A071101.P107195100546932721

`A192235(n+1)+A071100(n)`
-/

namespace A071101.P107195100546932721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192235 (n + 1) + A071100 n

end

end A071101.P107195100546932721

namespace A071101

/-- `A192235(n+1)+A071100(n)` -/
def P107195100546932721.Spec : Prop :=
  ∀ n, P107195100546932721.a n = A071101 n

end A071101

/-! ## A071101.P4747731513218929868

`A389120(n+2)+A138574(n+2)`
-/

namespace A071101.P4747731513218929868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389120 (n + 2) + A138574 (n + 2)

end

end A071101.P4747731513218929868

namespace A071101

/-- `A389120(n+2)+A138574(n+2)` -/
def P4747731513218929868.Spec : Prop :=
  ∀ n, P4747731513218929868.a n = A071101 n

end A071101

/-! ## A071101.P15849811889495924364

`A192236(n+2)+A192234(n+3)`
-/

namespace A071101.P15849811889495924364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192236 (n + 2) + A192234 (n + 3)

end

end A071101.P15849811889495924364

namespace A071101

/-- `A192236(n+2)+A192234(n+3)` -/
def P15849811889495924364.Spec : Prop :=
  ∀ n, P15849811889495924364.a n = A071101 n

end A071101

/-! ## A071101.P6691850279918910518

`A317973(n+3)-A045821(n+3)`
-/

namespace A071101.P6691850279918910518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317973 (n + 3) - A045821 (n + 3)

end

end A071101.P6691850279918910518

namespace A071101

/-- `A317973(n+3)-A045821(n+3)` -/
def P6691850279918910518.Spec : Prop :=
  ∀ n, P6691850279918910518.a n = A071101 n

end A071101

/-! ## A071101.P9902753807666043005

`A192235(n+2)+A192236(n+2)-A192236(n+1)`
-/

namespace A071101.P9902753807666043005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192235 (n + 2) + (A192236 (n + 2) - A192236 (n + 1))

end

end A071101.P9902753807666043005

namespace A071101

/-- `A192235(n+2)+A192236(n+2)-A192236(n+1)` -/
def P9902753807666043005.Spec : Prop :=
  ∀ n, P9902753807666043005.a n = A071101 n

end A071101

/-! ## A071101.P13646639548488832725

`A192235(n+1)+Δ[A192236(n+1)+A192235(n+1)]`
-/

namespace A071101.P13646639548488832725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192236 (n + 1) + A192235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192235 (n + 1) + (f1 (n + 1) - f1 n)

end

end A071101.P13646639548488832725

namespace A071101

/-- `A192235(n+1)+Δ[A192236(n+1)+A192235(n+1)]` -/
def P13646639548488832725.Spec : Prop :=
  ∀ n, P13646639548488832725.a n = A071101 n

end A071101

/-! ## A071101.P7342565971610407035

`Δ[A192236(n+2)]-A192235(n+2)`
-/

namespace A071101.P7342565971610407035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192236 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192235 (n + 2)

end

end A071101.P7342565971610407035

namespace A071101

/-- `Δ[A192236(n+2)]-A192235(n+2)` -/
def P7342565971610407035.Spec : Prop :=
  ∀ n, P7342565971610407035.a n = A071101 n

end A071101

/-! ## A071101.P14384511948267811447

`Δ[A192236(n+1)+∑[A192235(n+1)]]`
-/

namespace A071101.P14384511948267811447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192235 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192236 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071101.P14384511948267811447

namespace A071101

/-- `Δ[A192236(n+1)+∑[A192235(n+1)]]` -/
def P14384511948267811447.Spec : Prop :=
  ∀ n, P14384511948267811447.a n = A071101 n

end A071101

/-!
# A071106: Number of perfect matchings in variant of right triangle graph with n edges where n runs through numbers congruent to 0 or 3 mod 4.

The programs for A071106, there is no canonical definition to state claims against.
-/

/-! ## A071106.P12629249433455836074

`record[A071105(n)]`
-/

namespace A071106.P12629249433455836074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071106.P12629249433455836074

/-! ## A071106.P12162981663673961784

`A071105(val(A107906(n), 2))`
-/

namespace A071106.P12162981663673961784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071105 (SequenceMachineLib.valuation (A107906 n).toNat 2)

end

end A071106.P12162981663673961784

/-!
# A071108: CONTINUANT transform of {d(n)}, 1, 2, 2, 3, 2, 4, ... (A000005).

The programs for A071108, the canonical program `A071108.P11210016546691817073` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071108 has offset 1).

The definition of A071108 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071108.P11210016546691817073

`A000005(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071108

/-- `A000005(n+1)*a(n-1)+a(n-2)` -/
def P11210016546691817073.Spec : Prop :=
  ∀ n, P11210016546691817073.a n = A071108 (n + 1)

theorem P11210016546691817073.correct : P11210016546691817073.Spec := by
  intro n
  simp only [A071108, Nat.add_sub_cancel]

end A071108

/-!
# A071109: Expansion of Product_{k>=1} 1/(1+2*x^k).

The programs for A071109, there is no canonical definition to state claims against.
-/

/-! ## A071109.P3301125054379379404

`A292133(∑[n+3])`
-/

namespace A071109.P3301125054379379404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071109.P3301125054379379404

/-! ## A071109.P16341899971562564323

`A351023(2^n)`
-/

namespace A071109.P16341899971562564323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351023 (2 ^ n)

end

end A071109.P16341899971562564323

/-!
# A071110: a(n) is the smallest integer >=0 we cannot obtain from n, n+1, n+2, n+3, n+4 and the operators +, -, *, /, using each number only once.

The programs for A071110, there is no canonical definition to state claims against.
-/

/-! ## A071110.P16470200715076587917

`A043096(A358574(n+1)+A079454(3*(n+1)))`
-/

namespace A071110.P16470200715076587917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A358574 (n + 1) + A079454 (3 * (n + 1))).toNat

end

end A071110.P16470200715076587917

/-!
# A071111: a(n) is the least integer x such that there exists an integer in the open interval (x/(i+1), x/i) for i= n-1, n-2 ..., 3, 2, 1.

The programs for A071111, the canonical program `A071111.P8378783389379564719` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071111 has offset 2).

The definition of A071111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071111.P15978434362162227357

`A001000(2+n)`
-/

namespace A071111.P15978434362162227357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001000 (2 + n)

end

end A071111.P15978434362162227357

namespace A071111

/-- `A001000(2+n)` -/
def P15978434362162227357.Spec : Prop :=
  ∀ n, P15978434362162227357.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P632017863401984945

`A071415(2+n)-(n+1)`
-/

namespace A071111.P632017863401984945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071415 (2 + n) - (n + 1 : ℤ)

end

end A071111.P632017863401984945

namespace A071111

/-- `A071415(2+n)-(n+1)` -/
def P632017863401984945.Spec : Prop :=
  ∀ n, P632017863401984945.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P8378783389379564719

`ceil((2+(3+A123663(n+1))²)/4)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071111

/-- `ceil((2+(3+A123663(n+1))²)/4)` -/
def P8378783389379564719.Spec : Prop :=
  ∀ n, P8378783389379564719.a n = A071111 (n + 2)

theorem P8378783389379564719.correct : P8378783389379564719.Spec := by
  intro n
  simp only [A071111, Nat.add_sub_cancel]

end A071111

/-! ## A071111.P317043937239417170

`A033638(A123663(1+n)+3)`
-/

namespace A071111.P317043937239417170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A123663 (1 + n) + 3).toNat

end

end A071111.P317043937239417170

namespace A071111

/-- `A033638(A123663(1+n)+3)` -/
def P317043937239417170.Spec : Prop :=
  ∀ n, P317043937239417170.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P18104488214040039951

`A049068(A033638(A083479(n+1)+n))`
-/

namespace A071111.P18104488214040039951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (A033638 (A083479 (n + 1) + (n : ℤ)).toNat).toNat

end

end A071111.P18104488214040039951

namespace A071111

/-- `A049068(A033638(A083479(n+1)+n))` -/
def P18104488214040039951.Spec : Prop :=
  ∀ n, P18104488214040039951.a n = A071111 (n + 2)

end A071111

/-!
# A071112: Smallest k such that the number of elements in the continued fraction for (1+1/k)^k is >= n.

The programs for A071112, there is no canonical definition to state claims against.
-/

/-! ## A071112.P17923872768916480182

`fp[A069887(n+1)]+1`
-/

namespace A071112.P17923872768916480182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069887 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A071112.P17923872768916480182

/-!
# A071113: Numbers k such that the number of terms in the continued fraction for (1 + 1/x)^x equals k for some x.

The programs for A071113, there is no canonical definition to state claims against.
-/

/-! ## A071113.P10059253608294967989

`lt[0, char[A069887(n+1)]]`
-/

namespace A071113.P10059253608294967989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069887 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071113.P10059253608294967989

/-! ## A071113.P15146508278104270246

`eq[1, char[A069887(gcd(n, n)+1)]]`
-/

namespace A071113.P15146508278104270246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069887 (Nat.gcd n n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071113.P15146508278104270246

/-! ## A071113.P3429271754404542031

`eq[1, char[A069887(∑[(n+1)%2])]]`
-/

namespace A071113.P3429271754404542031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069887 (∑ j ∈ Finset.range (n + 1), f4 j)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071113.P3429271754404542031

/-! ## A071113.P13599857247950695903

`eq[1, char[A069887(2*n-n+1)]]`
-/

namespace A071113.P13599857247950695903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069887 ((2 * n : ℤ) - (n : ℤ) + 1).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071113.P13599857247950695903

/-! ## A071113.P10288622567417237079

`eq[char[A069887(n+1)], A054977(n)]`
-/

namespace A071113.P10288622567417237079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069887 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A071113.P10288622567417237079

/-!
# A071114: Numbers m such that m and sigma(m) are prime powers (of the form p^k, p prime, k>=1).

The programs for A071114, there is no canonical definition to state claims against.
-/

/-! ## A071114.P468152064065771577

`∩[A009087(n+1), A070763(n+1)]`
-/

namespace A071114.P468152064065771577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071114.P468152064065771577

/-! ## A071114.P3830364597417472000

`record[A008475(A070763(n+1))]`
-/

namespace A071114.P3830364597417472000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A070763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071114.P3830364597417472000

/-! ## A071114.P7212221814922280774

`filter[A070763(n+1), A069513(#)]`
-/

namespace A071114.P7212221814922280774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A071114.P7212221814922280774

/-! ## A071114.P3626131004457713212

`filter[A070763(n+1), A324290(#)]`
-/

namespace A071114.P3626131004457713212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A071114.P3626131004457713212

/-! ## A071114.P6751059781708779769

`filter[A070763(n+1), A354923(#)]`
-/

namespace A071114.P6751059781708779769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A071114.P6751059781708779769

/-!
# A071115: a(1) = 1; a(n+1) is the smallest integer > 0 that cannot be obtained from the integers {a(1), ..., a(n)} using each number at most once and the operators +, -, *, /, where intermediate subexpressions must be integers.

The programs for A071115, there is no canonical definition to state claims against.
-/

/-! ## A071115.P16173979191094385014

`A358075(∑[A060455(n)])`
-/

namespace A071115.P16173979191094385014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358075 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071115.P16173979191094385014

/-! ## A071115.P15822007282517256531

`A303674(A008074(n))`
-/

namespace A071115.P15822007282517256531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303674 (A008074 n).toNat

end

end A071115.P15822007282517256531

/-!
# A071117: Numbers k such that the sum of the first k digits of the decimal expansion of e is prime.

The programs for A071117, there is no canonical definition to state claims against.
-/

/-! ## A071117.P12313450593898788549

`eq[1, A001222(A046975(n))]+1`
-/

namespace A071117.P12313450593898788549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046975 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071117.P12313450593898788549

/-! ## A071117.P11479877146849863476

`eq[1, A001222(A046975(abs(1-n)))]`
-/

namespace A071117.P11479877146849863476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046975 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071117.P11479877146849863476

/-!
# A071118: Size of the automorphism group of the group Z X Z_n.

The programs for A071118, the canonical program `A071118.P10143340567303740039` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071118 has offset 1).

The definition of A071118 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071118.P10143340567303740039

`2*A002618(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071118

/-- `2*A002618(n+1)` -/
def P10143340567303740039.Spec : Prop :=
  ∀ n, P10143340567303740039.a n = A071118 (n + 1)

theorem P10143340567303740039.correct : P10143340567303740039.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel]

end A071118

/-! ## A071118.P15108318609932528013

`2*(n+1)*A000010(n+1)`
-/

namespace A071118.P15108318609932528013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A000010 (n + 1)

end

end A071118.P15108318609932528013

namespace A071118

/-- `2*(n+1)*A000010(n+1)` -/
def P15108318609932528013.Spec : Prop :=
  ∀ n, P15108318609932528013.a n = A071118 (n + 1)

theorem P15108318609932528013.correct : P15108318609932528013.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P15108318609932528013.a, A071118.P10143340567303740039.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P17489602098238389549

`2*(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A071118.P17489602098238389549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A071118.P17489602098238389549

namespace A071118

/-- `2*(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P17489602098238389549.Spec : Prop :=
  ∀ n, P17489602098238389549.a n = (A071118 (n + 1) : ℚ)

end A071118

/-! ## A071118.P9648655154183796964

`Δ[2*A240877(n)]`
-/

namespace A071118.P9648655154183796964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A240877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071118.P9648655154183796964

namespace A071118

/-- `Δ[2*A240877(n)]` -/
def P9648655154183796964.Spec : Prop :=
  ∀ n, P9648655154183796964.a n = A071118 (n + 1)

end A071118

/-! ## A071118.P3112058386115151810

`2*(1+A046151(n+1))`
-/

namespace A071118.P3112058386115151810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A046151 (n + 1))

end

end A071118.P3112058386115151810

namespace A071118

/-- `2*(1+A046151(n+1))` -/
def P3112058386115151810.Spec : Prop :=
  ∀ n, P3112058386115151810.a n = A071118 (n + 1)

theorem P3112058386115151810.correct : P3112058386115151810.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P3112058386115151810.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A046151, A046151.P159560385155613916.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P15124828825349157126

`2*(A046152(n+1)-1)`
-/

namespace A071118.P15124828825349157126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046152 (n + 1) - 1)

end

end A071118.P15124828825349157126

namespace A071118

/-- `2*(A046152(n+1)-1)` -/
def P15124828825349157126.Spec : Prop :=
  ∀ n, P15124828825349157126.a n = A071118 (n + 1)

theorem P15124828825349157126.correct : P15124828825349157126.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P15124828825349157126.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A046152, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P3263952030661129448

`2/3*A064400(n+1)`
-/

namespace A071118.P3263952030661129448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A064400 (n + 1) : ℚ)

end

end A071118.P3263952030661129448

namespace A071118

/-- `2/3*A064400(n+1)` -/
def P3263952030661129448.Spec : Prop :=
  ∀ n, P3263952030661129448.a n = (A071118 (n + 1) : ℚ)

theorem P3263952030661129448.correct : P3263952030661129448.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P3263952030661129448.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A064400, A064400.P18224085056823472977.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P13042415143615803671

`2*(n+1)*Δ[A002088(n)]`
-/

namespace A071118.P13042415143615803671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A071118.P13042415143615803671

namespace A071118

/-- `2*(n+1)*Δ[A002088(n)]` -/
def P13042415143615803671.Spec : Prop :=
  ∀ n, P13042415143615803671.a n = A071118 (n + 1)

end A071118

/-! ## A071118.P4377323684189545603

`2*(n+1)*Δ[A005728(n)]`
-/

namespace A071118.P4377323684189545603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (f1 (n + 1) - f1 n))

end

end A071118.P4377323684189545603

namespace A071118

/-- `2*(n+1)*Δ[A005728(n)]` -/
def P4377323684189545603.Spec : Prop :=
  ∀ n, P4377323684189545603.a n = A071118 (n + 1)

end A071118

/-! ## A071118.P16921361803524062848

`(n+1)*A319998(2*(n+1))`
-/

namespace A071118.P16921361803524062848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A319998 (2 * (n + 1))

end

end A071118.P16921361803524062848

namespace A071118

/-- `(n+1)*A319998(2*(n+1))` -/
def P16921361803524062848.Spec : Prop :=
  ∀ n, P16921361803524062848.a n = A071118 (n + 1)

end A071118

/-! ## A071118.P12430246025082202953

`2/(n+1)*A053191(n+1)`
-/

namespace A071118.P12430246025082202953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A053191 (n + 1) : ℚ)

end

end A071118.P12430246025082202953

namespace A071118

/-- `2/(n+1)*A053191(n+1)` -/
def P12430246025082202953.Spec : Prop :=
  ∀ n, P12430246025082202953.a n = (A071118 (n + 1) : ℚ)

end A071118

/-! ## A071118.P12041730953778146784

`2*(n+1)*Δ[A100449(n)/4]`
-/

namespace A071118.P12041730953778146784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) * (f1 (n + 1) - f1 n))

end

end A071118.P12041730953778146784

namespace A071118

/-- `2*(n+1)*Δ[A100449(n)/4]` -/
def P12041730953778146784.Spec : Prop :=
  ∀ n, P12041730953778146784.a n = (A071118 (n + 1) : ℚ)

end A071118

/-! ## A071118.P13717394780025383801

`2*(n+1)*(A109606(n+1)+1)`
-/

namespace A071118.P13717394780025383801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (A109606 (n + 1) + 1))

end

end A071118.P13717394780025383801

namespace A071118

/-- `2*(n+1)*(A109606(n+1)+1)` -/
def P13717394780025383801.Spec : Prop :=
  ∀ n, P13717394780025383801.a n = A071118 (n + 1)

theorem P13717394780025383801.correct : P13717394780025383801.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P13717394780025383801.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A109606, A109606.P2415810041766612210.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P9829629309096770841

`2*(n+1)*(A039649(n+1)-1)`
-/

namespace A071118.P9829629309096770841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * (A039649 (n + 1) - 1)

end

end A071118.P9829629309096770841

namespace A071118

/-- `2*(n+1)*(A039649(n+1)-1)` -/
def P9829629309096770841.Spec : Prop :=
  ∀ n, P9829629309096770841.a n = A071118 (n + 1)

theorem P9829629309096770841.correct : P9829629309096770841.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P9829629309096770841.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A039649, A039649.P16717312505280968063.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P2565774300799154601

`(n+1)*(A083254(n+1)+n+1)`
-/

namespace A071118.P2565774300799154601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A083254 (n + 1) + (n + 1 : ℤ))

end

end A071118.P2565774300799154601

namespace A071118

/-- `(n+1)*(A083254(n+1)+n+1)` -/
def P2565774300799154601.Spec : Prop :=
  ∀ n, P2565774300799154601.a n = A071118 (n + 1)

theorem P2565774300799154601.correct : P2565774300799154601.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P2565774300799154601.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A083254, A083254.P7544960031424623367.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P1987090537694218700

`A023896(n+1)*A040002(n)`
-/

namespace A071118.P1987090537694218700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) * A040002 n

end

end A071118.P1987090537694218700

namespace A071118

/-- `A023896(n+1)*A040002(n)` -/
def P1987090537694218700.Spec : Prop :=
  ∀ n, P1987090537694218700.a n = A071118 (n + 1)

end A071118

/-! ## A071118.P12688797316545747677

`A046152(n+1)+A046151(n+1)`
-/

namespace A071118.P12688797316545747677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046152 (n + 1) + A046151 (n + 1)

end

end A071118.P12688797316545747677

namespace A071118

/-- `A046152(n+1)+A046151(n+1)` -/
def P12688797316545747677.Spec : Prop :=
  ∀ n, P12688797316545747677.a n = A071118 (n + 1)

theorem P12688797316545747677.correct : P12688797316545747677.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P12688797316545747677.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A046151, A046151.P159560385155613916.a, A046152, A046152.P7809861723130686075.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P409352699943449405

`A064400(n+1)-A002618(n+1)`
-/

namespace A071118.P409352699943449405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064400 (n + 1) - A002618 (n + 1)

end

end A071118.P409352699943449405

namespace A071118

/-- `A064400(n+1)-A002618(n+1)` -/
def P409352699943449405.Spec : Prop :=
  ∀ n, P409352699943449405.a n = A071118 (n + 1)

theorem P409352699943449405.correct : P409352699943449405.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel, A071118.P409352699943449405.a, A071118.P10143340567303740039.a, A002618, A002618.P8397693677428532773.a, A064400, A064400.P18224085056823472977.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071118

/-! ## A071118.P10381922401384071487

`(n+1)*A005843(A000010(n+1))`
-/

namespace A071118.P10381922401384071487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005843 (A000010 (n + 1)).toNat

end

end A071118.P10381922401384071487

namespace A071118

/-- `(n+1)*A005843(A000010(n+1))` -/
def P10381922401384071487.Spec : Prop :=
  ∀ n, P10381922401384071487.a n = A071118 (n + 1)

end A071118

/-! ## A071118.P18028991297409133282

`A000010(n+1)*A317440(n+1)`
-/

namespace A071118.P18028991297409133282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A317440 (n + 1)

end

end A071118.P18028991297409133282

namespace A071118

/-- `A000010(n+1)*A317440(n+1)` -/
def P18028991297409133282.Spec : Prop :=
  ∀ n, P18028991297409133282.a n = A071118 (n + 1)

end A071118

/-!
# A071119: Palindromic primes in which deleting the outside pair of digits yields a prime at every stage until finally a single-digit prime is obtained.

The programs for A071119, there is no canonical definition to state claims against.
-/

/-! ## A071119.P5741429496897897326

`filter[A076609(n+1), A080339(#)]`
-/

namespace A071119.P5741429496897897326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A071119.P5741429496897897326

/-! ## A071119.P6875198276857059865

`filter[A063792(n+1), A136522(#)]`
-/

namespace A071119.P6875198276857059865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A071119.P6875198276857059865

/-! ## A071119.P17881639143977562312

`∩[A056142(n), A276132(n+1)]`
-/

namespace A071119.P17881639143977562312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071119.P17881639143977562312

/-! ## A071119.P2553127689342113517

`∩[A005180(n+1), A076609(n+1)]`
-/

namespace A071119.P2553127689342113517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071119.P2553127689342113517

/-!
# A071120: Decimal expansion of Sum_{n >= 1} 1/S(n)!, where S(n) is the Kempner number A002034.

The programs for A071120, there is no canonical definition to state claims against.
-/

/-! ## A071120.P15590391083866149689

`floor(A048799(n)+acot(n))`
-/

namespace A071120.P15590391083866149689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048799 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A071120.P15590391083866149689

/-! ## A071120.P10847836922414334953

`A063524(n+1)+A048799(n)`
-/

namespace A071120.P10847836922414334953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A048799 (n + 1)

end

end A071120.P10847836922414334953

/-! ## A071120.P7751352858599966795

`A072480(A025492(n+1))+A048799(n)`
-/

namespace A071120.P7751352858599966795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A025492 (n + 1)).toNat + A048799 (n + 1)

end

end A071120.P7751352858599966795

/-! ## A071120.P16746664159271726467

`A002034(n+1)+A048799(n)-A064760(n+1)`
-/

namespace A071120.P16746664159271726467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (n + 1) + (A048799 (n + 1) - A064760 (n + 1))

end

end A071120.P16746664159271726467

/-! ## A071120.P5873289795963453168

`A005102(A008574(n))*A048799(n)`
-/

namespace A071120.P5873289795963453168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 (A008574 n).toNat * A048799 (n + 1)

end

end A071120.P5873289795963453168

/-! ## A071120.P10084413990853051779

`A048799(n)-A008683(∏[char[∑[n]]+1])`
-/

namespace A071120.P10084413990853051779
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048799 (n + 1) - A008683 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A071120.P10084413990853051779

/-!
# A071121: a(n) = a(n-1) + sum of decimal digits of n^3.

The programs for A071121, the canonical program `A071121.P9308853267164224446` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071121 has offset 1).

The definition of A071121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071121.P9308853267164224446

`∑[∑{digits}[Δ[∑[n]²], #]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071121

/-- `∑[∑{digits}[Δ[∑[n]²], #]]` -/
def P9308853267164224446.Spec : Prop :=
  ∀ n, (P9308853267164224446.a n : ℤ) = A071121 (n + 1)

theorem P9308853267164224446.correct : P9308853267164224446.Spec := by
  intro n
  simp only [A071121, Nat.add_sub_cancel]

end A071121

/-! ## A071121.P996380948611893350

`∑[log(∏{digits}[(n+1)^3, exp(#)])]`
-/

namespace A071121.P996380948611893350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071121.P996380948611893350

namespace A071121

/-- `∑[log(∏{digits}[(n+1)^3, exp(#)])]` -/
def P996380948611893350.Spec : Prop :=
  ∀ n, P996380948611893350.a n = (A071121 (n + 1) : ℝ)

end A071121

/-! ## A071121.P8814041172707570036

`∑[log2(∏{digits}[(n+1)^3, 2^#])]`
-/

namespace A071121.P8814041172707570036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071121.P8814041172707570036

namespace A071121

/-- `∑[log2(∏{digits}[(n+1)^3, 2^#])]` -/
def P8814041172707570036.Spec : Prop :=
  ∀ n, P8814041172707570036.a n = (A071121 (n + 1) : ℝ)

end A071121

/-! ## A071121.P4427306257436725873

`∑[val(∏{digits}[(n+1)^3, 2^#], 2)]`
-/

namespace A071121.P4427306257436725873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 2 ^ x).prod 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071121.P4427306257436725873

namespace A071121

/-- `∑[val(∏{digits}[(n+1)^3, 2^#], 2)]` -/
def P4427306257436725873.Spec : Prop :=
  ∀ n, (P4427306257436725873.a n : ℤ) = A071121 (n + 1)

end A071121

/-! ## A071121.P16457508577641007656

`∑{digits}[(n+1)^3, #]+a(n-1)` with `a(0)=1`
-/

namespace A071121.P16457508577641007656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071121.P16457508577641007656

namespace A071121

/-- `∑{digits}[(n+1)^3, #]+a(n-1)` -/
def P16457508577641007656.Spec : Prop :=
  ∀ n, (P16457508577641007656.a n : ℤ) = A071121 (n + 1)

end A071121

/-! ## A071121.P4333986714511385908

`∑[A004164(n+1)]`
-/

namespace A071121.P4333986714511385908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071121.P4333986714511385908

namespace A071121

/-- `∑[A004164(n+1)]` -/
def P4333986714511385908.Spec : Prop :=
  ∀ n, P4333986714511385908.a n = A071121 (n + 1)

end A071121

/-! ## A071121.P5837513197838578329

`∑[∑{digits}[A000578(n+1), #]%99]`
-/

namespace A071121.P5837513197838578329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum % 99

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071121.P5837513197838578329

namespace A071121

/-- `∑[∑{digits}[A000578(n+1), #]%99]` -/
def P5837513197838578329.Spec : Prop :=
  ∀ n, (P5837513197838578329.a n : ℤ) = A071121 (n + 1)

end A071121

/-!
# A071122: a(n) = a(n-1) + sum of decimal digits of 2^n.

The programs for A071122, the canonical program `A071122.P15622955886049296024` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071122 has offset 1).

The definition of A071122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071122.P15622955886049296024

`∑[A001370(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071122

/-- `∑[A001370(n+1)]` -/
def P15622955886049296024.Spec : Prop :=
  ∀ n, P15622955886049296024.a n = A071122 (n + 1)

theorem P15622955886049296024.correct : P15622955886049296024.Spec := by
  intro n
  simp only [A071122, Nat.add_sub_cancel]

end A071122

/-! ## A071122.P10582766064475687936

`∑[ratio[A001370(n)]*A001370(n)]`
-/

namespace A071122.P10582766064475687936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ) * (A001370 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P10582766064475687936

namespace A071122

/-- `∑[ratio[A001370(n)]*A001370(n)]` -/
def P10582766064475687936.Spec : Prop :=
  ∀ n, P10582766064475687936.a n = (A071122 (n + 1) : ℚ)

end A071122

/-! ## A071122.P17637106119339641693

`∑[∑{digits}[2^(n+1), #]]`
-/

namespace A071122.P17637106119339641693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P17637106119339641693

namespace A071122

/-- `∑[∑{digits}[2^(n+1), #]]` -/
def P17637106119339641693.Spec : Prop :=
  ∀ n, (P17637106119339641693.a n : ℤ) = A071122 (n + 1)

theorem P17637106119339641693.correct : P17637106119339641693.Spec := by
  intro n
  simp only [A071122, Nat.add_sub_cancel, A071122.P17637106119339641693.f2, A071122.P17637106119339641693.f1, A071122.P17637106119339641693.a, A071122.P15622955886049296024.f1, A071122.P15622955886049296024.a, A001370, A001370.P17131759642291135112.a, A007953, A007953.P17470406891730602483.f1, A007953.P17470406891730602483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071122

/-! ## A071122.P16961154932783998712

`∑{digits}[2^(n+1), #]+a(n-1)` with `a(0)=2`
-/

namespace A071122.P16961154932783998712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071122.P16961154932783998712

namespace A071122

/-- `∑{digits}[2^(n+1), #]+a(n-1)` -/
def P16961154932783998712.Spec : Prop :=
  ∀ n, (P16961154932783998712.a n : ℤ) = A071122 (n + 1)

end A071122

/-! ## A071122.P12038074175053333348

`∑[∑{digits}[∑[2*a(n-1)], #]+1]` with `a(0)=1`
-/

namespace A071122.P12038074175053333348
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P12038074175053333348

namespace A071122

/-- `∑[∑{digits}[∑[2*a(n-1)], #]+1]` -/
def P12038074175053333348.Spec : Prop :=
  ∀ n, (P12038074175053333348.a n : ℤ) = A071122 (n + 1)

end A071122

/-! ## A071122.P5243265766618294268

`∑[∑{digits}[lcm(2, a(n-1))+1, #]]+n` with `a(0)=2`
-/

namespace A071122.P5243265766618294268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  Nat.lcm 2 (f2 (n - 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A071122.P5243265766618294268

namespace A071122

/-- `∑[∑{digits}[lcm(2, a(n-1))+1, #]]+n` -/
def P5243265766618294268.Spec : Prop :=
  ∀ n, (P5243265766618294268.a n : ℤ) = A071122 (n + 1)

end A071122

/-! ## A071122.P1114590268450317967

`∑[3*∑{digits}[4*a(n-2), #/3]]` with `a(0)=2, a(1)=4`
-/

namespace A071122.P1114590268450317967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  4 * f2 (n - 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => (x : ℚ) / 3).sum

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P1114590268450317967

namespace A071122

/-- `∑[3*∑{digits}[4*a(n-2), #/3]]` -/
def P1114590268450317967.Spec : Prop :=
  ∀ n, P1114590268450317967.a n = (A071122 (n + 1) : ℚ)

end A071122

/-! ## A071122.P14418317823462817352

`∑[∑{digits}[A126646(n), #]+1]`
-/

namespace A071122.P14418317823462817352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P14418317823462817352

namespace A071122

/-- `∑[∑{digits}[A126646(n), #]+1]` -/
def P14418317823462817352.Spec : Prop :=
  ∀ n, (P14418317823462817352.a n : ℤ) = A071122 (n + 1)

end A071122

/-! ## A071122.P4605064624387745804

`∑[∑{digits}[∑[A000079(n)], #]+1]`
-/

namespace A071122.P4605064624387745804
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P4605064624387745804

namespace A071122

/-- `∑[∑{digits}[∑[A000079(n)], #]+1]` -/
def P4605064624387745804.Spec : Prop :=
  ∀ n, (P4605064624387745804.a n : ℤ) = A071122 (n + 1)

end A071122

/-! ## A071122.P1490080014717474960

`∑[∑{digits}[A000225(n+1), #]+1]`
-/

namespace A071122.P1490080014717474960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071122.P1490080014717474960

namespace A071122

/-- `∑[∑{digits}[A000225(n+1), #]+1]` -/
def P1490080014717474960.Spec : Prop :=
  ∀ n, (P1490080014717474960.a n : ℤ) = A071122 (n + 1)

end A071122

/-!
# A071123: a(n) = a(n-1) + sum of decimal digits of n!.

The programs for A071123, there is no canonical definition to state claims against.
-/

/-! ## A071123.P13451211538447246368

`∑[A004152(1+n)]`
-/

namespace A071123.P13451211538447246368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071123.P13451211538447246368

/-! ## A071123.P5637764883805030936

`A004152(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A071123.P5637764883805030936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004152 (n + 1) + a (n - 1)

end

end A071123.P5637764883805030936

/-! ## A071123.P16222413975229176443

`∑[∑{digits}[(n+1)!, #]]`
-/

namespace A071123.P16222413975229176443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071123.P16222413975229176443

/-! ## A071123.P8554889305653192288

`∑{digits}[(n+1)!, #]+a(n-1)` with `a(0)=1`
-/

namespace A071123.P8554889305653192288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071123.P8554889305653192288

/-! ## A071123.P1905678138224570067

`∑[∑{digits}[(n+1)*a(n-1), #]]` with `a(0)=1`
-/

namespace A071123.P1905678138224570067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071123.P1905678138224570067

/-! ## A071123.P2052850972097751125

`∑{digits}[(n+1)*a(n-1), #]+a(n-1)` with `a(0)=1`
-/

namespace A071123.P2052850972097751125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071123.P2052850972097751125

/-!
# A071124: Least of five consecutive numbers which are cubefree and not squarefree, i.e., {k, k+1, k+2, k+3, k+4} are in A067259.

The programs for A071124, the canonical program `A071124.P14915334261569632399` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071124 has offset 1).

The definition of A071124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071124.P14915334261569632399

`∩[A071320(n+1)-1, A071320(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071124

/-- `∩[A071320(n+1)-1, A071320(n+1)]` -/
def P14915334261569632399.Spec : Prop :=
  ∀ n, (P14915334261569632399.a n : ℤ) = A071124 (n + 1)

theorem P14915334261569632399.correct : P14915334261569632399.Spec := by
  intro n
  simp only [A071124, Nat.add_sub_cancel]

end A071124

/-! ## A071124.P2972852592959099519

`∩[A071319(n+1)-2, A071319(n+1)]`
-/

namespace A071124.P2972852592959099519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071124.P2972852592959099519

namespace A071124

/-- `∩[A071319(n+1)-2, A071319(n+1)]` -/
def P2972852592959099519.Spec : Prop :=
  ∀ n, (P2972852592959099519.a n : ℤ) = A071124 (n + 1)

end A071124

/-!
# A071126: Length of least repunit which is a multiple of the n-th prime, or 0 if no such multiple exists.

The programs for A071126, there is no canonical definition to state claims against.
-/

/-! ## A071126.P5131774910616136330

`A002371(n+1)+char[1]+char[1]`
-/

namespace A071126.P5131774910616136330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A071126.P5131774910616136330

/-! ## A071126.P18030432072704678238

`A002371(n+1)*A261143(n)`
-/

namespace A071126.P18030432072704678238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) * A261143 n

end

end A071126.P18030432072704678238

/-! ## A071126.P8625986473293448978

`lcm(A002371(n+1), A260196(n))`
-/

namespace A071126.P8625986473293448978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002371 (n + 1)) (A260196 n)

end

end A071126.P8625986473293448978

/-! ## A071126.P15300601698454373012

`xor(A048595(n+1), A130713(n))`
-/

namespace A071126.P15300601698454373012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A048595 (n + 1)) (A130713 n)

end

end A071126.P15300601698454373012

/-! ## A071126.P17534898109938043405

`A002371((A260196(n)-n)*A260196(n))`
-/

namespace A071126.P17534898109938043405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 ((A260196 n - (n : ℤ)) * A260196 n).toNat

end

end A071126.P17534898109938043405

/-! ## A071126.P5544475421881021809

`A002371(n+1)+A049084(n+1)*A049084(n+2)`
-/

namespace A071126.P5544475421881021809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) + A049084 (n + 1) * A049084 (n + 2)

end

end A071126.P5544475421881021809

/-! ## A071126.P11814777759097357509

`A084681(A000040(1+n))`
-/

namespace A071126.P11814777759097357509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A000040 (1 + n)).toNat

end

end A071126.P11814777759097357509

/-! ## A071126.P15675397022421045867

`∑{p}[A001749(n+1), A084681(#)]`
-/

namespace A071126.P15675397022421045867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084681 p

end

end A071126.P15675397022421045867

/-! ## A071126.P7082759031685133137

`A002371(n+1)*A358692(n+1)`
-/

namespace A071126.P7082759031685133137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) * A358692 (n + 1)

end

end A071126.P7082759031685133137

/-!
# A071127: Number of times there is a prime p < n such that 2n+p is prime.

The programs for A071127, there is no canonical definition to state claims against.
-/

/-! ## A071127.P16438536149647926619

`A071137(n+1)-abs(A156707(n+1))`
-/

namespace A071127.P16438536149647926619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (n + 1) - |A156707 (n + 1)|

end

end A071127.P16438536149647926619

/-! ## A071127.P12774214509176751884

`A071137(n+1)-Δ[A000720(2*(n+1))]`
-/

namespace A071127.P12774214509176751884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (n + 1) - (f1 (n + 1) - f1 n)

end

end A071127.P12774214509176751884

/-! ## A071127.P9672499036792881718

`A071137(n+1)-A156707(n+1)^A317440(n+1)`
-/

namespace A071127.P9672499036792881718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071137 (n + 1) : ℚ) - (A156707 (n + 1) : ℚ) ^ (A317440 (n + 1) : ℤ)

end

end A071127.P9672499036792881718

/-! ## A071127.P18008392435344349581

`A071137(n+1)-A245714(A103517(n))`
-/

namespace A071127.P18008392435344349581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (n + 1) - A245714 (A103517 n).toNat

end

end A071127.P18008392435344349581

/-! ## A071127.P17900523744398823233

`A071137(n+1)-A245714(A317440(n+1))`
-/

namespace A071127.P17900523744398823233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (n + 1) - A245714 (A317440 (n + 1)).toNat

end

end A071127.P17900523744398823233

/-! ## A071127.P10996929255585005846

`A071137(n+1)-A156707(n+1)^A159051(n+1)`
-/

namespace A071127.P10996929255585005846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071137 (n + 1) : ℚ) - (A156707 (n + 1) : ℚ) ^ (A159051 (n + 1) : ℤ)

end

end A071127.P10996929255585005846

/-!
# A071129: Squares which repeat with at least two full periods when written in base 3.

The programs for A071129, there is no canonical definition to state claims against.
-/

/-! ## A071129.P10661389233453592805

`record[Δ[A105266(2*(n+2))]²]`
-/

namespace A071129.P10661389233453592805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105266 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071129.P10661389233453592805

/-!
# A071133: Squares which repeat with at least two full periods when written in base 7.

The programs for A071133, there is no canonical definition to state claims against.
-/

/-! ## A071133.P1884536188332542390

`∩[A020335(n+1), n²]`
-/

namespace A071133.P1884536188332542390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020335 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A071133.P1884536188332542390

/-! ## A071133.P11308409997234946431

`∩[n*n, A020335(n+2)]`
-/

namespace A071133.P11308409997234946431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020335 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071133.P11308409997234946431

/-!
# A071137: Number of times 2n+p is prime, with p=1 or prime p < n.

The programs for A071137, there is no canonical definition to state claims against.
-/

/-! ## A071137.P12491463915048554284

`A071127(n+1)+abs(A156707(n+1))`
-/

namespace A071137.P12491463915048554284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (n + 1) + |A156707 (n + 1)|

end

end A071137.P12491463915048554284

/-! ## A071137.P13055852890261004412

`A071127(n+1)+A010051(2*n+3)`
-/

namespace A071137.P13055852890261004412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (n + 1) + A010051 (2 * n + 3)

end

end A071137.P13055852890261004412

/-! ## A071137.P15791264966960805356

`A071127(n+1)+Δ[A000720(2*(n+1))]`
-/

namespace A071137.P15791264966960805356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (n + 1) + (f1 (n + 1) - f1 n)

end

end A071137.P15791264966960805356

/-! ## A071137.P3116142568101479440

`A071127(n+1)+A156707(n+1)^A317440(n+1)`
-/

namespace A071137.P3116142568101479440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071127 (n + 1) : ℚ) + (A156707 (n + 1) : ℚ) ^ (A317440 (n + 1) : ℤ)

end

end A071137.P3116142568101479440

/-! ## A071137.P9275751996489557732

`A245714(A317440(n+1))+A071127(n+1)`
-/

namespace A071137.P9275751996489557732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245714 (A317440 (n + 1)).toNat + A071127 (n + 1)

end

end A071137.P9275751996489557732

/-!
# A071138: CONTINUANT transform of {sigma(n)}, 1, 3, 4, 7, 6, 12, ... (A000203).

The programs for A071138, the canonical program `A071138.P15570935921482105202` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071138 has offset 1).

The definition of A071138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071138.P15570935921482105202

`A000203(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071138

/-- `A000203(n+1)*a(n-1)+a(n-2)` -/
def P15570935921482105202.Spec : Prop :=
  ∀ n, P15570935921482105202.a n = A071138 (n + 1)

theorem P15570935921482105202.correct : P15570935921482105202.Spec := by
  intro n
  simp only [A071138, Nat.add_sub_cancel]

end A071138

/-! ## A071138.P7288635986274666377

`∑{d}[n+1, #]*a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A071138.P7288635986274666377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (∑ d ∈ Nat.divisors (f1 n), d) * a (n - 1) + a (n - 2)

end

end A071138.P7288635986274666377

namespace A071138

/-- `∑{d}[n+1, #]*a(n-1)+a(n-2)` -/
def P7288635986274666377.Spec : Prop :=
  ∀ n, (P7288635986274666377.a n : ℤ) = A071138 (n + 1)

end A071138

/-! ## A071138.P7160265183085057856

`∏[A000203(n+1)+1/a(n-1)]` with `a(0)=1`
-/

namespace A071138.P7160265183085057856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A000203 (n + 1) : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071138.P7160265183085057856

namespace A071138

/-- `∏[A000203(n+1)+1/a(n-1)]` -/
def P7160265183085057856.Spec : Prop :=
  ∀ n, P7160265183085057856.a n = (A071138 (n + 1) : ℚ)

end A071138

/-!
# A071139: Numbers k such that the sum of distinct primes dividing k is divisible by the largest prime dividing k.

The programs for A071139, there is no canonical definition to state claims against.
-/

/-! ## A071139.P3233802237846711468

`∪[A071140(1+n), A246655(n+1)]`
-/

namespace A071139.P3233802237846711468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071139.P3233802237846711468

/-! ## A071139.P18088910320718581334

`∪[A071140(n+1), A000961(n+2)]`
-/

namespace A071139.P18088910320718581334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071139.P18088910320718581334

/-! ## A071139.P8144025664021687377

`lt[A075653(n+1)%A006530(2*(n+1)), 1]+1`
-/

namespace A071139.P8144025664021687377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075653 (n + 1)) (A006530 (2 * (n + 1)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071139.P8144025664021687377

/-! ## A071139.P13161337520189125996

`∪[A071140(n+1), A363727(n+1)]`
-/

namespace A071139.P13161337520189125996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071139.P13161337520189125996

/-! ## A071139.P7298457857570606624

`∪[A363727(n+1), A365795(n+1)]`
-/

namespace A071139.P7298457857570606624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071139.P7298457857570606624

/-! ## A071139.P4727573286068333474

`∪[A363727(n+1), A382469(n+1)]`
-/

namespace A071139.P4727573286068333474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071139.P4727573286068333474

/-!
# A071140: Numbers n such that sum of distinct primes dividing n is divisible by largest prime dividing n; n is neither a prime, nor a true power of prime.

The programs for A071140, there is no canonical definition to state claims against.
-/

/-! ## A071140.P13940894687896082935

`∩[A071139(n+1), A212666(n+1)]`
-/

namespace A071140.P13940894687896082935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P13940894687896082935

/-! ## A071140.P6615539052828853893

`∩[A071139(n+1), A291046(n+1)]`
-/

namespace A071140.P6615539052828853893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P6615539052828853893

/-! ## A071140.P712687834018919835

`∩[A027854(n+1), A071139(n+1)]`
-/

namespace A071140.P712687834018919835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P712687834018919835

/-! ## A071140.P4990708368472292664

`∩[A071139(n+1), A291045(n+1)]`
-/

namespace A071140.P4990708368472292664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P4990708368472292664

/-! ## A071140.P1907602843768596019

`∩[A071139(n+1), A289484(n+1)]`
-/

namespace A071140.P1907602843768596019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P1907602843768596019

/-! ## A071140.P14037074200873960357

`∩[A071139(n+1), A386417(n+1)]`
-/

namespace A071140.P14037074200873960357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P14037074200873960357

/-! ## A071140.P13834666352897068451

`∩[A071139(n+1), A129512(n+1)]`
-/

namespace A071140.P13834666352897068451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P13834666352897068451

/-! ## A071140.P1126809366270728389

`∩[A071139(n+1), A132067(n+1)]`
-/

namespace A071140.P1126809366270728389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P1126809366270728389

/-! ## A071140.P2458785834595249969

`∩[A071139(n+1), A119357(n+1)]`
-/

namespace A071140.P2458785834595249969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P2458785834595249969

/-! ## A071140.P853581831870520812

`∩[A051774(n+1), A071139(n+1)]`
-/

namespace A071140.P853581831870520812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P853581831870520812

/-! ## A071140.P6627593441094527638

`∩[A005279(n+1), A071139(n+1)]`
-/

namespace A071140.P6627593441094527638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P6627593441094527638

/-! ## A071140.P7225152652501151727

`∩[A071139(n+1), A176587(n+1)]`
-/

namespace A071140.P7225152652501151727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P7225152652501151727

/-! ## A071140.P7340799374977823383

`∩[A071139(n+1), A387723(n+1)]`
-/

namespace A071140.P7340799374977823383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P7340799374977823383

/-! ## A071140.P2649740773095582784

`∩[A000977(n+1), A071139(n+1)]`
-/

namespace A071140.P2649740773095582784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P2649740773095582784

/-! ## A071140.P5851712204102146898

`∩[A071139(n+1), A387721(n+1)]`
-/

namespace A071140.P5851712204102146898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P5851712204102146898

/-! ## A071140.P13539127812953391793

`∩[A071139(n+1), A376384(n+1)]`
-/

namespace A071140.P13539127812953391793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P13539127812953391793

/-! ## A071140.P11208303802757196339

`∩[A071139(n+1), A318992(n+1)]`
-/

namespace A071140.P11208303802757196339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P11208303802757196339

/-! ## A071140.P10868422375599443007

`∩[A071139(n+1), A307517(n+1)]`
-/

namespace A071140.P10868422375599443007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P10868422375599443007

/-! ## A071140.P5002214164013463429

`∩[A071139(n+1), A092671(n+1)]`
-/

namespace A071140.P5002214164013463429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P5002214164013463429

/-! ## A071140.P17292322970575286793

`∩[A071139(n+1), A299991(n+1)]`
-/

namespace A071140.P17292322970575286793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071140.P17292322970575286793

/-!
# A071141: Numbers n such that sum of distinct primes dividing n is divisible by the largest prime dividing n. Also n is neither a prime, nor a true power of prime and n is squarefree. Squarefree solutions of A071140.

The programs for A071141, there is no canonical definition to state claims against.
-/

/-! ## A071141.P10829509975277239860

`∩[A071140(n+1), A295102(n+1)]`
-/

namespace A071141.P10829509975277239860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071141.P10829509975277239860

/-! ## A071141.P5102459813397717741

`record[A007913(A071140(1+n))]`
-/

namespace A071141.P5102459813397717741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A071140 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071141.P5102459813397717741

/-! ## A071141.P14758501819969429541

`record[A007947(A071140(n+1))]`
-/

namespace A071141.P14758501819969429541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071141.P14758501819969429541

/-! ## A071141.P2697104244512495558

`filter[A071140(n+1), A008966(#)]`
-/

namespace A071141.P2697104244512495558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A071141.P2697104244512495558

/-! ## A071141.P2331755034539371461

`filter[A071140(n+1), A354819(#)]`
-/

namespace A071141.P2331755034539371461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A071141.P2331755034539371461

/-! ## A071141.P8181975562784228760

`filter[A071140(n+1), A380469(#)]`
-/

namespace A071141.P8181975562784228760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A071141.P8181975562784228760

/-! ## A071141.P16933197214626329314

`∩[A071140(n+1), A164596(n+1)]`
-/

namespace A071141.P16933197214626329314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071141.P16933197214626329314

/-! ## A071141.P7148746256828055099

`filter[A071140(n+1), A323154(#)]`
-/

namespace A071141.P7148746256828055099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A071141.P7148746256828055099

/-!
# A071142: Numbers of the form 2*p*q where (p,q) is a twin prime pair.

The programs for A071142, the canonical program `A071142.P14877615513992984752` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071142 has offset 1).

The definition of A071142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071142.P14877615513992984752

`2*A037074(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A071142

/-- `2*A037074(n+1)` -/
def P14877615513992984752.Spec : Prop :=
  ∀ n, P14877615513992984752.a n = A071142 (n + 1)

theorem P14877615513992984752.correct : P14877615513992984752.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel]

end A071142

/-! ## A071142.P11925027073644970491

`A184417(1+n)-3`
-/

namespace A071142.P11925027073644970491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (1 + n) - 3

end

end A071142.P11925027073644970491

namespace A071142

/-- `A184417(1+n)-3` -/
def P11925027073644970491.Spec : Prop :=
  ∀ n, P11925027073644970491.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P11353534815981921168

`A063533(1+n)-4`
-/

namespace A071142.P11353534815981921168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063533 (1 + n) - 4

end

end A071142.P11353534815981921168

namespace A071142

/-- `A063533(1+n)-4` -/
def P11353534815981921168.Spec : Prop :=
  ∀ n, P11353534815981921168.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P5537638757392478523

`2*(1+A120875(n+1))`
-/

namespace A071142.P5537638757392478523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 + A120875 (n + 1))

end

end A071142.P5537638757392478523

namespace A071142

/-- `2*(1+A120875(n+1))` -/
def P5537638757392478523.Spec : Prop :=
  ∀ n, P5537638757392478523.a n = A071142 (n + 1)

theorem P5537638757392478523.correct : P5537638757392478523.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel, A071142.P5537638757392478523.a, A071142.P14877615513992984752.a, A037074, A037074.P14204517585574046059.a, A120875, A120875.P6924631559376339399.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P946268539703227290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071142

/-! ## A071142.P398152181717450449

`2*(A075369(1+n)-1)`
-/

namespace A071142.P398152181717450449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075369 (1 + n) - 1)

end

end A071142.P398152181717450449

namespace A071142

/-- `2*(A075369(1+n)-1)` -/
def P398152181717450449.Spec : Prop :=
  ∀ n, P398152181717450449.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P7079188097013869907

`4*A120876(n+1)+2`
-/

namespace A071142.P7079188097013869907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A120876 (n + 1) + 2

end

end A071142.P7079188097013869907

namespace A071142

/-- `4*A120876(n+1)+2` -/
def P7079188097013869907.Spec : Prop :=
  ∀ n, P7079188097013869907.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P10963183864628681597

`2*(A014574(n+1)²-1)`
-/

namespace A071142.P10963183864628681597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014574 (n + 1) ^ 2 - 1)

end

end A071142.P10963183864628681597

namespace A071142

/-- `2*(A014574(n+1)²-1)` -/
def P10963183864628681597.Spec : Prop :=
  ∀ n, P10963183864628681597.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P4203836594375771477

`A054735(n+1)²/2-2`
-/

namespace A071142.P4203836594375771477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) ^ 2 : ℚ) / 2 - 2

end

end A071142.P4203836594375771477

namespace A071142

/-- `A054735(n+1)²/2-2` -/
def P4203836594375771477.Spec : Prop :=
  ∀ n, P4203836594375771477.a n = (A071142 (n + 1) : ℚ)

theorem P4203836594375771477.correct : P4203836594375771477.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel, A071142.P4203836594375771477.a, A071142.P14877615513992984752.a, A037074, A037074.P14204517585574046059.a, A054735, A054735.P17392456198016609014.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P946268539703227290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071142

/-! ## A071142.P8869295663100134334

`A120875(n+1)+A075369(n+1)`
-/

namespace A071142.P8869295663100134334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + A075369 (n + 1)

end

end A071142.P8869295663100134334

namespace A071142

/-- `A120875(n+1)+A075369(n+1)` -/
def P8869295663100134334.Spec : Prop :=
  ∀ n, P8869295663100134334.a n = A071142 (n + 1)

theorem P8869295663100134334.correct : P8869295663100134334.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel, A071142.P8869295663100134334.a, A071142.P14877615513992984752.a, A037074, A037074.P14204517585574046059.a, A075369, A075369.P17454409901209698204.a, A120875, A120875.P6924631559376339399.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P946268539703227290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071142

/-! ## A071142.P10024693493023082821

`A135286(n+1)+A135285(n+1)`
-/

namespace A071142.P10024693493023082821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135286 (n + 1) + A135285 (n + 1)

end

end A071142.P10024693493023082821

namespace A071142

/-- `A135286(n+1)+A135285(n+1)` -/
def P10024693493023082821.Spec : Prop :=
  ∀ n, P10024693493023082821.a n = A071142 (n + 1)

theorem P10024693493023082821.correct : P10024693493023082821.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel, A071142.P10024693493023082821.a, A071142.P14877615513992984752.a, A037074, A037074.P14204517585574046059.a, A135285, A135285.P2730746227463814090.a, A135286, A135286.P6895682011203157871.a, A001359, A001359.P8865495035699438537.a, A014574, A014574.P4587706211531852143.a, A077800, A077800.P16009445446139691322.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A096281, A096281.P9870488552655544131.a, A166597, A166597.P946268539703227290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071142

/-! ## A071142.P8157893998593098929

`A006512(n+1)*A108605(n+1)`
-/

namespace A071142.P8157893998593098929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) * A108605 (n + 1)

end

end A071142.P8157893998593098929

namespace A071142

/-- `A006512(n+1)*A108605(n+1)` -/
def P8157893998593098929.Spec : Prop :=
  ∀ n, P8157893998593098929.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P7283238471470727410

`A001359(n+1)*A176810(n+1)`
-/

namespace A071142.P7283238471470727410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) * A176810 (n + 1)

end

end A071142.P7283238471470727410

namespace A071142

/-- `A001359(n+1)*A176810(n+1)` -/
def P7283238471470727410.Spec : Prop :=
  ∀ n, P7283238471470727410.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P9647648077589129167

`A126248(n+1)/A040040(n+1)`
-/

namespace A071142.P9647648077589129167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126248 (n + 1) : ℚ) / (A040040 (n + 1) : ℚ)

end

end A071142.P9647648077589129167

namespace A071142

/-- `A126248(n+1)/A040040(n+1)` -/
def P9647648077589129167.Spec : Prop :=
  ∀ n, P9647648077589129167.a n = (A071142 (n + 1) : ℚ)

end A071142

/-! ## A071142.P17312346376083790426

`A120875(n+1)+A014574(n+1)²`
-/

namespace A071142.P17312346376083790426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120875 (n + 1) + A014574 (n + 1) ^ 2

end

end A071142.P17312346376083790426

namespace A071142

/-- `A120875(n+1)+A014574(n+1)²` -/
def P17312346376083790426.Spec : Prop :=
  ∀ n, P17312346376083790426.a n = A071142 (n + 1)

theorem P17312346376083790426.correct : P17312346376083790426.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel, A071142.P17312346376083790426.a, A071142.P14877615513992984752.a, A014574, A014574.P4587706211531852143.a, A037074, A037074.P14204517585574046059.a, A120875, A120875.P6924631559376339399.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P946268539703227290.a, A000007, A000007.P6599383543502402472.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001223, A001223.P5034056745985311719.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071142

/-! ## A071142.P304809088913040012

`A037074(n+1)+A075369(n+1)-1`
-/

namespace A071142.P304809088913040012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037074 (n + 1) + (A075369 (n + 1) - 1)

end

end A071142.P304809088913040012

namespace A071142

/-- `A037074(n+1)+A075369(n+1)-1` -/
def P304809088913040012.Spec : Prop :=
  ∀ n, P304809088913040012.a n = A071142 (n + 1)

theorem P304809088913040012.correct : P304809088913040012.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel, A071142.P304809088913040012.a, A071142.P14877615513992984752.a, A037074, A037074.P14204517585574046059.a, A075369, A075369.P17454409901209698204.a, A014574, A014574.P4587706211531852143.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P946268539703227290.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071142

/-! ## A071142.P588724956030124392

`(A014574(n+1)+1)*A108605(n+1)`
-/

namespace A071142.P588724956030124392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) + 1) * A108605 (n + 1)

end

end A071142.P588724956030124392

namespace A071142

/-- `(A014574(n+1)+1)*A108605(n+1)` -/
def P588724956030124392.Spec : Prop :=
  ∀ n, P588724956030124392.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P6816871030291467405

`(A054735(n+1)+2)*A001359(n+1)`
-/

namespace A071142.P6816871030291467405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054735 (n + 1) + 2) * A001359 (n + 1)

end

end A071142.P6816871030291467405

namespace A071142

/-- `(A054735(n+1)+2)*A001359(n+1)` -/
def P6816871030291467405.Spec : Prop :=
  ∀ n, P6816871030291467405.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P728461839953453900

`(A082496(n+1)-1)*A006512(n+1)`
-/

namespace A071142.P728461839953453900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082496 (n + 1) - 1) * A006512 (n + 1)

end

end A071142.P728461839953453900

namespace A071142

/-- `(A082496(n+1)-1)*A006512(n+1)` -/
def P728461839953453900.Spec : Prop :=
  ∀ n, P728461839953453900.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P10897938297049687969

`(A001359(n+1)+2)*A108605(n+1)`
-/

namespace A071142.P10897938297049687969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + 2) * A108605 (n + 1)

end

end A071142.P10897938297049687969

namespace A071142

/-- `(A001359(n+1)+2)*A108605(n+1)` -/
def P10897938297049687969.Spec : Prop :=
  ∀ n, P10897938297049687969.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P4160277174363045394

`(A014574(n+1)-1)*A176810(n+1)`
-/

namespace A071142.P4160277174363045394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014574 (n + 1) - 1) * A176810 (n + 1)

end

end A071142.P4160277174363045394

namespace A071142

/-- `(A014574(n+1)-1)*A176810(n+1)` -/
def P4160277174363045394.Spec : Prop :=
  ∀ n, P4160277174363045394.a n = A071142 (n + 1)

end A071142

/-!
# A071143: Numbers n such that (i) the sum of the distinct primes dividing n is divisible by the largest prime dividing n and (ii) n has exactly 4 distinct prime factors and (iii) n is squarefree.

The programs for A071143, there is no canonical definition to state claims against.
-/

/-! ## A071143.P8137467574731694866

`∩[A071141(n+1), A383728(n+1)]`
-/

namespace A071143.P8137467574731694866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P8137467574731694866

/-! ## A071143.P1515138401879885814

`∩[A071312(n+1), A383728(n+1)]`
-/

namespace A071143.P1515138401879885814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P1515138401879885814

/-! ## A071143.P8315231750066746204

`∩[A112343(n+1), A383728(n+1)]`
-/

namespace A071143.P8315231750066746204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P8315231750066746204

/-! ## A071143.P8380109771447945448

`∩[A232241(n+1), A383728(n+1)]`
-/

namespace A071143.P8380109771447945448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P8380109771447945448

/-! ## A071143.P11857593718334438277

`∩[A163836(n+1), A383728(n+1)]`
-/

namespace A071143.P11857593718334438277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P11857593718334438277

/-! ## A071143.P36894260816973932

`∩[A383728(n+1), A384498(n+1)]`
-/

namespace A071143.P36894260816973932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P36894260816973932

/-! ## A071143.P4312217400361706645

`∩[A071141(n+1), A317182(n+1)]`
-/

namespace A071143.P4312217400361706645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P4312217400361706645

/-! ## A071143.P6265153452630930172

`∩[A046390(n+1), A071140(n+1)]`
-/

namespace A071143.P6265153452630930172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P6265153452630930172

/-! ## A071143.P7938702456286259507

`∩[A046390(n+1), A071141(n+1)]`
-/

namespace A071143.P7938702456286259507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P7938702456286259507

/-! ## A071143.P15002068916239470755

`∩[A046390(n+1), A071312(n+1)]`
-/

namespace A071143.P15002068916239470755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P15002068916239470755

/-! ## A071143.P12780692624597319028

`∩[A046390(n+1), A112343(n+1)]`
-/

namespace A071143.P12780692624597319028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P12780692624597319028

/-! ## A071143.P12441962645834613321

`∩[A046390(n+1), A163836(n+1)]`
-/

namespace A071143.P12441962645834613321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P12441962645834613321

/-! ## A071143.P11179235659447566853

`∩[A046390(n+1), A232241(n+1)]`
-/

namespace A071143.P11179235659447566853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P11179235659447566853

/-! ## A071143.P2941732343143785895

`∩[A046390(n+1), A382469(n+1)]`
-/

namespace A071143.P2941732343143785895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P2941732343143785895

/-! ## A071143.P54230183965371302

`∩[A046390(n+1), A383728(n+1)]`
-/

namespace A071143.P54230183965371302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071143.P54230183965371302

/-!
# A071144: Numbers n such that sum of distinct primes dividing n is divisible by the largest prime dividing n. Also n has exactly 5 distinct prime factors and n is squarefree.

The programs for A071144, there is no canonical definition to state claims against.
-/

/-! ## A071144.P6231119687505848204

`∩[A046387(n+1), A071140(n+1)]`
-/

namespace A071144.P6231119687505848204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071144.P6231119687505848204

/-! ## A071144.P14503916604319054851

`∩[A046387(n+1), A071141(n+1)]`
-/

namespace A071144.P14503916604319054851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071144.P14503916604319054851

/-! ## A071144.P47039670460557173

`∩[A051270(n+1), A071141(n+1)]`
-/

namespace A071144.P47039670460557173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071144.P47039670460557173

/-! ## A071144.P9974911278562084208

`filter[A071141(n+1), A358751(#)]`
-/

namespace A071144.P9974911278562084208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A071144.P9974911278562084208

/-! ## A071144.P5114818460885948432

`filter[A071141(n+1), A358771(#)]`
-/

namespace A071144.P5114818460885948432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A071144.P5114818460885948432

/-!
# A071145: Numbers n such that sum of distinct primes dividing n is divisible by the largest prime dividing n. Also n has exactly 6 distinct prime factors and n is squarefree.

The programs for A071145, there is no canonical definition to state claims against.
-/

/-! ## A071145.P3177646641006915364

`∩[A067885(n+1), A071141(n+1)]`
-/

namespace A071145.P3177646641006915364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071145.P3177646641006915364

/-!
# A071147: Smallest squarefree number k with exactly n prime factors such that the sum of the prime factors is divisible by the largest prime dividing k, or 0 if no such k exists.

The programs for A071147, there is no canonical definition to state claims against.
-/

/-! ## A071147.P13993324397610643455

`A011886(A262743(n+1))%A244021(n+1)`
-/

namespace A071147.P13993324397610643455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011886 (A262743 (n + 1)).toNat) (A244021 (n + 1))

end

end A071147.P13993324397610643455

/-!
# A071148: Partial sums of sequence of odd primes (A065091); a(n) = sum of the first n odd primes.

The programs for A071148, the canonical program `A071148.P13630786703162267389` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071148 has offset 1).

The definition of A071148 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071148.P13630786703162267389

`A007504(n+2)-2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071148

/-- `A007504(n+2)-2` -/
def P13630786703162267389.Spec : Prop :=
  ∀ n, P13630786703162267389.a n = A071148 (n + 1)

theorem P13630786703162267389.correct : P13630786703162267389.Spec := by
  intro n
  simp only [A071148, Nat.add_sub_cancel]

end A071148

/-! ## A071148.P2969796213132492232

`∑[p?[2*n+1]]`
-/

namespace A071148.P2969796213132492232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P2969796213132492232

namespace A071148

/-- `∑[p?[2*n+1]]` -/
def P2969796213132492232.Spec : Prop :=
  ∀ n, (P2969796213132492232.a n : ℤ) = A071148 (n + 1)

end A071148

/-! ## A071148.P13904819556841134244

`∑[or(1, p?[n+1+n])]`
-/

namespace A071148.P13904819556841134244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P13904819556841134244

namespace A071148

/-- `∑[or(1, p?[n+1+n])]` -/
def P13904819556841134244.Spec : Prop :=
  ∀ n, (P13904819556841134244.a n : ℤ) = A071148 (n + 1)

end A071148

/-! ## A071148.P10702331604232405449

`∑[root(p?[n+1+n], 2)²]`
-/

namespace A071148.P10702331604232405449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P10702331604232405449

namespace A071148

/-- `∑[root(p?[n+1+n], 2)²]` -/
def P10702331604232405449.Spec : Prop :=
  ∀ n, P10702331604232405449.a n = (A071148 (n + 1) : ℝ)

end A071148

/-! ## A071148.P9503161926589432384

`p?[2*n+1]+a(n-1)` with `a(0)=3`
-/

namespace A071148.P9503161926589432384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + a (n - 1)

end

end A071148.P9503161926589432384

namespace A071148

/-- `p?[2*n+1]+a(n-1)` -/
def P9503161926589432384.Spec : Prop :=
  ∀ n, (P9503161926589432384.a n : ℤ) = A071148 (n + 1)

end A071148

/-! ## A071148.P12533010304546689973

`∑[A065091(n+1)]`
-/

namespace A071148.P12533010304546689973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P12533010304546689973

namespace A071148

/-- `∑[A065091(n+1)]` -/
def P12533010304546689973.Spec : Prop :=
  ∀ n, P12533010304546689973.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P13740814469273895184

`A343859(n+1)+1`
-/

namespace A071148.P13740814469273895184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343859 (n + 1) + 1

end

end A071148.P13740814469273895184

namespace A071148

/-- `A343859(n+1)+1` -/
def P13740814469273895184.Spec : Prop :=
  ∀ n, P13740814469273895184.a n = A071148 (n + 1)

theorem P13740814469273895184.correct : P13740814469273895184.Spec := by
  intro n
  simp only [A071148, Nat.add_sub_cancel, A071148.P13740814469273895184.a, A071148.P13630786703162267389.a, A007504, A007504.P14310834286015847203.a, A343859, A343859.P4309510753267781368.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071148

/-! ## A071148.P11547310692263556288

`∑[A045344(n+1)]+1`
-/

namespace A071148.P11547310692263556288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071148.P11547310692263556288

namespace A071148

/-- `∑[A045344(n+1)]+1` -/
def P11547310692263556288.Spec : Prop :=
  ∀ n, P11547310692263556288.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P15484484818742281519

`∑[A048974(n+1)-2]`
-/

namespace A071148.P15484484818742281519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P15484484818742281519

namespace A071148

/-- `∑[A048974(n+1)-2]` -/
def P15484484818742281519.Spec : Prop :=
  ∀ n, P15484484818742281519.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P5122942859468500728

`∑[A055670(n+2)-1]`
-/

namespace A071148.P5122942859468500728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P5122942859468500728

namespace A071148

/-- `∑[A055670(n+2)-1]` -/
def P5122942859468500728.Spec : Prop :=
  ∀ n, P5122942859468500728.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P5421717704044610530

`∑[∑[A001223(n+1)]+2]`
-/

namespace A071148.P5421717704044610530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P5421717704044610530

namespace A071148

/-- `∑[∑[A001223(n+1)]+2]` -/
def P5421717704044610530.Spec : Prop :=
  ∀ n, P5421717704044610530.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P260676400539826540

`∑[A014690(n+1)-(n+1)]`
-/

namespace A071148.P260676400539826540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P260676400539826540

namespace A071148

/-- `∑[A014690(n+1)-(n+1)]` -/
def P260676400539826540.Spec : Prop :=
  ∀ n, P260676400539826540.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P13770635894677442585

`A177082(n+1)/A317440(n+1)`
-/

namespace A071148.P13770635894677442585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177082 (n + 1) : ℚ) / (A317440 (n + 1) : ℚ)

end

end A071148.P13770635894677442585

namespace A071148

/-- `A177082(n+1)/A317440(n+1)` -/
def P13770635894677442585.Spec : Prop :=
  ∀ n, P13770635894677442585.a n = (A071148 (n + 1) : ℚ)

end A071148

/-! ## A071148.P4493866568747179398

`∑[A000040(n+2)]`
-/

namespace A071148.P4493866568747179398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P4493866568747179398

namespace A071148

/-- `∑[A000040(n+2)]` -/
def P4493866568747179398.Spec : Prop :=
  ∀ n, P4493866568747179398.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P10351981146624447756

`∑[A006005(n+2)]`
-/

namespace A071148.P10351981146624447756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P10351981146624447756

namespace A071148

/-- `∑[A006005(n+2)]` -/
def P10351981146624447756.Spec : Prop :=
  ∀ n, P10351981146624447756.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P8857753028772406759

`A237589(n+2)-1`
-/

namespace A071148.P8857753028772406759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 2) - 1

end

end A071148.P8857753028772406759

namespace A071148

/-- `A237589(n+2)-1` -/
def P8857753028772406759.Spec : Prop :=
  ∀ n, P8857753028772406759.a n = A071148 (n + 1)

theorem P8857753028772406759.correct : P8857753028772406759.Spec := by
  intro n
  simp only [A071148, Nat.add_sub_cancel, A071148.P8857753028772406759.a, A071148.P13630786703162267389.a, A007504, A007504.P14310834286015847203.a, A237589, A237589.P15064465826932885110.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071148

/-! ## A071148.P5476850137689965551

`A101301(n+2)+n`
-/

namespace A071148.P5476850137689965551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (n + 2) + (n : ℤ)

end

end A071148.P5476850137689965551

namespace A071148

/-- `A101301(n+2)+n` -/
def P5476850137689965551.Spec : Prop :=
  ∀ n, P5476850137689965551.a n = A071148 (n + 1)

theorem P5476850137689965551.correct : P5476850137689965551.Spec := by
  intro n
  simp only [A071148, Nat.add_sub_cancel, A071148.P5476850137689965551.a, A071148.P13630786703162267389.a, A007504, A007504.P14310834286015847203.a, A101301, A101301.P12618163721935666644.a, A014284, A014284.P18183547548072881472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071148

/-! ## A071148.P9402193623614364360

`A040976(n+2)+A007504(n+1)`
-/

namespace A071148.P9402193623614364360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 2) + A007504 (n + 1)

end

end A071148.P9402193623614364360

namespace A071148

/-- `A040976(n+2)+A007504(n+1)` -/
def P9402193623614364360.Spec : Prop :=
  ∀ n, P9402193623614364360.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P2439913989573013352

`A117495(n+2)-A185382(n+1)`
-/

namespace A071148.P2439913989573013352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 2) - A185382 (n + 1)

end

end A071148.P2439913989573013352

namespace A071148

/-- `A117495(n+2)-A185382(n+1)` -/
def P2439913989573013352.Spec : Prop :=
  ∀ n, P2439913989573013352.a n = A071148 (n + 1)

end A071148

/-! ## A071148.P3209685756189302612

`A007504(n)+A006093(n+2)+A006093(n+1)`
-/

namespace A071148.P3209685756189302612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A006093 (n + 2) + A006093 (n + 1)

end

end A071148.P3209685756189302612

namespace A071148

/-- `A007504(n)+A006093(n+2)+A006093(n+1)` -/
def P3209685756189302612.Spec : Prop :=
  ∀ n, P3209685756189302612.a n = A071148 (n + 1)

end A071148

/-!
# A071149: Numbers n such that the sum of the first n odd primes (A071148) is prime; analogous to A013916.

The programs for A071149, there is no canonical definition to state claims against.
-/

/-! ## A071149.P13462744522389702958

`record[gcd(2*n+1, A056811(A089793(n)))]`
-/

namespace A071149.P13462744522389702958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A056811 (A089793 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071149.P13462744522389702958

/-! ## A071149.P9184203397212233738

`record[(n+1)*A065331(A089793(n+1))-n]`
-/

namespace A071149.P9184203397212233738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065331 (A089793 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071149.P9184203397212233738

/-! ## A071149.P4173225407981172691

`A000720(A071150(1+n)-1)`
-/

namespace A071149.P4173225407981172691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071150 (1 + n) - 1).toNat

end

end A071149.P4173225407981172691

/-! ## A071149.P4673129311212975902

`A289508(A071150(n+1))-1`
-/

namespace A071149.P4673129311212975902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A071150 (n + 1)).toNat - 1

end

end A071149.P4673129311212975902

/-! ## A071149.P1006177781440754215

`A033270(A071150(n+1))`
-/

namespace A071149.P1006177781440754215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A071150 (n + 1)).toNat

end

end A071149.P1006177781440754215

/-! ## A071149.P204165914404523686

`filter[2*n+1, A102845(#)]`
-/

namespace A071149.P204165914404523686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102845 (f1 j) = 1) n)

end

end A071149.P204165914404523686

/-!
# A071150: Primes p such that the sum of all odd primes <= p is also a prime.

The programs for A071150, there is no canonical definition to state claims against.
-/

/-! ## A071150.P15298670762835992591

`A065091(A071149(n+1))`
-/

namespace A071150.P15298670762835992591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A071149 (n + 1)).toNat

end

end A071150.P15298670762835992591

/-! ## A071150.P2740688523261914782

`A000040(1+A071149(1+n))`
-/

namespace A071150.P2740688523261914782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A071149 (1 + n)).toNat

end

end A071150.P2740688523261914782

/-! ## A071150.P12292710368978767209

`A008578(A071149(1+n)+2)`
-/

namespace A071150.P12292710368978767209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A071149 (1 + n) + 2).toNat

end

end A071150.P12292710368978767209

/-! ## A071150.P10694937892052392591

`A093515(2*A071149(n+1))`
-/

namespace A071150.P10694937892052392591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A071149 (n + 1)).toNat

end

end A071150.P10694937892052392591

/-! ## A071150.P10751879488808629333

`A008864(A071149(n+1)+1)-1`
-/

namespace A071150.P10751879488808629333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (A071149 (n + 1) + 1).toNat - 1

end

end A071150.P10751879488808629333

/-! ## A071150.P6623855015063200137

`p?[A065091(n+1)*A102845(n+1)]`
-/

namespace A071150.P6623855015063200137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A102845 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071150.P6623855015063200137

/-!
# A071151: Primes which are the sum of the first k odd primes for some k.

The programs for A071151, there is no canonical definition to state claims against.
-/

/-! ## A071151.P5442629004830307109

`A007504(A071149(n+1)+1)-2`
-/

namespace A071151.P5442629004830307109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A071149 (n + 1) + 1).toNat - 2

end

end A071151.P5442629004830307109

/-! ## A071151.P10387669358312801982

`A071148(A071149(1+n))`
-/

namespace A071151.P10387669358312801982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (A071149 (1 + n)).toNat

end

end A071151.P10387669358312801982

/-! ## A071151.P12638013842826967118

`A034387(A071150(n+1))-2`
-/

namespace A071151.P12638013842826967118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A071150 (n + 1)).toNat - 2

end

end A071151.P12638013842826967118

/-! ## A071151.P12952623097706272088

`p?[A071148(n+1)]`
-/

namespace A071151.P12952623097706272088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071151.P12952623097706272088

/-! ## A071151.P17497402184638608480

`A065091(A179321(n+1))`
-/

namespace A071151.P17497402184638608480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A179321 (n + 1)).toNat

end

end A071151.P17497402184638608480

/-!
# A071152: Łukasiewicz words for the rooted plane binary trees (interpretation d in Stanley's exercise 19) with the last leaf implicit, i.e., these words are given without the last trailing zero, except for the null tree which is encoded as 0.

The programs for A071152, there is no canonical definition to state claims against.
-/

/-! ## A071152.P8746682881115759730

`2*A063171(n)`
-/

namespace A071152.P8746682881115759730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063171 n

end

end A071152.P8746682881115759730

/-! ## A071152.P16552816877891229271

`2*A007088(A014486(n))`
-/

namespace A071152.P16552816877891229271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007088 (A014486 n).toNat

end

end A071152.P16552816877891229271

/-! ## A071152.P5643671759022068920

`2*A099820(A057520(n))`
-/

namespace A071152.P5643671759022068920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099820 (A057520 n).toNat

end

end A071152.P5643671759022068920

/-! ## A071152.P10163087892774906460

`2*A007088(2*A057520(n))`
-/

namespace A071152.P10163087892774906460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007088 (2 * A057520 n).toNat

end

end A071152.P10163087892774906460

/-! ## A071152.P3943253291403121412

`2*A099820(A014486(n)/2)`
-/

namespace A071152.P3943253291403121412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099820 (SequenceMachineLib.roundAway ((A014486 n : ℚ) / 2)).toNat

end

end A071152.P3943253291403121412

/-! ## A071152.P11752288588477889959

`A063171(n)+A007088(A014486(n))`
-/

namespace A071152.P11752288588477889959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 n + A007088 (A014486 n).toNat

end

end A071152.P11752288588477889959

/-! ## A071152.P12029273750897817732

`A024630(A194045(n))`
-/

namespace A071152.P12029273750897817732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024630 (A194045 n).toNat

end

end A071152.P12029273750897817732

/-! ## A071152.P17640760715743321227

`A169965(A014486(n)+1)`
-/

namespace A071152.P17640760715743321227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (A014486 n + 1).toNat

end

end A071152.P17640760715743321227

/-! ## A071152.P2003935248781086276

`2*A185544(4*A057520(n))`
-/

namespace A071152.P2003935248781086276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185544 (4 * A057520 n).toNat

end

end A071152.P2003935248781086276

/-! ## A071152.P10050061810794325826

`A185544(A194045(n))+A063171(n)`
-/

namespace A071152.P10050061810794325826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A194045 n).toNat + A063171 n

end

end A071152.P10050061810794325826

/-!
# A071153: Łukasiewicz word for each rooted plane tree (interpretation e in Stanley's exercise 19) encoded by A014486 (or A063171), with the last leaf implicit, i.e., these words are given without the last trailing zero, except for the null tree which is encoded as 0.

The programs for A071153, there is no canonical definition to state claims against.
-/

/-! ## A071153.P1047399408704534670

`A079436(n)/10`
-/

namespace A071153.P1047399408704534670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079436 n : ℚ) / 10

end

end A071153.P1047399408704534670

/-! ## A071153.P15161790650111196412

`A059995(A079436(n))`
-/

namespace A071153.P15161790650111196412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A079436 n).toNat

end

end A071153.P15161790650111196412

/-! ## A071153.P17936585922379813572

`A008616(A079436(n)+1)`
-/

namespace A071153.P17936585922379813572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A079436 n + 1).toNat

end

end A071153.P17936585922379813572

/-! ## A071153.P14585430908849364780

`A004179(A079436(n)+4)`
-/

namespace A071153.P14585430908849364780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A079436 n + 4).toNat

end

end A071153.P14585430908849364780

/-! ## A071153.P6848723194795875403

`A004184(A079436(n)+9)`
-/

namespace A071153.P6848723194795875403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A079436 n + 9).toNat

end

end A071153.P6848723194795875403

/-!
# A071154: Totally balanced decimal numbers: if we assign the weight w(d) = d-1 to each digit d (i.e., w(0) = -1, w(1) = 0, ..., w(9) = 8) and then read the digits of the term from left to right, the partial sum of the weights is never negative and the total weighted sum is zero.

The programs for A071154, there is no canonical definition to state claims against.
-/

/-! ## A071154.P6138735627510871032

`A071153(A057505(1+n))`
-/

namespace A071154.P6138735627510871032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (A057505 (1 + n)).toNat

end

end A071154.P6138735627510871032

/-! ## A071154.P12065710287743062577

`A007623(A059985(1+n))`
-/

namespace A071154.P12065710287743062577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A059985 (1 + n)).toNat

end

end A071154.P12065710287743062577

/-! ## A071154.P14109235692978411475

`A001202(A057520(1+n)+1)`
-/

namespace A071154.P14109235692978411475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A057520 (1 + n) + 1).toNat

end

end A071154.P14109235692978411475

/-! ## A071154.P5554918935317017385

`eq[A375968(n), A400696(n)]`
-/

namespace A071154.P5554918935317017385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400696 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071154.P5554918935317017385

/-!
# A071155: The Catalan factorial walks (for each rooted plane tree encoded by A014486) encoded as zero-free numbers in factorial base (A007623).

The programs for A071155, there is no canonical definition to state claims against.
-/

/-! ## A071155.P17348290735929591199

`A071156(A057164(n))`
-/

namespace A071155.P17348290735929591199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (A057164 n).toNat

end

end A071155.P17348290735929591199

/-! ## A071155.P1216266911163429923

`fo[A085200(n)]`
-/

namespace A071155.P1216266911163429923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085200 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A071155.P1216266911163429923

/-! ## A071155.P5103232015085925497

`A085198(A014486(A125976(A057164(A125976(n)))))`
-/

namespace A071155.P5103232015085925497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085198 (A014486 (A125976 (A057164 (A125976 n).toNat).toNat).toNat).toNat

end

end A071155.P5103232015085925497

/-! ## A071155.P7369440165656298738

`A322001(A071157(n))`
-/

namespace A071155.P7369440165656298738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322001 (A071157 n).toNat

end

end A071155.P7369440165656298738

/-!
# A071156: Apart from the initial term (0), lists all integers whose factorial expansion ends with 1 (i.e., are odd numbers), do not contain a digit zero and each successive digit to the left is at most one greater than the preceding digit.

The programs for A071156, there is no canonical definition to state claims against.
-/

/-! ## A071156.P2000965446820966910

`∑[A085191(abs(1-n))]-2`
-/

namespace A071156.P2000965446820966910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085191 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A071156.P2000965446820966910

/-! ## A071156.P4331895371684358993

`A085191(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A071156.P4331895371684358993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A085191 (n - 1) + a (n - 1)

end

end A071156.P4331895371684358993

/-! ## A071156.P11829138189556198453

`A071155(A057164(n))`
-/

namespace A071156.P11829138189556198453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071155 (A057164 n).toNat

end

end A071156.P11829138189556198453

/-! ## A071156.P17891616950790556736

`fo[A085199(n)]`
-/

namespace A071156.P17891616950790556736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A071156.P17891616950790556736

/-! ## A071156.P3535830045058790101

`lt[n-1, A085200(n)²]`
-/

namespace A071156.P3535830045058790101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085200 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071156.P3535830045058790101

/-! ## A071156.P16460615195180509340

`eq[n, A071155(A085200(n))]`
-/

namespace A071156.P16460615195180509340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071155 (A085200 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071156.P16460615195180509340

/-! ## A071156.P12368284611869888968

`A085198(A014486(n))`
-/

namespace A071156.P12368284611869888968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085198 (A014486 n).toNat

end

end A071156.P12368284611869888968

/-!
# A071157: The zero-free, right-to-left factorial walk encoding for each rooted plane tree encoded by A014486. Sequence A071155 shown with factorial expansion (A007623).

The programs for A071157, there is no canonical definition to state claims against.
-/

/-! ## A071157.P13098103206122317564

`A007623(A071155(n))`
-/

namespace A071157.P13098103206122317564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A071155 n).toNat

end

end A071157.P13098103206122317564

/-! ## A071157.P15088867793186122398

`A320390(A166456(n))`
-/

namespace A071157.P15088867793186122398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (A166456 n).toNat

end

end A071157.P15088867793186122398

/-!
# A071158: Factorial expansion of A071156.

The programs for A071158, there is no canonical definition to state claims against.
-/

/-! ## A071158.P13291242374113993159

`A071157(A057164(1+n))`
-/

namespace A071158.P13291242374113993159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (A057164 (1 + n)).toNat

end

end A071158.P13291242374113993159

/-! ## A071158.P3960125547287318532

`record[A071157(A057164(abs(n-1)))]`
-/

namespace A071158.P3960125547287318532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (A057164 |(n : ℤ) - 1|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071158.P3960125547287318532

/-! ## A071158.P12994378589003876405

`A007623(∑[A085191(n)])`
-/

namespace A071158.P12994378589003876405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071158.P12994378589003876405

/-! ## A071158.P11285006799710907000

`filter[A397794(n), A168046(#)]`
-/

namespace A071158.P11285006799710907000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A071158.P11285006799710907000

/-!
# A071159: Integers whose decimal expansion start with 1, do not contain zeros and each successive digit to the right is at most one greater than the previous digit.

The programs for A071159, there is no canonical definition to state claims against.
-/

/-! ## A071159.P9734174535714977614

`A239903(A057549(1+n))`
-/

namespace A071159.P9734174535714977614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (A057549 (1 + n)).toNat

end

end A071159.P9734174535714977614

/-! ## A071159.P8037592906757799337

`∩[A193023(1+n), A239903(n)]`
-/

namespace A071159.P8037592906757799337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P8037592906757799337

/-! ## A071159.P7575484872845693345

`∩[A240763(n+1), A239903(n)]`
-/

namespace A071159.P7575484872845693345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P7575484872845693345

/-! ## A071159.P16152175625924231056

`∩[A084545(n+1), A239903(n)]`
-/

namespace A071159.P16152175625924231056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P16152175625924231056

/-! ## A071159.P9901560859473740102

`∩[A001729(n+1), A239903(n)]`
-/

namespace A071159.P9901560859473740102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P9901560859473740102

/-! ## A071159.P16666078083267927029

`∩[A039117(n+1), A239903(n)]`
-/

namespace A071159.P16666078083267927029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P16666078083267927029

/-! ## A071159.P9243032403750047377

`∩[A039118(n+1), A239903(n)]`
-/

namespace A071159.P9243032403750047377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P9243032403750047377

/-! ## A071159.P3338000911750286684

`∩[A039119(n+1), A239903(n)]`
-/

namespace A071159.P3338000911750286684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P3338000911750286684

/-! ## A071159.P13483246157659921243

`∩[A284062(n+1), A239903(n)]`
-/

namespace A071159.P13483246157659921243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P13483246157659921243

/-! ## A071159.P17710740205275455590

`A004086(A071157(n+1))`
-/

namespace A071159.P17710740205275455590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A071157 (n + 1)).toNat

end

end A071159.P17710740205275455590

/-!
# A071160: Łukasiewicz words that are also valid asynchronic siteswap juggling patterns.

The programs for A071160, there is no canonical definition to state claims against.
-/

/-! ## A071160.P4388471308899455380

`A071153(A071163(n))`
-/

namespace A071160.P4388471308899455380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (A071163 n).toNat

end

end A071160.P4388471308899455380

/-! ## A071160.P6140791454090780787

`A071161(∏[char[2^n]+char[1]+1]-n-1)`
-/

namespace A071160.P6140791454090780787
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + ((if ∃ j, f3 j = n then 1 else 0) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071161 (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A071160.P6140791454090780787

/-! ## A071160.P14198481138286261147

`A007623(A060125(record[A225901(n)]))`
-/

namespace A071160.P14198481138286261147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A060125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A071160.P14198481138286261147

/-!
# A071161: Integers whose decimal expansion satisfies the condition that if we read each term from the left to right (the most significant to the least significant digit) then each nonzero digit gives a distance to the next nonzero digit to right (with a cyclic wrap-over from the least-significant to the most significant nonzero digit).

The programs for A071161, there is no canonical definition to state claims against.
-/

/-! ## A071161.P7056630536833135194

`record[A071160(A035327(1+n))]`
-/

namespace A071161.P7056630536833135194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071160 (A035327 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071161.P7056630536833135194

/-! ## A071161.P15925933041344256864

`record[A071160(n-A006257(n))]`
-/

namespace A071161.P15925933041344256864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071160 ((n : ℤ) - A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071161.P15925933041344256864

/-! ## A071161.P738503963450222208

`A071160(A337909(n+1)-1)`
-/

namespace A071161.P738503963450222208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071160 (A337909 (n + 1) - 1).toNat

end

end A071161.P738503963450222208

/-! ## A071161.P7373143333328659366

`record[A071160(A343229(n))]`
-/

namespace A071161.P7373143333328659366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071160 (A343229 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071161.P7373143333328659366

/-! ## A071161.P16534426851575501787

`A007623(eq[A275957(n), A276008(n)])`
-/

namespace A071161.P16534426851575501787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071161.P16534426851575501787

/-!
# A071162: Simple rewriting of binary expansion of n resulting A014486-codes for rooted binary trees with height equal to number of internal vertices. (Binary trees where at each internal vertex at least the other child is leaf).

The programs for A071162, there is no canonical definition to state claims against.
-/

/-! ## A071162.P13040184760656054469

`A014486(A071163(n))`
-/

namespace A071162.P13040184760656054469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A071163 n).toNat

end

end A071162.P13040184760656054469

/-! ## A071162.P5377802485243864644

`∩[2*A004745(n+1), A014486(n)]`
-/

namespace A071162.P5377802485243864644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071162.P5377802485243864644

/-! ## A071162.P11561293023097294883

`filter[A004745(n+1), A080116(#)]`
-/

namespace A071162.P11561293023097294883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080116 (f1 j).toNat = 1) n)

end

end A071162.P11561293023097294883

/-! ## A071162.P9814583900841136432

`∩[A004745(n+1), A014486(n)]`
-/

namespace A071162.P9814583900841136432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071162.P9814583900841136432

/-! ## A071162.P13900156838249598733

`A056539(A209642(n))`
-/

namespace A071162.P13900156838249598733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A209642 n).toNat

end

end A071162.P13900156838249598733

/-! ## A071162.P4725268019121339646

`A036044(A056539(A036044(A209641(A209861(n)))))`
-/

namespace A071162.P4725268019121339646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A056539 (A036044 (A209641 (A209861 n).toNat).toNat).toNat).toNat

end

end A071162.P4725268019121339646

/-!
# A071163: A014486-indices for rooted binary trees with height equal to number of internal vertices. (Binary trees where at each internal vertex at least the other child is leaf.)

The programs for A071163, there is no canonical definition to state claims against.
-/

/-! ## A071163.P13227300728476828895

`A080300(A071162(n))`
-/

namespace A071163.P13227300728476828895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (A071162 n).toNat

end

end A071163.P13227300728476828895

/-! ## A071163.P972137620527566192

`record[A069787(n)]`
-/

namespace A071163.P972137620527566192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P972137620527566192

/-! ## A071163.P2747351492880684412

`record[A057117(n)]`
-/

namespace A071163.P2747351492880684412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P2747351492880684412

/-! ## A071163.P13458825085624325331

`record[A082356(n)]`
-/

namespace A071163.P13458825085624325331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P13458825085624325331

/-! ## A071163.P12809427550929538806

`record[A082360(n)]`
-/

namespace A071163.P12809427550929538806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P12809427550929538806

/-! ## A071163.P15814203365842034607

`record[A082325(n)]`
-/

namespace A071163.P15814203365842034607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P15814203365842034607

/-! ## A071163.P11486768653675167033

`record[A057506(A057163(n))]`
-/

namespace A071163.P11486768653675167033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P11486768653675167033

/-! ## A071163.P2136305634689559245

`record[fo[A057118(n)]]`
-/

namespace A071163.P2136305634689559245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057118 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P2136305634689559245

/-! ## A071163.P16366436624585769679

`record[fo[A082326(n)]]`
-/

namespace A071163.P16366436624585769679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082326 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P16366436624585769679

/-! ## A071163.P10255868163917821074

`record[fo[A082355(n)]]`
-/

namespace A071163.P10255868163917821074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082355 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P10255868163917821074

/-! ## A071163.P12609871082465216305

`record[fo[A082359(n)]]`
-/

namespace A071163.P12609871082465216305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082359 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P12609871082465216305

/-! ## A071163.P12769642203945154943

`record[A057163(A057503(n))]`
-/

namespace A071163.P12769642203945154943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P12769642203945154943

/-! ## A071163.P3281464985539291194

`record[A057163(A057505(n))]`
-/

namespace A071163.P3281464985539291194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P3281464985539291194

/-! ## A071163.P14418518673064529907

`record[A130935(n)]`
-/

namespace A071163.P14418518673064529907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P14418518673064529907

/-! ## A071163.P11822997277915881389

`record[A130941(n)]`
-/

namespace A071163.P11822997277915881389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P11822997277915881389

/-! ## A071163.P2271385596226769527

`record[fo[A130936(n)]]`
-/

namespace A071163.P2271385596226769527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130936 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P2271385596226769527

/-! ## A071163.P12908418309447204172

`record[fo[A130942(n)]]`
-/

namespace A071163.P12908418309447204172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (n : ℤ)) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071163.P12908418309447204172

/-! ## A071163.P2563549158112185077

`eq[A082852(n), A153835(n)]`
-/

namespace A071163.P2563549158112185077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082852 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153835 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071163.P2563549158112185077

/-! ## A071163.P6312970604861385713

`eq[A072643(n), A179751(n)]`
-/

namespace A071163.P6312970604861385713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071163.P6312970604861385713

/-!
# A071164: Square array read by antidiagonals of T(n,k)=T(n-1,k-n)+T(n-k,k-1) starting with T(n,k)=0 if either n or k are negative but with T(0,0)=1.

The programs for A071164, there is no canonical definition to state claims against.
-/

/-! ## A071164.P12018568920576673110

`A092037(∑[A137821(n+1)])`
-/

namespace A071164.P12018568920576673110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071164.P12018568920576673110

/-! ## A071164.P2841136345598759366

`A113048(A299097(n+1)+4)`
-/

namespace A071164.P2841136345598759366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113048 (A299097 (n + 1) + 4).toNat

end

end A071164.P2841136345598759366

/-! ## A071164.P2610442621152339350

`A105700(3*A185779(n+1))`
-/

namespace A071164.P2610442621152339350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (3 * A185779 (n + 1)).toNat

end

end A071164.P2610442621152339350

/-! ## A071164.P4818990886543162910

`A055029(xor(2, A304019(n+1)))`
-/

namespace A071164.P4818990886543162910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (Int.xor 2 (A304019 (n + 1))).toNat

end

end A071164.P4818990886543162910

/-! ## A071164.P14802349342346015021

`and(A034931(n), A299018(n+1))`
-/

namespace A071164.P14802349342346015021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034931 n) (A299018 (n + 1))

end

end A071164.P14802349342346015021

/-!
# A071166: a(n) = n - A006530(A000203(n)), difference between n and largest prime factor of the sum of its divisors.

The programs for A071166, the canonical program `A071166.P5224187019395811307` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071166 has offset 2).

The definition of A071166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2-A006530(A000203(n+2))` (program `A071166.P5224187019395811307`, by `A071166.P5224187019395811307.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071166.P5224187019395811307

`n+2-A006530(A000203(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071166

/-- `n+2-A006530(A000203(n+2))` -/
def P5224187019395811307.Spec : Prop :=
  ∀ n, P5224187019395811307.a n = A071166 (n + 2)

theorem P5224187019395811307.correct : P5224187019395811307.Spec := by
  intro n
  simp only [A071166, Nat.add_sub_cancel]

end A071166

/-! ## A071166.P17510909712615526056

`2-A006530(∑{d}[2+n, #])+n`
-/

namespace A071166.P17510909712615526056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (∑ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)

end

end A071166.P17510909712615526056

namespace A071166

/-- `2-A006530(∑{d}[2+n, #])+n` -/
def P17510909712615526056.Spec : Prop :=
  ∀ n, P17510909712615526056.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P8752134991404660301

`n+2-A006530(A074400(n+2))`
-/

namespace A071166.P8752134991404660301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A074400 (n + 2)).toNat

end

end A071166.P8752134991404660301

namespace A071166

/-- `n+2-A006530(A074400(n+2))` -/
def P8752134991404660301.Spec : Prop :=
  ∀ n, P8752134991404660301.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P9374785787445499980

`n+2-A006530(A080398(n+2))`
-/

namespace A071166.P9374785787445499980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A080398 (n + 2)).toNat

end

end A071166.P9374785787445499980

namespace A071166

/-- `n+2-A006530(A080398(n+2))` -/
def P9374785787445499980.Spec : Prop :=
  ∀ n, P9374785787445499980.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P16211155184083653626

`n+2-A006530(A388274(n+2))`
-/

namespace A071166.P16211155184083653626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A388274 (n + 2)).toNat

end

end A071166.P16211155184083653626

namespace A071166

/-- `n+2-A006530(A388274(n+2))` -/
def P16211155184083653626.Spec : Prop :=
  ∀ n, P16211155184083653626.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P8423878820897126020

`2-A071190(n+2)+n`
-/

namespace A071166.P8423878820897126020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A071190 (n + 2) + (n : ℤ)

end

end A071166.P8423878820897126020

namespace A071166

/-- `2-A071190(n+2)+n` -/
def P8423878820897126020.Spec : Prop :=
  ∀ n, P8423878820897126020.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P12501932511889197744

`2-(p?[A008578(A061395(∑{d}[n+1, #])+1)]-n)`
-/

namespace A071166.P12501932511889197744
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (∑ d ∈ Nat.divisors (f2 n), d) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ))

end

end A071166.P12501932511889197744

namespace A071166

/-- `2-(p?[A008578(A061395(∑{d}[n+1, #])+1)]-n)` -/
def P12501932511889197744.Spec : Prop :=
  ∀ n, P12501932511889197744.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P10398584657816816922

`n+2-A006530(A146076(2*(n+2)))`
-/

namespace A071166.P10398584657816816922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A006530 (A146076 (2 * (n + 2))).toNat

end

end A071166.P10398584657816816922

namespace A071166

/-- `n+2-A006530(A146076(2*(n+2)))` -/
def P10398584657816816922.Spec : Prop :=
  ∀ n, P10398584657816816922.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P9939294064222119446

`n+1-A070777(A000203(n+2))`
-/

namespace A071166.P9939294064222119446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A070777 (A000203 (n + 2)).toNat

end

end A071166.P9939294064222119446

namespace A071166

/-- `n+1-A070777(A000203(n+2))` -/
def P9939294064222119446.Spec : Prop :=
  ∀ n, P9939294064222119446.a n = A071166 (n + 2)

end A071166

/-! ## A071166.P12795520672895383939

`A000027(n+2)-A111089(A000203(n+2))`
-/

namespace A071166.P12795520672895383939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) - A111089 (A000203 (n + 2)).toNat

end

end A071166.P12795520672895383939

namespace A071166

/-- `A000027(n+2)-A111089(A000203(n+2))` -/
def P12795520672895383939.Spec : Prop :=
  ∀ n, P12795520672895383939.a n = A071166 (n + 2)

end A071166

/-!
# A071167: a(n) = A023194 - A062700(n). Negative values of A071166(m) = m-A006530(A000203(m)) differences. In these cases m is square number from A023194.

The programs for A071167, there is no canonical definition to state claims against.
-/

/-! ## A071167.P195613929297029012

`A023194(1+n)-A062700(n+1)`
-/

namespace A071167.P195613929297029012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (1 + n) - A062700 (n + 1)

end

end A071167.P195613929297029012

/-! ## A071167.P12205191234075215073

`-(A062700(n+1)%A023194(n+1))`
-/

namespace A071167.P12205191234075215073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A062700 (n + 1)) (A023194 (n + 1))

end

end A071167.P12205191234075215073

/-! ## A071167.P15258567997941000550

`A270413(n+1)-(A062700(n+1)+1)`
-/

namespace A071167.P15258567997941000550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (n + 1) - (A062700 (n + 1) + 1)

end

end A071167.P15258567997941000550

/-! ## A071167.P11292892186466417979

`ceil(A292446(n+1)/2-A062700(n+1))`
-/

namespace A071167.P11292892186466417979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292446 (n + 1) : ℚ) / 2 - (A062700 (n + 1) : ℚ)⌉

end

end A071167.P11292892186466417979

/-! ## A071167.P4440338864187878707

`(A292446(Δ[n²]-n)+1)/2-A062700(n+1)`
-/

namespace A071167.P4440338864187878707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1 : ℚ) / 2 - (A062700 (n + 1) : ℚ)

end

end A071167.P4440338864187878707

/-!
# A071168: n-th prime reduced modulo phi(n).

The programs for A071168, the canonical program `A071168.P6424868114243250667` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071168 has offset 1).

The definition of A071168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071168.P6424868114243250667

`A000040(n+1)%A000010(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071168

/-- `A000040(n+1)%A000010(n+1)` -/
def P6424868114243250667.Spec : Prop :=
  ∀ n, P6424868114243250667.a n = A071168 (n + 1)

theorem P6424868114243250667.correct : P6424868114243250667.Spec := by
  intro n
  simp only [A071168, Nat.add_sub_cancel]

end A071168

/-! ## A071168.P12914104181432432926

`A000040(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A071168.P12914104181432432926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A071168.P12914104181432432926

namespace A071168

/-- `A000040(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P12914104181432432926.Spec : Prop :=
  ∀ n, P12914104181432432926.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P3618412763361588897

`Δ[A007504(n)]%Δ[A002088(n)]`
-/

namespace A071168.P3618412763361588897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (n + 1) - f2 n)

end

end A071168.P3618412763361588897

namespace A071168

/-- `Δ[A007504(n)]%Δ[A002088(n)]` -/
def P3618412763361588897.Spec : Prop :=
  ∀ n, P3618412763361588897.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P17359271135049381362

`A000040(n+1)%Δ[A002088(n)]`
-/

namespace A071168.P17359271135049381362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (f1 (n + 1) - f1 n)

end

end A071168.P17359271135049381362

namespace A071168

/-- `A000040(n+1)%Δ[A002088(n)]` -/
def P17359271135049381362.Spec : Prop :=
  ∀ n, P17359271135049381362.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P4768535546987925416

`A104192(n+1)%Δ[A002088(n)]`
-/

namespace A071168.P4768535546987925416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104192 (n + 1)) (f1 (n + 1) - f1 n)

end

end A071168.P4768535546987925416

namespace A071168

/-- `A104192(n+1)%Δ[A002088(n)]` -/
def P4768535546987925416.Spec : Prop :=
  ∀ n, P4768535546987925416.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P12777082757674372924

`A006005(n+1)%A000010(n+1)`
-/

namespace A071168.P12777082757674372924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A000010 (n + 1))

end

end A071168.P12777082757674372924

namespace A071168

/-- `A006005(n+1)%A000010(n+1)` -/
def P12777082757674372924.Spec : Prop :=
  ∀ n, P12777082757674372924.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P10996827532697866101

`A161847(n+1)%A000010(n+1)`
-/

namespace A071168.P10996827532697866101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) (A000010 (n + 1))

end

end A071168.P10996827532697866101

namespace A071168

/-- `A161847(n+1)%A000010(n+1)` -/
def P10996827532697866101.Spec : Prop :=
  ∀ n, P10996827532697866101.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P17027115229471513124

`A171577(n+1)%A000010(n+1)`
-/

namespace A071168.P17027115229471513124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171577 (n + 1)) (A000010 (n + 1))

end

end A071168.P17027115229471513124

namespace A071168

/-- `A171577(n+1)%A000010(n+1)` -/
def P17027115229471513124.Spec : Prop :=
  ∀ n, P17027115229471513124.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P4598684459844253755

`(A040976(n+1)+2)%A000010(n+1)`
-/

namespace A071168.P4598684459844253755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) + 2) (A000010 (n + 1))

end

end A071168.P4598684459844253755

namespace A071168

/-- `(A040976(n+1)+2)%A000010(n+1)` -/
def P4598684459844253755.Spec : Prop :=
  ∀ n, P4598684459844253755.a n = A071168 (n + 1)

theorem P4598684459844253755.correct : P4598684459844253755.Spec := by
  intro n
  simp only [A071168, Nat.add_sub_cancel, A071168.P4598684459844253755.a, A071168.P6424868114243250667.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071168

/-! ## A071168.P10794080269699224282

`A008578(n+2)%A000010(n+1)`
-/

namespace A071168.P10794080269699224282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A000010 (n + 1))

end

end A071168.P10794080269699224282

namespace A071168

/-- `A008578(n+2)%A000010(n+1)` -/
def P10794080269699224282.Spec : Prop :=
  ∀ n, P10794080269699224282.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P12384805979961541145

`record[A006530(n+2)]%A000010(n+1)`
-/

namespace A071168.P12384805979961541145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000010 (n + 1))

end

end A071168.P12384805979961541145

namespace A071168

/-- `record[A006530(n+2)]%A000010(n+1)` -/
def P12384805979961541145.Spec : Prop :=
  ∀ n, P12384805979961541145.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P14816835642838920824

`record[A020639(n+2)]%A000010(n+1)`
-/

namespace A071168.P14816835642838920824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000010 (n + 1))

end

end A071168.P14816835642838920824

namespace A071168

/-- `record[A020639(n+2)]%A000010(n+1)` -/
def P14816835642838920824.Spec : Prop :=
  ∀ n, P14816835642838920824.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P15601145277591938920

`(record[A000010(2*n+1)]+1)%A000010(n+1)`
-/

namespace A071168.P15601145277591938920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1) (A000010 (n + 1))

end

end A071168.P15601145277591938920

namespace A071168

/-- `(record[A000010(2*n+1)]+1)%A000010(n+1)` -/
def P15601145277591938920.Spec : Prop :=
  ∀ n, P15601145277591938920.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P732008791921404325

`A006530(lt[n, A006530(n+2)]+2)%A000010(n+1)`
-/

namespace A071168.P732008791921404325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)) (A000010 (n + 1))

end

end A071168.P732008791921404325

namespace A071168

/-- `A006530(lt[n, A006530(n+2)]+2)%A000010(n+1)` -/
def P732008791921404325.Spec : Prop :=
  ∀ n, P732008791921404325.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P11727766323445755606

`A082500(2*(n+1))%A000010(n+1)`
-/

namespace A071168.P11727766323445755606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082500 (2 * (n + 1))) (A000010 (n + 1))

end

end A071168.P11727766323445755606

namespace A071168

/-- `A082500(2*(n+1))%A000010(n+1)` -/
def P11727766323445755606.Spec : Prop :=
  ∀ n, P11727766323445755606.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P14510587106862462630

`A129767(2*n+1)%A000010(n+1)`
-/

namespace A071168.P14510587106862462630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129767 (2 * n + 1)) (A000010 (n + 1))

end

end A071168.P14510587106862462630

namespace A071168

/-- `A129767(2*n+1)%A000010(n+1)` -/
def P14510587106862462630.Spec : Prop :=
  ∀ n, P14510587106862462630.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P1124881873486964603

`p?[A207790(n+1)]%A000010(n+1)`
-/

namespace A071168.P1124881873486964603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000010 (n + 1))

end

end A071168.P1124881873486964603

namespace A071168

/-- `p?[A207790(n+1)]%A000010(n+1)` -/
def P1124881873486964603.Spec : Prop :=
  ∀ n, P1124881873486964603.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P6282267853641129845

`p?[A167171(n+1)]%A000010(n+1)`
-/

namespace A071168.P6282267853641129845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000010 (n + 1))

end

end A071168.P6282267853641129845

namespace A071168

/-- `p?[A167171(n+1)]%A000010(n+1)` -/
def P6282267853641129845.Spec : Prop :=
  ∀ n, P6282267853641129845.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P13405962929826652784

`record[A051698(n)]%Δ[A002088(n)]`
-/

namespace A071168.P13405962929826652784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A071168.P13405962929826652784

namespace A071168

/-- `record[A051698(n)]%Δ[A002088(n)]` -/
def P13405962929826652784.Spec : Prop :=
  ∀ n, P13405962929826652784.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P2374070242630229868

`record[A039649(n+1)]%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A071168.P2374070242630229868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A071168.P2374070242630229868

namespace A071168

/-- `record[A039649(n+1)]%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P2374070242630229868.Spec : Prop :=
  ∀ n, P2374070242630229868.a n = A071168 (n + 1)

end A071168

/-!
# A071170: n-th prime reduced modulo sigma(n).

The programs for A071170, the canonical program `A071170.P3616014520815881904` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071170 has offset 1).

The definition of A071170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071170.P3616014520815881904

`A000040(n+1)%A000203(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071170

/-- `A000040(n+1)%A000203(n+1)` -/
def P3616014520815881904.Spec : Prop :=
  ∀ n, P3616014520815881904.a n = A071170 (n + 1)

theorem P3616014520815881904.correct : P3616014520815881904.Spec := by
  intro n
  simp only [A071170, Nat.add_sub_cancel]

end A071170

/-! ## A071170.P12716595822826638787

`Δ[A007504(n)]%∑{d}[1+n, #]`
-/

namespace A071170.P12716595822826638787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A071170.P12716595822826638787

namespace A071170

/-- `Δ[A007504(n)]%∑{d}[1+n, #]` -/
def P12716595822826638787.Spec : Prop :=
  ∀ n, P12716595822826638787.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P16582068321515716904

`A000040(1+n)%∑{d}[n+1, #]`
-/

namespace A071170.P16582068321515716904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (1 + n)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A071170.P16582068321515716904

namespace A071170

/-- `A000040(1+n)%∑{d}[n+1, #]` -/
def P16582068321515716904.Spec : Prop :=
  ∀ n, P16582068321515716904.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P682456046094146808

`A006005(n+1)%∑{d}[n+1, #]`
-/

namespace A071170.P682456046094146808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A071170.P682456046094146808

namespace A071170

/-- `A006005(n+1)%∑{d}[n+1, #]` -/
def P682456046094146808.Spec : Prop :=
  ∀ n, P682456046094146808.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P8652450367677676313

`A161847(n+1)%∑{d}[n+1, #]`
-/

namespace A071170.P8652450367677676313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A071170.P8652450367677676313

namespace A071170

/-- `A161847(n+1)%∑{d}[n+1, #]` -/
def P8652450367677676313.Spec : Prop :=
  ∀ n, P8652450367677676313.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P14603384123338404807

`abs(Δ[A022837(n)])%∑{d}[n+1, #]`
-/

namespace A071170.P14603384123338404807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A071170.P14603384123338404807

namespace A071170

/-- `abs(Δ[A022837(n)])%∑{d}[n+1, #]` -/
def P14603384123338404807.Spec : Prop :=
  ∀ n, P14603384123338404807.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P18405229397192557451

`sqrt(A001248(n+1))%∑{d}[n+1, #]`
-/

namespace A071170.P18405229397192557451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A071170.P18405229397192557451

namespace A071170

/-- `sqrt(A001248(n+1))%∑{d}[n+1, #]` -/
def P18405229397192557451.Spec : Prop :=
  ∀ n, P18405229397192557451.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P3412319524984532793

`∑[A054541(n+1)]%∑{d}[n+1, #]`
-/

namespace A071170.P3412319524984532793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A071170.P3412319524984532793

namespace A071170

/-- `∑[A054541(n+1)]%∑{d}[n+1, #]` -/
def P3412319524984532793.Spec : Prop :=
  ∀ n, P3412319524984532793.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P16137114520704885401

`col(A079704(n+1))%∑{d}[n+1, #]`
-/

namespace A071170.P16137114520704885401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A079704 (n + 1)).toNat % (∑ d ∈ Nat.divisors (f1 n), d)

end

end A071170.P16137114520704885401

namespace A071170

/-- `col(A079704(n+1))%∑{d}[n+1, #]` -/
def P16137114520704885401.Spec : Prop :=
  ∀ n, (P16137114520704885401.a n : ℤ) = A071170 (n + 1)

end A071170

/-! ## A071170.P59119391420285522

`Δ[A007504(n)]%A000203(n+1)`
-/

namespace A071170.P59119391420285522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000203 (n + 1))

end

end A071170.P59119391420285522

namespace A071170

/-- `Δ[A007504(n)]%A000203(n+1)` -/
def P59119391420285522.Spec : Prop :=
  ∀ n, P59119391420285522.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P249242247586631171

`A000040(n+1)%Δ[A160664(n)]`
-/

namespace A071170.P249242247586631171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (f1 (n + 1) - f1 n)

end

end A071170.P249242247586631171

namespace A071170

/-- `A000040(n+1)%Δ[A160664(n)]` -/
def P249242247586631171.Spec : Prop :=
  ∀ n, P249242247586631171.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P437192202469276613

`A006005(n+1)%A000203(n+1)`
-/

namespace A071170.P437192202469276613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A000203 (n + 1))

end

end A071170.P437192202469276613

namespace A071170

/-- `A006005(n+1)%A000203(n+1)` -/
def P437192202469276613.Spec : Prop :=
  ∀ n, P437192202469276613.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P12683252830097940819

`A161847(n+1)%A000203(n+1)`
-/

namespace A071170.P12683252830097940819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161847 (n + 1)) (A000203 (n + 1))

end

end A071170.P12683252830097940819

namespace A071170

/-- `A161847(n+1)%A000203(n+1)` -/
def P12683252830097940819.Spec : Prop :=
  ∀ n, P12683252830097940819.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P2110106372084796457

`abs(Δ[A008348(n)])%A000203(n+1)`
-/

namespace A071170.P2110106372084796457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| (A000203 (n + 1))

end

end A071170.P2110106372084796457

namespace A071170

/-- `abs(Δ[A008348(n)])%A000203(n+1)` -/
def P2110106372084796457.Spec : Prop :=
  ∀ n, P2110106372084796457.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P14334082463750134249

`abs(Δ[A022837(n)])%A000203(n+1)`
-/

namespace A071170.P14334082463750134249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| (A000203 (n + 1))

end

end A071170.P14334082463750134249

namespace A071170

/-- `abs(Δ[A022837(n)])%A000203(n+1)` -/
def P14334082463750134249.Spec : Prop :=
  ∀ n, P14334082463750134249.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P6650087329271181881

`abs(Δ[A064365(n)])%A000203(n+1)`
-/

namespace A071170.P6650087329271181881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| (A000203 (n + 1))

end

end A071170.P6650087329271181881

namespace A071170

/-- `abs(Δ[A064365(n)])%A000203(n+1)` -/
def P6650087329271181881.Spec : Prop :=
  ∀ n, P6650087329271181881.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P16122440700796557915

`abs(Δ[A117128(n)])%A000203(n+1)`
-/

namespace A071170.P16122440700796557915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |f1 (n + 1) - f1 n| (A000203 (n + 1))

end

end A071170.P16122440700796557915

namespace A071170

/-- `abs(Δ[A117128(n)])%A000203(n+1)` -/
def P16122440700796557915.Spec : Prop :=
  ∀ n, P16122440700796557915.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P2341729082133765246

`sqrt(A001248(n+1))%A000203(n+1)`
-/

namespace A071170.P2341729082133765246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) (A000203 (n + 1))

end

end A071170.P2341729082133765246

namespace A071170

/-- `sqrt(A001248(n+1))%A000203(n+1)` -/
def P2341729082133765246.Spec : Prop :=
  ∀ n, P2341729082133765246.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P14974540448670417930

`A065091(A028310(n))%Δ[A160664(n)]`
-/

namespace A071170.P14974540448670417930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (A028310 n).toNat) (f1 (n + 1) - f1 n)

end

end A071170.P14974540448670417930

namespace A071170

/-- `A065091(A028310(n))%Δ[A160664(n)]` -/
def P14974540448670417930.Spec : Prop :=
  ∀ n, P14974540448670417930.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P12029300794355656104

`A008578(n+2)%∑{d}[n+1, #]`
-/

namespace A071170.P12029300794355656104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A071170.P12029300794355656104

namespace A071170

/-- `A008578(n+2)%∑{d}[n+1, #]` -/
def P12029300794355656104.Spec : Prop :=
  ∀ n, P12029300794355656104.a n = A071170 (n + 1)

end A071170

/-!
# A071171: L_2 norm of vertices of Permuto-Associahedron in R^n.

The programs for A071171, the canonical program `A071171.P12180189023099481258` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071171 has offset 0).

The definition of A071171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071171.P6084731134782701762

`ogf((5x^2+82x^3+186x^4+82x^5+5x^6)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A071171.P6084731134782701762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 5, 82, 186, 82, 5] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A071171.P6084731134782701762

namespace A071171

/-- `ogf((5x^2+82x^3+186x^4+82x^5+5x^6)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P6084731134782701762.Spec : Prop :=
  ∀ n, P6084731134782701762.a n = A071171 n

end A071171

/-! ## A071171.P12180189023099481258

`C(n+1, 3)*(30*n^4-33*n²+2)/70`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071171

/-- `C(n+1, 3)*(30*n^4-33*n²+2)/70` -/
def P12180189023099481258.Spec : Prop :=
  ∀ n, P12180189023099481258.a n = (A071171 n : ℚ)

end A071171

/-! ## A071171.P1924651091473247612

`∑[(A056105(n)-n²)*C(n, 2)²]`
-/

namespace A071171.P1924651091473247612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056105 n - (n ^ 2 : ℤ)) * (Nat.choose n 2 ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071171.P1924651091473247612

namespace A071171

/-- `∑[(A056105(n)-n²)*C(n, 2)²]` -/
def P1924651091473247612.Spec : Prop :=
  ∀ n, P1924651091473247612.a n = A071171 n

end A071171

/-! ## A071171.P3330681303335212339

`∑[A168192(n)]-A002411(n)²`
-/

namespace A071171.P3330681303335212339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002411 n ^ 2

end

end A071171.P3330681303335212339

namespace A071171

/-- `∑[A168192(n)]-A002411(n)²` -/
def P3330681303335212339.Spec : Prop :=
  ∀ n, P3330681303335212339.a n = A071171 n

end A071171

/-! ## A071171.P15810192554423040613

`∑[A011863(A004273(n))*A161680(n)]`
-/

namespace A071171.P15810192554423040613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (A004273 n).toNat * A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071171.P15810192554423040613

namespace A071171

/-- `∑[A011863(A004273(n))*A161680(n)]` -/
def P15810192554423040613.Spec : Prop :=
  ∀ n, P15810192554423040613.a n = A071171 n

end A071171

/-! ## A071171.P7026213800252107759

`∑[C(n, 2)²*A004273(A002061(n))]`
-/

namespace A071171.P7026213800252107759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) * A004273 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071171.P7026213800252107759

namespace A071171

/-- `∑[C(n, 2)²*A004273(A002061(n))]` -/
def P7026213800252107759.Spec : Prop :=
  ∀ n, P7026213800252107759.a n = A071171 n

end A071171

/-! ## A071171.P7380408961571163871

`∑[A002411(n²)]-A002411(n)²`
-/

namespace A071171.P7380408961571163871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002411 n ^ 2

end

end A071171.P7380408961571163871

namespace A071171

/-- `∑[A002411(n²)]-A002411(n)²` -/
def P7380408961571163871.Spec : Prop :=
  ∀ n, P7380408961571163871.a n = A071171 n

end A071171

/-!
# A071172: Number of squarefree integers <= 10^n.

The programs for A071172, there is no canonical definition to state claims against.
-/

/-! ## A071172.P14250840145373178902

`A348708(n)+A348709(n)`
-/

namespace A071172.P14250840145373178902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348708 n + A348709 n

end

end A071172.P14250840145373178902

/-! ## A071172.P10638990055277957165

`A053462(n)+char[∏{e}[n+1, -floor(1/#)]]`
-/

namespace A071172.P10638990055277957165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-⌊1 / (Nat.factorization (f2 n) p : ℚ)⌋)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053462 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071172.P10638990055277957165

/-! ## A071172.P13224935687134004366

`A053462(n)+abs(A240330(n))`
-/

namespace A071172.P13224935687134004366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053462 n + |A240330 n|

end

end A071172.P13224935687134004366

/-! ## A071172.P13690860374739382181

`or(char[A137916(n)], A053462(n))`
-/

namespace A071172.P13690860374739382181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137916 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A053462 n)

end

end A071172.P13690860374739382181

/-! ## A071172.P6541114840983952266

`A053462(n)+A019590(n+1)`
-/

namespace A071172.P6541114840983952266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053462 n + A019590 (n + 1)

end

end A071172.P6541114840983952266

/-!
# A071173: Nonprimes which terminate in their sum of prime factors.

The programs for A071173, there is no canonical definition to state claims against.
-/

/-! ## A071173.P10751507538475247934

`A010074(A250001(n))*A108870(n)`
-/

namespace A071173.P10751507538475247934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010074 (A250001 n).toNat * A108870 n

end

end A071173.P10751507538475247934

/-!
# A071174: Numbers whose sum of exponents is equal to the product of prime factors.

The programs for A071174, there is no canonical definition to state claims against.
-/

/-! ## A071174.P16983457488501734892

`eq[A001222(n+1), A007947(n+1)]+1`
-/

namespace A071174.P16983457488501734892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071174.P16983457488501734892

/-! ## A071174.P7662761373245642410

`eq[val(A165835(n+1), 2), A007947(n+1)]+1`
-/

namespace A071174.P7662761373245642410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071174.P7662761373245642410

/-! ## A071174.P8241677930627374397

`A020725(eq[A001222(n+1), A007947(n+1)])`
-/

namespace A071174.P8241677930627374397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071174.P8241677930627374397

/-!
# A071175: Numbers whose product of exponents is equal to the sum of prime factors.

The programs for A071175, there is no canonical definition to state claims against.
-/

/-! ## A071175.P11326951221415411706

`A113484(eq[A005361(n+1), A008472(n+1)])`
-/

namespace A071175.P11326951221415411706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071175.P11326951221415411706

/-!
# A071177: Square-root of concatenation n'k, where k is minimal with n'k square (decimal notation).

The programs for A071177, there is no canonical definition to state claims against.
-/

/-! ## A071177.P15637893877600437186

`sqrt(A264604(1+n))`
-/

namespace A071177.P15637893877600437186
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264604 (1 + n) : ℝ)

end

end A071177.P15637893877600437186

/-! ## A071177.P9354018601576423627

`root(A264604(n+1), 2)`
-/

namespace A071177.P9354018601576423627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264604 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A071177.P9354018601576423627

/-! ## A071177.P11607087541201847107

`A030667(floor(A264604(n+1)/10))`
-/

namespace A071177.P11607087541201847107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ⌊(A264604 (n + 1) : ℚ) / 10⌋.toNat

end

end A071177.P11607087541201847107

/-! ## A071177.P16477655571192364831

`A056926(A264604(n+1))`
-/

namespace A071177.P16477655571192364831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A264604 (n + 1)).toNat

end

end A071177.P16477655571192364831

/-! ## A071177.P7149416043239460411

`A262689(A264604(n+1)+1)`
-/

namespace A071177.P7149416043239460411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A264604 (n + 1) + 1).toNat

end

end A071177.P7149416043239460411

/-!
# A071178: Exponent of the largest prime factor of n.

The programs for A071178, the canonical program `A071178.P17375525505785378954` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071178 has offset 1).

The definition of A071178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071178.P4714011151965320980

`log2(A348044(n+1))`
-/

namespace A071178.P4714011151965320980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A348044 (n + 1) : ℝ)

end

end A071178.P4714011151965320980

namespace A071178

/-- `log2(A348044(n+1))` -/
def P4714011151965320980.Spec : Prop :=
  ∀ n, P4714011151965320980.a n = (A071178 (n + 1) : ℝ)

end A071178

/-! ## A071178.P11009698957090614029

`val(A137502(n+1), 2)`
-/

namespace A071178.P11009698957090614029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A137502 (n + 1)).toNat 2

end

end A071178.P11009698957090614029

namespace A071178

/-- `val(A137502(n+1), 2)` -/
def P11009698957090614029.Spec : Prop :=
  ∀ n, (P11009698957090614029.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P11761788245404494048

`∑{e}[A053585(1+n), #]`
-/

namespace A071178.P11761788245404494048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071178.P11761788245404494048

namespace A071178

/-- `∑{e}[A053585(1+n), #]` -/
def P11761788245404494048.Spec : Prop :=
  ∀ n, (P11761788245404494048.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P4620771269874241464

`val(n+1, A111089(1+n))`
-/

namespace A071178.P4620771269874241464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A111089 (1 + n)).toNat

end

end A071178.P4620771269874241464

namespace A071178

/-- `val(n+1, A111089(1+n))` -/
def P4620771269874241464.Spec : Prop :=
  ∀ n, (P4620771269874241464.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P17375525505785378954

`val(n+1, A006530(2*(n+1)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071178

/-- `val(n+1, A006530(2*(n+1)))` -/
def P17375525505785378954.Spec : Prop :=
  ∀ n, (P17375525505785378954.a n : ℤ) = A071178 (n + 1)

theorem P17375525505785378954.correct : P17375525505785378954.Spec := by
  intro n
  simp only [A071178, Nat.add_sub_cancel]

end A071178

/-! ## A071178.P11130420535307763598

`∑{p}[A006530(n+1), val(n+1, #)]`
-/

namespace A071178.P11130420535307763598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (n + 1) p

end

end A071178.P11130420535307763598

namespace A071178

/-- `∑{p}[A006530(n+1), val(n+1, #)]` -/
def P11130420535307763598.Spec : Prop :=
  ∀ n, (P11130420535307763598.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P7704587752547047077

`val(n+1, A139171(∏{p}[n+1, #]))`
-/

namespace A071178.P7704587752547047077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A139171 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A071178.P7704587752547047077

namespace A071178

/-- `val(n+1, A139171(∏{p}[n+1, #]))` -/
def P7704587752547047077.Spec : Prop :=
  ∀ n, (P7704587752547047077.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P12882118039805429518

`val((n+1)², A006530(n+2+n)²)`
-/

namespace A071178.P12882118039805429518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) ^ 2) (A006530 (n + 2 + n) ^ 2).toNat

end

end A071178.P12882118039805429518

namespace A071178

/-- `val((n+1)², A006530(n+2+n)²)` -/
def P12882118039805429518.Spec : Prop :=
  ∀ n, (P12882118039805429518.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P17252110861587910330

`A001222(A053585(n+1))`
-/

namespace A071178.P17252110861587910330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053585 (n + 1)).toNat

end

end A071178.P17252110861587910330

namespace A071178

/-- `A001222(A053585(n+1))` -/
def P17252110861587910330.Spec : Prop :=
  ∀ n, P17252110861587910330.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P12993822963040734988

`A124010(A082186(n+1))`
-/

namespace A071178.P12993822963040734988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A082186 (n + 1)).toNat

end

end A071178.P12993822963040734988

namespace A071178

/-- `A124010(A082186(n+1))` -/
def P12993822963040734988.Spec : Prop :=
  ∀ n, P12993822963040734988.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P1821582404485657846

`A055396(A329607(n+1))`
-/

namespace A071178.P1821582404485657846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A329607 (n + 1)).toNat

end

end A071178.P1821582404485657846

namespace A071178

/-- `A055396(A329607(n+1))` -/
def P1821582404485657846.Spec : Prop :=
  ∀ n, P1821582404485657846.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P9927975269729914007

`A000120(A348044(n+1)-1)`
-/

namespace A071178.P9927975269729914007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A348044 (n + 1) - 1).toNat

end

end A071178.P9927975269729914007

namespace A071178

/-- `A000120(A348044(n+1)-1)` -/
def P9927975269729914007.Spec : Prop :=
  ∀ n, P9927975269729914007.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P10808263963057357224

`A347381(2*A348044(n+1))`
-/

namespace A071178.P10808263963057357224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347381 (2 * A348044 (n + 1)).toNat

end

end A071178.P10808263963057357224

namespace A071178

/-- `A347381(2*A348044(n+1))` -/
def P10808263963057357224.Spec : Prop :=
  ∀ n, P10808263963057357224.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P8531605360967775563

`A329378(2*A348044(n+1))-1`
-/

namespace A071178.P8531605360967775563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (2 * A348044 (n + 1)).toNat - 1

end

end A071178.P8531605360967775563

namespace A071178

/-- `A329378(2*A348044(n+1))-1` -/
def P8531605360967775563.Spec : Prop :=
  ∀ n, P8531605360967775563.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P552141620795769944

`A329617(2*A348044(n+1))-1`
-/

namespace A071178.P552141620795769944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329617 (2 * A348044 (n + 1)).toNat - 1

end

end A071178.P552141620795769944

namespace A071178

/-- `A329617(2*A348044(n+1))-1` -/
def P552141620795769944.Spec : Prop :=
  ∀ n, P552141620795769944.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P13607741785795541203

`A001222(n+1)-A325226(n+1)`
-/

namespace A071178.P13607741785795541203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A325226 (n + 1)

end

end A071178.P13607741785795541203

namespace A071178

/-- `A001222(n+1)-A325226(n+1)` -/
def P13607741785795541203.Spec : Prop :=
  ∀ n, P13607741785795541203.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P4412320107619760663

`A051903((n+1)/A051119(n+1))`
-/

namespace A071178.P4412320107619760663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A071178.P4412320107619760663

namespace A071178

/-- `A051903((n+1)/A051119(n+1))` -/
def P4412320107619760663.Spec : Prop :=
  ∀ n, P4412320107619760663.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P12536389350516218789

`A087179((n+1)/A051119(n+1))`
-/

namespace A071178.P12536389350516218789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087179 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A071178.P12536389350516218789

namespace A071178

/-- `A087179((n+1)/A051119(n+1))` -/
def P12536389350516218789.Spec : Prop :=
  ∀ n, P12536389350516218789.a n = A071178 (n + 1)

end A071178

/-! ## A071178.P7636487680104166880

`A081810(A053585(n+1))/A006530(n+1)`
-/

namespace A071178.P7636487680104166880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081810 (A053585 (n + 1)).toNat : ℚ) / (A006530 (n + 1) : ℚ)

end

end A071178.P7636487680104166880

namespace A071178

/-- `A081810(A053585(n+1))/A006530(n+1)` -/
def P7636487680104166880.Spec : Prop :=
  ∀ n, P7636487680104166880.a n = (A071178 (n + 1) : ℚ)

end A071178

/-! ## A071178.P17569039410449799031

`A069248(n+1)/(A000005(n+1)-A069248(n+1))`
-/

namespace A071178.P17569039410449799031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069248 (n + 1) : ℚ) / (A000005 (n + 1) - A069248 (n + 1) : ℚ)

end

end A071178.P17569039410449799031

namespace A071178

/-- `A069248(n+1)/(A000005(n+1)-A069248(n+1))` -/
def P17569039410449799031.Spec : Prop :=
  ∀ n, P17569039410449799031.a n = (A071178 (n + 1) : ℚ)

end A071178

/-!
# A071179: n - (sum of prime factors of n) is prime.

The programs for A071179, the canonical program `A071179.P15606789359654984471` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071179 has offset 1).

The definition of A071179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071179.P15606789359654984471

`eq[1, ∑{e}[n-∑{p}[n, #], #]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071179

/-- `eq[1, ∑{e}[n-∑{p}[n, #], #]]` -/
def P15606789359654984471.Spec : Prop :=
  ∀ n, (P15606789359654984471.a n : ℤ) = A071179 (n + 1)

theorem P15606789359654984471.correct : P15606789359654984471.Spec := by
  intro n
  simp only [A071179, Nat.add_sub_cancel]

end A071179

/-! ## A071179.P11139502190335168997

`eq[1, A003415(n-∑{p}[n, #])]`
-/

namespace A071179.P11139502190335168997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n - ∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071179.P11139502190335168997

namespace A071179

/-- `eq[1, A003415(n-∑{p}[n, #])]` -/
def P11139502190335168997.Spec : Prop :=
  ∀ n, (P11139502190335168997.a n : ℤ) = A071179 (n + 1)

end A071179

/-! ## A071179.P4956974122622356887

`eq[1, A175126(n-∑{p}[n, #])]`
-/

namespace A071179.P4956974122622356887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (n - ∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071179.P4956974122622356887

namespace A071179

/-- `eq[1, A175126(n-∑{p}[n, #])]` -/
def P4956974122622356887.Spec : Prop :=
  ∀ n, (P4956974122622356887.a n : ℤ) = A071179 (n + 1)

end A071179

/-! ## A071179.P11200336428863453219

`eq[2, A077462(n-∑{p}[n, #])]`
-/

namespace A071179.P11200336428863453219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (n - ∑ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071179.P11200336428863453219

namespace A071179

/-- `eq[2, A077462(n-∑{p}[n, #])]` -/
def P11200336428863453219.Spec : Prop :=
  ∀ n, (P11200336428863453219.a n : ℤ) = A071179 (n + 1)

end A071179

/-!
# A071181: Number of numbers k such that phi(k) divides phi(n).

The programs for A071181, there is no canonical definition to state claims against.
-/

/-! ## A071181.P10913057320882174660

`A070633((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A071181.P10913057320882174660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A071181.P10913057320882174660

/-! ## A071181.P483623359371490238

`∑{d}[A000010(n+1), A014197(#)]`
-/

namespace A071181.P483623359371490238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A014197 d

end

end A071181.P483623359371490238

/-!
# A071182: a(n) = lpf(n+1) - lpf(n), where lpf = A020639.

The programs for A071182, the canonical program `A071182.P1860945518768840617` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071182 has offset 2).

The definition of A071182 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A020639(n+3)-A020639(n+2)` (program `A071182.P1860945518768840617`, by `A071182.P1860945518768840617.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071182.P1860945518768840617

`A020639(n+3)-A020639(n+2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071182

/-- `A020639(n+3)-A020639(n+2)` -/
def P1860945518768840617.Spec : Prop :=
  ∀ n, P1860945518768840617.a n = A071182 (n + 2)

theorem P1860945518768840617.correct : P1860945518768840617.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel]

end A071182

/-! ## A071182.P15955313608295128595

`Δ[A020639(2+n)]`
-/

namespace A071182.P15955313608295128595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P15955313608295128595

namespace A071182

/-- `Δ[A020639(2+n)]` -/
def P15955313608295128595.Spec : Prop :=
  ∀ n, P15955313608295128595.a n = A071182 (n + 2)

theorem P15955313608295128595.correct : P15955313608295128595.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel, A071182.P15955313608295128595.f1, A071182.P15955313608295128595.a, A071182.P1860945518768840617.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A071182

/-! ## A071182.P12579605353942914788

`Δ[A057237(2+n)]`
-/

namespace A071182.P12579605353942914788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P12579605353942914788

namespace A071182

/-- `Δ[A057237(2+n)]` -/
def P12579605353942914788.Spec : Prop :=
  ∀ n, P12579605353942914788.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P2563994048170240647

`1-Δ[A046666(n+2)]`
-/

namespace A071182.P2563994048170240647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A071182.P2563994048170240647

namespace A071182

/-- `1-Δ[A046666(n+2)]` -/
def P2563994048170240647.Spec : Prop :=
  ∀ n, P2563994048170240647.a n = A071182 (n + 2)

theorem P2563994048170240647.correct : P2563994048170240647.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel, A071182.P2563994048170240647.f1, A071182.P2563994048170240647.a, A071182.P1860945518768840617.a, A020639, A020639.P2652150749951723339.f1, A020639.P2652150749951723339.a, A046666, A046666.P977647153724462194.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071182

/-! ## A071182.P1691216157640151487

`A057237(n+3)-A057237(n+2)`
-/

namespace A071182.P1691216157640151487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 3) - A057237 (n + 2)

end

end A071182.P1691216157640151487

namespace A071182

/-- `A057237(n+3)-A057237(n+2)` -/
def P1691216157640151487.Spec : Prop :=
  ∀ n, P1691216157640151487.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P6539225973601090799

`Δ[A092067(1+n)]`
-/

namespace A071182.P6539225973601090799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P6539225973601090799

namespace A071182

/-- `Δ[A092067(1+n)]` -/
def P6539225973601090799.Spec : Prop :=
  ∀ n, P6539225973601090799.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P12051652009180108055

`Δ[A087349(n+1)]-1`
-/

namespace A071182.P12051652009180108055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A071182.P12051652009180108055

namespace A071182

/-- `Δ[A087349(n+1)]-1` -/
def P12051652009180108055.Spec : Prop :=
  ∀ n, P12051652009180108055.a n = A071182 (n + 2)

theorem P12051652009180108055.correct : P12051652009180108055.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel, A071182.P12051652009180108055.f1, A071182.P12051652009180108055.a, A071182.P1860945518768840617.a, A020639, A020639.P2652150749951723339.f1, A020639.P2652150749951723339.a, A087349, A087349.P15107742474444681163.a, A061228, A061228.P15642375842617063633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071182

/-! ## A071182.P1395247402012068802

`A092067(n+2)-A092067(n+1)`
-/

namespace A071182.P1395247402012068802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (n + 2) - A092067 (n + 1)

end

end A071182.P1395247402012068802

namespace A071182

/-- `A092067(n+2)-A092067(n+1)` -/
def P1395247402012068802.Spec : Prop :=
  ∀ n, P1395247402012068802.a n = A071182 (n + 2)

theorem P1395247402012068802.correct : P1395247402012068802.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel, A071182.P1395247402012068802.a, A071182.P1860945518768840617.a, A020639, A020639.P2652150749951723339.f1, A020639.P2652150749951723339.a, A092067, A092067.P15301257153028573810.a, A087349, A087349.P15107742474444681163.a, A061228, A061228.P15642375842617063633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071182

/-! ## A071182.P13837100305936455771

`A087349(n+2)-A061228(n+2)`
-/

namespace A071182.P13837100305936455771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 2) - A061228 (n + 2)

end

end A071182.P13837100305936455771

namespace A071182

/-- `A087349(n+2)-A061228(n+2)` -/
def P13837100305936455771.Spec : Prop :=
  ∀ n, P13837100305936455771.a n = A071182 (n + 2)

theorem P13837100305936455771.correct : P13837100305936455771.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel, A071182.P13837100305936455771.a, A071182.P1860945518768840617.a, A020639, A020639.P2652150749951723339.f1, A020639.P2652150749951723339.a, A061228, A061228.P15642375842617063633.a, A087349, A087349.P15107742474444681163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071182

/-! ## A071182.P5806860076000571772

`A087349(n+2)-A159475(n+2)`
-/

namespace A071182.P5806860076000571772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 2) - A159475 (n + 2)

end

end A071182.P5806860076000571772

namespace A071182

/-- `A087349(n+2)-A159475(n+2)` -/
def P5806860076000571772.Spec : Prop :=
  ∀ n, P5806860076000571772.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P8883995265296233031

`Δ[sqrt(A088377(n+2))]`
-/

namespace A071182.P8883995265296233031
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P8883995265296233031

namespace A071182

/-- `Δ[sqrt(A088377(n+2))]` -/
def P8883995265296233031.Spec : Prop :=
  ∀ n, P8883995265296233031.a n = (A071182 (n + 2) : ℝ)

end A071182

/-! ## A071182.P12474822957484974392

`Δ[Δ[A046669(n+1)]]`
-/

namespace A071182.P12474822957484974392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P12474822957484974392

namespace A071182

/-- `Δ[Δ[A046669(n+1)]]` -/
def P12474822957484974392.Spec : Prop :=
  ∀ n, P12474822957484974392.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P6925310458499075608

`Δ[Δ[A088821(n+1)]]`
-/

namespace A071182.P6925310458499075608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P6925310458499075608

namespace A071182

/-- `Δ[Δ[A088821(n+1)]]` -/
def P6925310458499075608.Spec : Prop :=
  ∀ n, P6925310458499075608.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P2838382634863521309

`Δ[A061228(n+2)]-1`
-/

namespace A071182.P2838382634863521309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A071182.P2838382634863521309

namespace A071182

/-- `Δ[A061228(n+2)]-1` -/
def P2838382634863521309.Spec : Prop :=
  ∀ n, P2838382634863521309.a n = A071182 (n + 2)

theorem P2838382634863521309.correct : P2838382634863521309.Spec := by
  intro n
  simp only [A071182, Nat.add_sub_cancel, A071182.P2838382634863521309.f1, A071182.P2838382634863521309.a, A071182.P1860945518768840617.a, A020639, A020639.P2652150749951723339.f1, A020639.P2652150749951723339.a, A061228, A061228.P15642375842617063633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071182

/-! ## A071182.P10375150745093079495

`Δ[A159475(n+2)]-1`
-/

namespace A071182.P10375150745093079495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159475 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A071182.P10375150745093079495

namespace A071182

/-- `Δ[A159475(n+2)]-1` -/
def P10375150745093079495.Spec : Prop :=
  ∀ n, P10375150745093079495.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P2588698073788376499

`Δ[A092028(n+3)]`
-/

namespace A071182.P2588698073788376499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092028 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P2588698073788376499

namespace A071182

/-- `Δ[A092028(n+3)]` -/
def P2588698073788376499.Spec : Prop :=
  ∀ n, P2588698073788376499.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P10646724837142855445

`Δ[p?[A265110(n+1)]]`
-/

namespace A071182.P10646724837142855445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265110 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P10646724837142855445

namespace A071182

/-- `Δ[p?[A265110(n+1)]]` -/
def P10646724837142855445.Spec : Prop :=
  ∀ n, P10646724837142855445.a n = A071182 (n + 2)

end A071182

/-! ## A071182.P9763336083027301206

`Δ[p?[A136181(n+2)]]`
-/

namespace A071182.P9763336083027301206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136181 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P9763336083027301206

namespace A071182

/-- `Δ[p?[A136181(n+2)]]` -/
def P9763336083027301206.Spec : Prop :=
  ∀ n, P9763336083027301206.a n = A071182 (n + 2)

end A071182

/-!
# A071183: a(1)=1; a(n) is the smallest integer > a(n-1) such that the sum of elements of the simple continued fraction for S(n)=1/a(1)+1/a(2)+...+1/a(n) equals n^2.

The programs for A071183, there is no canonical definition to state claims against.
-/

/-! ## A071183.P10810051248120569756

`A354958(A065159(n))`
-/

namespace A071183.P10810051248120569756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354958 (A065159 n).toNat

end

end A071183.P10810051248120569756

/-!
# A071186: Numbers k such that prime(2*k)-2*prime(k) is prime.

The programs for A071186, the canonical program `A071186.P1213708103561543319` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071186 has offset 1).

The definition of A071186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071186.P12084691079420663690

`eq[2, A071185(1+n)]+1`
-/

namespace A071186.P12084691079420663690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071186.P12084691079420663690

namespace A071186

/-- `eq[2, A071185(1+n)]+1` -/
def P12084691079420663690.Spec : Prop :=
  ∀ n, (P12084691079420663690.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P9295812007277032491

`lt[A071185(n+2), 4]+2`
-/

namespace A071186.P9295812007277032491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A071186.P9295812007277032491

namespace A071186

/-- `lt[A071185(n+2), 4]+2` -/
def P9295812007277032491.Spec : Prop :=
  ∀ n, (P9295812007277032491.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P14693887488879114425

`eq[2, A071185(A028310(n))]`
-/

namespace A071186.P14693887488879114425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071186.P14693887488879114425

namespace A071186

/-- `eq[2, A071185(A028310(n))]` -/
def P14693887488879114425.Spec : Prop :=
  ∀ n, (P14693887488879114425.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P10591245195299519623

`A020725(eq[2, A071185(n+1)])`
-/

namespace A071186.P10591245195299519623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071186.P10591245195299519623

namespace A071186

/-- `A020725(eq[2, A071185(n+1)])` -/
def P10591245195299519623.Spec : Prop :=
  ∀ n, P10591245195299519623.a n = A071186 (n + 1)

end A071186

/-! ## A071186.P12955537877584961416

`eq[2, A071185(A000007(n)+n)]`
-/

namespace A071186.P12955537877584961416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071186.P12955537877584961416

namespace A071186

/-- `eq[2, A071185(A000007(n)+n)]` -/
def P12955537877584961416.Spec : Prop :=
  ∀ n, (P12955537877584961416.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P9549839476675713554

`eq[2, A071185(A000038(n)+n)]`
-/

namespace A071186.P9549839476675713554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071186.P9549839476675713554

namespace A071186

/-- `eq[2, A071185(A000038(n)+n)]` -/
def P9549839476675713554.Spec : Prop :=
  ∀ n, (P9549839476675713554.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P1187174644169539453

`eq[2, A071185(xor(n, A000007(n)))]`
-/

namespace A071186.P1187174644169539453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071186.P1187174644169539453

namespace A071186

/-- `eq[2, A071185(xor(n, A000007(n)))]` -/
def P1187174644169539453.Spec : Prop :=
  ∀ n, (P1187174644169539453.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P1213708103561543319

`eq[2, A000005(A022457(n+1))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071186

/-- `eq[2, A000005(A022457(n+1))]+1` -/
def P1213708103561543319.Spec : Prop :=
  ∀ n, (P1213708103561543319.a n : ℤ) = A071186 (n + 1)

theorem P1213708103561543319.correct : P1213708103561543319.Spec := by
  intro n
  simp only [A071186, Nat.add_sub_cancel]

end A071186

/-! ## A071186.P6618297195710874617

`eq[2, A071185(A233583(n+1))]`
-/

namespace A071186.P6618297195710874617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071186.P6618297195710874617

namespace A071186

/-- `eq[2, A071185(A233583(n+1))]` -/
def P6618297195710874617.Spec : Prop :=
  ∀ n, (P6618297195710874617.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P18237269770142358544

`eq[2, A001222(A066066(n+1)²)]+1`
-/

namespace A071186.P18237269770142358544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066066 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071186.P18237269770142358544

namespace A071186

/-- `eq[2, A001222(A066066(n+1)²)]+1` -/
def P18237269770142358544.Spec : Prop :=
  ∀ n, (P18237269770142358544.a n : ℤ) = A071186 (n + 1)

end A071186

/-!
# A071187: Smallest prime factor of number of divisors of n; a(1) = 1.

The programs for A071187, the canonical program `A071187.P1324201850369731429` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071187 has offset 1).

The definition of A071187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071187.P7496103011012752479

`A020639(∏{e}[1+n, #+1])`
-/

namespace A071187.P7496103011012752479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A071187.P7496103011012752479

namespace A071187

/-- `A020639(∏{e}[1+n, #+1])` -/
def P7496103011012752479.Spec : Prop :=
  ∀ n, P7496103011012752479.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P1324201850369731429

`A063918(∏{e}[n+1, #+1]²)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071187

/-- `A063918(∏{e}[n+1, #+1]²)` -/
def P1324201850369731429.Spec : Prop :=
  ∀ n, P1324201850369731429.a n = A071187 (n + 1)

theorem P1324201850369731429.correct : P1324201850369731429.Spec := by
  intro n
  simp only [A071187, Nat.add_sub_cancel]

end A071187

/-! ## A071187.P13521417165140721169

`A014673(A035116(n+1))`
-/

namespace A071187.P13521417165140721169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A035116 (n + 1)).toNat

end

end A071187.P13521417165140721169

namespace A071187

/-- `A014673(A035116(n+1))` -/
def P13521417165140721169.Spec : Prop :=
  ∀ n, P13521417165140721169.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P17060693492408647025

`A028233(A152235(n+1))`
-/

namespace A071187.P17060693492408647025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A152235 (n + 1)).toNat

end

end A071187.P17060693492408647025

namespace A071187

/-- `A028233(A152235(n+1))` -/
def P17060693492408647025.Spec : Prop :=
  ∀ n, P17060693492408647025.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P13598958896738378950

`A115561(A145154(n+1))`
-/

namespace A071187.P13598958896738378950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A145154 (n + 1)).toNat

end

end A071187.P13598958896738378950

namespace A071187

/-- `A115561(A145154(n+1))` -/
def P13598958896738378950.Spec : Prop :=
  ∀ n, P13598958896738378950.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P8697830564646084828

`A143151(A184389(n+1))`
-/

namespace A071187.P8697830564646084828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143151 (A184389 (n + 1)).toNat

end

end A071187.P8697830564646084828

namespace A071187

/-- `A143151(A184389(n+1))` -/
def P8697830564646084828.Spec : Prop :=
  ∀ n, P8697830564646084828.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P13359315781038495795

`A082067(A000005(n+1)²)`
-/

namespace A071187.P13359315781038495795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082067 (A000005 (n + 1) ^ 2).toNat

end

end A071187.P13359315781038495795

namespace A071187

/-- `A082067(A000005(n+1)²)` -/
def P13359315781038495795.Spec : Prop :=
  ∀ n, P13359315781038495795.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P2045656240552318556

`A052410(A327502(A000005(n+1)²))`
-/

namespace A071187.P2045656240552318556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A327502 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A071187.P2045656240552318556

namespace A071187

/-- `A052410(A327502(A000005(n+1)²))` -/
def P2045656240552318556.Spec : Prop :=
  ∀ n, P2045656240552318556.a n = A071187 (n + 1)

end A071187

/-! ## A071187.P1303165886180698982

`A327502(A327501(A000005(n+1))²)`
-/

namespace A071187.P1303165886180698982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (A327501 (A000005 (n + 1)).toNat ^ 2).toNat

end

end A071187.P1303165886180698982

namespace A071187

/-- `A327502(A327501(A000005(n+1))²)` -/
def P1303165886180698982.Spec : Prop :=
  ∀ n, P1303165886180698982.a n = A071187 (n + 1)

end A071187

/-!
# A071188: Largest prime factor of number of divisors of n; a(1)=1.

The programs for A071188, the canonical program `A071188.P8515757286936621774` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071188 has offset 1).

The definition of A071188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071188.P8515757286936621774

`A006530(A000005(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071188

/-- `A006530(A000005(n+1))` -/
def P8515757286936621774.Spec : Prop :=
  ∀ n, P8515757286936621774.a n = A071188 (n + 1)

theorem P8515757286936621774.correct : P8515757286936621774.Spec := by
  intro n
  simp only [A071188, Nat.add_sub_cancel]

end A071188

/-! ## A071188.P2406427832394344656

`A006530(∏{e}[1+n, #+1])`
-/

namespace A071188.P2406427832394344656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A071188.P2406427832394344656

namespace A071188

/-- `A006530(∏{e}[1+n, #+1])` -/
def P2406427832394344656.Spec : Prop :=
  ∀ n, P2406427832394344656.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P15614656861102725655

`A085392(∏{e}[n+1, #+1]²)`
-/

namespace A071188.P15614656861102725655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2)

end

end A071188.P15614656861102725655

namespace A071188

/-- `A085392(∏{e}[n+1, #+1]²)` -/
def P15614656861102725655.Spec : Prop :=
  ∀ n, P15614656861102725655.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P4002235510012039253

`∏{e}[n+1, #+1]/A052126(∏{e}[n+1, #+1])`
-/

namespace A071188.P4002235510012039253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / (A052126 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℚ)

end

end A071188.P4002235510012039253

namespace A071188

/-- `∏{e}[n+1, #+1]/A052126(∏{e}[n+1, #+1])` -/
def P4002235510012039253.Spec : Prop :=
  ∀ n, P4002235510012039253.a n = (A071188 (n + 1) : ℚ)

end A071188

/-! ## A071188.P13450298461434857170

`A002034(A152235(n+1))`
-/

namespace A071188.P13450298461434857170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A152235 (n + 1)).toNat

end

end A071188.P13450298461434857170

namespace A071188

/-- `A002034(A152235(n+1))` -/
def P13450298461434857170.Spec : Prop :=
  ∀ n, P13450298461434857170.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P13615920336041404134

`A285730(A184389(n+1))`
-/

namespace A071188.P13615920336041404134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285730 (A184389 (n + 1)).toNat

end

end A071188.P13615920336041404134

namespace A071188

/-- `A285730(A184389(n+1))` -/
def P13615920336041404134.Spec : Prop :=
  ∀ n, P13615920336041404134.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P2360815953476375672

`A082061(A000005(n+1)²)`
-/

namespace A071188.P2360815953476375672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A000005 (n + 1) ^ 2).toNat

end

end A071188.P2360815953476375672

namespace A071188

/-- `A082061(A000005(n+1)²)` -/
def P2360815953476375672.Spec : Prop :=
  ∀ n, P2360815953476375672.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P14042319851326300739

`A087039(A000005(n+1)²)`
-/

namespace A071188.P14042319851326300739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A000005 (n + 1) ^ 2).toNat

end

end A071188.P14042319851326300739

namespace A071188

/-- `A087039(A000005(n+1)²)` -/
def P14042319851326300739.Spec : Prop :=
  ∀ n, P14042319851326300739.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P11283237247357363085

`A105560(A122111(A000005(n+1)²))`
-/

namespace A071188.P11283237247357363085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (A122111 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A071188.P11283237247357363085

namespace A071188

/-- `A105560(A122111(A000005(n+1)²))` -/
def P11283237247357363085.Spec : Prop :=
  ∀ n, P11283237247357363085.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P5754558491667240321

`A076820(A125518(n+1))`
-/

namespace A071188.P5754558491667240321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076820 (A125518 (n + 1)).toNat

end

end A071188.P5754558491667240321

namespace A071188

/-- `A076820(A125518(n+1))` -/
def P5754558491667240321.Spec : Prop :=
  ∀ n, P5754558491667240321.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P7498633443691102782

`A078834(A319089(n+1))`
-/

namespace A071188.P7498633443691102782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078834 (A319089 (n + 1)).toNat

end

end A071188.P7498633443691102782

namespace A071188

/-- `A078834(A319089(n+1))` -/
def P7498633443691102782.Spec : Prop :=
  ∀ n, P7498633443691102782.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P4126813213469259141

`A020639(A394383(A000005(n+1))²)`
-/

namespace A071188.P4126813213469259141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A394383 (A000005 (n + 1)).toNat ^ 2).toNat

end

end A071188.P4126813213469259141

namespace A071188

/-- `A020639(A394383(A000005(n+1))²)` -/
def P4126813213469259141.Spec : Prop :=
  ∀ n, P4126813213469259141.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P16341535826744049308

`A395042(A338506(n+1))`
-/

namespace A071188.P16341535826744049308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395042 (A338506 (n + 1)).toNat

end

end A071188.P16341535826744049308

namespace A071188

/-- `A395042(A338506(n+1))` -/
def P16341535826744049308.Spec : Prop :=
  ∀ n, P16341535826744049308.a n = A071188 (n + 1)

end A071188

/-!
# A071189: Smallest prime factor of sum of divisors of n.

The programs for A071189, the canonical program `A071189.P1405400249993816939` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071189 has offset 1).

The definition of A071189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071189.P1405400249993816939

`A020639(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071189

/-- `A020639(A000203(n+1))` -/
def P1405400249993816939.Spec : Prop :=
  ∀ n, P1405400249993816939.a n = A071189 (n + 1)

theorem P1405400249993816939.correct : P1405400249993816939.Spec := by
  intro n
  simp only [A071189, Nat.add_sub_cancel]

end A071189

/-! ## A071189.P11760334144398710315

`A020639(∑{d}[1+n, #])`
-/

namespace A071189.P11760334144398710315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A071189.P11760334144398710315

namespace A071189

/-- `A020639(∑{d}[1+n, #])` -/
def P11760334144398710315.Spec : Prop :=
  ∀ n, P11760334144398710315.a n = A071189 (n + 1)

end A071189

/-! ## A071189.P15756180831070185322

`A000203(n+1)/A371418(n+1)`
-/

namespace A071189.P15756180831070185322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A371418 (n + 1) : ℚ)

end

end A071189.P15756180831070185322

namespace A071189

/-- `A000203(n+1)/A371418(n+1)` -/
def P15756180831070185322.Spec : Prop :=
  ∀ n, P15756180831070185322.a n = (A071189 (n + 1) : ℚ)

end A071189

/-! ## A071189.P10633324402556165204

`A028233(A080398(n+1))`
-/

namespace A071189.P10633324402556165204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (A080398 (n + 1)).toNat

end

end A071189.P10633324402556165204

namespace A071189

/-- `A028233(A080398(n+1))` -/
def P10633324402556165204.Spec : Prop :=
  ∀ n, P10633324402556165204.a n = A071189 (n + 1)

end A071189

/-! ## A071189.P10787111201734855702

`A014673(A074400(n+1))`
-/

namespace A071189.P10787111201734855702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A074400 (n + 1)).toNat

end

end A071189.P10787111201734855702

namespace A071189

/-- `A014673(A074400(n+1))` -/
def P10787111201734855702.Spec : Prop :=
  ∀ n, P10787111201734855702.a n = A071189 (n + 1)

end A071189

/-! ## A071189.P11997014057435092587

`A115561(A239050(n+1))`
-/

namespace A071189.P11997014057435092587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A239050 (n + 1)).toNat

end

end A071189.P11997014057435092587

namespace A071189

/-- `A115561(A239050(n+1))` -/
def P11997014057435092587.Spec : Prop :=
  ∀ n, P11997014057435092587.a n = A071189 (n + 1)

end A071189

/-! ## A071189.P3344735555346549954

`A126773(A007947(A000203(n+1)²))`
-/

namespace A071189.P3344735555346549954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (A007947 (A000203 (n + 1) ^ 2).toNat).toNat

end

end A071189.P3344735555346549954

namespace A071189

/-- `A126773(A007947(A000203(n+1)²))` -/
def P3344735555346549954.Spec : Prop :=
  ∀ n, P3344735555346549954.a n = A071189 (n + 1)

end A071189

/-! ## A071189.P5360787614849551285

`A074828(A072861(n+1))`
-/

namespace A071189.P5360787614849551285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A072861 (n + 1)).toNat

end

end A071189.P5360787614849551285

namespace A071189

/-- `A074828(A072861(n+1))` -/
def P5360787614849551285.Spec : Prop :=
  ∀ n, P5360787614849551285.a n = A071189 (n + 1)

end A071189

/-!
# A071190: Greatest prime factor of sum of divisors of n, for n >= 2; a(1) = 1.

The programs for A071190, the canonical program `A071190.P6657897633682184868` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071190 has offset 1).

The definition of A071190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071190.P6657897633682184868

`A006530(A000203(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071190

/-- `A006530(A000203(n+1))` -/
def P6657897633682184868.Spec : Prop :=
  ∀ n, P6657897633682184868.a n = A071190 (n + 1)

theorem P6657897633682184868.correct : P6657897633682184868.Spec := by
  intro n
  simp only [A071190, Nat.add_sub_cancel]

end A071190

/-! ## A071190.P15469742273821421437

`A006530(∑{d}[1+n, #])`
-/

namespace A071190.P15469742273821421437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A071190.P15469742273821421437

namespace A071190

/-- `A006530(∑{d}[1+n, #])` -/
def P15469742273821421437.Spec : Prop :=
  ∀ n, P15469742273821421437.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P7533645721343569674

`∏{p}[A388274(1+n), #]`
-/

namespace A071190.P7533645721343569674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388274 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071190.P7533645721343569674

namespace A071190

/-- `∏{p}[A388274(1+n), #]` -/
def P7533645721343569674.Spec : Prop :=
  ∀ n, (P7533645721343569674.a n : ℤ) = A071190 (n + 1)

end A071190

/-! ## A071190.P9690010474147763295

`A034699(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A071190.P9690010474147763295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A071190.P9690010474147763295

namespace A071190

/-- `A034699(∏{p}[∑{d}[n+1, #], #])` -/
def P9690010474147763295.Spec : Prop :=
  ∀ n, P9690010474147763295.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P14335281427704364040

`A088387(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A071190.P14335281427704364040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A071190.P14335281427704364040

namespace A071190

/-- `A088387(∏{p}[∑{d}[n+1, #], #])` -/
def P14335281427704364040.Spec : Prop :=
  ∀ n, P14335281427704364040.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P9090162673117017461

`A007947(A388274(n+1))`
-/

namespace A071190.P9090162673117017461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A388274 (n + 1)).toNat

end

end A071190.P9090162673117017461

namespace A071190

/-- `A007947(A388274(n+1))` -/
def P9090162673117017461.Spec : Prop :=
  ∀ n, P9090162673117017461.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P13269011950474403290

`gcd(A080398(n+1), A388274(n+1))`
-/

namespace A071190.P13269011950474403290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080398 (n + 1)) (A388274 (n + 1))

end

end A071190.P13269011950474403290

namespace A071190

/-- `gcd(A080398(n+1), A388274(n+1))` -/
def P13269011950474403290.Spec : Prop :=
  ∀ n, (P13269011950474403290.a n : ℤ) = A071190 (n + 1)

end A071190

/-! ## A071190.P15519450687133950292

`A002034(A080398(n+1))`
-/

namespace A071190.P15519450687133950292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A080398 (n + 1)).toNat

end

end A071190.P15519450687133950292

namespace A071190

/-- `A002034(A080398(n+1))` -/
def P15519450687133950292.Spec : Prop :=
  ∀ n, P15519450687133950292.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P12671383811799284585

`A085392(A074400(n+1))`
-/

namespace A071190.P12671383811799284585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A074400 (n + 1)).toNat

end

end A071190.P12671383811799284585

namespace A071190

/-- `A085392(A074400(n+1))` -/
def P12671383811799284585.Spec : Prop :=
  ∀ n, P12671383811799284585.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P18009503941513970682

`A082061(A072861(n+1))`
-/

namespace A071190.P18009503941513970682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082061 (A072861 (n + 1)).toNat

end

end A071190.P18009503941513970682

namespace A071190

/-- `A082061(A072861(n+1))` -/
def P18009503941513970682.Spec : Prop :=
  ∀ n, P18009503941513970682.a n = A071190 (n + 1)

end A071190

/-!
# A071191: Least m>n such that the number of prime factors of m and n differ at most by 1.

The programs for A071191, there is no canonical definition to state claims against.
-/

/-! ## A071191.P2206148037507739948

`A250068(A266949(n+1))+1+n`
-/

namespace A071191.P2206148037507739948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A266949 (n + 1)).toNat + 1 + (n : ℤ)

end

end A071191.P2206148037507739948

/-! ## A071191.P8351636963492101770

`A179464(n+1)+A101605(A092559(2*n+3))`
-/

namespace A071191.P8351636963492101770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179464 (n + 1) + A101605 (A092559 (2 * n + 3)).toNat

end

end A071191.P8351636963492101770

/-! ## A071191.P9436520732987706191

`A331592(A330584(n+1))+n`
-/

namespace A071191.P9436520732987706191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331592 (A330584 (n + 1)).toNat + (n : ℤ)

end

end A071191.P9436520732987706191

/-! ## A071191.P1048415652084242412

`A106495(A106530(n+1))+1+n`
-/

namespace A071191.P1048415652084242412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106495 (A106530 (n + 1)).toNat + 1 + (n : ℤ)

end

end A071191.P1048415652084242412

/-! ## A071191.P5591988760935189263

`A003056(A358378(3*n+5)-A374054(n))`
-/

namespace A071191.P5591988760935189263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A358378 (3 * n + 5) - A374054 n).toNat

end

end A071191.P5591988760935189263

/-!
# A071193: Least m > n such that bigomega(m) != bigomega(n), where bigomega(n) = A001222(n).

The programs for A071193, there is no canonical definition to state claims against.
-/

/-! ## A071193.P213328137921220878

`A077655(1+n)+2+n`
-/

namespace A071193.P213328137921220878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (1 + n) + 2 + (n : ℤ)

end

end A071193.P213328137921220878

/-! ## A071193.P14335892298017888494

`A357136(gcd(A241909(n+1), A241909(n+2)))+2+n`
-/

namespace A071193.P14335892298017888494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (Int.gcd (A241909 (n + 1)) (A241909 (n + 2))) + 2 + (n : ℤ)

end

end A071193.P14335892298017888494

/-! ## A071193.P15289293149679598573

`A008683(A059333(n+1)²)+n+2`
-/

namespace A071193.P15289293149679598573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A059333 (n + 1) ^ 2).toNat + (n + 2 : ℤ)

end

end A071193.P15289293149679598573

/-! ## A071193.P5920275136186051974

`A010815(Δ[3^∑{e}[n+1, #]]²)+2+n`
-/

namespace A071193.P5920275136186051974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat + 2 + (n : ℤ)

end

end A071193.P5920275136186051974

/-! ## A071193.P7617517140358354325

`A289441(2*(n+1))+A036987(Δ[4^∑{e}[n+1, #]]²)+1`
-/

namespace A071193.P7617517140358354325
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (2 * (n + 1)) + (A036987 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat + 1)

end

end A071193.P7617517140358354325

/-!
# A071194: Length (>1) of shortest sequence of consecutive primes starting with prime(n) whose sum is also prime, or -1 if no such sequence exists.

The programs for A071194, there is no canonical definition to state claims against.
-/

/-! ## A071194.P10142779918063519866

`A248498(1+n)+1`
-/

namespace A071194.P10142779918063519866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248498 (1 + n) + 1

end

end A071194.P10142779918063519866

/-! ## A071194.P4127775194683225904

`A020725(A248498(1+n))`
-/

namespace A071194.P4127775194683225904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A248498 (1 + n)).toNat

end

end A071194.P4127775194683225904

/-! ## A071194.P5545241282856317522

`A000720(A071195(1+n))-n`
-/

namespace A071194.P5545241282856317522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071195 (1 + n)).toNat - (n : ℤ)

end

end A071194.P5545241282856317522

/-! ## A071194.P16067345543609184001

`A336315(A071195(n+1))-A000027(n+1)`
-/

namespace A071194.P16067345543609184001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A071195 (n + 1)).toNat - A000027 (n + 1)

end

end A071194.P16067345543609184001

/-! ## A071194.P6523289505824460734

`A336315(A071195(n+1))-A028310(n+1)`
-/

namespace A071194.P6523289505824460734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A071195 (n + 1)).toNat - A028310 (n + 1)

end

end A071194.P6523289505824460734

/-! ## A071194.P16215228295811855183

`A056239(A071195(n+1))-A025480(2*n)`
-/

namespace A071194.P16215228295811855183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A071195 (n + 1)).toNat - A025480 (2 * n)

end

end A071194.P16215228295811855183

/-! ## A071194.P5866731949809209751

`A056239(A071195(n+1))-gcd(n, A000578(n))`
-/

namespace A071194.P5866731949809209751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A071195 (n + 1)).toNat - (Int.gcd (n : ℤ) (A000578 n) : ℤ)

end

end A071194.P5866731949809209751

/-!
# A071195: Final prime in sequence of primes starting with prime(n) and having prime sum (see A071194), or -1 if no such sequence exists.

The programs for A071195, there is no canonical definition to state claims against.
-/

/-! ## A071195.P17681688798933618848

`A000040(A071194(1+n)+n)`
-/

namespace A071195.P17681688798933618848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071194 (1 + n) + (n : ℤ)).toNat

end

end A071195.P17681688798933618848

/-! ## A071195.P12988888830871992967

`A006005(A071194(n+1)+n)`
-/

namespace A071195.P12988888830871992967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A071194 (n + 1) + (n : ℤ)).toNat

end

end A071195.P12988888830871992967

/-! ## A071195.P1057557769109483181

`A065091(A248498(n+1)+n)`
-/

namespace A071195.P1057557769109483181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A248498 (n + 1) + (n : ℤ)).toNat

end

end A071195.P1057557769109483181

/-! ## A071195.P17696333335019679623

`A008578(A071194(n+1)+1+n)`
-/

namespace A071195.P17696333335019679623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A071194 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071195.P17696333335019679623

/-!
# A071196: The sum of the sequence starting with prime(n) and having prime sum defined in A071194, or -1 if no such sequence exists.

The programs for A071196, there is no canonical definition to state claims against.
-/

/-! ## A071196.P6377117827611875175

`A034387(A071195(1+n))-A007504(n)`
-/

namespace A071196.P6377117827611875175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A071195 (1 + n)).toNat - A007504 n

end

end A071196.P6377117827611875175

/-!
# A071197: Possible prime values in A071195.

The programs for A071197, there is no canonical definition to state claims against.
-/

/-! ## A071197.P11931796635558982017

`p?[comp[A071198(n+1)]]`
-/

namespace A071197.P11931796635558982017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071198 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A071197.P11931796635558982017

/-! ## A071197.P5298806732436647312

`lt[0, char[A071195(n+1)]]`
-/

namespace A071197.P5298806732436647312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071195 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071197.P5298806732436647312

/-! ## A071197.P6562290710723792065

`record[p?[A158907(A088520(n+1))]]`
-/

namespace A071197.P6562290710723792065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (A088520 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071197.P6562290710723792065

/-! ## A071197.P17472746477645861307

`p?[or(A090171(3*(n+1)), A335524(2*n+3))]`
-/

namespace A071197.P17472746477645861307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090171 (3 * (n + 1))) (A335524 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071197.P17472746477645861307

/-! ## A071197.P3883583426836542985

`eq[A112991(n), A325518(n+1)]`
-/

namespace A071197.P3883583426836542985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112991 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071197.P3883583426836542985

/-!
# A071198: Impossible primes in A071195. These primes are not terminal primes of shortest consecutive prime sequences initiated with n-th prime and providing prime-sum.

The programs for A071198, there is no canonical definition to state claims against.
-/

/-! ## A071198.P4251205609072663206

`A006093(comp[A071194(n+1)+n-1]+1)+1`
-/

namespace A071198.P4251205609072663206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071194 (n + 1) + (n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) + 1

end

end A071198.P4251205609072663206

/-!
# A071199: Possible primes appearing in A071196 as certain sums of previous consecutive primes. See A071196.

The programs for A071199, there is no canonical definition to state claims against.
-/

/-! ## A071199.P8352856792808312028

`∩[A114255(n+1), A282246(n+1)]`
-/

namespace A071199.P8352856792808312028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071199.P8352856792808312028


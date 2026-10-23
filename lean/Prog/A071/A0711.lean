import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A071100: Expansion of (5 + 3*x + x^2 - x^3) / (1 - 2*x - 2*x^2 - 2*x^3 + x^4) in powers of x.

The programs for A071100, the canonical program `A071100.P3496341273697638511` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071100 has offset 0).

The definition of A071100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5+3x+x^2-x^3)/(1-2x-2x^2-2x^3+x^4))` (program `A071100.P3496341273697638511`, by `A071100.P3496341273697638511.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071100.P3496341273697638511

`ogf((5+3x+x^2-x^3)/(1-2x-2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
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

The programs for A071101, the canonical program `A071101.P733519798632661096` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071101 has offset 0).

The definition of A071101 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((5+6x+3x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))` (program `A071101.P733519798632661096`, by `A071101.P733519798632661096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071101.P733519798632661096

`ogf((5+6x+3x^2-2x^3)/(1-2x-2x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A071101.P12054447351285319611

`A138573(n+3)`
-/

namespace A071101.P12054447351285319611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (n + 3)

end

end A071101.P12054447351285319611

namespace A071101

/-- `A138573(n+3)` -/
def P12054447351285319611.Spec : Prop :=
  ∀ n, P12054447351285319611.a n = A071101 n

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

/-! ## A071106.P13582655789384143895

`A071105(lt[0, A071105(n)])`
-/

namespace A071106.P13582655789384143895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071105 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071106.P13582655789384143895

/-! ## A071106.P6485525423749270150

`A071105(A000035(n)+2*n)`
-/

namespace A071106.P6485525423749270150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071105 (A000035 n + (2 * n : ℤ)).toNat

end

end A071106.P6485525423749270150

/-! ## A071106.P5493209826665022498

`A071105(or(2*n, A000035(n)))`
-/

namespace A071106.P5493209826665022498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071105 (Int.lor (2 * n : ℤ) (A000035 n)).toNat

end

end A071106.P5493209826665022498

/-!
# A071108: CONTINUANT transform of {d(n)}, 1, 2, 2, 3, 2, 4, ... (A000005).

The programs for A071108, the canonical program `A071108.P7008044690600439881` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071108 has offset 1).

The definition of A071108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071108.P7008044690600439881

`a(n-2)+a(n-1)*A000005(n+1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071108

/-- `a(n-2)+a(n-1)*A000005(n+1)` -/
def P7008044690600439881.Spec : Prop :=
  ∀ n, P7008044690600439881.a n = A071108 (n + 1)

theorem P7008044690600439881.correct : P7008044690600439881.Spec := by
  intro n
  simp only [A071108, Nat.add_sub_cancel]

end A071108

/-! ## A071108.P11538088061377742004

`∑[record[A077610(A007661(n))]]`
-/

namespace A071108.P11538088061377742004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077610 (A007661 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071108.P11538088061377742004

namespace A071108

/-- `∑[record[A077610(A007661(n))]]` -/
def P11538088061377742004.Spec : Prop :=
  ∀ n, P11538088061377742004.a n = A071108 (n + 1)

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

/-! ## A071109.P5362185731384209161

`A292133(A141214(n))+A000038(A168287(n))`
-/

namespace A071109.P5362185731384209161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 (A141214 n).toNat + A000038 (A168287 n).toNat

end

end A071109.P5362185731384209161

/-! ## A071109.P16341899971562564323

`A351023(2^n)`
-/

namespace A071109.P16341899971562564323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351023 (2 ^ n)

end

end A071109.P16341899971562564323

/-! ## A071109.P11672335816714954514

`A292133(A141214(n))+A000038(A141214(n)²)`
-/

namespace A071109.P11672335816714954514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292133 (A141214 n).toNat + A000038 (A141214 n ^ 2).toNat

end

end A071109.P11672335816714954514

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

The programs for A071111, the canonical program `A071111.P7558974791234017135` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071111 has offset 2).

The definition of A071111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071111.P7558974791234017135

`A001000(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A071111

/-- `A001000(n+2)` -/
def P7558974791234017135.Spec : Prop :=
  ∀ n, P7558974791234017135.a n = A071111 (n + 2)

theorem P7558974791234017135.correct : P7558974791234017135.Spec := by
  intro n
  simp only [A071111, Nat.add_sub_cancel]

end A071111

/-! ## A071111.P2836094105039983601

`A071415(n+2)-(n+1)`
-/

namespace A071111.P2836094105039983601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071415 (n + 2) - (n + 1 : ℤ)

end

end A071111.P2836094105039983601

namespace A071111

/-- `A071415(n+2)-(n+1)` -/
def P2836094105039983601.Spec : Prop :=
  ∀ n, P2836094105039983601.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P10407795717296271630

`A033638(A123663(n+1)+3)`
-/

namespace A071111.P10407795717296271630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A123663 (n + 1) + 3).toNat

end

end A071111.P10407795717296271630

namespace A071111

/-- `A033638(A123663(n+1)+3)` -/
def P10407795717296271630.Spec : Prop :=
  ∀ n, P10407795717296271630.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P6480393132893003690

`A033638(∑[2-A240025(n)]+2)`
-/

namespace A071111.P6480393132893003690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A071111.P6480393132893003690

namespace A071111

/-- `A033638(∑[2-A240025(n)]+2)` -/
def P6480393132893003690.Spec : Prop :=
  ∀ n, P6480393132893003690.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P2905104245589777000

`A033638(2-∑[A240025(n)-2])`
-/

namespace A071111.P2905104245589777000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (2 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071111.P2905104245589777000

namespace A071111

/-- `A033638(2-∑[A240025(n)-2])` -/
def P2905104245589777000.Spec : Prop :=
  ∀ n, P2905104245589777000.a n = A071111 (n + 2)

end A071111

/-! ## A071111.P16232220277246753107

`A033638(A083479(n+1)+n+2)`
-/

namespace A071111.P16232220277246753107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A083479 (n + 1) + (n + 2 : ℤ)).toNat

end

end A071111.P16232220277246753107

namespace A071111

/-- `A033638(A083479(n+1)+n+2)` -/
def P16232220277246753107.Spec : Prop :=
  ∀ n, P16232220277246753107.a n = A071111 (n + 2)

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
# A071114: Numbers n such that n and sigma(n) are prime powers (of the form p^k, p prime, k>=1).

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

/-! ## A071115.P16486099609223882317

`A358075(A308334(n+1))`
-/

namespace A071115.P16486099609223882317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358075 (A308334 (n + 1)).toNat

end

end A071115.P16486099609223882317

/-! ## A071115.P15065205934354244720

`A358075(A060455(n)+n)`
-/

namespace A071115.P15065205934354244720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358075 (A060455 n + (n : ℤ)).toNat

end

end A071115.P15065205934354244720

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

The programs for A071118, the canonical program `A071118.P10143340567303740039` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071118 has offset 1).

The definition of A071118 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002618, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071118.P10143340567303740039

`2*A002618(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A071118

/-- `2*A002618(n+1)` -/
def P10143340567303740039.Spec : Prop :=
  ∀ n, P10143340567303740039.a n = A071118 (n + 1)

theorem P10143340567303740039.correct : P10143340567303740039.Spec := by
  intro n
  simp only [A071118, Nat.add_sub_cancel]

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

/-! ## A071118.P15785080081522679407

`2*(A046151(n+1)+1)`
-/

namespace A071118.P15785080081522679407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046151 (n + 1) + 1)

end

end A071118.P15785080081522679407

namespace A071118

/-- `2*(A046151(n+1)+1)` -/
def P15785080081522679407.Spec : Prop :=
  ∀ n, P15785080081522679407.a n = A071118 (n + 1)

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

/-! ## A071118.P3688084353172472696

`2*(n+1)*A000010(n+1)`
-/

namespace A071118.P3688084353172472696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A000010 (n + 1))

end

end A071118.P3688084353172472696

namespace A071118

/-- `2*(n+1)*A000010(n+1)` -/
def P3688084353172472696.Spec : Prop :=
  ∀ n, P3688084353172472696.a n = A071118 (n + 1)

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

end A071118

/-! ## A071118.P4324608785692982211

`(n+1)*A000010(A110192(n+1))`
-/

namespace A071118.P4324608785692982211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A110192 (n + 1)).toNat

end

end A071118.P4324608785692982211

namespace A071118

/-- `(n+1)*A000010(A110192(n+1))` -/
def P4324608785692982211.Spec : Prop :=
  ∀ n, P4324608785692982211.a n = A071118 (n + 1)

end A071118

/-!
# A071119: Palindromic primes in which deleting the outside pair of digits yields a prime at every stage until finally a single-digit prime is obtained.

The programs for A071119, there is no canonical definition to state claims against.
-/

/-! ## A071119.P16514604506832679769

`∑{p}[A076611(n+1)², #]`
-/

namespace A071119.P16514604506832679769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071119.P16514604506832679769

/-! ## A071119.P5196490101997270271

`A000015(A076611(n+1))`
-/

namespace A071119.P5196490101997270271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A076611 (n + 1)).toNat

end

end A071119.P5196490101997270271

/-! ## A071119.P6552530207598906593

`filter[A076611(n+1), A010055(#)]`
-/

namespace A071119.P6552530207598906593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A071119.P6552530207598906593

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

/-! ## A071119.P12235317590258986945

`filter[A076611(n+1), A080339(#)]`
-/

namespace A071119.P12235317590258986945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A071119.P12235317590258986945

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

The programs for A071121, the canonical program `A071121.P12124058773789244201` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071121 has offset 1).

The definition of A071121 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071121.P12124058773789244201

`∑[∑{digits}[(n+1)^3, #]]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A071121

/-- `∑[∑{digits}[(n+1)^3, #]]` -/
def P12124058773789244201.Spec : Prop :=
  ∀ n, (P12124058773789244201.a n : ℤ) = A071121 (n + 1)

theorem P12124058773789244201.correct : P12124058773789244201.Spec := by
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

The programs for A071122, the canonical program `A071122.P15622955886049296024` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071122 has offset 1).

The definition of A071122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071122.P15622955886049296024

`∑[A001370(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
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

/-! ## A071123.P8437712843258605358

`∑[A004152(n+1)]`
-/

namespace A071123.P8437712843258605358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071123.P8437712843258605358

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

/-! ## A071123.P13970608064215549022

`∑[∑{digits}[∏[n+1], #]]`
-/

namespace A071123.P13970608064215549022
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071123.P13970608064215549022

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

/-! ## A071123.P12944060296773566854

`∑{digits}[∏[n+1], #]+a(n-1)` with `a(0)=1`
-/

namespace A071123.P12944060296773566854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + a (n - 1)

end

end A071123.P12944060296773566854

/-!
# A071124: Least of five consecutive numbers which are cubefree and not squarefree, i.e., {k, k+1, k+2, k+3, k+4} are in A067259.

The programs for A071124, the canonical program `A071124.P14915334261569632399` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071124 has offset 1).

The definition of A071124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071124.P14915334261569632399

`∩[A071320(n+1)-1, A071320(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
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

/-! ## A071126.P8854508070980702105

`lcm(floor(1/(γ-n)), A002371(n+1))`
-/

namespace A071126.P8854508070980702105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋ (A002371 (n + 1))

end

end A071126.P8854508070980702105

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

/-! ## A071126.P13187622379012062625

`A084681(A000040(n+1))`
-/

namespace A071126.P13187622379012062625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A000040 (n + 1)).toNat

end

end A071126.P13187622379012062625

/-! ## A071126.P14372074274884299221

`A084681(A008578(n+2))`
-/

namespace A071126.P14372074274884299221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A008578 (n + 2)).toNat

end

end A071126.P14372074274884299221

/-! ## A071126.P12044545164527343207

`A084681(A182986(n+2))`
-/

namespace A071126.P12044545164527343207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A182986 (n + 2)).toNat

end

end A071126.P12044545164527343207

/-! ## A071126.P11278859082367350107

`A084681(sqrt(A001248(n+1)))`
-/

namespace A071126.P11278859082367350107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A071126.P11278859082367350107

/-! ## A071126.P5679747241911965313

`A084681(record[A006530(n+2)])`
-/

namespace A071126.P5679747241911965313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071126.P5679747241911965313

/-! ## A071126.P159626334065667555

`A084681(record[A014963(n+2)])`
-/

namespace A071126.P159626334065667555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071126.P159626334065667555

/-! ## A071126.P7481663685901665119

`A084681(record[A020639(n+2)])`
-/

namespace A071126.P7481663685901665119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071126.P7481663685901665119

/-! ## A071126.P17811897811855451493

`A084681(A006093(n+1)+1)`
-/

namespace A071126.P17811897811855451493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A006093 (n + 1) + 1).toNat

end

end A071126.P17811897811855451493

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

/-! ## A071127.P18008392435344349581

`A071137(n+1)-A245714(A103517(n))`
-/

namespace A071127.P18008392435344349581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071137 (n + 1) - A245714 (A103517 n).toNat

end

end A071127.P18008392435344349581

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

/-! ## A071133.P10161569150320783696

`∩[2*C(n, 2)+n, A020335(n+2)]`
-/

namespace A071133.P10161569150320783696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 2 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020335 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071133.P10161569150320783696

/-!
# A071136: Number of reduced positive-definite ternary forms of determinant -n.

The programs for A071136, there is no canonical definition to state claims against.
-/

/-! ## A071136.P8558738798528825137

`A058266(A252463(n+1)%A127959(n+1))`
-/

namespace A071136.P8558738798528825137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058266 (Int.tmod (A252463 (n + 1)) (A127959 (n + 1))).toNat

end

end A071136.P8558738798528825137

/-! ## A071136.P13297150249163245894

`A058266(A252463(n+1))%A138082(n+1)`
-/

namespace A071136.P13297150249163245894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058266 (A252463 (n + 1)).toNat) (A138082 (n + 1))

end

end A071136.P13297150249163245894

/-!
# A071137: Number of times 2n+p is prime, with p=1 or prime p < n.

The programs for A071137, there is no canonical definition to state claims against.
-/

/-! ## A071137.P8623083049101981895

`A071127(n+1)+A156707(n+1)²`
-/

namespace A071137.P8623083049101981895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (n + 1) + A156707 (n + 1) ^ 2

end

end A071137.P8623083049101981895

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

/-!
# A071138: CONTINUANT transform of {sigma(n)}, 1, 3, 4, 7, 6, 12, ... (A000203).

The programs for A071138, there is no canonical definition to state claims against.
-/

/-! ## A071138.P13666906332588447899

`a(n-2)+a(n-1)*A000203(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A071138.P13666906332588447899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 1) * A000203 (n + 1)

end

end A071138.P13666906332588447899

/-!
# A071139: Numbers k such that the sum of distinct primes dividing k is divisible by the largest prime dividing k.

The programs for A071139, there is no canonical definition to state claims against.
-/

/-! ## A071139.P275887341083859053

`∪[A071140(n+1), A246655(n+1)]`
-/

namespace A071139.P275887341083859053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071139.P275887341083859053

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

/-! ## A071139.P9528110399751986268

`record[A086486(n+1)%A000010(A086473(n+1))]`
-/

namespace A071139.P9528110399751986268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086486 (n + 1)) (A000010 (A086473 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071139.P9528110399751986268

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

/-! ## A071141.P9358768500822632066

`record[A007913(A071140(n+1))]`
-/

namespace A071141.P9358768500822632066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A071140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071141.P9358768500822632066

/-! ## A071141.P4185506877721414328

`record[A007947(A071140(n+2))]`
-/

namespace A071141.P4185506877721414328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A071140 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071141.P4185506877721414328

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

/-!
# A071142: Numbers of the form 2*p*q where (p,q) is a twin prime pair.

The programs for A071142, the canonical program `A071142.P14877615513992984752` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071142 has offset 1).

The definition of A071142 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037074, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071142.P14877615513992984752

`2*A037074(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071142

/-- `2*A037074(n+1)` -/
def P14877615513992984752.Spec : Prop :=
  ∀ n, P14877615513992984752.a n = A071142 (n + 1)

theorem P14877615513992984752.correct : P14877615513992984752.Spec := by
  intro n
  simp only [A071142, Nat.add_sub_cancel]

end A071142

/-! ## A071142.P9348321091856057519

`A184417(n+1)-3`
-/

namespace A071142.P9348321091856057519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184417 (n + 1) - 3

end

end A071142.P9348321091856057519

namespace A071142

/-- `A184417(n+1)-3` -/
def P9348321091856057519.Spec : Prop :=
  ∀ n, P9348321091856057519.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P11596754583758021051

`A063533(n+1)-4`
-/

namespace A071142.P11596754583758021051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063533 (n + 1) - 4

end

end A071142.P11596754583758021051

namespace A071142

/-- `A063533(n+1)-4` -/
def P11596754583758021051.Spec : Prop :=
  ∀ n, P11596754583758021051.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P13440005271406647172

`2*(A120875(n+1)+1)`
-/

namespace A071142.P13440005271406647172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A120875 (n + 1) + 1)

end

end A071142.P13440005271406647172

namespace A071142

/-- `2*(A120875(n+1)+1)` -/
def P13440005271406647172.Spec : Prop :=
  ∀ n, P13440005271406647172.a n = A071142 (n + 1)

end A071142

/-! ## A071142.P14294659090312107212

`2*(A075369(n+1)-1)`
-/

namespace A071142.P14294659090312107212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075369 (n + 1) - 1)

end

end A071142.P14294659090312107212

namespace A071142

/-- `2*(A075369(n+1)-1)` -/
def P14294659090312107212.Spec : Prop :=
  ∀ n, P14294659090312107212.a n = A071142 (n + 1)

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

The programs for A071148, the canonical program `A071148.P13630786703162267389` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071148 has offset 1).

The definition of A071148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071148.P13630786703162267389

`A007504(n+2)-2`

The canonical program, it is in `Seq.B007.C000`.
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

/-! ## A071148.P4307857475535842784

`∑[∏{d}[p?[n+1+n], #]]`
-/

namespace A071148.P4307857475535842784
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P4307857475535842784

namespace A071148

/-- `∑[∏{d}[p?[n+1+n], #]]` -/
def P4307857475535842784.Spec : Prop :=
  ∀ n, (P4307857475535842784.a n : ℤ) = A071148 (n + 1)

end A071148

/-! ## A071148.P3305344557791886636

`∑[∑{p}[p?[n+1+n], #]]`
-/

namespace A071148.P3305344557791886636
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P3305344557791886636

namespace A071148

/-- `∑[∑{p}[p?[n+1+n], #]]` -/
def P3305344557791886636.Spec : Prop :=
  ∀ n, (P3305344557791886636.a n : ℤ) = A071148 (n + 1)

end A071148

/-! ## A071148.P12270763860090141448

`∑[∏{p}[p?[n+1+n], #]]`
-/

namespace A071148.P12270763860090141448
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071148.P12270763860090141448

namespace A071148

/-- `∑[∏{p}[p?[n+1+n], #]]` -/
def P12270763860090141448.Spec : Prop :=
  ∀ n, (P12270763860090141448.a n : ℤ) = A071148 (n + 1)

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

/-! ## A071149.P14897780698908334819

`A000720(A071150(n+1)-1)`
-/

namespace A071149.P14897780698908334819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071150 (n + 1) - 1).toNat

end

end A071149.P14897780698908334819

/-! ## A071149.P3723202125581681596

`A000720(xor(1, A071150(n+1)))`
-/

namespace A071149.P3723202125581681596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A071150 (n + 1))).toNat

end

end A071149.P3723202125581681596

/-! ## A071149.P10780313228094853776

`A000720(A000010(A071150(n+1)))`
-/

namespace A071149.P10780313228094853776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A071150 (n + 1)).toNat).toNat

end

end A071149.P10780313228094853776

/-! ## A071149.P5450345330779104556

`A289508(A071150(n+1))-A289508(A124356(n+1))`
-/

namespace A071149.P5450345330779104556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A071150 (n + 1)).toNat - A289508 (A124356 (n + 1)).toNat

end

end A071149.P5450345330779104556

/-! ## A071149.P1006177781440754215

`A033270(A071150(n+1))`
-/

namespace A071149.P1006177781440754215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A071150 (n + 1)).toNat

end

end A071149.P1006177781440754215

/-! ## A071149.P15166795686518932388

`A289508(A071150(n+1))-A000120(A059148(n))`
-/

namespace A071149.P15166795686518932388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A071150 (n + 1)).toNat - A000120 (A059148 n).toNat

end

end A071149.P15166795686518932388

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

/-! ## A071150.P2555845820096099420

`A000040(A071149(n+1)+1)`
-/

namespace A071150.P2555845820096099420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071149 (n + 1) + 1).toNat

end

end A071150.P2555845820096099420

/-! ## A071150.P11920218852868813096

`A008578(A071149(n+1)+2)`
-/

namespace A071150.P11920218852868813096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A071149 (n + 1) + 2).toNat

end

end A071150.P11920218852868813096

/-! ## A071150.P10694937892052392591

`A093515(2*A071149(n+1))`
-/

namespace A071150.P10694937892052392591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A071149 (n + 1)).toNat

end

end A071150.P10694937892052392591

/-! ## A071150.P11858482850698809969

`A093515(lcm(2, A071149(n+1)))`
-/

namespace A071150.P11858482850698809969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (Int.lcm 2 (A071149 (n + 1)))

end

end A071150.P11858482850698809969

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

/-! ## A071151.P485200144718707415

`A071148(A071149(n+1))`
-/

namespace A071151.P485200144718707415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (A071149 (n + 1)).toNat

end

end A071151.P485200144718707415

/-! ## A071151.P13078914944558869958

`A343859(A071149(n+1))+char[A343764(n+1)]`
-/

namespace A071151.P13078914944558869958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343764 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343859 (A071149 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071151.P13078914944558869958

/-! ## A071151.P10258903820117954271

`A071148(A000720(A071150(n+1)-1))`
-/

namespace A071151.P10258903820117954271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (A000720 (A071150 (n + 1) - 1).toNat).toNat

end

end A071151.P10258903820117954271

/-! ## A071151.P14753130760513150946

`A071148(A000720(xor(1, A071150(n+1))))`
-/

namespace A071151.P14753130760513150946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (A000720 (Int.xor 1 (A071150 (n + 1))).toNat).toNat

end

end A071151.P14753130760513150946

/-! ## A071151.P12638013842826967118

`A034387(A071150(n+1))-2`
-/

namespace A071151.P12638013842826967118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A071150 (n + 1)).toNat - 2

end

end A071151.P12638013842826967118

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

/-! ## A071152.P875850225761309420

`A024630(2*A014486(n))`
-/

namespace A071152.P875850225761309420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024630 (2 * A014486 n).toNat

end

end A071152.P875850225761309420

/-! ## A071152.P11667112741352274655

`A169965(or(1, A014486(n)))`
-/

namespace A071152.P11667112741352274655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (Int.lor 1 (A014486 n)).toNat

end

end A071152.P11667112741352274655

/-! ## A071152.P301361324270342282

`A169965(xor(1, A014486(n)))`
-/

namespace A071152.P301361324270342282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (Int.xor 1 (A014486 n)).toNat

end

end A071152.P301361324270342282

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

/-! ## A071152.P9102892954622473349

`A169965(∑[A085192(n)]-A085192(n)+1)`
-/

namespace A071152.P9102892954622473349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (∑ j ∈ Finset.range (n + 1), f1 j - A085192 n + 1).toNat

end

end A071152.P9102892954622473349

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

/-! ## A071154.P14414580993906779839

`A071153(A057505(n+1))`
-/

namespace A071154.P14414580993906779839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (A057505 (n + 1)).toNat

end

end A071154.P14414580993906779839

/-! ## A071154.P1248830632859788097

`A007623(A059985(n+1))`
-/

namespace A071154.P1248830632859788097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A059985 (n + 1)).toNat

end

end A071154.P1248830632859788097

/-! ## A071154.P4989521042164965386

`A001202(A057520(n+1)+1)`
-/

namespace A071154.P4989521042164965386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001202 (A057520 (n + 1) + 1).toNat

end

end A071154.P4989521042164965386

/-! ## A071154.P4706286622025631458

`A071153(A125985(n+1))%A271458(n+1)`
-/

namespace A071154.P4706286622025631458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071153 (A125985 (n + 1)).toNat) (A271458 (n + 1))

end

end A071154.P4706286622025631458

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

/-! ## A071155.P9623955358748088573

`A071156(A057505(A057163(n)))`
-/

namespace A071155.P9623955358748088573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (A057505 (A057163 n).toNat).toNat

end

end A071155.P9623955358748088573

/-! ## A071155.P9250692599443168663

`A071156(A057163(A057506(n)))`
-/

namespace A071155.P9250692599443168663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (A057163 (A057506 n).toNat).toNat

end

end A071155.P9250692599443168663

/-! ## A071155.P9227188410364387575

`A071156(A085200(A071156(n)))`
-/

namespace A071155.P9227188410364387575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071156 (A085200 (A071156 n).toNat).toNat

end

end A071155.P9227188410364387575

/-! ## A071155.P5103232015085925497

`A085198(A014486(A125976(A057164(A125976(n)))))`
-/

namespace A071155.P5103232015085925497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085198 (A014486 (A125976 (A057164 (A125976 n).toNat).toNat).toNat).toNat

end

end A071155.P5103232015085925497

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

/-! ## A071156.P5460275568544621736

`A071155(A085199(A071155(n)))`
-/

namespace A071156.P5460275568544621736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071155 (A085199 (A071155 n).toNat).toNat

end

end A071156.P5460275568544621736

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

/-! ## A071157.P14269282436404885513

`A007623(A071156(A057164(n)))`
-/

namespace A071157.P14269282436404885513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A071156 (A057164 n).toNat).toNat

end

end A071157.P14269282436404885513

/-! ## A071157.P5084024713371161010

`A007623(A071156(A085200(A071156(n))))`
-/

namespace A071157.P5084024713371161010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A071156 (A085200 (A071156 n).toNat).toNat).toNat

end

end A071157.P5084024713371161010

/-! ## A071157.P8036312169567458057

`A007623(A120695(n))^A185036(n)!`
-/

namespace A071157.P8036312169567458057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A120695 n).toNat ^ Nat.factorial (A185036 n).toNat

end

end A071157.P8036312169567458057

/-! ## A071157.P14007279842594225663

`A007623(A120695(n))+A000038(A006981(n))`
-/

namespace A071157.P14007279842594225663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A120695 n).toNat + A000038 (A006981 n).toNat

end

end A071157.P14007279842594225663

/-!
# A071158: Factorial expansion of A071156.

The programs for A071158, there is no canonical definition to state claims against.
-/

/-! ## A071158.P12373213781504061683

`A071157(A057164(n+1))`
-/

namespace A071158.P12373213781504061683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (A057164 (n + 1)).toNat

end

end A071158.P12373213781504061683

/-! ## A071158.P9020363048596888863

`record[A071157(A057164(ceil(abs((1-n)/2))))]`
-/

namespace A071158.P9020363048596888863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (A057164 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071158.P9020363048596888863

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

/-! ## A071158.P14426363164330552256

`A007623(A071156(n+1))`
-/

namespace A071158.P14426363164330552256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A071156 (n + 1)).toNat

end

end A071158.P14426363164330552256

/-! ## A071158.P6346849006901863040

`A007623(lt[0, A085199(n)])`
-/

namespace A071158.P6346849006901863040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085199 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071158.P6346849006901863040

/-! ## A071158.P10930779600251586057

`A071157(A085200(A071156(A085200(A071155(n+1)))))`
-/

namespace A071158.P10930779600251586057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071157 (A085200 (A071156 (A085200 (A071155 (n + 1)).toNat).toNat).toNat).toNat

end

end A071158.P10930779600251586057

/-!
# A071159: Integers whose decimal expansion start with 1, do not contain zeros and each successive digit to the right is at most one greater than the previous digit.

The programs for A071159, there is no canonical definition to state claims against.
-/

/-! ## A071159.P15766187950562325281

`A239903(A057549(n+1))`
-/

namespace A071159.P15766187950562325281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (A057549 (n + 1)).toNat

end

end A071159.P15766187950562325281

/-! ## A071159.P7570892157140920708

`A239903(record[A082362(n+1)])`
-/

namespace A071159.P7570892157140920708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071159.P7570892157140920708

/-! ## A071159.P14015248122719046829

`∩[A193023(n+1), A239903(n)]`
-/

namespace A071159.P14015248122719046829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P14015248122719046829

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

/-! ## A071159.P4729275729098981818

`∩[A023721(n+1), A239903(n)]`
-/

namespace A071159.P4729275729098981818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239903 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071159.P4729275729098981818

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

/-! ## A071160.P795481485235300696

`A007623(A060125(record[A275957(n)]))`
-/

namespace A071160.P795481485235300696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A060125 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A071160.P795481485235300696

/-! ## A071160.P6006464468603894702

`A071153(A114994(n)%A153720(n+4))`
-/

namespace A071160.P6006464468603894702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071153 (Int.tmod (A114994 n) (A153720 (n + 4))).toNat

end

end A071160.P6006464468603894702

/-!
# A071161: Integers whose decimal expansion satisfies the condition that if we read each term from the left to right (the most significant to the least significant digit) then each nonzero digit gives a distance to the next nonzero digit to right (with a cyclic wrap-over from the least-significant to the most significant nonzero digit).

The programs for A071161, there is no canonical definition to state claims against.
-/

/-! ## A071161.P7406943649470262284

`record[A071160(A035327(n+1))]`
-/

namespace A071161.P7406943649470262284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071160 (A035327 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071161.P7406943649470262284

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

/-! ## A071162.P15071021337631929231

`A014486(record[A057117(n)])`
-/

namespace A071162.P15071021337631929231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071162.P15071021337631929231

/-! ## A071162.P10348784969362755433

`A014486(record[A057506(A057163(n))])`
-/

namespace A071162.P10348784969362755433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057506 (A057163 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071162.P10348784969362755433

/-! ## A071162.P1334569245233117139

`A014486(record[A057163(A057503(n))])`
-/

namespace A071162.P1334569245233117139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057503 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071162.P1334569245233117139

/-! ## A071162.P15671418809828052454

`A014486(record[A057163(A057505(n))])`
-/

namespace A071162.P15671418809828052454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A057505 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071162.P15671418809828052454

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

/-! ## A071162.P10967935139898452317

`A014486(record[A130935(n)])`
-/

namespace A071162.P10967935139898452317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071162.P10967935139898452317

/-! ## A071162.P11365821055270001786

`A014486(record[A130941(n)])`
-/

namespace A071162.P11365821055270001786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071162.P11365821055270001786

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

/-! ## A071164.P2284205910985740875

`A092037(∑[∑[A137822(n+1)]])`
-/

namespace A071164.P2284205910985740875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137822 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071164.P2284205910985740875

/-!
# A071166: a(n) = n - A006530(A000203(n)), difference between n and largest prime factor of the sum of its divisors.

The programs for A071166, the canonical program `A071166.P5224187019395811307` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071166 has offset 2).

The definition of A071166 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071166.P5224187019395811307

`n+2-A006530(A000203(n+2))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071166

/-- `n+2-A006530(A000203(n+2))` -/
def P5224187019395811307.Spec : Prop :=
  ∀ n, P5224187019395811307.a n = A071166 (n + 2)

theorem P5224187019395811307.correct : P5224187019395811307.Spec := by
  intro n
  simp only [A071166, Nat.add_sub_cancel]

end A071166

/-! ## A071166.P15350550808672654705

`2-A006530(∑{d}[n+2, #])+n`
-/

namespace A071166.P15350550808672654705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A006530 (∑ d ∈ Nat.divisors (f1 n), d) + (n : ℤ)

end

end A071166.P15350550808672654705

namespace A071166

/-- `2-A006530(∑{d}[n+2, #])+n` -/
def P15350550808672654705.Spec : Prop :=
  ∀ n, P15350550808672654705.a n = A071166 (n + 2)

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

/-! ## A071166.P15928813204359451002

`n+2-A082061(A000203(n+2)²)`
-/

namespace A071166.P15928813204359451002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A082061 (A000203 (n + 2) ^ 2).toNat

end

end A071166.P15928813204359451002

namespace A071166

/-- `n+2-A082061(A000203(n+2)²)` -/
def P15928813204359451002.Spec : Prop :=
  ∀ n, P15928813204359451002.a n = A071166 (n + 2)

end A071166

/-!
# A071167: a(n) = A023194 - A062700(n). Negative values of A071166(m) = m-A006530(A000203(m)) differences. In these cases m is square number from A023194.

The programs for A071167, there is no canonical definition to state claims against.
-/

/-! ## A071167.P9970111411358831174

`A023194(n+1)-A062700(n+1)`
-/

namespace A071167.P9970111411358831174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) - A062700 (n + 1)

end

end A071167.P9970111411358831174

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

/-! ## A071167.P16865537043202207887

`-(A062700(A000027(n+1))%A023194(n+1))`
-/

namespace A071167.P16865537043202207887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A062700 (A000027 (n + 1)).toNat) (A023194 (n + 1))

end

end A071167.P16865537043202207887

/-!
# A071168: n-th prime reduced modulo phi(n).

The programs for A071168, the canonical program `A071168.P12914104181432432926` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071168 has offset 1).

The definition of A071168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071168.P12914104181432432926

`A000040(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071168

/-- `A000040(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P12914104181432432926.Spec : Prop :=
  ∀ n, P12914104181432432926.a n = A071168 (n + 1)

theorem P12914104181432432926.correct : P12914104181432432926.Spec := by
  intro n
  simp only [A071168, Nat.add_sub_cancel]

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

/-! ## A071168.P18052269095558614955

`Δ[A007504(n)]%A000010(n+1)`
-/

namespace A071168.P18052269095558614955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000010 (n + 1))

end

end A071168.P18052269095558614955

namespace A071168

/-- `Δ[A007504(n)]%A000010(n+1)` -/
def P18052269095558614955.Spec : Prop :=
  ∀ n, P18052269095558614955.a n = A071168 (n + 1)

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

end A071168

/-! ## A071168.P9861561460350804278

`A000040(A000027(n+1))%A000010(n+1)`
-/

namespace A071168.P9861561460350804278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000027 (n + 1)).toNat) (A000010 (n + 1))

end

end A071168.P9861561460350804278

namespace A071168

/-- `A000040(A000027(n+1))%A000010(n+1)` -/
def P9861561460350804278.Spec : Prop :=
  ∀ n, P9861561460350804278.a n = A071168 (n + 1)

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

/-! ## A071168.P13168488878892256611

`record[A039649(n+1)]%A000010(n+1)`
-/

namespace A071168.P13168488878892256611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000010 (n + 1))

end

end A071168.P13168488878892256611

namespace A071168

/-- `record[A039649(n+1)]%A000010(n+1)` -/
def P13168488878892256611.Spec : Prop :=
  ∀ n, P13168488878892256611.a n = A071168 (n + 1)

end A071168

/-! ## A071168.P3713253422965037803

`record[A014963(n+2)]%A000010(n+1)`
-/

namespace A071168.P3713253422965037803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000010 (n + 1))

end

end A071168.P3713253422965037803

namespace A071168

/-- `record[A014963(n+2)]%A000010(n+1)` -/
def P3713253422965037803.Spec : Prop :=
  ∀ n, P3713253422965037803.a n = A071168 (n + 1)

end A071168

/-!
# A071170: n-th prime reduced modulo sigma(n).

The programs for A071170, the canonical program `A071170.P3616014520815881904` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071170 has offset 1).

The definition of A071170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071170.P3616014520815881904

`A000040(n+1)%A000203(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A071170

/-- `A000040(n+1)%A000203(n+1)` -/
def P3616014520815881904.Spec : Prop :=
  ∀ n, P3616014520815881904.a n = A071170 (n + 1)

theorem P3616014520815881904.correct : P3616014520815881904.Spec := by
  intro n
  simp only [A071170, Nat.add_sub_cancel]

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

/-! ## A071170.P8536483736716593933

`A008578(n+2)%A000203(n+1)`
-/

namespace A071170.P8536483736716593933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A000203 (n + 1))

end

end A071170.P8536483736716593933

namespace A071170

/-- `A008578(n+2)%A000203(n+1)` -/
def P8536483736716593933.Spec : Prop :=
  ∀ n, P8536483736716593933.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P17136950774386188748

`record[A006530(n+2)]%A000203(n+1)`
-/

namespace A071170.P17136950774386188748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000203 (n + 1))

end

end A071170.P17136950774386188748

namespace A071170

/-- `record[A006530(n+2)]%A000203(n+1)` -/
def P17136950774386188748.Spec : Prop :=
  ∀ n, P17136950774386188748.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P10176222892449581017

`record[A020639(n+2)]%A000203(n+1)`
-/

namespace A071170.P10176222892449581017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000203 (n + 1))

end

end A071170.P10176222892449581017

namespace A071170

/-- `record[A020639(n+2)]%A000203(n+1)` -/
def P10176222892449581017.Spec : Prop :=
  ∀ n, P10176222892449581017.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P9530274989911345924

`record[A000010(n+1)+1]%A000203(n+1)`
-/

namespace A071170.P9530274989911345924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000203 (n + 1))

end

end A071170.P9530274989911345924

namespace A071170

/-- `record[A000010(n+1)+1]%A000203(n+1)` -/
def P9530274989911345924.Spec : Prop :=
  ∀ n, P9530274989911345924.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P3537345647748324776

`eq[n, A006530(or(1, n))]%A000203(n+1)`
-/

namespace A071170.P3537345647748324776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A000203 (n + 1))

end

end A071170.P3537345647748324776

namespace A071170

/-- `eq[n, A006530(or(1, n))]%A000203(n+1)` -/
def P3537345647748324776.Spec : Prop :=
  ∀ n, P3537345647748324776.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P13473128033936224424

`A006530(lt[n, A006530(n+2)]+2)%A000203(n+1)`
-/

namespace A071170.P13473128033936224424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)) (A000203 (n + 1))

end

end A071170.P13473128033936224424

namespace A071170

/-- `A006530(lt[n, A006530(n+2)]+2)%A000203(n+1)` -/
def P13473128033936224424.Spec : Prop :=
  ∀ n, P13473128033936224424.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P12536057161196830798

`p?[A207790(n+1)]%A000203(n+1)`
-/

namespace A071170.P12536057161196830798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000203 (n + 1))

end

end A071170.P12536057161196830798

namespace A071170

/-- `p?[A207790(n+1)]%A000203(n+1)` -/
def P12536057161196830798.Spec : Prop :=
  ∀ n, P12536057161196830798.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P5118428241353701528

`record[A014963(n+2)]%A000203(n+1)`
-/

namespace A071170.P5118428241353701528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000203 (n + 1))

end

end A071170.P5118428241353701528

namespace A071170

/-- `record[A014963(n+2)]%A000203(n+1)` -/
def P5118428241353701528.Spec : Prop :=
  ∀ n, P5118428241353701528.a n = A071170 (n + 1)

end A071170

/-! ## A071170.P15562392416320386475

`(A039696(p?[A039698(n+1)])-1)%A000203(n+1)`
-/

namespace A071170.P15562392416320386475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039696 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1) (A000203 (n + 1))

end

end A071170.P15562392416320386475

namespace A071170

/-- `(A039696(p?[A039698(n+1)])-1)%A000203(n+1)` -/
def P15562392416320386475.Spec : Prop :=
  ∀ n, P15562392416320386475.a n = A071170 (n + 1)

end A071170

/-!
# A071171: L_2 norm of vertices of Permuto-Associahedron in R^n.

The programs for A071171, the canonical program `A071171.P12180189023099481258` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071171 has offset 0).

The definition of A071171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071171.P12180189023099481258

`C(n+1, 3)*(30*n^4-33*n²+2)/70`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A071172.P12943535192880821537

`A053462(n)+A000007(A004526(n))`
-/

namespace A071172.P12943535192880821537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053462 n + A000007 (A004526 n).toNat

end

end A071172.P12943535192880821537

/-! ## A071172.P8793532843810572698

`A084237(n)+2*A348708(n)`
-/

namespace A071172.P8793532843810572698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084237 n + 2 * A348708 n

end

end A071172.P8793532843810572698

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

/-! ## A071174.P1220335582796792566

`A020725(eq[A064549(n+1), A066959(n+1)])`
-/

namespace A071174.P1220335582796792566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071174.P1220335582796792566

/-! ## A071174.P1902112525583781227

`A020725(eq[A007947(n+1), A144494(n+1)])`
-/

namespace A071174.P1902112525583781227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071174.P1902112525583781227

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

/-! ## A071177.P12865483063135497532

`sqrt(A264604(n+1))`
-/

namespace A071177.P12865483063135497532
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264604 (n + 1) : ℝ)

end

end A071177.P12865483063135497532

/-! ## A071177.P15326889922170618519

`floor(sqrt(A264604(Δ[n²]-n)))`
-/

namespace A071177.P15326889922170618519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A264604 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A071177.P15326889922170618519

/-! ## A071177.P14276993395623413628

`A000027(root(A264604(n+1), 2))`
-/

namespace A071177.P14276993395623413628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A264604 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A071177.P14276993395623413628

/-! ## A071177.P5322159440613773507

`root(A264604(n+1), A020639(2*(n+1)))`
-/

namespace A071177.P5322159440613773507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264604 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A071177.P5322159440613773507

/-! ## A071177.P14835877802824123818

`A000007(n+1)+root(A264604(n+1), 2)`
-/

namespace A071177.P14835877802824123818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + (A264604 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A071177.P14835877802824123818

/-! ## A071177.P13654373972487037172

`root(A264604(n+1), 2)%A000041(n+5)`
-/

namespace A071177.P13654373972487037172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A264604 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000041 (n + 5))

end

end A071177.P13654373972487037172

/-! ## A071177.P16826530399285913753

`∏{d}[root(A264604(n+1), 2), A014963(#)]`
-/

namespace A071177.P16826530399285913753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264604 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A071177.P16826530399285913753

/-! ## A071177.P16890068264434973899

`root(A264604(n+1), 2)*A007318(∑[n])`
-/

namespace A071177.P16890068264434973899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264604 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A071177.P16890068264434973899

/-! ## A071177.P11607087541201847107

`A030667(floor(A264604(n+1)/10))`
-/

namespace A071177.P11607087541201847107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030667 ⌊(A264604 (n + 1) : ℚ) / 10⌋.toNat

end

end A071177.P11607087541201847107

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

The programs for A071178, the canonical program `A071178.P17375525505785378954` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071178 has offset 1).

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

/-! ## A071178.P9910599117460996195

`∑{e}[A053585(n+1), #]`
-/

namespace A071178.P9910599117460996195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071178.P9910599117460996195

namespace A071178

/-- `∑{e}[A053585(n+1), #]` -/
def P9910599117460996195.Spec : Prop :=
  ∀ n, (P9910599117460996195.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P11729674385115984725

`val(n+1, A111089(n+1))`
-/

namespace A071178.P11729674385115984725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A111089 (n + 1)).toNat

end

end A071178.P11729674385115984725

namespace A071178

/-- `val(n+1, A111089(n+1))` -/
def P11729674385115984725.Spec : Prop :=
  ∀ n, (P11729674385115984725.a n : ℤ) = A071178 (n + 1)

end A071178

/-! ## A071178.P17375525505785378954

`val(n+1, A006530(2*(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
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

/-! ## A071178.P12729304958530373461

`A124010(A013939(n+1)+1)`
-/

namespace A071178.P12729304958530373461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A013939 (n + 1) + 1).toNat

end

end A071178.P12729304958530373461

namespace A071178

/-- `A124010(A013939(n+1)+1)` -/
def P12729304958530373461.Spec : Prop :=
  ∀ n, P12729304958530373461.a n = A071178 (n + 1)

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

/-! ## A071178.P3709114938282185173

`A124010(∑[A001221(n+1)]+1)`
-/

namespace A071178.P3709114938282185173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A071178.P3709114938282185173

namespace A071178

/-- `A124010(∑[A001221(n+1)]+1)` -/
def P3709114938282185173.Spec : Prop :=
  ∀ n, P3709114938282185173.a n = A071178 (n + 1)

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

/-! ## A071178.P1024404631416837259

`A001222((n+1)/A051119(n+1))`
-/

namespace A071178.P1024404631416837259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A071178.P1024404631416837259

namespace A071178

/-- `A001222((n+1)/A051119(n+1))` -/
def P1024404631416837259.Spec : Prop :=
  ∀ n, P1024404631416837259.a n = A071178 (n + 1)

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

/-!
# A071179: n - (sum of prime factors of n) is prime.

The programs for A071179, the canonical program `A071179.P15606789359654984471` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071179 has offset 1).

The definition of A071179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1478 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071179.P15606789359654984471

`eq[1, ∑{e}[n-∑{p}[n, #], #]]`

The canonical program, it is in `Seq.B000.C011`.
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

/-! ## A071181.P4580976810684536748

`A070633(Δ[A002088(n)])`
-/

namespace A071181.P4580976810684536748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (f1 (n + 1) - f1 n).toNat

end

end A071181.P4580976810684536748

/-! ## A071181.P5128658448625849473

`A070633(Δ[A005728(n)])`
-/

namespace A071181.P5128658448625849473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (f1 (n + 1) - f1 n).toNat

end

end A071181.P5128658448625849473

/-! ## A071181.P12033381457004364483

`A070633(A000010(n+1))`
-/

namespace A071181.P12033381457004364483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (A000010 (n + 1)).toNat

end

end A071181.P12033381457004364483

/-! ## A071181.P7311662071815173354

`A070633(Δ[A100449(n)/4])`
-/

namespace A071181.P7311662071815173354
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A071181.P7311662071815173354

/-! ## A071181.P2996612125309307959

`A070633(A109606(n+1)+1)`
-/

namespace A071181.P2996612125309307959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (A109606 (n + 1) + 1).toNat

end

end A071181.P2996612125309307959

/-! ## A071181.P2457599616273508536

`A070633(A039649(n+1)-1)`
-/

namespace A071181.P2457599616273508536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (A039649 (n + 1) - 1).toNat

end

end A071181.P2457599616273508536

/-! ## A071181.P205941480908744947

`A070633(A349137(2*n+1))`
-/

namespace A071181.P205941480908744947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (A349137 (2 * n + 1)).toNat

end

end A071181.P205941480908744947

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

/-! ## A071181.P5570896462355136075

`A070633(A002618(n+1)/(n+1))`
-/

namespace A071181.P5570896462355136075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A071181.P5570896462355136075

/-! ## A071181.P12946526617200879234

`A070633(A002088(n+1)-A002088(n))`
-/

namespace A071181.P12946526617200879234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070633 (A002088 (n + 1) - A002088 n).toNat

end

end A071181.P12946526617200879234

/-!
# A071182: SPF(n+1)-SPF(n), where SPF(n) denotes the smallest prime factor of n.

The programs for A071182, there is no canonical definition to state claims against.
-/

/-! ## A071182.P14261558225261653054

`Δ[A020639(n+2)]`
-/

namespace A071182.P14261558225261653054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P14261558225261653054

/-! ## A071182.P7112901340577196353

`Δ[A057237(n+2)]`
-/

namespace A071182.P7112901340577196353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P7112901340577196353

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

/-! ## A071182.P1860945518768840617

`A020639(n+3)-A020639(n+2)`
-/

namespace A071182.P1860945518768840617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) - A020639 (n + 2)

end

end A071182.P1860945518768840617

/-! ## A071182.P1691216157640151487

`A057237(n+3)-A057237(n+2)`
-/

namespace A071182.P1691216157640151487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 3) - A057237 (n + 2)

end

end A071182.P1691216157640151487

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

/-! ## A071182.P13837100305936455771

`A087349(n+2)-A061228(n+2)`
-/

namespace A071182.P13837100305936455771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 2) - A061228 (n + 2)

end

end A071182.P13837100305936455771

/-! ## A071182.P5806860076000571772

`A087349(n+2)-A159475(n+2)`
-/

namespace A071182.P5806860076000571772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087349 (n + 2) - A159475 (n + 2)

end

end A071182.P5806860076000571772

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

/-! ## A071182.P4121811513576236001

`Δ[ratio[A072486(n+1)]]`
-/

namespace A071182.P4121811513576236001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072486 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P4121811513576236001

/-! ## A071182.P3149312992727940261

`Δ[A227196((n+2)²)]`
-/

namespace A071182.P3149312992727940261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 ((n + 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071182.P3149312992727940261

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

The programs for A071186, the canonical program `A071186.P1213708103561543319` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071186 has offset 1).

The definition of A071186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071186.P5501161935297382600

`eq[2, A071185(n+1)]+1`
-/

namespace A071186.P5501161935297382600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071186.P5501161935297382600

namespace A071186

/-- `eq[2, A071185(n+1)]+1` -/
def P5501161935297382600.Spec : Prop :=
  ∀ n, (P5501161935297382600.a n : ℤ) = A071186 (n + 1)

end A071186

/-! ## A071186.P2605750122790845862

`lt[A071185(abs(1-n)+1), 4]`
-/

namespace A071186.P2605750122790845862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071185 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071186.P2605750122790845862

namespace A071186

/-- `lt[A071185(abs(1-n)+1), 4]` -/
def P2605750122790845862.Spec : Prop :=
  ∀ n, (P2605750122790845862.a n : ℤ) = A071186 (n + 1)

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

The canonical program, it is in `Seq.B006.C000`.
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

The programs for A071187, there is no canonical definition to state claims against.
-/

/-! ## A071187.P8394263089585358856

`A020639(∏{e}[n+1, #+1])`
-/

namespace A071187.P8394263089585358856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A071187.P8394263089585358856

/-! ## A071187.P3657631868475148754

`A020639(∑{d}[n+1, gcd(n, #)])`
-/

namespace A071187.P3657631868475148754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A071187.P3657631868475148754

/-! ## A071187.P2062254190930370424

`A020639(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A071187.P2062254190930370424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A071187.P2062254190930370424

/-! ## A071187.P6177773999287206629

`A020639(∑{d}[n+1, (#%2)!])`
-/

namespace A071187.P6177773999287206629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A071187.P6177773999287206629

/-! ## A071187.P4482621778762581451

`A020639(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A071187.P4482621778762581451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A071187.P4482621778762581451

/-! ## A071187.P16731070389067790620

`A020639(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A071187.P16731070389067790620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A071187.P16731070389067790620

/-! ## A071187.P8051770374712852555

`A020639(Δ[A006218(n)])`
-/

namespace A071187.P8051770374712852555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A071187.P8051770374712852555

/-! ## A071187.P13793083081082589184

`A020639(Δ[A054519(n)])`
-/

namespace A071187.P13793083081082589184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A071187.P13793083081082589184

/-! ## A071187.P16964327526352379443

`A020639(A000005(n+1))`
-/

namespace A071187.P16964327526352379443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 (n + 1)).toNat

end

end A071187.P16964327526352379443

/-! ## A071187.P13521417165140721169

`A014673(A035116(n+1))`
-/

namespace A071187.P13521417165140721169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A035116 (n + 1)).toNat

end

end A071187.P13521417165140721169

/-! ## A071187.P6791564853583961240

`A014673(A062011(n+1))`
-/

namespace A071187.P6791564853583961240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A062011 (n + 1)).toNat

end

end A071187.P6791564853583961240

/-! ## A071187.P4883085330983246007

`A020639(A072696(n+1))`
-/

namespace A071187.P4883085330983246007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072696 (n + 1)).toNat

end

end A071187.P4883085330983246007

/-! ## A071187.P10977923470500968532

`A014673(A131089(n+1))`
-/

namespace A071187.P10977923470500968532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A131089 (n + 1)).toNat

end

end A071187.P10977923470500968532

/-! ## A071187.P2073435115197337196

`A020639(A128555(n+1))`
-/

namespace A071187.P2073435115197337196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128555 (n + 1)).toNat

end

end A071187.P2073435115197337196

/-! ## A071187.P14787008060692530228

`A020639(A133702(n+1))`
-/

namespace A071187.P14787008060692530228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A133702 (n + 1)).toNat

end

end A071187.P14787008060692530228

/-! ## A071187.P12456479741893321521

`A020639(A152235(n+1))`
-/

namespace A071187.P12456479741893321521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A152235 (n + 1)).toNat

end

end A071187.P12456479741893321521

/-! ## A071187.P13598958896738378950

`A115561(A145154(n+1))`
-/

namespace A071187.P13598958896738378950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115561 (A145154 (n + 1)).toNat

end

end A071187.P13598958896738378950

/-! ## A071187.P8697830564646084828

`A143151(A184389(n+1))`
-/

namespace A071187.P8697830564646084828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143151 (A184389 (n + 1)).toNat

end

end A071187.P8697830564646084828

/-! ## A071187.P390071821698574646

`A014673(A000005(n+1)²)`
-/

namespace A071187.P390071821698574646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (A000005 (n + 1) ^ 2).toNat

end

end A071187.P390071821698574646

/-! ## A071187.P15718392531581911177

`A074828(A000005(n+1)²)`
-/

namespace A071187.P15718392531581911177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A000005 (n + 1) ^ 2).toNat

end

end A071187.P15718392531581911177

/-!
# A071188: Largest prime factor of number of divisors of n; a(1)=1.

The programs for A071188, the canonical program `A071188.P8515757286936621774` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071188 has offset 1).

The definition of A071188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071188.P8515757286936621774

`A006530(A000005(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071188

/-- `A006530(A000005(n+1))` -/
def P8515757286936621774.Spec : Prop :=
  ∀ n, P8515757286936621774.a n = A071188 (n + 1)

theorem P8515757286936621774.correct : P8515757286936621774.Spec := by
  intro n
  simp only [A071188, Nat.add_sub_cancel]

end A071188

/-! ## A071188.P12659862287234049526

`A006530(∏{e}[n+1, #+1])`
-/

namespace A071188.P12659862287234049526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A071188.P12659862287234049526

namespace A071188

/-- `A006530(∏{e}[n+1, #+1])` -/
def P12659862287234049526.Spec : Prop :=
  ∀ n, P12659862287234049526.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P11205715136027958814

`A006530(∑{d}[n+1, gcd(n, #)])`
-/

namespace A071188.P11205715136027958814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A071188.P11205715136027958814

namespace A071188

/-- `A006530(∑{d}[n+1, gcd(n, #)])` -/
def P11205715136027958814.Spec : Prop :=
  ∀ n, P11205715136027958814.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P8973287471081347779

`A006530(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A071188.P8973287471081347779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A071188.P8973287471081347779

namespace A071188

/-- `A006530(∑{d}[n+1, ceil(acot(#))])` -/
def P8973287471081347779.Spec : Prop :=
  ∀ n, P8973287471081347779.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P5527135888824265068

`A006530(∑{d}[n+1, (#%2)!])`
-/

namespace A071188.P5527135888824265068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A071188.P5527135888824265068

namespace A071188

/-- `A006530(∑{d}[n+1, (#%2)!])` -/
def P5527135888824265068.Spec : Prop :=
  ∀ n, P5527135888824265068.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P13892373264502172873

`A006530(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A071188.P13892373264502172873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A071188.P13892373264502172873

namespace A071188

/-- `A006530(∑{d}[n+1, ((-1)^#)²])` -/
def P13892373264502172873.Spec : Prop :=
  ∀ n, P13892373264502172873.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P5440362783506398488

`A006530(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A071188.P5440362783506398488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A071188.P5440362783506398488

namespace A071188

/-- `A006530(∑{d}[n+1, #+1]-∑{d}[n+1, #])` -/
def P5440362783506398488.Spec : Prop :=
  ∀ n, P5440362783506398488.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P2791652607066515394

`A006530(Δ[A006218(n)])`
-/

namespace A071188.P2791652607066515394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A071188.P2791652607066515394

namespace A071188

/-- `A006530(Δ[A006218(n)])` -/
def P2791652607066515394.Spec : Prop :=
  ∀ n, P2791652607066515394.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P11920622056276909605

`A006530(Δ[A054519(n)])`
-/

namespace A071188.P11920622056276909605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A071188.P11920622056276909605

namespace A071188

/-- `A006530(Δ[A054519(n)])` -/
def P11920622056276909605.Spec : Prop :=
  ∀ n, P11920622056276909605.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P15270556637634459599

`A006530(A035116(n+1))`
-/

namespace A071188.P15270556637634459599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035116 (n + 1)).toNat

end

end A071188.P15270556637634459599

namespace A071188

/-- `A006530(A035116(n+1))` -/
def P15270556637634459599.Spec : Prop :=
  ∀ n, P15270556637634459599.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P15184877928226072239

`A006530(A131089(n+1))`
-/

namespace A071188.P15184877928226072239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A131089 (n + 1)).toNat

end

end A071188.P15184877928226072239

namespace A071188

/-- `A006530(A131089(n+1))` -/
def P15184877928226072239.Spec : Prop :=
  ∀ n, P15184877928226072239.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P10539612646261266491

`A085392(A062011(n+1))`
-/

namespace A071188.P10539612646261266491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A062011 (n + 1)).toNat

end

end A071188.P10539612646261266491

namespace A071188

/-- `A085392(A062011(n+1))` -/
def P10539612646261266491.Spec : Prop :=
  ∀ n, P10539612646261266491.a n = A071188 (n + 1)

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

/-! ## A071188.P449432634106199022

`A006530(A335841(n+1))`
-/

namespace A071188.P449432634106199022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A335841 (n + 1)).toNat

end

end A071188.P449432634106199022

namespace A071188

/-- `A006530(A335841(n+1))` -/
def P449432634106199022.Spec : Prop :=
  ∀ n, P449432634106199022.a n = A071188 (n + 1)

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

/-! ## A071188.P17257354493506969608

`A085392(A000005(n+1)²)`
-/

namespace A071188.P17257354493506969608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A000005 (n + 1) ^ 2).toNat

end

end A071188.P17257354493506969608

namespace A071188

/-- `A085392(A000005(n+1)²)` -/
def P17257354493506969608.Spec : Prop :=
  ∀ n, P17257354493506969608.a n = A071188 (n + 1)

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

/-! ## A071188.P576004414780120751

`A006530(A152235(n+1)²)`
-/

namespace A071188.P576004414780120751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152235 (n + 1) ^ 2).toNat

end

end A071188.P576004414780120751

namespace A071188

/-- `A006530(A152235(n+1)²)` -/
def P576004414780120751.Spec : Prop :=
  ∀ n, P576004414780120751.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P13357009763808821653

`A189172(A000005(n+1)²)`
-/

namespace A071188.P13357009763808821653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189172 (A000005 (n + 1) ^ 2).toNat

end

end A071188.P13357009763808821653

namespace A071188

/-- `A189172(A000005(n+1)²)` -/
def P13357009763808821653.Spec : Prop :=
  ∀ n, P13357009763808821653.a n = A071188 (n + 1)

end A071188

/-! ## A071188.P10394861384078584898

`A217581(A000005(n+1)²)`
-/

namespace A071188.P10394861384078584898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217581 (A000005 (n + 1) ^ 2).toNat

end

end A071188.P10394861384078584898

namespace A071188

/-- `A217581(A000005(n+1)²)` -/
def P10394861384078584898.Spec : Prop :=
  ∀ n, P10394861384078584898.a n = A071188 (n + 1)

end A071188

/-!
# A071189: Smallest prime factor of sum of divisors of n.

The programs for A071189, there is no canonical definition to state claims against.
-/

/-! ## A071189.P1405400249993816939

`A020639(A000203(n+1))`
-/

namespace A071189.P1405400249993816939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000203 (n + 1)).toNat

end

end A071189.P1405400249993816939

/-! ## A071189.P14892566076531847099

`A020639(∑{d}[n+1, #])`
-/

namespace A071189.P14892566076531847099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A071189.P14892566076531847099

/-! ## A071189.P4182091074316331179

`A020639(Δ[A160664(n)])`
-/

namespace A071189.P4182091074316331179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (n + 1) - f1 n).toNat

end

end A071189.P4182091074316331179

/-! ## A071189.P9640913699392297608

`A020639(A080398(n+1))`
-/

namespace A071189.P9640913699392297608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A080398 (n + 1)).toNat

end

end A071189.P9640913699392297608

/-! ## A071189.P11399649882324265269

`A020639(A175433(n+1))`
-/

namespace A071189.P11399649882324265269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A175433 (n + 1)).toNat

end

end A071189.P11399649882324265269

/-! ## A071189.P15673485370211854013

`A020639(A353783(n+1))`
-/

namespace A071189.P15673485370211854013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A353783 (n + 1)).toNat

end

end A071189.P15673485370211854013

/-! ## A071189.P6292970447510599141

`A020639(abs(A143348(n+1)))`
-/

namespace A071189.P6292970447510599141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |A143348 (n + 1)|.toNat

end

end A071189.P6292970447510599141

/-! ## A071189.P3528465124091527432

`A020639(∑[A340793(n+1)])`
-/

namespace A071189.P3528465124091527432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071189.P3528465124091527432

/-! ## A071189.P9009129636944536516

`A020639(A039653(n+1)+1)`
-/

namespace A071189.P9009129636944536516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A039653 (n + 1) + 1).toNat

end

end A071189.P9009129636944536516

/-! ## A071189.P14399650672514716422

`A020639(A088580(n+1)-1)`
-/

namespace A071189.P14399650672514716422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088580 (n + 1) - 1).toNat

end

end A071189.P14399650672514716422

/-! ## A071189.P11015852084344783383

`A020639(A245092(2*n+1))`
-/

namespace A071189.P11015852084344783383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245092 (2 * n + 1)).toNat

end

end A071189.P11015852084344783383

/-! ## A071189.P6391578109979053205

`A020639(A074400(n+1)/2)`
-/

namespace A071189.P6391578109979053205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A071189.P6391578109979053205

/-! ## A071189.P13291873202005567353

`A020639((A002659(n+1)+1)/2)`
-/

namespace A071189.P13291873202005567353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A071189.P13291873202005567353

/-! ## A071189.P16002502759606993160

`A020639(A326136(2*(n+1))/2)`
-/

namespace A071189.P16002502759606993160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A326136 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A071189.P16002502759606993160

/-! ## A071189.P7036044775287863701

`A020639(A001065(n+1)+1+n)`
-/

namespace A071189.P7036044775287863701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071189.P7036044775287863701

/-! ## A071189.P17915284935004441754

`A020639(A155085(n+1)-(n+1))`
-/

namespace A071189.P17915284935004441754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A071189.P17915284935004441754

/-! ## A071189.P6164420985917936985

`A020639(A064987(n+1)/(n+1))`
-/

namespace A071189.P6164420985917936985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A071189.P6164420985917936985

/-! ## A071189.P15756180831070185322

`A000203(n+1)/A371418(n+1)`
-/

namespace A071189.P15756180831070185322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A371418 (n + 1) : ℚ)

end

end A071189.P15756180831070185322

/-! ## A071189.P18226067530862495995

`A020639(A160664(n+1)-A160664(n))`
-/

namespace A071189.P18226067530862495995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A160664 (n + 1) - A160664 n).toNat

end

end A071189.P18226067530862495995

/-! ## A071189.P9831411490726301488

`A020639(A117004(n+1)+A079667(n+1))`
-/

namespace A071189.P9831411490726301488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A117004 (n + 1) + A079667 (n + 1)).toNat

end

end A071189.P9831411490726301488

/-!
# A071190: Greatest prime factor of sum of divisors of n, for n >= 2; a(1) = 1.

The programs for A071190, the canonical program `A071190.P6657897633682184868` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071190 has offset 1).

The definition of A071190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071190.P6657897633682184868

`A006530(A000203(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071190

/-- `A006530(A000203(n+1))` -/
def P6657897633682184868.Spec : Prop :=
  ∀ n, P6657897633682184868.a n = A071190 (n + 1)

theorem P6657897633682184868.correct : P6657897633682184868.Spec := by
  intro n
  simp only [A071190, Nat.add_sub_cancel]

end A071190

/-! ## A071190.P6270769644249240654

`A006530(∑{d}[n+1, #])`
-/

namespace A071190.P6270769644249240654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A071190.P6270769644249240654

namespace A071190

/-- `A006530(∑{d}[n+1, #])` -/
def P6270769644249240654.Spec : Prop :=
  ∀ n, P6270769644249240654.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P7706819700534337390

`∏{p}[A388274(n+1), #]`
-/

namespace A071190.P7706819700534337390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A071190.P7706819700534337390

namespace A071190

/-- `∏{p}[A388274(n+1), #]` -/
def P7706819700534337390.Spec : Prop :=
  ∀ n, (P7706819700534337390.a n : ℤ) = A071190 (n + 1)

end A071190

/-! ## A071190.P5617769095475581328

`A006530(Δ[A160664(n)])`
-/

namespace A071190.P5617769095475581328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A071190.P5617769095475581328

namespace A071190

/-- `A006530(Δ[A160664(n)])` -/
def P5617769095475581328.Spec : Prop :=
  ∀ n, P5617769095475581328.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P3166605764195352894

`A006530(A057020(n+1))`
-/

namespace A071190.P3166605764195352894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057020 (n + 1)).toNat

end

end A071190.P3166605764195352894

namespace A071190

/-- `A006530(A057020(n+1))` -/
def P3166605764195352894.Spec : Prop :=
  ∀ n, P3166605764195352894.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P14941052600267442609

`A006530(A080398(n+1))`
-/

namespace A071190.P14941052600267442609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A080398 (n + 1)).toNat

end

end A071190.P14941052600267442609

namespace A071190

/-- `A006530(A080398(n+1))` -/
def P14941052600267442609.Spec : Prop :=
  ∀ n, P14941052600267442609.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P6434408023905610264

`A006530(A175433(n+1))`
-/

namespace A071190.P6434408023905610264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175433 (n + 1)).toNat

end

end A071190.P6434408023905610264

namespace A071190

/-- `A006530(A175433(n+1))` -/
def P6434408023905610264.Spec : Prop :=
  ∀ n, P6434408023905610264.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P11646000143889293062

`A006530(A295314(n+1))`
-/

namespace A071190.P11646000143889293062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A295314 (n + 1)).toNat

end

end A071190.P11646000143889293062

namespace A071190

/-- `A006530(A295314(n+1))` -/
def P11646000143889293062.Spec : Prop :=
  ∀ n, P11646000143889293062.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P16961099909428217705

`A006530(A353783(n+1))`
-/

namespace A071190.P16961099909428217705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A353783 (n + 1)).toNat

end

end A071190.P16961099909428217705

namespace A071190

/-- `A006530(A353783(n+1))` -/
def P16961099909428217705.Spec : Prop :=
  ∀ n, P16961099909428217705.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P7688632764065731009

`A006530(A388274(n+1))`
-/

namespace A071190.P7688632764065731009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A388274 (n + 1)).toNat

end

end A071190.P7688632764065731009

namespace A071190

/-- `A006530(A388274(n+1))` -/
def P7688632764065731009.Spec : Prop :=
  ∀ n, P7688632764065731009.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P7410715164236591339

`A006530(abs(A143348(n+1)))`
-/

namespace A071190.P7410715164236591339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |A143348 (n + 1)|.toNat

end

end A071190.P7410715164236591339

namespace A071190

/-- `A006530(abs(A143348(n+1)))` -/
def P7410715164236591339.Spec : Prop :=
  ∀ n, P7410715164236591339.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P6325857613917709052

`A006530(∑[A340793(n+1)])`
-/

namespace A071190.P6325857613917709052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071190.P6325857613917709052

namespace A071190

/-- `A006530(∑[A340793(n+1)])` -/
def P6325857613917709052.Spec : Prop :=
  ∀ n, P6325857613917709052.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P3007634146065405580

`A006530(A039653(n+1)+1)`
-/

namespace A071190.P3007634146065405580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039653 (n + 1) + 1).toNat

end

end A071190.P3007634146065405580

namespace A071190

/-- `A006530(A039653(n+1)+1)` -/
def P3007634146065405580.Spec : Prop :=
  ∀ n, P3007634146065405580.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P3717929972462314915

`A006530(A088580(n+1)-1)`
-/

namespace A071190.P3717929972462314915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088580 (n + 1) - 1).toNat

end

end A071190.P3717929972462314915

namespace A071190

/-- `A006530(A088580(n+1)-1)` -/
def P3717929972462314915.Spec : Prop :=
  ∀ n, P3717929972462314915.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P17678138713596930048

`A006530(A245092(2*n+1))`
-/

namespace A071190.P17678138713596930048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A245092 (2 * n + 1)).toNat

end

end A071190.P17678138713596930048

namespace A071190

/-- `A006530(A245092(2*n+1))` -/
def P17678138713596930048.Spec : Prop :=
  ∀ n, P17678138713596930048.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P4213896267234620960

`A006530(A074400(n+1)/2)`
-/

namespace A071190.P4213896267234620960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A071190.P4213896267234620960

namespace A071190

/-- `A006530(A074400(n+1)/2)` -/
def P4213896267234620960.Spec : Prop :=
  ∀ n, P4213896267234620960.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P18083167323491024254

`A006530((A002659(n+1)+1)/2)`
-/

namespace A071190.P18083167323491024254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A071190.P18083167323491024254

namespace A071190

/-- `A006530((A002659(n+1)+1)/2)` -/
def P18083167323491024254.Spec : Prop :=
  ∀ n, P18083167323491024254.a n = A071190 (n + 1)

end A071190

/-! ## A071190.P13782215660023998111

`A006530(A001065(n+1)+1+n)`
-/

namespace A071190.P13782215660023998111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071190.P13782215660023998111

namespace A071190

/-- `A006530(A001065(n+1)+1+n)` -/
def P13782215660023998111.Spec : Prop :=
  ∀ n, P13782215660023998111.a n = A071190 (n + 1)

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

/-! ## A071190.P8968583465979625430

`A006530(lcm(2, A000203(2*n-(n-1)))/2)`
-/

namespace A071190.P8968583465979625430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((Int.lcm 2 (A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) : ℚ) / 2)).toNat

end

end A071190.P8968583465979625430

namespace A071190

/-- `A006530(lcm(2, A000203(2*n-(n-1)))/2)` -/
def P8968583465979625430.Spec : Prop :=
  ∀ n, P8968583465979625430.a n = A071190 (n + 1)

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

/-! ## A071193.P2935330308548851841

`A077655(n+1)+2+n`
-/

namespace A071193.P2935330308548851841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077655 (n + 1) + 2 + (n : ℤ)

end

end A071193.P2935330308548851841

/-! ## A071193.P14335892298017888494

`A357136(gcd(A241909(n+1), A241909(n+2)))+2+n`
-/

namespace A071193.P14335892298017888494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357136 (Int.gcd (A241909 (n + 1)) (A241909 (n + 2))) + 2 + (n : ℤ)

end

end A071193.P14335892298017888494

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

/-! ## A071193.P4986116143425808844

`A131534(A142779(n+1)+1+n)+1+n`
-/

namespace A071193.P4986116143425808844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131534 (A142779 (n + 1) + 1 + (n : ℤ)).toNat + 1 + (n : ℤ)

end

end A071193.P4986116143425808844

/-!
# A071194: Length (>1) of shortest sequence of consecutive primes starting with prime(n) whose sum is also prime, or -1 if no such sequence exists.

The programs for A071194, there is no canonical definition to state claims against.
-/

/-! ## A071194.P14899471965748514608

`A248498(n+1)+1`
-/

namespace A071194.P14899471965748514608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248498 (n + 1) + 1

end

end A071194.P14899471965748514608

/-! ## A071194.P14197754325409770549

`A020725(A248498(n+1))`
-/

namespace A071194.P14197754325409770549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A248498 (n + 1)).toNat

end

end A071194.P14197754325409770549

/-! ## A071194.P12671890989668994784

`A000720(A071195(n+1))-n`
-/

namespace A071194.P12671890989668994784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071195 (n + 1)).toNat - (n : ℤ)

end

end A071194.P12671890989668994784

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

/-! ## A071195.P11150951207075932325

`A000040(A071194(n+1)+n)`
-/

namespace A071195.P11150951207075932325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A071194 (n + 1) + (n : ℤ)).toNat

end

end A071195.P11150951207075932325

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

/-! ## A071195.P14186223773431262164

`A000040(A248498(n+1)+1+n)`
-/

namespace A071195.P14186223773431262164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A248498 (n + 1) + 1 + (n : ℤ)).toNat

end

end A071195.P14186223773431262164

/-! ## A071195.P1922194051624462594

`A008578(A248498(n+1)+2+n)`
-/

namespace A071195.P1922194051624462594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A248498 (n + 1) + 2 + (n : ℤ)).toNat

end

end A071195.P1922194051624462594

/-!
# A071196: The sum of the sequence starting with prime(n) and having prime sum defined in A071194, or -1 if no such sequence exists.

The programs for A071196, there is no canonical definition to state claims against.
-/

/-! ## A071196.P6437340765741962166

`A034387(A071195(n+1))-A007504(n)`
-/

namespace A071196.P6437340765741962166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A071195 (n + 1)).toNat - A007504 n

end

end A071196.P6437340765741962166

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

/-! ## A071197.P14716452439696423648

`eq[char[A071195(n+1)], A071222(2*n)]`
-/

namespace A071197.P14716452439696423648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071195 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A071197.P14716452439696423648

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


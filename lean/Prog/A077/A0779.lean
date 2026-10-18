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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B011.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A077900: Expansion of (1-x)^(-1)/(1+x-2*x^2+2*x^3).

The programs for A077900, the canonical program `A077900.P17887080321041104200` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077900 has offset 0).

The definition of A077900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^2+4x^3-2x^4))` (program `A077900.P17887080321041104200`, by `A077900.P17887080321041104200.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077900.P17887080321041104200

`ogf(1/(1-3x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077900

/-- `ogf(1/(1-3x^2+4x^3-2x^4))` -/
def P17887080321041104200.Spec : Prop :=
  ∀ n, P17887080321041104200.a n = A077900 n

theorem P17887080321041104200.correct : P17887080321041104200.Spec := by
  intro n
  simp only [A077900]

end A077900

/-! ## A077900.P18424415543219233499

`∑[A077970(n)]`
-/

namespace A077900.P18424415543219233499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P18424415543219233499

namespace A077900

/-- `∑[A077970(n)]` -/
def P18424415543219233499.Spec : Prop :=
  ∀ n, P18424415543219233499.a n = A077900 n

end A077900

/-! ## A077900.P4579147158657571751

`∑[(-1)^n*A077946(n)]`
-/

namespace A077900.P4579147158657571751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P4579147158657571751

namespace A077900

/-- `∑[(-1)^n*A077946(n)]` -/
def P4579147158657571751.Spec : Prop :=
  ∀ n, P4579147158657571751.a n = A077900 n

end A077900

/-! ## A077900.P12465180515996265710

`(-1)^n*A297860(n+1)+1`
-/

namespace A077900.P12465180515996265710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A297860 (n + 1) + 1

end

end A077900.P12465180515996265710

namespace A077900

/-- `(-1)^n*A297860(n+1)+1` -/
def P12465180515996265710.Spec : Prop :=
  ∀ n, P12465180515996265710.a n = A077900 n

end A077900

/-! ## A077900.P14591495687511312832

`∑[A077946(n)/A033999(n)]`
-/

namespace A077900.P14591495687511312832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077946 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P14591495687511312832

namespace A077900

/-- `∑[A077946(n)/A033999(n)]` -/
def P14591495687511312832.Spec : Prop :=
  ∀ n, P14591495687511312832.a n = (A077900 n : ℚ)

end A077900

/-! ## A077900.P10320918820653929965

`∑[∑[A078006(n)]*A033999(n)]`
-/

namespace A077900.P10320918820653929965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P10320918820653929965

namespace A077900

/-- `∑[∑[A078006(n)]*A033999(n)]` -/
def P10320918820653929965.Spec : Prop :=
  ∀ n, P10320918820653929965.a n = A077900 n

end A077900

/-! ## A077900.P5358219086794555952

`∑[A077946(n)*A087960(2*n)]`
-/

namespace A077900.P5358219086794555952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 n * A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P5358219086794555952

namespace A077900

/-- `∑[A077946(n)*A087960(2*n)]` -/
def P5358219086794555952.Spec : Prop :=
  ∀ n, P5358219086794555952.a n = A077900 n

end A077900

/-! ## A077900.P7663510262978995833

`∑[∑[A078040(n)]]`
-/

namespace A077900.P7663510262978995833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P7663510262978995833

namespace A077900

/-- `∑[∑[A078040(n)]]` -/
def P7663510262978995833.Spec : Prop :=
  ∀ n, P7663510262978995833.a n = A077900 n

end A077900

/-! ## A077900.P13089716017143927721

`∑[A077946(n)/A087960(n²)]`
-/

namespace A077900.P13089716017143927721
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077946 n : ℚ) / (A087960 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077900.P13089716017143927721

namespace A077900

/-- `∑[A077946(n)/A087960(n²)]` -/
def P13089716017143927721.Spec : Prop :=
  ∀ n, P13089716017143927721.a n = (A077900 n : ℚ)

end A077900

/-!
# A077901: Expansion of (1-x)^(-1)/(1+x-x^2-2*x^3).

The programs for A077901, the canonical program `A077901.P9009592878412647723` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077901 has offset 0).

The definition of A077901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2-x^3+2x^4))` (program `A077901.P9009592878412647723`, by `A077901.P9009592878412647723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077901.P9009592878412647723

`ogf(1/(1-2x^2-x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077901

/-- `ogf(1/(1-2x^2-x^3+2x^4))` -/
def P9009592878412647723.Spec : Prop :=
  ∀ n, P9009592878412647723.a n = A077901 n

theorem P9009592878412647723.correct : P9009592878412647723.Spec := by
  intro n
  simp only [A077901]

end A077901

/-! ## A077901.P2183013713949283946

`a(n-3)+2*(a(n-2)-a(n-4))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A077901.P2183013713949283946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 1] fun n a =>
  a (n - 3) + 2 * (a (n - 2) - a (n - 4))

end

end A077901.P2183013713949283946

namespace A077901

/-- `a(n-3)+2*(a(n-2)-a(n-4))` -/
def P2183013713949283946.Spec : Prop :=
  ∀ n, P2183013713949283946.a n = A077901 n

end A077901

/-! ## A077901.P15005647633279816294

`∑[A077971(n)]`
-/

namespace A077901.P15005647633279816294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077901.P15005647633279816294

namespace A077901

/-- `∑[A077971(n)]` -/
def P15005647633279816294.Spec : Prop :=
  ∀ n, P15005647633279816294.a n = A077901 n

end A077901

/-! ## A077901.P15079276992192784954

`∑[(-1)^n*A077948(n)]`
-/

namespace A077901.P15079276992192784954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077901.P15079276992192784954

namespace A077901

/-- `∑[(-1)^n*A077948(n)]` -/
def P15079276992192784954.Spec : Prop :=
  ∀ n, P15079276992192784954.a n = A077901 n

end A077901

/-! ## A077901.P12365559555797608171

`∑[(-1)^n*∑[A078011(n)]]`
-/

namespace A077901.P12365559555797608171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078011 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077901.P12365559555797608171

namespace A077901

/-- `∑[(-1)^n*∑[A078011(n)]]` -/
def P12365559555797608171.Spec : Prop :=
  ∀ n, P12365559555797608171.a n = A077901 n

end A077901

/-! ## A077901.P3446868174079196533

`∑[A077948(n)/A033999(n)]`
-/

namespace A077901.P3446868174079196533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077948 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077901.P3446868174079196533

namespace A077901

/-- `∑[A077948(n)/A033999(n)]` -/
def P3446868174079196533.Spec : Prop :=
  ∀ n, P3446868174079196533.a n = (A077901 n : ℚ)

end A077901

/-! ## A077901.P3535089431481641426

`∑[∑[A078041(n)]]`
-/

namespace A077901.P3535089431481641426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077901.P3535089431481641426

namespace A077901

/-- `∑[∑[A078041(n)]]` -/
def P3535089431481641426.Spec : Prop :=
  ∀ n, P3535089431481641426.a n = A077901 n

end A077901

/-! ## A077901.P2314563445266679032

`∑[∑[A297870(n+3)-A000079(n+1)]]`
-/

namespace A077901.P2314563445266679032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 3) - A000079 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077901.P2314563445266679032

namespace A077901

/-- `∑[∑[A297870(n+3)-A000079(n+1)]]` -/
def P2314563445266679032.Spec : Prop :=
  ∀ n, P2314563445266679032.a n = A077901 n

end A077901

/-!
# A077902: Expansion of (1-x)^(-1)/(1 + x - x^2 + x^3).

The programs for A077902, the canonical program `A077902.P16491081114987266786` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077902 has offset 0).

The definition of A077902 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2+2x^3-x^4))` (program `A077902.P16491081114987266786`, by `A077902.P16491081114987266786.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077902.P16491081114987266786

`ogf(1/(1-2x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077902

/-- `ogf(1/(1-2x^2+2x^3-x^4))` -/
def P16491081114987266786.Spec : Prop :=
  ∀ n, P16491081114987266786.a n = A077902 n

theorem P16491081114987266786.correct : P16491081114987266786.Spec := by
  intro n
  simp only [A077902]

end A077902

/-! ## A077902.P16513128167868759865

`∑[a(n-2)-(a(n-1)+a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077902.P16513128167868759865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077902.P16513128167868759865

namespace A077902

/-- `∑[a(n-2)-(a(n-1)+a(n-3))]` -/
def P16513128167868759865.Spec : Prop :=
  ∀ n, P16513128167868759865.a n = A077902 n

end A077902

/-! ## A077902.P5741908537874344653

`∑[a(n-2)-a(n-1)-a(n-3)]` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077902.P5741908537874344653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077902.P5741908537874344653

namespace A077902

/-- `∑[a(n-2)-a(n-1)-a(n-3)]` -/
def P5741908537874344653.Spec : Prop :=
  ∀ n, P5741908537874344653.a n = A077902 n

end A077902

/-! ## A077902.P14433304764617806743

`a(n-2)+1-(a(n-1)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A077902.P14433304764617806743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 2) + (1 - (a (n - 1) + a (n - 3)))

end

end A077902.P14433304764617806743

namespace A077902

/-- `a(n-2)+1-(a(n-1)+a(n-3))` -/
def P14433304764617806743.Spec : Prop :=
  ∀ n, P14433304764617806743.a n = A077902 n

end A077902

/-! ## A077902.P5643500148051576891

`1-(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A077902.P5643500148051576891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  1 - (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A077902.P5643500148051576891

namespace A077902

/-- `1-(a(n-1)-(a(n-2)-a(n-3)))` -/
def P5643500148051576891.Spec : Prop :=
  ∀ n, P5643500148051576891.a n = A077902 n

end A077902

/-! ## A077902.P18113645408877155132

`∑[∑[A078042(n)]]`
-/

namespace A077902.P18113645408877155132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077902.P18113645408877155132

namespace A077902

/-- `∑[∑[A078042(n)]]` -/
def P18113645408877155132.Spec : Prop :=
  ∀ n, P18113645408877155132.a n = A077902 n

end A077902

/-! ## A077902.P4493967611406519802

`(-1)^n*∑[A112476(n)]`
-/

namespace A077902.P4493967611406519802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077902.P4493967611406519802

namespace A077902

/-- `(-1)^n*∑[A112476(n)]` -/
def P4493967611406519802.Spec : Prop :=
  ∀ n, P4493967611406519802.a n = A077902 n

end A077902

/-! ## A077902.P7373925383237837256

`∑[(-1)^n*A000073(n+2)]`
-/

namespace A077902.P7373925383237837256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077902.P7373925383237837256

namespace A077902

/-- `∑[(-1)^n*A000073(n+2)]` -/
def P7373925383237837256.Spec : Prop :=
  ∀ n, P7373925383237837256.a n = A077902 n

end A077902

/-! ## A077902.P11397596981559900959

`∑[A112476(n)]*A033999(n)`
-/

namespace A077902.P11397596981559900959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077902.P11397596981559900959

namespace A077902

/-- `∑[A112476(n)]*A033999(n)` -/
def P11397596981559900959.Spec : Prop :=
  ∀ n, P11397596981559900959.a n = A077902 n

end A077902

/-! ## A077902.P14609324813749227601

`∑[A000073(n+2)*A033999(n)]`
-/

namespace A077902.P14609324813749227601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 2) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077902.P14609324813749227601

namespace A077902

/-- `∑[A000073(n+2)*A033999(n)]` -/
def P14609324813749227601.Spec : Prop :=
  ∀ n, P14609324813749227601.a n = A077902 n

end A077902

/-! ## A077902.P2653297758979425937

`∑[(A000100(n)+A000045(n+1))*(-1)^n]`
-/

namespace A077902.P2653297758979425937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000100 n + A000045 (n + 1)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077902.P2653297758979425937

namespace A077902

/-- `∑[(A000100(n)+A000045(n+1))*(-1)^n]` -/
def P2653297758979425937.Spec : Prop :=
  ∀ n, P2653297758979425937.a n = A077902 n

end A077902

/-!
# A077903: Expansion of (1-x)^(-1)/(1 + x - x^2 + 2*x^3).

The programs for A077903, the canonical program `A077903.P11556110817470379978` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077903 has offset 0).

The definition of A077903 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2+3x^3-2x^4))` (program `A077903.P11556110817470379978`, by `A077903.P11556110817470379978.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077903.P11556110817470379978

`ogf(1/(1-2x^2+3x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077903

/-- `ogf(1/(1-2x^2+3x^3-2x^4))` -/
def P11556110817470379978.Spec : Prop :=
  ∀ n, P11556110817470379978.a n = A077903 n

theorem P11556110817470379978.correct : P11556110817470379978.Spec := by
  intro n
  simp only [A077903]

end A077903

/-! ## A077903.P10106491120574923924

`floor(∑[(a(n-1)-(-2)^(n+1))/3])` with `a(0)=1`
-/

namespace A077903.P10106491120574923924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) - ((-2) ^ (n + 1) : ℚ)) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A077903.P10106491120574923924

namespace A077903

/-- `floor(∑[(a(n-1)-(-2)^(n+1))/3])` -/
def P10106491120574923924.Spec : Prop :=
  ∀ n, P10106491120574923924.a n = A077903 n

end A077903

/-! ## A077903.P266486502032204955

`a(n-1)+∑[(-2)^n]-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077903.P266486502032204955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2))

end

end A077903.P266486502032204955

namespace A077903

/-- `a(n-1)+∑[(-2)^n]-a(n-2)` -/
def P266486502032204955.Spec : Prop :=
  ∀ n, P266486502032204955.a n = A077903 n

end A077903

/-! ## A077903.P5660929239478204610

`a(n-1)-(a(n-2)-∑[(-2)^n])` with `a(0)=1, a(1)=0`
-/

namespace A077903.P5660929239478204610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - (a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077903.P5660929239478204610

namespace A077903

/-- `a(n-1)-(a(n-2)-∑[(-2)^n])` -/
def P5660929239478204610.Spec : Prop :=
  ∀ n, P5660929239478204610.a n = A077903 n

end A077903

/-! ## A077903.P13303491031693085474

`∑[∑[a(n-1)-a(n-2)]]-2*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A077903.P13303491031693085474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * a (n - 1)

end

end A077903.P13303491031693085474

namespace A077903

/-- `∑[∑[a(n-1)-a(n-2)]]-2*a(n-1)` -/
def P13303491031693085474.Spec : Prop :=
  ∀ n, P13303491031693085474.a n = A077903 n

end A077903

/-! ## A077903.P10429412482640509053

`∑[∑[a(n-1)-a(n-2)]]-a(n-1)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A077903.P10429412482640509053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1) - a (n - 1)

end

end A077903.P10429412482640509053

namespace A077903

/-- `∑[∑[a(n-1)-a(n-2)]]-a(n-1)-a(n-1)` -/
def P10429412482640509053.Spec : Prop :=
  ∀ n, P10429412482640509053.a n = A077903 n

end A077903

/-! ## A077903.P14311418451298907825

`∑[A077972(n)]`
-/

namespace A077903.P14311418451298907825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077972 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077903.P14311418451298907825

namespace A077903

/-- `∑[A077972(n)]` -/
def P14311418451298907825.Spec : Prop :=
  ∀ n, P14311418451298907825.a n = A077903 n

end A077903

/-! ## A077903.P4568876469313956755

`∑[∑[A078043(n)]]`
-/

namespace A077903.P4568876469313956755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077903.P4568876469313956755

namespace A077903

/-- `∑[∑[A078043(n)]]` -/
def P4568876469313956755.Spec : Prop :=
  ∀ n, P4568876469313956755.a n = A077903 n

end A077903

/-! ## A077903.P6134900868222677821

`A151575(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A077903.P6134900868222677821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A151575 n - a (n - 3)

end

end A077903.P6134900868222677821

namespace A077903

/-- `A151575(n)-a(n-3)` -/
def P6134900868222677821.Spec : Prop :=
  ∀ n, P6134900868222677821.a n = A077903 n

end A077903

/-! ## A077903.P13386944972134638074

`A131026(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A077903.P13386944972134638074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131026 n - 2 * a (n - 1)

end

end A077903.P13386944972134638074

namespace A077903

/-- `A131026(n)-2*a(n-1)` -/
def P13386944972134638074.Spec : Prop :=
  ∀ n, P13386944972134638074.a n = A077903 n

end A077903

/-! ## A077903.P17631525675258396176

`A164965(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A077903.P17631525675258396176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164965 n - 2 * a (n - 1)

end

end A077903.P17631525675258396176

namespace A077903

/-- `A164965(n)-2*a(n-1)` -/
def P17631525675258396176.Spec : Prop :=
  ∀ n, P17631525675258396176.a n = A077903 n

end A077903

/-! ## A077903.P17159253221472057757

`∑[A010892(3*n)*A077947(n)]`
-/

namespace A077903.P17159253221472057757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) * A077947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077903.P17159253221472057757

namespace A077903

/-- `∑[A010892(3*n)*A077947(n)]` -/
def P17159253221472057757.Spec : Prop :=
  ∀ n, P17159253221472057757.a n = A077903 n

end A077903

/-! ## A077903.P4480423893323820333

`A077925(n+1)-A078043(n+1)`
-/

namespace A077903.P4480423893323820333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n + 1) - A078043 (n + 1)

end

end A077903.P4480423893323820333

namespace A077903

/-- `A077925(n+1)-A078043(n+1)` -/
def P4480423893323820333.Spec : Prop :=
  ∀ n, P4480423893323820333.a n = A077903 n

end A077903

/-! ## A077903.P11826479277214959108

`ceil(2*Δ[A077925(n)-A078043(n)]/3)`
-/

namespace A077903.P11826479277214959108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - A078043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (f1 (n + 1) - f1 n) : ℚ) / 3⌉

end

end A077903.P11826479277214959108

namespace A077903

/-- `ceil(2*Δ[A077925(n)-A078043(n)]/3)` -/
def P11826479277214959108.Spec : Prop :=
  ∀ n, P11826479277214959108.a n = A077903 n

end A077903

/-! ## A077903.P8602734087622313093

`∑[round((-2)^(n+2)/7)]`
-/

namespace A077903.P8602734087622313093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ (n + 2) : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077903.P8602734087622313093

namespace A077903

/-- `∑[round((-2)^(n+2)/7)]` -/
def P8602734087622313093.Spec : Prop :=
  ∀ n, P8602734087622313093.a n = A077903 n

end A077903

/-! ## A077903.P15765142569898217357

`a(n-1)+round((-2)^(n+2)/7)` with `a(0)=1`
-/

namespace A077903.P15765142569898217357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.roundAway (((-2) ^ (n + 2) : ℚ) / 7)

end

end A077903.P15765142569898217357

namespace A077903

/-- `a(n-1)+round((-2)^(n+2)/7)` -/
def P15765142569898217357.Spec : Prop :=
  ∀ n, P15765142569898217357.a n = A077903 n

end A077903

/-!
# A077904: Expansion of (1-x)^(-1)/(1+x-2*x^3).

The programs for A077904, the canonical program `A077904.P18045526814229004847` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077904 has offset 0).

The definition of A077904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-2x^3+2x^4))` (program `A077904.P18045526814229004847`, by `A077904.P18045526814229004847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077904.P18045526814229004847

`ogf(1/(1-x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077904

/-- `ogf(1/(1-x^2-2x^3+2x^4))` -/
def P18045526814229004847.Spec : Prop :=
  ∀ n, P18045526814229004847.a n = A077904 n

theorem P18045526814229004847.correct : P18045526814229004847.Spec := by
  intro n
  simp only [A077904]

end A077904

/-! ## A077904.P5666602247024980206

`∑[2*a(n-3)-a(n-1)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A077904.P5666602247024980206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P5666602247024980206

namespace A077904

/-- `∑[2*a(n-3)-a(n-1)]` -/
def P5666602247024980206.Spec : Prop :=
  ∀ n, P5666602247024980206.a n = A077904 n

end A077904

/-! ## A077904.P14684972049277469281

`2*a(n-3)+1-a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077904.P14684972049277469281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  2 * a (n - 3) + (1 - a (n - 1))

end

end A077904.P14684972049277469281

namespace A077904

/-- `2*a(n-3)+1-a(n-1)` -/
def P14684972049277469281.Spec : Prop :=
  ∀ n, P14684972049277469281.a n = A077904 n

end A077904

/-! ## A077904.P13934550786024906255

`1-(a(n-1)-2*a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077904.P13934550786024906255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - (a (n - 1) - 2 * a (n - 3))

end

end A077904.P13934550786024906255

namespace A077904

/-- `1-(a(n-1)-2*a(n-3))` -/
def P13934550786024906255.Spec : Prop :=
  ∀ n, P13934550786024906255.a n = A077904 n

end A077904

/-! ## A077904.P1284367290315897547

`∑[a(n-3)+a(n-3)-a(n-1)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A077904.P1284367290315897547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 3) + (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P1284367290315897547

namespace A077904

/-- `∑[a(n-3)+a(n-3)-a(n-1)]` -/
def P1284367290315897547.Spec : Prop :=
  ∀ n, P1284367290315897547.a n = A077904 n

end A077904

/-! ## A077904.P15957267890628186089

`1-a(n-1)+a(n-3)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077904.P15957267890628186089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - a (n - 1) + (a (n - 3) + a (n - 3))

end

end A077904.P15957267890628186089

namespace A077904

/-- `1-a(n-1)+a(n-3)+a(n-3)` -/
def P15957267890628186089.Spec : Prop :=
  ∀ n, P15957267890628186089.a n = A077904 n

end A077904

/-! ## A077904.P15646208711755666737

`1-(a(n-1)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077904.P15646208711755666737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - (a (n - 1) - a (n - 3) - a (n - 3))

end

end A077904.P15646208711755666737

namespace A077904

/-- `1-(a(n-1)-a(n-3)-a(n-3))` -/
def P15646208711755666737.Spec : Prop :=
  ∀ n, P15646208711755666737.a n = A077904 n

end A077904

/-! ## A077904.P8701067356587791644

`∑[A077973(n)]`
-/

namespace A077904.P8701067356587791644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077973 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P8701067356587791644

namespace A077904

/-- `∑[A077973(n)]` -/
def P8701067356587791644.Spec : Prop :=
  ∀ n, P8701067356587791644.a n = A077904 n

end A077904

/-! ## A077904.P12906376069526952989

`∑[∑[A108520(n)]]`
-/

namespace A077904.P12906376069526952989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P12906376069526952989

namespace A077904

/-- `∑[∑[A108520(n)]]` -/
def P12906376069526952989.Spec : Prop :=
  ∀ n, P12906376069526952989.a n = A077904 n

end A077904

/-! ## A077904.P14097095860866567795

`∑[∑[∑[A078069(n)]]]`
-/

namespace A077904.P14097095860866567795
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P14097095860866567795

namespace A077904

/-- `∑[∑[∑[A078069(n)]]]` -/
def P14097095860866567795.Spec : Prop :=
  ∀ n, P14097095860866567795.a n = A077904 n

end A077904

/-! ## A077904.P16680320849173361360

`∑[2-∑[A084102(n)]]`
-/

namespace A077904.P16680320849173361360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P16680320849173361360

namespace A077904

/-- `∑[2-∑[A084102(n)]]` -/
def P16680320849173361360.Spec : Prop :=
  ∀ n, P16680320849173361360.a n = A077904 n

end A077904

/-! ## A077904.P5831617326125883279

`∑[1-A137505(n+2)]`
-/

namespace A077904.P5831617326125883279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137505 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P5831617326125883279

namespace A077904

/-- `∑[1-A137505(n+2)]` -/
def P5831617326125883279.Spec : Prop :=
  ∀ n, P5831617326125883279.a n = A077904 n

end A077904

/-! ## A077904.P1065374391033800268

`∑[∑[A084102(n+1)+A009116(n+1)]]`
-/

namespace A077904.P1065374391033800268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (n + 1) + A009116 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P1065374391033800268

namespace A077904

/-- `∑[∑[A084102(n+1)+A009116(n+1)]]` -/
def P1065374391033800268.Spec : Prop :=
  ∀ n, P1065374391033800268.a n = A077904 n

end A077904

/-! ## A077904.P4179023723676915962

`∑[∑[A009545(n+1)*A056594(2*n)]]`
-/

namespace A077904.P4179023723676915962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) * A056594 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P4179023723676915962

namespace A077904

/-- `∑[∑[A009545(n+1)*A056594(2*n)]]` -/
def P4179023723676915962.Spec : Prop :=
  ∀ n, P4179023723676915962.a n = A077904 n

end A077904

/-! ## A077904.P4663979547169658147

`∑[A009116(n+5)/4-A137426(n)]`
-/

namespace A077904.P4663979547169658147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 (n + 5) : ℚ) / 4 - (A137426 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P4663979547169658147

namespace A077904

/-- `∑[A009116(n+5)/4-A137426(n)]` -/
def P4663979547169658147.Spec : Prop :=
  ∀ n, P4663979547169658147.a n = (A077904 n : ℚ)

end A077904

/-! ## A077904.P15906950510709101352

`∑[A000007(3*n+1)-A009116(n+1)-A137426(n)]`
-/

namespace A077904.P15906950510709101352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * n + 1) - A009116 (n + 1) - A137426 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P15906950510709101352

namespace A077904

/-- `∑[A000007(3*n+1)-A009116(n+1)-A137426(n)]` -/
def P15906950510709101352.Spec : Prop :=
  ∀ n, P15906950510709101352.a n = A077904 n

end A077904

/-! ## A077904.P7613574731849941392

`∑[A009545(3*n+1)/2^n-A137426(n)]`
-/

namespace A077904.P7613574731849941392
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009545 (3 * n + 1) : ℚ) / (2 ^ n : ℚ) - (A137426 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077904.P7613574731849941392

namespace A077904

/-- `∑[A009545(3*n+1)/2^n-A137426(n)]` -/
def P7613574731849941392.Spec : Prop :=
  ∀ n, P7613574731849941392.a n = (A077904 n : ℚ)

end A077904

/-!
# A077905: Expansion of 1/(1 - x^2 - x^3 + x^4).

The programs for A077905, the canonical program `A077905.P8208939492686418724` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077905 has offset 0).

The definition of A077905 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2-x^3+x^4))` (program `A077905.P8208939492686418724`, by `A077905.P8208939492686418724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077905.P8208939492686418724

`ogf(1/(1-x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077905

/-- `ogf(1/(1-x^2-x^3+x^4))` -/
def P8208939492686418724.Spec : Prop :=
  ∀ n, P8208939492686418724.a n = A077905 n

theorem P8208939492686418724.correct : P8208939492686418724.Spec := by
  intro n
  simp only [A077905]

end A077905

/-! ## A077905.P15382741181758781023

`∑[a(n-3)-a(n-1)]` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A077905.P15382741181758781023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077905.P15382741181758781023

namespace A077905

/-- `∑[a(n-3)-a(n-1)]` -/
def P15382741181758781023.Spec : Prop :=
  ∀ n, P15382741181758781023.a n = A077905 n

end A077905

/-! ## A077905.P6324124094915561322

`a(n-3)+1-a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077905.P6324124094915561322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 3) + (1 - a (n - 1))

end

end A077905.P6324124094915561322

namespace A077905

/-- `a(n-3)+1-a(n-1)` -/
def P6324124094915561322.Spec : Prop :=
  ∀ n, P6324124094915561322.a n = A077905 n

end A077905

/-! ## A077905.P4761221595382594653

`1-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077905.P4761221595382594653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - (a (n - 1) - a (n - 3))

end

end A077905.P4761221595382594653

namespace A077905

/-- `1-(a(n-1)-a(n-3))` -/
def P4761221595382594653.Spec : Prop :=
  ∀ n, P4761221595382594653.a n = A077905 n

end A077905

/-! ## A077905.P16439839493533367797

`∑[A176971(n+3)]`
-/

namespace A077905.P16439839493533367797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077905.P16439839493533367797

namespace A077905

/-- `∑[A176971(n+3)]` -/
def P16439839493533367797.Spec : Prop :=
  ∀ n, P16439839493533367797.a n = A077905 n

end A077905

/-! ## A077905.P3349953341298453845

`∑[-A104769(n+1)]`
-/

namespace A077905.P3349953341298453845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077905.P3349953341298453845

namespace A077905

/-- `∑[-A104769(n+1)]` -/
def P3349953341298453845.Spec : Prop :=
  ∀ n, P3349953341298453845.a n = A077905 n

end A077905

/-! ## A077905.P14052201529358921735

`∑[∑[A104769(n+5)]]`
-/

namespace A077905.P14052201529358921735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077905.P14052201529358921735

namespace A077905

/-- `∑[∑[A104769(n+5)]]` -/
def P14052201529358921735.Spec : Prop :=
  ∀ n, P14052201529358921735.a n = A077905 n

end A077905

/-! ## A077905.P12666129933540591433

`A176971(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077905.P12666129933540591433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A176971 n + a (n - 2)

end

end A077905.P12666129933540591433

namespace A077905

/-- `A176971(n)+a(n-2)` -/
def P12666129933540591433.Spec : Prop :=
  ∀ n, P12666129933540591433.a n = A077905 n

end A077905

/-! ## A077905.P5731005531477201572

`1-Δ[A050935(n+1)]*A062157(n)`
-/

namespace A077905.P5731005531477201572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) * A062157 n

end

end A077905.P5731005531477201572

namespace A077905

/-- `1-Δ[A050935(n+1)]*A062157(n)` -/
def P5731005531477201572.Spec : Prop :=
  ∀ n, P5731005531477201572.a n = A077905 n

end A077905

/-! ## A077905.P14441807903071670316

`∑[A247917(n)]`
-/

namespace A077905.P14441807903071670316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077905.P14441807903071670316

namespace A077905

/-- `∑[A247917(n)]` -/
def P14441807903071670316.Spec : Prop :=
  ∀ n, P14441807903071670316.a n = A077905 n

end A077905

/-! ## A077905.P8872577150507988968

`1-(A104770(n)+Δ[A104769(n)])`
-/

namespace A077905.P8872577150507988968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A104770 n + (f1 (n + 1) - f1 n))

end

end A077905.P8872577150507988968

namespace A077905

/-- `1-(A104770(n)+Δ[A104769(n)])` -/
def P8872577150507988968.Spec : Prop :=
  ∀ n, P8872577150507988968.a n = A077905 n

end A077905

/-! ## A077905.P1487842144608274500

`A104769(n+1)+1-A104770(n+1)`
-/

namespace A077905.P1487842144608274500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 1) + (1 - A104770 (n + 1))

end

end A077905.P1487842144608274500

namespace A077905

/-- `A104769(n+1)+1-A104770(n+1)` -/
def P1487842144608274500.Spec : Prop :=
  ∀ n, P1487842144608274500.a n = A077905 n

end A077905

/-! ## A077905.P1492064170713769815

`∑[A104771(n)]-A104769(n)`
-/

namespace A077905.P1492064170713769815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104769 n

end

end A077905.P1492064170713769815

namespace A077905

/-- `∑[A104771(n)]-A104769(n)` -/
def P1492064170713769815.Spec : Prop :=
  ∀ n, P1492064170713769815.a n = A077905 n

end A077905

/-! ## A077905.P18282316762782082084

`∑[A133037(n+3)]-A329227(n+4)`
-/

namespace A077905.P18282316762782082084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A329227 (n + 4)

end

end A077905.P18282316762782082084

namespace A077905

/-- `∑[A133037(n+3)]-A329227(n+4)` -/
def P18282316762782082084.Spec : Prop :=
  ∀ n, P18282316762782082084.a n = A077905 n

end A077905

/-!
# A077906: Expansion of (1-x)^(-1)/(1+x+2*x^3).

The programs for A077906, the canonical program `A077906.P16987483856486793583` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077906 has offset 0).

The definition of A077906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2+2x^3-2x^4))` (program `A077906.P16987483856486793583`, by `A077906.P16987483856486793583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077906.P16987483856486793583

`ogf(1/(1-x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077906

/-- `ogf(1/(1-x^2+2x^3-2x^4))` -/
def P16987483856486793583.Spec : Prop :=
  ∀ n, P16987483856486793583.a n = A077906 n

theorem P16987483856486793583.correct : P16987483856486793583.Spec := by
  intro n
  simp only [A077906]

end A077906

/-! ## A077906.P12027749096718190069

`1-(a(n-1)+2*a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077906.P12027749096718190069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - (a (n - 1) + 2 * a (n - 3))

end

end A077906.P12027749096718190069

namespace A077906

/-- `1-(a(n-1)+2*a(n-3))` -/
def P12027749096718190069.Spec : Prop :=
  ∀ n, P12027749096718190069.a n = A077906 n

end A077906

/-! ## A077906.P11035996998513982653

`1-2*a(n-3)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077906.P11035996998513982653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - 2 * a (n - 3) - a (n - 1)

end

end A077906.P11035996998513982653

namespace A077906

/-- `1-2*a(n-3)-a(n-1)` -/
def P11035996998513982653.Spec : Prop :=
  ∀ n, P11035996998513982653.a n = A077906 n

end A077906

/-! ## A077906.P14514420737663993107

`1-(a(n-1)+a(n-3)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077906.P14514420737663993107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - (a (n - 1) + (a (n - 3) + a (n - 3)))

end

end A077906.P14514420737663993107

namespace A077906

/-- `1-(a(n-1)+a(n-3)+a(n-3))` -/
def P14514420737663993107.Spec : Prop :=
  ∀ n, P14514420737663993107.a n = A077906 n

end A077906

/-! ## A077906.P4605146125209737104

`1-a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A077906.P4605146125209737104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  1 - a (n - 1) - a (n - 3) - a (n - 3)

end

end A077906.P4605146125209737104

namespace A077906

/-- `1-a(n-1)-a(n-3)-a(n-3)` -/
def P4605146125209737104.Spec : Prop :=
  ∀ n, P4605146125209737104.a n = A077906 n

end A077906

/-! ## A077906.P9493034510582283029

`∑[∑[A078044(n)]]`
-/

namespace A077906.P9493034510582283029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077906.P9493034510582283029

namespace A077906

/-- `∑[∑[A078044(n)]]` -/
def P9493034510582283029.Spec : Prop :=
  ∀ n, P9493034510582283029.a n = A077906 n

end A077906

/-! ## A077906.P3748205378028170879

`∑[∑[A052537(n)]*A033999(n)]`
-/

namespace A077906.P3748205378028170879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077906.P3748205378028170879

namespace A077906

/-- `∑[∑[A052537(n)]*A033999(n)]` -/
def P3748205378028170879.Spec : Prop :=
  ∀ n, P3748205378028170879.a n = A077906 n

end A077906

/-! ## A077906.P14026251352222161348

`∑[(A004442(n)-n)*A077949(n)]`
-/

namespace A077906.P14026251352222161348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077906.P14026251352222161348

namespace A077906

/-- `∑[(A004442(n)-n)*A077949(n)]` -/
def P14026251352222161348.Spec : Prop :=
  ∀ n, P14026251352222161348.a n = A077906 n

end A077906

/-! ## A077906.P4570789930709322939

`∑[A077974(n)]`
-/

namespace A077906.P4570789930709322939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077906.P4570789930709322939

namespace A077906

/-- `∑[A077974(n)]` -/
def P4570789930709322939.Spec : Prop :=
  ∀ n, P4570789930709322939.a n = A077906 n

end A077906

/-!
# A077907: Expansion of (1-x)^(-1)/(1+x+x^2-2*x^3).

The programs for A077907, the canonical program `A077907.P17611262728681797439` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077907 has offset 0).

The definition of A077907 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x^3+2x^4))` (program `A077907.P17611262728681797439`, by `A077907.P17611262728681797439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077907.P17611262728681797439

`ogf(1/(1-3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077907

/-- `ogf(1/(1-3x^3+2x^4))` -/
def P17611262728681797439.Spec : Prop :=
  ∀ n, P17611262728681797439.a n = A077907 n

theorem P17611262728681797439.correct : P17611262728681797439.Spec := by
  intro n
  simp only [A077907]

end A077907

/-! ## A077907.P15425219850956528988

`3*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3`
-/

namespace A077907.P15425219850956528988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3] fun n a =>
  3 * a (n - 3) - 2 * a (n - 4)

end

end A077907.P15425219850956528988

namespace A077907

/-- `3*a(n-3)-2*a(n-4)` -/
def P15425219850956528988.Spec : Prop :=
  ∀ n, P15425219850956528988.a n = A077907 n

end A077907

/-! ## A077907.P17480160453870589741

`∑[A077975(n)]`
-/

namespace A077907.P17480160453870589741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077907.P17480160453870589741

namespace A077907

/-- `∑[A077975(n)]` -/
def P17480160453870589741.Spec : Prop :=
  ∀ n, P17480160453870589741.a n = A077907 n

end A077907

/-! ## A077907.P11780098304561759797

`∑[(-1)^n*A077952(n)]`
-/

namespace A077907.P11780098304561759797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077907.P11780098304561759797

namespace A077907

/-- `∑[(-1)^n*A077952(n)]` -/
def P11780098304561759797.Spec : Prop :=
  ∀ n, P11780098304561759797.a n = A077907 n

end A077907

/-! ## A077907.P4561988449488799840

`∑[∑[A078017(n)]*A033999(n)]`
-/

namespace A077907.P4561988449488799840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078017 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077907.P4561988449488799840

namespace A077907

/-- `∑[∑[A078017(n)]*A033999(n)]` -/
def P4561988449488799840.Spec : Prop :=
  ∀ n, P4561988449488799840.a n = A077907 n

end A077907

/-! ## A077907.P16893156754006936460

`∑[∑[A078045(n)]]`
-/

namespace A077907.P16893156754006936460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077907.P16893156754006936460

namespace A077907

/-- `∑[∑[A078045(n)]]` -/
def P16893156754006936460.Spec : Prop :=
  ∀ n, P16893156754006936460.a n = A077907 n

end A077907

/-! ## A077907.P129377071938191719

`1-A103749(n)`
-/

namespace A077907.P129377071938191719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A103749 n

end

end A077907.P129377071938191719

namespace A077907

/-- `1-A103749(n)` -/
def P129377071938191719.Spec : Prop :=
  ∀ n, P129377071938191719.a n = A077907 n

end A077907

/-!
# A077908: Expansion of (1-x)^(-1)/(1+x+x^2-x^3).

The programs for A077908, the canonical program `A077908.P9647230228490436082` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077908 has offset 0).

The definition of A077908 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^3+x^4))` (program `A077908.P9647230228490436082`, by `A077908.P9647230228490436082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077908.P13947427232677433110

`2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A077908.P13947427232677433110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  2 * a (n - 3) - a (n - 4)

end

end A077908.P13947427232677433110

namespace A077908

/-- `2*a(n-3)-a(n-4)` -/
def P13947427232677433110.Spec : Prop :=
  ∀ n, P13947427232677433110.a n = A077908 n

end A077908

/-! ## A077908.P9647230228490436082

`ogf(1/(1-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077908

/-- `ogf(1/(1-2x^3+x^4))` -/
def P9647230228490436082.Spec : Prop :=
  ∀ n, P9647230228490436082.a n = A077908 n

theorem P9647230228490436082.correct : P9647230228490436082.Spec := by
  intro n
  simp only [A077908]

end A077908

/-! ## A077908.P14796299115466611489

`a(n-3)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A077908.P14796299115466611489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 4))

end

end A077908.P14796299115466611489

namespace A077908

/-- `a(n-3)+a(n-3)-a(n-4)` -/
def P14796299115466611489.Spec : Prop :=
  ∀ n, P14796299115466611489.a n = A077908 n

end A077908

/-! ## A077908.P17421647778000326075

`∑[a(n-3)-a(n-1)-a(n-2)]` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A077908.P17421647778000326075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n f1 =>
  f1 (n - 3) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077908.P17421647778000326075

namespace A077908

/-- `∑[a(n-3)-a(n-1)-a(n-2)]` -/
def P17421647778000326075.Spec : Prop :=
  ∀ n, P17421647778000326075.a n = A077908 n

end A077908

/-! ## A077908.P6836376619404908910

`1-(a(n-1)-(a(n-3)-a(n-2)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077908.P6836376619404908910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  1 - (a (n - 1) - (a (n - 3) - a (n - 2)))

end

end A077908.P6836376619404908910

namespace A077908

/-- `1-(a(n-1)-(a(n-3)-a(n-2)))` -/
def P6836376619404908910.Spec : Prop :=
  ∀ n, P6836376619404908910.a n = A077908 n

end A077908

/-! ## A077908.P9645895297872333784

`∑[A057597(n+2)]`
-/

namespace A077908.P9645895297872333784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077908.P9645895297872333784

namespace A077908

/-- `∑[A057597(n+2)]` -/
def P9645895297872333784.Spec : Prop :=
  ∀ n, P9645895297872333784.a n = A077908 n

end A077908

/-! ## A077908.P5562278885807054820

`1-(A057597(n)+a(n-1))` with `a(0)=1`
-/

namespace A077908.P5562278885807054820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A057597 n + a (n - 1))

end

end A077908.P5562278885807054820

namespace A077908

/-- `1-(A057597(n)+a(n-1))` -/
def P5562278885807054820.Spec : Prop :=
  ∀ n, P5562278885807054820.a n = A077908 n

end A077908

/-! ## A077908.P8346501275377881081

`∑[∑[-A319200(n+1)]]`
-/

namespace A077908.P8346501275377881081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A319200 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077908.P8346501275377881081

namespace A077908

/-- `∑[∑[-A319200(n+1)]]` -/
def P8346501275377881081.Spec : Prop :=
  ∀ n, P8346501275377881081.a n = A077908 n

end A077908

/-! ## A077908.P13713458224313782752

`∑[∑[∑[-Δ[A319200(n)]]]]`
-/

namespace A077908.P13713458224313782752
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319200 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f4 (n + 1) - f4 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077908.P13713458224313782752

namespace A077908

/-- `∑[∑[∑[-Δ[A319200(n)]]]]` -/
def P13713458224313782752.Spec : Prop :=
  ∀ n, P13713458224313782752.a n = A077908 n

end A077908

/-! ## A077908.P17814473798536746085

`∑[∑[A078046(n)]]`
-/

namespace A077908.P17814473798536746085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077908.P17814473798536746085

namespace A077908

/-- `∑[∑[A078046(n)]]` -/
def P17814473798536746085.Spec : Prop :=
  ∀ n, P17814473798536746085.a n = A077908 n

end A077908

/-!
# A077909: Expansion of 1/((1-x)*(1+x+x^2+2*x^3)).

The programs for A077909, the canonical program `A077909.P5759880852044163432` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077909 has offset 0).

The definition of A077909 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^3-2x^4))` (program `A077909.P5759880852044163432`, by `A077909.P5759880852044163432.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077909.P5759880852044163432

`ogf(1/(1+x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077909

/-- `ogf(1/(1+x^3-2x^4))` -/
def P5759880852044163432.Spec : Prop :=
  ∀ n, P5759880852044163432.a n = A077909 n

theorem P5759880852044163432.correct : P5759880852044163432.Spec := by
  intro n
  simp only [A077909]

end A077909

/-! ## A077909.P6120928777447595623

`2*a(n-4)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1`
-/

namespace A077909.P6120928777447595623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1] fun n a =>
  2 * a (n - 4) - a (n - 3)

end

end A077909.P6120928777447595623

namespace A077909

/-- `2*a(n-4)-a(n-3)` -/
def P6120928777447595623.Spec : Prop :=
  ∀ n, P6120928777447595623.a n = A077909 n

end A077909

/-! ## A077909.P2946728652128795830

`a(n-4)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1`
-/

namespace A077909.P2946728652128795830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 3))

end

end A077909.P2946728652128795830

namespace A077909

/-- `a(n-4)+a(n-4)-a(n-3)` -/
def P2946728652128795830.Spec : Prop :=
  ∀ n, P2946728652128795830.a n = A077909 n

end A077909

/-! ## A077909.P6784556444160487772

`floor(a(n-4)-(a(n-3)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A077909.P6784556444160487772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, -1] fun n a =>
  a (n - 4) - (a (n - 3) - a (n - 4))

end

end A077909.P6784556444160487772

namespace A077909

/-- `floor(a(n-4)-(a(n-3)-a(n-4)))` -/
def P6784556444160487772.Spec : Prop :=
  ∀ n, P6784556444160487772.a n = A077909 n

end A077909

/-! ## A077909.P12070331849472425462

`∑[a(n-4)-(a(n-3)-a(n-4))]` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=-1`
-/

namespace A077909.P12070331849472425462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, -1] fun n f1 =>
  f1 (n - 4) - (f1 (n - 3) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P12070331849472425462

namespace A077909

/-- `∑[a(n-4)-(a(n-3)-a(n-4))]` -/
def P12070331849472425462.Spec : Prop :=
  ∀ n, P12070331849472425462.a n = A077909 n

end A077909

/-! ## A077909.P6231534009735719494

`∑[A077976(n)]`
-/

namespace A077909.P6231534009735719494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P6231534009735719494

namespace A077909

/-- `∑[A077976(n)]` -/
def P6231534009735719494.Spec : Prop :=
  ∀ n, P6231534009735719494.a n = A077909 n

end A077909

/-! ## A077909.P18073243049533840291

`∑[A033999(n)*A077951(n)]`
-/

namespace A077909.P18073243049533840291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P18073243049533840291

namespace A077909

/-- `∑[A033999(n)*A077951(n)]` -/
def P18073243049533840291.Spec : Prop :=
  ∀ n, P18073243049533840291.a n = A077909 n

end A077909

/-! ## A077909.P8545550128180125391

`∑[∑[A078015(n)]*A033999(n)]`
-/

namespace A077909.P8545550128180125391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P8545550128180125391

namespace A077909

/-- `∑[∑[A078015(n)]*A033999(n)]` -/
def P8545550128180125391.Spec : Prop :=
  ∀ n, P8545550128180125391.a n = A077909 n

end A077909

/-! ## A077909.P15731860775062628977

`∑[A009001(2*n)*A077951(n)]`
-/

namespace A077909.P15731860775062628977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A077951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P15731860775062628977

namespace A077909

/-- `∑[A009001(2*n)*A077951(n)]` -/
def P15731860775062628977.Spec : Prop :=
  ∀ n, P15731860775062628977.a n = A077909 n

end A077909

/-! ## A077909.P1467735469476513688

`∑[∑[∑[-A279677(n+3)]]]`
-/

namespace A077909.P1467735469476513688
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A279677 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P1467735469476513688

namespace A077909

/-- `∑[∑[∑[-A279677(n+3)]]]` -/
def P1467735469476513688.Spec : Prop :=
  ∀ n, P1467735469476513688.a n = A077909 n

end A077909

/-! ## A077909.P1141414067974687115

`∑[∑[A078047(n)]]`
-/

namespace A077909.P1141414067974687115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077909.P1141414067974687115

namespace A077909

/-- `∑[∑[A078047(n)]]` -/
def P1141414067974687115.Spec : Prop :=
  ∀ n, P1141414067974687115.a n = A077909 n

end A077909

/-!
# A077910: Expansion of 1/((1-x)*(1+x+2*x^2-2*x^3)).

The programs for A077910, the canonical program `A077910.P6518181762705017132` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077910 has offset 0).

The definition of A077910 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2-4x^3+2x^4))` (program `A077910.P6518181762705017132`, by `A077910.P6518181762705017132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077910.P6518181762705017132

`ogf(1/(1+x^2-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077910

/-- `ogf(1/(1+x^2-4x^3+2x^4))` -/
def P6518181762705017132.Spec : Prop :=
  ∀ n, P6518181762705017132.a n = A077910 n

theorem P6518181762705017132.correct : P6518181762705017132.Spec := by
  intro n
  simp only [A077910]

end A077910

/-! ## A077910.P10286157498680771354

`∑[A077977(n)]`
-/

namespace A077910.P10286157498680771354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077910.P10286157498680771354

namespace A077910

/-- `∑[A077977(n)]` -/
def P10286157498680771354.Spec : Prop :=
  ∀ n, P10286157498680771354.a n = A077910 n

end A077910

/-! ## A077910.P246085754716105401

`∑[A033999(n)*A077956(n)]`
-/

namespace A077910.P246085754716105401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077910.P246085754716105401

namespace A077910

/-- `∑[A033999(n)*A077956(n)]` -/
def P246085754716105401.Spec : Prop :=
  ∀ n, P246085754716105401.a n = A077910 n

end A077910

/-! ## A077910.P1292239307117742493

`∑[∑[A078022(n)]*A033999(n)]`
-/

namespace A077910.P1292239307117742493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078022 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077910.P1292239307117742493

namespace A077910

/-- `∑[∑[A078022(n)]*A033999(n)]` -/
def P1292239307117742493.Spec : Prop :=
  ∀ n, P1292239307117742493.a n = A077910 n

end A077910

/-! ## A077910.P13730330484976030875

`A077977(A004526(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A077910.P13730330484976030875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077977 (A004526 (2 * n)).toNat + a (n - 1)

end

end A077910.P13730330484976030875

namespace A077910

/-- `A077977(A004526(2*n))+a(n-1)` -/
def P13730330484976030875.Spec : Prop :=
  ∀ n, P13730330484976030875.a n = A077910 n

end A077910

/-! ## A077910.P4494970868643427931

`A077977(n%A102696(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A077910.P4494970868643427931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077977 (Int.tmod (n : ℤ) (A102696 (n + 1))).toNat + a (n - 1)

end

end A077910.P4494970868643427931

namespace A077910

/-- `A077977(n%A102696(n+1))+a(n-1)` -/
def P4494970868643427931.Spec : Prop :=
  ∀ n, P4494970868643427931.a n = A077910 n

end A077910

/-! ## A077910.P9892507433072430152

`∑[∑[A078048(n)]]`
-/

namespace A077910.P9892507433072430152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077910.P9892507433072430152

namespace A077910

/-- `∑[∑[A078048(n)]]` -/
def P9892507433072430152.Spec : Prop :=
  ∀ n, P9892507433072430152.a n = A077910 n

end A077910

/-!
# A077911: Expansion of 1/((1-x)*(1+x+2*x^2-x^3)).

The programs for A077911, the canonical program `A077911.P15467057562577555798` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077911 has offset 0).

The definition of A077911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2-3x^3+x^4))` (program `A077911.P15467057562577555798`, by `A077911.P15467057562577555798.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077911.P15467057562577555798

`ogf(1/(1+x^2-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077911

/-- `ogf(1/(1+x^2-3x^3+x^4))` -/
def P15467057562577555798.Spec : Prop :=
  ∀ n, P15467057562577555798.a n = A077911 n

theorem P15467057562577555798.correct : P15467057562577555798.Spec := by
  intro n
  simp only [A077911]

end A077911

/-! ## A077911.P10579304539831280951

`∑[A077978(n)]`
-/

namespace A077911.P10579304539831280951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077911.P10579304539831280951

namespace A077911

/-- `∑[A077978(n)]` -/
def P10579304539831280951.Spec : Prop :=
  ∀ n, P10579304539831280951.a n = A077911 n

end A077911

/-! ## A077911.P1177021236621651826

`∑[∑[A078049(n)]]`
-/

namespace A077911.P1177021236621651826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078049 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077911.P1177021236621651826

namespace A077911

/-- `∑[∑[A078049(n)]]` -/
def P1177021236621651826.Spec : Prop :=
  ∀ n, P1177021236621651826.a n = A077911 n

end A077911

/-! ## A077911.P813593584749999108

`A077978(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A077911.P813593584749999108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077978 (n % (n + 1)) + a (n - 1)

end

end A077911.P813593584749999108

namespace A077911

/-- `A077978(n%(n+1))+a(n-1)` -/
def P813593584749999108.Spec : Prop :=
  ∀ n, P813593584749999108.a n = A077911 n

end A077911

/-! ## A077911.P2858161718370969281

`A077978(n)+a(n-A107286(A107286(n)))` with `a(0)=1`
-/

namespace A077911.P2858161718370969281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077978 n + a ((n : ℤ) - A107286 (A107286 n).toNat).toNat

end

end A077911.P2858161718370969281

namespace A077911

/-- `A077978(n)+a(n-A107286(A107286(n)))` -/
def P2858161718370969281.Spec : Prop :=
  ∀ n, P2858161718370969281.a n = A077911 n

end A077911

/-! ## A077911.P11977124281208854282

`∑[A276229(n+2)]`
-/

namespace A077911.P11977124281208854282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077911.P11977124281208854282

namespace A077911

/-- `∑[A276229(n+2)]` -/
def P11977124281208854282.Spec : Prop :=
  ∀ n, P11977124281208854282.a n = A077911 n

end A077911

/-!
# A077912: Expansion of 1/(1+x^2-2*x^3).

The programs for A077912, the canonical program `A077912.P8287871289366667193` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077912 has offset 0).

The definition of A077912 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2-2x^3))` (program `A077912.P8287871289366667193`, by `A077912.P8287871289366667193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077912.P8287871289366667193

`ogf(1/(1+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077912

/-- `ogf(1/(1+x^2-2x^3))` -/
def P8287871289366667193.Spec : Prop :=
  ∀ n, P8287871289366667193.a n = A077912 n

theorem P8287871289366667193.correct : P8287871289366667193.Spec := by
  intro n
  simp only [A077912]

end A077912

/-! ## A077912.P4129510084994314708

`(-1)^n*A077963(n)`
-/

namespace A077912.P4129510084994314708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077963 n

end

end A077912.P4129510084994314708

namespace A077912

/-- `(-1)^n*A077963(n)` -/
def P4129510084994314708.Spec : Prop :=
  ∀ n, P4129510084994314708.a n = A077912 n

end A077912

/-! ## A077912.P2026209926390842205

`2*a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077912.P2026209926390842205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  2 * a (n - 3) - a (n - 2)

end

end A077912.P2026209926390842205

namespace A077912

/-- `2*a(n-3)-a(n-2)` -/
def P2026209926390842205.Spec : Prop :=
  ∀ n, P2026209926390842205.a n = A077912 n

end A077912

/-! ## A077912.P4075991342167004867

`a(n-3)+a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077912.P4075991342167004867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 2))

end

end A077912.P4075991342167004867

namespace A077912

/-- `a(n-3)+a(n-3)-a(n-2)` -/
def P4075991342167004867.Spec : Prop :=
  ∀ n, P4075991342167004867.a n = A077912 n

end A077912

/-! ## A077912.P14804935053291417928

`1-a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077912.P14804935053291417928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - a (n - 1) - a (n - 2) - a (n - 2)

end

end A077912.P14804935053291417928

namespace A077912

/-- `1-a(n-1)-a(n-2)-a(n-2)` -/
def P14804935053291417928.Spec : Prop :=
  ∀ n, P14804935053291417928.a n = A077912 n

end A077912

/-! ## A077912.P17559104316692178700

`A110512(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077912.P17559104316692178700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A110512 n + a (n - 2)

end

end A077912.P17559104316692178700

namespace A077912

/-- `A110512(n)+a(n-2)` -/
def P17559104316692178700.Spec : Prop :=
  ∀ n, P17559104316692178700.a n = A077912 n

end A077912

/-! ## A077912.P10609642362356075734

`∑[A110512(n)-A001607(n)]`
-/

namespace A077912.P10609642362356075734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n - A001607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077912.P10609642362356075734

namespace A077912

/-- `∑[A110512(n)-A001607(n)]` -/
def P10609642362356075734.Spec : Prop :=
  ∀ n, P10609642362356075734.a n = A077912 n

end A077912

/-! ## A077912.P9270048616204317391

`Δ[A077887(A130716(n+2)+abs(1-n))]`
-/

namespace A077912.P9270048616204317391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077887 (A130716 (n + 2) + |1 - (n : ℤ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077912.P9270048616204317391

namespace A077912

/-- `Δ[A077887(A130716(n+2)+abs(1-n))]` -/
def P9270048616204317391.Spec : Prop :=
  ∀ n, P9270048616204317391.a n = A077912 n

end A077912

/-! ## A077912.P16052035487108073452

`∑[A001607(n+1)]`
-/

namespace A077912.P16052035487108073452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077912.P16052035487108073452

namespace A077912

/-- `∑[A001607(n+1)]` -/
def P16052035487108073452.Spec : Prop :=
  ∀ n, P16052035487108073452.a n = A077912 n

end A077912

/-! ## A077912.P16720842036400925932

`a(n-1)-A169998(n-1)` with `a(0)=1`
-/

namespace A077912.P16720842036400925932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A169998 (n - 1)

end

end A077912.P16720842036400925932

namespace A077912

/-- `a(n-1)-A169998(n-1)` -/
def P16720842036400925932.Spec : Prop :=
  ∀ n, P16720842036400925932.a n = A077912 n

end A077912

/-! ## A077912.P13167030469296292491

`∑[∑[A078050(n)]]`
-/

namespace A077912.P13167030469296292491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077912.P13167030469296292491

namespace A077912

/-- `∑[∑[A078050(n)]]` -/
def P13167030469296292491.Spec : Prop :=
  ∀ n, P13167030469296292491.a n = A077912 n

end A077912

/-! ## A077912.P5760956423769407855

`ceil(A001607(n+4)/4)`
-/

namespace A077912.P5760956423769407855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001607 (n + 4) : ℚ) / 4⌉

end

end A077912.P5760956423769407855

namespace A077912

/-- `ceil(A001607(n+4)/4)` -/
def P5760956423769407855.Spec : Prop :=
  ∀ n, P5760956423769407855.a n = A077912 n

end A077912

/-! ## A077912.P9608902771867272971

`2*A089977(n)-∑[A089977(n)]`
-/

namespace A077912.P9608902771867272971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089977 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077912.P9608902771867272971

namespace A077912

/-- `2*A089977(n)-∑[A089977(n)]` -/
def P9608902771867272971.Spec : Prop :=
  ∀ n, P9608902771867272971.a n = A077912 n

end A077912

/-!
# A077913: Expansion of 1/((1-x)*(1+x+2*x^2+x^3)).

The programs for A077913, the canonical program `A077913.P774901905685633663` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077913 has offset 0).

The definition of A077913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2-x^3-x^4))` (program `A077913.P774901905685633663`, by `A077913.P774901905685633663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077913.P774901905685633663

`ogf(1/(1+x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077913

/-- `ogf(1/(1+x^2-x^3-x^4))` -/
def P774901905685633663.Spec : Prop :=
  ∀ n, P774901905685633663.a n = A077913 n

theorem P774901905685633663.correct : P774901905685633663.Spec := by
  intro n
  simp only [A077913]

end A077913

/-! ## A077913.P2828699045764835472

`a(n-3)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`
-/

namespace A077913.P2828699045764835472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 3) + (a (n - 4) - a (n - 2))

end

end A077913.P2828699045764835472

namespace A077913

/-- `a(n-3)+a(n-4)-a(n-2)` -/
def P2828699045764835472.Spec : Prop :=
  ∀ n, P2828699045764835472.a n = A077913 n

end A077913

/-! ## A077913.P10655734566020351090

`floor(a(n-3)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A077913.P10655734566020351090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, 1] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 4))

end

end A077913.P10655734566020351090

namespace A077913

/-- `floor(a(n-3)-(a(n-2)-a(n-4)))` -/
def P10655734566020351090.Spec : Prop :=
  ∀ n, P10655734566020351090.a n = A077913 n

end A077913

/-! ## A077913.P10084978857853771465

`∑[a(n-3)-(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=2`
-/

namespace A077913.P10084978857853771465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 2] fun n f1 =>
  f1 (n - 3) - (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P10084978857853771465

namespace A077913

/-- `∑[a(n-3)-(a(n-2)-a(n-4))]` -/
def P10084978857853771465.Spec : Prop :=
  ∀ n, P10084978857853771465.a n = A077913 n

end A077913

/-! ## A077913.P11827640364241142805

`∑[A077979(n)]`
-/

namespace A077913.P11827640364241142805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P11827640364241142805

namespace A077913

/-- `∑[A077979(n)]` -/
def P11827640364241142805.Spec : Prop :=
  ∀ n, P11827640364241142805.a n = A077913 n

end A077913

/-! ## A077913.P14280838951635465259

`∑[A033999(n)*A077954(n)]`
-/

namespace A077913.P14280838951635465259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P14280838951635465259

namespace A077913

/-- `∑[A033999(n)*A077954(n)]` -/
def P14280838951635465259.Spec : Prop :=
  ∀ n, P14280838951635465259.a n = A077913 n

end A077913

/-! ## A077913.P5079501488991456703

`∑[A056594(2*n)*A077954(n)]`
-/

namespace A077913.P5079501488991456703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A077954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P5079501488991456703

namespace A077913

/-- `∑[A056594(2*n)*A077954(n)]` -/
def P5079501488991456703.Spec : Prop :=
  ∀ n, P5079501488991456703.a n = A077913 n

end A077913

/-! ## A077913.P8467242004464107339

`∑[A077954(n)/A077954(and(2, -n²))]`
-/

namespace A077913.P8467242004464107339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077954 n : ℚ) / (A077954 (Int.land 2 (-(n ^ 2 : ℤ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P8467242004464107339

namespace A077913

/-- `∑[A077954(n)/A077954(and(2, -n²))]` -/
def P8467242004464107339.Spec : Prop :=
  ∀ n, P8467242004464107339.a n = (A077913 n : ℚ)

end A077913

/-! ## A077913.P10753126001848428214

`∑[∑[A078019(n)]*A033999(n)]`
-/

namespace A077913.P10753126001848428214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P10753126001848428214

namespace A077913

/-- `∑[∑[A078019(n)]*A033999(n)]` -/
def P10753126001848428214.Spec : Prop :=
  ∀ n, P10753126001848428214.a n = A077913 n

end A077913

/-! ## A077913.P13321201370463272839

`∑[∑[A078051(n)]]`
-/

namespace A077913.P13321201370463272839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P13321201370463272839

namespace A077913

/-- `∑[∑[A078051(n)]]` -/
def P13321201370463272839.Spec : Prop :=
  ∀ n, P13321201370463272839.a n = A077913 n

end A077913

/-! ## A077913.P18378804888208803415

`∑[A055975(2*n+1)*A247917(2*n)]`
-/

namespace A077913.P18378804888208803415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A247917 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077913.P18378804888208803415

namespace A077913

/-- `∑[A055975(2*n+1)*A247917(2*n)]` -/
def P18378804888208803415.Spec : Prop :=
  ∀ n, P18378804888208803415.a n = A077913 n

end A077913

/-!
# A077914: Sums of two distinct primes in exactly two ways.

The programs for A077914, there is no canonical definition to state claims against.
-/

/-! ## A077914.P14753274207959827379

`eq[5, or(1, A347739(n))]`
-/

namespace A077914.P14753274207959827379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A347739 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077914.P14753274207959827379

/-! ## A077914.P17292075480344983357

`eq[4, A331981(n)%12]`
-/

namespace A077914.P17292075480344983357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331981 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077914.P17292075480344983357

/-! ## A077914.P14373758088920521915

`eq[4, A339432(n)%12]`
-/

namespace A077914.P14373758088920521915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339432 n) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077914.P14373758088920521915

/-! ## A077914.P1960317541712540267

`eq[2, A117929(n+1)]+1`
-/

namespace A077914.P1960317541712540267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077914.P1960317541712540267

/-! ## A077914.P4469637238092512865

`eq[val(n+1, 2)+2, A347550(n)]`
-/

namespace A077914.P4469637238092512865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077914.P4469637238092512865

/-!
# A077915: Expansion of 1/((1-x)*(1+2*x-2*x^2-2*x^3)).

The programs for A077915, the canonical program `A077915.P5942624350537641591` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077915 has offset 0).

The definition of A077915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^2+2x^4))` (program `A077915.P5942624350537641591`, by `A077915.P5942624350537641591.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077915.P5942624350537641591

`ogf(1/(1+x-4x^2+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077915

/-- `ogf(1/(1+x-4x^2+2x^4))` -/
def P5942624350537641591.Spec : Prop :=
  ∀ n, P5942624350537641591.a n = A077915 n

theorem P5942624350537641591.correct : P5942624350537641591.Spec := by
  intro n
  simp only [A077915]

end A077915

/-! ## A077915.P414488129149946539

`∑[A077981(n)]`
-/

namespace A077915.P414488129149946539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077915.P414488129149946539

namespace A077915

/-- `∑[A077981(n)]` -/
def P414488129149946539.Spec : Prop :=
  ∀ n, P414488129149946539.a n = A077915 n

end A077915

/-! ## A077915.P88301853739376892

`∑[(-1)^n*A077937(n)]`
-/

namespace A077915.P88301853739376892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077915.P88301853739376892

namespace A077915

/-- `∑[(-1)^n*A077937(n)]` -/
def P88301853739376892.Spec : Prop :=
  ∀ n, P88301853739376892.a n = A077915 n

end A077915

/-! ## A077915.P253640601852319233

`A077981(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077915.P253640601852319233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077981 n + a (A023443 n).toNat

end

end A077915.P253640601852319233

namespace A077915

/-- `A077981(n)+a(A023443(n))` -/
def P253640601852319233.Spec : Prop :=
  ∀ n, P253640601852319233.a n = A077915 n

end A077915

/-! ## A077915.P10352180095907138245

`∑[∑[A052528(n)]*A033999(n)]`
-/

namespace A077915.P10352180095907138245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077915.P10352180095907138245

namespace A077915

/-- `∑[∑[A052528(n)]*A033999(n)]` -/
def P10352180095907138245.Spec : Prop :=
  ∀ n, P10352180095907138245.a n = A077915 n

end A077915

/-! ## A077915.P7224630497042012152

`∑[∑[A078053(n)]]`
-/

namespace A077915.P7224630497042012152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077915.P7224630497042012152

namespace A077915

/-- `∑[∑[A078053(n)]]` -/
def P7224630497042012152.Spec : Prop :=
  ∀ n, P7224630497042012152.a n = A077915 n

end A077915

/-! ## A077915.P10357913537033059496

`∑[∑[A052528(n)]*A034947(n²+5)]`
-/

namespace A077915.P10357913537033059496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A034947 (n ^ 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077915.P10357913537033059496

namespace A077915

/-- `∑[∑[A052528(n)]*A034947(n²+5)]` -/
def P10357913537033059496.Spec : Prop :=
  ∀ n, P10357913537033059496.a n = A077915 n

end A077915

/-!
# A077916: Expansion of (1-x)^(-1)/(1 + 2*x - 2*x^2 - x^3).

The programs for A077916, the canonical program `A077916.P16476721261719600799` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077916 has offset 0).

The definition of A077916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^2+x^3+x^4))` (program `A077916.P16476721261719600799`, by `A077916.P16476721261719600799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077916.P16476721261719600799

`ogf(1/(1+x-4x^2+x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077916

/-- `ogf(1/(1+x-4x^2+x^3+x^4))` -/
def P16476721261719600799.Spec : Prop :=
  ∀ n, P16476721261719600799.a n = A077916 n

theorem P16476721261719600799.correct : P16476721261719600799.Spec := by
  intro n
  simp only [A077916]

end A077916

/-! ## A077916.P1009693199309509445

`((-1)^n*A001906(n+2)+n+2)/5`
-/

namespace A077916.P1009693199309509445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A001906 (n + 2) + (n + 2 : ℤ) : ℚ) / 5

end

end A077916.P1009693199309509445

namespace A077916

/-- `((-1)^n*A001906(n+2)+n+2)/5` -/
def P1009693199309509445.Spec : Prop :=
  ∀ n, P1009693199309509445.a n = (A077916 n : ℚ)

end A077916

/-! ## A077916.P14023898154650603541

`∑[ceil(a(n-1)/(ϕ-2))]` with `a(0)=1`
-/

namespace A077916.P14023898154650603541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (Real.goldenRatio - 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P14023898154650603541

namespace A077916

/-- `∑[ceil(a(n-1)/(ϕ-2))]` -/
def P14023898154650603541.Spec : Prop :=
  ∀ n, P14023898154650603541.a n = A077916 n

end A077916

/-! ## A077916.P231436866035259492

`∑[-floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A077916.P231436866035259492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P231436866035259492

namespace A077916

/-- `∑[-floor(ϕ²*a(n-1))]` -/
def P231436866035259492.Spec : Prop :=
  ∀ n, P231436866035259492.a n = A077916 n

end A077916

/-! ## A077916.P17813011341278521266

`∑[ceil(-ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A077916.P17813011341278521266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈-(Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P17813011341278521266

namespace A077916

/-- `∑[ceil(-ϕ²*a(n-1))]` -/
def P17813011341278521266.Spec : Prop :=
  ∀ n, P17813011341278521266.a n = A077916 n

end A077916

/-! ## A077916.P2930052145304332799

`∑[1-ceil(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A077916.P2930052145304332799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P2930052145304332799

namespace A077916

/-- `∑[1-ceil(ϕ²*a(n-1))]` -/
def P2930052145304332799.Spec : Prop :=
  ∀ n, P2930052145304332799.a n = A077916 n

end A077916

/-! ## A077916.P12553449290623608039

`∑[1-round(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A077916.P12553449290623608039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P12553449290623608039

namespace A077916

/-- `∑[1-round(ϕ²*a(n-1))]` -/
def P12553449290623608039.Spec : Prop :=
  ∀ n, P12553449290623608039.a n = A077916 n

end A077916

/-! ## A077916.P9689477963014975740

`∑[-floor(ϕ*ϕ*a(n-1))]` with `a(0)=1`
-/

namespace A077916.P9689477963014975740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P9689477963014975740

namespace A077916

/-- `∑[-floor(ϕ*ϕ*a(n-1))]` -/
def P9689477963014975740.Spec : Prop :=
  ∀ n, P9689477963014975740.a n = A077916 n

end A077916

/-! ## A077916.P5477449463107582292

`∑[1-round(a(n-1)/(2-ϕ))]` with `a(0)=1`
-/

namespace A077916.P5477449463107582292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - SequenceMachineLib.roundAway ((f1 (n - 1) : ℝ) / (2 - Real.goldenRatio))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P5477449463107582292

namespace A077916

/-- `∑[1-round(a(n-1)/(2-ϕ))]` -/
def P5477449463107582292.Spec : Prop :=
  ∀ n, P5477449463107582292.a n = A077916 n

end A077916

/-! ## A077916.P1208773558985434147

`∑[1-(a(n-2)+3*a(n-1))]` with `a(0)=1, a(1)=-2`
-/

namespace A077916.P1208773558985434147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  1 - (f1 (n - 2) + 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P1208773558985434147

namespace A077916

/-- `∑[1-(a(n-2)+3*a(n-1))]` -/
def P1208773558985434147.Spec : Prop :=
  ∀ n, P1208773558985434147.a n = A077916 n

end A077916

/-! ## A077916.P3354729894549595396

`∑[1-3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=-2`
-/

namespace A077916.P3354729894549595396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  1 - 3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P3354729894549595396

namespace A077916

/-- `∑[1-3*a(n-1)-a(n-2)]` -/
def P3354729894549595396.Spec : Prop :=
  ∀ n, P3354729894549595396.a n = A077916 n

end A077916

/-! ## A077916.P6972490016717979580

`n+1-(a(n-2)+3*a(n-1))` with `a(0)=1, a(1)=-1`
-/

namespace A077916.P6972490016717979580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (n + 1 : ℤ) - (a (n - 2) + 3 * a (n - 1))

end

end A077916.P6972490016717979580

namespace A077916

/-- `n+1-(a(n-2)+3*a(n-1))` -/
def P6972490016717979580.Spec : Prop :=
  ∀ n, P6972490016717979580.a n = A077916 n

end A077916

/-! ## A077916.P15956334705152677720

`A214885(n)+1+n`
-/

namespace A077916.P15956334705152677720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214885 n + 1 + (n : ℤ)

end

end A077916.P15956334705152677720

namespace A077916

/-- `A214885(n)+1+n` -/
def P15956334705152677720.Spec : Prop :=
  ∀ n, P15956334705152677720.a n = A077916 n

end A077916

/-! ## A077916.P15908399969504905243

`Δ[A180665(n)]*A033999(n)`
-/

namespace A077916.P15908399969504905243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A077916.P15908399969504905243

namespace A077916

/-- `Δ[A180665(n)]*A033999(n)` -/
def P15908399969504905243.Spec : Prop :=
  ∀ n, P15908399969504905243.a n = A077916 n

end A077916

/-! ## A077916.P17522213200288696776

`∑[A001654(n+1)*A033999(n)]`
-/

namespace A077916.P17522213200288696776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P17522213200288696776

namespace A077916

/-- `∑[A001654(n+1)*A033999(n)]` -/
def P17522213200288696776.Spec : Prop :=
  ∀ n, P17522213200288696776.a n = A077916 n

end A077916

/-! ## A077916.P15479484816642212732

`∑[A001654(n+1)*A009001(2*n)]`
-/

namespace A077916.P15479484816642212732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P15479484816642212732

namespace A077916

/-- `∑[A001654(n+1)*A009001(2*n)]` -/
def P15479484816642212732.Spec : Prop :=
  ∀ n, P15479484816642212732.a n = A077916 n

end A077916

/-! ## A077916.P15910906576038179664

`∑[∑[A000045(n+1)²]*A033999(n)]`
-/

namespace A077916.P15910906576038179664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P15910906576038179664

namespace A077916

/-- `∑[∑[A000045(n+1)²]*A033999(n)]` -/
def P15910906576038179664.Spec : Prop :=
  ∀ n, P15910906576038179664.a n = A077916 n

end A077916

/-! ## A077916.P5146431605534189999

`∑[∑[A007598(n+1)]*A056594(2*n)]`
-/

namespace A077916.P5146431605534189999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P5146431605534189999

namespace A077916

/-- `∑[∑[A007598(n+1)]*A056594(2*n)]` -/
def P5146431605534189999.Spec : Prop :=
  ∀ n, P5146431605534189999.a n = A077916 n

end A077916

/-! ## A077916.P16380954753118770540

`∑[(1-A010673(n))*∑[A000045(n+1)²]]`
-/

namespace A077916.P16380954753118770540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077916.P16380954753118770540

namespace A077916

/-- `∑[(1-A010673(n))*∑[A000045(n+1)²]]` -/
def P16380954753118770540.Spec : Prop :=
  ∀ n, P16380954753118770540.a n = A077916 n

end A077916

/-!
# A077917: Expansion of (1-x)^(-1)/(1+2*x-2*x^2).

The programs for A077917, the canonical program `A077917.P12056336324469473589` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077917 has offset 0).

The definition of A077917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^2+2x^3))` (program `A077917.P12056336324469473589`, by `A077917.P12056336324469473589.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077917.P12056336324469473589

`ogf(1/(1+x-4x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077917

/-- `ogf(1/(1+x-4x^2+2x^3))` -/
def P12056336324469473589.Spec : Prop :=
  ∀ n, P12056336324469473589.a n = A077917 n

theorem P12056336324469473589.correct : P12056336324469473589.Spec := by
  intro n
  simp only [A077917]

end A077917

/-! ## A077917.P14214133309768555050

`∑[-floor((sqrt(3)+1)*a(n-1))]` with `a(0)=1`
-/

namespace A077917.P14214133309768555050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊(Real.sqrt (3 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P14214133309768555050

namespace A077917

/-- `∑[-floor((sqrt(3)+1)*a(n-1))]` -/
def P14214133309768555050.Spec : Prop :=
  ∀ n, P14214133309768555050.a n = A077917 n

end A077917

/-! ## A077917.P11669603000405926350

`∑[2*(a(n-2)-a(n-1))]` with `a(0)=1, a(1)=-2`
-/

namespace A077917.P11669603000405926350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  2 * (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P11669603000405926350

namespace A077917

/-- `∑[2*(a(n-2)-a(n-1))]` -/
def P11669603000405926350.Spec : Prop :=
  ∀ n, P11669603000405926350.a n = A077917 n

end A077917

/-! ## A077917.P16280831822001440687

`2*(a(n-2)-a(n-1))+1` with `a(0)=1, a(1)=-1`
-/

namespace A077917.P16280831822001440687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  2 * (a (n - 2) - a (n - 1)) + 1

end

end A077917.P16280831822001440687

namespace A077917

/-- `2*(a(n-2)-a(n-1))+1` -/
def P16280831822001440687.Spec : Prop :=
  ∀ n, P16280831822001440687.a n = A077917 n

end A077917

/-! ## A077917.P4418225142520903017

`1-2*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=-1`
-/

namespace A077917.P4418225142520903017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - 2 * (a (n - 1) - a (n - 2))

end

end A077917.P4418225142520903017

namespace A077917

/-- `1-2*(a(n-1)-a(n-2))` -/
def P4418225142520903017.Spec : Prop :=
  ∀ n, P4418225142520903017.a n = A077917 n

end A077917

/-! ## A077917.P9515400201927606400

`∑[a(n-2)-(a(n-1)+a(n-1)-a(n-2))]` with `a(0)=1, a(1)=-2`
-/

namespace A077917.P9515400201927606400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + (f1 (n - 1) - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P9515400201927606400

namespace A077917

/-- `∑[a(n-2)-(a(n-1)+a(n-1)-a(n-2))]` -/
def P9515400201927606400.Spec : Prop :=
  ∀ n, P9515400201927606400.a n = A077917 n

end A077917

/-! ## A077917.P8350553454748073887

`∑[a(n-2)-(a(n-1)-a(n-2))-a(n-1)]` with `a(0)=1, a(1)=-2`
-/

namespace A077917.P8350553454748073887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) - f1 (n - 2)) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P8350553454748073887

namespace A077917

/-- `∑[a(n-2)-(a(n-1)-a(n-2))-a(n-1)]` -/
def P8350553454748073887.Spec : Prop :=
  ∀ n, P8350553454748073887.a n = A077917 n

end A077917

/-! ## A077917.P17814404602688663606

`∑[(-1)^n*∑[A026150(n)]]`
-/

namespace A077917.P17814404602688663606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P17814404602688663606

namespace A077917

/-- `∑[(-1)^n*∑[A026150(n)]]` -/
def P17814404602688663606.Spec : Prop :=
  ∀ n, P17814404602688663606.a n = A077917 n

end A077917

/-! ## A077917.P5938913648417248200

`∑[(-1)^n*A002605(n+1)]`
-/

namespace A077917.P5938913648417248200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P5938913648417248200

namespace A077917

/-- `∑[(-1)^n*A002605(n+1)]` -/
def P5938913648417248200.Spec : Prop :=
  ∀ n, P5938913648417248200.a n = A077917 n

end A077917

/-! ## A077917.P5593929155391381990

`∑[(A005665(n)+1)*(-1)^n]`
-/

namespace A077917.P5593929155391381990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005665 n + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P5593929155391381990

namespace A077917

/-- `∑[(A005665(n)+1)*(-1)^n]` -/
def P5593929155391381990.Spec : Prop :=
  ∀ n, P5593929155391381990.a n = A077917 n

end A077917

/-! ## A077917.P14217314068937252340

`A033999(n)*A127864(n)`
-/

namespace A077917.P14217314068937252340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A127864 n

end

end A077917.P14217314068937252340

namespace A077917

/-- `A033999(n)*A127864(n)` -/
def P14217314068937252340.Spec : Prop :=
  ∀ n, P14217314068937252340.a n = A077917 n

end A077917

/-! ## A077917.P8056959937529565716

`A062157(n+1)*A127864(n)`
-/

namespace A077917.P8056959937529565716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A127864 n

end

end A077917.P8056959937529565716

namespace A077917

/-- `A062157(n+1)*A127864(n)` -/
def P8056959937529565716.Spec : Prop :=
  ∀ n, P8056959937529565716.a n = A077917 n

end A077917

/-! ## A077917.P7235316387461630455

`1-A062157(n)*A152035(n)`
-/

namespace A077917.P7235316387461630455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A062157 n * A152035 n

end

end A077917.P7235316387461630455

namespace A077917

/-- `1-A062157(n)*A152035(n)` -/
def P7235316387461630455.Spec : Prop :=
  ∀ n, P7235316387461630455.a n = A077917 n

end A077917

/-! ## A077917.P3615555009342479664

`∑[A002605(n+1)*A033999(n)]`
-/

namespace A077917.P3615555009342479664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077917.P3615555009342479664

namespace A077917

/-- `∑[A002605(n+1)*A033999(n)]` -/
def P3615555009342479664.Spec : Prop :=
  ∀ n, P3615555009342479664.a n = A077917 n

end A077917

/-! ## A077917.P18065235065005877975

`(A127864(n)-A293007(n+1))*A127864(n)`
-/

namespace A077917.P18065235065005877975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127864 n - A293007 (n + 1)) * A127864 n

end

end A077917.P18065235065005877975

namespace A077917

/-- `(A127864(n)-A293007(n+1))*A127864(n)` -/
def P18065235065005877975.Spec : Prop :=
  ∀ n, P18065235065005877975.a n = A077917 n

end A077917

/-! ## A077917.P17469407990176643442

`(A152035(n+1)-A127864(n+1))*A127864(n)`
-/

namespace A077917.P17469407990176643442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152035 (n + 1) - A127864 (n + 1)) * A127864 n

end

end A077917.P17469407990176643442

namespace A077917

/-- `(A152035(n+1)-A127864(n+1))*A127864(n)` -/
def P17469407990176643442.Spec : Prop :=
  ∀ n, P17469407990176643442.a n = A077917 n

end A077917

/-!
# A077918: Expansion of (1 - x)^(-1)/(1 + 2*x - 2*x^2 + x^3).

The programs for A077918, the canonical program `A077918.P3206010422632331778` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077918 has offset 0).

The definition of A077918 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^2+3x^3-x^4))` (program `A077918.P3206010422632331778`, by `A077918.P3206010422632331778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077918.P3206010422632331778

`ogf(1/(1+x-4x^2+3x^3-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077918

/-- `ogf(1/(1+x-4x^2+3x^3-x^4))` -/
def P3206010422632331778.Spec : Prop :=
  ∀ n, P3206010422632331778.a n = A077918 n

theorem P3206010422632331778.correct : P3206010422632331778.Spec := by
  intro n
  simp only [A077918]

end A077918

/-! ## A077918.P14999032659866716715

`∑[A077983(n)]`
-/

namespace A077918.P14999032659866716715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077918.P14999032659866716715

namespace A077918

/-- `∑[A077983(n)]` -/
def P14999032659866716715.Spec : Prop :=
  ∀ n, P14999032659866716715.a n = A077918 n

end A077918

/-! ## A077918.P7868187509739793522

`∑[∑[A078054(n)]]`
-/

namespace A077918.P7868187509739793522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077918.P7868187509739793522

namespace A077918

/-- `∑[∑[A078054(n)]]` -/
def P7868187509739793522.Spec : Prop :=
  ∀ n, P7868187509739793522.a n = A077918 n

end A077918

/-! ## A077918.P12850560590444235310

`∑[A033999(n)*A077936(n)]`
-/

namespace A077918.P12850560590444235310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077918.P12850560590444235310

namespace A077918

/-- `∑[A033999(n)*A077936(n)]` -/
def P12850560590444235310.Spec : Prop :=
  ∀ n, P12850560590444235310.a n = A077918 n

end A077918

/-! ## A077918.P14375414439234569092

`∑[A062157(n+1)*A077936(n)]`
-/

namespace A077918.P14375414439234569092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A077936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077918.P14375414439234569092

namespace A077918

/-- `∑[A062157(n+1)*A077936(n)]` -/
def P14375414439234569092.Spec : Prop :=
  ∀ n, P14375414439234569092.a n = A077918 n

end A077918

/-! ## A077918.P6662432460226832945

`1-∑[A062157(n)*A077936(n)]`
-/

namespace A077918.P6662432460226832945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A077936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077918.P6662432460226832945

namespace A077918

/-- `1-∑[A062157(n)*A077936(n)]` -/
def P6662432460226832945.Spec : Prop :=
  ∀ n, P6662432460226832945.a n = A077918 n

end A077918

/-!
# A077919: Expansion of (1-x)^(-1)/(1+2*x-2*x^2+2*x^3).

The programs for A077919, the canonical program `A077919.P10876696050130633518` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077919 has offset 0).

The definition of A077919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^2+4x^3-2x^4))` (program `A077919.P10876696050130633518`, by `A077919.P10876696050130633518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077919.P10876696050130633518

`ogf(1/(1+x-4x^2+4x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077919

/-- `ogf(1/(1+x-4x^2+4x^3-2x^4))` -/
def P10876696050130633518.Spec : Prop :=
  ∀ n, P10876696050130633518.a n = A077919 n

theorem P10876696050130633518.correct : P10876696050130633518.Spec := by
  intro n
  simp only [A077919]

end A077919

/-! ## A077919.P15133795445824054090

`∑[A077984(n)]`
-/

namespace A077919.P15133795445824054090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077919.P15133795445824054090

namespace A077919

/-- `∑[A077984(n)]` -/
def P15133795445824054090.Spec : Prop :=
  ∀ n, P15133795445824054090.a n = A077919 n

end A077919

/-! ## A077919.P17732770451992375880

`∑[(-1)^n*A077835(n)]`
-/

namespace A077919.P17732770451992375880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077919.P17732770451992375880

namespace A077919

/-- `∑[(-1)^n*A077835(n)]` -/
def P17732770451992375880.Spec : Prop :=
  ∀ n, P17732770451992375880.a n = A077919 n

end A077919

/-! ## A077919.P15449722589763111707

`∑[A077835(n)/A033999(n)]`
-/

namespace A077919.P15449722589763111707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077835 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077919.P15449722589763111707

namespace A077919

/-- `∑[A077835(n)/A033999(n)]` -/
def P15449722589763111707.Spec : Prop :=
  ∀ n, P15449722589763111707.a n = (A077919 n : ℚ)

end A077919

/-! ## A077919.P10895329639039154451

`∑[∑[A077843(n)]*A033999(n)]`
-/

namespace A077919.P10895329639039154451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077843 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077919.P10895329639039154451

namespace A077919

/-- `∑[∑[A077843(n)]*A033999(n)]` -/
def P10895329639039154451.Spec : Prop :=
  ∀ n, P10895329639039154451.a n = A077919 n

end A077919

/-! ## A077919.P11474018081401923453

`A077984(n)+a(A289207(n+1))` with `a(0)=1`
-/

namespace A077919.P11474018081401923453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077984 n + a (A289207 (n + 1)).toNat

end

end A077919.P11474018081401923453

namespace A077919

/-- `A077984(n)+a(A289207(n+1))` -/
def P11474018081401923453.Spec : Prop :=
  ∀ n, P11474018081401923453.a n = A077919 n

end A077919

/-! ## A077919.P12706857806256927619

`∑[∑[A078055(n)]]`
-/

namespace A077919.P12706857806256927619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077919.P12706857806256927619

namespace A077919

/-- `∑[∑[A078055(n)]]` -/
def P12706857806256927619.Spec : Prop :=
  ∀ n, P12706857806256927619.a n = A077919 n

end A077919

/-!
# A077920: Expansion of (1-x)^(-1)/(1+2*x-x^2-x^3).

The programs for A077920, the canonical program `A077920.P8119403275272684981` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077920 has offset 0).

The definition of A077920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-3x^2+x^4))` (program `A077920.P8119403275272684981`, by `A077920.P8119403275272684981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077920.P8119403275272684981

`ogf(1/(1+x-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077920

/-- `ogf(1/(1+x-3x^2+x^4))` -/
def P8119403275272684981.Spec : Prop :=
  ∀ n, P8119403275272684981.a n = A077920 n

theorem P8119403275272684981.correct : P8119403275272684981.Spec := by
  intro n
  simp only [A077920]

end A077920

/-! ## A077920.P17038449654152981386

`(-1)^n*A124400(n)`
-/

namespace A077920.P17038449654152981386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124400 n

end

end A077920.P17038449654152981386

namespace A077920

/-- `(-1)^n*A124400(n)` -/
def P17038449654152981386.Spec : Prop :=
  ∀ n, P17038449654152981386.a n = A077920 n

end A077920

/-! ## A077920.P547941974358694748

`∑[∑[A078056(n)]]`
-/

namespace A077920.P547941974358694748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077920.P547941974358694748

namespace A077920

/-- `∑[∑[A078056(n)]]` -/
def P547941974358694748.Spec : Prop :=
  ∀ n, P547941974358694748.a n = A077920 n

end A077920

/-! ## A077920.P2174062701156888912

`∑[(-1)^n*A106805(n)]`
-/

namespace A077920.P2174062701156888912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A106805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077920.P2174062701156888912

namespace A077920

/-- `∑[(-1)^n*A106805(n)]` -/
def P2174062701156888912.Spec : Prop :=
  ∀ n, P2174062701156888912.a n = A077920 n

end A077920

/-! ## A077920.P9525737952336227576

`∑[(-1)^n*∑[A106803(n+1)]]`
-/

namespace A077920.P9525737952336227576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077920.P9525737952336227576

namespace A077920

/-- `∑[(-1)^n*∑[A106803(n+1)]]` -/
def P9525737952336227576.Spec : Prop :=
  ∀ n, P9525737952336227576.a n = A077920 n

end A077920

/-! ## A077920.P7101813152826775733

`∑[∑[A033303(n)*A033999(n)]]`
-/

namespace A077920.P7101813152826775733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033303 n * A033999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077920.P7101813152826775733

namespace A077920

/-- `∑[∑[A033303(n)*A033999(n)]]` -/
def P7101813152826775733.Spec : Prop :=
  ∀ n, P7101813152826775733.a n = A077920 n

end A077920

/-! ## A077920.P18197653671905758851

`∑[Δ[A052534(n)]*A033999(n)]`
-/

namespace A077920.P18197653671905758851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077920.P18197653671905758851

namespace A077920

/-- `∑[Δ[A052534(n)]*A033999(n)]` -/
def P18197653671905758851.Spec : Prop :=
  ∀ n, P18197653671905758851.a n = A077920 n

end A077920

/-! ## A077920.P12897299818665410581

`∑[A106805(n)/A033999(n²)]`
-/

namespace A077920.P12897299818665410581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106805 n : ℚ) / (A033999 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077920.P12897299818665410581

namespace A077920

/-- `∑[A106805(n)/A033999(n²)]` -/
def P12897299818665410581.Spec : Prop :=
  ∀ n, P12897299818665410581.a n = (A077920 n : ℚ)

end A077920

/-!
# A077921: Expansion of (1-x)^(-1)/(1+2*x-x^2).

The programs for A077921, the canonical program `A077921.P16796884899920919800` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077921 has offset 0).

The definition of A077921 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-3x^2+x^3))` (program `A077921.P16796884899920919800`, by `A077921.P16796884899920919800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077921.P16796884899920919800

`ogf(1/(1+x-3x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077921

/-- `ogf(1/(1+x-3x^2+x^3))` -/
def P16796884899920919800.Spec : Prop :=
  ∀ n, P16796884899920919800.a n = A077921 n

theorem P16796884899920919800.correct : P16796884899920919800.Spec := by
  intro n
  simp only [A077921]

end A077921

/-! ## A077921.P10711057617848926703

`1-floor((sqrt(2)+1)*a(n-1))` with `a(0)=1`
-/

namespace A077921.P10711057617848926703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋

end

end A077921.P10711057617848926703

namespace A077921

/-- `1-floor((sqrt(2)+1)*a(n-1))` -/
def P10711057617848926703.Spec : Prop :=
  ∀ n, P10711057617848926703.a n = A077921 n

end A077921

/-! ## A077921.P6575929902422834687

`1-floor(a(n-1)/(sqrt(2)-1))` with `a(0)=1`
-/

namespace A077921.P6575929902422834687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(a (n - 1) : ℝ) / (Real.sqrt (2 : ℝ) - 1)⌋

end

end A077921.P6575929902422834687

namespace A077921

/-- `1-floor(a(n-1)/(sqrt(2)-1))` -/
def P6575929902422834687.Spec : Prop :=
  ∀ n, P6575929902422834687.a n = A077921 n

end A077921

/-! ## A077921.P14135237945666743103

`2-ceil((sqrt(2)+1)*a(n-1))` with `a(0)=1`
-/

namespace A077921.P14135237945666743103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - ⌈(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌉

end

end A077921.P14135237945666743103

namespace A077921

/-- `2-ceil((sqrt(2)+1)*a(n-1))` -/
def P14135237945666743103.Spec : Prop :=
  ∀ n, P14135237945666743103.a n = A077921 n

end A077921

/-! ## A077921.P10105630583386561518

`∑[a(n-2)-2*a(n-1)]` with `a(0)=1, a(1)=-2`
-/

namespace A077921.P10105630583386561518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  f1 (n - 2) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077921.P10105630583386561518

namespace A077921

/-- `∑[a(n-2)-2*a(n-1)]` -/
def P10105630583386561518.Spec : Prop :=
  ∀ n, P10105630583386561518.a n = A077921 n

end A077921

/-! ## A077921.P1779928836655037089

`(3-round((sqrt(8)+2)*a(n-1)))/2` with `a(0)=1`
-/

namespace A077921.P1779928836655037089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 - SequenceMachineLib.roundAway ((Real.sqrt (8 : ℝ) + 2) * (a (n - 1) : ℝ)) : ℚ) / 2

end

end A077921.P1779928836655037089

namespace A077921

/-- `(3-round((sqrt(8)+2)*a(n-1)))/2` -/
def P1779928836655037089.Spec : Prop :=
  ∀ n, P1779928836655037089.a n = (A077921 n : ℚ)

end A077921

/-! ## A077921.P7316373000405687654

`a(n-2)+1-2*a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A077921.P7316373000405687654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) + (1 - 2 * a (n - 1))

end

end A077921.P7316373000405687654

namespace A077921

/-- `a(n-2)+1-2*a(n-1)` -/
def P7316373000405687654.Spec : Prop :=
  ∀ n, P7316373000405687654.a n = A077921 n

end A077921

/-! ## A077921.P13724187573418923480

`1-(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=-1`
-/

namespace A077921.P13724187573418923480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (2 * a (n - 1) - a (n - 2))

end

end A077921.P13724187573418923480

namespace A077921

/-- `1-(2*a(n-1)-a(n-2))` -/
def P13724187573418923480.Spec : Prop :=
  ∀ n, P13724187573418923480.a n = A077921 n

end A077921

/-! ## A077921.P14394505760115663324

`∑[a(n-2)-a(n-1)-a(n-1)]` with `a(0)=1, a(1)=-2`
-/

namespace A077921.P14394505760115663324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077921.P14394505760115663324

namespace A077921

/-- `∑[a(n-2)-a(n-1)-a(n-1)]` -/
def P14394505760115663324.Spec : Prop :=
  ∀ n, P14394505760115663324.a n = A077921 n

end A077921

/-! ## A077921.P11939397800640338003

`1-(a(n-1)+a(n-1)-a(n-2))` with `a(0)=1, a(1)=-1`
-/

namespace A077921.P11939397800640338003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A077921.P11939397800640338003

namespace A077921

/-- `1-(a(n-1)+a(n-1)-a(n-2))` -/
def P11939397800640338003.Spec : Prop :=
  ∀ n, P11939397800640338003.a n = A077921 n

end A077921

/-! ## A077921.P10557140400574483260

`1-(a(n-1)-a(n-2))-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A077921.P10557140400574483260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  1 - (a (n - 1) - a (n - 2)) - a (n - 1)

end

end A077921.P10557140400574483260

namespace A077921

/-- `1-(a(n-1)-a(n-2))-a(n-1)` -/
def P10557140400574483260.Spec : Prop :=
  ∀ n, P10557140400574483260.a n = A077921 n

end A077921

/-! ## A077921.P1780442527245878881

`∑[A077985(n)]`
-/

namespace A077921.P1780442527245878881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077921.P1780442527245878881

namespace A077921

/-- `∑[A077985(n)]` -/
def P1780442527245878881.Spec : Prop :=
  ∀ n, P1780442527245878881.a n = A077921 n

end A077921

/-! ## A077921.P12233389737913690862

`∑[A215936(n+3)]`
-/

namespace A077921.P12233389737913690862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077921.P12233389737913690862

namespace A077921

/-- `∑[A215936(n+3)]` -/
def P12233389737913690862.Spec : Prop :=
  ∀ n, P12233389737913690862.a n = A077921 n

end A077921

/-! ## A077921.P10357450513302004111

`∑[∑[-A123335(n+1)]]`
-/

namespace A077921.P10357450513302004111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123335 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077921.P10357450513302004111

namespace A077921

/-- `∑[∑[-A123335(n+1)]]` -/
def P10357450513302004111.Spec : Prop :=
  ∀ n, P10357450513302004111.a n = A077921 n

end A077921

/-! ## A077921.P2789134062583457270

`A033999(n)*A097076(n+1)`
-/

namespace A077921.P2789134062583457270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A097076 (n + 1)

end

end A077921.P2789134062583457270

namespace A077921

/-- `A033999(n)*A097076(n+1)` -/
def P2789134062583457270.Spec : Prop :=
  ∀ n, P2789134062583457270.a n = A077921 n

end A077921

/-! ## A077921.P17454402031650069921

`A056594(2*n)*A097076(n+1)`
-/

namespace A077921.P17454402031650069921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A097076 (n + 1)

end

end A077921.P17454402031650069921

namespace A077921

/-- `A056594(2*n)*A097076(n+1)` -/
def P17454402031650069921.Spec : Prop :=
  ∀ n, P17454402031650069921.a n = A077921 n

end A077921

/-! ## A077921.P13237319632123651226

`A228797(n+1)/A228826(2*n)`
-/

namespace A077921.P13237319632123651226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228797 (n + 1) : ℚ) / (A228826 (2 * n) : ℚ)

end

end A077921.P13237319632123651226

namespace A077921

/-- `A228797(n+1)/A228826(2*n)` -/
def P13237319632123651226.Spec : Prop :=
  ∀ n, P13237319632123651226.a n = (A077921 n : ℚ)

end A077921

/-! ## A077921.P8434916332660488293

`A228797(n+1)/(2-A010673(n)²)`
-/

namespace A077921.P8434916332660488293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228797 (n + 1) : ℚ) / (2 - A010673 n ^ 2 : ℚ)

end

end A077921.P8434916332660488293

namespace A077921

/-- `A228797(n+1)/(2-A010673(n)²)` -/
def P8434916332660488293.Spec : Prop :=
  ∀ n, P8434916332660488293.a n = (A077921 n : ℚ)

end A077921

/-! ## A077921.P15046009888630360639

`1-A033999(n+1)*A097075(n+1)`
-/

namespace A077921.P15046009888630360639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033999 (n + 1) * A097075 (n + 1)

end

end A077921.P15046009888630360639

namespace A077921

/-- `1-A033999(n+1)*A097075(n+1)` -/
def P15046009888630360639.Spec : Prop :=
  ∀ n, P15046009888630360639.a n = A077921 n

end A077921

/-! ## A077921.P11497966647474133534

`(A111954(n)-A000129(n))*∑[A111954(n)]`
-/

namespace A077921.P11497966647474133534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111954 n - A000129 n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077921.P11497966647474133534

namespace A077921

/-- `(A111954(n)-A000129(n))*∑[A111954(n)]` -/
def P11497966647474133534.Spec : Prop :=
  ∀ n, P11497966647474133534.a n = A077921 n

end A077921

/-!
# A077922: Expansion of (1-x)^(-1)/(1+2*x-x^2+x^3).

The programs for A077922, the canonical program `A077922.P4296642496380231662` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077922 has offset 0).

The definition of A077922 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-3x^2+2x^3-x^4))` (program `A077922.P4296642496380231662`, by `A077922.P4296642496380231662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077922.P4296642496380231662

`ogf(1/(1+x-3x^2+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077922

/-- `ogf(1/(1+x-3x^2+2x^3-x^4))` -/
def P4296642496380231662.Spec : Prop :=
  ∀ n, P4296642496380231662.a n = A077922 n

theorem P4296642496380231662.correct : P4296642496380231662.Spec := by
  intro n
  simp only [A077922]

end A077922

/-! ## A077922.P15243548256184037806

`∑[A077986(n)]`
-/

namespace A077922.P15243548256184037806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077922.P15243548256184037806

namespace A077922

/-- `∑[A077986(n)]` -/
def P15243548256184037806.Spec : Prop :=
  ∀ n, P15243548256184037806.a n = A077922 n

end A077922

/-! ## A077922.P16929790069686166963

`∑[∑[A078058(n)]]`
-/

namespace A077922.P16929790069686166963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078058 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077922.P16929790069686166963

namespace A077922

/-- `∑[∑[A078058(n)]]` -/
def P16929790069686166963.Spec : Prop :=
  ∀ n, P16929790069686166963.a n = A077922 n

end A077922

/-! ## A077922.P8871836032678050537

`∑[A033999(n)*A077939(n)]`
-/

namespace A077922.P8871836032678050537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077922.P8871836032678050537

namespace A077922

/-- `∑[A033999(n)*A077939(n)]` -/
def P8871836032678050537.Spec : Prop :=
  ∀ n, P8871836032678050537.a n = A077922 n

end A077922

/-! ## A077922.P2301942512219062545

`∑[∑[A033999(n)*A116413(n)]]`
-/

namespace A077922.P2301942512219062545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077922.P2301942512219062545

namespace A077922

/-- `∑[∑[A033999(n)*A116413(n)]]` -/
def P2301942512219062545.Spec : Prop :=
  ∀ n, P2301942512219062545.a n = A077922 n

end A077922

/-! ## A077922.P5290712151652735825

`∑[(A004442(n)-n)*A077939(n)]`
-/

namespace A077922.P5290712151652735825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077922.P5290712151652735825

namespace A077922

/-- `∑[(A004442(n)-n)*A077939(n)]` -/
def P5290712151652735825.Spec : Prop :=
  ∀ n, P5290712151652735825.a n = A077922 n

end A077922

/-!
# A077923: Expansion of (1-x)^(-1)/(1+2*x-x^2+2*x^3).

The programs for A077923, the canonical program `A077923.P16359893973255584550` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077923 has offset 0).

The definition of A077923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-3x^2+3x^3-2x^4))` (program `A077923.P16359893973255584550`, by `A077923.P16359893973255584550.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077923.P16359893973255584550

`ogf(1/(1+x-3x^2+3x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077923

/-- `ogf(1/(1+x-3x^2+3x^3-2x^4))` -/
def P16359893973255584550.Spec : Prop :=
  ∀ n, P16359893973255584550.a n = A077923 n

theorem P16359893973255584550.correct : P16359893973255584550.Spec := by
  intro n
  simp only [A077923]

end A077923

/-! ## A077923.P9224175027317258675

`2*a(n-4)-3*a(n-3)+3*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=4, a(3)=-10`
-/

namespace A077923.P9224175027317258675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 4, -10] fun n a =>
  2 * a (n - 4) - 3 * a (n - 3) + 3 * a (n - 2) - a (n - 1)

end

end A077923.P9224175027317258675

namespace A077923

/-- `2*a(n-4)-3*a(n-3)+3*a(n-2)-a(n-1)` -/
def P9224175027317258675.Spec : Prop :=
  ∀ n, P9224175027317258675.a n = A077923 n

end A077923

/-! ## A077923.P11669339955436026172

`∑[A077987(n)]`
-/

namespace A077923.P11669339955436026172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P11669339955436026172

namespace A077923

/-- `∑[A077987(n)]` -/
def P11669339955436026172.Spec : Prop :=
  ∀ n, P11669339955436026172.a n = A077923 n

end A077923

/-! ## A077923.P17173734441731797809

`∑[∑[A078059(n)]]`
-/

namespace A077923.P17173734441731797809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P17173734441731797809

namespace A077923

/-- `∑[∑[A078059(n)]]` -/
def P17173734441731797809.Spec : Prop :=
  ∀ n, P17173734441731797809.a n = A077923 n

end A077923

/-! ## A077923.P2809641284140613067

`∑[(-1)^n*A077938(n)]`
-/

namespace A077923.P2809641284140613067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P2809641284140613067

namespace A077923

/-- `∑[(-1)^n*A077938(n)]` -/
def P2809641284140613067.Spec : Prop :=
  ∀ n, P2809641284140613067.a n = A077923 n

end A077923

/-! ## A077923.P17458648211009115324

`∑[A077938(n)/A033999(n)]`
-/

namespace A077923.P17458648211009115324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077938 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P17458648211009115324

namespace A077923

/-- `∑[A077938(n)/A033999(n)]` -/
def P17458648211009115324.Spec : Prop :=
  ∀ n, P17458648211009115324.a n = (A077923 n : ℚ)

end A077923

/-! ## A077923.P1346920919659329108

`∑[∑[A077996(n)]*A033999(n)]`
-/

namespace A077923.P1346920919659329108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P1346920919659329108

namespace A077923

/-- `∑[∑[A077996(n)]*A033999(n)]` -/
def P1346920919659329108.Spec : Prop :=
  ∀ n, P1346920919659329108.a n = A077923 n

end A077923

/-! ## A077923.P11895629554310602539

`∑[A077938(n)/A057077(2*n)]`
-/

namespace A077923.P11895629554310602539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077938 n : ℚ) / (A057077 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P11895629554310602539

namespace A077923

/-- `∑[A077938(n)/A057077(2*n)]` -/
def P11895629554310602539.Spec : Prop :=
  ∀ n, P11895629554310602539.a n = (A077923 n : ℚ)

end A077923

/-! ## A077923.P13642187143146853806

`∑[∑[A077996(n)]*A057077(2*n)]`
-/

namespace A077923.P13642187143146853806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077923.P13642187143146853806

namespace A077923

/-- `∑[∑[A077996(n)]*A057077(2*n)]` -/
def P13642187143146853806.Spec : Prop :=
  ∀ n, P13642187143146853806.a n = A077923 n

end A077923

/-!
# A077924: Expansion of (1-x)^(-1)/(1+2*x-2*x^3).

The programs for A077924, the canonical program `A077924.P1997690034683766997` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077924 has offset 0).

The definition of A077924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2-2x^3+2x^4))` (program `A077924.P1997690034683766997`, by `A077924.P1997690034683766997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077924.P1997690034683766997

`ogf(1/(1+x-2x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077924

/-- `ogf(1/(1+x-2x^2-2x^3+2x^4))` -/
def P1997690034683766997.Spec : Prop :=
  ∀ n, P1997690034683766997.a n = A077924 n

theorem P1997690034683766997.correct : P1997690034683766997.Spec := by
  intro n
  simp only [A077924]

end A077924

/-! ## A077924.P13973615182952799121

`∑[2*(a(n-3)-a(n-1))]` with `a(0)=1, a(1)=-2, a(2)=4`
-/

namespace A077924.P13973615182952799121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 4] fun n f1 =>
  2 * (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P13973615182952799121

namespace A077924

/-- `∑[2*(a(n-3)-a(n-1))]` -/
def P13973615182952799121.Spec : Prop :=
  ∀ n, P13973615182952799121.a n = A077924 n

end A077924

/-! ## A077924.P11023083764799094646

`2*(a(n-3)-a(n-1))+1` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077924.P11023083764799094646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  2 * (a (n - 3) - a (n - 1)) + 1

end

end A077924.P11023083764799094646

namespace A077924

/-- `2*(a(n-3)-a(n-1))+1` -/
def P11023083764799094646.Spec : Prop :=
  ∀ n, P11023083764799094646.a n = A077924 n

end A077924

/-! ## A077924.P9505746411445367292

`1-2*(a(n-1)-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077924.P9505746411445367292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  1 - 2 * (a (n - 1) - a (n - 3))

end

end A077924.P9505746411445367292

namespace A077924

/-- `1-2*(a(n-1)-a(n-3))` -/
def P9505746411445367292.Spec : Prop :=
  ∀ n, P9505746411445367292.a n = A077924 n

end A077924

/-! ## A077924.P154440616296838179

`∑[A077988(n)]`
-/

namespace A077924.P154440616296838179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077988 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P154440616296838179

namespace A077924

/-- `∑[A077988(n)]` -/
def P154440616296838179.Spec : Prop :=
  ∀ n, P154440616296838179.a n = A077924 n

end A077924

/-! ## A077924.P10443152918647399329

`∑[(-1)^n*A077940(n)]`
-/

namespace A077924.P10443152918647399329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P10443152918647399329

namespace A077924

/-- `∑[(-1)^n*A077940(n)]` -/
def P10443152918647399329.Spec : Prop :=
  ∀ n, P10443152918647399329.a n = A077924 n

end A077924

/-! ## A077924.P4084942641810333376

`∑[A077940(n)/A033999(n)]`
-/

namespace A077924.P4084942641810333376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077940 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P4084942641810333376

namespace A077924

/-- `∑[A077940(n)/A033999(n)]` -/
def P4084942641810333376.Spec : Prop :=
  ∀ n, P4084942641810333376.a n = (A077924 n : ℚ)

end A077924

/-! ## A077924.P12638375003209995769

`∑[A077940(n)/(A042963(n+1)-A014601(n))]`
-/

namespace A077924.P12638375003209995769
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077940 n : ℚ) / (A042963 (n + 1) - A014601 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P12638375003209995769

namespace A077924

/-- `∑[A077940(n)/(A042963(n+1)-A014601(n))]` -/
def P12638375003209995769.Spec : Prop :=
  ∀ n, P12638375003209995769.a n = (A077924 n : ℚ)

end A077924

/-! ## A077924.P4553612093548775436

`∑[∑[A073358(n+1)]*A033999(n+1)]`
-/

namespace A077924.P4553612093548775436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P4553612093548775436

namespace A077924

/-- `∑[∑[A073358(n+1)]*A033999(n+1)]` -/
def P4553612093548775436.Spec : Prop :=
  ∀ n, P4553612093548775436.a n = A077924 n

end A077924

/-! ## A077924.P13658529839781138799

`∑[∑[A078060(n)]]`
-/

namespace A077924.P13658529839781138799
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078060 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077924.P13658529839781138799

namespace A077924

/-- `∑[∑[A078060(n)]]` -/
def P13658529839781138799.Spec : Prop :=
  ∀ n, P13658529839781138799.a n = A077924 n

end A077924

/-!
# A077925: Expansion of 1/((1-x)*(1+2*x)).

The programs for A077925, the canonical program `A077925.P10800266129172453191` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077925 has offset 0).

The definition of A077925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2))` (program `A077925.P10800266129172453191`, by `A077925.P10800266129172453191.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077925.P10800266129172453191

`ogf(1/(1+x-2x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077925

/-- `ogf(1/(1+x-2x^2))` -/
def P10800266129172453191.Spec : Prop :=
  ∀ n, P10800266129172453191.a n = A077925 n

theorem P10800266129172453191.correct : P10800266129172453191.Spec := by
  intro n
  simp only [A077925]

end A077925

/-! ## A077925.P7355982550096922997

`(-1)^n*A001045(n+1)`
-/

namespace A077925.P7355982550096922997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001045 (n + 1)

end

end A077925.P7355982550096922997

namespace A077925

/-- `(-1)^n*A001045(n+1)` -/
def P7355982550096922997.Spec : Prop :=
  ∀ n, P7355982550096922997.a n = A077925 n

end A077925

/-! ## A077925.P7706898332686778924

`(1-(-2)^(n+1))/3`
-/

namespace A077925.P7706898332686778924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-2) ^ (n + 1) : ℚ) / 3

end

end A077925.P7706898332686778924

namespace A077925

/-- `(1-(-2)^(n+1))/3` -/
def P7706898332686778924.Spec : Prop :=
  ∀ n, P7706898332686778924.a n = (A077925 n : ℚ)

end A077925

/-! ## A077925.P18435619254425762537

`A086893(n+2)-A061547(n+3)`
-/

namespace A077925.P18435619254425762537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086893 (n + 2) - A061547 (n + 3)

end

end A077925.P18435619254425762537

namespace A077925

/-- `A086893(n+2)-A061547(n+3)` -/
def P18435619254425762537.Spec : Prop :=
  ∀ n, P18435619254425762537.a n = A077925 n

end A077925

/-! ## A077925.P15904070300464669585

`1-2*a(n-1)` with `a(0)=1`
-/

namespace A077925.P15904070300464669585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - 2 * a (n - 1)

end

end A077925.P15904070300464669585

namespace A077925

/-- `1-2*a(n-1)` -/
def P15904070300464669585.Spec : Prop :=
  ∀ n, P15904070300464669585.a n = A077925 n

end A077925

/-! ## A077925.P11067783603856681686

`a(n-1)+(-2)^n` with `a(0)=1`
-/

namespace A077925.P11067783603856681686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-2) ^ n

end

end A077925.P11067783603856681686

namespace A077925

/-- `a(n-1)+(-2)^n` -/
def P11067783603856681686.Spec : Prop :=
  ∀ n, P11067783603856681686.a n = A077925 n

end A077925

/-! ## A077925.P4387736887677621339

`xor(-2^n, a(n-1))` with `a(0)=1`
-/

namespace A077925.P4387736887677621339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-(2 ^ n : ℤ)) (a (n - 1))

end

end A077925.P4387736887677621339

namespace A077925

/-- `xor(-2^n, a(n-1))` -/
def P4387736887677621339.Spec : Prop :=
  ∀ n, P4387736887677621339.a n = A077925 n

end A077925

/-! ## A077925.P13679461467985167538

`1-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A077925.P13679461467985167538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) + a (n - 1))

end

end A077925.P13679461467985167538

namespace A077925

/-- `1-(a(n-1)+a(n-1))` -/
def P13679461467985167538.Spec : Prop :=
  ∀ n, P13679461467985167538.a n = A077925 n

end A077925

/-! ## A077925.P18275717671080501902

`1-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A077925.P18275717671080501902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (n - 1) - a (n - 1)

end

end A077925.P18275717671080501902

namespace A077925

/-- `1-a(n-1)-a(n-1)` -/
def P18275717671080501902.Spec : Prop :=
  ∀ n, P18275717671080501902.a n = A077925 n

end A077925

/-! ## A077925.P11317200581995598346

`∑[A122803(n)]`
-/

namespace A077925.P11317200581995598346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077925.P11317200581995598346

namespace A077925

/-- `∑[A122803(n)]` -/
def P11317200581995598346.Spec : Prop :=
  ∀ n, P11317200581995598346.a n = A077925 n

end A077925

/-! ## A077925.P18265784030788646893

`A077953(2*n)`
-/

namespace A077925.P18265784030788646893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077953 (2 * n)

end

end A077925.P18265784030788646893

namespace A077925

/-- `A077953(2*n)` -/
def P18265784030788646893.Spec : Prop :=
  ∀ n, P18265784030788646893.a n = A077925 n

end A077925

/-! ## A077925.P8819563958495632076

`A077980(2*n)`
-/

namespace A077925.P8819563958495632076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 (2 * n)

end

end A077925.P8819563958495632076

namespace A077925

/-- `A077980(2*n)` -/
def P8819563958495632076.Spec : Prop :=
  ∀ n, P8819563958495632076.a n = A077925 n

end A077925

/-! ## A077925.P17308616817553157592

`A077886(3*n)`
-/

namespace A077925.P17308616817553157592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (3 * n)

end

end A077925.P17308616817553157592

namespace A077925

/-- `A077886(3*n)` -/
def P17308616817553157592.Spec : Prop :=
  ∀ n, P17308616817553157592.a n = A077925 n

end A077925

/-! ## A077925.P2469185904298551987

`∑[A123344(n+1)]`
-/

namespace A077925.P2469185904298551987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077925.P2469185904298551987

namespace A077925

/-- `∑[A123344(n+1)]` -/
def P2469185904298551987.Spec : Prop :=
  ∀ n, P2469185904298551987.a n = A077925 n

end A077925

/-! ## A077925.P13014448707831943767

`∑[A077966(2*n)]`
-/

namespace A077925.P13014448707831943767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077925.P13014448707831943767

namespace A077925

/-- `∑[A077966(2*n)]` -/
def P13014448707831943767.Spec : Prop :=
  ∀ n, P13014448707831943767.a n = A077925 n

end A077925

/-! ## A077925.P754892032011733243

`∑[A077959(3*n)]`
-/

namespace A077925.P754892032011733243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077925.P754892032011733243

namespace A077925

/-- `∑[A077959(3*n)]` -/
def P754892032011733243.Spec : Prop :=
  ∀ n, P754892032011733243.a n = A077925 n

end A077925

/-! ## A077925.P14230135940281491818

`∑[A078030(3*n)]`
-/

namespace A077925.P14230135940281491818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077925.P14230135940281491818

namespace A077925

/-- `∑[A078030(3*n)]` -/
def P14230135940281491818.Spec : Prop :=
  ∀ n, P14230135940281491818.a n = A077925 n

end A077925

/-! ## A077925.P16447939064232277098

`∑[A280560(n)^n]`
-/

namespace A077925.P16447939064232277098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077925.P16447939064232277098

namespace A077925

/-- `∑[A280560(n)^n]` -/
def P16447939064232277098.Spec : Prop :=
  ∀ n, P16447939064232277098.a n = A077925 n

end A077925

/-! ## A077925.P5738910740677864859

`A084247(n+1)-1`
-/

namespace A077925.P5738910740677864859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n + 1) - 1

end

end A077925.P5738910740677864859

namespace A077925

/-- `A084247(n+1)-1` -/
def P5738910740677864859.Spec : Prop :=
  ∀ n, P5738910740677864859.a n = A077925 n

end A077925

/-!
# A077926: Expansion of (1-x)^(-1)/(1+2*x+x^3).

The programs for A077926, the canonical program `A077926.P15721426528034838754` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077926 has offset 0).

The definition of A077926 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2+x^3-x^4))` (program `A077926.P15721426528034838754`, by `A077926.P15721426528034838754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077926.P15721426528034838754

`ogf(1/(1+x-2x^2+x^3-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077926

/-- `ogf(1/(1+x-2x^2+x^3-x^4))` -/
def P15721426528034838754.Spec : Prop :=
  ∀ n, P15721426528034838754.a n = A077926 n

theorem P15721426528034838754.correct : P15721426528034838754.Spec := by
  intro n
  simp only [A077926]

end A077926

/-! ## A077926.P13917501902629993883

`1-(a(n-3)+2*a(n-1))` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077926.P13917501902629993883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  1 - (a (n - 3) + 2 * a (n - 1))

end

end A077926.P13917501902629993883

namespace A077926

/-- `1-(a(n-3)+2*a(n-1))` -/
def P13917501902629993883.Spec : Prop :=
  ∀ n, P13917501902629993883.a n = A077926 n

end A077926

/-! ## A077926.P14042202489862305141

`1-2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077926.P14042202489862305141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  1 - 2 * a (n - 1) - a (n - 3)

end

end A077926.P14042202489862305141

namespace A077926

/-- `1-2*a(n-1)-a(n-3)` -/
def P14042202489862305141.Spec : Prop :=
  ∀ n, P14042202489862305141.a n = A077926 n

end A077926

/-! ## A077926.P3154178129649494498

`1-(a(n-1)+a(n-1)+a(n-3))` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077926.P3154178129649494498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  1 - (a (n - 1) + (a (n - 1) + a (n - 3)))

end

end A077926.P3154178129649494498

namespace A077926

/-- `1-(a(n-1)+a(n-1)+a(n-3))` -/
def P3154178129649494498.Spec : Prop :=
  ∀ n, P3154178129649494498.a n = A077926 n

end A077926

/-! ## A077926.P17503634567312182455

`1-a(n-1)-a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077926.P17503634567312182455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  1 - a (n - 1) - a (n - 1) - a (n - 3)

end

end A077926.P17503634567312182455

namespace A077926

/-- `1-a(n-1)-a(n-1)-a(n-3)` -/
def P17503634567312182455.Spec : Prop :=
  ∀ n, P17503634567312182455.a n = A077926 n

end A077926

/-! ## A077926.P1947021680617376468

`∑[∑[A078061(n)]]`
-/

namespace A077926.P1947021680617376468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P1947021680617376468

namespace A077926

/-- `∑[∑[A078061(n)]]` -/
def P1947021680617376468.Spec : Prop :=
  ∀ n, P1947021680617376468.a n = A077926 n

end A077926

/-! ## A077926.P12995698348594099058

`∑[(-1)^n*A008998(n)]`
-/

namespace A077926.P12995698348594099058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P12995698348594099058

namespace A077926

/-- `∑[(-1)^n*A008998(n)]` -/
def P12995698348594099058.Spec : Prop :=
  ∀ n, P12995698348594099058.a n = A077926 n

end A077926

/-! ## A077926.P8223467451838824336

`∑[A110513(n)]-a(n-1)` with `a(0)=1`
-/

namespace A077926.P8223467451838824336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A077926.P8223467451838824336

namespace A077926

/-- `∑[A110513(n)]-a(n-1)` -/
def P8223467451838824336.Spec : Prop :=
  ∀ n, P8223467451838824336.a n = A077926 n

end A077926

/-! ## A077926.P9145208188698094016

`∑[(-1)^n*∑[A052980(n)]]`
-/

namespace A077926.P9145208188698094016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P9145208188698094016

namespace A077926

/-- `∑[(-1)^n*∑[A052980(n)]]` -/
def P9145208188698094016.Spec : Prop :=
  ∀ n, P9145208188698094016.a n = A077926 n

end A077926

/-! ## A077926.P17687800511316478819

`∑[A008998(n)*A033999(n)]`
-/

namespace A077926.P17687800511316478819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P17687800511316478819

namespace A077926

/-- `∑[A008998(n)*A033999(n)]` -/
def P17687800511316478819.Spec : Prop :=
  ∀ n, P17687800511316478819.a n = A077926 n

end A077926

/-! ## A077926.P14501462364602895132

`∑[∑[A052980(n)]*A033999(n)]`
-/

namespace A077926.P14501462364602895132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P14501462364602895132

namespace A077926

/-- `∑[∑[A052980(n)]*A033999(n)]` -/
def P14501462364602895132.Spec : Prop :=
  ∀ n, P14501462364602895132.a n = A077926 n

end A077926

/-! ## A077926.P10006876239353038651

`∑[∑[A110513(n+1)+A110513(n+2)]]`
-/

namespace A077926.P10006876239353038651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 (n + 1) + A110513 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P10006876239353038651

namespace A077926

/-- `∑[∑[A110513(n+1)+A110513(n+2)]]` -/
def P10006876239353038651.Spec : Prop :=
  ∀ n, P10006876239353038651.a n = A077926 n

end A077926

/-! ## A077926.P5869454652567587232

`∑[A008998(n)*A110511(∑[n])]`
-/

namespace A077926.P5869454652567587232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n * A110511 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077926.P5869454652567587232

namespace A077926

/-- `∑[A008998(n)*A110511(∑[n])]` -/
def P5869454652567587232.Spec : Prop :=
  ∀ n, P5869454652567587232.a n = A077926 n

end A077926

/-!
# A077927: Expansion of (1-x)^(-1)/(1+2*x+2*x^3).

The programs for A077927, the canonical program `A077927.P15931494727834327928` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077927 has offset 0).

The definition of A077927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2+2x^3-2x^4))` (program `A077927.P15931494727834327928`, by `A077927.P15931494727834327928.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077927.P15931494727834327928

`ogf(1/(1+x-2x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077927

/-- `ogf(1/(1+x-2x^2+2x^3-2x^4))` -/
def P15931494727834327928.Spec : Prop :=
  ∀ n, P15931494727834327928.a n = A077927 n

theorem P15931494727834327928.correct : P15931494727834327928.Spec := by
  intro n
  simp only [A077927]

end A077927

/-! ## A077927.P8475175359299294599

`1-2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077927.P8475175359299294599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  1 - 2 * (a (n - 1) + a (n - 3))

end

end A077927.P8475175359299294599

namespace A077927

/-- `1-2*(a(n-1)+a(n-3))` -/
def P8475175359299294599.Spec : Prop :=
  ∀ n, P8475175359299294599.a n = A077927 n

end A077927

/-! ## A077927.P11285397795544396356

`∑[∑[A078062(n)]]`
-/

namespace A077927.P11285397795544396356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077927.P11285397795544396356

namespace A077927

/-- `∑[∑[A078062(n)]]` -/
def P11285397795544396356.Spec : Prop :=
  ∀ n, P11285397795544396356.a n = A077927 n

end A077927

/-! ## A077927.P700918367341730166

`∑[(-1)^n*∑[A077999(n)]]`
-/

namespace A077927.P700918367341730166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077927.P700918367341730166

namespace A077927

/-- `∑[(-1)^n*∑[A077999(n)]]` -/
def P700918367341730166.Spec : Prop :=
  ∀ n, P700918367341730166.a n = A077927 n

end A077927

/-! ## A077927.P11374420609998851136

`∑[∑[A077999(n)]*A033999(n)]`
-/

namespace A077927.P11374420609998851136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077927.P11374420609998851136

namespace A077927

/-- `∑[∑[A077999(n)]*A033999(n)]` -/
def P11374420609998851136.Spec : Prop :=
  ∀ n, P11374420609998851136.a n = A077927 n

end A077927

/-! ## A077927.P11725602571096784287

`∑[∑[A077999(n)]*A009001(2*n)]`
-/

namespace A077927.P11725602571096784287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077927.P11725602571096784287

namespace A077927

/-- `∑[∑[A077999(n)]*A009001(2*n)]` -/
def P11725602571096784287.Spec : Prop :=
  ∀ n, P11725602571096784287.a n = A077927 n

end A077927

/-! ## A077927.P14420234452341910533

`∑[∑[A077999(n)]*A056594(2*n)]`
-/

namespace A077927.P14420234452341910533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077927.P14420234452341910533

namespace A077927

/-- `∑[∑[A077999(n)]*A056594(2*n)]` -/
def P14420234452341910533.Spec : Prop :=
  ∀ n, P14420234452341910533.a n = A077927 n

end A077927

/-!
# A077928: Expansion of (1-x)^(-1)/(1+2*x+x^2-2*x^3).

The programs for A077928, the canonical program `A077928.P11761716848264930866` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077928 has offset 0).

The definition of A077928 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-3x^3+2x^4))` (program `A077928.P11761716848264930866`, by `A077928.P11761716848264930866.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077928.P11761716848264930866

`ogf(1/(1+x-x^2-3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077928

/-- `ogf(1/(1+x-x^2-3x^3+2x^4))` -/
def P11761716848264930866.Spec : Prop :=
  ∀ n, P11761716848264930866.a n = A077928 n

theorem P11761716848264930866.correct : P11761716848264930866.Spec := by
  intro n
  simp only [A077928]

end A077928

/-! ## A077928.P4479097830217916521

`∑[A077989(n)]`
-/

namespace A077928.P4479097830217916521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077928.P4479097830217916521

namespace A077928

/-- `∑[A077989(n)]` -/
def P4479097830217916521.Spec : Prop :=
  ∀ n, P4479097830217916521.a n = A077928 n

end A077928

/-! ## A077928.P6595235448369502033

`∑[(A004442(n)-n)*A077942(n)]`
-/

namespace A077928.P6595235448369502033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077928.P6595235448369502033

namespace A077928

/-- `∑[(A004442(n)-n)*A077942(n)]` -/
def P6595235448369502033.Spec : Prop :=
  ∀ n, P6595235448369502033.a n = A077928 n

end A077928

/-! ## A077928.P14514595029845627177

`∑[∑[A078063(n)]]`
-/

namespace A077928.P14514595029845627177
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077928.P14514595029845627177

namespace A077928

/-- `∑[∑[A078063(n)]]` -/
def P14514595029845627177.Spec : Prop :=
  ∀ n, P14514595029845627177.a n = A077928 n

end A077928

/-!
# A077929: Expansion of (1-x)^(-1)/(1+2*x+x^2-x^3).

The programs for A077929, the canonical program `A077929.P9858337827514012375` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077929 has offset 0).

The definition of A077929 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-2x^3+x^4))` (program `A077929.P9858337827514012375`, by `A077929.P9858337827514012375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077929.P9858337827514012375

`ogf(1/(1+x-x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077929

/-- `ogf(1/(1+x-x^2-2x^3+x^4))` -/
def P9858337827514012375.Spec : Prop :=
  ∀ n, P9858337827514012375.a n = A077929 n

theorem P9858337827514012375.correct : P9858337827514012375.Spec := by
  intro n
  simp only [A077929]

end A077929

/-! ## A077929.P1355832918772433023

`∑[A077990(n)]`
-/

namespace A077929.P1355832918772433023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P1355832918772433023

namespace A077929

/-- `∑[A077990(n)]` -/
def P1355832918772433023.Spec : Prop :=
  ∀ n, P1355832918772433023.a n = A077929 n

end A077929

/-! ## A077929.P10943363958898152486

`A077889(Δ[n²])`
-/

namespace A077929.P10943363958898152486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A077929.P10943363958898152486

namespace A077929

/-- `A077889(Δ[n²])` -/
def P10943363958898152486.Spec : Prop :=
  ∀ n, P10943363958898152486.a n = A077929 n

end A077929

/-! ## A077929.P12569286475979664711

`A077889(2*n)-A077961(2*n+1)`
-/

namespace A077929.P12569286475979664711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077889 (2 * n) - A077961 (2 * n + 1)

end

end A077929.P12569286475979664711

namespace A077929

/-- `A077889(2*n)-A077961(2*n+1)` -/
def P12569286475979664711.Spec : Prop :=
  ∀ n, P12569286475979664711.a n = A077929 n

end A077929

/-! ## A077929.P7938872193911777683

`∑[A077961(2*n)-A077961(2*n+1)]`
-/

namespace A077929.P7938872193911777683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n) - A077961 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P7938872193911777683

namespace A077929

/-- `∑[A077961(2*n)-A077961(2*n+1)]` -/
def P7938872193911777683.Spec : Prop :=
  ∀ n, P7938872193911777683.a n = A077929 n

end A077929

/-! ## A077929.P12688383409497910775

`∑[A077961(2*n+3)]`
-/

namespace A077929.P12688383409497910775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P12688383409497910775

namespace A077929

/-- `∑[A077961(2*n+3)]` -/
def P12688383409497910775.Spec : Prop :=
  ∀ n, P12688383409497910775.a n = A077929 n

end A077929

/-! ## A077929.P15188138917309443358

`A077962(2*n+1)+A077889(2*n)`
-/

namespace A077929.P15188138917309443358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n + 1) + A077889 (2 * n)

end

end A077929.P15188138917309443358

namespace A077929

/-- `A077962(2*n+1)+A077889(2*n)` -/
def P15188138917309443358.Spec : Prop :=
  ∀ n, P15188138917309443358.a n = A077929 n

end A077929

/-! ## A077929.P8602070396179547032

`∑[A077962(2*n+1)+A077962(2*n)]`
-/

namespace A077929.P8602070396179547032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n + 1) + A077962 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P8602070396179547032

namespace A077929

/-- `∑[A077962(2*n+1)+A077962(2*n)]` -/
def P8602070396179547032.Spec : Prop :=
  ∀ n, P8602070396179547032.a n = A077929 n

end A077929

/-! ## A077929.P6213336588382384985

`∑[-A078031(2*n+1)]`
-/

namespace A077929.P6213336588382384985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078031 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P6213336588382384985

namespace A077929

/-- `∑[-A078031(2*n+1)]` -/
def P6213336588382384985.Spec : Prop :=
  ∀ n, P6213336588382384985.a n = A077929 n

end A077929

/-! ## A077929.P7867329078785369848

`∑[∑[A078064(n)]]`
-/

namespace A077929.P7867329078785369848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078064 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P7867329078785369848

namespace A077929

/-- `∑[∑[A078064(n)]]` -/
def P7867329078785369848.Spec : Prop :=
  ∀ n, P7867329078785369848.a n = A077929 n

end A077929

/-! ## A077929.P8332390110285828516

`∑[∑[A078032(2*n+5)]]`
-/

namespace A077929.P8332390110285828516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077929.P8332390110285828516

namespace A077929

/-- `∑[∑[A078032(2*n+5)]]` -/
def P8332390110285828516.Spec : Prop :=
  ∀ n, P8332390110285828516.a n = A077929 n

end A077929

/-!
# A077930: Expansion of (1-x)^(-1)/(1+2*x+x^2+x^3).

The programs for A077930, the canonical program `A077930.P15055277171813472835` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077930 has offset 0).

The definition of A077930 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-x^4))` (program `A077930.P15055277171813472835`, by `A077930.P15055277171813472835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077930.P15055277171813472835

`ogf(1/(1+x-x^2-x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077930

/-- `ogf(1/(1+x-x^2-x^4))` -/
def P15055277171813472835.Spec : Prop :=
  ∀ n, P15055277171813472835.a n = A077930 n

theorem P15055277171813472835.correct : P15055277171813472835.Spec := by
  intro n
  simp only [A077930]

end A077930

/-! ## A077930.P12487630053222242862

`a(n-2)+a(n-4)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=2, a(3)=-3`
-/

namespace A077930.P12487630053222242862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2, -3] fun n a =>
  a (n - 2) + (a (n - 4) - a (n - 1))

end

end A077930.P12487630053222242862

namespace A077930

/-- `a(n-2)+a(n-4)-a(n-1)` -/
def P12487630053222242862.Spec : Prop :=
  ∀ n, P12487630053222242862.a n = A077930 n

end A077930

/-! ## A077930.P1759059827758417559

`∑[∑[A078065(n)]]`
-/

namespace A077930.P1759059827758417559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078065 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077930.P1759059827758417559

namespace A077930

/-- `∑[∑[A078065(n)]]` -/
def P1759059827758417559.Spec : Prop :=
  ∀ n, P1759059827758417559.a n = A077930 n

end A077930

/-! ## A077930.P1495003498002710539

`(-1)^n*Δ[A274110(n+1)]`
-/

namespace A077930.P1495003498002710539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A077930.P1495003498002710539

namespace A077930

/-- `(-1)^n*Δ[A274110(n+1)]` -/
def P1495003498002710539.Spec : Prop :=
  ∀ n, P1495003498002710539.a n = A077930 n

end A077930

/-! ## A077930.P1414089251026525151

`A033999(n)*A060945(n)`
-/

namespace A077930.P1414089251026525151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060945 n

end

end A077930.P1414089251026525151

namespace A077930

/-- `A033999(n)*A060945(n)` -/
def P1414089251026525151.Spec : Prop :=
  ∀ n, P1414089251026525151.a n = A077930 n

end A077930

/-! ## A077930.P12067341501142214899

`A060945(n)*A121238(2*n+1)`
-/

namespace A077930.P12067341501142214899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 n * A121238 (2 * n + 1)

end

end A077930.P12067341501142214899

namespace A077930

/-- `A060945(n)*A121238(2*n+1)` -/
def P12067341501142214899.Spec : Prop :=
  ∀ n, P12067341501142214899.a n = A077930 n

end A077930

/-! ## A077930.P6761538825042091477

`∑[(1-A010673(n))*A005314(n+1)]`
-/

namespace A077930.P6761538825042091477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A005314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077930.P6761538825042091477

namespace A077930

/-- `∑[(1-A010673(n))*A005314(n+1)]` -/
def P6761538825042091477.Spec : Prop :=
  ∀ n, P6761538825042091477.a n = A077930 n

end A077930

/-! ## A077930.P11189030782877031136

`(A059841(n)-A059841(n+1))*A060945(n)`
-/

namespace A077930.P11189030782877031136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n - A059841 (n + 1)) * A060945 n

end

end A077930.P11189030782877031136

namespace A077930

/-- `(A059841(n)-A059841(n+1))*A060945(n)` -/
def P11189030782877031136.Spec : Prop :=
  ∀ n, P11189030782877031136.a n = A077930 n

end A077930

/-! ## A077930.P11442601713260164146

`(A059841(n)-A059841(n+1))*A181532(n+1)`
-/

namespace A077930.P11442601713260164146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059841 n - A059841 (n + 1)) * A181532 (n + 1)

end

end A077930.P11442601713260164146

namespace A077930

/-- `(A059841(n)-A059841(n+1))*A181532(n+1)` -/
def P11442601713260164146.Spec : Prop :=
  ∀ n, P11442601713260164146.a n = A077930 n

end A077930

/-! ## A077930.P2354530855268026627

`∑[-A099529(n+3)]`
-/

namespace A077930.P2354530855268026627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099529 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077930.P2354530855268026627

namespace A077930

/-- `∑[-A099529(n+3)]` -/
def P2354530855268026627.Spec : Prop :=
  ∀ n, P2354530855268026627.a n = A077930 n

end A077930

/-! ## A077930.P16063325694510940147

`Δ[a(n-1)-∑[A099529(n+2)]]` with `a(0)=1, a(1)=2`
-/

namespace A077930.P16063325694510940147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099529 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077930.P16063325694510940147

namespace A077930

/-- `Δ[a(n-1)-∑[A099529(n+2)]]` -/
def P16063325694510940147.Spec : Prop :=
  ∀ n, P16063325694510940147.a n = A077930 n

end A077930

/-!
# A077931: Expansion of 1/((1-x)*(1+2*x+x^2+2*x^3)).

The programs for A077931, the canonical program `A077931.P1254121161910953036` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077931 has offset 0).

The definition of A077931 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2+x^3-2x^4))` (program `A077931.P1254121161910953036`, by `A077931.P1254121161910953036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077931.P1254121161910953036

`ogf(1/(1+x-x^2+x^3-2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077931

/-- `ogf(1/(1+x-x^2+x^3-2x^4))` -/
def P1254121161910953036.Spec : Prop :=
  ∀ n, P1254121161910953036.a n = A077931 n

theorem P1254121161910953036.correct : P1254121161910953036.Spec := by
  intro n
  simp only [A077931]

end A077931

/-! ## A077931.P12776406405217878185

`∑[(-2)^n]-a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A077931.P12776406405217878185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A077931.P12776406405217878185

namespace A077931

/-- `∑[(-2)^n]-a(n-2)` -/
def P12776406405217878185.Spec : Prop :=
  ∀ n, P12776406405217878185.a n = A077931 n

end A077931

/-! ## A077931.P8885898884855543849

`C(2, and(2, n)²)-2*a(n-1)` with `a(0)=1`
-/

namespace A077931.P8885898884855543849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose 2 (Nat.land 2 n ^ 2) : ℤ) - 2 * a (n - 1)

end

end A077931.P8885898884855543849

namespace A077931

/-- `C(2, and(2, n)²)-2*a(n-1)` -/
def P8885898884855543849.Spec : Prop :=
  ∀ n, P8885898884855543849.a n = A077931 n

end A077931

/-! ## A077931.P17190628734585314001

`∑[n+1]%2-2*a(n-1)` with `a(0)=1`
-/

namespace A077931.P17190628734585314001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) - 2 * a (n - 1)

end

end A077931.P17190628734585314001

namespace A077931

/-- `∑[n+1]%2-2*a(n-1)` -/
def P17190628734585314001.Spec : Prop :=
  ∀ n, P17190628734585314001.a n = A077931 n

end A077931

/-! ## A077931.P3058521390561968419

`and(1, ∑[n+1])-2*a(n-1)` with `a(0)=1`
-/

namespace A077931.P3058521390561968419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2 * a (n - 1)

end

end A077931.P3058521390561968419

namespace A077931

/-- `and(1, ∑[n+1])-2*a(n-1)` -/
def P3058521390561968419.Spec : Prop :=
  ∀ n, P3058521390561968419.a n = A077931 n

end A077931

/-! ## A077931.P2801888308706233799

`C(and(n, -3), n)-2*a(n-1)` with `a(0)=1`
-/

namespace A077931.P2801888308706233799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (Int.land (n : ℤ) (-3)).toNat n : ℤ) - 2 * a (n - 1)

end

end A077931.P2801888308706233799

namespace A077931

/-- `C(and(n, -3), n)-2*a(n-1)` -/
def P2801888308706233799.Spec : Prop :=
  ∀ n, P2801888308706233799.a n = A077931 n

end A077931

/-! ## A077931.P18011970931187956797

`gcd(2, a(n-1)+n)-(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A077931.P18011970931187956797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd 2 (a (n - 1) + (n : ℤ)) : ℤ) - (2 * a (n - 1) + 1)

end

end A077931.P18011970931187956797

namespace A077931

/-- `gcd(2, a(n-1)+n)-(2*a(n-1)+1)` -/
def P18011970931187956797.Spec : Prop :=
  ∀ n, P18011970931187956797.a n = A077931 n

end A077931

/-! ## A077931.P13827092580817575418

`A133872(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A077931.P13827092580817575418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133872 n - (a (n - 1) + a (n - 1))

end

end A077931.P13827092580817575418

namespace A077931

/-- `A133872(n)-(a(n-1)+a(n-1))` -/
def P13827092580817575418.Spec : Prop :=
  ∀ n, P13827092580817575418.a n = A077931 n

end A077931

/-! ## A077931.P10644995406175300170

`A000045(and(2, n-2))-2*a(n-1)` with `a(0)=1`
-/

namespace A077931.P10644995406175300170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (Int.land 2 ((n : ℤ) - 2)).toNat - 2 * a (n - 1)

end

end A077931.P10644995406175300170

namespace A077931

/-- `A000045(and(2, n-2))-2*a(n-1)` -/
def P10644995406175300170.Spec : Prop :=
  ∀ n, P10644995406175300170.a n = A077931 n

end A077931

/-! ## A077931.P11976053221843393383

`A033999(n)*A115451(n)`
-/

namespace A077931.P11976053221843393383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A115451 n

end

end A077931.P11976053221843393383

namespace A077931

/-- `A033999(n)*A115451(n)` -/
def P11976053221843393383.Spec : Prop :=
  ∀ n, P11976053221843393383.a n = A077931 n

end A077931

/-! ## A077931.P17811300054430396220

`A056594(2*n)*A115451(n)`
-/

namespace A077931.P17811300054430396220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A115451 n

end

end A077931.P17811300054430396220

namespace A077931

/-- `A056594(2*n)*A115451(n)` -/
def P17811300054430396220.Spec : Prop :=
  ∀ n, P17811300054430396220.a n = A077931 n

end A077931

/-! ## A077931.P12359001811311740554

`A112030(2*n+1)*A115451(n)`
-/

namespace A077931.P12359001811311740554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112030 (2 * n + 1) * A115451 n

end

end A077931.P12359001811311740554

namespace A077931

/-- `A112030(2*n+1)*A115451(n)` -/
def P12359001811311740554.Spec : Prop :=
  ∀ n, P12359001811311740554.a n = A077931 n

end A077931

/-! ## A077931.P15034370958261165473

`(A000034(n+1)-A000034(n))*A115451(n)`
-/

namespace A077931.P15034370958261165473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 (n + 1) - A000034 n) * A115451 n

end

end A077931.P15034370958261165473

namespace A077931

/-- `(A000034(n+1)-A000034(n))*A115451(n)` -/
def P15034370958261165473.Spec : Prop :=
  ∀ n, P15034370958261165473.a n = A077931 n

end A077931

/-! ## A077931.P12997518081641115405

`(A000035(n+1)-A000035(n))*A115451(n)`
-/

namespace A077931.P12997518081641115405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A115451 n

end

end A077931.P12997518081641115405

namespace A077931

/-- `(A000035(n+1)-A000035(n))*A115451(n)` -/
def P12997518081641115405.Spec : Prop :=
  ∀ n, P12997518081641115405.a n = A077931 n

end A077931

/-! ## A077931.P10297796328336501454

`∑[round((-2)^(n+2)/5)]`
-/

namespace A077931.P10297796328336501454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ (n + 2) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077931.P10297796328336501454

namespace A077931

/-- `∑[round((-2)^(n+2)/5)]` -/
def P10297796328336501454.Spec : Prop :=
  ∀ n, P10297796328336501454.a n = A077931 n

end A077931

/-! ## A077931.P18077355573844173532

`floor(2*A140966(n+2)/5)`
-/

namespace A077931.P18077355573844173532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A140966 (n + 2) : ℚ) / 5⌋

end

end A077931.P18077355573844173532

namespace A077931

/-- `floor(2*A140966(n+2)/5)` -/
def P18077355573844173532.Spec : Prop :=
  ∀ n, P18077355573844173532.a n = A077931 n

end A077931

/-! ## A077931.P5603624284426699005

`floor(A083594(n+1)/5)`
-/

namespace A077931.P5603624284426699005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A083594 (n + 1) : ℚ) / 5⌋

end

end A077931.P5603624284426699005

namespace A077931

/-- `floor(A083594(n+1)/5)` -/
def P5603624284426699005.Spec : Prop :=
  ∀ n, P5603624284426699005.a n = A077931 n

end A077931

/-! ## A077931.P8638684020542846147

`A007814(A282079(n)+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A077931.P8638684020542846147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007814 (A282079 n + 1).toNat - 2 * a (n - 1)

end

end A077931.P8638684020542846147

namespace A077931

/-- `A007814(A282079(n)+1)-2*a(n-1)` -/
def P8638684020542846147.Spec : Prop :=
  ∀ n, P8638684020542846147.a n = A077931 n

end A077931

/-! ## A077931.P9764648942828156871

`(A112030(n²)-2)*A115451(n)`
-/

namespace A077931.P9764648942828156871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112030 (n ^ 2) - 2) * A115451 n

end

end A077931.P9764648942828156871

namespace A077931

/-- `(A112030(n²)-2)*A115451(n)` -/
def P9764648942828156871.Spec : Prop :=
  ∀ n, P9764648942828156871.a n = A077931 n

end A077931

/-!
# A077932: Expansion of (1-x)^(-1)/(1+2*x+2*x^2-2*x^3).

The programs for A077932, the canonical program `A077932.P11424486689276807369` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077932 has offset 0).

The definition of A077932 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^3+2x^4))` (program `A077932.P11424486689276807369`, by `A077932.P11424486689276807369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077932.P11424486689276807369

`ogf(1/(1+x-4x^3+2x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077932

/-- `ogf(1/(1+x-4x^3+2x^4))` -/
def P11424486689276807369.Spec : Prop :=
  ∀ n, P11424486689276807369.a n = A077932 n

theorem P11424486689276807369.correct : P11424486689276807369.Spec := by
  intro n
  simp only [A077932]

end A077932

/-! ## A077932.P544009755238874824

`∑[A077991(n)]`
-/

namespace A077932.P544009755238874824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077932.P544009755238874824

namespace A077932

/-- `∑[A077991(n)]` -/
def P544009755238874824.Spec : Prop :=
  ∀ n, P544009755238874824.a n = A077932 n

end A077932

/-! ## A077932.P1096929856998977642

`∑[∑[A078005(n)]*A033999(n)]`
-/

namespace A077932.P1096929856998977642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078005 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077932.P1096929856998977642

namespace A077932

/-- `∑[∑[A078005(n)]*A033999(n)]` -/
def P1096929856998977642.Spec : Prop :=
  ∀ n, P1096929856998977642.a n = A077932 n

end A077932

/-! ## A077932.P9303816930644502267

`∑[(A004442(n)-n)*A077945(n)]`
-/

namespace A077932.P9303816930644502267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077932.P9303816930644502267

namespace A077932

/-- `∑[(A004442(n)-n)*A077945(n)]` -/
def P9303816930644502267.Spec : Prop :=
  ∀ n, P9303816930644502267.a n = A077932 n

end A077932

/-! ## A077932.P1687868613690633271

`∑[∑[A078067(n)]]`
-/

namespace A077932.P1687868613690633271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078067 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077932.P1687868613690633271

namespace A077932

/-- `∑[∑[A078067(n)]]` -/
def P1687868613690633271.Spec : Prop :=
  ∀ n, P1687868613690633271.a n = A077932 n

end A077932

/-!
# A077933: Expansion of (1-x)^(-1)/(1+2*x+2*x^2-x^3).

The programs for A077933, the canonical program `A077933.P1046588112689875089` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077933 has offset 0).

The definition of A077933 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-3x^3+x^4))` (program `A077933.P1046588112689875089`, by `A077933.P1046588112689875089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077933.P1046588112689875089

`ogf(1/(1+x-3x^3+x^4))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077933

/-- `ogf(1/(1+x-3x^3+x^4))` -/
def P1046588112689875089.Spec : Prop :=
  ∀ n, P1046588112689875089.a n = A077933 n

theorem P1046588112689875089.correct : P1046588112689875089.Spec := by
  intro n
  simp only [A077933]

end A077933

/-! ## A077933.P10334723229585602872

`∑[A077992(n)]`
-/

namespace A077933.P10334723229585602872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077933.P10334723229585602872

namespace A077933

/-- `∑[A077992(n)]` -/
def P10334723229585602872.Spec : Prop :=
  ∀ n, P10334723229585602872.a n = A077933 n

end A077933

/-! ## A077933.P11566963862505713801

`∑[(-1)^n*∑[A078004(n)]]`
-/

namespace A077933.P11566963862505713801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077933.P11566963862505713801

namespace A077933

/-- `∑[(-1)^n*∑[A078004(n)]]` -/
def P11566963862505713801.Spec : Prop :=
  ∀ n, P11566963862505713801.a n = A077933 n

end A077933

/-! ## A077933.P17002908812478978895

`A077992(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A077933.P17002908812478978895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077992 n + a (A023443 n).toNat

end

end A077933.P17002908812478978895

namespace A077933

/-- `A077992(n)+a(A023443(n))` -/
def P17002908812478978895.Spec : Prop :=
  ∀ n, P17002908812478978895.a n = A077933 n

end A077933

/-! ## A077933.P9499194376978071765

`∑[∑[A078004(n)]*A033999(n)]`
-/

namespace A077933.P9499194376978071765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077933.P9499194376978071765

namespace A077933

/-- `∑[∑[A078004(n)]*A033999(n)]` -/
def P9499194376978071765.Spec : Prop :=
  ∀ n, P9499194376978071765.a n = A077933 n

end A077933

/-! ## A077933.P17536243534762561400

`∑[∑[A078068(n)]]`
-/

namespace A077933.P17536243534762561400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078068 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077933.P17536243534762561400

namespace A077933

/-- `∑[∑[A078068(n)]]` -/
def P17536243534762561400.Spec : Prop :=
  ∀ n, P17536243534762561400.a n = A077933 n

end A077933

/-!
# A077936: Expansion of 1/(1 - 2*x - 2*x^2 - x^3).

The programs for A077936, the canonical program `A077936.P9789707933178327542` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077936 has offset 0).

The definition of A077936 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2-x^3))` (program `A077936.P9789707933178327542`, by `A077936.P9789707933178327542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077936.P9789707933178327542

`ogf(1/(1-2x-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077936

/-- `ogf(1/(1-2x-2x^2-x^3))` -/
def P9789707933178327542.Spec : Prop :=
  ∀ n, P9789707933178327542.a n = A077936 n

theorem P9789707933178327542.correct : P9789707933178327542.Spec := by
  intro n
  simp only [A077936]

end A077936

/-! ## A077936.P2924320934388998267

`2*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077936.P2924320934388998267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A077936.P2924320934388998267

namespace A077936

/-- `2*a(n-1)+2*a(n-2)+a(n-3)` -/
def P2924320934388998267.Spec : Prop :=
  ∀ n, (P2924320934388998267.a n : ℤ) = A077936 n

end A077936

/-! ## A077936.P16990573960656264234

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077936.P16990573960656264234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  a (n - 3) + 2 * (a (n - 1) + a (n - 2))

end

end A077936.P16990573960656264234

namespace A077936

/-- `a(n-3)+2*(a(n-1)+a(n-2))` -/
def P16990573960656264234.Spec : Prop :=
  ∀ n, (P16990573960656264234.a n : ℤ) = A077936 n

end A077936

/-! ## A077936.P8251522296004963062

`abs(A077983(n))`
-/

namespace A077936.P8251522296004963062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077983 n|

end

end A077936.P8251522296004963062

namespace A077936

/-- `abs(A077983(n))` -/
def P8251522296004963062.Spec : Prop :=
  ∀ n, P8251522296004963062.a n = A077936 n

end A077936

/-! ## A077936.P12141925153911293854

`∑[A077995(n)]`
-/

namespace A077936.P12141925153911293854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077936.P12141925153911293854

namespace A077936

/-- `∑[A077995(n)]` -/
def P12141925153911293854.Spec : Prop :=
  ∀ n, P12141925153911293854.a n = A077936 n

end A077936

/-! ## A077936.P13010780884764178793

`abs(∑[A078054(n)])`
-/

namespace A077936.P13010780884764178793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077936.P13010780884764178793

namespace A077936

/-- `abs(∑[A078054(n)])` -/
def P13010780884764178793.Spec : Prop :=
  ∀ n, P13010780884764178793.a n = A077936 n

end A077936

/-! ## A077936.P7099997394459757548

`A033999(n)*A077983(n)`
-/

namespace A077936.P7099997394459757548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077983 n

end

end A077936.P7099997394459757548

namespace A077936

/-- `A033999(n)*A077983(n)` -/
def P7099997394459757548.Spec : Prop :=
  ∀ n, P7099997394459757548.a n = A077936 n

end A077936

/-! ## A077936.P1186649133995427755

`gcd(A000038(n), A077983(n))`
-/

namespace A077936.P1186649133995427755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077983 n)

end

end A077936.P1186649133995427755

namespace A077936

/-- `gcd(A000038(n), A077983(n))` -/
def P1186649133995427755.Spec : Prop :=
  ∀ n, (P1186649133995427755.a n : ℤ) = A077936 n

end A077936

/-! ## A077936.P10041087475980782067

`lcm(A020985(n), A077983(n))`
-/

namespace A077936.P10041087475980782067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A077983 n)

end

end A077936.P10041087475980782067

namespace A077936

/-- `lcm(A020985(n), A077983(n))` -/
def P10041087475980782067.Spec : Prop :=
  ∀ n, (P10041087475980782067.a n : ℤ) = A077936 n

end A077936

/-! ## A077936.P2557508695889116030

`A077995(n+1)-A221677(n+1)`
-/

namespace A077936.P2557508695889116030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 (n + 1) - A221677 (n + 1)

end

end A077936.P2557508695889116030

namespace A077936

/-- `A077995(n+1)-A221677(n+1)` -/
def P2557508695889116030.Spec : Prop :=
  ∀ n, P2557508695889116030.a n = A077936 n

end A077936

/-! ## A077936.P16911782480773948311

`(A233828(n+1)+A233828(n+2))/2`
-/

namespace A077936.P16911782480773948311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233828 (n + 1) + A233828 (n + 2) : ℚ) / 2

end

end A077936.P16911782480773948311

namespace A077936

/-- `(A233828(n+1)+A233828(n+2))/2` -/
def P16911782480773948311.Spec : Prop :=
  ∀ n, P16911782480773948311.a n = (A077936 n : ℚ)

end A077936

/-! ## A077936.P17405463393065411344

`Δ[A193642(n+1)/4]`
-/

namespace A077936.P17405463393065411344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193642 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077936.P17405463393065411344

namespace A077936

/-- `Δ[A193642(n+1)/4]` -/
def P17405463393065411344.Spec : Prop :=
  ∀ n, P17405463393065411344.a n = (A077936 n : ℚ)

end A077936

/-! ## A077936.P10213256978562693923

`Δ[A193648(∑[n+2])]/4`
-/

namespace A077936.P10213256978562693923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193648 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 4

end

end A077936.P10213256978562693923

namespace A077936

/-- `Δ[A193648(∑[n+2])]/4` -/
def P10213256978562693923.Spec : Prop :=
  ∀ n, P10213256978562693923.a n = (A077936 n : ℚ)

end A077936

/-!
# A077937: Expansion of 1/(1-2*x-2*x^2+2*x^3).

The programs for A077937, the canonical program `A077937.P12820542227121590552` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077937 has offset 0).

The definition of A077937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2+2x^3))` (program `A077937.P12820542227121590552`, by `A077937.P12820542227121590552.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077937.P12820542227121590552

`ogf(1/(1-2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077937

/-- `ogf(1/(1-2x-2x^2+2x^3))` -/
def P12820542227121590552.Spec : Prop :=
  ∀ n, P12820542227121590552.a n = A077937 n

theorem P12820542227121590552.correct : P12820542227121590552.Spec := by
  intro n
  simp only [A077937]

end A077937

/-! ## A077937.P7815893195079577754

`2*a(n-1)+2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077937.P7815893195079577754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3)

end

end A077937.P7815893195079577754

namespace A077937

/-- `2*a(n-1)+2*a(n-2)-2*a(n-3)` -/
def P7815893195079577754.Spec : Prop :=
  ∀ n, P7815893195079577754.a n = A077937 n

end A077937

/-! ## A077937.P7373875085248989353

`2*(a(n-1)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A077937.P7373875085248989353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n a =>
  2 * (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A077937.P7373875085248989353

namespace A077937

/-- `2*(a(n-1)+a(n-2)-a(n-3))` -/
def P7373875085248989353.Spec : Prop :=
  ∀ n, P7373875085248989353.a n = A077937 n

end A077937

/-! ## A077937.P18191491171538413722

`abs(A077981(n))`
-/

namespace A077937.P18191491171538413722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077981 n|

end

end A077937.P18191491171538413722

namespace A077937

/-- `abs(A077981(n))` -/
def P18191491171538413722.Spec : Prop :=
  ∀ n, P18191491171538413722.a n = A077937 n

end A077937

/-! ## A077937.P1354554912826955156

`∑[A052528(n)]`
-/

namespace A077937.P1354554912826955156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077937.P1354554912826955156

namespace A077937

/-- `∑[A052528(n)]` -/
def P1354554912826955156.Spec : Prop :=
  ∀ n, P1354554912826955156.a n = A077937 n

end A077937

/-! ## A077937.P11487119216304515485

`∑[A052970(n+2)/2]`
-/

namespace A077937.P11487119216304515485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052970 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077937.P11487119216304515485

namespace A077937

/-- `∑[A052970(n+2)/2]` -/
def P11487119216304515485.Spec : Prop :=
  ∀ n, P11487119216304515485.a n = (A077937 n : ℚ)

end A077937

/-! ## A077937.P15726806564606174939

`A118649(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A077937.P15726806564606174939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A118649 n + a (n - 2)

end

end A077937.P15726806564606174939

namespace A077937

/-- `A118649(n)+a(n-2)` -/
def P15726806564606174939.Spec : Prop :=
  ∀ n, P15726806564606174939.a n = A077937 n

end A077937

/-! ## A077937.P715433370982811130

`A052970(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A077937.P715433370982811130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052970 n + 2 * a (n - 1)

end

end A077937.P715433370982811130

namespace A077937

/-- `A052970(n)+2*a(n-1)` -/
def P715433370982811130.Spec : Prop :=
  ∀ n, P715433370982811130.a n = A077937 n

end A077937

/-! ## A077937.P5850969544787219601

`A033999(n)*A077981(n)`
-/

namespace A077937.P5850969544787219601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077981 n

end

end A077937.P5850969544787219601

namespace A077937

/-- `A033999(n)*A077981(n)` -/
def P5850969544787219601.Spec : Prop :=
  ∀ n, P5850969544787219601.a n = A077937 n

end A077937

/-! ## A077937.P17460331617834542899

`gcd(A000038(n), A077981(n))`
-/

namespace A077937.P17460331617834542899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077981 n)

end

end A077937.P17460331617834542899

namespace A077937

/-- `gcd(A000038(n), A077981(n))` -/
def P17460331617834542899.Spec : Prop :=
  ∀ n, (P17460331617834542899.a n : ℤ) = A077937 n

end A077937

/-! ## A077937.P12839643973281033594

`lcm(A000034(n), A077981(n))`
-/

namespace A077937.P12839643973281033594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A077981 n)

end

end A077937.P12839643973281033594

namespace A077937

/-- `lcm(A000034(n), A077981(n))` -/
def P12839643973281033594.Spec : Prop :=
  ∀ n, (P12839643973281033594.a n : ℤ) = A077937 n

end A077937

/-! ## A077937.P7178717391439009586

`A052970(n+2)-A052970(n)`
-/

namespace A077937.P7178717391439009586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (n + 2) - A052970 n

end

end A077937.P7178717391439009586

namespace A077937

/-- `A052970(n+2)-A052970(n)` -/
def P7178717391439009586.Spec : Prop :=
  ∀ n, P7178717391439009586.a n = A077937 n

end A077937

/-! ## A077937.P10361775970980645164

`A036453(n+1)*A181306(n)`
-/

namespace A077937.P10361775970980645164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A181306 n

end

end A077937.P10361775970980645164

namespace A077937

/-- `A036453(n+1)*A181306(n)` -/
def P10361775970980645164.Spec : Prop :=
  ∀ n, P10361775970980645164.a n = A077937 n

end A077937

/-! ## A077937.P16892882128867719794

`2*A052528(n)-A052970(n)`
-/

namespace A077937.P16892882128867719794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052528 n - A052970 n

end

end A077937.P16892882128867719794

namespace A077937

/-- `2*A052528(n)-A052970(n)` -/
def P16892882128867719794.Spec : Prop :=
  ∀ n, P16892882128867719794.a n = A077937 n

end A077937

/-! ## A077937.P7918957444999237748

`A181306(n)*A280560(2*n)`
-/

namespace A077937.P7918957444999237748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n * A280560 (2 * n)

end

end A077937.P7918957444999237748

namespace A077937

/-- `A181306(n)*A280560(2*n)` -/
def P7918957444999237748.Spec : Prop :=
  ∀ n, P7918957444999237748.a n = A077937 n

end A077937

/-! ## A077937.P12949942882335860684

`A052970(n)+∑[A052970(n+1)]`
-/

namespace A077937.P12949942882335860684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052970 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077937.P12949942882335860684

namespace A077937

/-- `A052970(n)+∑[A052970(n+1)]` -/
def P12949942882335860684.Spec : Prop :=
  ∀ n, P12949942882335860684.a n = A077937 n

end A077937

/-! ## A077937.P2277510249913210998

`Δ[A052987(n)]`
-/

namespace A077937.P2277510249913210998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077937.P2277510249913210998

namespace A077937

/-- `Δ[A052987(n)]` -/
def P2277510249913210998.Spec : Prop :=
  ∀ n, P2277510249913210998.a n = A077937 n

end A077937

/-! ## A077937.P11087804553522907337

`∑[Δ[A106666(n)]/2]`
-/

namespace A077937.P11087804553522907337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106666 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077937.P11087804553522907337

namespace A077937

/-- `∑[Δ[A106666(n)]/2]` -/
def P11087804553522907337.Spec : Prop :=
  ∀ n, P11087804553522907337.a n = (A077937 n : ℚ)

end A077937

/-! ## A077937.P4657527252835439029

`(A106666(n+1)-1)/2`
-/

namespace A077937.P4657527252835439029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106666 (n + 1) - 1 : ℚ) / 2

end

end A077937.P4657527252835439029

namespace A077937

/-- `(A106666(n+1)-1)/2` -/
def P4657527252835439029.Spec : Prop :=
  ∀ n, P4657527252835439029.a n = (A077937 n : ℚ)

end A077937

/-!
# A077938: Expansion of 1/(1 - 2*x - x^2 - 2*x^3).

The programs for A077938, the canonical program `A077938.P2327701368931179112` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077938 has offset 0).

The definition of A077938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2-2x^3))` (program `A077938.P2327701368931179112`, by `A077938.P2327701368931179112.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077938.P2327701368931179112

`ogf(1/(1-2x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077938

/-- `ogf(1/(1-2x-x^2-2x^3))` -/
def P2327701368931179112.Spec : Prop :=
  ∀ n, P2327701368931179112.a n = A077938 n

theorem P2327701368931179112.correct : P2327701368931179112.Spec := by
  intro n
  simp only [A077938]

end A077938

/-! ## A077938.P12287231612118055673

`2*a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077938.P12287231612118055673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A077938.P12287231612118055673

namespace A077938

/-- `2*a(n-1)+a(n-2)+2*a(n-3)` -/
def P12287231612118055673.Spec : Prop :=
  ∀ n, (P12287231612118055673.a n : ℤ) = A077938 n

end A077938

/-! ## A077938.P18268301469248819048

`a(n-2)+2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077938.P18268301469248819048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + a (n - 3))

end

end A077938.P18268301469248819048

namespace A077938

/-- `a(n-2)+2*(a(n-1)+a(n-3))` -/
def P18268301469248819048.Spec : Prop :=
  ∀ n, (P18268301469248819048.a n : ℤ) = A077938 n

end A077938

/-! ## A077938.P2761342312688443554

`abs(A077987(n))`
-/

namespace A077938.P2761342312688443554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077987 n|

end

end A077938.P2761342312688443554

namespace A077938

/-- `abs(A077987(n))` -/
def P2761342312688443554.Spec : Prop :=
  ∀ n, P2761342312688443554.a n = A077938 n

end A077938

/-! ## A077938.P7874824475484524993

`∑[A077996(n)]`
-/

namespace A077938.P7874824475484524993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077938.P7874824475484524993

namespace A077938

/-- `∑[A077996(n)]` -/
def P7874824475484524993.Spec : Prop :=
  ∀ n, P7874824475484524993.a n = A077938 n

end A077938

/-! ## A077938.P16596065552488468328

`abs(∑[A078059(n)])`
-/

namespace A077938.P16596065552488468328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077938.P16596065552488468328

namespace A077938

/-- `abs(∑[A078059(n)])` -/
def P16596065552488468328.Spec : Prop :=
  ∀ n, P16596065552488468328.a n = A077938 n

end A077938

/-! ## A077938.P8812417430652051568

`A033999(n)*A077987(n)`
-/

namespace A077938.P8812417430652051568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077987 n

end

end A077938.P8812417430652051568

namespace A077938

/-- `A033999(n)*A077987(n)` -/
def P8812417430652051568.Spec : Prop :=
  ∀ n, P8812417430652051568.a n = A077938 n

end A077938

/-! ## A077938.P11953515439017919398

`gcd(A000038(n), A077987(n))`
-/

namespace A077938.P11953515439017919398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077987 n)

end

end A077938.P11953515439017919398

namespace A077938

/-- `gcd(A000038(n), A077987(n))` -/
def P11953515439017919398.Spec : Prop :=
  ∀ n, (P11953515439017919398.a n : ℤ) = A077938 n

end A077938

/-! ## A077938.P3915199321371587119

`lcm(A000034(n), A077987(n))`
-/

namespace A077938.P3915199321371587119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A077987 n)

end

end A077938.P3915199321371587119

namespace A077938

/-- `lcm(A000034(n), A077987(n))` -/
def P3915199321371587119.Spec : Prop :=
  ∀ n, (P3915199321371587119.a n : ℤ) = A077938 n

end A077938

/-! ## A077938.P15985014223575603699

`A056594(2*n)*A077987(n)`
-/

namespace A077938.P15985014223575603699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A077987 n

end

end A077938.P15985014223575603699

namespace A077938

/-- `A056594(2*n)*A077987(n)` -/
def P15985014223575603699.Spec : Prop :=
  ∀ n, P15985014223575603699.a n = A077938 n

end A077938

/-! ## A077938.P13134531078172294247

`A000930(n)/A199804(n)*A077987(n)`
-/

namespace A077938.P13134531078172294247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000930 n : ℚ) / (A199804 n : ℚ) * (A077987 n : ℚ)

end

end A077938.P13134531078172294247

namespace A077938

/-- `A000930(n)/A199804(n)*A077987(n)` -/
def P13134531078172294247.Spec : Prop :=
  ∀ n, P13134531078172294247.a n = (A077938 n : ℚ)

end A077938

/-!
# A077939: Expansion of 1/(1 - 2*x - x^2 - x^3).

The programs for A077939, the canonical program `A077939.P6500482132333844199` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077939 has offset 0).

The definition of A077939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2-x^3))` (program `A077939.P6500482132333844199`, by `A077939.P6500482132333844199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077939.P6500482132333844199

`ogf(1/(1-2x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077939

/-- `ogf(1/(1-2x-x^2-x^3))` -/
def P6500482132333844199.Spec : Prop :=
  ∀ n, P6500482132333844199.a n = A077939 n

theorem P6500482132333844199.correct : P6500482132333844199.Spec := by
  intro n
  simp only [A077939]

end A077939

/-! ## A077939.P7174594850042206199

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077939.P7174594850042206199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3)

end

end A077939.P7174594850042206199

namespace A077939

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P7174594850042206199.Spec : Prop :=
  ∀ n, (P7174594850042206199.a n : ℤ) = A077939 n

end A077939

/-! ## A077939.P7403627829209527387

`abs(A077986(n))`
-/

namespace A077939.P7403627829209527387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077986 n|

end

end A077939.P7403627829209527387

namespace A077939

/-- `abs(A077986(n))` -/
def P7403627829209527387.Spec : Prop :=
  ∀ n, P7403627829209527387.a n = A077939 n

end A077939

/-! ## A077939.P18352343869636109958

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A077939.P18352343869636109958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A077939.P18352343869636109958

namespace A077939

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P18352343869636109958.Spec : Prop :=
  ∀ n, (P18352343869636109958.a n : ℤ) = A077939 n

end A077939

/-! ## A077939.P13014150841500079693

`∑[A077997(n)]`
-/

namespace A077939.P13014150841500079693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077939.P13014150841500079693

namespace A077939

/-- `∑[A077997(n)]` -/
def P13014150841500079693.Spec : Prop :=
  ∀ n, P13014150841500079693.a n = A077939 n

end A077939

/-! ## A077939.P1958115433638430557

`A116413(n)-a(n-1)` with `a(0)=1`
-/

namespace A077939.P1958115433638430557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116413 n - a (n - 1)

end

end A077939.P1958115433638430557

namespace A077939

/-- `A116413(n)-a(n-1)` -/
def P1958115433638430557.Spec : Prop :=
  ∀ n, P1958115433638430557.a n = A077939 n

end A077939

/-! ## A077939.P14302871697621766559

`A375823(n)+A375821(n)`
-/

namespace A077939.P14302871697621766559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375823 n + A375821 n

end

end A077939.P14302871697621766559

namespace A077939

/-- `A375823(n)+A375821(n)` -/
def P14302871697621766559.Spec : Prop :=
  ∀ n, P14302871697621766559.a n = A077939 n

end A077939

/-! ## A077939.P12865595007169390421

`A033999(n)*A077986(n)`
-/

namespace A077939.P12865595007169390421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077986 n

end

end A077939.P12865595007169390421

namespace A077939

/-- `A033999(n)*A077986(n)` -/
def P12865595007169390421.Spec : Prop :=
  ∀ n, P12865595007169390421.a n = A077939 n

end A077939

/-! ## A077939.P3576256128072269696

`gcd(A000038(n), A077986(n))`
-/

namespace A077939.P3576256128072269696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077986 n)

end

end A077939.P3576256128072269696

namespace A077939

/-- `gcd(A000038(n), A077986(n))` -/
def P3576256128072269696.Spec : Prop :=
  ∀ n, (P3576256128072269696.a n : ℤ) = A077939 n

end A077939

/-! ## A077939.P6253427168970835447

`A077961(n)+2*A375823(n)`
-/

namespace A077939.P6253427168970835447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 n + 2 * A375823 n

end

end A077939.P6253427168970835447

namespace A077939

/-- `A077961(n)+2*A375823(n)` -/
def P6253427168970835447.Spec : Prop :=
  ∀ n, P6253427168970835447.a n = A077939 n

end A077939

/-! ## A077939.P8869950100370803808

`2*A375821(n)-A077961(n)`
-/

namespace A077939.P8869950100370803808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375821 n - A077961 n

end

end A077939.P8869950100370803808

namespace A077939

/-- `2*A375821(n)-A077961(n)` -/
def P8869950100370803808.Spec : Prop :=
  ∀ n, P8869950100370803808.a n = A077939 n

end A077939

/-! ## A077939.P11154114254795376694

`lcm(A008836(n+1), A077986(n))`
-/

namespace A077939.P11154114254795376694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A077986 n)

end

end A077939.P11154114254795376694

namespace A077939

/-- `lcm(A008836(n+1), A077986(n))` -/
def P11154114254795376694.Spec : Prop :=
  ∀ n, (P11154114254795376694.a n : ℤ) = A077939 n

end A077939

/-! ## A077939.P9854929874442832525

`∑[A033999(n)*A116413(n)]*A033999(n)`
-/

namespace A077939.P9854929874442832525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A116413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077939.P9854929874442832525

namespace A077939

/-- `∑[A033999(n)*A116413(n)]*A033999(n)` -/
def P9854929874442832525.Spec : Prop :=
  ∀ n, P9854929874442832525.a n = A077939 n

end A077939

/-! ## A077939.P11423337776881399741

`A109545(n+1)+A109545(n)-A077997(n)`
-/

namespace A077939.P11423337776881399741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 1) + (A109545 n - A077997 n)

end

end A077939.P11423337776881399741

namespace A077939

/-- `A109545(n+1)+A109545(n)-A077997(n)` -/
def P11423337776881399741.Spec : Prop :=
  ∀ n, P11423337776881399741.a n = A077939 n

end A077939

/-! ## A077939.P12840446080501115639

`abs(∑[A078058(n)])`
-/

namespace A077939.P12840446080501115639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077939.P12840446080501115639

namespace A077939

/-- `abs(∑[A078058(n)])` -/
def P12840446080501115639.Spec : Prop :=
  ∀ n, P12840446080501115639.a n = A077939 n

end A077939

/-! ## A077939.P13643548874519233545

`(A116413(n)+A077997(n))/2`
-/

namespace A077939.P13643548874519233545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116413 n + A077997 n : ℚ) / 2

end

end A077939.P13643548874519233545

namespace A077939

/-- `(A116413(n)+A077997(n))/2` -/
def P13643548874519233545.Spec : Prop :=
  ∀ n, P13643548874519233545.a n = (A077939 n : ℚ)

end A077939

/-! ## A077939.P17094178634374074959

`Δ[Δ[A077997(n)]]-A109545(n)`
-/

namespace A077939.P17094178634374074959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A109545 n

end

end A077939.P17094178634374074959

namespace A077939

/-- `Δ[Δ[A077997(n)]]-A109545(n)` -/
def P17094178634374074959.Spec : Prop :=
  ∀ n, P17094178634374074959.a n = A077939 n

end A077939

/-! ## A077939.P4496257756023500318

`(A077997(n)+abs(A078058(n)))/2`
-/

namespace A077939.P4496257756023500318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077997 n + |A078058 n| : ℚ) / 2

end

end A077939.P4496257756023500318

namespace A077939

/-- `(A077997(n)+abs(A078058(n)))/2` -/
def P4496257756023500318.Spec : Prop :=
  ∀ n, P4496257756023500318.a n = (A077939 n : ℚ)

end A077939

/-! ## A077939.P4006837179845212034

`Δ[A077849(n)]-A077997(n+1)`
-/

namespace A077939.P4006837179845212034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A077997 (n + 1)

end

end A077939.P4006837179845212034

namespace A077939

/-- `Δ[A077849(n)]-A077997(n+1)` -/
def P4006837179845212034.Spec : Prop :=
  ∀ n, P4006837179845212034.a n = A077939 n

end A077939

/-! ## A077939.P14022473794536430798

`Δ[A077997(n+1)]-A116413(n)`
-/

namespace A077939.P14022473794536430798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116413 n

end

end A077939.P14022473794536430798

namespace A077939

/-- `Δ[A077997(n+1)]-A116413(n)` -/
def P14022473794536430798.Spec : Prop :=
  ∀ n, P14022473794536430798.a n = A077939 n

end A077939

/-!
# A077940: Expansion of 1/(1-2*x+2*x^3).

The programs for A077940, the canonical program `A077940.P175637644981488811` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077940 has offset 0).

The definition of A077940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^3))` (program `A077940.P175637644981488811`, by `A077940.P175637644981488811.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077940.P175637644981488811

`ogf(1/(1-2x+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077940

/-- `ogf(1/(1-2x+2x^3))` -/
def P175637644981488811.Spec : Prop :=
  ∀ n, P175637644981488811.a n = A077940 n

theorem P175637644981488811.correct : P175637644981488811.Spec := by
  intro n
  simp only [A077940]

end A077940

/-! ## A077940.P9856508779735998615

`2*(a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077940.P9856508779735998615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) - a (n - 3))

end

end A077940.P9856508779735998615

namespace A077940

/-- `2*(a(n-1)-a(n-3))` -/
def P9856508779735998615.Spec : Prop :=
  ∀ n, P9856508779735998615.a n = A077940 n

end A077940

/-! ## A077940.P8457952841770281310

`(-1)^n*A077988(n)`
-/

namespace A077940.P8457952841770281310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077988 n

end

end A077940.P8457952841770281310

namespace A077940

/-- `(-1)^n*A077988(n)` -/
def P8457952841770281310.Spec : Prop :=
  ∀ n, P8457952841770281310.a n = A077940 n

end A077940

/-! ## A077940.P15579292282567058108

`a(n-1)+a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077940.P15579292282567058108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) - a (n - 3) - a (n - 3))

end

end A077940.P15579292282567058108

namespace A077940

/-- `a(n-1)+a(n-1)-a(n-3)-a(n-3)` -/
def P15579292282567058108.Spec : Prop :=
  ∀ n, P15579292282567058108.a n = A077940 n

end A077940

/-! ## A077940.P7266722146250096628

`a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A077940.P7266722146250096628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 1) - a (n - 3)))

end

end A077940.P7266722146250096628

namespace A077940

/-- `a(n-1)-(a(n-3)-(a(n-1)-a(n-3)))` -/
def P7266722146250096628.Spec : Prop :=
  ∀ n, P7266722146250096628.a n = A077940 n

end A077940

/-! ## A077940.P17063609385445599645

`a(n-1)+A124395(n)+a(n-1)` with `a(0)=1`
-/

namespace A077940.P17063609385445599645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A124395 n + a (n - 1))

end

end A077940.P17063609385445599645

namespace A077940

/-- `a(n-1)+A124395(n)+a(n-1)` -/
def P17063609385445599645.Spec : Prop :=
  ∀ n, P17063609385445599645.a n = A077940 n

end A077940

/-! ## A077940.P2392047814963293848

`A077988(n)/A033999(n)`
-/

namespace A077940.P2392047814963293848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077988 n : ℚ) / (A033999 n : ℚ)

end

end A077940.P2392047814963293848

namespace A077940

/-- `A077988(n)/A033999(n)` -/
def P2392047814963293848.Spec : Prop :=
  ∀ n, P2392047814963293848.a n = (A077940 n : ℚ)

end A077940

/-! ## A077940.P1690231137874600723

`A124395(n)-A124395(n+2)`
-/

namespace A077940.P1690231137874600723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124395 n - A124395 (n + 2)

end

end A077940.P1690231137874600723

namespace A077940

/-- `A124395(n)-A124395(n+2)` -/
def P1690231137874600723.Spec : Prop :=
  ∀ n, P1690231137874600723.a n = A077940 n

end A077940

/-! ## A077940.P8414712535091188389

`∑[-A073358(n+1)]`
-/

namespace A077940.P8414712535091188389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A073358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077940.P8414712535091188389

namespace A077940

/-- `∑[-A073358(n+1)]` -/
def P8414712535091188389.Spec : Prop :=
  ∀ n, P8414712535091188389.a n = A077940 n

end A077940

/-! ## A077940.P14139372865317026727

`A073314(n)-2*A124395(n)`
-/

namespace A077940.P14139372865317026727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073314 n - 2 * A124395 n

end

end A077940.P14139372865317026727

namespace A077940

/-- `A073314(n)-2*A124395(n)` -/
def P14139372865317026727.Spec : Prop :=
  ∀ n, P14139372865317026727.a n = A077940 n

end A077940

/-! ## A077940.P12627367414408315004

`∑[A033999(2*n+1)*A073358(n+1)]`
-/

namespace A077940.P12627367414408315004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A073358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077940.P12627367414408315004

namespace A077940

/-- `∑[A033999(2*n+1)*A073358(n+1)]` -/
def P12627367414408315004.Spec : Prop :=
  ∀ n, P12627367414408315004.a n = A077940 n

end A077940

/-!
# A077941: Expansion of 1/(1-2*x+x^2+x^3).

The programs for A077941, the canonical program `A077941.P6964393314891243148` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077941 has offset 0).

The definition of A077941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+x^3))` (program `A077941.P6964393314891243148`, by `A077941.P6964393314891243148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077941.P6964393314891243148

`ogf(1/(1-2x+x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077941

/-- `ogf(1/(1-2x+x^2+x^3))` -/
def P6964393314891243148.Spec : Prop :=
  ∀ n, P6964393314891243148.a n = A077941 n

theorem P6964393314891243148.correct : P6964393314891243148.Spec := by
  intro n
  simp only [A077941]

end A077941

/-! ## A077941.P16209472065995745243

`2*a(n-1)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077941.P16209472065995745243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 1) - (a (n - 2) + a (n - 3))

end

end A077941.P16209472065995745243

namespace A077941

/-- `2*a(n-1)-(a(n-2)+a(n-3))` -/
def P16209472065995745243.Spec : Prop :=
  ∀ n, P16209472065995745243.a n = A077941 n

end A077941

/-! ## A077941.P6808672786798565340

`2*a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077941.P6808672786798565340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) - a (n - 3)

end

end A077941.P6808672786798565340

namespace A077941

/-- `2*a(n-1)-a(n-2)-a(n-3)` -/
def P6808672786798565340.Spec : Prop :=
  ∀ n, P6808672786798565340.a n = A077941 n

end A077941

/-! ## A077941.P1223834390171410345

`a(n-1)+a(n-1)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077941.P1223834390171410345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 1) - (a (n - 2) + a (n - 3)))

end

end A077941.P1223834390171410345

namespace A077941

/-- `a(n-1)+a(n-1)-(a(n-2)+a(n-3))` -/
def P1223834390171410345.Spec : Prop :=
  ∀ n, P1223834390171410345.a n = A077941 n

end A077941

/-! ## A077941.P7857711765544813539

`a(n-1)-(a(n-2)-a(n-1))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077941.P7857711765544813539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1)) - a (n - 3)

end

end A077941.P7857711765544813539

namespace A077941

/-- `a(n-1)-(a(n-2)-a(n-1))-a(n-3)` -/
def P7857711765544813539.Spec : Prop :=
  ∀ n, P7857711765544813539.a n = A077941 n

end A077941

/-! ## A077941.P4011281003104036797

`∑[A078001(n)]`
-/

namespace A077941.P4011281003104036797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077941.P4011281003104036797

namespace A077941

/-- `∑[A078001(n)]` -/
def P4011281003104036797.Spec : Prop :=
  ∀ n, P4011281003104036797.a n = A077941 n

end A077941

/-! ## A077941.P8303849457365299260

`Δ[-A078001(n+2)]`
-/

namespace A077941.P8303849457365299260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078001 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077941.P8303849457365299260

namespace A077941

/-- `Δ[-A078001(n+2)]` -/
def P8303849457365299260.Spec : Prop :=
  ∀ n, P8303849457365299260.a n = A077941 n

end A077941

/-! ## A077941.P7745535465099483425

`A033999(n)*A077990(n)`
-/

namespace A077941.P7745535465099483425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077990 n

end

end A077941.P7745535465099483425

namespace A077941

/-- `A033999(n)*A077990(n)` -/
def P7745535465099483425.Spec : Prop :=
  ∀ n, P7745535465099483425.a n = A077941 n

end A077941

/-! ## A077941.P7298563291214381737

`A078001(n)-Δ[A078001(n+1)]`
-/

namespace A077941.P7298563291214381737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078001 n - (f1 (n + 1) - f1 n)

end

end A077941.P7298563291214381737

namespace A077941

/-- `A078001(n)-Δ[A078001(n+1)]` -/
def P7298563291214381737.Spec : Prop :=
  ∀ n, P7298563291214381737.a n = A077941 n

end A077941

/-! ## A077941.P9739350505588672187

`A078001(n+2)-A078001(n+3)`
-/

namespace A077941.P9739350505588672187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078001 (n + 2) - A078001 (n + 3)

end

end A077941.P9739350505588672187

namespace A077941

/-- `A078001(n+2)-A078001(n+3)` -/
def P9739350505588672187.Spec : Prop :=
  ∀ n, P9739350505588672187.a n = A077941 n

end A077941

/-! ## A077941.P2068555837431463535

`∑[A077961(2*n)*A087960(2*n)]`
-/

namespace A077941.P2068555837431463535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n) * A087960 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077941.P2068555837431463535

namespace A077941

/-- `∑[A077961(2*n)*A087960(2*n)]` -/
def P2068555837431463535.Spec : Prop :=
  ∀ n, P2068555837431463535.a n = A077941 n

end A077941

/-! ## A077941.P16737478868130389973

`(A077961(2*n+1)-A077961(2*n))*A033999(n+1)`
-/

namespace A077941.P16737478868130389973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077961 (2 * n + 1) - A077961 (2 * n)) * A033999 (n + 1)

end

end A077941.P16737478868130389973

namespace A077941

/-- `(A077961(2*n+1)-A077961(2*n))*A033999(n+1)` -/
def P16737478868130389973.Spec : Prop :=
  ∀ n, P16737478868130389973.a n = A077941 n

end A077941

/-! ## A077941.P14925516764255111544

`(A077961(2*n)-A077961(2*n+1))*A087960(2*n)`
-/

namespace A077941.P14925516764255111544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077961 (2 * n) - A077961 (2 * n + 1)) * A087960 (2 * n)

end

end A077941.P14925516764255111544

namespace A077941

/-- `(A077961(2*n)-A077961(2*n+1))*A087960(2*n)` -/
def P14925516764255111544.Spec : Prop :=
  ∀ n, P14925516764255111544.a n = A077941 n

end A077941

/-! ## A077941.P13096851136616626779

`A078031(2*n+1)*A087960(2*n+1)`
-/

namespace A077941.P13096851136616626779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078031 (2 * n + 1) * A087960 (2 * n + 1)

end

end A077941.P13096851136616626779

namespace A077941

/-- `A078031(2*n+1)*A087960(2*n+1)` -/
def P13096851136616626779.Spec : Prop :=
  ∀ n, P13096851136616626779.a n = A077941 n

end A077941

/-!
# A077942: Expansion of 1/(1-2*x+x^2+2*x^3).

The programs for A077942, the canonical program `A077942.P1332971640786242827` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077942 has offset 0).

The definition of A077942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+2x^3))` (program `A077942.P1332971640786242827`, by `A077942.P1332971640786242827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077942.P144770376138692973

`(-1)^n*A077989(n)`
-/

namespace A077942.P144770376138692973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077989 n

end

end A077942.P144770376138692973

namespace A077942

/-- `(-1)^n*A077989(n)` -/
def P144770376138692973.Spec : Prop :=
  ∀ n, P144770376138692973.a n = A077942 n

end A077942

/-! ## A077942.P1332971640786242827

`ogf(1/(1-2x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077942

/-- `ogf(1/(1-2x+x^2+2x^3))` -/
def P1332971640786242827.Spec : Prop :=
  ∀ n, P1332971640786242827.a n = A077942 n

theorem P1332971640786242827.correct : P1332971640786242827.Spec := by
  intro n
  simp only [A077942]

end A077942

/-! ## A077942.P18413466194177328051

`2*a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077942.P18413466194177328051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A077942.P18413466194177328051

namespace A077942

/-- `2*a(n-1)-a(n-2)-2*a(n-3)` -/
def P18413466194177328051.Spec : Prop :=
  ∀ n, P18413466194177328051.a n = A077942 n

end A077942

/-! ## A077942.P4069195644390252570

`∑[2*(a(n-1)-a(n-3))-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077942.P4069195644390252570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  2 * (f1 (n - 1) - f1 (n - 3)) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077942.P4069195644390252570

namespace A077942

/-- `∑[2*(a(n-1)-a(n-3))-a(n-2)]` -/
def P4069195644390252570.Spec : Prop :=
  ∀ n, P4069195644390252570.a n = A077942 n

end A077942

/-! ## A077942.P4746248304830698663

`∑[A078002(n)]`
-/

namespace A077942.P4746248304830698663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077942.P4746248304830698663

namespace A077942

/-- `∑[A078002(n)]` -/
def P4746248304830698663.Spec : Prop :=
  ∀ n, P4746248304830698663.a n = A077942 n

end A077942

/-! ## A077942.P2302138385324292295

`A077989(n)/A033999(n+2)`
-/

namespace A077942.P2302138385324292295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077989 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077942.P2302138385324292295

namespace A077942

/-- `A077989(n)/A033999(n+2)` -/
def P2302138385324292295.Spec : Prop :=
  ∀ n, P2302138385324292295.a n = (A077942 n : ℚ)

end A077942

/-! ## A077942.P3673302482942792440

`2*(a(n-1)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A077942.P3673302482942792440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  2 * (a (n - 1) - a (n - 3)) - a (n - 2)

end

end A077942.P3673302482942792440

namespace A077942

/-- `2*(a(n-1)-a(n-3))-a(n-2)` -/
def P3673302482942792440.Spec : Prop :=
  ∀ n, P3673302482942792440.a n = A077942 n

end A077942

/-!
# A077943: Expansion of 1/(1 - 2*x + 2*x^2 - 2*x^3).

The programs for A077943, the canonical program `A077943.P10892086496653283819` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077943 has offset 0).

The definition of A077943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2-2x^3))` (program `A077943.P10892086496653283819`, by `A077943.P10892086496653283819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077943.P10892086496653283819

`ogf(1/(1-2x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077943

/-- `ogf(1/(1-2x+2x^2-2x^3))` -/
def P10892086496653283819.Spec : Prop :=
  ∀ n, P10892086496653283819.a n = A077943 n

theorem P10892086496653283819.correct : P10892086496653283819.Spec := by
  intro n
  simp only [A077943]

end A077943

/-! ## A077943.P18335569347130147727

`2*a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077943.P18335569347130147727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3)

end

end A077943.P18335569347130147727

namespace A077943

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P18335569347130147727.Spec : Prop :=
  ∀ n, P18335569347130147727.a n = A077943 n

end A077943

/-! ## A077943.P1866568094115016866

`(-1)^n*A077993(n)`
-/

namespace A077943.P1866568094115016866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077993 n

end

end A077943.P1866568094115016866

namespace A077943

/-- `(-1)^n*A077993(n)` -/
def P1866568094115016866.Spec : Prop :=
  ∀ n, P1866568094115016866.a n = A077943 n

end A077943

/-! ## A077943.P11243783645301363770

`a(n-1)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A077943.P11243783645301363770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A077943.P11243783645301363770

namespace A077943

/-- `a(n-1)+2*a(n-4)` -/
def P11243783645301363770.Spec : Prop :=
  ∀ n, (P11243783645301363770.a n : ℤ) = A077943 n

end A077943

/-! ## A077943.P2330133409084880990

`a(n-1)+a(n-4)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A077943.P2330133409084880990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2] fun n a =>
  a (n - 1) + (a (n - 4) + a (n - 4))

end

end A077943.P2330133409084880990

namespace A077943

/-- `a(n-1)+a(n-4)+a(n-4)` -/
def P2330133409084880990.Spec : Prop :=
  ∀ n, (P2330133409084880990.a n : ℤ) = A077943 n

end A077943

/-! ## A077943.P10874542049740127259

`2*(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077943.P10874542049740127259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A077943.P10874542049740127259

namespace A077943

/-- `2*(a(n-1)-(a(n-2)-a(n-3)))` -/
def P10874542049740127259.Spec : Prop :=
  ∀ n, P10874542049740127259.a n = A077943 n

end A077943

/-! ## A077943.P8691924799187246888

`abs(A077993(n))`
-/

namespace A077943.P8691924799187246888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077993 n|

end

end A077943.P8691924799187246888

namespace A077943

/-- `abs(A077993(n))` -/
def P8691924799187246888.Spec : Prop :=
  ∀ n, P8691924799187246888.a n = A077943 n

end A077943

/-! ## A077943.P17549271578784895851

`∑[A078003(n)]`
-/

namespace A077943.P17549271578784895851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077943.P17549271578784895851

namespace A077943

/-- `∑[A078003(n)]` -/
def P17549271578784895851.Spec : Prop :=
  ∀ n, P17549271578784895851.a n = A077943 n

end A077943

/-! ## A077943.P5542826782669290850

`∑[A122788(n+1)]`
-/

namespace A077943.P5542826782669290850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077943.P5542826782669290850

namespace A077943

/-- `∑[A122788(n+1)]` -/
def P5542826782669290850.Spec : Prop :=
  ∀ n, P5542826782669290850.a n = A077943 n

end A077943

/-! ## A077943.P9853293091127465189

`gcd(A000038(n), A077993(n))`
-/

namespace A077943.P9853293091127465189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077993 n)

end

end A077943.P9853293091127465189

namespace A077943

/-- `gcd(A000038(n), A077993(n))` -/
def P9853293091127465189.Spec : Prop :=
  ∀ n, (P9853293091127465189.a n : ℤ) = A077943 n

end A077943

/-! ## A077943.P13241505660623476763

`lcm(A000034(n), A077993(n))`
-/

namespace A077943.P13241505660623476763
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A077993 n)

end

end A077943.P13241505660623476763

namespace A077943

/-- `lcm(A000034(n), A077993(n))` -/
def P13241505660623476763.Spec : Prop :=
  ∀ n, (P13241505660623476763.a n : ℤ) = A077943 n

end A077943

/-! ## A077943.P8255163738267269333

`A078003(n+1)+2*A122788(n)`
-/

namespace A077943.P8255163738267269333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 (n + 1) + 2 * A122788 n

end

end A077943.P8255163738267269333

namespace A077943

/-- `A078003(n+1)+2*A122788(n)` -/
def P8255163738267269333.Spec : Prop :=
  ∀ n, P8255163738267269333.a n = A077943 n

end A077943

/-! ## A077943.P17555871306284717701

`Δ[A393995(n)]`
-/

namespace A077943.P17555871306284717701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077943.P17555871306284717701

namespace A077943

/-- `Δ[A393995(n)]` -/
def P17555871306284717701.Spec : Prop :=
  ∀ n, P17555871306284717701.a n = A077943 n

end A077943

/-! ## A077943.P4679064926294234499

`A393995(n+1)-A393995(n)`
-/

namespace A077943.P4679064926294234499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393995 (n + 1) - A393995 n

end

end A077943.P4679064926294234499

namespace A077943

/-- `A393995(n+1)-A393995(n)` -/
def P4679064926294234499.Spec : Prop :=
  ∀ n, P4679064926294234499.a n = A077943 n

end A077943

/-! ## A077943.P12596555689763331214

`A104767(n+1)-Δ[Δ[A104767(n+1)]]`
-/

namespace A077943.P12596555689763331214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 1) - (f1 (n + 1) - f1 n)

end

end A077943.P12596555689763331214

namespace A077943

/-- `A104767(n+1)-Δ[Δ[A104767(n+1)]]` -/
def P12596555689763331214.Spec : Prop :=
  ∀ n, P12596555689763331214.a n = A077943 n

end A077943

/-! ## A077943.P95676070591905705

`A077858(n+1)-(A078003(n+1)+A077858(n))`
-/

namespace A077943.P95676070591905705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077858 (n + 1) - (A078003 (n + 1) + A077858 n)

end

end A077943.P95676070591905705

namespace A077943

/-- `A077858(n+1)-(A078003(n+1)+A077858(n))` -/
def P95676070591905705.Spec : Prop :=
  ∀ n, P95676070591905705.a n = A077943 n

end A077943

/-! ## A077943.P14803809098844695913

`Δ[Δ[A104767(n+3)]]`
-/

namespace A077943.P14803809098844695913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077943.P14803809098844695913

namespace A077943

/-- `Δ[Δ[A104767(n+3)]]` -/
def P14803809098844695913.Spec : Prop :=
  ∀ n, P14803809098844695913.a n = A077943 n

end A077943

/-! ## A077943.P7400069206402597619

`abs(∑[A078071(n)])`
-/

namespace A077943.P7400069206402597619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077943.P7400069206402597619

namespace A077943

/-- `abs(∑[A078071(n)])` -/
def P7400069206402597619.Spec : Prop :=
  ∀ n, P7400069206402597619.a n = A077943 n

end A077943

/-! ## A077943.P4963390958078821992

`A251928(n+1)-2^(n+2)`
-/

namespace A077943.P4963390958078821992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251928 (n + 1) - (2 ^ (n + 2) : ℤ)

end

end A077943.P4963390958078821992

namespace A077943

/-- `A251928(n+1)-2^(n+2)` -/
def P4963390958078821992.Spec : Prop :=
  ∀ n, P4963390958078821992.a n = A077943 n

end A077943

/-! ## A077943.P4820251060091329461

`A251928(n+1)%A020707(n)`
-/

namespace A077943.P4820251060091329461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A251928 (n + 1)) (A020707 n)

end

end A077943.P4820251060091329461

namespace A077943

/-- `A251928(n+1)%A020707(n)` -/
def P4820251060091329461.Spec : Prop :=
  ∀ n, P4820251060091329461.a n = A077943 n

end A077943

/-!
# A077944: Expansion of 1/(1-2*x+2*x^2+x^3).

The programs for A077944, the canonical program `A077944.P5568619367755739641` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077944 has offset 0).

The definition of A077944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2+x^3))` (program `A077944.P5568619367755739641`, by `A077944.P5568619367755739641.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077944.P5568619367755739641

`ogf(1/(1-2x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077944

/-- `ogf(1/(1-2x+2x^2+x^3))` -/
def P5568619367755739641.Spec : Prop :=
  ∀ n, P5568619367755739641.a n = A077944 n

theorem P5568619367755739641.correct : P5568619367755739641.Spec := by
  intro n
  simp only [A077944]

end A077944

/-! ## A077944.P3474903675023010330

`2*(a(n-1)-a(n-2))-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077944.P3474903675023010330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * (a (n - 1) - a (n - 2)) - a (n - 3)

end

end A077944.P3474903675023010330

namespace A077944

/-- `2*(a(n-1)-a(n-2))-a(n-3)` -/
def P3474903675023010330.Spec : Prop :=
  ∀ n, P3474903675023010330.a n = A077944 n

end A077944

/-! ## A077944.P8443260146997830336

`a(n-1)+a(n-1)-(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077944.P8443260146997830336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) + (a (n - 1) - (a (n - 2) + (a (n - 2) + a (n - 3))))

end

end A077944.P8443260146997830336

namespace A077944

/-- `a(n-1)+a(n-1)-(a(n-2)+a(n-2)+a(n-3))` -/
def P8443260146997830336.Spec : Prop :=
  ∀ n, P8443260146997830336.a n = A077944 n

end A077944

/-! ## A077944.P2805662670607227594

`a(n-1)-(a(n-2)-(a(n-1)-a(n-2)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077944.P2805662670607227594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (a (n - 2) - (a (n - 1) - a (n - 2) - a (n - 3)))

end

end A077944.P2805662670607227594

namespace A077944

/-- `a(n-1)-(a(n-2)-(a(n-1)-a(n-2)-a(n-3)))` -/
def P2805662670607227594.Spec : Prop :=
  ∀ n, P2805662670607227594.a n = A077944 n

end A077944

/-! ## A077944.P10464882698439936926

`∑[A078004(n)]`
-/

namespace A077944.P10464882698439936926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077944.P10464882698439936926

namespace A077944

/-- `∑[A078004(n)]` -/
def P10464882698439936926.Spec : Prop :=
  ∀ n, P10464882698439936926.a n = A077944 n

end A077944

/-! ## A077944.P8211446691503064818

`A033999(n)*A077992(n)`
-/

namespace A077944.P8211446691503064818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077992 n

end

end A077944.P8211446691503064818

namespace A077944

/-- `A033999(n)*A077992(n)` -/
def P8211446691503064818.Spec : Prop :=
  ∀ n, P8211446691503064818.a n = A077944 n

end A077944

/-! ## A077944.P14057424586640541692

`(A004442(n)-n)*A077992(n)`
-/

namespace A077944.P14057424586640541692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077992 n

end

end A077944.P14057424586640541692

namespace A077944

/-- `(A004442(n)-n)*A077992(n)` -/
def P14057424586640541692.Spec : Prop :=
  ∀ n, P14057424586640541692.a n = A077944 n

end A077944

/-!
# A077945: Expansion of 1/(1-2*x+2*x^2+2*x^3).

The programs for A077945, the canonical program `A077945.P7758818137486819732` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077945 has offset 0).

The definition of A077945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^2+2x^3))` (program `A077945.P7758818137486819732`, by `A077945.P7758818137486819732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077945.P7758818137486819732

`ogf(1/(1-2x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077945

/-- `ogf(1/(1-2x+2x^2+2x^3))` -/
def P7758818137486819732.Spec : Prop :=
  ∀ n, P7758818137486819732.a n = A077945 n

theorem P7758818137486819732.correct : P7758818137486819732.Spec := by
  intro n
  simp only [A077945]

end A077945

/-! ## A077945.P13454170298419248170

`2*(a(n-1)-(a(n-2)+a(n-3)))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077945.P13454170298419248170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * (a (n - 1) - (a (n - 2) + a (n - 3)))

end

end A077945.P13454170298419248170

namespace A077945

/-- `2*(a(n-1)-(a(n-2)+a(n-3)))` -/
def P13454170298419248170.Spec : Prop :=
  ∀ n, P13454170298419248170.a n = A077945 n

end A077945

/-! ## A077945.P4404674699646246783

`2*(a(n-1)-a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077945.P4404674699646246783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * (a (n - 1) - a (n - 2) - a (n - 3))

end

end A077945.P4404674699646246783

namespace A077945

/-- `2*(a(n-1)-a(n-2)-a(n-3))` -/
def P4404674699646246783.Spec : Prop :=
  ∀ n, P4404674699646246783.a n = A077945 n

end A077945

/-! ## A077945.P6189845070971381393

`∑[A078005(n)]`
-/

namespace A077945.P6189845070971381393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077945.P6189845070971381393

namespace A077945

/-- `∑[A078005(n)]` -/
def P6189845070971381393.Spec : Prop :=
  ∀ n, P6189845070971381393.a n = A077945 n

end A077945

/-! ## A077945.P17700076997840363473

`(-1)^n*A077991(n)`
-/

namespace A077945.P17700076997840363473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077991 n

end

end A077945.P17700076997840363473

namespace A077945

/-- `(-1)^n*A077991(n)` -/
def P17700076997840363473.Spec : Prop :=
  ∀ n, P17700076997840363473.a n = A077945 n

end A077945

/-! ## A077945.P4810423328335779284

`A077991(n)/A033999(n)`
-/

namespace A077945.P4810423328335779284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077991 n : ℚ) / (A033999 n : ℚ)

end

end A077945.P4810423328335779284

namespace A077945

/-- `A077991(n)/A033999(n)` -/
def P4810423328335779284.Spec : Prop :=
  ∀ n, P4810423328335779284.a n = (A077945 n : ℚ)

end A077945

/-! ## A077945.P8869948520804481592

`∑[A078067(n)]*A033999(n)`
-/

namespace A077945.P8869948520804481592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077945.P8869948520804481592

namespace A077945

/-- `∑[A078067(n)]*A033999(n)` -/
def P8869948520804481592.Spec : Prop :=
  ∀ n, P8869948520804481592.a n = A077945 n

end A077945

/-!
# A077946: Expansion of 1/(1 - x - 2*x^2 - 2*x^3).

The programs for A077946, the canonical program `A077946.P930145384438699670` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077946 has offset 0).

The definition of A077946 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^2-2x^3))` (program `A077946.P930145384438699670`, by `A077946.P930145384438699670.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077946.P930145384438699670

`ogf(1/(1-x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077946

/-- `ogf(1/(1-x-2x^2-2x^3))` -/
def P930145384438699670.Spec : Prop :=
  ∀ n, P930145384438699670.a n = A077946 n

theorem P930145384438699670.correct : P930145384438699670.Spec := by
  intro n
  simp only [A077946]

end A077946

/-! ## A077946.P10476217667202591414

`a(n-1)+2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077946.P10476217667202591414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + 2 * a (n - 2) + 2 * a (n - 3)

end

end A077946.P10476217667202591414

namespace A077946

/-- `a(n-1)+2*a(n-2)+2*a(n-3)` -/
def P10476217667202591414.Spec : Prop :=
  ∀ n, (P10476217667202591414.a n : ℤ) = A077946 n

end A077946

/-! ## A077946.P16998282499724330185

`a(n-1)+2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077946.P16998282499724330185
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + 2 * (a (n - 2) + a (n - 3))

end

end A077946.P16998282499724330185

namespace A077946

/-- `a(n-1)+2*(a(n-2)+a(n-3))` -/
def P16998282499724330185.Spec : Prop :=
  ∀ n, (P16998282499724330185.a n : ℤ) = A077946 n

end A077946

/-! ## A077946.P17340125710475491793

`abs(A077970(n))`
-/

namespace A077946.P17340125710475491793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077970 n|

end

end A077946.P17340125710475491793

namespace A077946

/-- `abs(A077970(n))` -/
def P17340125710475491793.Spec : Prop :=
  ∀ n, P17340125710475491793.a n = A077946 n

end A077946

/-! ## A077946.P16966376592284588856

`∑[A078006(n)]`
-/

namespace A077946.P16966376592284588856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077946.P16966376592284588856

namespace A077946

/-- `∑[A078006(n)]` -/
def P16966376592284588856.Spec : Prop :=
  ∀ n, P16966376592284588856.a n = A077946 n

end A077946

/-! ## A077946.P8330989806256811371

`A033999(n)*A077970(n)`
-/

namespace A077946.P8330989806256811371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077970 n

end

end A077946.P8330989806256811371

namespace A077946

/-- `A033999(n)*A077970(n)` -/
def P8330989806256811371.Spec : Prop :=
  ∀ n, P8330989806256811371.a n = A077946 n

end A077946

/-! ## A077946.P13390740680862287815

`gcd(A000038(n), A077970(n))`
-/

namespace A077946.P13390740680862287815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077970 n)

end

end A077946.P13390740680862287815

namespace A077946

/-- `gcd(A000038(n), A077970(n))` -/
def P13390740680862287815.Spec : Prop :=
  ∀ n, (P13390740680862287815.a n : ℤ) = A077946 n

end A077946

/-! ## A077946.P8699661969644908621

`lcm(A020985(n), A077970(n))`
-/

namespace A077946.P8699661969644908621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A077970 n)

end

end A077946.P8699661969644908621

namespace A077946

/-- `lcm(A020985(n), A077970(n))` -/
def P8699661969644908621.Spec : Prop :=
  ∀ n, (P8699661969644908621.a n : ℤ) = A077946 n

end A077946

/-! ## A077946.P8725614816625868197

`lcm(A008836(n+1)*A077970(n), A008836(n+1))`
-/

namespace A077946.P8725614816625868197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1) * A077970 n) (A008836 (n + 1))

end

end A077946.P8725614816625868197

namespace A077946

/-- `lcm(A008836(n+1)*A077970(n), A008836(n+1))` -/
def P8725614816625868197.Spec : Prop :=
  ∀ n, (P8725614816625868197.a n : ℤ) = A077946 n

end A077946

/-! ## A077946.P15990470593159599945

`abs(∑[A078040(n)])`
-/

namespace A077946.P15990470593159599945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077946.P15990470593159599945

namespace A077946

/-- `abs(∑[A078040(n)])` -/
def P15990470593159599945.Spec : Prop :=
  ∀ n, P15990470593159599945.a n = A077946 n

end A077946

/-! ## A077946.P13682345060815795289

`A238768(n+1)-A239812(n+1)`
-/

namespace A077946.P13682345060815795289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238768 (n + 1) - A239812 (n + 1)

end

end A077946.P13682345060815795289

namespace A077946

/-- `A238768(n+1)-A239812(n+1)` -/
def P13682345060815795289.Spec : Prop :=
  ∀ n, P13682345060815795289.a n = A077946 n

end A077946

/-! ## A077946.P13936608842994701052

`A077863(n+1)-(A078006(n+1)+A077863(n))`
-/

namespace A077946.P13936608842994701052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077863 (n + 1) - (A078006 (n + 1) + A077863 n)

end

end A077946.P13936608842994701052

namespace A077946

/-- `A077863(n+1)-(A078006(n+1)+A077863(n))` -/
def P13936608842994701052.Spec : Prop :=
  ∀ n, P13936608842994701052.a n = A077946 n

end A077946

/-! ## A077946.P13023743827057423333

`A239812(n+2)-(A239812(n+1)+A239812(n+1))`
-/

namespace A077946.P13023743827057423333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239812 (n + 2) - (A239812 (n + 1) + A239812 (n + 1))

end

end A077946.P13023743827057423333

namespace A077946

/-- `A239812(n+2)-(A239812(n+1)+A239812(n+1))` -/
def P13023743827057423333.Spec : Prop :=
  ∀ n, P13023743827057423333.a n = A077946 n

end A077946

/-!
# A077947: Expansion of 1/(1 - x - x^2 - 2*x^3).

The programs for A077947, the canonical program `A077947.P10960679866822552617` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077947 has offset 0).

The definition of A077947 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-2x^3))` (program `A077947.P10960679866822552617`, by `A077947.P10960679866822552617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077947.P10960679866822552617

`ogf(1/(1-x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077947

/-- `ogf(1/(1-x-x^2-2x^3))` -/
def P10960679866822552617.Spec : Prop :=
  ∀ n, P10960679866822552617.a n = A077947 n

theorem P10960679866822552617.correct : P10960679866822552617.Spec := by
  intro n
  simp only [A077947]

end A077947

/-! ## A077947.P6135562110758017063

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P6135562110758017063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A077947.P6135562110758017063

namespace A077947

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P6135562110758017063.Spec : Prop :=
  ∀ n, (P6135562110758017063.a n : ℤ) = A077947 n

end A077947

/-! ## A077947.P4254949190614271267

`round(2^(n+2)/7)`
-/

namespace A077947.P4254949190614271267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 2) : ℚ) / 7)

end

end A077947.P4254949190614271267

namespace A077947

/-- `round(2^(n+2)/7)` -/
def P4254949190614271267.Spec : Prop :=
  ∀ n, P4254949190614271267.a n = A077947 n

end A077947

/-! ## A077947.P4397411949663083057

`a(n-3)+2^(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P4397411949663083057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A077947.P4397411949663083057

namespace A077947

/-- `a(n-3)+2^(n-1)` -/
def P4397411949663083057.Spec : Prop :=
  ∀ n, P4397411949663083057.a n = (A077947 n : ℚ)

end A077947

/-! ## A077947.P14201530710254717099

`or(2^(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P14201530710254717099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 3))

end

end A077947.P14201530710254717099

namespace A077947

/-- `or(2^(n-1), a(n-3))` -/
def P14201530710254717099.Spec : Prop :=
  ∀ n, P14201530710254717099.a n = A077947 n

end A077947

/-! ## A077947.P6826908739096867612

`xor(2^(n-1), a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P6826908739096867612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 3))

end

end A077947.P6826908739096867612

namespace A077947

/-- `xor(2^(n-1), a(n-3))` -/
def P6826908739096867612.Spec : Prop :=
  ∀ n, P6826908739096867612.a n = A077947 n

end A077947

/-! ## A077947.P11036419480506240397

`a(n-3)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P11036419480506240397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + a (n - 1) + (a (n - 2) + a (n - 3))

end

end A077947.P11036419480506240397

namespace A077947

/-- `a(n-3)+a(n-1)+a(n-2)+a(n-3)` -/
def P11036419480506240397.Spec : Prop :=
  ∀ n, (P11036419480506240397.a n : ℤ) = A077947 n

end A077947

/-! ## A077947.P9756550997255769254

`abs(A077972(n))`
-/

namespace A077947.P9756550997255769254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077972 n|

end

end A077947.P9756550997255769254

namespace A077947

/-- `abs(A077972(n))` -/
def P9756550997255769254.Spec : Prop :=
  ∀ n, P9756550997255769254.a n = A077947 n

end A077947

/-! ## A077947.P492691110507807485

`∑[A078010(n)]`
-/

namespace A077947.P492691110507807485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077947.P492691110507807485

namespace A077947

/-- `∑[A078010(n)]` -/
def P492691110507807485.Spec : Prop :=
  ∀ n, P492691110507807485.a n = A077947 n

end A077947

/-! ## A077947.P16559377133797034493

`∑[A166578(n+1)-1]`
-/

namespace A077947.P16559377133797034493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166578 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077947.P16559377133797034493

namespace A077947

/-- `∑[A166578(n+1)-1]` -/
def P16559377133797034493.Spec : Prop :=
  ∀ n, P16559377133797034493.a n = A077947 n

end A077947

/-! ## A077947.P15564300959931980394

`A122552(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077947.P15564300959931980394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A122552 n + a (n - 2)

end

end A077947.P15564300959931980394

namespace A077947

/-- `A122552(n)+a(n-2)` -/
def P15564300959931980394.Spec : Prop :=
  ∀ n, P15564300959931980394.a n = A077947 n

end A077947

/-! ## A077947.P5062169618514587647

`A011782(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P5062169618514587647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A011782 n + a (n - 3)

end

end A077947.P5062169618514587647

namespace A077947

/-- `A011782(n)+a(n-3)` -/
def P5062169618514587647.Spec : Prop :=
  ∀ n, P5062169618514587647.a n = A077947 n

end A077947

/-! ## A077947.P3067938133001752592

`A131577(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077947.P3067938133001752592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A131577 n + a (n - 3)

end

end A077947.P3067938133001752592

namespace A077947

/-- `A131577(n)+a(n-3)` -/
def P3067938133001752592.Spec : Prop :=
  ∀ n, P3067938133001752592.a n = A077947 n

end A077947

/-! ## A077947.P8076941762289084990

`A046630(n)-A011655(n)`
-/

namespace A077947.P8076941762289084990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 n - A011655 n

end

end A077947.P8076941762289084990

namespace A077947

/-- `A046630(n)-A011655(n)` -/
def P8076941762289084990.Spec : Prop :=
  ∀ n, P8076941762289084990.a n = A077947 n

end A077947

/-! ## A077947.P16460197955696891796

`A033999(n)*A077972(n)`
-/

namespace A077947.P16460197955696891796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077972 n

end

end A077947.P16460197955696891796

namespace A077947

/-- `A033999(n)*A077972(n)` -/
def P16460197955696891796.Spec : Prop :=
  ∀ n, P16460197955696891796.a n = A077947 n

end A077947

/-! ## A077947.P16157596790134042263

`gcd(A000038(n), A077972(n))`
-/

namespace A077947.P16157596790134042263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077972 n)

end

end A077947.P16157596790134042263

namespace A077947

/-- `gcd(A000038(n), A077972(n))` -/
def P16157596790134042263.Spec : Prop :=
  ∀ n, (P16157596790134042263.a n : ℤ) = A077947 n

end A077947

/-! ## A077947.P16181022078583318575

`lcm(A020985(n), A077972(n))`
-/

namespace A077947.P16181022078583318575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A077972 n)

end

end A077947.P16181022078583318575

namespace A077947

/-- `lcm(A020985(n), A077972(n))` -/
def P16181022078583318575.Spec : Prop :=
  ∀ n, (P16181022078583318575.a n : ℤ) = A077947 n

end A077947

/-! ## A077947.P14469395070601784706

`A078010(n+1)+A057078(n)`
-/

namespace A077947.P14469395070601784706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (n + 1) + A057078 n

end

end A077947.P14469395070601784706

namespace A077947

/-- `A078010(n+1)+A057078(n)` -/
def P14469395070601784706.Spec : Prop :=
  ∀ n, P14469395070601784706.a n = A077947 n

end A077947

/-! ## A077947.P9461399230259090279

`A152732(n+2)+A049347(n)`
-/

namespace A077947.P9461399230259090279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (n + 2) + A049347 n

end

end A077947.P9461399230259090279

namespace A077947

/-- `A152732(n+2)+A049347(n)` -/
def P9461399230259090279.Spec : Prop :=
  ∀ n, P9461399230259090279.a n = A077947 n

end A077947

/-! ## A077947.P10411443444751615819

`A263366(n+1)-A131532(n)`
-/

namespace A077947.P10411443444751615819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263366 (n + 1) - A131532 n

end

end A077947.P10411443444751615819

namespace A077947

/-- `A263366(n+1)-A131532(n)` -/
def P10411443444751615819.Spec : Prop :=
  ∀ n, P10411443444751615819.a n = A077947 n

end A077947

/-!
# A077948: Expansion of 1/(1-x-x^2+2*x^3).

The programs for A077948, the canonical program `A077948.P1400382029679725729` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077948 has offset 0).

The definition of A077948 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2+2x^3))` (program `A077948.P1400382029679725729`, by `A077948.P1400382029679725729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077948.P1400382029679725729

`ogf(1/(1-x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077948

/-- `ogf(1/(1-x-x^2+2x^3))` -/
def P1400382029679725729.Spec : Prop :=
  ∀ n, P1400382029679725729.a n = A077948 n

theorem P1400382029679725729.correct : P1400382029679725729.Spec := by
  intro n
  simp only [A077948]

end A077948

/-! ## A077948.P16533175221976168169

`a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077948.P16533175221976168169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) - 2 * a (n - 3)

end

end A077948.P16533175221976168169

namespace A077948

/-- `a(n-1)+a(n-2)-2*a(n-3)` -/
def P16533175221976168169.Spec : Prop :=
  ∀ n, P16533175221976168169.a n = A077948 n

end A077948

/-! ## A077948.P7486936084344390070

`a(n-3)-4*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A077948.P7486936084344390070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 1] fun n a =>
  a (n - 3) - 4 * a (n - 5)

end

end A077948.P7486936084344390070

namespace A077948

/-- `a(n-3)-4*a(n-5)` -/
def P7486936084344390070.Spec : Prop :=
  ∀ n, P7486936084344390070.a n = A077948 n

end A077948

/-! ## A077948.P12673236578541174956

`a(n-1)+a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077948.P12673236578541174956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - a (n - 3) - a (n - 3))

end

end A077948.P12673236578541174956

namespace A077948

/-- `a(n-1)+a(n-2)-a(n-3)-a(n-3)` -/
def P12673236578541174956.Spec : Prop :=
  ∀ n, P12673236578541174956.a n = A077948 n

end A077948

/-! ## A077948.P5663630538158233926

`a(n-1)-(a(n-3)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077948.P5663630538158233926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - (a (n - 2) - a (n - 3)))

end

end A077948.P5663630538158233926

namespace A077948

/-- `a(n-1)-(a(n-3)-(a(n-2)-a(n-3)))` -/
def P5663630538158233926.Spec : Prop :=
  ∀ n, P5663630538158233926.a n = A077948 n

end A077948

/-! ## A077948.P10531575897778068892

`∑[A078011(n)]`
-/

namespace A077948.P10531575897778068892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077948.P10531575897778068892

namespace A077948

/-- `∑[A078011(n)]` -/
def P10531575897778068892.Spec : Prop :=
  ∀ n, P10531575897778068892.a n = A077948 n

end A077948

/-! ## A077948.P17187100860443113234

`A033999(n)*A077971(n)`
-/

namespace A077948.P17187100860443113234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077971 n

end

end A077948.P17187100860443113234

namespace A077948

/-- `A033999(n)*A077971(n)` -/
def P17187100860443113234.Spec : Prop :=
  ∀ n, P17187100860443113234.a n = A077948 n

end A077948

/-! ## A077948.P7333178691107957793

`A077971(n)/A033999(n+2)`
-/

namespace A077948.P7333178691107957793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077971 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077948.P7333178691107957793

namespace A077948

/-- `A077971(n)/A033999(n+2)` -/
def P7333178691107957793.Spec : Prop :=
  ∀ n, P7333178691107957793.a n = (A077948 n : ℚ)

end A077948

/-! ## A077948.P7010012017880324349

`A078011(n+1)-A078011(n+3)`
-/

namespace A077948.P7010012017880324349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078011 (n + 1) - A078011 (n + 3)

end

end A077948.P7010012017880324349

namespace A077948

/-- `A078011(n+1)-A078011(n+3)` -/
def P7010012017880324349.Spec : Prop :=
  ∀ n, P7010012017880324349.a n = A077948 n

end A077948

/-! ## A077948.P14587490774847804984

`A034947(2*n+1)*A077971(n)`
-/

namespace A077948.P14587490774847804984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A077971 n

end

end A077948.P14587490774847804984

namespace A077948

/-- `A034947(2*n+1)*A077971(n)` -/
def P14587490774847804984.Spec : Prop :=
  ∀ n, P14587490774847804984.a n = A077948 n

end A077948

/-! ## A077948.P6305030850324363324

`A117353(n+2)-2^(n+2)`
-/

namespace A077948.P6305030850324363324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117353 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A077948.P6305030850324363324

namespace A077948

/-- `A117353(n+2)-2^(n+2)` -/
def P6305030850324363324.Spec : Prop :=
  ∀ n, P6305030850324363324.a n = A077948 n

end A077948

/-!
# A077949: Expansion of 1/(1-x-2*x^3).

The programs for A077949, the canonical program `A077949.P12379121586562352093` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077949 has offset 0).

The definition of A077949 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-2x^3))` (program `A077949.P12379121586562352093`, by `A077949.P12379121586562352093.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077949.P12379121586562352093

`ogf(1/(1-x-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077949

/-- `ogf(1/(1-x-2x^3))` -/
def P12379121586562352093.Spec : Prop :=
  ∀ n, P12379121586562352093.a n = A077949 n

theorem P12379121586562352093.correct : P12379121586562352093.Spec := by
  intro n
  simp only [A077949]

end A077949

/-! ## A077949.P14403560729980156909

`a(n-1)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077949.P14403560729980156909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + 2 * a (n - 3)

end

end A077949.P14403560729980156909

namespace A077949

/-- `a(n-1)+2*a(n-3)` -/
def P14403560729980156909.Spec : Prop :=
  ∀ n, (P14403560729980156909.a n : ℤ) = A077949 n

end A077949

/-! ## A077949.P7363677966943722228

`a(n-1)+lcm(2, a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077949.P7363677966943722228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + Nat.lcm 2 (a (n - 3))

end

end A077949.P7363677966943722228

namespace A077949

/-- `a(n-1)+lcm(2, a(n-3))` -/
def P7363677966943722228.Spec : Prop :=
  ∀ n, (P7363677966943722228.a n : ℤ) = A077949 n

end A077949

/-! ## A077949.P16338244495987487337

`a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077949.P16338244495987487337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) + (a (n - 1) + a (n - 3))

end

end A077949.P16338244495987487337

namespace A077949

/-- `a(n-3)+a(n-1)+a(n-3)` -/
def P16338244495987487337.Spec : Prop :=
  ∀ n, (P16338244495987487337.a n : ℤ) = A077949 n

end A077949

/-! ## A077949.P14703825197915160408

`3*a(n-3)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077949.P14703825197915160408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  3 * a (n - 3) - (a (n - 3) - a (n - 1))

end

end A077949.P14703825197915160408

namespace A077949

/-- `3*a(n-3)-(a(n-3)-a(n-1))` -/
def P14703825197915160408.Spec : Prop :=
  ∀ n, P14703825197915160408.a n = A077949 n

end A077949

/-! ## A077949.P9912526160780023004

`∑[A052537(n)]`
-/

namespace A077949.P9912526160780023004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077949.P9912526160780023004

namespace A077949

/-- `∑[A052537(n)]` -/
def P9912526160780023004.Spec : Prop :=
  ∀ n, P9912526160780023004.a n = A077949 n

end A077949

/-! ## A077949.P6688026754122713439

`A003229(abs(1-n))`
-/

namespace A077949.P6688026754122713439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 |1 - (n : ℤ)|.toNat

end

end A077949.P6688026754122713439

namespace A077949

/-- `A003229(abs(1-n))` -/
def P6688026754122713439.Spec : Prop :=
  ∀ n, P6688026754122713439.a n = A077949 n

end A077949

/-! ## A077949.P11513935465669324830

`A203175(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077949.P11513935465669324830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A203175 n + a (n - 3)

end

end A077949.P11513935465669324830

namespace A077949

/-- `A203175(n)+a(n-3)` -/
def P11513935465669324830.Spec : Prop :=
  ∀ n, P11513935465669324830.a n = A077949 n

end A077949

/-! ## A077949.P713951144410794252

`A298179(n+2)-A000045(n+1)`
-/

namespace A077949.P713951144410794252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298179 (n + 2) - A000045 (n + 1)

end

end A077949.P713951144410794252

namespace A077949

/-- `A298179(n+2)-A000045(n+1)` -/
def P713951144410794252.Spec : Prop :=
  ∀ n, P713951144410794252.a n = A077949 n

end A077949

/-! ## A077949.P14686779579457873371

`abs(∑[A078044(n)])`
-/

namespace A077949.P14686779579457873371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077949.P14686779579457873371

namespace A077949

/-- `abs(∑[A078044(n)])` -/
def P14686779579457873371.Spec : Prop :=
  ∀ n, P14686779579457873371.a n = A077949 n

end A077949

/-! ## A077949.P8231620818629765720

`A003229(n)-A052537(n+1)`
-/

namespace A077949.P8231620818629765720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 n - A052537 (n + 1)

end

end A077949.P8231620818629765720

namespace A077949

/-- `A003229(n)-A052537(n+1)` -/
def P8231620818629765720.Spec : Prop :=
  ∀ n, P8231620818629765720.a n = A077949 n

end A077949

/-! ## A077949.P15963517971268814822

`A203175(n+1)+A203175(n+1)-A003229(n)`
-/

namespace A077949.P15963517971268814822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 1) + (A203175 (n + 1) - A003229 n)

end

end A077949.P15963517971268814822

namespace A077949

/-- `A203175(n+1)+A203175(n+1)-A003229(n)` -/
def P15963517971268814822.Spec : Prop :=
  ∀ n, P15963517971268814822.a n = A077949 n

end A077949

/-! ## A077949.P10280517001754878743

`A052537(n+3)/2`
-/

namespace A077949.P10280517001754878743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 (n + 3) : ℚ) / 2

end

end A077949.P10280517001754878743

namespace A077949

/-- `A052537(n+3)/2` -/
def P10280517001754878743.Spec : Prop :=
  ∀ n, P10280517001754878743.a n = (A077949 n : ℚ)

end A077949

/-! ## A077949.P14253299958750366154

`2*A203175(n+1)-A003229(n)`
-/

namespace A077949.P14253299958750366154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203175 (n + 1) - A003229 n

end

end A077949.P14253299958750366154

namespace A077949

/-- `2*A203175(n+1)-A003229(n)` -/
def P14253299958750366154.Spec : Prop :=
  ∀ n, P14253299958750366154.a n = A077949 n

end A077949

/-! ## A077949.P15288651330753241988

`A003476(n+1)+A003476(n+1)-A003229(n+1)`
-/

namespace A077949.P15288651330753241988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 1) + (A003476 (n + 1) - A003229 (n + 1))

end

end A077949.P15288651330753241988

namespace A077949

/-- `A003476(n+1)+A003476(n+1)-A003229(n+1)` -/
def P15288651330753241988.Spec : Prop :=
  ∀ n, P15288651330753241988.a n = A077949 n

end A077949

/-! ## A077949.P18140050967003231138

`Δ[A003229(n+1)/2]`
-/

namespace A077949.P18140050967003231138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003229 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077949.P18140050967003231138

namespace A077949

/-- `Δ[A003229(n+1)/2]` -/
def P18140050967003231138.Spec : Prop :=
  ∀ n, P18140050967003231138.a n = (A077949 n : ℚ)

end A077949

/-! ## A077949.P2958714626931577674

`Δ[A003479(n)]-A052537(n+1)`
-/

namespace A077949.P2958714626931577674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052537 (n + 1)

end

end A077949.P2958714626931577674

namespace A077949

/-- `Δ[A003479(n)]-A052537(n+1)` -/
def P2958714626931577674.Spec : Prop :=
  ∀ n, P2958714626931577674.a n = A077949 n

end A077949

/-! ## A077949.P15688593790441254395

`A203175(n+3)-A003229(n+1)`
-/

namespace A077949.P15688593790441254395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203175 (n + 3) - A003229 (n + 1)

end

end A077949.P15688593790441254395

namespace A077949

/-- `A203175(n+3)-A003229(n+1)` -/
def P15688593790441254395.Spec : Prop :=
  ∀ n, P15688593790441254395.a n = A077949 n

end A077949

/-! ## A077949.P16784996172435952785

`A003476(n+2)-A203175(n+2)`
-/

namespace A077949.P16784996172435952785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003476 (n + 2) - A203175 (n + 2)

end

end A077949.P16784996172435952785

namespace A077949

/-- `A003476(n+2)-A203175(n+2)` -/
def P16784996172435952785.Spec : Prop :=
  ∀ n, P16784996172435952785.a n = A077949 n

end A077949

/-! ## A077949.P4067088958922813799

`Δ[A003479(n)-A052537(n)]-A052537(n)`
-/

namespace A077949.P4067088958922813799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003479 n - A052537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052537 n

end

end A077949.P4067088958922813799

namespace A077949

/-- `Δ[A003479(n)-A052537(n)]-A052537(n)` -/
def P4067088958922813799.Spec : Prop :=
  ∀ n, P4067088958922813799.a n = A077949 n

end A077949

/-!
# A077950: Expansion of 1/(1-x+2*x^3).

The programs for A077950, the canonical program `A077950.P2755379890146508516` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077950 has offset 0).

The definition of A077950 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^3))` (program `A077950.P2755379890146508516`, by `A077950.P2755379890146508516.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077950.P2755379890146508516

`ogf(1/(1-x+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077950

/-- `ogf(1/(1-x+2x^3))` -/
def P2755379890146508516.Spec : Prop :=
  ∀ n, P2755379890146508516.a n = A077950 n

theorem P2755379890146508516.correct : P2755379890146508516.Spec := by
  intro n
  simp only [A077950]

end A077950

/-! ## A077950.P4891335309080647189

`a(n-1)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077950.P4891335309080647189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - 2 * a (n - 3)

end

end A077950.P4891335309080647189

namespace A077950

/-- `a(n-1)-2*a(n-3)` -/
def P4891335309080647189.Spec : Prop :=
  ∀ n, P4891335309080647189.a n = A077950 n

end A077950

/-! ## A077950.P5516799721391322639

`(-1)^n*A077973(n)`
-/

namespace A077950.P5516799721391322639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077973 n

end

end A077950.P5516799721391322639

namespace A077950

/-- `(-1)^n*A077973(n)` -/
def P5516799721391322639.Spec : Prop :=
  ∀ n, P5516799721391322639.a n = A077950 n

end A077950

/-! ## A077950.P1337432269812056009

`a(n-1)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A077950.P1337432269812056009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) - a (n - 3) - a (n - 3)

end

end A077950.P1337432269812056009

namespace A077950

/-- `a(n-1)-a(n-3)-a(n-3)` -/
def P1337432269812056009.Spec : Prop :=
  ∀ n, P1337432269812056009.a n = A077950 n

end A077950

/-! ## A077950.P13213296772061832732

`∑[A078014(n)]`
-/

namespace A077950.P13213296772061832732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077950.P13213296772061832732

namespace A077950

/-- `∑[A078014(n)]` -/
def P13213296772061832732.Spec : Prop :=
  ∀ n, P13213296772061832732.a n = A077950 n

end A077950

/-! ## A077950.P157383183412856359

`A099087(n)-a(n-1)` with `a(0)=1`
-/

namespace A077950.P157383183412856359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099087 n - a (n - 1)

end

end A077950.P157383183412856359

namespace A077950

/-- `A099087(n)-a(n-1)` -/
def P157383183412856359.Spec : Prop :=
  ∀ n, P157383183412856359.a n = A077950 n

end A077950

/-! ## A077950.P11372928035850817091

`A146559(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077950.P11372928035850817091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A146559 n + a (n - 2)

end

end A077950.P11372928035850817091

namespace A077950

/-- `A146559(n)+a(n-2)` -/
def P11372928035850817091.Spec : Prop :=
  ∀ n, P11372928035850817091.a n = A077950 n

end A077950

/-! ## A077950.P9791155270839416508

`A009545(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A077950.P9791155270839416508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009545 (n + 1) - a (n - 1)

end

end A077950.P9791155270839416508

namespace A077950

/-- `A009545(n+1)-a(n-1)` -/
def P9791155270839416508.Spec : Prop :=
  ∀ n, P9791155270839416508.a n = A077950 n

end A077950

/-! ## A077950.P376439350854145307

`A077973(n)*A101455(2*n+1)`
-/

namespace A077950.P376439350854145307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077973 n * A101455 (2 * n + 1)

end

end A077950.P376439350854145307

namespace A077950

/-- `A077973(n)*A101455(2*n+1)` -/
def P376439350854145307.Spec : Prop :=
  ∀ n, P376439350854145307.a n = A077950 n

end A077950

/-! ## A077950.P7687972655227302740

`2*A077870(n)-A077860(n)`
-/

namespace A077950.P7687972655227302740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077870 n - A077860 n

end

end A077950.P7687972655227302740

namespace A077950

/-- `2*A077870(n)-A077860(n)` -/
def P7687972655227302740.Spec : Prop :=
  ∀ n, P7687972655227302740.a n = A077950 n

end A077950

/-! ## A077950.P2362603827719119936

`Δ[A077860(n)-A077870(n)]`
-/

namespace A077950.P2362603827719119936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077860 n - A077870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077950.P2362603827719119936

namespace A077950

/-- `Δ[A077860(n)-A077870(n)]` -/
def P2362603827719119936.Spec : Prop :=
  ∀ n, P2362603827719119936.a n = A077950 n

end A077950

/-!
# A077951: Expansion of 1/(1-x+x^2-2*x^3).

The programs for A077951, the canonical program `A077951.P2292801484064464530` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077951 has offset 0).

The definition of A077951 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2-2x^3))` (program `A077951.P2292801484064464530`, by `A077951.P2292801484064464530.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077951.P2292801484064464530

`ogf(1/(1-x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077951

/-- `ogf(1/(1-x+x^2-2x^3))` -/
def P2292801484064464530.Spec : Prop :=
  ∀ n, P2292801484064464530.a n = A077951 n

theorem P2292801484064464530.correct : P2292801484064464530.Spec := by
  intro n
  simp only [A077951]

end A077951

/-! ## A077951.P16501962735705852850

`a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077951.P16501962735705852850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - a (n - 2) + 2 * a (n - 3)

end

end A077951.P16501962735705852850

namespace A077951

/-- `a(n-1)-a(n-2)+2*a(n-3)` -/
def P16501962735705852850.Spec : Prop :=
  ∀ n, P16501962735705852850.a n = A077951 n

end A077951

/-! ## A077951.P6123213281870665589

`a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A077951.P6123213281870665589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  a (n - 3) + 2 * a (n - 4)

end

end A077951.P6123213281870665589

namespace A077951

/-- `a(n-3)+2*a(n-4)` -/
def P6123213281870665589.Spec : Prop :=
  ∀ n, (P6123213281870665589.a n : ℤ) = A077951 n

end A077951

/-! ## A077951.P16390092516129739735

`a(n-4)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A077951.P16390092516129739735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  a (n - 4) + (a (n - 3) + a (n - 4))

end

end A077951.P16390092516129739735

namespace A077951

/-- `a(n-4)+a(n-3)+a(n-4)` -/
def P16390092516129739735.Spec : Prop :=
  ∀ n, (P16390092516129739735.a n : ℤ) = A077951 n

end A077951

/-! ## A077951.P10227517769285570582

`2*a(n-3)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077951.P10227517769285570582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  2 * a (n - 3) - (a (n - 2) - a (n - 1))

end

end A077951.P10227517769285570582

namespace A077951

/-- `2*a(n-3)-(a(n-2)-a(n-1))` -/
def P10227517769285570582.Spec : Prop :=
  ∀ n, P10227517769285570582.a n = A077951 n

end A077951

/-! ## A077951.P10736437592414007922

`a(n-1)-(a(n-2)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077951.P10736437592414007922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 3) - a (n - 3))

end

end A077951.P10736437592414007922

namespace A077951

/-- `a(n-1)-(a(n-2)-a(n-3)-a(n-3))` -/
def P10736437592414007922.Spec : Prop :=
  ∀ n, P10736437592414007922.a n = A077951 n

end A077951

/-! ## A077951.P7176255079937957480

`abs(A077976(n))`
-/

namespace A077951.P7176255079937957480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077976 n|

end

end A077951.P7176255079937957480

namespace A077951

/-- `abs(A077976(n))` -/
def P7176255079937957480.Spec : Prop :=
  ∀ n, P7176255079937957480.a n = A077951 n

end A077951

/-! ## A077951.P2189359684532168943

`∑[A078015(n)]`
-/

namespace A077951.P2189359684532168943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077951.P2189359684532168943

namespace A077951

/-- `∑[A078015(n)]` -/
def P2189359684532168943.Spec : Prop :=
  ∀ n, P2189359684532168943.a n = A077951 n

end A077951

/-! ## A077951.P366692543194097313

`A033999(n)*A077976(n)`
-/

namespace A077951.P366692543194097313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077976 n

end

end A077951.P366692543194097313

namespace A077951

/-- `A033999(n)*A077976(n)` -/
def P366692543194097313.Spec : Prop :=
  ∀ n, P366692543194097313.a n = A077951 n

end A077951

/-! ## A077951.P10863051069475705898

`gcd(A000038(n), A077976(n))`
-/

namespace A077951.P10863051069475705898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077976 n)

end

end A077951.P10863051069475705898

namespace A077951

/-- `gcd(A000038(n), A077976(n))` -/
def P10863051069475705898.Spec : Prop :=
  ∀ n, (P10863051069475705898.a n : ℤ) = A077951 n

end A077951

/-! ## A077951.P11532780974707624796

`lcm(A020985(n), A077976(n))`
-/

namespace A077951.P11532780974707624796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A077976 n)

end

end A077951.P11532780974707624796

namespace A077951

/-- `lcm(A020985(n), A077976(n))` -/
def P11532780974707624796.Spec : Prop :=
  ∀ n, (P11532780974707624796.a n : ℤ) = A077951 n

end A077951

/-! ## A077951.P12973022518017988148

`A078015(n+1)+A078015(n+3)`
-/

namespace A077951.P12973022518017988148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078015 (n + 1) + A078015 (n + 3)

end

end A077951.P12973022518017988148

namespace A077951

/-- `A078015(n+1)+A078015(n+3)` -/
def P12973022518017988148.Spec : Prop :=
  ∀ n, P12973022518017988148.a n = A077951 n

end A077951

/-! ## A077951.P6304613030422268814

`A329301(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077951.P6304613030422268814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329301 n - a (n - 2)

end

end A077951.P6304613030422268814

namespace A077951

/-- `A329301(n)-a(n-2)` -/
def P6304613030422268814.Spec : Prop :=
  ∀ n, P6304613030422268814.a n = A077951 n

end A077951

/-! ## A077951.P18422823070523397064

`A329301(n)-Δ[A329301(n)]`
-/

namespace A077951.P18422823070523397064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 n - (f1 (n + 1) - f1 n)

end

end A077951.P18422823070523397064

namespace A077951

/-- `A329301(n)-Δ[A329301(n)]` -/
def P18422823070523397064.Spec : Prop :=
  ∀ n, P18422823070523397064.a n = A077951 n

end A077951

/-! ## A077951.P14150781541306273700

`A329301(n)+A329301(n)-A329301(n+1)`
-/

namespace A077951.P14150781541306273700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 n + (A329301 n - A329301 (n + 1))

end

end A077951.P14150781541306273700

namespace A077951

/-- `A329301(n)+A329301(n)-A329301(n+1)` -/
def P14150781541306273700.Spec : Prop :=
  ∀ n, P14150781541306273700.a n = A077951 n

end A077951

/-! ## A077951.P2079869425250646906

`Δ[A329301(n+2)]`
-/

namespace A077951.P2079869425250646906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077951.P2079869425250646906

namespace A077951

/-- `Δ[A329301(n+2)]` -/
def P2079869425250646906.Spec : Prop :=
  ∀ n, P2079869425250646906.a n = A077951 n

end A077951

/-! ## A077951.P7463641669256317329

`A329301(n+3)-A329301(n+2)`
-/

namespace A077951.P7463641669256317329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329301 (n + 3) - A329301 (n + 2)

end

end A077951.P7463641669256317329

namespace A077951

/-- `A329301(n+3)-A329301(n+2)` -/
def P7463641669256317329.Spec : Prop :=
  ∀ n, P7463641669256317329.a n = A077951 n

end A077951

/-! ## A077951.P9584221410450351757

`abs(∑[A078047(n)])`
-/

namespace A077951.P9584221410450351757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077951.P9584221410450351757

namespace A077951

/-- `abs(∑[A078047(n)])` -/
def P9584221410450351757.Spec : Prop :=
  ∀ n, P9584221410450351757.a n = A077951 n

end A077951

/-!
# A077952: Expansion of 1/(1 - x + x^2 + 2*x^3).

The programs for A077952, the canonical program `A077952.P15605965124901920071` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077952 has offset 0).

The definition of A077952 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+x^2+2x^3))` (program `A077952.P15605965124901920071`, by `A077952.P15605965124901920071.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077952.P4001973953332387658

`a(n-1)-a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077952.P4001973953332387658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - a (n - 2) - 2 * a (n - 3)

end

end A077952.P4001973953332387658

namespace A077952

/-- `a(n-1)-a(n-2)-2*a(n-3)` -/
def P4001973953332387658.Spec : Prop :=
  ∀ n, P4001973953332387658.a n = A077952 n

end A077952

/-! ## A077952.P10637345930452835391

`(-1)^n*A077975(n)`
-/

namespace A077952.P10637345930452835391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077975 n

end

end A077952.P10637345930452835391

namespace A077952

/-- `(-1)^n*A077975(n)` -/
def P10637345930452835391.Spec : Prop :=
  ∀ n, P10637345930452835391.a n = A077952 n

end A077952

/-! ## A077952.P15605965124901920071

`ogf(1/(1-x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077952

/-- `ogf(1/(1-x+x^2+2x^3))` -/
def P15605965124901920071.Spec : Prop :=
  ∀ n, P15605965124901920071.a n = A077952 n

theorem P15605965124901920071.correct : P15605965124901920071.Spec := by
  intro n
  simp only [A077952]

end A077952

/-! ## A077952.P2875394546255900988

`a(n-1)-(a(n-3)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077952.P2875394546255900988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A077952.P2875394546255900988

namespace A077952

/-- `a(n-1)-(a(n-3)+a(n-2)+a(n-3))` -/
def P2875394546255900988.Spec : Prop :=
  ∀ n, P2875394546255900988.a n = A077952 n

end A077952

/-! ## A077952.P9318074178932451462

`a(n-1)-a(n-2)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A077952.P9318074178932451462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 3) - a (n - 3)

end

end A077952.P9318074178932451462

namespace A077952

/-- `a(n-1)-a(n-2)-a(n-3)-a(n-3)` -/
def P9318074178932451462.Spec : Prop :=
  ∀ n, P9318074178932451462.a n = A077952 n

end A077952

/-! ## A077952.P3126781861621951696

`∑[A078017(n)]`
-/

namespace A077952.P3126781861621951696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077952.P3126781861621951696

namespace A077952

/-- `∑[A078017(n)]` -/
def P3126781861621951696.Spec : Prop :=
  ∀ n, P3126781861621951696.a n = A077952 n

end A077952

/-!
# A077953: Expansion of 1/(1-x+2*x^2-2*x^3).

The programs for A077953, the canonical program `A077953.P6066158313527650964` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077953 has offset 0).

The definition of A077953 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-2x^3))` (program `A077953.P6066158313527650964`, by `A077953.P6066158313527650964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077953.P6066158313527650964

`ogf(1/(1-x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077953

/-- `ogf(1/(1-x+2x^2-2x^3))` -/
def P6066158313527650964.Spec : Prop :=
  ∀ n, P6066158313527650964.a n = A077953 n

theorem P6066158313527650964.correct : P6066158313527650964.Spec := by
  intro n
  simp only [A077953]

end A077953

/-! ## A077953.P11656144037597956834

`A077925(floor(n/2))`
-/

namespace A077953.P11656144037597956834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 ⌊(n : ℚ) / 2⌋.toNat

end

end A077953.P11656144037597956834

namespace A077953

/-- `A077925(floor(n/2))` -/
def P11656144037597956834.Spec : Prop :=
  ∀ n, P11656144037597956834.a n = A077953 n

end A077953

/-! ## A077953.P1453778459304298513

`a(n-1)-2*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077953.P1453778459304298513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - 2 * a (n - 2) + 2 * a (n - 3)

end

end A077953.P1453778459304298513

namespace A077953

/-- `a(n-1)-2*a(n-2)+2*a(n-3)` -/
def P1453778459304298513.Spec : Prop :=
  ∀ n, P1453778459304298513.a n = A077953 n

end A077953

/-! ## A077953.P13217056128020250087

`1-2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077953.P13217056128020250087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - 2 * a (n - 2)

end

end A077953.P13217056128020250087

namespace A077953

/-- `1-2*a(n-2)` -/
def P13217056128020250087.Spec : Prop :=
  ∀ n, P13217056128020250087.a n = A077953 n

end A077953

/-! ## A077953.P10804214060325971053

`∑[(-((-1)^n+1))^(n/2)]`
-/

namespace A077953.P10804214060325971053
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-((-1) ^ n + 1) : ℝ) ^ ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077953.P10804214060325971053

namespace A077953

/-- `∑[(-((-1)^n+1))^(n/2)]` -/
def P10804214060325971053.Spec : Prop :=
  ∀ n, P10804214060325971053.a n = (A077953 n : ℝ)

end A077953

/-! ## A077953.P9748044333070733875

`1-(a(n-2)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A077953.P9748044333070733875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (a (n - 2) + a (n - 2))

end

end A077953.P9748044333070733875

namespace A077953

/-- `1-(a(n-2)+a(n-2))` -/
def P9748044333070733875.Spec : Prop :=
  ∀ n, P9748044333070733875.a n = A077953 n

end A077953

/-! ## A077953.P7656989057669350929

`1-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A077953.P7656989057669350929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - a (n - 2) - a (n - 2)

end

end A077953.P7656989057669350929

namespace A077953

/-- `1-a(n-2)-a(n-2)` -/
def P7656989057669350929.Spec : Prop :=
  ∀ n, P7656989057669350929.a n = A077953 n

end A077953

/-! ## A077953.P8059001298396475875

`A077980(or(1, n)-1)`
-/

namespace A077953.P8059001298396475875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 (Nat.lor 1 n - 1)

end

end A077953.P8059001298396475875

namespace A077953

/-- `A077980(or(1, n)-1)` -/
def P8059001298396475875.Spec : Prop :=
  ∀ n, P8059001298396475875.a n = A077953 n

end A077953

/-! ## A077953.P2089947165086342372

`A077966(n)+a(n-1)` with `a(0)=1`
-/

namespace A077953.P2089947165086342372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077966 n + a (n - 1)

end

end A077953.P2089947165086342372

namespace A077953

/-- `A077966(n)+a(n-1)` -/
def P2089947165086342372.Spec : Prop :=
  ∀ n, P2089947165086342372.a n = A077953 n

end A077953

/-! ## A077953.P11109625071814212910

`A077886(A007494(n))`
-/

namespace A077953.P11109625071814212910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A007494 n).toNat

end

end A077953.P11109625071814212910

namespace A077953

/-- `A077886(A007494(n))` -/
def P11109625071814212910.Spec : Prop :=
  ∀ n, P11109625071814212910.a n = A077953 n

end A077953

/-! ## A077953.P521503297521049135

`A077886(A026430(n))`
-/

namespace A077953.P521503297521049135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A026430 n).toNat

end

end A077953.P521503297521049135

namespace A077953

/-- `A077886(A026430(n))` -/
def P521503297521049135.Spec : Prop :=
  ∀ n, P521503297521049135.a n = A077953 n

end A077953

/-! ## A077953.P13476980466316094041

`A077886(A032766(n))`
-/

namespace A077953.P13476980466316094041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A032766 n).toNat

end

end A077953.P13476980466316094041

namespace A077953

/-- `A077886(A032766(n))` -/
def P13476980466316094041.Spec : Prop :=
  ∀ n, P13476980466316094041.a n = A077953 n

end A077953

/-! ## A077953.P14502512350062260302

`A077980(A052928(n))`
-/

namespace A077953.P14502512350062260302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 (A052928 n).toNat

end

end A077953.P14502512350062260302

namespace A077953

/-- `A077980(A052928(n))` -/
def P14502512350062260302.Spec : Prop :=
  ∀ n, P14502512350062260302.a n = A077953 n

end A077953

/-! ## A077953.P2896429392884688784

`A077886(A166517(n))`
-/

namespace A077953.P2896429392884688784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A166517 n).toNat

end

end A077953.P2896429392884688784

namespace A077953

/-- `A077886(A166517(n))` -/
def P2896429392884688784.Spec : Prop :=
  ∀ n, P2896429392884688784.a n = A077953 n

end A077953

/-! ## A077953.P15433472030312540979

`A077886(A168237(n))`
-/

namespace A077953.P15433472030312540979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A168237 n).toNat

end

end A077953.P15433472030312540979

namespace A077953

/-- `A077886(A168237(n))` -/
def P15433472030312540979.Spec : Prop :=
  ∀ n, P15433472030312540979.a n = A077953 n

end A077953

/-! ## A077953.P2611719082605370253

`A077886(A301729(n))`
-/

namespace A077953.P2611719082605370253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A301729 n).toNat

end

end A077953.P2611719082605370253

namespace A077953

/-- `A077886(A301729(n))` -/
def P2611719082605370253.Spec : Prop :=
  ∀ n, P2611719082605370253.a n = A077953 n

end A077953

/-! ## A077953.P15366832801727707441

`A077886(A001651(n+1))`
-/

namespace A077953.P15366832801727707441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A001651 (n + 1)).toNat

end

end A077953.P15366832801727707441

namespace A077953

/-- `A077886(A001651(n+1))` -/
def P15366832801727707441.Spec : Prop :=
  ∀ n, P15366832801727707441.a n = A077953 n

end A077953

/-! ## A077953.P655757926841439704

`A077886(A022162(n+1))`
-/

namespace A077953.P655757926841439704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A022162 (n + 1)).toNat

end

end A077953.P655757926841439704

namespace A077953

/-- `A077886(A022162(n+1))` -/
def P655757926841439704.Spec : Prop :=
  ∀ n, P655757926841439704.a n = A077953 n

end A077953

/-! ## A077953.P2453908520194736710

`A077886(A047227(n+1))`
-/

namespace A077953.P2453908520194736710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077886 (A047227 (n + 1)).toNat

end

end A077953.P2453908520194736710

namespace A077953

/-- `A077886(A047227(n+1))` -/
def P2453908520194736710.Spec : Prop :=
  ∀ n, P2453908520194736710.a n = A077953 n

end A077953

/-!
# A077954: Expansion of 1/(1-x+2*x^2-x^3) in powers of x.

The programs for A077954, the canonical program `A077954.P4046842851712022795` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077954 has offset 0).

The definition of A077954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2-x^3))` (program `A077954.P4046842851712022795`, by `A077954.P4046842851712022795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077954.P4046842851712022795

`ogf(1/(1-x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077954

/-- `ogf(1/(1-x+2x^2-x^3))` -/
def P4046842851712022795.Spec : Prop :=
  ∀ n, P4046842851712022795.a n = A077954 n

theorem P4046842851712022795.correct : P4046842851712022795.Spec := by
  intro n
  simp only [A077954]

end A077954

/-! ## A077954.P6174584535347120874

`a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2, a(4)=1`
-/

namespace A077954.P6174584535347120874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2, 1] fun n a =>
  a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A077954.P6174584535347120874

namespace A077954

/-- `a(n-1)-2*a(n-2)+a(n-3)` -/
def P6174584535347120874.Spec : Prop :=
  ∀ n, P6174584535347120874.a n = A077954 n

end A077954

/-! ## A077954.P1428386423679835690

`a(n-4)-(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A077954.P1428386423679835690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n a =>
  a (n - 4) - (a (n - 2) + a (n - 3))

end

end A077954.P1428386423679835690

namespace A077954

/-- `a(n-4)-(a(n-2)+a(n-3))` -/
def P1428386423679835690.Spec : Prop :=
  ∀ n, P1428386423679835690.a n = A077954 n

end A077954

/-! ## A077954.P9205202763904033267

`a(n-4)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-2`
-/

namespace A077954.P9205202763904033267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -2] fun n a =>
  a (n - 4) - a (n - 2) - a (n - 3)

end

end A077954.P9205202763904033267

namespace A077954

/-- `a(n-4)-a(n-2)-a(n-3)` -/
def P9205202763904033267.Spec : Prop :=
  ∀ n, P9205202763904033267.a n = A077954 n

end A077954

/-! ## A077954.P12073628444269580850

`A033999(n)*A077979(n)`
-/

namespace A077954.P12073628444269580850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077979 n

end

end A077954.P12073628444269580850

namespace A077954

/-- `A033999(n)*A077979(n)` -/
def P12073628444269580850.Spec : Prop :=
  ∀ n, P12073628444269580850.a n = A077954 n

end A077954

/-! ## A077954.P17780798154083760715

`Δ[A141576(n)]`
-/

namespace A077954.P17780798154083760715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077954.P17780798154083760715

namespace A077954

/-- `Δ[A141576(n)]` -/
def P17780798154083760715.Spec : Prop :=
  ∀ n, P17780798154083760715.a n = A077954 n

end A077954

/-! ## A077954.P17643146976348255597

`A050935(2*n+3)`
-/

namespace A077954.P17643146976348255597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * n + 3)

end

end A077954.P17643146976348255597

namespace A077954

/-- `A050935(2*n+3)` -/
def P17643146976348255597.Spec : Prop :=
  ∀ n, P17643146976348255597.a n = A077954 n

end A077954

/-! ## A077954.P483700214493184849

`A176971(2*n+3)`
-/

namespace A077954.P483700214493184849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (2 * n + 3)

end

end A077954.P483700214493184849

namespace A077954

/-- `A176971(2*n+3)` -/
def P483700214493184849.Spec : Prop :=
  ∀ n, P483700214493184849.a n = A077954 n

end A077954

/-! ## A077954.P8816897215975343580

`Δ[-A176971(2*n)]`
-/

namespace A077954.P8816897215975343580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A176971 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077954.P8816897215975343580

namespace A077954

/-- `Δ[-A176971(2*n)]` -/
def P8816897215975343580.Spec : Prop :=
  ∀ n, P8816897215975343580.a n = A077954 n

end A077954

/-! ## A077954.P5993510921632238155

`-A104769(2*n+1)`
-/

namespace A077954.P5993510921632238155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A104769 (2 * n + 1)

end

end A077954.P5993510921632238155

namespace A077954

/-- `-A104769(2*n+1)` -/
def P5993510921632238155.Spec : Prop :=
  ∀ n, P5993510921632238155.a n = A077954 n

end A077954

/-! ## A077954.P10553136218462092465

`A166117(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A077954.P10553136218462092465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A166117 (n + 1) - a (n - 1)

end

end A077954.P10553136218462092465

namespace A077954

/-- `A166117(n+1)-a(n-1)` -/
def P10553136218462092465.Spec : Prop :=
  ∀ n, P10553136218462092465.a n = A077954 n

end A077954

/-! ## A077954.P15363839636521029794

`A141576(n+1)-A141576(n)`
-/

namespace A077954.P15363839636521029794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141576 (n + 1) - A141576 n

end

end A077954.P15363839636521029794

namespace A077954

/-- `A141576(n+1)-A141576(n)` -/
def P15363839636521029794.Spec : Prop :=
  ∀ n, P15363839636521029794.a n = A077954 n

end A077954

/-! ## A077954.P7348078285924907360

`A104769(2*n)-A141576(n)`
-/

namespace A077954.P7348078285924907360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * n) - A141576 n

end

end A077954.P7348078285924907360

namespace A077954

/-- `A104769(2*n)-A141576(n)` -/
def P7348078285924907360.Spec : Prop :=
  ∀ n, P7348078285924907360.a n = A077954 n

end A077954

/-! ## A077954.P17676320194889935277

`∑[A078019(n)]`
-/

namespace A077954.P17676320194889935277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077954.P17676320194889935277

namespace A077954

/-- `∑[A078019(n)]` -/
def P17676320194889935277.Spec : Prop :=
  ∀ n, P17676320194889935277.a n = A077954 n

end A077954

/-! ## A077954.P210904206746717060

`∑[A141576(n+2)]`
-/

namespace A077954.P210904206746717060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141576 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077954.P210904206746717060

namespace A077954

/-- `∑[A141576(n+2)]` -/
def P210904206746717060.Spec : Prop :=
  ∀ n, P210904206746717060.a n = A077954 n

end A077954

/-! ## A077954.P16611907319804180485

`∑[A104769(2*(n+1))]`
-/

namespace A077954.P16611907319804180485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077954.P16611907319804180485

namespace A077954

/-- `∑[A104769(2*(n+1))]` -/
def P16611907319804180485.Spec : Prop :=
  ∀ n, P16611907319804180485.a n = A077954 n

end A077954

/-! ## A077954.P1957768863238340292

`∑[A050935(n+4+n)]`
-/

namespace A077954.P1957768863238340292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (n + 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077954.P1957768863238340292

namespace A077954

/-- `∑[A050935(n+4+n)]` -/
def P1957768863238340292.Spec : Prop :=
  ∀ n, P1957768863238340292.a n = A077954 n

end A077954

/-! ## A077954.P15655934729444004283

`∑[1-A203400(2*n+1)]`
-/

namespace A077954.P15655934729444004283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A203400 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077954.P15655934729444004283

namespace A077954

/-- `∑[1-A203400(2*n+1)]` -/
def P15655934729444004283.Spec : Prop :=
  ∀ n, P15655934729444004283.a n = A077954 n

end A077954

/-! ## A077954.P13289923786903414405

`Δ[A104769(2*n+1)+A104769(2*n)]`
-/

namespace A077954.P13289923786903414405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (2 * n + 1) + A104769 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077954.P13289923786903414405

namespace A077954

/-- `Δ[A104769(2*n+1)+A104769(2*n)]` -/
def P13289923786903414405.Spec : Prop :=
  ∀ n, P13289923786903414405.a n = A077954 n

end A077954

/-! ## A077954.P10281991713339498099

`A078019(n+1)+A166117(n+1)+A141576(n+1)`
-/

namespace A077954.P10281991713339498099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 (n + 1) + (A166117 (n + 1) + A141576 (n + 1))

end

end A077954.P10281991713339498099

namespace A077954

/-- `A078019(n+1)+A166117(n+1)+A141576(n+1)` -/
def P10281991713339498099.Spec : Prop :=
  ∀ n, P10281991713339498099.a n = A077954 n

end A077954

/-!
# A077955: Expansion of 1/(1-x+2*x^2+x^3).

The programs for A077955, the canonical program `A077955.P1507832155216777547` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077955 has offset 0).

The definition of A077955 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2+x^3))` (program `A077955.P1507832155216777547`, by `A077955.P1507832155216777547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077955.P1507832155216777547

`ogf(1/(1-x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077955

/-- `ogf(1/(1-x+2x^2+x^3))` -/
def P1507832155216777547.Spec : Prop :=
  ∀ n, P1507832155216777547.a n = A077955 n

theorem P1507832155216777547.correct : P1507832155216777547.Spec := by
  intro n
  simp only [A077955]

end A077955

/-! ## A077955.P18217097845075103416

`a(n-1)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077955.P18217097845075103416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - 2 * a (n - 2) - a (n - 3)

end

end A077955.P18217097845075103416

namespace A077955

/-- `a(n-1)-2*a(n-2)-a(n-3)` -/
def P18217097845075103416.Spec : Prop :=
  ∀ n, P18217097845075103416.a n = A077955 n

end A077955

/-! ## A077955.P15960570506896746656

`(-1)^n*A077978(n)`
-/

namespace A077955.P15960570506896746656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077978 n

end

end A077955.P15960570506896746656

namespace A077955

/-- `(-1)^n*A077978(n)` -/
def P15960570506896746656.Spec : Prop :=
  ∀ n, P15960570506896746656.a n = A077955 n

end A077955

/-! ## A077955.P3075188614290470801

`a(n-1)-(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077955.P3075188614290470801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A077955.P3075188614290470801

namespace A077955

/-- `a(n-1)-(a(n-2)+a(n-2)+a(n-3))` -/
def P3075188614290470801.Spec : Prop :=
  ∀ n, P3075188614290470801.a n = A077955 n

end A077955

/-! ## A077955.P9444311717915541797

`a(n-1)-a(n-2)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077955.P9444311717915541797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 3)

end

end A077955.P9444311717915541797

namespace A077955

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-3)` -/
def P9444311717915541797.Spec : Prop :=
  ∀ n, P9444311717915541797.a n = A077955 n

end A077955

/-! ## A077955.P12754328577016000935

`∑[A078021(n)]`
-/

namespace A077955.P12754328577016000935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077955.P12754328577016000935

namespace A077955

/-- `∑[A078021(n)]` -/
def P12754328577016000935.Spec : Prop :=
  ∀ n, P12754328577016000935.a n = A077955 n

end A077955

/-! ## A077955.P10938097744444940516

`A077978(n)/A033999(n)`
-/

namespace A077955.P10938097744444940516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077978 n : ℚ) / (A033999 n : ℚ)

end

end A077955.P10938097744444940516

namespace A077955

/-- `A077978(n)/A033999(n)` -/
def P10938097744444940516.Spec : Prop :=
  ∀ n, P10938097744444940516.a n = (A077955 n : ℚ)

end A077955

/-! ## A077955.P10236763083018414812

`A077978(n)/A062157(n+1)`
-/

namespace A077955.P10236763083018414812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077978 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A077955.P10236763083018414812

namespace A077955

/-- `A077978(n)/A062157(n+1)` -/
def P10236763083018414812.Spec : Prop :=
  ∀ n, P10236763083018414812.a n = (A077955 n : ℚ)

end A077955

/-! ## A077955.P2387022254076172775

`A077978(n)/A056594(2*n)`
-/

namespace A077955.P2387022254076172775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077978 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A077955.P2387022254076172775

namespace A077955

/-- `A077978(n)/A056594(2*n)` -/
def P2387022254076172775.Spec : Prop :=
  ∀ n, P2387022254076172775.a n = (A077955 n : ℚ)

end A077955

/-! ## A077955.P15621706730533971322

`A077978(n)/A034947(2*n+1)`
-/

namespace A077955.P15621706730533971322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077978 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

end

end A077955.P15621706730533971322

namespace A077955

/-- `A077978(n)/A034947(2*n+1)` -/
def P15621706730533971322.Spec : Prop :=
  ∀ n, P15621706730533971322.a n = (A077955 n : ℚ)

end A077955

/-! ## A077955.P7183632132809296279

`A077970(n)*A077978(n)/abs(A077970(n))`
-/

namespace A077955.P7183632132809296279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077970 n * A077978 n : ℚ) / (|A077970 n| : ℚ)

end

end A077955.P7183632132809296279

namespace A077955

/-- `A077970(n)*A077978(n)/abs(A077970(n))` -/
def P7183632132809296279.Spec : Prop :=
  ∀ n, P7183632132809296279.a n = (A077955 n : ℚ)

end A077955

/-!
# A077956: Expansion of 1/(1-x+2*x^2+2*x^3).

The programs for A077956, the canonical program `A077956.P15249216941525338412` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077956 has offset 0).

The definition of A077956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+2x^2+2x^3))` (program `A077956.P15249216941525338412`, by `A077956.P15249216941525338412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077956.P15249216941525338412

`ogf(1/(1-x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077956

/-- `ogf(1/(1-x+2x^2+2x^3))` -/
def P15249216941525338412.Spec : Prop :=
  ∀ n, P15249216941525338412.a n = A077956 n

theorem P15249216941525338412.correct : P15249216941525338412.Spec := by
  intro n
  simp only [A077956]

end A077956

/-! ## A077956.P8884999454467390503

`a(n-1)-2*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077956.P8884999454467390503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3)

end

end A077956.P8884999454467390503

namespace A077956

/-- `a(n-1)-2*a(n-2)-2*a(n-3)` -/
def P8884999454467390503.Spec : Prop :=
  ∀ n, P8884999454467390503.a n = A077956 n

end A077956

/-! ## A077956.P9731119299060552991

`(-1)^n*A077977(n)`
-/

namespace A077956.P9731119299060552991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077977 n

end

end A077956.P9731119299060552991

namespace A077956

/-- `(-1)^n*A077977(n)` -/
def P9731119299060552991.Spec : Prop :=
  ∀ n, P9731119299060552991.a n = A077956 n

end A077956

/-! ## A077956.P82317019908326659

`a(n-1)-2*(a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=-1`
-/

namespace A077956.P82317019908326659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1] fun n a =>
  a (n - 1) - 2 * (a (n - 2) + a (n - 3))

end

end A077956.P82317019908326659

namespace A077956

/-- `a(n-1)-2*(a(n-2)+a(n-3))` -/
def P82317019908326659.Spec : Prop :=
  ∀ n, P82317019908326659.a n = A077956 n

end A077956

/-! ## A077956.P4771730696713007367

`∑[A078022(n)]`
-/

namespace A077956.P4771730696713007367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077956.P4771730696713007367

namespace A077956

/-- `∑[A078022(n)]` -/
def P4771730696713007367.Spec : Prop :=
  ∀ n, P4771730696713007367.a n = A077956 n

end A077956

/-! ## A077956.P8172036031064575176

`A077977(n)/A033999(n+2)`
-/

namespace A077956.P8172036031064575176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077977 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077956.P8172036031064575176

namespace A077956

/-- `A077977(n)/A033999(n+2)` -/
def P8172036031064575176.Spec : Prop :=
  ∀ n, P8172036031064575176.a n = (A077956 n : ℚ)

end A077956

/-! ## A077956.P5821341427619318737

`A078022(A123108(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A077956.P5821341427619318737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078022 (A123108 (2 * n)).toNat + a (n - 1)

end

end A077956.P5821341427619318737

namespace A077956

/-- `A078022(A123108(2*n))+a(n-1)` -/
def P5821341427619318737.Spec : Prop :=
  ∀ n, P5821341427619318737.a n = A077956 n

end A077956

/-!
# A077957: Powers of 2 alternating with zeros.

The programs for A077957, the canonical program `A077957.P5207507075211113912` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077957 has offset 0).

The definition of A077957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A077957.P5207507075211113912

`2*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077957

/-- `2*a(n-2)` -/
def P5207507075211113912.Spec : Prop :=
  ∀ n, (P5207507075211113912.a n : ℤ) = A077957 n

theorem P5207507075211113912.correct : P5207507075211113912.Spec := by
  intro n
  simp only [A077957]

end A077957

/-! ## A077957.P14193662750191495844

`ogf(1/(1-2x^2))`
-/

namespace A077957.P14193662750191495844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2] n

end

end A077957.P14193662750191495844

namespace A077957

/-- `ogf(1/(1-2x^2))` -/
def P14193662750191495844.Spec : Prop :=
  ∀ n, P14193662750191495844.a n = A077957 n

end A077957

/-! ## A077957.P8320578058691060440

`((-1)^n+1)^(n/2)`
-/

namespace A077957.P8320578058691060440
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 1 : ℝ) ^ ((n : ℚ) / 2 : ℝ)

end

end A077957.P8320578058691060440

namespace A077957

/-- `((-1)^n+1)^(n/2)` -/
def P8320578058691060440.Spec : Prop :=
  ∀ n, P8320578058691060440.a n = (A077957 n : ℝ)

end A077957

/-! ## A077957.P10197313546308521667

`a(n-2)/sqrt(1/4)` with `a(0)=1, a(1)=0`
-/

namespace A077957.P10197313546308521667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A077957.P10197313546308521667

namespace A077957

/-- `a(n-2)/sqrt(1/4)` -/
def P10197313546308521667.Spec : Prop :=
  ∀ n, P10197313546308521667.a n = (A077957 n : ℝ)

end A077957

/-! ## A077957.P8696685284228080332

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077957.P8696685284228080332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + a (n - 2)

end

end A077957.P8696685284228080332

namespace A077957

/-- `a(n-2)+a(n-2)` -/
def P8696685284228080332.Spec : Prop :=
  ∀ n, (P8696685284228080332.a n : ℤ) = A077957 n

theorem P8696685284228080332.correct : P8696685284228080332.Spec := by
  intro n
  simp only [A077957, Nat.add_sub_cancel, A077957.P8696685284228080332.a, A077957.P5207507075211113912.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A077957

/-! ## A077957.P16838854741831234600

`floor(2^∑[(-1)^n-a(n-1)])` with `a(0)=0`
-/

namespace A077957.P16838854741831234600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (-1) ^ n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A077957.P16838854741831234600

namespace A077957

/-- `floor(2^∑[(-1)^n-a(n-1)])` -/
def P16838854741831234600.Spec : Prop :=
  ∀ n, P16838854741831234600.a n = A077957 n

end A077957

/-! ## A077957.P5313499887582780809

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A077957.P5313499887582780809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A077957.P5313499887582780809

namespace A077957

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P5313499887582780809.Spec : Prop :=
  ∀ n, P5313499887582780809.a n = A077957 n

end A077957

/-! ## A077957.P2128336540394329323

`gcd(a(n-1)-a(n-2), a(n-2))-(a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077957.P2128336540394329323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (Int.gcd (a (n - 1) - a (n - 2)) (a (n - 2)) : ℤ) - (a (n - 1) - a (n - 2))

end

end A077957.P2128336540394329323

namespace A077957

/-- `gcd(a(n-1)-a(n-2), a(n-2))-(a(n-1)-a(n-2))` -/
def P2128336540394329323.Spec : Prop :=
  ∀ n, P2128336540394329323.a n = A077957 n

end A077957

/-! ## A077957.P1187136782163521660

`abs(A077966(n))`
-/

namespace A077957.P1187136782163521660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077966 n|

end

end A077957.P1187136782163521660

namespace A077957

/-- `abs(A077966(n))` -/
def P1187136782163521660.Spec : Prop :=
  ∀ n, P1187136782163521660.a n = A077957 n

end A077957

/-! ## A077957.P739964847129080867

`A131575(n+1)`
-/

namespace A077957.P739964847129080867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 1)

end

end A077957.P739964847129080867

namespace A077957

/-- `A131575(n+1)` -/
def P739964847129080867.Spec : Prop :=
  ∀ n, P739964847129080867.a n = A077957 n

end A077957

/-! ## A077957.P3419189476731368880

`A052552(n)-1`
-/

namespace A077957.P3419189476731368880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n - 1

end

end A077957.P3419189476731368880

namespace A077957

/-- `A052552(n)-1` -/
def P3419189476731368880.Spec : Prop :=
  ∀ n, P3419189476731368880.a n = A077957 n

end A077957

/-! ## A077957.P6296314586804049554

`A119332(2*n)`
-/

namespace A077957.P6296314586804049554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (2 * n)

end

end A077957.P6296314586804049554

namespace A077957

/-- `A119332(2*n)` -/
def P6296314586804049554.Spec : Prop :=
  ∀ n, P6296314586804049554.a n = A077957 n

end A077957

/-! ## A077957.P567823315680086039

`A016724(n)-(n+1)`
-/

namespace A077957.P567823315680086039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016724 n - (n + 1 : ℤ)

end

end A077957.P567823315680086039

namespace A077957

/-- `A016724(n)-(n+1)` -/
def P567823315680086039.Spec : Prop :=
  ∀ n, P567823315680086039.a n = A077957 n

end A077957

/-! ## A077957.P1468493961594724703

`abs(∑[A117575(n+1)])`
-/

namespace A077957.P1468493961594724703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077957.P1468493961594724703

namespace A077957

/-- `abs(∑[A117575(n+1)])` -/
def P1468493961594724703.Spec : Prop :=
  ∀ n, P1468493961594724703.a n = A077957 n

end A077957

/-! ## A077957.P7353865236748735845

`A016116(n)-a(n-1)` with `a(0)=1`
-/

namespace A077957.P7353865236748735845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016116 n - a (n - 1)

end

end A077957.P7353865236748735845

namespace A077957

/-- `A016116(n)-a(n-1)` -/
def P7353865236748735845.Spec : Prop :=
  ∀ n, P7353865236748735845.a n = A077957 n

end A077957

/-!
# A077958: Expansion of 1/(1-2*x^3).

The programs for A077958, the canonical program `A077958.P16688065973531837630` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077958 has offset 0).

The definition of A077958 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^3))` (program `A077958.P16688065973531837630`, by `A077958.P16688065973531837630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077958.P16688065973531837630

`ogf(1/(1-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077958

/-- `ogf(1/(1-2x^3))` -/
def P16688065973531837630.Spec : Prop :=
  ∀ n, P16688065973531837630.a n = A077958 n

theorem P16688065973531837630.correct : P16688065973531837630.Spec := by
  intro n
  simp only [A077958]

end A077958

/-! ## A077958.P13210448957294580113

`2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077958.P13210448957294580113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  2 * a (n - 3)

end

end A077958.P13210448957294580113

namespace A077958

/-- `2*a(n-3)` -/
def P13210448957294580113.Spec : Prop :=
  ∀ n, (P13210448957294580113.a n : ℤ) = A077958 n

end A077958

/-! ## A077958.P2904270656438585309

`(gcd(3, n)-1)^(n/3)`
-/

namespace A077958.P2904270656438585309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 3 n : ℤ) - 1 : ℝ) ^ ((n : ℚ) / 3 : ℝ)

end

end A077958.P2904270656438585309

namespace A077958

/-- `(gcd(3, n)-1)^(n/3)` -/
def P2904270656438585309.Spec : Prop :=
  ∀ n, P2904270656438585309.a n = (A077958 n : ℝ)

end A077958

/-! ## A077958.P16614908615812373968

`((n²-1)%3)^(n/3)`
-/

namespace A077958.P16614908615812373968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n ^ 2 : ℤ) - 1) 3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)

end

end A077958.P16614908615812373968

namespace A077958

/-- `((n²-1)%3)^(n/3)` -/
def P16614908615812373968.Spec : Prop :=
  ∀ n, P16614908615812373968.a n = (A077958 n : ℝ)

end A077958

/-! ## A077958.P3774972393756877600

`a(n-3)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077958.P3774972393756877600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) + a (n - 3)

end

end A077958.P3774972393756877600

namespace A077958

/-- `a(n-3)+a(n-3)` -/
def P3774972393756877600.Spec : Prop :=
  ∀ n, (P3774972393756877600.a n : ℤ) = A077958 n

end A077958

/-! ## A077958.P10623143133970691210

`a(n-3)/(1-1/2)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077958.P10623143133970691210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) / (1 - (1 : ℚ) / 2)

end

end A077958.P10623143133970691210

namespace A077958

/-- `a(n-3)/(1-1/2)` -/
def P10623143133970691210.Spec : Prop :=
  ∀ n, P10623143133970691210.a n = (A077958 n : ℚ)

end A077958

/-! ## A077958.P4594281900380918303

`abs(A077959(n))`
-/

namespace A077958.P4594281900380918303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077959 n|

end

end A077958.P4594281900380918303

namespace A077958

/-- `abs(A077959(n))` -/
def P4594281900380918303.Spec : Prop :=
  ∀ n, P4594281900380918303.a n = A077958 n

end A077958

/-! ## A077958.P7381358889715931891

`∑[A078029(n)]`
-/

namespace A077958.P7381358889715931891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077958.P7381358889715931891

namespace A077958

/-- `∑[A078029(n)]` -/
def P7381358889715931891.Spec : Prop :=
  ∀ n, P7381358889715931891.a n = A077958 n

end A077958

/-! ## A077958.P13267333111916080482

`abs(∑[A078030(n)])`
-/

namespace A077958.P13267333111916080482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A077958.P13267333111916080482

namespace A077958

/-- `abs(∑[A078030(n)])` -/
def P13267333111916080482.Spec : Prop :=
  ∀ n, P13267333111916080482.a n = A077958 n

end A077958

/-! ## A077958.P1158301489997276603

`A168090(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A077958.P1158301489997276603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168090 (n - 1) - a (n - 1)

end

end A077958.P1158301489997276603

namespace A077958

/-- `A168090(n-1)-a(n-1)` -/
def P1158301489997276603.Spec : Prop :=
  ∀ n, P1158301489997276603.a n = A077958 n

end A077958

/-! ## A077958.P5384997200463938350

`A131575(abs(∑[C(n, 2)%3]-n)+1)`
-/

namespace A077958.P5384997200463938350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (|((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)| + 1).toNat

end

end A077958.P5384997200463938350

namespace A077958

/-- `A131575(abs(∑[C(n, 2)%3]-n)+1)` -/
def P5384997200463938350.Spec : Prop :=
  ∀ n, P5384997200463938350.a n = A077958 n

end A077958

/-! ## A077958.P9550332971219695578

`A077957(A004396(n))`
-/

namespace A077958.P9550332971219695578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A004396 n).toNat

end

end A077958.P9550332971219695578

namespace A077958

/-- `A077957(A004396(n))` -/
def P9550332971219695578.Spec : Prop :=
  ∀ n, P9550332971219695578.a n = A077958 n

end A077958

/-! ## A077958.P17298978546750447983

`A077957(A092942(n))`
-/

namespace A077958.P17298978546750447983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A092942 n).toNat

end

end A077958.P17298978546750447983

namespace A077958

/-- `A077957(A092942(n))` -/
def P17298978546750447983.Spec : Prop :=
  ∀ n, P17298978546750447983.a n = A077958 n

end A077958

/-! ## A077958.P16740123502044958525

`A168090(A088439(n))`
-/

namespace A077958.P16740123502044958525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168090 (A088439 n).toNat

end

end A077958.P16740123502044958525

namespace A077958

/-- `A168090(A088439(n))` -/
def P16740123502044958525.Spec : Prop :=
  ∀ n, P16740123502044958525.a n = A077958 n

end A077958

/-! ## A077958.P180300044937403336

`A119332(A222657(n))`
-/

namespace A077958.P180300044937403336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A222657 n).toNat

end

end A077958.P180300044937403336

namespace A077958

/-- `A119332(A222657(n))` -/
def P180300044937403336.Spec : Prop :=
  ∀ n, P180300044937403336.a n = A077958 n

end A077958

/-! ## A077958.P4555639656701516787

`A077957(A005131(n+1))`
-/

namespace A077958.P4555639656701516787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A005131 (n + 1)).toNat

end

end A077958.P4555639656701516787

namespace A077958

/-- `A077957(A005131(n+1))` -/
def P4555639656701516787.Spec : Prop :=
  ∀ n, P4555639656701516787.a n = A077958 n

end A077958

/-! ## A077958.P7216132190818260348

`A119332(A004772(n+1))`
-/

namespace A077958.P7216132190818260348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A004772 (n + 1)).toNat

end

end A077958.P7216132190818260348

namespace A077958

/-- `A119332(A004772(n+1))` -/
def P7216132190818260348.Spec : Prop :=
  ∀ n, P7216132190818260348.a n = A077958 n

end A077958

/-! ## A077958.P1509035196629361557

`A119332(A004773(n)+1)`
-/

namespace A077958.P1509035196629361557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A004773 n + 1).toNat

end

end A077958.P1509035196629361557

namespace A077958

/-- `A119332(A004773(n)+1)` -/
def P1509035196629361557.Spec : Prop :=
  ∀ n, P1509035196629361557.a n = A077958 n

end A077958

/-! ## A077958.P16782819842269327431

`A119332(A042968(n+1))`
-/

namespace A077958.P16782819842269327431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A042968 (n + 1)).toNat

end

end A077958.P16782819842269327431

namespace A077958

/-- `A119332(A042968(n+1))` -/
def P16782819842269327431.Spec : Prop :=
  ∀ n, P16782819842269327431.a n = A077958 n

end A077958

/-! ## A077958.P1583769562398757587

`A119332(A047519(n+1))`
-/

namespace A077958.P1583769562398757587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 (A047519 (n + 1)).toNat

end

end A077958.P1583769562398757587

namespace A077958

/-- `A119332(A047519(n+1))` -/
def P1583769562398757587.Spec : Prop :=
  ∀ n, P1583769562398757587.a n = A077958 n

end A077958

/-!
# A077959: Expansion of 1/(1+2*x^3).

The programs for A077959, the canonical program `A077959.P4753491942409484164` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077959 has offset 0).

The definition of A077959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x^3))` (program `A077959.P4753491942409484164`, by `A077959.P4753491942409484164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077959.P1944326046796435668

`(-1)^n*A077958(n)`
-/

namespace A077959.P1944326046796435668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077958 n

end

end A077959.P1944326046796435668

namespace A077959

/-- `(-1)^n*A077958(n)` -/
def P1944326046796435668.Spec : Prop :=
  ∀ n, P1944326046796435668.a n = A077959 n

end A077959

/-! ## A077959.P4753491942409484164

`ogf(1/(1+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077959

/-- `ogf(1/(1+2x^3))` -/
def P4753491942409484164.Spec : Prop :=
  ∀ n, P4753491942409484164.a n = A077959 n

theorem P4753491942409484164.correct : P4753491942409484164.Spec := by
  intro n
  simp only [A077959]

end A077959

/-! ## A077959.P13126998174911974458

`(1-gcd(3, n))^(n/3)`
-/

namespace A077959.P13126998174911974458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.gcd 3 n : ℤ) : ℝ) ^ ((n : ℚ) / 3 : ℝ)

end

end A077959.P13126998174911974458

namespace A077959

/-- `(1-gcd(3, n))^(n/3)` -/
def P13126998174911974458.Spec : Prop :=
  ∀ n, P13126998174911974458.a n = (A077959 n : ℝ)

end A077959

/-! ## A077959.P7767536459569559952

`-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077959.P7767536459569559952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  -(2 * a (n - 3))

end

end A077959.P7767536459569559952

namespace A077959

/-- `-2*a(n-3)` -/
def P7767536459569559952.Spec : Prop :=
  ∀ n, P7767536459569559952.a n = A077959 n

end A077959

/-! ## A077959.P2741509633202078456

`((1-n²)%3)^(n/3)`
-/

namespace A077959.P2741509633202078456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (1 - (n ^ 2 : ℤ)) 3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)

end

end A077959.P2741509633202078456

namespace A077959

/-- `((1-n²)%3)^(n/3)` -/
def P2741509633202078456.Spec : Prop :=
  ∀ n, P2741509633202078456.a n = (A077959 n : ℝ)

end A077959

/-! ## A077959.P3972174315978343467

`Δ[2*(2-a(n-3))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A077959.P3972174315978343467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  2 * (2 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077959.P3972174315978343467

namespace A077959

/-- `Δ[2*(2-a(n-3))]` -/
def P3972174315978343467.Spec : Prop :=
  ∀ n, P3972174315978343467.a n = A077959 n

end A077959

/-! ## A077959.P706160058433869853

`char[1]-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077959.P706160058433869853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 2 * a (n - 3)

end

end A077959.P706160058433869853

namespace A077959

/-- `char[1]-2*a(n-3)` -/
def P706160058433869853.Spec : Prop :=
  ∀ n, P706160058433869853.a n = A077959 n

end A077959

/-! ## A077959.P9833180935327020614

`2-2*(a(n-3)+1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077959.P9833180935327020614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  2 - 2 * (a (n - 3) + 1)

end

end A077959.P9833180935327020614

namespace A077959

/-- `2-2*(a(n-3)+1)` -/
def P9833180935327020614.Spec : Prop :=
  ∀ n, P9833180935327020614.a n = A077959 n

end A077959

/-! ## A077959.P338801989842942601

`2*(1-a(n-3))-2` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077959.P338801989842942601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  2 * (1 - a (n - 3)) - 2

end

end A077959.P338801989842942601

namespace A077959

/-- `2*(1-a(n-3))-2` -/
def P338801989842942601.Spec : Prop :=
  ∀ n, P338801989842942601.a n = A077959 n

end A077959

/-! ## A077959.P5330001231336598287

`a(n-3)/(1/2-1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077959.P5330001231336598287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2 - 1)

end

end A077959.P5330001231336598287

namespace A077959

/-- `a(n-3)/(1/2-1)` -/
def P5330001231336598287.Spec : Prop :=
  ∀ n, P5330001231336598287.a n = (A077959 n : ℚ)

end A077959

/-! ## A077959.P7180873898312366515

`Δ[1-a(n-3)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A077959.P7180873898312366515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  1 - f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077959.P7180873898312366515

namespace A077959

/-- `Δ[1-a(n-3)-a(n-3)]` -/
def P7180873898312366515.Spec : Prop :=
  ∀ n, P7180873898312366515.a n = A077959 n

end A077959

/-! ## A077959.P8845338834014961754

`a(n-1)%2-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077959.P8845338834014961754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  Int.tmod (a (n - 1)) 2 - a (n - 3) - a (n - 3)

end

end A077959.P8845338834014961754

namespace A077959

/-- `a(n-1)%2-a(n-3)-a(n-3)` -/
def P8845338834014961754.Spec : Prop :=
  ∀ n, P8845338834014961754.a n = A077959 n

end A077959

/-! ## A077959.P491598965157725104

`∑[A078030(n)]`
-/

namespace A077959.P491598965157725104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077959.P491598965157725104

namespace A077959

/-- `∑[A078030(n)]` -/
def P491598965157725104.Spec : Prop :=
  ∀ n, P491598965157725104.a n = A077959 n

end A077959

/-! ## A077959.P3363857547893535366

`A077966(A004396(n))`
-/

namespace A077959.P3363857547893535366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A004396 n).toNat

end

end A077959.P3363857547893535366

namespace A077959

/-- `A077966(A004396(n))` -/
def P3363857547893535366.Spec : Prop :=
  ∀ n, P3363857547893535366.a n = A077959 n

end A077959

/-! ## A077959.P15391460919721188872

`A077966(A092942(n))`
-/

namespace A077959.P15391460919721188872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A092942 n).toNat

end

end A077959.P15391460919721188872

namespace A077959

/-- `A077966(A092942(n))` -/
def P15391460919721188872.Spec : Prop :=
  ∀ n, P15391460919721188872.a n = A077959 n

end A077959

/-! ## A077959.P11281930549920506576

`A077966(A005131(n+1))`
-/

namespace A077959.P11281930549920506576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 (A005131 (n + 1)).toNat

end

end A077959.P11281930549920506576

namespace A077959

/-- `A077966(A005131(n+1))` -/
def P11281930549920506576.Spec : Prop :=
  ∀ n, P11281930549920506576.a n = A077959 n

end A077959

/-! ## A077959.P13779795453023576565

`A057078(n)*A078030(n)`
-/

namespace A077959.P13779795453023576565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A078030 n

end

end A077959.P13779795453023576565

namespace A077959

/-- `A057078(n)*A078030(n)` -/
def P13779795453023576565.Spec : Prop :=
  ∀ n, P13779795453023576565.a n = A077959 n

end A077959

/-! ## A077959.P2893962474572373427

`A060398(n)*A078030(n)`
-/

namespace A077959.P2893962474572373427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 n * A078030 n

end

end A077959.P2893962474572373427

namespace A077959

/-- `A060398(n)*A078030(n)` -/
def P2893962474572373427.Spec : Prop :=
  ∀ n, P2893962474572373427.a n = A077959 n

end A077959

/-! ## A077959.P13461783943468564542

`A078030(n)*A079978(n)`
-/

namespace A077959.P13461783943468564542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078030 n * A079978 n

end

end A077959.P13461783943468564542

namespace A077959

/-- `A078030(n)*A079978(n)` -/
def P13461783943468564542.Spec : Prop :=
  ∀ n, P13461783943468564542.a n = A077959 n

end A077959

/-! ## A077959.P2836305758704525499

`A077958(n)*A081729(n)`
-/

namespace A077959.P2836305758704525499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077958 n * A081729 n

end

end A077959.P2836305758704525499

namespace A077959

/-- `A077958(n)*A081729(n)` -/
def P2836305758704525499.Spec : Prop :=
  ∀ n, P2836305758704525499.a n = A077959 n

end A077959

/-!
# A077960: Trajectory of 18 under iteration of the map k -> A087712(k).

The programs for A077960, there is no canonical definition to state claims against.
-/

/-! ## A077960.P10965500223561014252

`A087712(a(n-1))` with `a(0)=18`
-/

namespace A077960.P10965500223561014252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [18] fun n a =>
  A087712 (a (n - 1)).toNat

end

end A077960.P10965500223561014252

/-!
# A077961: Expansion of 1 / (1 + x^2 - x^3) in powers of x.

The programs for A077961, the canonical program `A077961.P18347651037668836347` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077961 has offset 0).

The definition of A077961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2-x^3))` (program `A077961.P18347651037668836347`, by `A077961.P18347651037668836347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077961.P18347651037668836347

`ogf(1/(1+x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077961

/-- `ogf(1/(1+x^2-x^3))` -/
def P18347651037668836347.Spec : Prop :=
  ∀ n, P18347651037668836347.a n = A077961 n

theorem P18347651037668836347.correct : P18347651037668836347.Spec := by
  intro n
  simp only [A077961]

end A077961

/-! ## A077961.P14406241158231138648

`a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077961.P14406241158231138648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 3) - a (n - 2)

end

end A077961.P14406241158231138648

namespace A077961

/-- `a(n-3)-a(n-2)` -/
def P14406241158231138648.Spec : Prop :=
  ∀ n, P14406241158231138648.a n = A077961 n

end A077961

/-! ## A077961.P6964008095379229957

`1-A077888(n+2)`
-/

namespace A077961.P6964008095379229957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077888 (n + 2)

end

end A077961.P6964008095379229957

namespace A077961

/-- `1-A077888(n+2)` -/
def P6964008095379229957.Spec : Prop :=
  ∀ n, P6964008095379229957.a n = A077961 n

end A077961

/-! ## A077961.P8121120596900553389

`A033999(n)*A077962(n)`
-/

namespace A077961.P8121120596900553389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077962 n

end

end A077961.P8121120596900553389

namespace A077961

/-- `A033999(n)*A077962(n)` -/
def P8121120596900553389.Spec : Prop :=
  ∀ n, P8121120596900553389.a n = A077961 n

end A077961

/-! ## A077961.P1207849842284292760

`(A000035(n+1)-A000035(n))*A077962(n)`
-/

namespace A077961.P1207849842284292760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A077962 n

end

end A077961.P1207849842284292760

namespace A077961

/-- `(A000035(n+1)-A000035(n))*A077962(n)` -/
def P1207849842284292760.Spec : Prop :=
  ∀ n, P1207849842284292760.a n = A077961 n

end A077961

/-! ## A077961.P3942881794076314629

`∑[A078031(n)]`
-/

namespace A077961.P3942881794076314629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077961.P3942881794076314629

namespace A077961

/-- `∑[A078031(n)]` -/
def P3942881794076314629.Spec : Prop :=
  ∀ n, P3942881794076314629.a n = A077961 n

end A077961

/-! ## A077961.P2568699516333530212

`A375821(n)-A375823(n)`
-/

namespace A077961.P2568699516333530212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375821 n - A375823 n

end

end A077961.P2568699516333530212

namespace A077961

/-- `A375821(n)-A375823(n)` -/
def P2568699516333530212.Spec : Prop :=
  ∀ n, P2568699516333530212.a n = A077961 n

end A077961

/-! ## A077961.P13504756864136874397

`2*A375821(n)-A077939(n)`
-/

namespace A077961.P13504756864136874397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375821 n - A077939 n

end

end A077961.P13504756864136874397

namespace A077961

/-- `2*A375821(n)-A077939(n)` -/
def P13504756864136874397.Spec : Prop :=
  ∀ n, P13504756864136874397.a n = A077961 n

end A077961

/-! ## A077961.P10637994938514445585

`A077939(n)-2*A375823(n)`
-/

namespace A077961.P10637994938514445585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n - 2 * A375823 n

end

end A077961.P10637994938514445585

namespace A077961

/-- `A077939(n)-2*A375823(n)` -/
def P10637994938514445585.Spec : Prop :=
  ∀ n, P10637994938514445585.a n = A077961 n

end A077961

/-! ## A077961.P15265562177397683076

`A321196(∑[n])`
-/

namespace A077961.P15265562177397683076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321196 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077961.P15265562177397683076

namespace A077961

/-- `A321196(∑[n])` -/
def P15265562177397683076.Spec : Prop :=
  ∀ n, P15265562177397683076.a n = A077961 n

end A077961

/-!
# A077962: Expansion of 1/(1+x^2+x^3).

The programs for A077962, the canonical program `A077962.P14013672528330843286` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077962 has offset 0).

The definition of A077962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2+x^3))` (program `A077962.P14013672528330843286`, by `A077962.P14013672528330843286.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077962.P14013672528330843286

`ogf(1/(1+x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077962

/-- `ogf(1/(1+x^2+x^3))` -/
def P14013672528330843286.Spec : Prop :=
  ∀ n, P14013672528330843286.a n = A077962 n

theorem P14013672528330843286.correct : P14013672528330843286.Spec := by
  intro n
  simp only [A077962]

end A077962

/-! ## A077962.P1934911131189879445

`(-1)^n*A077961(n)`
-/

namespace A077962.P1934911131189879445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077961 n

end

end A077962.P1934911131189879445

namespace A077962

/-- `(-1)^n*A077961(n)` -/
def P1934911131189879445.Spec : Prop :=
  ∀ n, P1934911131189879445.a n = A077962 n

end A077962

/-! ## A077962.P8688826191074178790

`Δ[1-a(n-2)-a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A077962.P8688826191074178790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  1 - f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077962.P8688826191074178790

namespace A077962

/-- `Δ[1-a(n-2)-a(n-3)]` -/
def P8688826191074178790.Spec : Prop :=
  ∀ n, P8688826191074178790.a n = A077962 n

end A077962

/-! ## A077962.P1307860677590158709

`-(a(n-2)+a((n²-3)%n))` with `a(0)=1, a(1)=0`
-/

namespace A077962.P1307860677590158709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(a (n - 2) + a (Int.tmod ((n ^ 2 : ℤ) - 3) (n : ℤ)).toNat)

end

end A077962.P1307860677590158709

namespace A077962

/-- `-(a(n-2)+a((n²-3)%n))` -/
def P1307860677590158709.Spec : Prop :=
  ∀ n, P1307860677590158709.a n = A077962 n

end A077962

/-! ## A077962.P1088997121286350083

`a(n-1)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1`
-/

namespace A077962.P1088997121286350083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, -1] fun n a =>
  a (n - 1) + (a (n - 4) - a (n - 2))

end

end A077962.P1088997121286350083

namespace A077962

/-- `a(n-1)+a(n-4)-a(n-2)` -/
def P1088997121286350083.Spec : Prop :=
  ∀ n, P1088997121286350083.a n = A077962 n

end A077962

/-! ## A077962.P15883019454090229290

`a(n-2)-2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077962.P15883019454090229290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 2) - 2 * a (n - 2) - a (n - 3)

end

end A077962.P15883019454090229290

namespace A077962

/-- `a(n-2)-2*a(n-2)-a(n-3)` -/
def P15883019454090229290.Spec : Prop :=
  ∀ n, P15883019454090229290.a n = A077962 n

end A077962

/-! ## A077962.P3788892769204364953

`floor(a(n-1)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=0, a(2)=-1, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A077962.P3788892769204364953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1, -1] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 4))

end

end A077962.P3788892769204364953

namespace A077962

/-- `floor(a(n-1)-(a(n-2)-a(n-4)))` -/
def P3788892769204364953.Spec : Prop :=
  ∀ n, P3788892769204364953.a n = A077962 n

end A077962

/-! ## A077962.P14118562684824463241

`∑[a(n-1)-(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=0`
-/

namespace A077962.P14118562684824463241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 0] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077962.P14118562684824463241

namespace A077962

/-- `∑[a(n-1)-(a(n-2)-a(n-4))]` -/
def P14118562684824463241.Spec : Prop :=
  ∀ n, P14118562684824463241.a n = A077962 n

end A077962

/-! ## A077962.P6809653342461293064

`∑[A078032(n)]`
-/

namespace A077962.P6809653342461293064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077962.P6809653342461293064

namespace A077962

/-- `∑[A078032(n)]` -/
def P6809653342461293064.Spec : Prop :=
  ∀ n, P6809653342461293064.a n = A077962 n

end A077962

/-! ## A077962.P4913751769262917601

`A077961(n)*A087960(2*n)`
-/

namespace A077962.P4913751769262917601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 n * A087960 (2 * n)

end

end A077962.P4913751769262917601

namespace A077962

/-- `A077961(n)*A087960(2*n)` -/
def P4913751769262917601.Spec : Prop :=
  ∀ n, P4913751769262917601.a n = A077962 n

end A077962

/-! ## A077962.P5951206048368010082

`A077961(n)/A202038(Δ[A109613(n)])`
-/

namespace A077962.P5951206048368010082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077961 n : ℚ) / (A202038 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A077962.P5951206048368010082

namespace A077962

/-- `A077961(n)/A202038(Δ[A109613(n)])` -/
def P5951206048368010082.Spec : Prop :=
  ∀ n, P5951206048368010082.a n = (A077962 n : ℚ)

end A077962

/-! ## A077962.P11046144150584806318

`A077939(n)*A077961(n)/A077986(n)`
-/

namespace A077962.P11046144150584806318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n * A077961 n : ℚ) / (A077986 n : ℚ)

end

end A077962.P11046144150584806318

namespace A077962

/-- `A077939(n)*A077961(n)/A077986(n)` -/
def P11046144150584806318.Spec : Prop :=
  ∀ n, P11046144150584806318.a n = (A077962 n : ℚ)

end A077962

/-!
# A077963: Expansion of 1/(1+x^2+2*x^3).

The programs for A077963, the canonical program `A077963.P14190776719442698230` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077963 has offset 0).

The definition of A077963 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x^2+2x^3))` (program `A077963.P14190776719442698230`, by `A077963.P14190776719442698230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077963.P14190776719442698230

`ogf(1/(1+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077963

/-- `ogf(1/(1+x^2+2x^3))` -/
def P14190776719442698230.Spec : Prop :=
  ∀ n, P14190776719442698230.a n = A077963 n

theorem P14190776719442698230.correct : P14190776719442698230.Spec := by
  intro n
  simp only [A077963]

end A077963

/-! ## A077963.P2045622550999659221

`(-1)^n*A077912(n)`
-/

namespace A077963.P2045622550999659221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077912 n

end

end A077963.P2045622550999659221

namespace A077963

/-- `(-1)^n*A077912(n)` -/
def P2045622550999659221.Spec : Prop :=
  ∀ n, P2045622550999659221.a n = A077963 n

end A077963

/-! ## A077963.P787280702801295600

`xor(1, a(n-1)-2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A077963.P787280702801295600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.xor 1 (a (n - 1) - 2 * a (n - 2))

end

end A077963.P787280702801295600

namespace A077963

/-- `xor(1, a(n-1)-2*a(n-2))` -/
def P787280702801295600.Spec : Prop :=
  ∀ n, P787280702801295600.a n = A077963 n

end A077963

/-! ## A077963.P7801350848425866216

`a(n-3)-3*a(n-3)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-1`
-/

namespace A077963.P7801350848425866216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -1] fun n a =>
  a (n - 3) - 3 * a (n - 3) - a (n - 2)

end

end A077963.P7801350848425866216

namespace A077963

/-- `a(n-3)-3*a(n-3)-a(n-2)` -/
def P7801350848425866216.Spec : Prop :=
  ∀ n, P7801350848425866216.a n = A077963 n

end A077963

/-! ## A077963.P4131700103158002352

`∑[A078033(n)]`
-/

namespace A077963.P4131700103158002352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077963.P4131700103158002352

namespace A077963

/-- `∑[A078033(n)]` -/
def P4131700103158002352.Spec : Prop :=
  ∀ n, P4131700103158002352.a n = A077963 n

end A077963

/-! ## A077963.P16111454764080404937

`A077912(n)/A033999(n)`
-/

namespace A077963.P16111454764080404937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077912 n : ℚ) / (A033999 n : ℚ)

end

end A077963.P16111454764080404937

namespace A077963

/-- `A077912(n)/A033999(n)` -/
def P16111454764080404937.Spec : Prop :=
  ∀ n, P16111454764080404937.a n = (A077963 n : ℚ)

end A077963

/-! ## A077963.P4664249213640878503

`∑[A105578(n+1)]-A004526(n+1)`
-/

namespace A077963.P4664249213640878503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 (n + 1)

end

end A077963.P4664249213640878503

namespace A077963

/-- `∑[A105578(n+1)]-A004526(n+1)` -/
def P4664249213640878503.Spec : Prop :=
  ∀ n, P4664249213640878503.a n = A077963 n

end A077963

/-! ## A077963.P213061859317364278

`∑[a(n-1)-a(n-2)-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A077963.P213061859317364278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A077963.P213061859317364278

namespace A077963

/-- `∑[a(n-1)-a(n-2)-a(n-2)]-a(n-1)` -/
def P213061859317364278.Spec : Prop :=
  ∀ n, P213061859317364278.a n = A077963 n

end A077963

/-! ## A077963.P7177174547951151278

`A078020(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077963.P7177174547951151278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A078020 n + a (n - 2)

end

end A077963.P7177174547951151278

namespace A077963

/-- `A078020(n)+a(n-2)` -/
def P7177174547951151278.Spec : Prop :=
  ∀ n, P7177174547951151278.a n = A077963 n

end A077963

/-! ## A077963.P4721230024550804581

`A107920(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A077963.P4721230024550804581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107920 (n + 1) - a (n - 1)

end

end A077963.P4721230024550804581

namespace A077963

/-- `A107920(n+1)-a(n-1)` -/
def P4721230024550804581.Spec : Prop :=
  ∀ n, P4721230024550804581.a n = A077963 n

end A077963

/-! ## A077963.P1022797621020753269

`Δ[A078033(n+3)/4]`
-/

namespace A077963.P1022797621020753269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078033 (n + 3) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077963.P1022797621020753269

namespace A077963

/-- `Δ[A078033(n+3)/4]` -/
def P1022797621020753269.Spec : Prop :=
  ∀ n, P1022797621020753269.a n = (A077963 n : ℚ)

end A077963

/-! ## A077963.P3607231955477141816

`floor(-floor(A167433(n+1)/2)/2)`
-/

namespace A077963.P3607231955477141816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((⌊(A167433 (n + 1) : ℚ) / 2⌋ : ℚ) / 2)⌋

end

end A077963.P3607231955477141816

namespace A077963

/-- `floor(-floor(A167433(n+1)/2)/2)` -/
def P3607231955477141816.Spec : Prop :=
  ∀ n, P3607231955477141816.a n = A077963 n

end A077963

/-!
# A077964: Expansion of 1/(1+2*x^2-2*x^3).

The programs for A077964, the canonical program `A077964.P2379635801181084067` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077964 has offset 0).

The definition of A077964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x^2-2x^3))` (program `A077964.P2379635801181084067`, by `A077964.P2379635801181084067.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077964.P2379635801181084067

`ogf(1/(1+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077964

/-- `ogf(1/(1+2x^2-2x^3))` -/
def P2379635801181084067.Spec : Prop :=
  ∀ n, P2379635801181084067.a n = A077964 n

theorem P2379635801181084067.correct : P2379635801181084067.Spec := by
  intro n
  simp only [A077964]

end A077964

/-! ## A077964.P14220043774208519724

`(-1)^n*A077968(n)`
-/

namespace A077964.P14220043774208519724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077968 n

end

end A077964.P14220043774208519724

namespace A077964

/-- `(-1)^n*A077968(n)` -/
def P14220043774208519724.Spec : Prop :=
  ∀ n, P14220043774208519724.a n = A077964 n

end A077964

/-! ## A077964.P4809368336306467954

`2*(a(n-3)-a(n-2))` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077964.P4809368336306467954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  2 * (a (n - 3) - a (n - 2))

end

end A077964.P4809368336306467954

namespace A077964

/-- `2*(a(n-3)-a(n-2))` -/
def P4809368336306467954.Spec : Prop :=
  ∀ n, P4809368336306467954.a n = A077964 n

end A077964

/-! ## A077964.P555545205625757416

`a(n-3)-(a(n-2)+a(n-2)-a(n-3))` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077964.P555545205625757416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) - (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A077964.P555545205625757416

namespace A077964

/-- `a(n-3)-(a(n-2)+a(n-2)-a(n-3))` -/
def P555545205625757416.Spec : Prop :=
  ∀ n, P555545205625757416.a n = A077964 n

end A077964

/-! ## A077964.P15448440601681671891

`a(n-3)-(a(n-2)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077964.P15448440601681671891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 3)) - a (n - 2)

end

end A077964.P15448440601681671891

namespace A077964

/-- `a(n-3)-(a(n-2)-a(n-3))-a(n-2)` -/
def P15448440601681671891.Spec : Prop :=
  ∀ n, P15448440601681671891.a n = A077964 n

end A077964

/-! ## A077964.P1714045482259660888

`A077968(n)/A033999(n)`
-/

namespace A077964.P1714045482259660888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077968 n : ℚ) / (A033999 n : ℚ)

end

end A077964.P1714045482259660888

namespace A077964

/-- `A077968(n)/A033999(n)` -/
def P1714045482259660888.Spec : Prop :=
  ∀ n, P1714045482259660888.a n = (A077964 n : ℚ)

end A077964

/-! ## A077964.P6377604022956727058

`∑[A078034(n)]`
-/

namespace A077964.P6377604022956727058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077964.P6377604022956727058

namespace A077964

/-- `∑[A078034(n)]` -/
def P6377604022956727058.Spec : Prop :=
  ∀ n, P6377604022956727058.a n = A077964 n

end A077964

/-! ## A077964.P16001572709365714811

`(1-A077891(n+2))/2`
-/

namespace A077964.P16001572709365714811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A077891 (n + 2) : ℚ) / 2

end

end A077964.P16001572709365714811

namespace A077964

/-- `(1-A077891(n+2))/2` -/
def P16001572709365714811.Spec : Prop :=
  ∀ n, P16001572709365714811.a n = (A077964 n : ℚ)

end A077964

/-!
# A077965: Expansion of 1/(1+2*x^2-x^3).

The programs for A077965, the canonical program `A077965.P17916270004353286116` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077965 has offset 0).

The definition of A077965 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x^2-x^3))` (program `A077965.P17916270004353286116`, by `A077965.P17916270004353286116.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077965.P17916270004353286116

`ogf(1/(1+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077965

/-- `ogf(1/(1+2x^2-x^3))` -/
def P17916270004353286116.Spec : Prop :=
  ∀ n, P17916270004353286116.a n = A077965 n

theorem P17916270004353286116.correct : P17916270004353286116.Spec := by
  intro n
  simp only [A077965]

end A077965

/-! ## A077965.P17798235630475021484

`(-1)^n*A077967(n)`
-/

namespace A077965.P17798235630475021484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077967 n

end

end A077965.P17798235630475021484

namespace A077965

/-- `(-1)^n*A077967(n)` -/
def P17798235630475021484.Spec : Prop :=
  ∀ n, P17798235630475021484.a n = A077965 n

end A077965

/-! ## A077965.P7921931360835787389

`a(n-3)-2*a(n-2)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077965.P7921931360835787389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) - 2 * a (n - 2)

end

end A077965.P7921931360835787389

namespace A077965

/-- `a(n-3)-2*a(n-2)` -/
def P7921931360835787389.Spec : Prop :=
  ∀ n, P7921931360835787389.a n = A077965 n

end A077965

/-! ## A077965.P12748626572925714839

`a(n-3)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077965.P12748626572925714839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 3) - a (n - 2) - a (n - 2)

end

end A077965.P12748626572925714839

namespace A077965

/-- `a(n-3)-a(n-2)-a(n-2)` -/
def P12748626572925714839.Spec : Prop :=
  ∀ n, P12748626572925714839.a n = A077965 n

end A077965

/-! ## A077965.P15807708522683913930

`A077967(n)/A033999(n+2)`
-/

namespace A077965.P15807708522683913930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077967 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077965.P15807708522683913930

namespace A077965

/-- `A077967(n)/A033999(n+2)` -/
def P15807708522683913930.Spec : Prop :=
  ∀ n, P15807708522683913930.a n = (A077965 n : ℚ)

end A077965

/-! ## A077965.P5409992897665828451

`A077967(n)*A087960(2*n)`
-/

namespace A077965.P5409992897665828451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077967 n * A087960 (2 * n)

end

end A077965.P5409992897665828451

namespace A077965

/-- `A077967(n)*A087960(2*n)` -/
def P5409992897665828451.Spec : Prop :=
  ∀ n, P5409992897665828451.a n = A077965 n

end A077965

/-! ## A077965.P11781134679757999126

`∑[A078035(n)]`
-/

namespace A077965.P11781134679757999126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077965.P11781134679757999126

namespace A077965

/-- `∑[A078035(n)]` -/
def P11781134679757999126.Spec : Prop :=
  ∀ n, P11781134679757999126.a n = A077965 n

end A077965

/-!
# A077966: Expansion of 1/(1+2*x^2).

The programs for A077966, the canonical program `A077966.P1307819442978643719` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077966 has offset 0).

The definition of A077966 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x^2))` (program `A077966.P1307819442978643719`, by `A077966.P1307819442978643719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077966.P1307819442978643719

`ogf(1/(1+2x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077966

/-- `ogf(1/(1+2x^2))` -/
def P1307819442978643719.Spec : Prop :=
  ∀ n, P1307819442978643719.a n = A077966 n

theorem P1307819442978643719.correct : P1307819442978643719.Spec := by
  intro n
  simp only [A077966]

end A077966

/-! ## A077966.P14029008531041356832

`-2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077966.P14029008531041356832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(2 * a (n - 2))

end

end A077966.P14029008531041356832

namespace A077966

/-- `-2*a(n-2)` -/
def P14029008531041356832.Spec : Prop :=
  ∀ n, P14029008531041356832.a n = A077966 n

end A077966

/-! ## A077966.P18392755098679583771

`4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=0`
-/

namespace A077966.P18392755098679583771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 0] fun n a =>
  4 * a (n - 4)

end

end A077966.P18392755098679583771

namespace A077966

/-- `4*a(n-4)` -/
def P18392755098679583771.Spec : Prop :=
  ∀ n, P18392755098679583771.a n = A077966 n

end A077966

/-! ## A077966.P13954566786197078340

`(-((-1)^n+1))^(n/2)`
-/

namespace A077966.P13954566786197078340
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-((-1) ^ n + 1) : ℝ) ^ ((n : ℚ) / 2 : ℝ)

end

end A077966.P13954566786197078340

namespace A077966

/-- `(-((-1)^n+1))^(n/2)` -/
def P13954566786197078340.Spec : Prop :=
  ∀ n, P13954566786197078340.a n = (A077966 n : ℝ)

end A077966

/-! ## A077966.P8753860325246735665

`a(n-2)/(1/2-1)` with `a(0)=1, a(1)=0`
-/

namespace A077966.P8753860325246735665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2 - 1)

end

end A077966.P8753860325246735665

namespace A077966

/-- `a(n-2)/(1/2-1)` -/
def P8753860325246735665.Spec : Prop :=
  ∀ n, P8753860325246735665.a n = (A077966 n : ℚ)

end A077966

/-! ## A077966.P8771305599392126595

`∑[∏[Δ[n+1-a(n-1)]]]` with `a(0)=1, a(1)=2`
-/

namespace A077966.P8771305599392126595
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f3 =>
  (n + 1 : ℤ) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077966.P8771305599392126595

namespace A077966

/-- `∑[∏[Δ[n+1-a(n-1)]]]` -/
def P8771305599392126595.Spec : Prop :=
  ∀ n, P8771305599392126595.a n = A077966 n

end A077966

/-! ## A077966.P1837269941777359456

`Δ[1-a(n-2)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A077966.P1837269941777359456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077966.P1837269941777359456

namespace A077966

/-- `Δ[1-a(n-2)-a(n-2)]` -/
def P1837269941777359456.Spec : Prop :=
  ∀ n, P1837269941777359456.a n = A077966 n

end A077966

/-! ## A077966.P17664294453244328509

`char[1]-a(n-2)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A077966.P17664294453244328509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2) - a (n - 2)

end

end A077966.P17664294453244328509

namespace A077966

/-- `char[1]-a(n-2)-a(n-2)` -/
def P17664294453244328509.Spec : Prop :=
  ∀ n, P17664294453244328509.a n = A077966 n

end A077966

/-! ## A077966.P16802859375314871290

`1-floor(a(n-2)+a(n-2)+1)` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A077966.P16802859375314871290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - (a (n - 2) + (a (n - 2) + 1))

end

end A077966.P16802859375314871290

namespace A077966

/-- `1-floor(a(n-2)+a(n-2)+1)` -/
def P16802859375314871290.Spec : Prop :=
  ∀ n, P16802859375314871290.a n = A077966 n

end A077966

/-! ## A077966.P17991559809413799750

`floor(1-a(n-2)-a(n-2))-1` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A077966.P17991559809413799750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  1 - a (n - 2) - a (n - 2) - 1

end

end A077966.P17991559809413799750

namespace A077966

/-- `floor(1-a(n-2)-a(n-2))-1` -/
def P17991559809413799750.Spec : Prop :=
  ∀ n, P17991559809413799750.a n = A077966 n

end A077966

/-! ## A077966.P14039300382093265145

`n+1-∑[3-a(n-2)-a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A077966.P14039300382093265145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 - f1 (n - 2) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077966.P14039300382093265145

namespace A077966

/-- `n+1-∑[3-a(n-2)-a(n-2)]` -/
def P14039300382093265145.Spec : Prop :=
  ∀ n, P14039300382093265145.a n = A077966 n

end A077966

/-! ## A077966.P276884840740551970

`a(n-4)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=0, a(2)=-2, a(3)=0`
-/

namespace A077966.P276884840740551970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2, 0] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 2))

end

end A077966.P276884840740551970

namespace A077966

/-- `a(n-4)+a(n-4)-a(n-2)` -/
def P276884840740551970.Spec : Prop :=
  ∀ n, P276884840740551970.a n = A077966 n

end A077966

/-! ## A077966.P2876496347633961324

`∑[a(n-4)-(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=-1, a(2)=-2, a(3)=2`
-/

namespace A077966.P2876496347633961324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -2, 2] fun n f1 =>
  f1 (n - 4) - (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077966.P2876496347633961324

namespace A077966

/-- `∑[a(n-4)-(a(n-2)-a(n-4))]` -/
def P2876496347633961324.Spec : Prop :=
  ∀ n, P2876496347633961324.a n = A077966 n

end A077966

/-! ## A077966.P13795441296395839545

`∑[∏[A280193(n)]]`
-/

namespace A077966.P13795441296395839545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077966.P13795441296395839545

namespace A077966

/-- `∑[∏[A280193(n)]]` -/
def P13795441296395839545.Spec : Prop :=
  ∀ n, P13795441296395839545.a n = A077966 n

end A077966

/-! ## A077966.P5449464911065004624

`∑[A117575(n+1)]`
-/

namespace A077966.P5449464911065004624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077966.P5449464911065004624

namespace A077966

/-- `∑[A117575(n+1)]` -/
def P5449464911065004624.Spec : Prop :=
  ∀ n, P5449464911065004624.a n = A077966 n

end A077966

/-! ## A077966.P11405163379608182451

`a(n-2)*A113679(n)` with `a(0)=1, a(1)=0`
-/

namespace A077966.P11405163379608182451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) * A113679 n

end

end A077966.P11405163379608182451

namespace A077966

/-- `a(n-2)*A113679(n)` -/
def P11405163379608182451.Spec : Prop :=
  ∀ n, P11405163379608182451.a n = A077966 n

end A077966

/-! ## A077966.P8652582198522511115

`A077959(A006368(n))`
-/

namespace A077966.P8652582198522511115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A006368 n).toNat

end

end A077966.P8652582198522511115

namespace A077966

/-- `A077959(A006368(n))` -/
def P8652582198522511115.Spec : Prop :=
  ∀ n, P8652582198522511115.a n = A077966 n

end A077966

/-! ## A077966.P1824357894634141853

`A077959(A007494(n))`
-/

namespace A077966.P1824357894634141853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A007494 n).toNat

end

end A077966.P1824357894634141853

namespace A077966

/-- `A077959(A007494(n))` -/
def P1824357894634141853.Spec : Prop :=
  ∀ n, P1824357894634141853.a n = A077966 n

end A077966

/-! ## A077966.P14643518617284743851

`A077959(A026430(n))`
-/

namespace A077966.P14643518617284743851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A026430 n).toNat

end

end A077966.P14643518617284743851

namespace A077966

/-- `A077959(A026430(n))` -/
def P14643518617284743851.Spec : Prop :=
  ∀ n, P14643518617284743851.a n = A077966 n

end A077966

/-! ## A077966.P10550674151210566423

`A077959(A032766(n))`
-/

namespace A077966.P10550674151210566423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (A032766 n).toNat

end

end A077966.P10550674151210566423

namespace A077966

/-- `A077959(A032766(n))` -/
def P10550674151210566423.Spec : Prop :=
  ∀ n, P10550674151210566423.a n = A077966 n

end A077966

/-!
# A077967: Expansion of 1/(1+2*x^2+x^3).

The programs for A077967, the canonical program `A077967.P16910256895743127487` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077967 has offset 0).

The definition of A077967 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x^2+x^3))` (program `A077967.P16910256895743127487`, by `A077967.P16910256895743127487.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077967.P16910256895743127487

`ogf(1/(1+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077967

/-- `ogf(1/(1+2x^2+x^3))` -/
def P16910256895743127487.Spec : Prop :=
  ∀ n, P16910256895743127487.a n = A077967 n

theorem P16910256895743127487.correct : P16910256895743127487.Spec := by
  intro n
  simp only [A077967]

end A077967

/-! ## A077967.P13979456392710719565

`(-1)^n*A077965(n)`
-/

namespace A077967.P13979456392710719565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077965 n

end

end A077967.P13979456392710719565

namespace A077967

/-- `(-1)^n*A077965(n)` -/
def P13979456392710719565.Spec : Prop :=
  ∀ n, P13979456392710719565.a n = A077967 n

end A077967

/-! ## A077967.P3431981495486751284

`a(n-2)-(a(n-3)+3*a(n-2))` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077967.P3431981495486751284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 2) - (a (n - 3) + 3 * a (n - 2))

end

end A077967.P3431981495486751284

namespace A077967

/-- `a(n-2)-(a(n-3)+3*a(n-2))` -/
def P3431981495486751284.Spec : Prop :=
  ∀ n, P3431981495486751284.a n = A077967 n

end A077967

/-! ## A077967.P13919435838951677632

`a(n-2)-3*a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=-2`
-/

namespace A077967.P13919435838951677632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, -2] fun n a =>
  a (n - 2) - 3 * a (n - 2) - a (n - 3)

end

end A077967.P13919435838951677632

namespace A077967

/-- `a(n-2)-3*a(n-2)-a(n-3)` -/
def P13919435838951677632.Spec : Prop :=
  ∀ n, P13919435838951677632.a n = A077967 n

end A077967

/-! ## A077967.P10457099879057119994

`∑[A078036(n)]`
-/

namespace A077967.P10457099879057119994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077967.P10457099879057119994

namespace A077967

/-- `∑[A078036(n)]` -/
def P10457099879057119994.Spec : Prop :=
  ∀ n, P10457099879057119994.a n = A077967 n

end A077967

/-! ## A077967.P5979639488417923104

`A077965(n)/A033999(n+2)`
-/

namespace A077967.P5979639488417923104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077965 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077967.P5979639488417923104

namespace A077967

/-- `A077965(n)/A033999(n+2)` -/
def P5979639488417923104.Spec : Prop :=
  ∀ n, P5979639488417923104.a n = (A077967 n : ℚ)

end A077967

/-! ## A077967.P10118859446649851807

`A077965(n)*A130595(∑[n])`
-/

namespace A077967.P10118859446649851807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077965 n * A130595 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077967.P10118859446649851807

namespace A077967

/-- `A077965(n)*A130595(∑[n])` -/
def P10118859446649851807.Spec : Prop :=
  ∀ n, P10118859446649851807.a n = A077967 n

end A077967

/-!
# A077968: Expansion of 1/(1+2*x^2+2*x^3).

The programs for A077968, the canonical program `A077968.P3821453421111364404` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077968 has offset 0).

The definition of A077968 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x^2+2x^3))` (program `A077968.P3821453421111364404`, by `A077968.P3821453421111364404.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077968.P3821453421111364404

`ogf(1/(1+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077968

/-- `ogf(1/(1+2x^2+2x^3))` -/
def P3821453421111364404.Spec : Prop :=
  ∀ n, P3821453421111364404.a n = A077968 n

theorem P3821453421111364404.correct : P3821453421111364404.Spec := by
  intro n
  simp only [A077968]

end A077968

/-! ## A077968.P9536925941991514871

`(-1)^n*A077964(n)`
-/

namespace A077968.P9536925941991514871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077964 n

end

end A077968.P9536925941991514871

namespace A077968

/-- `(-1)^n*A077964(n)` -/
def P9536925941991514871.Spec : Prop :=
  ∀ n, P9536925941991514871.a n = A077968 n

end A077968

/-! ## A077968.P8510718408605013234

`∑[A078037(n)]`
-/

namespace A077968.P8510718408605013234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077968.P8510718408605013234

namespace A077968

/-- `∑[A078037(n)]` -/
def P8510718408605013234.Spec : Prop :=
  ∀ n, P8510718408605013234.a n = A077968 n

end A077968

/-! ## A077968.P1007720075699805568

`A123958(n+3)`
-/

namespace A077968.P1007720075699805568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123958 (n + 3)

end

end A077968.P1007720075699805568

namespace A077968

/-- `A123958(n+3)` -/
def P1007720075699805568.Spec : Prop :=
  ∀ n, P1007720075699805568.a n = A077968 n

end A077968

/-! ## A077968.P4584548984660225327

`A077964(n)/A033999(n)`
-/

namespace A077968.P4584548984660225327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077964 n : ℚ) / (A033999 n : ℚ)

end

end A077968.P4584548984660225327

namespace A077968

/-- `A077964(n)/A033999(n)` -/
def P4584548984660225327.Spec : Prop :=
  ∀ n, P4584548984660225327.a n = (A077968 n : ℚ)

end A077968

/-! ## A077968.P9798213328050083834

`A077964(n)/A056594(2*n)`
-/

namespace A077968.P9798213328050083834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077964 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A077968.P9798213328050083834

namespace A077968

/-- `A077964(n)/A056594(2*n)` -/
def P9798213328050083834.Spec : Prop :=
  ∀ n, P9798213328050083834.a n = (A077968 n : ℚ)

end A077968

/-! ## A077968.P3653443131177709978

`(-1)^n*∑[A078034(n)]`
-/

namespace A077968.P3653443131177709978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077968.P3653443131177709978

namespace A077968

/-- `(-1)^n*∑[A078034(n)]` -/
def P3653443131177709978.Spec : Prop :=
  ∀ n, P3653443131177709978.a n = A077968 n

end A077968

/-! ## A077968.P4725811221029167620

`∑[A078034(n)]*A033999(n)`
-/

namespace A077968.P4725811221029167620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077968.P4725811221029167620

namespace A077968

/-- `∑[A078034(n)]*A033999(n)` -/
def P4725811221029167620.Spec : Prop :=
  ∀ n, P4725811221029167620.a n = A077968 n

end A077968

/-! ## A077968.P4448757837845417811

`a(n-1)+A078037(n)%A000051(n)` with `a(0)=1`
-/

namespace A077968.P4448757837845417811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A078037 n) (A000051 n)

end

end A077968.P4448757837845417811

namespace A077968

/-- `a(n-1)+A078037(n)%A000051(n)` -/
def P4448757837845417811.Spec : Prop :=
  ∀ n, P4448757837845417811.a n = A077968 n

end A077968

/-!
# A077969: Numbers which can be expressed as the sum of two distinct primes in exactly three ways.

The programs for A077969, there is no canonical definition to state claims against.
-/

/-! ## A077969.P9466472713259877026

`eq[7, or(1, A002126(n))]`
-/

namespace A077969.P9466472713259877026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077969.P9466472713259877026

/-! ## A077969.P12445428714051712612

`eq[3, A117929(n+1)]+1`
-/

namespace A077969.P12445428714051712612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A077969.P12445428714051712612

/-! ## A077969.P13067504243832518733

`eq[3, A117929(xor(n, C(2, n)))]`
-/

namespace A077969.P13067504243832518733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (Nat.xor n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077969.P13067504243832518733

/-! ## A077969.P11747782748739945487

`2*eq[3, A125688(2*(n+1))]`
-/

namespace A077969.P11747782748739945487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077969.P11747782748739945487

/-! ## A077969.P12743593025895262371

`eq[1, A319399(A002126(n))]`
-/

namespace A077969.P12743593025895262371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319399 (A002126 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077969.P12743593025895262371

/-!
# A077970: Expansion of 1/(1+x-2*x^2+2*x^3).

The programs for A077970, the canonical program `A077970.P6943507329110383147` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077970 has offset 0).

The definition of A077970 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^2+2x^3))` (program `A077970.P6943507329110383147`, by `A077970.P6943507329110383147.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077970.P6943507329110383147

`ogf(1/(1+x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077970

/-- `ogf(1/(1+x-2x^2+2x^3))` -/
def P6943507329110383147.Spec : Prop :=
  ∀ n, P6943507329110383147.a n = A077970 n

theorem P6943507329110383147.correct : P6943507329110383147.Spec := by
  intro n
  simp only [A077970]

end A077970

/-! ## A077970.P18311979326043157804

`(-1)^n*A077946(n)`
-/

namespace A077970.P18311979326043157804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077946 n

end

end A077970.P18311979326043157804

namespace A077970

/-- `(-1)^n*A077946(n)` -/
def P18311979326043157804.Spec : Prop :=
  ∀ n, P18311979326043157804.a n = A077970 n

end A077970

/-! ## A077970.P3793987034786202045

`2*(a(n-2)-a(n-3))-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=3`
-/

namespace A077970.P3793987034786202045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 3] fun n a =>
  2 * (a (n - 2) - a (n - 3)) - a (n - 1)

end

end A077970.P3793987034786202045

namespace A077970

/-- `2*(a(n-2)-a(n-3))-a(n-1)` -/
def P3793987034786202045.Spec : Prop :=
  ∀ n, P3793987034786202045.a n = A077970 n

end A077970

/-! ## A077970.P9644494726853428942

`Δ[A077900(abs(1-n))]`
-/

namespace A077970.P9644494726853428942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077900 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077970.P9644494726853428942

namespace A077970

/-- `Δ[A077900(abs(1-n))]` -/
def P9644494726853428942.Spec : Prop :=
  ∀ n, P9644494726853428942.a n = A077970 n

end A077970

/-! ## A077970.P11716265251226231595

`∑[A078006(n)]*A033999(n)`
-/

namespace A077970.P11716265251226231595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077970.P11716265251226231595

namespace A077970

/-- `∑[A078006(n)]*A033999(n)` -/
def P11716265251226231595.Spec : Prop :=
  ∀ n, P11716265251226231595.a n = A077970 n

end A077970

/-! ## A077970.P4772176047958961696

`A077946(n)*A087960(2*n)`
-/

namespace A077970.P4772176047958961696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077946 n * A087960 (2 * n)

end

end A077970.P4772176047958961696

namespace A077970

/-- `A077946(n)*A087960(2*n)` -/
def P4772176047958961696.Spec : Prop :=
  ∀ n, P4772176047958961696.a n = A077970 n

end A077970

/-! ## A077970.P2880925877077978466

`∑[A078006(n)]*ratio[A057077(n)]`
-/

namespace A077970.P2880925877077978466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A077970.P2880925877077978466

namespace A077970

/-- `∑[A078006(n)]*ratio[A057077(n)]` -/
def P2880925877077978466.Spec : Prop :=
  ∀ n, P2880925877077978466.a n = (A077970 n : ℚ)

end A077970

/-! ## A077970.P10393136002790381224

`∑[A078006(n)]*A057077(2*n)`
-/

namespace A077970.P10393136002790381224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A077970.P10393136002790381224

namespace A077970

/-- `∑[A078006(n)]*A057077(2*n)` -/
def P10393136002790381224.Spec : Prop :=
  ∀ n, P10393136002790381224.a n = A077970 n

end A077970

/-! ## A077970.P14085105000462787293

`∑[A078006(n)]/A033999(A116939(n))`
-/

namespace A077970.P14085105000462787293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (A116939 n).toNat : ℚ)

end

end A077970.P14085105000462787293

namespace A077970

/-- `∑[A078006(n)]/A033999(A116939(n))` -/
def P14085105000462787293.Spec : Prop :=
  ∀ n, P14085105000462787293.a n = (A077970 n : ℚ)

end A077970

/-! ## A077970.P8286479362855274611

`∑[A078040(n)]`
-/

namespace A077970.P8286479362855274611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077970.P8286479362855274611

namespace A077970

/-- `∑[A078040(n)]` -/
def P8286479362855274611.Spec : Prop :=
  ∀ n, P8286479362855274611.a n = A077970 n

end A077970

/-! ## A077970.P17784123647613436290

`A077946(n)/A078040(n)*abs(A078040(n))`
-/

namespace A077970.P17784123647613436290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077946 n : ℚ) / (A078040 n : ℚ) * (|A078040 n| : ℚ)

end

end A077970.P17784123647613436290

namespace A077970

/-- `A077946(n)/A078040(n)*abs(A078040(n))` -/
def P17784123647613436290.Spec : Prop :=
  ∀ n, P17784123647613436290.a n = (A077970 n : ℚ)

end A077970

/-! ## A077970.P16639132598192582745

`(A238768(n+1)-A239812(n+1))*A033999(n)`
-/

namespace A077970.P16639132598192582745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238768 (n + 1) - A239812 (n + 1)) * A033999 n

end

end A077970.P16639132598192582745

namespace A077970

/-- `(A238768(n+1)-A239812(n+1))*A033999(n)` -/
def P16639132598192582745.Spec : Prop :=
  ∀ n, P16639132598192582745.a n = A077970 n

end A077970

/-! ## A077970.P12727709742497379699

`A077900(n+1)-(A078040(n+1)+A077900(n))`
-/

namespace A077970.P12727709742497379699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077900 (n + 1) - (A078040 (n + 1) + A077900 n)

end

end A077970.P12727709742497379699

namespace A077970

/-- `A077900(n+1)-(A078040(n+1)+A077900(n))` -/
def P12727709742497379699.Spec : Prop :=
  ∀ n, P12727709742497379699.a n = A077970 n

end A077970

/-! ## A077970.P12139729660393606992

`A077936(n)*A077946(n)/A077983(n)`
-/

namespace A077970.P12139729660393606992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077936 n * A077946 n : ℚ) / (A077983 n : ℚ)

end

end A077970.P12139729660393606992

namespace A077970

/-- `A077936(n)*A077946(n)/A077983(n)` -/
def P12139729660393606992.Spec : Prop :=
  ∀ n, P12139729660393606992.a n = (A077970 n : ℚ)

end A077970

/-! ## A077970.P4969877982974210643

`A077946(n)/A087960(n²)`
-/

namespace A077970.P4969877982974210643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077946 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A077970.P4969877982974210643

namespace A077970

/-- `A077946(n)/A087960(n²)` -/
def P4969877982974210643.Spec : Prop :=
  ∀ n, P4969877982974210643.a n = (A077970 n : ℚ)

end A077970

/-!
# A077971: Expansion of 1/(1+x-x^2-2*x^3).

The programs for A077971, the canonical program `A077971.P15691810624179097372` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077971 has offset 0).

The definition of A077971 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-2x^3))` (program `A077971.P15691810624179097372`, by `A077971.P15691810624179097372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077971.P15691810624179097372

`ogf(1/(1+x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077971

/-- `ogf(1/(1+x-x^2-2x^3))` -/
def P15691810624179097372.Spec : Prop :=
  ∀ n, P15691810624179097372.a n = A077971 n

theorem P15691810624179097372.correct : P15691810624179097372.Spec := by
  intro n
  simp only [A077971]

end A077971

/-! ## A077971.P621348120051302339

`(-1)^n*A077948(n)`
-/

namespace A077971.P621348120051302339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077948 n

end

end A077971.P621348120051302339

namespace A077971

/-- `(-1)^n*A077948(n)` -/
def P621348120051302339.Spec : Prop :=
  ∀ n, P621348120051302339.a n = A077971 n

end A077971

/-! ## A077971.P9246951154520605661

`2*a(n-3)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077971.P9246951154520605661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  2 * a (n - 3) + (a (n - 2) - a (n - 1))

end

end A077971.P9246951154520605661

namespace A077971

/-- `2*a(n-3)+a(n-2)-a(n-1)` -/
def P9246951154520605661.Spec : Prop :=
  ∀ n, P9246951154520605661.a n = A077971 n

end A077971

/-! ## A077971.P4824537595092570130

`a(n-2)-(a(n-1)-2*a(n-3))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077971.P4824537595092570130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) - (a (n - 1) - 2 * a (n - 3))

end

end A077971.P4824537595092570130

namespace A077971

/-- `a(n-2)-(a(n-1)-2*a(n-3))` -/
def P4824537595092570130.Spec : Prop :=
  ∀ n, P4824537595092570130.a n = A077971 n

end A077971

/-! ## A077971.P8936504453849480795

`a(n-2)+a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077971.P8936504453849480795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 3) - a (n - 1)))

end

end A077971.P8936504453849480795

namespace A077971

/-- `a(n-2)+a(n-3)+a(n-3)-a(n-1)` -/
def P8936504453849480795.Spec : Prop :=
  ∀ n, P8936504453849480795.a n = A077971 n

end A077971

/-! ## A077971.P15924383857377394869

`a(n-2)-(a(n-1)-a(n-3)-a(n-3))` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077971.P15924383857377394869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  a (n - 2) - (a (n - 1) - a (n - 3) - a (n - 3))

end

end A077971.P15924383857377394869

namespace A077971

/-- `a(n-2)-(a(n-1)-a(n-3)-a(n-3))` -/
def P15924383857377394869.Spec : Prop :=
  ∀ n, P15924383857377394869.a n = A077971 n

end A077971

/-! ## A077971.P13991271105036757723

`A077948(n)/A033999(n+2)`
-/

namespace A077971.P13991271105036757723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077948 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077971.P13991271105036757723

namespace A077971

/-- `A077948(n)/A033999(n+2)` -/
def P13991271105036757723.Spec : Prop :=
  ∀ n, P13991271105036757723.a n = (A077971 n : ℚ)

end A077971

/-! ## A077971.P1081422956647328219

`A077948(n)/A056594(A005843(n))`
-/

namespace A077971.P1081422956647328219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077948 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

end

end A077971.P1081422956647328219

namespace A077971

/-- `A077948(n)/A056594(A005843(n))` -/
def P1081422956647328219.Spec : Prop :=
  ∀ n, P1081422956647328219.a n = (A077971 n : ℚ)

end A077971

/-! ## A077971.P3184313086548212120

`A077948(n)/A056594(A266073(n))`
-/

namespace A077971.P3184313086548212120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077948 n : ℚ) / (A056594 (A266073 n).toNat : ℚ)

end

end A077971.P3184313086548212120

namespace A077971

/-- `A077948(n)/A056594(A266073(n))` -/
def P3184313086548212120.Spec : Prop :=
  ∀ n, P3184313086548212120.a n = (A077971 n : ℚ)

end A077971

/-! ## A077971.P1669181275489818435

`Δ[A077901(abs(1-n))]`
-/

namespace A077971.P1669181275489818435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077901 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077971.P1669181275489818435

namespace A077971

/-- `Δ[A077901(abs(1-n))]` -/
def P1669181275489818435.Spec : Prop :=
  ∀ n, P1669181275489818435.a n = A077971 n

end A077971

/-! ## A077971.P15176134630778355383

`∑[A078041(n)]`
-/

namespace A077971.P15176134630778355383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077971.P15176134630778355383

namespace A077971

/-- `∑[A078041(n)]` -/
def P15176134630778355383.Spec : Prop :=
  ∀ n, P15176134630778355383.a n = A077971 n

end A077971

/-! ## A077971.P10343921325560655520

`A077901(n+1)-(A078041(n+1)+A077901(n))`
-/

namespace A077971.P10343921325560655520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077901 (n + 1) - (A078041 (n + 1) + A077901 n)

end

end A077971.P10343921325560655520

namespace A077971

/-- `A077901(n+1)-(A078041(n+1)+A077901(n))` -/
def P10343921325560655520.Spec : Prop :=
  ∀ n, P10343921325560655520.a n = A077971 n

end A077971

/-! ## A077971.P13665264284705767923

`∑[A297870(n+3)-A000079(n+1)]`
-/

namespace A077971.P13665264284705767923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297870 (n + 3) - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077971.P13665264284705767923

namespace A077971

/-- `∑[A297870(n+3)-A000079(n+1)]` -/
def P13665264284705767923.Spec : Prop :=
  ∀ n, P13665264284705767923.a n = A077971 n

end A077971

/-! ## A077971.P11889036299119067378

`A297937(n+2)-2^(n+2)`
-/

namespace A077971.P11889036299119067378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297937 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A077971.P11889036299119067378

namespace A077971

/-- `A297937(n+2)-2^(n+2)` -/
def P11889036299119067378.Spec : Prop :=
  ∀ n, P11889036299119067378.a n = A077971 n

end A077971

/-!
# A077972: Expansion of 1/(1+x-x^2+2*x^3).

The programs for A077972, the canonical program `A077972.P11763165498080478140` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077972 has offset 0).

The definition of A077972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2+2x^3))` (program `A077972.P11763165498080478140`, by `A077972.P11763165498080478140.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077972.P11763165498080478140

`ogf(1/(1+x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077972

/-- `ogf(1/(1+x-x^2+2x^3))` -/
def P11763165498080478140.Spec : Prop :=
  ∀ n, P11763165498080478140.a n = A077972 n

theorem P11763165498080478140.correct : P11763165498080478140.Spec := by
  intro n
  simp only [A077972]

end A077972

/-! ## A077972.P1034555635209073234

`(-1)^n*A077947(n)`
-/

namespace A077972.P1034555635209073234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077947 n

end

end A077972.P1034555635209073234

namespace A077972

/-- `(-1)^n*A077947(n)` -/
def P1034555635209073234.Spec : Prop :=
  ∀ n, P1034555635209073234.a n = A077972 n

end A077972

/-! ## A077972.P6411354390143524897

`A010892(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A077972.P6411354390143524897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010892 n - 2 * a (n - 1)

end

end A077972.P6411354390143524897

namespace A077972

/-- `A010892(n)-2*a(n-1)` -/
def P6411354390143524897.Spec : Prop :=
  ∀ n, P6411354390143524897.a n = A077972 n

end A077972

/-! ## A077972.P1690586610447706861

`A163806(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A077972.P1690586610447706861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163806 (n + 1) - 2 * a (n - 1)

end

end A077972.P1690586610447706861

namespace A077972

/-- `A163806(n+1)-2*a(n-1)` -/
def P1690586610447706861.Spec : Prop :=
  ∀ n, P1690586610447706861.a n = A077972 n

end A077972

/-! ## A077972.P6893913584566808333

`A077947(n)/A033999(n)`
-/

namespace A077972.P6893913584566808333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077947 n : ℚ) / (A033999 n : ℚ)

end

end A077972.P6893913584566808333

namespace A077972

/-- `A077947(n)/A033999(n)` -/
def P6893913584566808333.Spec : Prop :=
  ∀ n, P6893913584566808333.a n = (A077972 n : ℚ)

end A077972

/-! ## A077972.P3224165330801877473

`∑[A078010(n)]*A010892(3*n)`
-/

namespace A077972.P3224165330801877473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * n)

end

end A077972.P3224165330801877473

namespace A077972

/-- `∑[A078010(n)]*A010892(3*n)` -/
def P3224165330801877473.Spec : Prop :=
  ∀ n, P3224165330801877473.a n = A077972 n

end A077972

/-! ## A077972.P5032122382888270708

`A077947(n)/A099837(n)*A100051(n)`
-/

namespace A077972.P5032122382888270708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077947 n : ℚ) / (A099837 n : ℚ) * (A100051 n : ℚ)

end

end A077972.P5032122382888270708

namespace A077972

/-- `A077947(n)/A099837(n)*A100051(n)` -/
def P5032122382888270708.Spec : Prop :=
  ∀ n, P5032122382888270708.a n = (A077972 n : ℚ)

end A077972

/-! ## A077972.P1847383101116417988

`floor(∑[(-2)^n+a(n-1)/3])` with `a(0)=1`
-/

namespace A077972.P1847383101116417988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((-2) ^ n : ℚ) + f1 (n - 1) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A077972.P1847383101116417988

namespace A077972

/-- `floor(∑[(-2)^n+a(n-1)/3])` -/
def P1847383101116417988.Spec : Prop :=
  ∀ n, P1847383101116417988.a n = A077972 n

end A077972

/-! ## A077972.P3685214218870770544

`(-2)^n/2-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=2`
-/

namespace A077972.P3685214218870770544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -1, 2] fun n a =>
  ((-2) ^ n : ℚ) / 2 - a (n - 3)

end

end A077972.P3685214218870770544

namespace A077972

/-- `(-2)^n/2-a(n-3)` -/
def P3685214218870770544.Spec : Prop :=
  ∀ n, P3685214218870770544.a n = (A077972 n : ℚ)

end A077972

/-! ## A077972.P18344043536625068429

`a(n-1)+(-2)^n-a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A077972.P18344043536625068429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) + ((-2) ^ n - a (n - 2))

end

end A077972.P18344043536625068429

namespace A077972

/-- `a(n-1)+(-2)^n-a(n-2)` -/
def P18344043536625068429.Spec : Prop :=
  ∀ n, P18344043536625068429.a n = A077972 n

end A077972

/-! ## A077972.P279002462862358157

`a(n-1)-(a(n-2)-(-2)^n)` with `a(0)=1, a(1)=-1`
-/

namespace A077972.P279002462862358157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 1) - (a (n - 2) - (-2) ^ n)

end

end A077972.P279002462862358157

namespace A077972

/-- `a(n-1)-(a(n-2)-(-2)^n)` -/
def P279002462862358157.Spec : Prop :=
  ∀ n, P279002462862358157.a n = A077972 n

end A077972

/-! ## A077972.P5494331881239904605

`∑[A078043(n)]`
-/

namespace A077972.P5494331881239904605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077972.P5494331881239904605

namespace A077972

/-- `∑[A078043(n)]` -/
def P5494331881239904605.Spec : Prop :=
  ∀ n, P5494331881239904605.a n = A077972 n

end A077972

/-! ## A077972.P9126279836194923739

`∑[A010892(n+1)-(a(n-1)+a(n-1))]` with `a(0)=1`
-/

namespace A077972.P9126279836194923739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A010892 (n + 1) - (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077972.P9126279836194923739

namespace A077972

/-- `∑[A010892(n+1)-(a(n-1)+a(n-1))]` -/
def P9126279836194923739.Spec : Prop :=
  ∀ n, P9126279836194923739.a n = A077972 n

end A077972

/-! ## A077972.P5056666270623940782

`Δ[A077903(abs(1-n))]`
-/

namespace A077972.P5056666270623940782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077903 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077972.P5056666270623940782

namespace A077972

/-- `Δ[A077903(abs(1-n))]` -/
def P5056666270623940782.Spec : Prop :=
  ∀ n, P5056666270623940782.a n = A077972 n

end A077972

/-! ## A077972.P1064281788728694702

`Δ[A077925(n)-A078043(n)]`
-/

namespace A077972.P1064281788728694702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n - A078043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077972.P1064281788728694702

namespace A077972

/-- `Δ[A077925(n)-A078043(n)]` -/
def P1064281788728694702.Spec : Prop :=
  ∀ n, P1064281788728694702.a n = A077972 n

end A077972

/-! ## A077972.P18215952973114263476

`round((-2)^(n+2)/7)`
-/

namespace A077972.P18215952973114263476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ (n + 2) : ℚ) / 7)

end

end A077972.P18215952973114263476

namespace A077972

/-- `round((-2)^(n+2)/7)` -/
def P18215952973114263476.Spec : Prop :=
  ∀ n, P18215952973114263476.a n = A077972 n

end A077972

/-! ## A077972.P14426948929076805924

`A077947(n)*A137206(n+1)/A135530(n)`
-/

namespace A077972.P14426948929076805924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077947 n * A137206 (n + 1) : ℚ) / (A135530 n : ℚ)

end

end A077972.P14426948929076805924

namespace A077972

/-- `A077947(n)*A137206(n+1)/A135530(n)` -/
def P14426948929076805924.Spec : Prop :=
  ∀ n, P14426948929076805924.a n = (A077972 n : ℚ)

end A077972

/-! ## A077972.P1635200906263420594

`A077947(n)*A294627(n+1)/A078043(n)`
-/

namespace A077972.P1635200906263420594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077947 n * A294627 (n + 1) : ℚ) / (A078043 n : ℚ)

end

end A077972.P1635200906263420594

namespace A077972

/-- `A077947(n)*A294627(n+1)/A078043(n)` -/
def P1635200906263420594.Spec : Prop :=
  ∀ n, P1635200906263420594.a n = (A077972 n : ℚ)

end A077972

/-!
# A077973: Expansion of 1/(1+x-2*x^3).

The programs for A077973, the canonical program `A077973.P6680589041856212912` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077973 has offset 0).

The definition of A077973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-2x^3))` (program `A077973.P6680589041856212912`, by `A077973.P6680589041856212912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077973.P6680589041856212912

`ogf(1/(1+x-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077973

/-- `ogf(1/(1+x-2x^3))` -/
def P6680589041856212912.Spec : Prop :=
  ∀ n, P6680589041856212912.a n = A077973 n

theorem P6680589041856212912.correct : P6680589041856212912.Spec := by
  intro n
  simp only [A077973]

end A077973

/-! ## A077973.P2916018792042832954

`(-1)^n*A077950(n)`
-/

namespace A077973.P2916018792042832954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077950 n

end

end A077973.P2916018792042832954

namespace A077973

/-- `(-1)^n*A077950(n)` -/
def P2916018792042832954.Spec : Prop :=
  ∀ n, P2916018792042832954.a n = A077973 n

end A077973

/-! ## A077973.P10233517588551216113

`1/5*(2*A134142(n)+1)`
-/

namespace A077973.P10233517588551216113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (2 * A134142 n + 1 : ℚ)

end

end A077973.P10233517588551216113

namespace A077973

/-- `1/5*(2*A134142(n)+1)` -/
def P10233517588551216113.Spec : Prop :=
  ∀ n, P10233517588551216113.a n = (A077973 n : ℚ)

end A077973

/-! ## A077973.P13015569983458994555

`1-4*a(n-4)` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A077973.P13015569983458994555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1] fun n a =>
  1 - 4 * a (n - 4)

end

end A077973.P13015569983458994555

namespace A077973

/-- `1-4*a(n-4)` -/
def P13015569983458994555.Spec : Prop :=
  ∀ n, P13015569983458994555.a n = A077973 n

end A077973

/-! ## A077973.P11591884696761800867

`a(n-3)+a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A077973.P11591884696761800867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 3) + (a (n - 3) - a (n - 1))

end

end A077973.P11591884696761800867

namespace A077973

/-- `a(n-3)+a(n-3)-a(n-1)` -/
def P11591884696761800867.Spec : Prop :=
  ∀ n, P11591884696761800867.a n = A077973 n

end A077973

/-! ## A077973.P385068227663715683

`floor(a(n-3)-(a(n-1)-a(n-3)))` with `a(0)=1, a(1)=-1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A077973.P385068227663715683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3))

end

end A077973.P385068227663715683

namespace A077973

/-- `floor(a(n-3)-(a(n-1)-a(n-3)))` -/
def P385068227663715683.Spec : Prop :=
  ∀ n, P385068227663715683.a n = A077973 n

end A077973

/-! ## A077973.P16256819273388350621

`∑[a(n-3)-(a(n-1)-a(n-3))]` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A077973.P16256819273388350621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n f1 =>
  f1 (n - 3) - (f1 (n - 1) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P16256819273388350621

namespace A077973

/-- `∑[a(n-3)-(a(n-1)-a(n-3))]` -/
def P16256819273388350621.Spec : Prop :=
  ∀ n, P16256819273388350621.a n = A077973 n

end A077973

/-! ## A077973.P10388113844644546726

`∑[A108520(n)]`
-/

namespace A077973.P10388113844644546726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P10388113844644546726

namespace A077973

/-- `∑[A108520(n)]` -/
def P10388113844644546726.Spec : Prop :=
  ∀ n, P10388113844644546726.a n = A077973 n

end A077973

/-! ## A077973.P11703589396716397694

`∑[∑[A078069(n)]]`
-/

namespace A077973.P11703589396716397694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P11703589396716397694

namespace A077973

/-- `∑[∑[A078069(n)]]` -/
def P11703589396716397694.Spec : Prop :=
  ∀ n, P11703589396716397694.a n = A077973 n

end A077973

/-! ## A077973.P4934941090196354933

`2-∑[A084102(n)]`
-/

namespace A077973.P4934941090196354933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P4934941090196354933

namespace A077973

/-- `2-∑[A084102(n)]` -/
def P4934941090196354933.Spec : Prop :=
  ∀ n, P4934941090196354933.a n = A077973 n

end A077973

/-! ## A077973.P6609457194427371031

`1-A137505(n+2)`
-/

namespace A077973.P6609457194427371031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137505 (n + 2)

end

end A077973.P6609457194427371031

namespace A077973

/-- `1-A137505(n+2)` -/
def P6609457194427371031.Spec : Prop :=
  ∀ n, P6609457194427371031.a n = A077973 n

end A077973

/-! ## A077973.P11142214516293539870

`∑[A009116(n)-a(n-1)]` with `a(0)=1`
-/

namespace A077973.P11142214516293539870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A009116 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P11142214516293539870

namespace A077973

/-- `∑[A009116(n)-a(n-1)]` -/
def P11142214516293539870.Spec : Prop :=
  ∀ n, P11142214516293539870.a n = A077973 n

end A077973

/-! ## A077973.P2467357940774306611

`∑[∑[A009116(n)-A009116(n+2)]]`
-/

namespace A077973.P2467357940774306611
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n - A009116 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P2467357940774306611

namespace A077973

/-- `∑[∑[A009116(n)-A009116(n+2)]]` -/
def P2467357940774306611.Spec : Prop :=
  ∀ n, P2467357940774306611.a n = A077973 n

end A077973

/-! ## A077973.P825959195586934472

`∑[A009545(n+1)*A056594(2*n)]`
-/

namespace A077973.P825959195586934472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P825959195586934472

namespace A077973

/-- `∑[A009545(n+1)*A056594(2*n)]` -/
def P825959195586934472.Spec : Prop :=
  ∀ n, P825959195586934472.a n = A077973 n

end A077973

/-! ## A077973.P13014279602830097419

`∑[A009116(n+3)/2]`
-/

namespace A077973.P13014279602830097419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009116 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P13014279602830097419

namespace A077973

/-- `∑[A009116(n+3)/2]` -/
def P13014279602830097419.Spec : Prop :=
  ∀ n, P13014279602830097419.a n = (A077973 n : ℚ)

end A077973

/-! ## A077973.P12742874316329144361

`A137470(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A077973.P12742874316329144361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137470 n - (a (n - 1) + a (n - 1))

end

end A077973.P12742874316329144361

namespace A077973

/-- `A137470(n)-(a(n-1)+a(n-1))` -/
def P12742874316329144361.Spec : Prop :=
  ∀ n, P12742874316329144361.a n = A077973 n

end A077973

/-! ## A077973.P1645719222322149379

`∑[A084102(n+1)+A009116(n+1)]`
-/

namespace A077973.P1645719222322149379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084102 (n + 1) + A009116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077973.P1645719222322149379

namespace A077973

/-- `∑[A084102(n+1)+A009116(n+1)]` -/
def P1645719222322149379.Spec : Prop :=
  ∀ n, P1645719222322149379.a n = A077973 n

end A077973

/-! ## A077973.P16669318231038683351

`(1-A137470(n+2))/2`
-/

namespace A077973.P16669318231038683351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A137470 (n + 2) : ℚ) / 2

end

end A077973.P16669318231038683351

namespace A077973

/-- `(1-A137470(n+2))/2` -/
def P16669318231038683351.Spec : Prop :=
  ∀ n, P16669318231038683351.a n = (A077973 n : ℚ)

end A077973

/-! ## A077973.P8725380567191292344

`Δ[A077904(abs(1-n))]`
-/

namespace A077973.P8725380567191292344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077904 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077973.P8725380567191292344

namespace A077973

/-- `Δ[A077904(abs(1-n))]` -/
def P8725380567191292344.Spec : Prop :=
  ∀ n, P8725380567191292344.a n = A077973 n

end A077973

/-!
# A077974: Expansion of 1/(1+x+2*x^3).

The programs for A077974, the canonical program `A077974.P10528717259917063457` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077974 has offset 0).

The definition of A077974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+2x^3))` (program `A077974.P10528717259917063457`, by `A077974.P10528717259917063457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077974.P10528717259917063457

`ogf(1/(1+x+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077974

/-- `ogf(1/(1+x+2x^3))` -/
def P10528717259917063457.Spec : Prop :=
  ∀ n, P10528717259917063457.a n = A077974 n

theorem P10528717259917063457.correct : P10528717259917063457.Spec := by
  intro n
  simp only [A077974]

end A077974

/-! ## A077974.P8036544346240389935

`a(n-1)-2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A077974.P8036544346240389935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 1) - 2 * (a (n - 1) + a (n - 3))

end

end A077974.P8036544346240389935

namespace A077974

/-- `a(n-1)-2*(a(n-1)+a(n-3))` -/
def P8036544346240389935.Spec : Prop :=
  ∀ n, P8036544346240389935.a n = A077974 n

end A077974

/-! ## A077974.P14832098389399589390

`a(n-3)-3*a(n-3)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A077974.P14832098389399589390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  a (n - 3) - 3 * a (n - 3) - a (n - 1)

end

end A077974.P14832098389399589390

namespace A077974

/-- `a(n-3)-3*a(n-3)-a(n-1)` -/
def P14832098389399589390.Spec : Prop :=
  ∀ n, P14832098389399589390.a n = A077974 n

end A077974

/-! ## A077974.P3970099619703527708

`∑[A078044(n)]`
-/

namespace A077974.P3970099619703527708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077974.P3970099619703527708

namespace A077974

/-- `∑[A078044(n)]` -/
def P3970099619703527708.Spec : Prop :=
  ∀ n, P3970099619703527708.a n = A077974 n

end A077974

/-! ## A077974.P9907076893871092998

`Δ[A077906(abs(1-n))]`
-/

namespace A077974.P9907076893871092998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077906 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077974.P9907076893871092998

namespace A077974

/-- `Δ[A077906(abs(1-n))]` -/
def P9907076893871092998.Spec : Prop :=
  ∀ n, P9907076893871092998.a n = A077974 n

end A077974

/-! ## A077974.P11815069774489995725

`(-1)^n*∑[A052537(n)]`
-/

namespace A077974.P11815069774489995725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077974.P11815069774489995725

namespace A077974

/-- `(-1)^n*∑[A052537(n)]` -/
def P11815069774489995725.Spec : Prop :=
  ∀ n, P11815069774489995725.a n = A077974 n

end A077974

/-! ## A077974.P4728673722045594333

`A033999(n)*A077949(n)`
-/

namespace A077974.P4728673722045594333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077949 n

end

end A077974.P4728673722045594333

namespace A077974

/-- `A033999(n)*A077949(n)` -/
def P4728673722045594333.Spec : Prop :=
  ∀ n, P4728673722045594333.a n = A077974 n

end A077974

/-! ## A077974.P4218294452862578276

`∑[A052537(n)]*A033999(n)`
-/

namespace A077974.P4218294452862578276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077974.P4218294452862578276

namespace A077974

/-- `∑[A052537(n)]*A033999(n)` -/
def P4218294452862578276.Spec : Prop :=
  ∀ n, P4218294452862578276.a n = A077974 n

end A077974

/-! ## A077974.P9328304326486828759

`(A004442(n)-n)*A077949(n)`
-/

namespace A077974.P9328304326486828759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077949 n

end

end A077974.P9328304326486828759

namespace A077974

/-- `(A004442(n)-n)*A077949(n)` -/
def P9328304326486828759.Spec : Prop :=
  ∀ n, P9328304326486828759.a n = A077974 n

end A077974

/-! ## A077974.P6152743457479211602

`Δ[Δ[A003479(n+1)/2]]*A033999(n)`
-/

namespace A077974.P6152743457479211602
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003479 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (A033999 n : ℚ)

end

end A077974.P6152743457479211602

namespace A077974

/-- `Δ[Δ[A003479(n+1)/2]]*A033999(n)` -/
def P6152743457479211602.Spec : Prop :=
  ∀ n, P6152743457479211602.a n = (A077974 n : ℚ)

end A077974

/-!
# A077975: Expansion of 1/(1+x+x^2-2*x^3).

The programs for A077975, the canonical program `A077975.P7744156649514383742` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077975 has offset 0).

The definition of A077975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2-2x^3))` (program `A077975.P7744156649514383742`, by `A077975.P7744156649514383742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077975.P10160036831124907737

`2*a(n-3)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A077975.P10160036831124907737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  2 * a (n - 3) - a (n - 2) - a (n - 1)

end

end A077975.P10160036831124907737

namespace A077975

/-- `2*a(n-3)-a(n-2)-a(n-1)` -/
def P10160036831124907737.Spec : Prop :=
  ∀ n, P10160036831124907737.a n = A077975 n

end A077975

/-! ## A077975.P7744156649514383742

`ogf(1/(1+x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077975

/-- `ogf(1/(1+x+x^2-2x^3))` -/
def P7744156649514383742.Spec : Prop :=
  ∀ n, P7744156649514383742.a n = A077975 n

theorem P7744156649514383742.correct : P7744156649514383742.Spec := by
  intro n
  simp only [A077975]

end A077975

/-! ## A077975.P14305333708307996802

`a(n-3)+a(n-3)-(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A077975.P14305333708307996802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) + (a (n - 3) - (a (n - 1) + a (n - 2)))

end

end A077975.P14305333708307996802

namespace A077975

/-- `a(n-3)+a(n-3)-(a(n-1)+a(n-2))` -/
def P14305333708307996802.Spec : Prop :=
  ∀ n, P14305333708307996802.a n = A077975 n

end A077975

/-! ## A077975.P12227126370693134754

`a(n-3)-(a(n-1)-a(n-3))-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A077975.P12227126370693134754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 3) - (a (n - 1) - a (n - 3)) - a (n - 2)

end

end A077975.P12227126370693134754

namespace A077975

/-- `a(n-3)-(a(n-1)-a(n-3))-a(n-2)` -/
def P12227126370693134754.Spec : Prop :=
  ∀ n, P12227126370693134754.a n = A077975 n

end A077975

/-! ## A077975.P6877729481603720850

`Δ[A077907(abs(1-n))]`
-/

namespace A077975.P6877729481603720850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077907 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077975.P6877729481603720850

namespace A077975

/-- `Δ[A077907(abs(1-n))]` -/
def P6877729481603720850.Spec : Prop :=
  ∀ n, P6877729481603720850.a n = A077975 n

end A077975

/-! ## A077975.P14895854183214878621

`A033999(n)*A077952(n)`
-/

namespace A077975.P14895854183214878621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077952 n

end

end A077975.P14895854183214878621

namespace A077975

/-- `A033999(n)*A077952(n)` -/
def P14895854183214878621.Spec : Prop :=
  ∀ n, P14895854183214878621.a n = A077975 n

end A077975

/-! ## A077975.P3334680494642197050

`∑[A078017(n)]*A033999(n)`
-/

namespace A077975.P3334680494642197050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077975.P3334680494642197050

namespace A077975

/-- `∑[A078017(n)]*A033999(n)` -/
def P3334680494642197050.Spec : Prop :=
  ∀ n, P3334680494642197050.a n = A077975 n

end A077975

/-! ## A077975.P15258673496020591840

`A077952(n)/A033999(n+2)`
-/

namespace A077975.P15258673496020591840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077952 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077975.P15258673496020591840

namespace A077975

/-- `A077952(n)/A033999(n+2)` -/
def P15258673496020591840.Spec : Prop :=
  ∀ n, P15258673496020591840.a n = (A077975 n : ℚ)

end A077975

/-! ## A077975.P7124665360333928652

`∑[A078045(n)]`
-/

namespace A077975.P7124665360333928652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077975.P7124665360333928652

namespace A077975

/-- `∑[A078045(n)]` -/
def P7124665360333928652.Spec : Prop :=
  ∀ n, P7124665360333928652.a n = A077975 n

end A077975

/-! ## A077975.P1893354433623280258

`A103749(n)-(A103749(n+1)+A078045(n+1))`
-/

namespace A077975.P1893354433623280258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103749 n - (A103749 (n + 1) + A078045 (n + 1))

end

end A077975.P1893354433623280258

namespace A077975

/-- `A103749(n)-(A103749(n+1)+A078045(n+1))` -/
def P1893354433623280258.Spec : Prop :=
  ∀ n, P1893354433623280258.a n = A077975 n

end A077975

/-!
# A077976: Expansion of 1/(1+x+x^2+2*x^3).

The programs for A077976, the canonical program `A077976.P9629782260210850554` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077976 has offset 0).

The definition of A077976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+x^2+2x^3))` (program `A077976.P9629782260210850554`, by `A077976.P9629782260210850554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077976.P9629782260210850554

`ogf(1/(1+x+x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077976

/-- `ogf(1/(1+x+x^2+2x^3))` -/
def P9629782260210850554.Spec : Prop :=
  ∀ n, P9629782260210850554.a n = A077976 n

theorem P9629782260210850554.correct : P9629782260210850554.Spec := by
  intro n
  simp only [A077976]

end A077976

/-! ## A077976.P13750549980738889806

`2*a(n-4)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=-1`
-/

namespace A077976.P13750549980738889806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, -1] fun n a =>
  2 * a (n - 4) - a (n - 3)

end

end A077976.P13750549980738889806

namespace A077976

/-- `2*a(n-4)-a(n-3)` -/
def P13750549980738889806.Spec : Prop :=
  ∀ n, P13750549980738889806.a n = A077976 n

end A077976

/-! ## A077976.P9766017868933896967

`a(n-4)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=-1`
-/

namespace A077976.P9766017868933896967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, -1] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 3))

end

end A077976.P9766017868933896967

namespace A077976

/-- `a(n-4)+a(n-4)-a(n-3)` -/
def P9766017868933896967.Spec : Prop :=
  ∀ n, P9766017868933896967.a n = A077976 n

end A077976

/-! ## A077976.P9679622252191470322

`floor(a(n-4)-(a(n-3)-a(n-4)))` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A077976.P9679622252191470322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0, -1] fun n a =>
  a (n - 4) - (a (n - 3) - a (n - 4))

end

end A077976.P9679622252191470322

namespace A077976

/-- `floor(a(n-4)-(a(n-3)-a(n-4)))` -/
def P9679622252191470322.Spec : Prop :=
  ∀ n, P9679622252191470322.a n = A077976 n

end A077976

/-! ## A077976.P211910735026671991

`Δ[A077909(abs(1-n))]`
-/

namespace A077976.P211910735026671991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077909 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077976.P211910735026671991

namespace A077976

/-- `Δ[A077909(abs(1-n))]` -/
def P211910735026671991.Spec : Prop :=
  ∀ n, P211910735026671991.a n = A077976 n

end A077976

/-! ## A077976.P14327288140285379260

`A033999(n)*A077951(n)`
-/

namespace A077976.P14327288140285379260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077951 n

end

end A077976.P14327288140285379260

namespace A077976

/-- `A033999(n)*A077951(n)` -/
def P14327288140285379260.Spec : Prop :=
  ∀ n, P14327288140285379260.a n = A077976 n

end A077976

/-! ## A077976.P3872141675300331632

`∑[A078015(n)]*A033999(n)`
-/

namespace A077976.P3872141675300331632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077976.P3872141675300331632

namespace A077976

/-- `∑[A078015(n)]*A033999(n)` -/
def P3872141675300331632.Spec : Prop :=
  ∀ n, P3872141675300331632.a n = A077976 n

end A077976

/-! ## A077976.P4639987443749489098

`A077951(n)/A033999(n+2)`
-/

namespace A077976.P4639987443749489098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077951 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077976.P4639987443749489098

namespace A077976

/-- `A077951(n)/A033999(n+2)` -/
def P4639987443749489098.Spec : Prop :=
  ∀ n, P4639987443749489098.a n = (A077976 n : ℚ)

end A077976

/-! ## A077976.P6313531318654092903

`A009001(2*n)*A077951(n)`
-/

namespace A077976.P6313531318654092903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A077951 n

end

end A077976.P6313531318654092903

namespace A077976

/-- `A009001(2*n)*A077951(n)` -/
def P6313531318654092903.Spec : Prop :=
  ∀ n, P6313531318654092903.a n = A077976 n

end A077976

/-! ## A077976.P18315524984721999326

`(A004442(n)-n)*A077951(n)`
-/

namespace A077976.P18315524984721999326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077951 n

end

end A077976.P18315524984721999326

namespace A077976

/-- `(A004442(n)-n)*A077951(n)` -/
def P18315524984721999326.Spec : Prop :=
  ∀ n, P18315524984721999326.a n = A077976 n

end A077976

/-! ## A077976.P575914743606632221

`∑[a(n-4)-(a(n-3)-a(n-4))]` with `a(0)=1, a(1)=-2, a(2)=1, a(3)=-1`
-/

namespace A077976.P575914743606632221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1, -1] fun n f1 =>
  f1 (n - 4) - (f1 (n - 3) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077976.P575914743606632221

namespace A077976

/-- `∑[a(n-4)-(a(n-3)-a(n-4))]` -/
def P575914743606632221.Spec : Prop :=
  ∀ n, P575914743606632221.a n = A077976 n

end A077976

/-! ## A077976.P1466105035298519932

`∑[∑[-A279677(n+3)]]`
-/

namespace A077976.P1466105035298519932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A279677 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077976.P1466105035298519932

namespace A077976

/-- `∑[∑[-A279677(n+3)]]` -/
def P1466105035298519932.Spec : Prop :=
  ∀ n, P1466105035298519932.a n = A077976 n

end A077976

/-! ## A077976.P7548781753257715689

`∑[A078047(n)]`
-/

namespace A077976.P7548781753257715689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077976.P7548781753257715689

namespace A077976

/-- `∑[A078047(n)]` -/
def P7548781753257715689.Spec : Prop :=
  ∀ n, P7548781753257715689.a n = A077976 n

end A077976

/-! ## A077976.P14492771675168728595

`A077909(n+1)-(A078047(n+1)+A077909(n))`
-/

namespace A077976.P14492771675168728595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077909 (n + 1) - (A078047 (n + 1) + A077909 n)

end

end A077976.P14492771675168728595

namespace A077976

/-- `A077909(n+1)-(A078047(n+1)+A077909(n))` -/
def P14492771675168728595.Spec : Prop :=
  ∀ n, P14492771675168728595.a n = A077976 n

end A077976

/-! ## A077976.P458740116998686964

`A077951(n)*A078047(n)/abs(A078047(n))`
-/

namespace A077976.P458740116998686964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077951 n * A078047 n : ℚ) / (|A078047 n| : ℚ)

end

end A077976.P458740116998686964

namespace A077976

/-- `A077951(n)*A078047(n)/abs(A078047(n))` -/
def P458740116998686964.Spec : Prop :=
  ∀ n, P458740116998686964.a n = (A077976 n : ℚ)

end A077976

/-!
# A077977: Expansion of 1/(1+x+2*x^2-2*x^3).

The programs for A077977, the canonical program `A077977.P13470695799595286114` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077977 has offset 0).

The definition of A077977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+2x^2-2x^3))` (program `A077977.P13470695799595286114`, by `A077977.P13470695799595286114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077977.P13470695799595286114

`ogf(1/(1+x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077977

/-- `ogf(1/(1+x+2x^2-2x^3))` -/
def P13470695799595286114.Spec : Prop :=
  ∀ n, P13470695799595286114.a n = A077977 n

theorem P13470695799595286114.correct : P13470695799595286114.Spec := by
  intro n
  simp only [A077977]

end A077977

/-! ## A077977.P9639422490575776743

`(-1)^n*A077956(n)`
-/

namespace A077977.P9639422490575776743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077956 n

end

end A077977.P9639422490575776743

namespace A077977

/-- `(-1)^n*A077956(n)` -/
def P9639422490575776743.Spec : Prop :=
  ∀ n, P9639422490575776743.a n = A077977 n

end A077977

/-! ## A077977.P10422265697527862267

`2*(a(n-3)-a(n-2))-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A077977.P10422265697527862267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  2 * (a (n - 3) - a (n - 2)) - a (n - 1)

end

end A077977.P10422265697527862267

namespace A077977

/-- `2*(a(n-3)-a(n-2))-a(n-1)` -/
def P10422265697527862267.Spec : Prop :=
  ∀ n, P10422265697527862267.a n = A077977 n

end A077977

/-! ## A077977.P16899486482620450217

`Δ[A077910(abs(1-n))]`
-/

namespace A077977.P16899486482620450217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077910 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077977.P16899486482620450217

namespace A077977

/-- `Δ[A077910(abs(1-n))]` -/
def P16899486482620450217.Spec : Prop :=
  ∀ n, P16899486482620450217.a n = A077977 n

end A077977

/-! ## A077977.P16863811086696164789

`∑[A078022(n)]*A033999(n)`
-/

namespace A077977.P16863811086696164789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077977.P16863811086696164789

namespace A077977

/-- `∑[A078022(n)]*A033999(n)` -/
def P16863811086696164789.Spec : Prop :=
  ∀ n, P16863811086696164789.a n = A077977 n

end A077977

/-! ## A077977.P3202854813135547084

`A077956(n)/A033999(n+2)`
-/

namespace A077977.P3202854813135547084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077956 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077977.P3202854813135547084

namespace A077977

/-- `A077956(n)/A033999(n+2)` -/
def P3202854813135547084.Spec : Prop :=
  ∀ n, P3202854813135547084.a n = (A077977 n : ℚ)

end A077977

/-! ## A077977.P14355023971926794595

`∑[A078022(n)]*A009531(2*n+1)`
-/

namespace A077977.P14355023971926794595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (2 * n + 1)

end

end A077977.P14355023971926794595

namespace A077977

/-- `∑[A078022(n)]*A009531(2*n+1)` -/
def P14355023971926794595.Spec : Prop :=
  ∀ n, P14355023971926794595.a n = A077977 n

end A077977

/-! ## A077977.P287532977449309075

`∑[A078022(n)]/A009531(A005408(n))`
-/

namespace A077977.P287532977449309075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078022 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A077977.P287532977449309075

namespace A077977

/-- `∑[A078022(n)]/A009531(A005408(n))` -/
def P287532977449309075.Spec : Prop :=
  ∀ n, P287532977449309075.a n = (A077977 n : ℚ)

end A077977

/-! ## A077977.P16213417038510175741

`∑[A078048(n)]`
-/

namespace A077977.P16213417038510175741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078048 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077977.P16213417038510175741

namespace A077977

/-- `∑[A078048(n)]` -/
def P16213417038510175741.Spec : Prop :=
  ∀ n, P16213417038510175741.a n = A077977 n

end A077977

/-!
# A077978: Expansion of 1/(1+x+2*x^2-x^3).

The programs for A077978, the canonical program `A077978.P2733008609294646146` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077978 has offset 0).

The definition of A077978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+2x^2-x^3))` (program `A077978.P2733008609294646146`, by `A077978.P2733008609294646146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077978.P2733008609294646146

`ogf(1/(1+x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077978

/-- `ogf(1/(1+x+2x^2-x^3))` -/
def P2733008609294646146.Spec : Prop :=
  ∀ n, P2733008609294646146.a n = A077978 n

theorem P2733008609294646146.correct : P2733008609294646146.Spec := by
  intro n
  simp only [A077978]

end A077978

/-! ## A077978.P14287634323868294852

`(-1)^n*A077955(n)`
-/

namespace A077978.P14287634323868294852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077955 n

end

end A077978.P14287634323868294852

namespace A077978

/-- `(-1)^n*A077955(n)` -/
def P14287634323868294852.Spec : Prop :=
  ∀ n, P14287634323868294852.a n = A077978 n

end A077978

/-! ## A077978.P3599242959960895848

`a(n-3)-(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A077978.P3599242959960895848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 3) - (a (n - 1) + 2 * a (n - 2))

end

end A077978.P3599242959960895848

namespace A077978

/-- `a(n-3)-(a(n-1)+2*a(n-2))` -/
def P3599242959960895848.Spec : Prop :=
  ∀ n, P3599242959960895848.a n = A077978 n

end A077978

/-! ## A077978.P3221520177224901603

`a(n-3)-2*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A077978.P3221520177224901603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 3) - 2 * a (n - 2) - a (n - 1)

end

end A077978.P3221520177224901603

namespace A077978

/-- `a(n-3)-2*a(n-2)-a(n-1)` -/
def P3221520177224901603.Spec : Prop :=
  ∀ n, P3221520177224901603.a n = A077978 n

end A077978

/-! ## A077978.P8057090052957800752

`a(n-3)-(a(n-2)+a(n-1)+a(n-2))` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A077978.P8057090052957800752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 3) - (a (n - 2) + (a (n - 1) + a (n - 2)))

end

end A077978.P8057090052957800752

namespace A077978

/-- `a(n-3)-(a(n-2)+a(n-1)+a(n-2))` -/
def P8057090052957800752.Spec : Prop :=
  ∀ n, P8057090052957800752.a n = A077978 n

end A077978

/-! ## A077978.P12604838616283562898

`a(n-3)-a(n-1)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1`
-/

namespace A077978.P12604838616283562898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 2) - a (n - 2)

end

end A077978.P12604838616283562898

namespace A077978

/-- `a(n-3)-a(n-1)-a(n-2)-a(n-2)` -/
def P12604838616283562898.Spec : Prop :=
  ∀ n, P12604838616283562898.a n = A077978 n

end A077978

/-! ## A077978.P17926921203436865803

`∑[A078049(n)]`
-/

namespace A077978.P17926921203436865803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077978.P17926921203436865803

namespace A077978

/-- `∑[A078049(n)]` -/
def P17926921203436865803.Spec : Prop :=
  ∀ n, P17926921203436865803.a n = A077978 n

end A077978

/-! ## A077978.P2400846733156211935

`Δ[A077911(abs(1-n))]`
-/

namespace A077978.P2400846733156211935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077911 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077978.P2400846733156211935

namespace A077978

/-- `Δ[A077911(abs(1-n))]` -/
def P2400846733156211935.Spec : Prop :=
  ∀ n, P2400846733156211935.a n = A077978 n

end A077978

/-! ## A077978.P7477025508318483858

`A078049(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A077978.P7477025508318483858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078049 (n % (n + 1)) + a (n - 1)

end

end A077978.P7477025508318483858

namespace A077978

/-- `A078049(n%(n+1))+a(n-1)` -/
def P7477025508318483858.Spec : Prop :=
  ∀ n, P7477025508318483858.a n = A077978 n

end A077978

/-! ## A077978.P9332213389303096333

`A077955(n)/A033999(n)`
-/

namespace A077978.P9332213389303096333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077955 n : ℚ) / (A033999 n : ℚ)

end

end A077978.P9332213389303096333

namespace A077978

/-- `A077955(n)/A033999(n)` -/
def P9332213389303096333.Spec : Prop :=
  ∀ n, P9332213389303096333.a n = (A077978 n : ℚ)

end A077978

/-! ## A077978.P9752472010425815295

`A077911(n+1)-(A078049(n+1)+A077911(n))`
-/

namespace A077978.P9752472010425815295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077911 (n + 1) - (A078049 (n + 1) + A077911 n)

end

end A077978.P9752472010425815295

namespace A077978

/-- `A077911(n+1)-(A078049(n+1)+A077911(n))` -/
def P9752472010425815295.Spec : Prop :=
  ∀ n, P9752472010425815295.a n = A077978 n

end A077978

/-! ## A077978.P3357732607262284866

`A276229(n+1)+A078049(n)`
-/

namespace A077978.P3357732607262284866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276229 (n + 1) + A078049 n

end

end A077978.P3357732607262284866

namespace A077978

/-- `A276229(n+1)+A078049(n)` -/
def P3357732607262284866.Spec : Prop :=
  ∀ n, P3357732607262284866.a n = A077978 n

end A077978

/-! ## A077978.P8441978976943523304

`A276229(n+2)`
-/

namespace A077978.P8441978976943523304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276229 (n + 2)

end

end A077978.P8441978976943523304

namespace A077978

/-- `A276229(n+2)` -/
def P8441978976943523304.Spec : Prop :=
  ∀ n, P8441978976943523304.a n = A077978 n

end A077978

/-!
# A077979: Expansion of 1/(1+x+2*x^2+x^3).

The programs for A077979, the canonical program `A077979.P13960553921155272956` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077979 has offset 0).

The definition of A077979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+2x^2+x^3))` (program `A077979.P13960553921155272956`, by `A077979.P13960553921155272956.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077979.P13570993867329531252

`(-1)^n*A077954(n)`
-/

namespace A077979.P13570993867329531252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077954 n

end

end A077979.P13570993867329531252

namespace A077979

/-- `(-1)^n*A077954(n)` -/
def P13570993867329531252.Spec : Prop :=
  ∀ n, P13570993867329531252.a n = A077979 n

end A077979

/-! ## A077979.P13960553921155272956

`ogf(1/(1+x+2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077979

/-- `ogf(1/(1+x+2x^2+x^3))` -/
def P13960553921155272956.Spec : Prop :=
  ∀ n, P13960553921155272956.a n = A077979 n

theorem P13960553921155272956.correct : P13960553921155272956.Spec := by
  intro n
  simp only [A077979]

end A077979

/-! ## A077979.P1274914702796990771

`a(n-3)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=2`
-/

namespace A077979.P1274914702796990771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 2] fun n a =>
  a (n - 3) + (a (n - 4) - a (n - 2))

end

end A077979.P1274914702796990771

namespace A077979

/-- `a(n-3)+a(n-4)-a(n-2)` -/
def P1274914702796990771.Spec : Prop :=
  ∀ n, P1274914702796990771.a n = A077979 n

end A077979

/-! ## A077979.P6625967570160076986

`floor(a(n-3)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A077979.P6625967570160076986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 2] fun n a =>
  a (n - 3) - (a (n - 2) - a (n - 4))

end

end A077979.P6625967570160076986

namespace A077979

/-- `floor(a(n-3)-(a(n-2)-a(n-4)))` -/
def P6625967570160076986.Spec : Prop :=
  ∀ n, P6625967570160076986.a n = A077979 n

end A077979

/-! ## A077979.P13036971334117985022

`Δ[A077913(abs(1-n))]`
-/

namespace A077979.P13036971334117985022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077913 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077979.P13036971334117985022

namespace A077979

/-- `Δ[A077913(abs(1-n))]` -/
def P13036971334117985022.Spec : Prop :=
  ∀ n, P13036971334117985022.a n = A077979 n

end A077979

/-! ## A077979.P964712149641925365

`∑[a(n-3)-(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=3`
-/

namespace A077979.P964712149641925365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 3] fun n f1 =>
  f1 (n - 3) - (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077979.P964712149641925365

namespace A077979

/-- `∑[a(n-3)-(a(n-2)-a(n-4))]` -/
def P964712149641925365.Spec : Prop :=
  ∀ n, P964712149641925365.a n = A077979 n

end A077979

/-! ## A077979.P4179959986294124100

`A050935(2*n+3)*A156872(2*n)`
-/

namespace A077979.P4179959986294124100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (2 * n + 3) * A156872 (2 * n)

end

end A077979.P4179959986294124100

namespace A077979

/-- `A050935(2*n+3)*A156872(2*n)` -/
def P4179959986294124100.Spec : Prop :=
  ∀ n, P4179959986294124100.a n = A077979 n

end A077979

/-! ## A077979.P2675323317946220381

`A050935(A005408(n+1))*A062157(n+1)`
-/

namespace A077979.P2675323317946220381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050935 (A005408 (n + 1)).toNat * A062157 (n + 1)

end

end A077979.P2675323317946220381

namespace A077979

/-- `A050935(A005408(n+1))*A062157(n+1)` -/
def P2675323317946220381.Spec : Prop :=
  ∀ n, P2675323317946220381.a n = A077979 n

end A077979

/-! ## A077979.P12465866567976258825

`(n+1-A014681(n+1))*A104769(A005408(n))`
-/

namespace A077979.P12465866567976258825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A014681 (n + 1)) * A104769 (A005408 n).toNat

end

end A077979.P12465866567976258825

namespace A077979

/-- `(n+1-A014681(n+1))*A104769(A005408(n))` -/
def P12465866567976258825.Spec : Prop :=
  ∀ n, P12465866567976258825.a n = A077979 n

end A077979

/-! ## A077979.P13056653967784935619

`∑[A078019(n)]*A033999(n)`
-/

namespace A077979.P13056653967784935619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077979.P13056653967784935619

namespace A077979

/-- `∑[A078019(n)]*A033999(n)` -/
def P13056653967784935619.Spec : Prop :=
  ∀ n, P13056653967784935619.a n = A077979 n

end A077979

/-! ## A077979.P7963432727262917457

`∑[A078019(n)]*A034947(2*n+1)`
-/

namespace A077979.P7963432727262917457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034947 (2 * n + 1)

end

end A077979.P7963432727262917457

namespace A077979

/-- `∑[A078019(n)]*A034947(2*n+1)` -/
def P7963432727262917457.Spec : Prop :=
  ∀ n, P7963432727262917457.a n = A077979 n

end A077979

/-! ## A077979.P9613140136473402610

`∑[A078051(n)]`
-/

namespace A077979.P9613140136473402610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077979.P9613140136473402610

namespace A077979

/-- `∑[A078051(n)]` -/
def P9613140136473402610.Spec : Prop :=
  ∀ n, P9613140136473402610.a n = A077979 n

end A077979

/-! ## A077979.P13682405222861241571

`Δ[A078013(2*n)]*A033999(n+1)`
-/

namespace A077979.P13682405222861241571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A077979.P13682405222861241571

namespace A077979

/-- `Δ[A078013(2*n)]*A033999(n+1)` -/
def P13682405222861241571.Spec : Prop :=
  ∀ n, P13682405222861241571.a n = A077979 n

end A077979

/-! ## A077979.P1296565025644251609

`Δ[A077905(2*n+1)]*A057077(2*n)`
-/

namespace A077979.P1296565025644251609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077905 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057077 (2 * n)

end

end A077979.P1296565025644251609

namespace A077979

/-- `Δ[A077905(2*n+1)]*A057077(2*n)` -/
def P1296565025644251609.Spec : Prop :=
  ∀ n, P1296565025644251609.a n = A077979 n

end A077979

/-! ## A077979.P226684519659316105

`A033999(n)*A247917(2*n)`
-/

namespace A077979.P226684519659316105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A247917 (2 * n)

end

end A077979.P226684519659316105

namespace A077979

/-- `A033999(n)*A247917(2*n)` -/
def P226684519659316105.Spec : Prop :=
  ∀ n, P226684519659316105.a n = A077979 n

end A077979

/-! ## A077979.P4599364376848741289

`A055975(2*n+1)*A247917(2*n)`
-/

namespace A077979.P4599364376848741289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (2 * n + 1) * A247917 (2 * n)

end

end A077979.P4599364376848741289

namespace A077979

/-- `A055975(2*n+1)*A247917(2*n)` -/
def P4599364376848741289.Spec : Prop :=
  ∀ n, P4599364376848741289.a n = A077979 n

end A077979

/-! ## A077979.P2724144812182060589

`A033999(n+1)*A078013(A005408(n+1))`
-/

namespace A077979.P2724144812182060589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A078013 (A005408 (n + 1)).toNat

end

end A077979.P2724144812182060589

namespace A077979

/-- `A033999(n+1)*A078013(A005408(n+1))` -/
def P2724144812182060589.Spec : Prop :=
  ∀ n, P2724144812182060589.a n = A077979 n

end A077979

/-! ## A077979.P5921329602510396447

`A077913(n+1)-(A078051(n+1)+A077913(n))`
-/

namespace A077979.P5921329602510396447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077913 (n + 1) - (A078051 (n + 1) + A077913 n)

end

end A077979.P5921329602510396447

namespace A077979

/-- `A077913(n+1)-(A078051(n+1)+A077913(n))` -/
def P5921329602510396447.Spec : Prop :=
  ∀ n, P5921329602510396447.a n = A077979 n

end A077979

/-!
# A077980: Expansion of 1/(1 + x + 2*x^2 + 2*x^3).

The programs for A077980, the canonical program `A077980.P95638359872442304` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077980 has offset 0).

The definition of A077980 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x+2x^2+2x^3))` (program `A077980.P95638359872442304`, by `A077980.P95638359872442304.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077980.P95638359872442304

`ogf(1/(1+x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077980

/-- `ogf(1/(1+x+2x^2+2x^3))` -/
def P95638359872442304.Spec : Prop :=
  ∀ n, P95638359872442304.a n = A077980 n

theorem P95638359872442304.correct : P95638359872442304.Spec := by
  intro n
  simp only [A077980]

end A077980

/-! ## A077980.P9851395143591858579

`(-1)^n-2*a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A077980.P9851395143591858579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (-1) ^ n - 2 * a (n - 2)

end

end A077980.P9851395143591858579

namespace A077980

/-- `(-1)^n-2*a(n-2)` -/
def P9851395143591858579.Spec : Prop :=
  ∀ n, P9851395143591858579.a n = A077980 n

end A077980

/-! ## A077980.P3495645075447585321

`2*a(n-4)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=1`
-/

namespace A077980.P3495645075447585321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 1] fun n a =>
  2 * a (n - 4) - a (n - 2)

end

end A077980.P3495645075447585321

namespace A077980

/-- `2*a(n-4)-a(n-2)` -/
def P3495645075447585321.Spec : Prop :=
  ∀ n, P3495645075447585321.a n = A077980 n

end A077980

/-! ## A077980.P1199239799469707612

`(-1)^n-a(n-2)-a(n-2)` with `a(0)=1, a(1)=-1`
-/

namespace A077980.P1199239799469707612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  (-1) ^ n - a (n - 2) - a (n - 2)

end

end A077980.P1199239799469707612

namespace A077980

/-- `(-1)^n-a(n-2)-a(n-2)` -/
def P1199239799469707612.Spec : Prop :=
  ∀ n, P1199239799469707612.a n = A077980 n

end A077980

/-! ## A077980.P6849165124496428121

`a(n-4)+a(n-4)-a(n-2)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=1`
-/

namespace A077980.P6849165124496428121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 1] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 2))

end

end A077980.P6849165124496428121

namespace A077980

/-- `a(n-4)+a(n-4)-a(n-2)` -/
def P6849165124496428121.Spec : Prop :=
  ∀ n, P6849165124496428121.a n = A077980 n

end A077980

/-! ## A077980.P6075556457029274524

`floor(a(n-4)-(a(n-2)-a(n-4)))` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A077980.P6075556457029274524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -1, 1] fun n a =>
  a (n - 4) - (a (n - 2) - a (n - 4))

end

end A077980.P6075556457029274524

namespace A077980

/-- `floor(a(n-4)-(a(n-2)-a(n-4)))` -/
def P6075556457029274524.Spec : Prop :=
  ∀ n, P6075556457029274524.a n = A077980 n

end A077980

/-! ## A077980.P2051080260966427062

`A077966(n)-a(n-1)` with `a(0)=1`
-/

namespace A077980.P2051080260966427062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077966 n - a (n - 1)

end

end A077980.P2051080260966427062

namespace A077980

/-- `A077966(n)-a(n-1)` -/
def P2051080260966427062.Spec : Prop :=
  ∀ n, P2051080260966427062.a n = A077980 n

end A077980

/-! ## A077980.P3595431623691977774

`A033999(n)*A077953(n)`
-/

namespace A077980.P3595431623691977774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077953 n

end

end A077980.P3595431623691977774

namespace A077980

/-- `A033999(n)*A077953(n)` -/
def P3595431623691977774.Spec : Prop :=
  ∀ n, P3595431623691977774.a n = A077980 n

end A077980

/-! ## A077980.P10194034383625327733

`(1-A010673(n))*A077953(n)`
-/

namespace A077980.P10194034383625327733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A010673 n) * A077953 n

end

end A077980.P10194034383625327733

namespace A077980

/-- `(1-A010673(n))*A077953(n)` -/
def P10194034383625327733.Spec : Prop :=
  ∀ n, P10194034383625327733.a n = A077980 n

end A077980

/-! ## A077980.P3895693064269280238

`(A004442(n)-n)*A077953(n)`
-/

namespace A077980.P3895693064269280238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A077953 n

end

end A077980.P3895693064269280238

namespace A077980

/-- `(A004442(n)-n)*A077953(n)` -/
def P3895693064269280238.Spec : Prop :=
  ∀ n, P3895693064269280238.a n = A077980 n

end A077980

/-! ## A077980.P7358000142398239050

`∑[a(n-4)-(a(n-2)-a(n-4))]` with `a(0)=1, a(1)=-2, a(2)=0, a(3)=2`
-/

namespace A077980.P7358000142398239050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 0, 2] fun n f1 =>
  f1 (n - 4) - (f1 (n - 2) - f1 (n - 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077980.P7358000142398239050

namespace A077980

/-- `∑[a(n-4)-(a(n-2)-a(n-4))]` -/
def P7358000142398239050.Spec : Prop :=
  ∀ n, P7358000142398239050.a n = A077980 n

end A077980

/-! ## A077980.P14951467735908435531

`∑[A078052(n)]`
-/

namespace A077980.P14951467735908435531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077980.P14951467735908435531

namespace A077980

/-- `∑[A078052(n)]` -/
def P14951467735908435531.Spec : Prop :=
  ∀ n, P14951467735908435531.a n = A077980 n

end A077980

/-! ## A077980.P12482745002713394164

`∑[A117575(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A077980.P12482745002713394164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A117575 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077980.P12482745002713394164

namespace A077980

/-- `∑[A117575(n+1)-a(n-1)]` -/
def P12482745002713394164.Spec : Prop :=
  ∀ n, P12482745002713394164.a n = A077980 n

end A077980

/-! ## A077980.P10533410761739153619

`floor((∏[A280193(n+2)]+1)/3)`
-/

namespace A077980.P10533410761739153619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 3⌋

end

end A077980.P10533410761739153619

namespace A077980

/-- `floor((∏[A280193(n+2)]+1)/3)` -/
def P10533410761739153619.Spec : Prop :=
  ∀ n, P10533410761739153619.a n = A077980 n

end A077980

/-! ## A077980.P4245740314283421782

`A131531(n+1)+A102517(n+1)`
-/

namespace A077980.P4245740314283421782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1) + A102517 (n + 1)

end

end A077980.P4245740314283421782

namespace A077980

/-- `A131531(n+1)+A102517(n+1)` -/
def P4245740314283421782.Spec : Prop :=
  ∀ n, P4245740314283421782.a n = A077980 n

end A077980

/-! ## A077980.P16362702301893420791

`A117576(xor(1, n+1))`
-/

namespace A077980.P16362702301893420791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117576 (Nat.xor 1 (n + 1))

end

end A077980.P16362702301893420791

namespace A077980

/-- `A117576(xor(1, n+1))` -/
def P16362702301893420791.Spec : Prop :=
  ∀ n, P16362702301893420791.a n = A077980 n

end A077980

/-! ## A077980.P605987072636172382

`A117576(A004442(n+1))`
-/

namespace A077980.P605987072636172382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117576 (A004442 (n + 1)).toNat

end

end A077980.P605987072636172382

namespace A077980

/-- `A117576(A004442(n+1))` -/
def P605987072636172382.Spec : Prop :=
  ∀ n, P605987072636172382.a n = A077980 n

end A077980

/-! ## A077980.P8671166165930939130

`A117576(A004442(2*n)-A004442(n))`
-/

namespace A077980.P8671166165930939130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117576 (A004442 (2 * n) - A004442 n).toNat

end

end A077980.P8671166165930939130

namespace A077980

/-- `A117576(A004442(2*n)-A004442(n))` -/
def P8671166165930939130.Spec : Prop :=
  ∀ n, P8671166165930939130.a n = A077980 n

end A077980

/-! ## A077980.P16985691062555415752

`A133684(A004442(n))²-A133684(n)²`
-/

namespace A077980.P16985691062555415752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A004442 n).toNat ^ 2 - A133684 n ^ 2

end

end A077980.P16985691062555415752

namespace A077980

/-- `A133684(A004442(n))²-A133684(n)²` -/
def P16985691062555415752.Spec : Prop :=
  ∀ n, P16985691062555415752.a n = A077980 n

end A077980

/-! ## A077980.P16378649877348335605

`Δ[A138495(n)]-A138495(n)`
-/

namespace A077980.P16378649877348335605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A138495 n

end

end A077980.P16378649877348335605

namespace A077980

/-- `Δ[A138495(n)]-A138495(n)` -/
def P16378649877348335605.Spec : Prop :=
  ∀ n, P16378649877348335605.a n = A077980 n

end A077980

/-!
# A077981: Expansion of 1/(1+2*x-2*x^2-2*x^3).

The programs for A077981, the canonical program `A077981.P14523177886807704620` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077981 has offset 0).

The definition of A077981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-2x^2-2x^3))` (program `A077981.P14523177886807704620`, by `A077981.P14523177886807704620.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077981.P14523177886807704620

`ogf(1/(1+2x-2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077981

/-- `ogf(1/(1+2x-2x^2-2x^3))` -/
def P14523177886807704620.Spec : Prop :=
  ∀ n, P14523177886807704620.a n = A077981 n

theorem P14523177886807704620.correct : P14523177886807704620.Spec := by
  intro n
  simp only [A077981]

end A077981

/-! ## A077981.P7271871498611132112

`(-1)^n*A077937(n)`
-/

namespace A077981.P7271871498611132112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077937 n

end

end A077981.P7271871498611132112

namespace A077981

/-- `(-1)^n*A077937(n)` -/
def P7271871498611132112.Spec : Prop :=
  ∀ n, P7271871498611132112.a n = A077981 n

end A077981

/-! ## A077981.P6181242752701840629

`A181306(n)*A280560(n)`
-/

namespace A077981.P6181242752701840629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181306 n * A280560 n

end

end A077981.P6181242752701840629

namespace A077981

/-- `A181306(n)*A280560(n)` -/
def P6181242752701840629.Spec : Prop :=
  ∀ n, P6181242752701840629.a n = A077981 n

end A077981

/-! ## A077981.P16425490297249421934

`∑[A052528(n)]*A033999(n)`
-/

namespace A077981.P16425490297249421934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077981.P16425490297249421934

namespace A077981

/-- `∑[A052528(n)]*A033999(n)` -/
def P16425490297249421934.Spec : Prop :=
  ∀ n, P16425490297249421934.a n = A077981 n

end A077981

/-! ## A077981.P10961434933650610229

`∑[∑[A118649(n)]*A033999(n)]`
-/

namespace A077981.P10961434933650610229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118649 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077981.P10961434933650610229

namespace A077981

/-- `∑[∑[A118649(n)]*A033999(n)]` -/
def P10961434933650610229.Spec : Prop :=
  ∀ n, P10961434933650610229.a n = A077981 n

end A077981

/-! ## A077981.P2590847445098085292

`∑[A052528(n)]*∑[A280560(n)]`
-/

namespace A077981.P2590847445098085292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A077981.P2590847445098085292

namespace A077981

/-- `∑[A052528(n)]*∑[A280560(n)]` -/
def P2590847445098085292.Spec : Prop :=
  ∀ n, P2590847445098085292.a n = A077981 n

end A077981

/-! ## A077981.P598369183409975994

`∑[A052528(n)]/A033999(n+2)`
-/

namespace A077981.P598369183409975994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077981.P598369183409975994

namespace A077981

/-- `∑[A052528(n)]/A033999(n+2)` -/
def P598369183409975994.Spec : Prop :=
  ∀ n, P598369183409975994.a n = (A077981 n : ℚ)

end A077981

/-! ## A077981.P12598801599501744334

`∑[A052528(n)]*A034947(2*n+1)`
-/

namespace A077981.P12598801599501744334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034947 (2 * n + 1)

end

end A077981.P12598801599501744334

namespace A077981

/-- `∑[A052528(n)]*A034947(2*n+1)` -/
def P12598801599501744334.Spec : Prop :=
  ∀ n, P12598801599501744334.a n = A077981 n

end A077981

/-! ## A077981.P10240886072887487922

`∑[A078053(n)]`
-/

namespace A077981.P10240886072887487922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077981.P10240886072887487922

namespace A077981

/-- `∑[A078053(n)]` -/
def P10240886072887487922.Spec : Prop :=
  ∀ n, P10240886072887487922.a n = A077981 n

end A077981

/-!
# A077982: Min(P in Partitions(n), Sum(k in P, d(k))) where d(k) = number of divisors of k (A000005).

The programs for A077982, there is no canonical definition to state claims against.
-/

/-! ## A077982.P13670722122730794366

`A235145(A336032(n))+A073855(n)`
-/

namespace A077982.P13670722122730794366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A336032 n).toNat + A073855 n

end

end A077982.P13670722122730794366

/-! ## A077982.P5543302993563817832

`A185816(lcm(∑{e}[n+1, #]+1, A006955(n)))`
-/

namespace A077982.P5543302993563817832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (Int.lcm ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) (A006955 n))

end

end A077982.P5543302993563817832

/-! ## A077982.P3685663403497306396

`A375272(A014637(n)*A355368(n+6))`
-/

namespace A077982.P3685663403497306396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375272 (A014637 n * A355368 (n + 6)).toNat

end

end A077982.P3685663403497306396

/-! ## A077982.P1423973825695736974

`A185816(lcm(A006955(n), A073855(n+1)))`
-/

namespace A077982.P1423973825695736974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (Int.lcm (A006955 n) (A073855 (n + 1)))

end

end A077982.P1423973825695736974

/-! ## A077982.P9549200168892268428

`A185816(lcm(A000720(n+2), A290534(n)))`
-/

namespace A077982.P9549200168892268428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (Int.lcm (A000720 (n + 2)) (A290534 n))

end

end A077982.P9549200168892268428

/-!
# A077983: Expansion of 1/(1 + 2*x - 2*x^2 + x^3).

The programs for A077983, the canonical program `A077983.P2599285339013636745` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077983 has offset 0).

The definition of A077983 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-2x^2+x^3))` (program `A077983.P2599285339013636745`, by `A077983.P2599285339013636745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077983.P2599285339013636745

`ogf(1/(1+2x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077983

/-- `ogf(1/(1+2x-2x^2+x^3))` -/
def P2599285339013636745.Spec : Prop :=
  ∀ n, P2599285339013636745.a n = A077983 n

theorem P2599285339013636745.correct : P2599285339013636745.Spec := by
  intro n
  simp only [A077983]

end A077983

/-! ## A077983.P10993083338520518528

`(-1)^n*A077936(n)`
-/

namespace A077983.P10993083338520518528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077936 n

end

end A077983.P10993083338520518528

namespace A077983

/-- `(-1)^n*A077936(n)` -/
def P10993083338520518528.Spec : Prop :=
  ∀ n, P10993083338520518528.a n = A077983 n

end A077983

/-! ## A077983.P63063026780671897

`∑[A078054(n)]`
-/

namespace A077983.P63063026780671897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077983.P63063026780671897

namespace A077983

/-- `∑[A078054(n)]` -/
def P63063026780671897.Spec : Prop :=
  ∀ n, P63063026780671897.a n = A077983 n

end A077983

/-! ## A077983.P6484406611023560831

`(-1)^n*∑[A077995(n)]`
-/

namespace A077983.P6484406611023560831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077983.P6484406611023560831

namespace A077983

/-- `(-1)^n*∑[A077995(n)]` -/
def P6484406611023560831.Spec : Prop :=
  ∀ n, P6484406611023560831.a n = A077983 n

end A077983

/-! ## A077983.P11185038914744254258

`∑[A077995(n)]*A009001(2*n)`
-/

namespace A077983.P11185038914744254258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A077983.P11185038914744254258

namespace A077983

/-- `∑[A077995(n)]*A009001(2*n)` -/
def P11185038914744254258.Spec : Prop :=
  ∀ n, P11185038914744254258.a n = A077983 n

end A077983

/-! ## A077983.P2497285318622703906

`A077936(n)/A056594(A005843(n))`
-/

namespace A077983.P2497285318622703906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077936 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

end

end A077983.P2497285318622703906

namespace A077983

/-- `A077936(n)/A056594(A005843(n))` -/
def P2497285318622703906.Spec : Prop :=
  ∀ n, P2497285318622703906.a n = (A077983 n : ℚ)

end A077983

/-! ## A077983.P13518551884973861506

`A077936(n)/A056594(A266073(n))`
-/

namespace A077983.P13518551884973861506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077936 n : ℚ) / (A056594 (A266073 n).toNat : ℚ)

end

end A077983.P13518551884973861506

namespace A077983

/-- `A077936(n)/A056594(A266073(n))` -/
def P13518551884973861506.Spec : Prop :=
  ∀ n, P13518551884973861506.a n = (A077983 n : ℚ)

end A077983

/-! ## A077983.P16712448958669574161

`A077936(n)*A260971(Δ[A004526(n)])`
-/

namespace A077983.P16712448958669574161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 n * A260971 (f1 (n + 1) - f1 n).toNat

end

end A077983.P16712448958669574161

namespace A077983

/-- `A077936(n)*A260971(Δ[A004526(n)])` -/
def P16712448958669574161.Spec : Prop :=
  ∀ n, P16712448958669574161.a n = A077983 n

end A077983

/-! ## A077983.P7621013236126856844

`A077936(n)/A077946(n)*A077970(n)`
-/

namespace A077983.P7621013236126856844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077936 n : ℚ) / (A077946 n : ℚ) * (A077970 n : ℚ)

end

end A077983.P7621013236126856844

namespace A077983

/-- `A077936(n)/A077946(n)*A077970(n)` -/
def P7621013236126856844.Spec : Prop :=
  ∀ n, P7621013236126856844.a n = (A077983 n : ℚ)

end A077983

/-!
# A077984: Expansion of 1/(1+2*x-2*x^2+2*x^3).

The programs for A077984, the canonical program `A077984.P13064906812013565164` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077984 has offset 0).

The definition of A077984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-2x^2+2x^3))` (program `A077984.P13064906812013565164`, by `A077984.P13064906812013565164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077984.P13064906812013565164

`ogf(1/(1+2x-2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077984

/-- `ogf(1/(1+2x-2x^2+2x^3))` -/
def P13064906812013565164.Spec : Prop :=
  ∀ n, P13064906812013565164.a n = A077984 n

theorem P13064906812013565164.correct : P13064906812013565164.Spec := by
  intro n
  simp only [A077984]

end A077984

/-! ## A077984.P450009908893640569

`(-1)^n*A077835(n)`
-/

namespace A077984.P450009908893640569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077835 n

end

end A077984.P450009908893640569

namespace A077984

/-- `(-1)^n*A077835(n)` -/
def P450009908893640569.Spec : Prop :=
  ∀ n, P450009908893640569.a n = A077984 n

end A077984

/-! ## A077984.P10317044410779294136

`A077835(n)/A033999(n)`
-/

namespace A077984.P10317044410779294136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077835 n : ℚ) / (A033999 n : ℚ)

end

end A077984.P10317044410779294136

namespace A077984

/-- `A077835(n)/A033999(n)` -/
def P10317044410779294136.Spec : Prop :=
  ∀ n, P10317044410779294136.a n = (A077984 n : ℚ)

end A077984

/-! ## A077984.P14436971931890462686

`∑[A077843(n)]*A033999(n)`
-/

namespace A077984.P14436971931890462686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077984.P14436971931890462686

namespace A077984

/-- `∑[A077843(n)]*A033999(n)` -/
def P14436971931890462686.Spec : Prop :=
  ∀ n, P14436971931890462686.a n = A077984 n

end A077984

/-! ## A077984.P9373654919805098965

`A077835(n)*A087960(2*n)`
-/

namespace A077984.P9373654919805098965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077835 n * A087960 (2 * n)

end

end A077984.P9373654919805098965

namespace A077984

/-- `A077835(n)*A087960(2*n)` -/
def P9373654919805098965.Spec : Prop :=
  ∀ n, P9373654919805098965.a n = A077984 n

end A077984

/-! ## A077984.P6253652700628794581

`∑[A077843(n)]*A057077(2*n)`
-/

namespace A077984.P6253652700628794581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A077984.P6253652700628794581

namespace A077984

/-- `∑[A077843(n)]*A057077(2*n)` -/
def P6253652700628794581.Spec : Prop :=
  ∀ n, P6253652700628794581.a n = A077984 n

end A077984

/-! ## A077984.P8572218947535915260

`∑[A078055(n)]`
-/

namespace A077984.P8572218947535915260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077984.P8572218947535915260

namespace A077984

/-- `∑[A078055(n)]` -/
def P8572218947535915260.Spec : Prop :=
  ∀ n, P8572218947535915260.a n = A077984 n

end A077984

/-! ## A077984.P9523507445097002686

`A077835(n)*A104509(A000096(n))`
-/

namespace A077984.P9523507445097002686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077835 n * A104509 (A000096 n).toNat

end

end A077984.P9523507445097002686

namespace A077984

/-- `A077835(n)*A104509(A000096(n))` -/
def P9523507445097002686.Spec : Prop :=
  ∀ n, P9523507445097002686.a n = A077984 n

end A077984

/-! ## A077984.P13457004961301934400

`A077835(n)/A087960(n²)`
-/

namespace A077984.P13457004961301934400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077835 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A077984.P13457004961301934400

namespace A077984

/-- `A077835(n)/A087960(n²)` -/
def P13457004961301934400.Spec : Prop :=
  ∀ n, P13457004961301934400.a n = (A077984 n : ℚ)

end A077984

/-!
# A077985: Expansion of 1/(1 + 2*x - x^2).

The programs for A077985, the canonical program `A077985.P12460087906222444728` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077985 has offset 0).

The definition of A077985 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-x^2))` (program `A077985.P12460087906222444728`, by `A077985.P12460087906222444728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077985.P12460087906222444728

`ogf(1/(1+2x-x^2))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077985

/-- `ogf(1/(1+2x-x^2))` -/
def P12460087906222444728.Spec : Prop :=
  ∀ n, P12460087906222444728.a n = A077985 n

theorem P12460087906222444728.correct : P12460087906222444728.Spec := by
  intro n
  simp only [A077985]

end A077985

/-! ## A077985.P770338361924418553

`(-1)^n*A000129(n+1)`
-/

namespace A077985.P770338361924418553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000129 (n + 1)

end

end A077985.P770338361924418553

namespace A077985

/-- `(-1)^n*A000129(n+1)` -/
def P770338361924418553.Spec : Prop :=
  ∀ n, P770338361924418553.a n = A077985 n

end A077985

/-! ## A077985.P3201150788900784827

`-floor((sqrt(2)+1)*a(n-1))` with `a(0)=1`
-/

namespace A077985.P3201150788900784827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -⌊(Real.sqrt (2 : ℝ) + 1) * (a (n - 1) : ℝ)⌋

end

end A077985.P3201150788900784827

namespace A077985

/-- `-floor((sqrt(2)+1)*a(n-1))` -/
def P3201150788900784827.Spec : Prop :=
  ∀ n, P3201150788900784827.a n = A077985 n

end A077985

/-! ## A077985.P36125961142925692

`∑[-ceil((sqrt(2)+1)*a(n-1))]` with `a(0)=1`
-/

namespace A077985.P36125961142925692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌈(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077985.P36125961142925692

namespace A077985

/-- `∑[-ceil((sqrt(2)+1)*a(n-1))]` -/
def P36125961142925692.Spec : Prop :=
  ∀ n, P36125961142925692.a n = A077985 n

end A077985

/-! ## A077985.P15953960920598703904

`a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A077985.P15953960920598703904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) - 2 * a (n - 1)

end

end A077985.P15953960920598703904

namespace A077985

/-- `a(n-2)-2*a(n-1)` -/
def P15953960920598703904.Spec : Prop :=
  ∀ n, P15953960920598703904.a n = A077985 n

end A077985

/-! ## A077985.P16867449918288165784

`a(n-2)-a(n-1)-a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A077985.P16867449918288165784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) - a (n - 1) - a (n - 1)

end

end A077985.P16867449918288165784

namespace A077985

/-- `a(n-2)-a(n-1)-a(n-1)` -/
def P16867449918288165784.Spec : Prop :=
  ∀ n, P16867449918288165784.a n = A077985 n

end A077985

/-! ## A077985.P2339738630344741760

`A215936(n+3)`
-/

namespace A077985.P2339738630344741760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (n + 3)

end

end A077985.P2339738630344741760

namespace A077985

/-- `A215936(n+3)` -/
def P2339738630344741760.Spec : Prop :=
  ∀ n, P2339738630344741760.a n = A077985 n

end A077985

/-! ## A077985.P6196469432287247194

`∑[-A123335(n+1)]`
-/

namespace A077985.P6196469432287247194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A123335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077985.P6196469432287247194

namespace A077985

/-- `∑[-A123335(n+1)]` -/
def P6196469432287247194.Spec : Prop :=
  ∀ n, P6196469432287247194.a n = A077985 n

end A077985

/-! ## A077985.P11802330062742222048

`∑[2*A077921(n)-1]`
-/

namespace A077985.P11802330062742222048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077921 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077985.P11802330062742222048

namespace A077985

/-- `∑[2*A077921(n)-1]` -/
def P11802330062742222048.Spec : Prop :=
  ∀ n, P11802330062742222048.a n = A077985 n

end A077985

/-! ## A077985.P9698279385447712315

`Δ[(1-A123335(n))/2]`
-/

namespace A077985.P9698279385447712315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A123335 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077985.P9698279385447712315

namespace A077985

/-- `Δ[(1-A123335(n))/2]` -/
def P9698279385447712315.Spec : Prop :=
  ∀ n, P9698279385447712315.a n = (A077985 n : ℚ)

end A077985

/-! ## A077985.P17040291602149586917

`(-1)^n*A215928(n+1)`
-/

namespace A077985.P17040291602149586917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215928 (n + 1)

end

end A077985.P17040291602149586917

namespace A077985

/-- `(-1)^n*A215928(n+1)` -/
def P17040291602149586917.Spec : Prop :=
  ∀ n, P17040291602149586917.a n = A077985 n

end A077985

/-! ## A077985.P5029163619075147172

`A000129(n+1)*A033999(n)`
-/

namespace A077985.P5029163619075147172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A033999 n

end

end A077985.P5029163619075147172

namespace A077985

/-- `A000129(n+1)*A033999(n)` -/
def P5029163619075147172.Spec : Prop :=
  ∀ n, P5029163619075147172.a n = A077985 n

end A077985

/-! ## A077985.P3541156269964019982

`A041011(n)*A327767(n+1)`
-/

namespace A077985.P3541156269964019982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n * A327767 (n + 1)

end

end A077985.P3541156269964019982

namespace A077985

/-- `A041011(n)*A327767(n+1)` -/
def P3541156269964019982.Spec : Prop :=
  ∀ n, P3541156269964019982.a n = A077985 n

end A077985

/-! ## A077985.P9192069885075568720

`(A052937(n)-1)*A033999(n)`
-/

namespace A077985.P9192069885075568720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052937 n - 1) * A033999 n

end

end A077985.P9192069885075568720

namespace A077985

/-- `(A052937(n)-1)*A033999(n)` -/
def P9192069885075568720.Spec : Prop :=
  ∀ n, P9192069885075568720.a n = A077985 n

end A077985

/-! ## A077985.P9013408334049490062

`(2-A000034(n)²)*A041011(n)`
-/

namespace A077985.P9013408334049490062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000034 n ^ 2) * A041011 n

end

end A077985.P9013408334049490062

namespace A077985

/-- `(2-A000034(n)²)*A041011(n)` -/
def P9013408334049490062.Spec : Prop :=
  ∀ n, P9013408334049490062.a n = A077985 n

end A077985

/-! ## A077985.P18010770520354522284

`∑[A119016(2*n)]*A033999(n)`
-/

namespace A077985.P18010770520354522284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077985.P18010770520354522284

namespace A077985

/-- `∑[A119016(2*n)]*A033999(n)` -/
def P18010770520354522284.Spec : Prop :=
  ∀ n, P18010770520354522284.a n = A077985 n

end A077985

/-! ## A077985.P387612771738432295

`(A004442(n)-n)*∑[A001333(n)]`
-/

namespace A077985.P387612771738432295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A077985.P387612771738432295

namespace A077985

/-- `(A004442(n)-n)*∑[A001333(n)]` -/
def P387612771738432295.Spec : Prop :=
  ∀ n, P387612771738432295.a n = A077985 n

end A077985

/-! ## A077985.P3982277292373879715

`A000129(n+1)*A062157(n+1)`
-/

namespace A077985.P3982277292373879715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A062157 (n + 1)

end

end A077985.P3982277292373879715

namespace A077985

/-- `A000129(n+1)*A062157(n+1)` -/
def P3982277292373879715.Spec : Prop :=
  ∀ n, P3982277292373879715.a n = A077985 n

end A077985

/-! ## A077985.P9245051541738814902

`A000129(n+1)*A165326(n+1)`
-/

namespace A077985.P9245051541738814902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A165326 (n + 1)

end

end A077985.P9245051541738814902

namespace A077985

/-- `A000129(n+1)*A165326(n+1)` -/
def P9245051541738814902.Spec : Prop :=
  ∀ n, P9245051541738814902.a n = A077985 n

end A077985

/-! ## A077985.P5497097023484799096

`A000129(n+1)/A033999(n+2)`
-/

namespace A077985.P5497097023484799096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077985.P5497097023484799096

namespace A077985

/-- `A000129(n+1)/A033999(n+2)` -/
def P5497097023484799096.Spec : Prop :=
  ∀ n, P5497097023484799096.a n = (A077985 n : ℚ)

end A077985

/-!
# A077986: Expansion of 1/(1 + 2*x - x^2 + x^3).

The programs for A077986, the canonical program `A077986.P16576051641362506327` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077986 has offset 0).

The definition of A077986 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-x^2+x^3))` (program `A077986.P16576051641362506327`, by `A077986.P16576051641362506327.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077986.P16576051641362506327

`ogf(1/(1+2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077986

/-- `ogf(1/(1+2x-x^2+x^3))` -/
def P16576051641362506327.Spec : Prop :=
  ∀ n, P16576051641362506327.a n = A077986 n

theorem P16576051641362506327.correct : P16576051641362506327.Spec := by
  intro n
  simp only [A077986]

end A077986

/-! ## A077986.P14142602793932290537

`(-1)^n*A077939(n)`
-/

namespace A077986.P14142602793932290537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077939 n

end

end A077986.P14142602793932290537

namespace A077986

/-- `(-1)^n*A077939(n)` -/
def P14142602793932290537.Spec : Prop :=
  ∀ n, P14142602793932290537.a n = A077986 n

end A077986

/-! ## A077986.P2993247808427907767

`∑[(-1)^n*A116413(n)]`
-/

namespace A077986.P2993247808427907767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077986.P2993247808427907767

namespace A077986

/-- `∑[(-1)^n*A116413(n)]` -/
def P2993247808427907767.Spec : Prop :=
  ∀ n, P2993247808427907767.a n = A077986 n

end A077986

/-! ## A077986.P14976354890802721914

`A077939(n)/A033999(n)`
-/

namespace A077986.P14976354890802721914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / (A033999 n : ℚ)

end

end A077986.P14976354890802721914

namespace A077986

/-- `A077939(n)/A033999(n)` -/
def P14976354890802721914.Spec : Prop :=
  ∀ n, P14976354890802721914.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P3393877818375954220

`∑[A116413(n)/A033999(n)]`
-/

namespace A077986.P3393877818375954220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116413 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077986.P3393877818375954220

namespace A077986

/-- `∑[A116413(n)/A033999(n)]` -/
def P3393877818375954220.Spec : Prop :=
  ∀ n, P3393877818375954220.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P13013879672877260107

`A077939(n)/A057428(n)^n`
-/

namespace A077986.P13013879672877260107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / (A057428 n ^ n : ℚ)

end

end A077986.P13013879672877260107

namespace A077986

/-- `A077939(n)/A057428(n)^n` -/
def P13013879672877260107.Spec : Prop :=
  ∀ n, P13013879672877260107.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P10342530528476942632

`A077939(n)/(n+1-A004442(n+1))`
-/

namespace A077986.P10342530528476942632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / ((n + 1 : ℤ) - A004442 (n + 1) : ℚ)

end

end A077986.P10342530528476942632

namespace A077986

/-- `A077939(n)/(n+1-A004442(n+1))` -/
def P10342530528476942632.Spec : Prop :=
  ∀ n, P10342530528476942632.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P785140747735050122

`A077939(n)/A077955(n)*A077978(n)`
-/

namespace A077986.P785140747735050122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / (A077955 n : ℚ) * (A077978 n : ℚ)

end

end A077986.P785140747735050122

namespace A077986

/-- `A077939(n)/A077955(n)*A077978(n)` -/
def P785140747735050122.Spec : Prop :=
  ∀ n, P785140747735050122.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P5099931632281100572

`A077939(n)/A099837(n)*A100051(n)`
-/

namespace A077986.P5099931632281100572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / (A099837 n : ℚ) * (A100051 n : ℚ)

end

end A077986.P5099931632281100572

namespace A077986

/-- `A077939(n)/A099837(n)*A100051(n)` -/
def P5099931632281100572.Spec : Prop :=
  ∀ n, P5099931632281100572.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P7193940752699034989

`A077939(n)/A077970(n)*abs(A077970(n))`
-/

namespace A077986.P7193940752699034989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077939 n : ℚ) / (A077970 n : ℚ) * (|A077970 n| : ℚ)

end

end A077986.P7193940752699034989

namespace A077986

/-- `A077939(n)/A077970(n)*abs(A077970(n))` -/
def P7193940752699034989.Spec : Prop :=
  ∀ n, P7193940752699034989.a n = (A077986 n : ℚ)

end A077986

/-! ## A077986.P12444504318162472341

`∑[A078058(n)]`
-/

namespace A077986.P12444504318162472341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077986.P12444504318162472341

namespace A077986

/-- `∑[A078058(n)]` -/
def P12444504318162472341.Spec : Prop :=
  ∀ n, P12444504318162472341.a n = A077986 n

end A077986

/-! ## A077986.P17209098603691004847

`∑[∑[A033999(n)*A347725(n+1)]]`
-/

namespace A077986.P17209098603691004847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A347725 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077986.P17209098603691004847

namespace A077986

/-- `∑[∑[A033999(n)*A347725(n+1)]]` -/
def P17209098603691004847.Spec : Prop :=
  ∀ n, P17209098603691004847.a n = A077986 n

end A077986

/-! ## A077986.P14516248748404976227

`A077922(n+1)-(A078058(n+1)+A077922(n))`
-/

namespace A077986.P14516248748404976227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077922 (n + 1) - (A078058 (n + 1) + A077922 n)

end

end A077986.P14516248748404976227

namespace A077986

/-- `A077922(n+1)-(A078058(n+1)+A077922(n))` -/
def P14516248748404976227.Spec : Prop :=
  ∀ n, P14516248748404976227.a n = A077986 n

end A077986

/-!
# A077987: Expansion of 1/(1+2*x-x^2+2*x^3).

The programs for A077987, the canonical program `A077987.P8827654241166284936` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077987 has offset 0).

The definition of A077987 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-x^2+2x^3))` (program `A077987.P8827654241166284936`, by `A077987.P8827654241166284936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077987.P8827654241166284936

`ogf(1/(1+2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077987

/-- `ogf(1/(1+2x-x^2+2x^3))` -/
def P8827654241166284936.Spec : Prop :=
  ∀ n, P8827654241166284936.a n = A077987 n

theorem P8827654241166284936.correct : P8827654241166284936.Spec := by
  intro n
  simp only [A077987]

end A077987

/-! ## A077987.P15687928146739800731

`(-1)^n*A077938(n)`
-/

namespace A077987.P15687928146739800731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077938 n

end

end A077987.P15687928146739800731

namespace A077987

/-- `(-1)^n*A077938(n)` -/
def P15687928146739800731.Spec : Prop :=
  ∀ n, P15687928146739800731.a n = A077987 n

end A077987

/-! ## A077987.P17160496824699364410

`∑[A078059(n)]`
-/

namespace A077987.P17160496824699364410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077987.P17160496824699364410

namespace A077987

/-- `∑[A078059(n)]` -/
def P17160496824699364410.Spec : Prop :=
  ∀ n, P17160496824699364410.a n = A077987 n

end A077987

/-! ## A077987.P17224624690917543739

`A077938(n)/A033999(n)`
-/

namespace A077987.P17224624690917543739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077938 n : ℚ) / (A033999 n : ℚ)

end

end A077987.P17224624690917543739

namespace A077987

/-- `A077938(n)/A033999(n)` -/
def P17224624690917543739.Spec : Prop :=
  ∀ n, P17224624690917543739.a n = (A077987 n : ℚ)

end A077987

/-! ## A077987.P4480773105140433002

`∑[A077996(n)]*A033999(n)`
-/

namespace A077987.P4480773105140433002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077987.P4480773105140433002

namespace A077987

/-- `∑[A077996(n)]*A033999(n)` -/
def P4480773105140433002.Spec : Prop :=
  ∀ n, P4480773105140433002.a n = A077987 n

end A077987

/-! ## A077987.P13189977311704122524

`A077938(n)/A057077(2*n)`
-/

namespace A077987.P13189977311704122524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077938 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A077987.P13189977311704122524

namespace A077987

/-- `A077938(n)/A057077(2*n)` -/
def P13189977311704122524.Spec : Prop :=
  ∀ n, P13189977311704122524.a n = (A077987 n : ℚ)

end A077987

/-! ## A077987.P18436740181665485335

`∑[A077996(n)]*A057077(2*n)`
-/

namespace A077987.P18436740181665485335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A077987.P18436740181665485335

namespace A077987

/-- `∑[A077996(n)]*A057077(2*n)` -/
def P18436740181665485335.Spec : Prop :=
  ∀ n, P18436740181665485335.a n = A077987 n

end A077987

/-! ## A077987.P17386249350322891368

`A077938(n)/A078059(n)*abs(A078059(n))`
-/

namespace A077987.P17386249350322891368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077938 n : ℚ) / (A078059 n : ℚ) * (|A078059 n| : ℚ)

end

end A077987.P17386249350322891368

namespace A077987

/-- `A077938(n)/A078059(n)*abs(A078059(n))` -/
def P17386249350322891368.Spec : Prop :=
  ∀ n, P17386249350322891368.a n = (A077987 n : ℚ)

end A077987

/-! ## A077987.P186327705247904573

`∑[A077996(n)]/A033999(n²)`
-/

namespace A077987.P186327705247904573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077996 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A077987.P186327705247904573

namespace A077987

/-- `∑[A077996(n)]/A033999(n²)` -/
def P186327705247904573.Spec : Prop :=
  ∀ n, P186327705247904573.a n = (A077987 n : ℚ)

end A077987

/-!
# A077988: Expansion of 1/(1+2*x-2*x^3).

The programs for A077988, the canonical program `A077988.P13840811085611617822` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077988 has offset 0).

The definition of A077988 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-2x^3))` (program `A077988.P13840811085611617822`, by `A077988.P13840811085611617822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077988.P13840811085611617822

`ogf(1/(1+2x-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077988

/-- `ogf(1/(1+2x-2x^3))` -/
def P13840811085611617822.Spec : Prop :=
  ∀ n, P13840811085611617822.a n = A077988 n

theorem P13840811085611617822.correct : P13840811085611617822.Spec := by
  intro n
  simp only [A077988]

end A077988

/-! ## A077988.P7988391642770852298

`(-1)^n*A077940(n)`
-/

namespace A077988.P7988391642770852298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077940 n

end

end A077988.P7988391642770852298

namespace A077988

/-- `(-1)^n*A077940(n)` -/
def P7988391642770852298.Spec : Prop :=
  ∀ n, P7988391642770852298.a n = A077988 n

end A077988

/-! ## A077988.P735555787131142961

`2*(a(n-3)-a(n-1))` with `a(0)=1, a(1)=-2, a(2)=4`
-/

namespace A077988.P735555787131142961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 4] fun n a =>
  2 * (a (n - 3) - a (n - 1))

end

end A077988.P735555787131142961

namespace A077988

/-- `2*(a(n-3)-a(n-1))` -/
def P735555787131142961.Spec : Prop :=
  ∀ n, P735555787131142961.a n = A077988 n

end A077988

/-! ## A077988.P16259375419154430611

`A124342(n)-a(n-1)` with `a(0)=1`
-/

namespace A077988.P16259375419154430611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124342 n - a (n - 1)

end

end A077988.P16259375419154430611

namespace A077988

/-- `A124342(n)-a(n-1)` -/
def P16259375419154430611.Spec : Prop :=
  ∀ n, P16259375419154430611.a n = A077988 n

end A077988

/-! ## A077988.P7349882159070236503

`A077940(n)/A033999(n+2)`
-/

namespace A077988.P7349882159070236503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077940 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077988.P7349882159070236503

namespace A077988

/-- `A077940(n)/A033999(n+2)` -/
def P7349882159070236503.Spec : Prop :=
  ∀ n, P7349882159070236503.a n = (A077988 n : ℚ)

end A077988

/-! ## A077988.P2975868168036370308

`Δ[Δ[A124395(n)]*A033999(n)]`
-/

namespace A077988.P2975868168036370308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124395 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077988.P2975868168036370308

namespace A077988

/-- `Δ[Δ[A124395(n)]*A033999(n)]` -/
def P2975868168036370308.Spec : Prop :=
  ∀ n, P2975868168036370308.a n = A077988 n

end A077988

/-! ## A077988.P11857663095451928513

`A077940(n)*A088705(or(6, n+1)+6)`
-/

namespace A077988.P11857663095451928513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077940 n * A088705 (Nat.lor 6 (n + 1) + 6)

end

end A077988.P11857663095451928513

namespace A077988

/-- `A077940(n)*A088705(or(6, n+1)+6)` -/
def P11857663095451928513.Spec : Prop :=
  ∀ n, P11857663095451928513.a n = A077988 n

end A077988

/-! ## A077988.P8706276930923563633

`∑[A073358(n+1)]*A033999(n+1)`
-/

namespace A077988.P8706276930923563633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 1)

end

end A077988.P8706276930923563633

namespace A077988

/-- `∑[A073358(n+1)]*A033999(n+1)` -/
def P8706276930923563633.Spec : Prop :=
  ∀ n, P8706276930923563633.a n = A077988 n

end A077988

/-! ## A077988.P12232275345708924032

`∑[A078060(n)]`
-/

namespace A077988.P12232275345708924032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077988.P12232275345708924032

namespace A077988

/-- `∑[A078060(n)]` -/
def P12232275345708924032.Spec : Prop :=
  ∀ n, P12232275345708924032.a n = A077988 n

end A077988

/-!
# A077989: Expansion of 1/(1+2*x+x^2-2*x^3).

The programs for A077989, the canonical program `A077989.P6291197559246348569` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077989 has offset 0).

The definition of A077989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+x^2-2x^3))` (program `A077989.P6291197559246348569`, by `A077989.P6291197559246348569.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077989.P7459463835515139854

`(-1)^n*A077942(n)`
-/

namespace A077989.P7459463835515139854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077942 n

end

end A077989.P7459463835515139854

namespace A077989

/-- `(-1)^n*A077942(n)` -/
def P7459463835515139854.Spec : Prop :=
  ∀ n, P7459463835515139854.a n = A077989 n

end A077989

/-! ## A077989.P6291197559246348569

`ogf(1/(1+2x+x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077989

/-- `ogf(1/(1+2x+x^2-2x^3))` -/
def P6291197559246348569.Spec : Prop :=
  ∀ n, P6291197559246348569.a n = A077989 n

theorem P6291197559246348569.correct : P6291197559246348569.Spec := by
  intro n
  simp only [A077989]

end A077989

/-! ## A077989.P10311340085366712809

`A077942(n)/A033999(n+2)`
-/

namespace A077989.P10311340085366712809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077942 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077989.P10311340085366712809

namespace A077989

/-- `A077942(n)/A033999(n+2)` -/
def P10311340085366712809.Spec : Prop :=
  ∀ n, P10311340085366712809.a n = (A077989 n : ℚ)

end A077989

/-! ## A077989.P16456147508828823044

`2*(a(n-3)-a(n-1))-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A077989.P16456147508828823044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  2 * (a (n - 3) - a (n - 1)) - a (n - 2)

end

end A077989.P16456147508828823044

namespace A077989

/-- `2*(a(n-3)-a(n-1))-a(n-2)` -/
def P16456147508828823044.Spec : Prop :=
  ∀ n, P16456147508828823044.a n = A077989 n

end A077989

/-! ## A077989.P12819066824710069660

`∑[A078063(n)]`
-/

namespace A077989.P12819066824710069660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077989.P12819066824710069660

namespace A077989

/-- `∑[A078063(n)]` -/
def P12819066824710069660.Spec : Prop :=
  ∀ n, P12819066824710069660.a n = A077989 n

end A077989

/-! ## A077989.P6135979410131591887

`A387647(n+1)+A387651(n)-A387651(n+1)`
-/

namespace A077989.P6135979410131591887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387647 (n + 1) + (A387651 n - A387651 (n + 1))

end

end A077989.P6135979410131591887

namespace A077989

/-- `A387647(n+1)+A387651(n)-A387651(n+1)` -/
def P6135979410131591887.Spec : Prop :=
  ∀ n, P6135979410131591887.a n = A077989 n

end A077989

/-!
# A077990: Expansion of 1/(1 + 2*x + x^2 - x^3).

The programs for A077990, the canonical program `A077990.P13544531856213860121` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077990 has offset 0).

The definition of A077990 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+x^2-x^3))` (program `A077990.P13544531856213860121`, by `A077990.P13544531856213860121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077990.P13544531856213860121

`ogf(1/(1+2x+x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077990

/-- `ogf(1/(1+2x+x^2-x^3))` -/
def P13544531856213860121.Spec : Prop :=
  ∀ n, P13544531856213860121.a n = A077990 n

theorem P13544531856213860121.correct : P13544531856213860121.Spec := by
  intro n
  simp only [A077990]

end A077990

/-! ## A077990.P13540541185978666042

`(-1)^n*A077941(n)`
-/

namespace A077990.P13540541185978666042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077941 n

end

end A077990.P13540541185978666042

namespace A077990

/-- `(-1)^n*A077941(n)` -/
def P13540541185978666042.Spec : Prop :=
  ∀ n, P13540541185978666042.a n = A077990 n

end A077990

/-! ## A077990.P17124401652258340826

`A355141(A004766(n+1))`
-/

namespace A077990.P17124401652258340826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355141 (A004766 (n + 1)).toNat

end

end A077990.P17124401652258340826

namespace A077990

/-- `A355141(A004766(n+1))` -/
def P17124401652258340826.Spec : Prop :=
  ∀ n, P17124401652258340826.a n = A077990 n

end A077990

/-! ## A077990.P1747848961035544095

`A355141(A016813(n+1))`
-/

namespace A077990.P1747848961035544095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355141 (A016813 (n + 1)).toNat

end

end A077990.P1747848961035544095

namespace A077990

/-- `A355141(A016813(n+1))` -/
def P1747848961035544095.Spec : Prop :=
  ∀ n, P1747848961035544095.a n = A077990 n

end A077990

/-! ## A077990.P740788624321054868

`A077889(2*(n+1))-A077889(2*n+3)`
-/

namespace A077990.P740788624321054868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077889 (2 * (n + 1)) - A077889 (2 * n + 3)

end

end A077990.P740788624321054868

namespace A077990

/-- `A077889(2*(n+1))-A077889(2*n+3)` -/
def P740788624321054868.Spec : Prop :=
  ∀ n, P740788624321054868.a n = A077990 n

end A077990

/-! ## A077990.P9629889369610559910

`a(n-3)-(a(n-1)+a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A077990.P9629889369610559910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 3) - (a (n - 1) + (a (n - 1) + a (n - 2)))

end

end A077990.P9629889369610559910

namespace A077990

/-- `a(n-3)-(a(n-1)+a(n-1)+a(n-2))` -/
def P9629889369610559910.Spec : Prop :=
  ∀ n, P9629889369610559910.a n = A077990 n

end A077990

/-! ## A077990.P5388413171600436064

`a(n-3)-(a(n-2)+2*a(n-1))` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A077990.P5388413171600436064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 3) - (a (n - 2) + 2 * a (n - 1))

end

end A077990.P5388413171600436064

namespace A077990

/-- `a(n-3)-(a(n-2)+2*a(n-1))` -/
def P5388413171600436064.Spec : Prop :=
  ∀ n, P5388413171600436064.a n = A077990 n

end A077990

/-! ## A077990.P16413674410655149248

`a(n-3)-2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A077990.P16413674410655149248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 3) - 2 * a (n - 1) - a (n - 2)

end

end A077990.P16413674410655149248

namespace A077990

/-- `a(n-3)-2*a(n-1)-a(n-2)` -/
def P16413674410655149248.Spec : Prop :=
  ∀ n, P16413674410655149248.a n = A077990 n

end A077990

/-! ## A077990.P10517774932450029428

`a(n-3)-a(n-1)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A077990.P10517774932450029428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n a =>
  a (n - 3) - a (n - 1) - a (n - 1) - a (n - 2)

end

end A077990.P10517774932450029428

namespace A077990

/-- `a(n-3)-a(n-1)-a(n-1)-a(n-2)` -/
def P10517774932450029428.Spec : Prop :=
  ∀ n, P10517774932450029428.a n = A077990 n

end A077990

/-! ## A077990.P3051335273661256645

`A355141(4*(n+3))`
-/

namespace A077990.P3051335273661256645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355141 (4 * (n + 3))

end

end A077990.P3051335273661256645

namespace A077990

/-- `A355141(4*(n+3))` -/
def P3051335273661256645.Spec : Prop :=
  ∀ n, P3051335273661256645.a n = A077990 n

end A077990

/-! ## A077990.P7893171755740719048

`A077961(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A077990.P7893171755740719048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077961 (2 * n) - a (n - 1)

end

end A077990.P7893171755740719048

namespace A077990

/-- `A077961(2*n)-a(n-1)` -/
def P7893171755740719048.Spec : Prop :=
  ∀ n, P7893171755740719048.a n = A077990 n

end A077990

/-! ## A077990.P4574674722399145503

`A077961(2*n)-A077961(2*n+1)`
-/

namespace A077990.P4574674722399145503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n) - A077961 (2 * n + 1)

end

end A077990.P4574674722399145503

namespace A077990

/-- `A077961(2*n)-A077961(2*n+1)` -/
def P4574674722399145503.Spec : Prop :=
  ∀ n, P4574674722399145503.a n = A077990 n

end A077990

/-! ## A077990.P4252929056885943920

`A077961(2*n)+A033999(2*n+1)*A077961(2*n+1)`
-/

namespace A077990.P4252929056885943920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n) + A033999 (2 * n + 1) * A077961 (2 * n + 1)

end

end A077990.P4252929056885943920

namespace A077990

/-- `A077961(2*n)+A033999(2*n+1)*A077961(2*n+1)` -/
def P4252929056885943920.Spec : Prop :=
  ∀ n, P4252929056885943920.a n = A077990 n

end A077990

/-! ## A077990.P11636669567337890904

`A077961(2*n+3)`
-/

namespace A077990.P11636669567337890904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077961 (2 * n + 3)

end

end A077990.P11636669567337890904

namespace A077990

/-- `A077961(2*n+3)` -/
def P11636669567337890904.Spec : Prop :=
  ∀ n, P11636669567337890904.a n = A077990 n

end A077990

/-! ## A077990.P11062402391459280130

`A077962(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A077990.P11062402391459280130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077962 (2 * n) - a (n - 1)

end

end A077990.P11062402391459280130

namespace A077990

/-- `A077962(2*n)-a(n-1)` -/
def P11062402391459280130.Spec : Prop :=
  ∀ n, P11062402391459280130.a n = A077990 n

end A077990

/-! ## A077990.P15519658973381923168

`A077962(2*n+1)+A077962(2*n)`
-/

namespace A077990.P15519658973381923168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077962 (2 * n + 1) + A077962 (2 * n)

end

end A077990.P15519658973381923168

namespace A077990

/-- `A077962(2*n+1)+A077962(2*n)` -/
def P15519658973381923168.Spec : Prop :=
  ∀ n, P15519658973381923168.a n = A077990 n

end A077990

/-! ## A077990.P12224246630858738867

`A077888(2*n+3)-A077888(2*(n+1))`
-/

namespace A077990.P12224246630858738867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077888 (2 * n + 3) - A077888 (2 * (n + 1))

end

end A077990.P12224246630858738867

namespace A077990

/-- `A077888(2*n+3)-A077888(2*(n+1))` -/
def P12224246630858738867.Spec : Prop :=
  ∀ n, P12224246630858738867.a n = A077990 n

end A077990

/-! ## A077990.P12305765622021810310

`-A078031(2*n+1)`
-/

namespace A077990.P12305765622021810310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078031 (2 * n + 1)

end

end A077990.P12305765622021810310

namespace A077990

/-- `-A078031(2*n+1)` -/
def P12305765622021810310.Spec : Prop :=
  ∀ n, P12305765622021810310.a n = A077990 n

end A077990

/-! ## A077990.P9081534223650695837

`1-A077888(2*n+5)`
-/

namespace A077990.P9081534223650695837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077888 (2 * n + 5)

end

end A077990.P9081534223650695837

namespace A077990

/-- `1-A077888(2*n+5)` -/
def P9081534223650695837.Spec : Prop :=
  ∀ n, P9081534223650695837.a n = A077990 n

end A077990

/-! ## A077990.P4988830667418190215

`∑[A078032(2*n+1)-Δ[A078032(2*n)]]`
-/

namespace A077990.P4988830667418190215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078032 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077990.P4988830667418190215

namespace A077990

/-- `∑[A078032(2*n+1)-Δ[A078032(2*n)]]` -/
def P4988830667418190215.Spec : Prop :=
  ∀ n, P4988830667418190215.a n = A077990 n

end A077990

/-!
# A077991: Expansion of 1/(1+2*x+2*x^2-2*x^3).

The programs for A077991, the canonical program `A077991.P5081460002901903216` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077991 has offset 0).

The definition of A077991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+2x^2-2x^3))` (program `A077991.P5081460002901903216`, by `A077991.P5081460002901903216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077991.P5081460002901903216

`ogf(1/(1+2x+2x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077991

/-- `ogf(1/(1+2x+2x^2-2x^3))` -/
def P5081460002901903216.Spec : Prop :=
  ∀ n, P5081460002901903216.a n = A077991 n

theorem P5081460002901903216.correct : P5081460002901903216.Spec := by
  intro n
  simp only [A077991]

end A077991

/-! ## A077991.P13837233782969198684

`(-1)^n*A077945(n)`
-/

namespace A077991.P13837233782969198684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077945 n

end

end A077991.P13837233782969198684

namespace A077991

/-- `(-1)^n*A077945(n)` -/
def P13837233782969198684.Spec : Prop :=
  ∀ n, P13837233782969198684.a n = A077991 n

end A077991

/-! ## A077991.P1236342276373806257

`2*(a(n-3)-(a(n-1)+a(n-2)))` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A077991.P1236342276373806257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  2 * (a (n - 3) - (a (n - 1) + a (n - 2)))

end

end A077991.P1236342276373806257

namespace A077991

/-- `2*(a(n-3)-(a(n-1)+a(n-2)))` -/
def P1236342276373806257.Spec : Prop :=
  ∀ n, P1236342276373806257.a n = A077991 n

end A077991

/-! ## A077991.P16981070600724047593

`2*(a(n-3)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A077991.P16981070600724047593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  2 * (a (n - 3) - a (n - 1) - a (n - 2))

end

end A077991.P16981070600724047593

namespace A077991

/-- `2*(a(n-3)-a(n-1)-a(n-2))` -/
def P16981070600724047593.Spec : Prop :=
  ∀ n, P16981070600724047593.a n = A077991 n

end A077991

/-! ## A077991.P15503856855277868817

`∑[A078005(n)]*A033999(n)`
-/

namespace A077991.P15503856855277868817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077991.P15503856855277868817

namespace A077991

/-- `∑[A078005(n)]*A033999(n)` -/
def P15503856855277868817.Spec : Prop :=
  ∀ n, P15503856855277868817.a n = A077991 n

end A077991

/-! ## A077991.P7277760292192017801

`∑[A078005(n)]/A033999(n+2)`
-/

namespace A077991.P7277760292192017801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078005 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077991.P7277760292192017801

namespace A077991

/-- `∑[A078005(n)]/A033999(n+2)` -/
def P7277760292192017801.Spec : Prop :=
  ∀ n, P7277760292192017801.a n = (A077991 n : ℚ)

end A077991

/-! ## A077991.P5788739039426732024

`∑[A078067(n)]`
-/

namespace A077991.P5788739039426732024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077991.P5788739039426732024

namespace A077991

/-- `∑[A078067(n)]` -/
def P5788739039426732024.Spec : Prop :=
  ∀ n, P5788739039426732024.a n = A077991 n

end A077991

/-!
# A077992: Expansion of 1/(1+2*x+2*x^2-x^3).

The programs for A077992, the canonical program `A077992.P261974263873894459` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077992 has offset 0).

The definition of A077992 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+2x^2-x^3))` (program `A077992.P261974263873894459`, by `A077992.P261974263873894459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077992.P261974263873894459

`ogf(1/(1+2x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077992

/-- `ogf(1/(1+2x+2x^2-x^3))` -/
def P261974263873894459.Spec : Prop :=
  ∀ n, P261974263873894459.a n = A077992 n

theorem P261974263873894459.correct : P261974263873894459.Spec := by
  intro n
  simp only [A077992]

end A077992

/-! ## A077992.P12964252821974633361

`(-1)^n*A077944(n)`
-/

namespace A077992.P12964252821974633361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077944 n

end

end A077992.P12964252821974633361

namespace A077992

/-- `(-1)^n*A077944(n)` -/
def P12964252821974633361.Spec : Prop :=
  ∀ n, P12964252821974633361.a n = A077992 n

end A077992

/-! ## A077992.P11427616519900482800

`a(n-3)-2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=-2, a(2)=2`
-/

namespace A077992.P11427616519900482800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2] fun n a =>
  a (n - 3) - 2 * (a (n - 1) + a (n - 2))

end

end A077992.P11427616519900482800

namespace A077992

/-- `a(n-3)-2*(a(n-1)+a(n-2))` -/
def P11427616519900482800.Spec : Prop :=
  ∀ n, P11427616519900482800.a n = A077992 n

end A077992

/-! ## A077992.P16315621254702356281

`∑[A078004(n)]*A033999(n)`
-/

namespace A077992.P16315621254702356281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077992.P16315621254702356281

namespace A077992

/-- `∑[A078004(n)]*A033999(n)` -/
def P16315621254702356281.Spec : Prop :=
  ∀ n, P16315621254702356281.a n = A077992 n

end A077992

/-! ## A077992.P7229211071563086527

`∑[A078004(n)]/A033999(n+2)`
-/

namespace A077992.P7229211071563086527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078004 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077992.P7229211071563086527

namespace A077992

/-- `∑[A078004(n)]/A033999(n+2)` -/
def P7229211071563086527.Spec : Prop :=
  ∀ n, P7229211071563086527.a n = (A077992 n : ℚ)

end A077992

/-! ## A077992.P10451844420519237188

`A233831(n+1)+Δ[A233831(n+1)/2]`
-/

namespace A077992.P10451844420519237188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233831 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233831 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A077992.P10451844420519237188

namespace A077992

/-- `A233831(n+1)+Δ[A233831(n+1)/2]` -/
def P10451844420519237188.Spec : Prop :=
  ∀ n, P10451844420519237188.a n = (A077992 n : ℚ)

end A077992

/-! ## A077992.P10750733847860371589

`∑[A078068(n)]`
-/

namespace A077992.P10750733847860371589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077992.P10750733847860371589

namespace A077992

/-- `∑[A078068(n)]` -/
def P10750733847860371589.Spec : Prop :=
  ∀ n, P10750733847860371589.a n = A077992 n

end A077992

/-!
# A077993: Expansion of 1/(1+2*x+2*x^2+2*x^3).

The programs for A077993, the canonical program `A077993.P6299530230473276841` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077993 has offset 0).

The definition of A077993 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x+2x^2+2x^3))` (program `A077993.P6299530230473276841`, by `A077993.P6299530230473276841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077993.P6299530230473276841

`ogf(1/(1+2x+2x^2+2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077993

/-- `ogf(1/(1+2x+2x^2+2x^3))` -/
def P6299530230473276841.Spec : Prop :=
  ∀ n, P6299530230473276841.a n = A077993 n

theorem P6299530230473276841.correct : P6299530230473276841.Spec := by
  intro n
  simp only [A077993]

end A077993

/-! ## A077993.P10229765177360854973

`(-1)^n*A077943(n)`
-/

namespace A077993.P10229765177360854973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A077943 n

end

end A077993.P10229765177360854973

namespace A077993

/-- `(-1)^n*A077943(n)` -/
def P10229765177360854973.Spec : Prop :=
  ∀ n, P10229765177360854973.a n = A077993 n

end A077993

/-! ## A077993.P8398297926518114968

`2*a(n-4)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=-2`
-/

namespace A077993.P8398297926518114968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, -2] fun n a =>
  2 * a (n - 4) - a (n - 1)

end

end A077993.P8398297926518114968

namespace A077993

/-- `2*a(n-4)-a(n-1)` -/
def P8398297926518114968.Spec : Prop :=
  ∀ n, P8398297926518114968.a n = A077993 n

end A077993

/-! ## A077993.P13396418100938955085

`a(n-4)+a(n-4)-a(n-1)` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=-2`
-/

namespace A077993.P13396418100938955085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, -2] fun n a =>
  a (n - 4) + (a (n - 4) - a (n - 1))

end

end A077993.P13396418100938955085

namespace A077993

/-- `a(n-4)+a(n-4)-a(n-1)` -/
def P13396418100938955085.Spec : Prop :=
  ∀ n, P13396418100938955085.a n = A077993 n

end A077993

/-! ## A077993.P6825263668987547306

`floor(a(n-4)-(a(n-1)-a(n-4)))` with `a(0)=1, a(1)=-2, a(2)=2, a(3)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A077993.P6825263668987547306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 2, -2] fun n a =>
  a (n - 4) - (a (n - 1) - a (n - 4))

end

end A077993.P6825263668987547306

namespace A077993

/-- `floor(a(n-4)-(a(n-1)-a(n-4)))` -/
def P6825263668987547306.Spec : Prop :=
  ∀ n, P6825263668987547306.a n = A077993 n

end A077993

/-! ## A077993.P8730565155342853889

`∑[A078003(n)]*A033999(n)`
-/

namespace A077993.P8730565155342853889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077993.P8730565155342853889

namespace A077993

/-- `∑[A078003(n)]*A033999(n)` -/
def P8730565155342853889.Spec : Prop :=
  ∀ n, P8730565155342853889.a n = A077993 n

end A077993

/-! ## A077993.P5570310672955927484

`∑[A122788(n+1)]*A033999(n)`
-/

namespace A077993.P5570310672955927484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A077993.P5570310672955927484

namespace A077993

/-- `∑[A122788(n+1)]*A033999(n)` -/
def P5570310672955927484.Spec : Prop :=
  ∀ n, P5570310672955927484.a n = A077993 n

end A077993

/-! ## A077993.P11446161522861384000

`∑[A078003(n)]*A257075(A047237(n+1))`
-/

namespace A077993.P11446161522861384000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A257075 (A047237 (n + 1)).toNat

end

end A077993.P11446161522861384000

namespace A077993

/-- `∑[A078003(n)]*A257075(A047237(n+1))` -/
def P11446161522861384000.Spec : Prop :=
  ∀ n, P11446161522861384000.a n = A077993 n

end A077993

/-! ## A077993.P14374014414228817954

`∑[A078071(n)]`
-/

namespace A077993.P14374014414228817954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077993.P14374014414228817954

namespace A077993

/-- `∑[A078071(n)]` -/
def P14374014414228817954.Spec : Prop :=
  ∀ n, P14374014414228817954.a n = A077993 n

end A077993

/-! ## A077993.P15307970283145662797

`A077943(n)*A124341(A000217(n))`
-/

namespace A077993.P15307970283145662797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 n * A124341 (A000217 n).toNat

end

end A077993.P15307970283145662797

namespace A077993

/-- `A077943(n)*A124341(A000217(n))` -/
def P15307970283145662797.Spec : Prop :=
  ∀ n, P15307970283145662797.a n = A077993 n

end A077993

/-! ## A077993.P12417647858930103263

`A077943(n)*A202480(A000096(n))`
-/

namespace A077993.P12417647858930103263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 n * A202480 (A000096 n).toNat

end

end A077993.P12417647858930103263

namespace A077993

/-- `A077943(n)*A202480(A000096(n))` -/
def P12417647858930103263.Spec : Prop :=
  ∀ n, P12417647858930103263.a n = A077993 n

end A077993

/-!
# A077995: Expansion of (1 - x)/(1 - 2*x - 2*x^2 - x^3).

The programs for A077995, the canonical program `A077995.P1544260862908855110` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077995 has offset 0).

The definition of A077995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^2-x^3))` (program `A077995.P1544260862908855110`, by `A077995.P1544260862908855110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077995.P1544260862908855110

`ogf((1-x)/(1-2x-2x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077995

/-- `ogf((1-x)/(1-2x-2x^2-x^3))` -/
def P1544260862908855110.Spec : Prop :=
  ∀ n, P1544260862908855110.a n = A077995 n

theorem P1544260862908855110.correct : P1544260862908855110.Spec := by
  intro n
  simp only [A077995]

end A077995

/-! ## A077995.P7095275828002266473

`2*a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A077995.P7095275828002266473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) + a (n - 3)

end

end A077995.P7095275828002266473

namespace A077995

/-- `2*a(n-1)+2*a(n-2)+a(n-3)` -/
def P7095275828002266473.Spec : Prop :=
  ∀ n, (P7095275828002266473.a n : ℤ) = A077995 n

end A077995

/-! ## A077995.P12262894235612802459

`a(n-3)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A077995.P12262894235612802459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  a (n - 3) + 2 * (a (n - 1) + a (n - 2))

end

end A077995.P12262894235612802459

namespace A077995

/-- `a(n-3)+2*(a(n-1)+a(n-2))` -/
def P12262894235612802459.Spec : Prop :=
  ∀ n, (P12262894235612802459.a n : ℤ) = A077995 n

end A077995

/-! ## A077995.P10689395748263078010

`abs(Δ[A077936(abs(1-n))])`
-/

namespace A077995.P10689395748263078010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077995.P10689395748263078010

namespace A077995

/-- `abs(Δ[A077936(abs(1-n))])` -/
def P10689395748263078010.Spec : Prop :=
  ∀ n, P10689395748263078010.a n = A077995 n

end A077995

/-! ## A077995.P4187056088581245368

`A221510(n+1)+1-n%2-n%2`
-/

namespace A077995.P4187056088581245368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221510 (n + 1) + 1 - ((n % 2 : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A077995.P4187056088581245368

namespace A077995

/-- `A221510(n+1)+1-n%2-n%2` -/
def P4187056088581245368.Spec : Prop :=
  ∀ n, P4187056088581245368.a n = A077995 n

end A077995

/-! ## A077995.P798067577966028963

`A221510(n+1)+A033999(n)`
-/

namespace A077995.P798067577966028963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221510 (n + 1) + A033999 n

end

end A077995.P798067577966028963

namespace A077995

/-- `A221510(n+1)+A033999(n)` -/
def P798067577966028963.Spec : Prop :=
  ∀ n, P798067577966028963.a n = A077995 n

end A077995

/-! ## A077995.P15584100254170399003

`A101168(n)-A221677(n+1)`
-/

namespace A077995.P15584100254170399003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101168 n - A221677 (n + 1)

end

end A077995.P15584100254170399003

namespace A077995

/-- `A101168(n)-A221677(n+1)` -/
def P15584100254170399003.Spec : Prop :=
  ∀ n, P15584100254170399003.a n = A077995 n

end A077995

/-! ## A077995.P15753674875868464192

`A221677(n+1)-A233828(n)`
-/

namespace A077995.P15753674875868464192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221677 (n + 1) - A233828 n

end

end A077995.P15753674875868464192

namespace A077995

/-- `A221677(n+1)-A233828(n)` -/
def P15753674875868464192.Spec : Prop :=
  ∀ n, P15753674875868464192.a n = A077995 n

end A077995

/-! ## A077995.P6450886459839261698

`(A101168(n)-A233828(n))/2`
-/

namespace A077995.P6450886459839261698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101168 n - A233828 n : ℚ) / 2

end

end A077995.P6450886459839261698

namespace A077995

/-- `(A101168(n)-A233828(n))/2` -/
def P6450886459839261698.Spec : Prop :=
  ∀ n, P6450886459839261698.a n = (A077995 n : ℚ)

end A077995

/-! ## A077995.P7096046847223556506

`A077936(n+1)-A193642(n+1)`
-/

namespace A077995.P7096046847223556506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077936 (n + 1) - A193642 (n + 1)

end

end A077995.P7096046847223556506

namespace A077995

/-- `A077936(n+1)-A193642(n+1)` -/
def P7096046847223556506.Spec : Prop :=
  ∀ n, P7096046847223556506.a n = A077995 n

end A077995

/-! ## A077995.P300236408632391076

`Δ[(A233828(n+1)+A233828(n))/2]`
-/

namespace A077995.P300236408632391076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233828 (n + 1) + A233828 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077995.P300236408632391076

namespace A077995

/-- `Δ[(A233828(n+1)+A233828(n))/2]` -/
def P300236408632391076.Spec : Prop :=
  ∀ n, P300236408632391076.a n = (A077995 n : ℚ)

end A077995

/-!
# A077996: Expansion of (1-x)/(1-2*x-x^2-2*x^3).

The programs for A077996, the canonical program `A077996.P12249991699901641480` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077996 has offset 0).

The definition of A077996 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^2-2x^3))` (program `A077996.P12249991699901641480`, by `A077996.P12249991699901641480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077996.P12249991699901641480

`ogf((1-x)/(1-2x-x^2-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077996

/-- `ogf((1-x)/(1-2x-x^2-2x^3))` -/
def P12249991699901641480.Spec : Prop :=
  ∀ n, P12249991699901641480.a n = A077996 n

theorem P12249991699901641480.correct : P12249991699901641480.Spec := by
  intro n
  simp only [A077996]

end A077996

/-! ## A077996.P7032367853909838379

`2*a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077996.P7032367853909838379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A077996.P7032367853909838379

namespace A077996

/-- `2*a(n-1)+a(n-2)+2*a(n-3)` -/
def P7032367853909838379.Spec : Prop :=
  ∀ n, (P7032367853909838379.a n : ℤ) = A077996 n

end A077996

/-! ## A077996.P11390497686282323203

`a(n-2)+2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077996.P11390497686282323203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + a (n - 3))

end

end A077996.P11390497686282323203

namespace A077996

/-- `a(n-2)+2*(a(n-1)+a(n-3))` -/
def P11390497686282323203.Spec : Prop :=
  ∀ n, (P11390497686282323203.a n : ℤ) = A077996 n

end A077996

/-! ## A077996.P15751699097338928974

`2*A224232(n)-a(n-1)` with `a(0)=1`
-/

namespace A077996.P15751699097338928974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A224232 n - a (n - 1)

end

end A077996.P15751699097338928974

namespace A077996

/-- `2*A224232(n)-a(n-1)` -/
def P15751699097338928974.Spec : Prop :=
  ∀ n, P15751699097338928974.a n = A077996 n

end A077996

/-! ## A077996.P12093457059205135711

`2*A077938(n)-abs(A078059(n))`
-/

namespace A077996.P12093457059205135711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077938 n - |A078059 n|

end

end A077996.P12093457059205135711

namespace A077996

/-- `2*A077938(n)-abs(A078059(n))` -/
def P12093457059205135711.Spec : Prop :=
  ∀ n, P12093457059205135711.a n = A077996 n

end A077996

/-! ## A077996.P11343417679829713455

`abs(2*A077987(n)-A078059(n))`
-/

namespace A077996.P11343417679829713455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A077987 n - A078059 n|

end

end A077996.P11343417679829713455

namespace A077996

/-- `abs(2*A077987(n)-A078059(n))` -/
def P11343417679829713455.Spec : Prop :=
  ∀ n, P11343417679829713455.a n = A077996 n

end A077996

/-! ## A077996.P10473573715783708313

`Δ[abs(A078059(n))-A077938(n)]`
-/

namespace A077996.P10473573715783708313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078059 n| - A077938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077996.P10473573715783708313

namespace A077996

/-- `Δ[abs(A078059(n))-A077938(n)]` -/
def P10473573715783708313.Spec : Prop :=
  ∀ n, P10473573715783708313.a n = A077996 n

end A077996

/-! ## A077996.P13304671999847854204

`Δ[abs(A077987(n)-A078059(n))]`
-/

namespace A077996.P13304671999847854204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077987 n - A078059 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077996.P13304671999847854204

namespace A077996

/-- `Δ[abs(A077987(n)-A078059(n))]` -/
def P13304671999847854204.Spec : Prop :=
  ∀ n, P13304671999847854204.a n = A077996 n

end A077996

/-! ## A077996.P5736580570587422

`round(A077938(n)²/A077848(n))`
-/

namespace A077996.P5736580570587422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077938 n ^ 2 : ℚ) / (A077848 n : ℚ))

end

end A077996.P5736580570587422

namespace A077996

/-- `round(A077938(n)²/A077848(n))` -/
def P5736580570587422.Spec : Prop :=
  ∀ n, P5736580570587422.a n = A077996 n

end A077996

/-! ## A077996.P299346189356809522

`round(A077987(n)²/A077848(n))`
-/

namespace A077996.P299346189356809522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A077987 n ^ 2 : ℚ) / (A077848 n : ℚ))

end

end A077996.P299346189356809522

namespace A077996

/-- `round(A077987(n)²/A077848(n))` -/
def P299346189356809522.Spec : Prop :=
  ∀ n, P299346189356809522.a n = A077996 n

end A077996

/-!
# A077997: Expansion of (1-x)/(1-2*x-x^2-x^3).

The programs for A077997, the canonical program `A077997.P5613243842344804469` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077997 has offset 0).

The definition of A077997 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^2-x^3))` (program `A077997.P5613243842344804469`, by `A077997.P5613243842344804469.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077997.P5613243842344804469

`ogf((1-x)/(1-2x-x^2-x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077997

/-- `ogf((1-x)/(1-2x-x^2-x^3))` -/
def P5613243842344804469.Spec : Prop :=
  ∀ n, P5613243842344804469.a n = A077997 n

theorem P5613243842344804469.correct : P5613243842344804469.Spec := by
  intro n
  simp only [A077997]

end A077997

/-! ## A077997.P1367581870463903524

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077997.P1367581870463903524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) + a (n - 3)

end

end A077997.P1367581870463903524

namespace A077997

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P1367581870463903524.Spec : Prop :=
  ∀ n, (P1367581870463903524.a n : ℤ) = A077997 n

end A077997

/-! ## A077997.P17983317890897635166

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077997.P17983317890897635166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A077997.P17983317890897635166

namespace A077997

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P17983317890897635166.Spec : Prop :=
  ∀ n, (P17983317890897635166.a n : ℤ) = A077997 n

end A077997

/-! ## A077997.P15893863908540395143

`abs(Δ[A077939(abs(1-n))])`
-/

namespace A077997.P15893863908540395143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A077997.P15893863908540395143

namespace A077997

/-- `abs(Δ[A077939(abs(1-n))])` -/
def P15893863908540395143.Spec : Prop :=
  ∀ n, P15893863908540395143.a n = A077997 n

end A077997

/-! ## A077997.P1958119659970142347

`A077939(n)+A077939(n)-A116413(n)`
-/

namespace A077997.P1958119659970142347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077939 n + (A077939 n - A116413 n)

end

end A077997.P1958119659970142347

namespace A077997

/-- `A077939(n)+A077939(n)-A116413(n)` -/
def P1958119659970142347.Spec : Prop :=
  ∀ n, P1958119659970142347.a n = A077997 n

end A077997

/-! ## A077997.P3009000777584568636

`A109545(n+1)+A109545(n)-A077939(n)`
-/

namespace A077997.P3009000777584568636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 (n + 1) + (A109545 n - A077939 n)

end

end A077997.P3009000777584568636

namespace A077997

/-- `A109545(n+1)+A109545(n)-A077939(n)` -/
def P3009000777584568636.Spec : Prop :=
  ∀ n, P3009000777584568636.a n = A077997 n

end A077997

/-! ## A077997.P11057151019982039845

`Δ[A116413(n)-A077939(n)]`
-/

namespace A077997.P11057151019982039845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 n - A077939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077997.P11057151019982039845

namespace A077997

/-- `Δ[A116413(n)-A077939(n)]` -/
def P11057151019982039845.Spec : Prop :=
  ∀ n, P11057151019982039845.a n = A077997 n

end A077997

/-! ## A077997.P824654522987030774

`A347725(n+1)-A308589(n+1)`
-/

namespace A077997.P824654522987030774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347725 (n + 1) - A308589 (n + 1)

end

end A077997.P824654522987030774

namespace A077997

/-- `A347725(n+1)-A308589(n+1)` -/
def P824654522987030774.Spec : Prop :=
  ∀ n, P824654522987030774.a n = A077997 n

end A077997

/-! ## A077997.P7654250404661839873

`A116413(n+1)-A109545(n+2)`
-/

namespace A077997.P7654250404661839873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116413 (n + 1) - A109545 (n + 2)

end

end A077997.P7654250404661839873

namespace A077997

/-- `A116413(n+1)-A109545(n+2)` -/
def P7654250404661839873.Spec : Prop :=
  ∀ n, P7654250404661839873.a n = A077997 n

end A077997

/-! ## A077997.P16549955146764507563

`A276226(n+1)-(A276225(n)+A077939(n+1))`
-/

namespace A077997.P16549955146764507563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276226 (n + 1) - (A276225 n + A077939 (n + 1))

end

end A077997.P16549955146764507563

namespace A077997

/-- `A276226(n+1)-(A276225(n)+A077939(n+1))` -/
def P16549955146764507563.Spec : Prop :=
  ∀ n, P16549955146764507563.a n = A077997 n

end A077997

/-! ## A077997.P11560260306820195834

`(2*A077939(n+3))%A077939(n+2)`
-/

namespace A077997.P11560260306820195834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A077939 (n + 3)) (A077939 (n + 2))

end

end A077997.P11560260306820195834

namespace A077997

/-- `(2*A077939(n+3))%A077939(n+2)` -/
def P11560260306820195834.Spec : Prop :=
  ∀ n, P11560260306820195834.a n = A077997 n

end A077997

/-!
# A077998: Expansion of (1-x)/(1-2*x-x^2+x^3).

The programs for A077998, the canonical program `A077998.P10353918802167166776` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077998 has offset 0).

The definition of A077998 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-x^2+x^3))` (program `A077998.P10353918802167166776`, by `A077998.P10353918802167166776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077998.P10353918802167166776

`ogf((1-x)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077998

/-- `ogf((1-x)/(1-2x-x^2+x^3))` -/
def P10353918802167166776.Spec : Prop :=
  ∀ n, P10353918802167166776.a n = A077998 n

theorem P10353918802167166776.correct : P10353918802167166776.Spec := by
  intro n
  simp only [A077998]

end A077998

/-! ## A077998.P13509579760708211808

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077998.P13509579760708211808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A077998.P13509579760708211808

namespace A077998

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P13509579760708211808.Spec : Prop :=
  ∀ n, P13509579760708211808.a n = A077998 n

end A077998

/-! ## A077998.P7659727410280669604

`a(n-2)-(a(n-3)-2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077998.P7659727410280669604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 2) - (a (n - 3) - 2 * a (n - 1))

end

end A077998.P7659727410280669604

namespace A077998

/-- `a(n-2)-(a(n-3)-2*a(n-1))` -/
def P7659727410280669604.Spec : Prop :=
  ∀ n, P7659727410280669604.a n = A077998 n

end A077998

/-! ## A077998.P4127566013930488772

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077998.P4127566013930488772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A077998.P4127566013930488772

namespace A077998

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P4127566013930488772.Spec : Prop :=
  ∀ n, P4127566013930488772.a n = A077998 n

end A077998

/-! ## A077998.P14858948320390888328

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A077998.P14858948320390888328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A077998.P14858948320390888328

namespace A077998

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P14858948320390888328.Spec : Prop :=
  ∀ n, P14858948320390888328.a n = A077998 n

end A077998

/-! ## A077998.P4732283888147749235

`A106803(n+1)`
-/

namespace A077998.P4732283888147749235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1)

end

end A077998.P4732283888147749235

namespace A077998

/-- `A106803(n+1)` -/
def P4732283888147749235.Spec : Prop :=
  ∀ n, P4732283888147749235.a n = A077998 n

end A077998

/-! ## A077998.P17405964003667697322

`A052949(n)-1`
-/

namespace A077998.P17405964003667697322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 n - 1

end

end A077998.P17405964003667697322

namespace A077998

/-- `A052949(n)-1` -/
def P17405964003667697322.Spec : Prop :=
  ∀ n, P17405964003667697322.a n = A077998 n

end A077998

/-! ## A077998.P4815662658912239138

`A038196(2*n)`
-/

namespace A077998.P4815662658912239138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * n)

end

end A077998.P4815662658912239138

namespace A077998

/-- `A038196(2*n)` -/
def P4815662658912239138.Spec : Prop :=
  ∀ n, P4815662658912239138.a n = A077998 n

end A077998

/-! ## A077998.P13847596391998802067

`A120771(3*n)`
-/

namespace A077998.P13847596391998802067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * n)

end

end A077998.P13847596391998802067

namespace A077998

/-- `A120771(3*n)` -/
def P13847596391998802067.Spec : Prop :=
  ∀ n, P13847596391998802067.a n = A077998 n

end A077998

/-! ## A077998.P3347826359701482537

`A187070(2*(n+1))`
-/

namespace A077998.P3347826359701482537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * (n + 1))

end

end A077998.P3347826359701482537

namespace A077998

/-- `A187070(2*(n+1))` -/
def P3347826359701482537.Spec : Prop :=
  ∀ n, P3347826359701482537.a n = A077998 n

end A077998

/-! ## A077998.P10514846643402715834

`A187068(2*(n+2))`
-/

namespace A077998.P10514846643402715834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * (n + 2))

end

end A077998.P10514846643402715834

namespace A077998

/-- `A187068(2*(n+2))` -/
def P10514846643402715834.Spec : Prop :=
  ∀ n, P10514846643402715834.a n = A077998 n

end A077998

/-! ## A077998.P16621478568998000946

`A006356((n-1)%(n+1))`
-/

namespace A077998.P16621478568998000946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A077998.P16621478568998000946

namespace A077998

/-- `A006356((n-1)%(n+1))` -/
def P16621478568998000946.Spec : Prop :=
  ∀ n, P16621478568998000946.a n = A077998 n

end A077998

/-! ## A077998.P13175337130851597790

`A219788(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A077998.P13175337130851597790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A219788 (n - 1) + a (n - 1)

end

end A077998.P13175337130851597790

namespace A077998

/-- `A219788(n-1)+a(n-1)` -/
def P13175337130851597790.Spec : Prop :=
  ∀ n, P13175337130851597790.a n = A077998 n

end A077998

/-! ## A077998.P5709105517549850139

`A006356(A289207(n+1))`
-/

namespace A077998.P5709105517549850139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A289207 (n + 1)).toNat

end

end A077998.P5709105517549850139

namespace A077998

/-- `A006356(A289207(n+1))` -/
def P5709105517549850139.Spec : Prop :=
  ∀ n, P5709105517549850139.a n = A077998 n

end A077998

/-! ## A077998.P14171714432651220159

`A006356(A004273(n)-n)`
-/

namespace A077998.P14171714432651220159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A004273 n - (n : ℤ)).toNat

end

end A077998.P14171714432651220159

namespace A077998

/-- `A006356(A004273(n)-n)` -/
def P14171714432651220159.Spec : Prop :=
  ∀ n, P14171714432651220159.a n = A077998 n

end A077998

/-! ## A077998.P9220212651500133772

`A006356(record[A006369(n)]-n)`
-/

namespace A077998.P9220212651500133772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A077998.P9220212651500133772

namespace A077998

/-- `A006356(record[A006369(n)]-n)` -/
def P9220212651500133772.Spec : Prop :=
  ∀ n, P9220212651500133772.a n = A077998 n

end A077998

/-! ## A077998.P9351609212347013325

`A006356(A289207(2*n)/2)`
-/

namespace A077998.P9351609212347013325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

end

end A077998.P9351609212347013325

namespace A077998

/-- `A006356(A289207(2*n)/2)` -/
def P9351609212347013325.Spec : Prop :=
  ∀ n, P9351609212347013325.a n = A077998 n

end A077998

/-! ## A077998.P5338017714333753562

`A006356(A000007(n)-1+n)`
-/

namespace A077998.P5338017714333753562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (A000007 n - 1 + (n : ℤ)).toNat

end

end A077998.P5338017714333753562

namespace A077998

/-- `A006356(A000007(n)-1+n)` -/
def P5338017714333753562.Spec : Prop :=
  ∀ n, P5338017714333753562.a n = A077998 n

end A077998

/-! ## A077998.P17832310997224118173

`A006356(n-(1-A000007(n)))`
-/

namespace A077998.P17832310997224118173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 ((n : ℤ) - (1 - A000007 n)).toNat

end

end A077998.P17832310997224118173

namespace A077998

/-- `A006356(n-(1-A000007(n)))` -/
def P17832310997224118173.Spec : Prop :=
  ∀ n, P17832310997224118173.a n = A077998 n

end A077998

/-! ## A077998.P17303525273072375675

`A006054(n)+∑[A006054(n)]+1`
-/

namespace A077998.P17303525273072375675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A077998.P17303525273072375675

namespace A077998

/-- `A006054(n)+∑[A006054(n)]+1` -/
def P17303525273072375675.Spec : Prop :=
  ∀ n, P17303525273072375675.a n = A077998 n

end A077998

/-!
# A077999: Expansion of (1-x)/(1-2*x-2*x^3).

The programs for A077999, the canonical program `A077999.P5569483175579266823` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A077999 has offset 0).

The definition of A077999 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-2x-2x^3))` (program `A077999.P5569483175579266823`, by `A077999.P5569483175579266823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A077999.P5569483175579266823

`ogf((1-x)/(1-2x-2x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A077999

/-- `ogf((1-x)/(1-2x-2x^3))` -/
def P5569483175579266823.Spec : Prop :=
  ∀ n, P5569483175579266823.a n = A077999 n

theorem P5569483175579266823.correct : P5569483175579266823.Spec := by
  intro n
  simp only [A077999]

end A077999

/-! ## A077999.P5668491261444877926

`2*(a(n-1)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077999.P5668491261444877926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * (a (n - 1) + a (n - 3))

end

end A077999.P5668491261444877926

namespace A077999

/-- `2*(a(n-1)+a(n-3))` -/
def P5668491261444877926.Spec : Prop :=
  ∀ n, (P5668491261444877926.a n : ℤ) = A077999 n

end A077999

/-! ## A077999.P229161121250303058

`(-1)^n*A110524(n)`
-/

namespace A077999.P229161121250303058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A110524 n

end

end A077999.P229161121250303058

namespace A077999

/-- `(-1)^n*A110524(n)` -/
def P229161121250303058.Spec : Prop :=
  ∀ n, P229161121250303058.a n = A077999 n

end A077999

/-! ## A077999.P16205304182523321470

`a(n-1)+a(n-3)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A077999.P16205304182523321470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 1) + a (n - 3)))

end

end A077999.P16205304182523321470

namespace A077999

/-- `a(n-1)+a(n-3)+a(n-1)+a(n-3)` -/
def P16205304182523321470.Spec : Prop :=
  ∀ n, (P16205304182523321470.a n : ℤ) = A077999 n

end A077999

/-! ## A077999.P3604020273823750232

`abs(A110524(n))`
-/

namespace A077999.P3604020273823750232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110524 n|

end

end A077999.P3604020273823750232

namespace A077999

/-- `abs(A110524(n))` -/
def P3604020273823750232.Spec : Prop :=
  ∀ n, P3604020273823750232.a n = A077999 n

end A077999

/-! ## A077999.P12322449213999217279

`gcd(A000038(n), A110524(n))`
-/

namespace A077999.P12322449213999217279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110524 n)

end

end A077999.P12322449213999217279

namespace A077999

/-- `gcd(A000038(n), A110524(n))` -/
def P12322449213999217279.Spec : Prop :=
  ∀ n, (P12322449213999217279.a n : ℤ) = A077999 n

end A077999

/-! ## A077999.P11855476089595301060

`lcm(A006466(n), A110524(n))`
-/

namespace A077999.P11855476089595301060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A110524 n)

end

end A077999.P11855476089595301060

namespace A077999

/-- `lcm(A006466(n), A110524(n))` -/
def P11855476089595301060.Spec : Prop :=
  ∀ n, (P11855476089595301060.a n : ℤ) = A077999 n

end A077999

/-! ## A077999.P7950846280940391063

`A110524(n)/A033999(n+2)`
-/

namespace A077999.P7950846280940391063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110524 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A077999.P7950846280940391063

namespace A077999

/-- `A110524(n)/A033999(n+2)` -/
def P7950846280940391063.Spec : Prop :=
  ∀ n, P7950846280940391063.a n = (A077999 n : ℚ)

end A077999

/-! ## A077999.P2888152818653882044

`A052912(n+1)+A052912(n)-A239333(n+1)`
-/

namespace A077999.P2888152818653882044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052912 (n + 1) + (A052912 n - A239333 (n + 1))

end

end A077999.P2888152818653882044

namespace A077999

/-- `A052912(n+1)+A052912(n)-A239333(n+1)` -/
def P2888152818653882044.Spec : Prop :=
  ∀ n, P2888152818653882044.a n = A077999 n

end A077999

/-! ## A077999.P8243442158158616120

`Δ[A239333(n+1)-A052912(n+1)]`
-/

namespace A077999.P8243442158158616120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 1) - A052912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A077999.P8243442158158616120

namespace A077999

/-- `Δ[A239333(n+1)-A052912(n+1)]` -/
def P8243442158158616120.Spec : Prop :=
  ∀ n, P8243442158158616120.a n = A077999 n

end A077999

/-! ## A077999.P823882132711631953

`Δ[A239333(n+2)]%A239333(n+1)`
-/

namespace A077999.P823882132711631953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A239333 (n + 1))

end

end A077999.P823882132711631953

namespace A077999

/-- `Δ[A239333(n+2)]%A239333(n+1)` -/
def P823882132711631953.Spec : Prop :=
  ∀ n, P823882132711631953.a n = A077999 n

end A077999


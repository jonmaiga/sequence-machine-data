import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A179600: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + x)/(1 - 2*x - 10*x^2 - 4*x^3).

The programs for A179600, the canonical program `A179600.P18419017206547529073` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179600 has offset 0).

The definition of A179600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179600.P18419017206547529073

`2*a(n-1)+10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179600

/-- `2*a(n-1)+10*a(n-2)+4*a(n-3)` -/
def P18419017206547529073.Spec : Prop :=
  ∀ n, (P18419017206547529073.a n : ℤ) = A179600 n

theorem P18419017206547529073.correct : P18419017206547529073.Spec := by
  intro n
  simp only [A179600]

end A179600

/-! ## A179600.P13547364173482382398

`ogf((1+x)/(1-2x-10x^2-4x^3))`
-/

namespace A179600.P13547364173482382398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -10, -4] n

end

end A179600.P13547364173482382398

namespace A179600

/-- `ogf((1+x)/(1-2x-10x^2-4x^3))` -/
def P13547364173482382398.Spec : Prop :=
  ∀ n, P13547364173482382398.a n = A179600 n

end A179600

/-! ## A179600.P5734545830644739813

`A123347(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179600.P5734545830644739813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123347 n - 2 * a (n - 1)

end

end A179600.P5734545830644739813

namespace A179600

/-- `A123347(n)-2*a(n-1)` -/
def P5734545830644739813.Spec : Prop :=
  ∀ n, P5734545830644739813.a n = A179600 n

end A179600

/-! ## A179600.P7528740577373000164

`A335749(n)-(A123348(n)+2*a(n-1))` with `a(0)=1`
-/

namespace A179600.P7528740577373000164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335749 n - (A123348 n + 2 * a (n - 1))

end

end A179600.P7528740577373000164

namespace A179600

/-- `A335749(n)-(A123348(n)+2*a(n-1))` -/
def P7528740577373000164.Spec : Prop :=
  ∀ n, P7528740577373000164.a n = A179600 n

end A179600

/-!
# A179601: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1+4*x)/(1 - 2*x - 10*x^2 - 4*x^3).

The programs for A179601, the canonical program `A179601.P11860090829622255311` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179601 has offset 0).

The definition of A179601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179601.P11860090829622255311

`2*a(n-1)+10*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=6, a(2)=22`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179601

/-- `2*a(n-1)+10*a(n-2)+4*a(n-3)` -/
def P11860090829622255311.Spec : Prop :=
  ∀ n, (P11860090829622255311.a n : ℤ) = A179601 n

theorem P11860090829622255311.correct : P11860090829622255311.Spec := by
  intro n
  simp only [A179601]

end A179601

/-! ## A179601.P15190419264408180111

`ogf((1+4x)/(1-2x-10x^2-4x^3))`
-/

namespace A179601.P15190419264408180111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4] [1, -2, -10, -4] n

end

end A179601.P15190419264408180111

namespace A179601

/-- `ogf((1+4x)/(1-2x-10x^2-4x^3))` -/
def P15190419264408180111.Spec : Prop :=
  ∀ n, P15190419264408180111.a n = A179601 n

end A179601

/-! ## A179601.P7111788417888256274

`A123348(n)+A123347(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179601.P7111788417888256274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123348 n + (A123347 n - 2 * a (n - 1))

end

end A179601.P7111788417888256274

namespace A179601

/-- `A123348(n)+A123347(n)-2*a(n-1)` -/
def P7111788417888256274.Spec : Prop :=
  ∀ n, P7111788417888256274.a n = A179601 n

end A179601

/-! ## A179601.P13153082694779271470

`A335749(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A179601.P13153082694779271470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335749 n - 2 * a (n - 1)

end

end A179601.P13153082694779271470

namespace A179601

/-- `A335749(n)-2*a(n-1)` -/
def P13153082694779271470.Spec : Prop :=
  ∀ n, P13153082694779271470.a n = A179601 n

end A179601

/-! ## A179601.P9961572740607334565

`A179600(n+1)-2*A123347(n)`
-/

namespace A179601.P9961572740607334565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179600 (n + 1) - 2 * A123347 n

end

end A179601.P9961572740607334565

namespace A179601

/-- `A179600(n+1)-2*A123347(n)` -/
def P9961572740607334565.Spec : Prop :=
  ∀ n, P9961572740607334565.a n = A179601 n

end A179601

/-! ## A179601.P7538472893858478095

`A179600(n+1)-A016116(n+1)*A041006(n)`
-/

namespace A179601.P7538472893858478095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179600 (n + 1) - A016116 (n + 1) * A041006 n

end

end A179601.P7538472893858478095

namespace A179601

/-- `A179600(n+1)-A016116(n+1)*A041006(n)` -/
def P7538472893858478095.Spec : Prop :=
  ∀ n, P7538472893858478095.a n = A179601 n

end A179601

/-!
# A179602: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 2*x)/(1 - 3*x - 7*x^2).

The programs for A179602, the canonical program `A179602.P16987394967722774735` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179602 has offset 0).

The definition of A179602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179602.P16987394967722774735

`3*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179602

/-- `3*a(n-1)+7*a(n-2)` -/
def P16987394967722774735.Spec : Prop :=
  ∀ n, (P16987394967722774735.a n : ℤ) = A179602 n

theorem P16987394967722774735.correct : P16987394967722774735.Spec := by
  intro n
  simp only [A179602]

end A179602

/-! ## A179602.P6060342757741966085

`ogf((1+2x)/(1-3x-7x^2))`
-/

namespace A179602.P6060342757741966085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, -7] n

end

end A179602.P6060342757741966085

namespace A179602

/-- `ogf((1+2x)/(1-3x-7x^2))` -/
def P6060342757741966085.Spec : Prop :=
  ∀ n, P6060342757741966085.a n = A179602 n

end A179602

/-! ## A179602.P1313290127177925412

`A179603(n)-A015524(n)`
-/

namespace A179602.P1313290127177925412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179603 n - A015524 n

end

end A179602.P1313290127177925412

namespace A179602

/-- `A179603(n)-A015524(n)` -/
def P1313290127177925412.Spec : Prop :=
  ∀ n, P1313290127177925412.a n = A179602 n

end A179602

/-! ## A179602.P7550896727441783714

`A015524(n+1)+2*A015524(n)`
-/

namespace A179602.P7550896727441783714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015524 (n + 1) + 2 * A015524 n

end

end A179602.P7550896727441783714

namespace A179602

/-- `A015524(n+1)+2*A015524(n)` -/
def P7550896727441783714.Spec : Prop :=
  ∀ n, P7550896727441783714.a n = A179602 n

end A179602

/-! ## A179602.P2780040945683858306

`(A015524(n+2)-A015524(n))/3`
-/

namespace A179602.P2780040945683858306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015524 (n + 2) - A015524 n : ℚ) / 3

end

end A179602.P2780040945683858306

namespace A179602

/-- `(A015524(n+2)-A015524(n))/3` -/
def P2780040945683858306.Spec : Prop :=
  ∀ n, P2780040945683858306.a n = (A179602 n : ℚ)

end A179602

/-!
# A179603: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 3*x)/(1 - 3*x - 7*x^2).

The programs for A179603, the canonical program `A179603.P9238516538983776926` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179603 has offset 0).

The definition of A179603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179603.P9238516538983776926

`3*a(n-1)+7*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179603

/-- `3*a(n-1)+7*a(n-2)` -/
def P9238516538983776926.Spec : Prop :=
  ∀ n, (P9238516538983776926.a n : ℤ) = A179603 n

theorem P9238516538983776926.correct : P9238516538983776926.Spec := by
  intro n
  simp only [A179603]

end A179603

/-! ## A179603.P6807223597846227685

`ogf((1+3x)/(1-3x-7x^2))`
-/

namespace A179603.P6807223597846227685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -3, -7] n

end

end A179603.P6807223597846227685

namespace A179603

/-- `ogf((1+3x)/(1-3x-7x^2))` -/
def P6807223597846227685.Spec : Prop :=
  ∀ n, P6807223597846227685.a n = A179603 n

end A179603

/-! ## A179603.P2287655753726222930

`A179602(n)+A015524(n)`
-/

namespace A179603.P2287655753726222930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179602 n + A015524 n

end

end A179603.P2287655753726222930

namespace A179603

/-- `A179602(n)+A015524(n)` -/
def P2287655753726222930.Spec : Prop :=
  ∀ n, P2287655753726222930.a n = A179603 n

end A179603

/-! ## A179603.P12394681589657198044

`A015524(n+1)+3*A015524(n)`
-/

namespace A179603.P12394681589657198044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015524 (n + 1) + 3 * A015524 n

end

end A179603.P12394681589657198044

namespace A179603

/-- `A015524(n+1)+3*A015524(n)` -/
def P12394681589657198044.Spec : Prop :=
  ∀ n, P12394681589657198044.a n = A179603 n

end A179603

/-! ## A179603.P13534747208643526983

`A015524(n)+(A015524(n+2)-A015524(n))/3`
-/

namespace A179603.P13534747208643526983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015524 n : ℚ) + (A015524 (n + 2) - A015524 n : ℚ) / 3

end

end A179603.P13534747208643526983

namespace A179603

/-- `A015524(n)+(A015524(n+2)-A015524(n))/3` -/
def P13534747208643526983.Spec : Prop :=
  ∀ n, P13534747208643526983.a n = (A179603 n : ℚ)

end A179603

/-!
# A179604: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + x)/(1 - 2*x - 9*x^2 - 2*x^3).

The programs for A179604, the canonical program `A179604.P8868782376576197099` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179604 has offset 0).

The definition of A179604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179604.P8868782376576197099

`2*a(n-1)+9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179604

/-- `2*a(n-1)+9*a(n-2)+2*a(n-3)` -/
def P8868782376576197099.Spec : Prop :=
  ∀ n, (P8868782376576197099.a n : ℤ) = A179604 n

theorem P8868782376576197099.correct : P8868782376576197099.Spec := by
  intro n
  simp only [A179604]

end A179604

/-! ## A179604.P705076771783822713

`ogf((1+x)/(1-2x-9x^2-2x^3))`
-/

namespace A179604.P705076771783822713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -9, -2] n

end

end A179604.P705076771783822713

namespace A179604

/-- `ogf((1+x)/(1-2x-9x^2-2x^3))` -/
def P705076771783822713.Spec : Prop :=
  ∀ n, P705076771783822713.a n = A179604 n

end A179604

/-! ## A179604.P15974183667297228475

`A015448(n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A179604.P15974183667297228475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A015448 (n + 1) - 2 * a (n - 1)

end

end A179604.P15974183667297228475

namespace A179604

/-- `A015448(n+1)-2*a(n-1)` -/
def P15974183667297228475.Spec : Prop :=
  ∀ n, P15974183667297228475.a n = A179604 n

end A179604

/-! ## A179604.P48216401998930832

`∑[2*(A000045(3*n)-a(n-1))]` with `a(0)=1`
-/

namespace A179604.P48216401998930832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * (A000045 (3 * n) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179604.P48216401998930832

namespace A179604

/-- `∑[2*(A000045(3*n)-a(n-1))]` -/
def P48216401998930832.Spec : Prop :=
  ∀ n, P48216401998930832.a n = A179604 n

end A179604

/-! ## A179604.P10771297354361987669

`A117647(2*n+1)-2*a(n-1)` with `a(0)=1`
-/

namespace A179604.P10771297354361987669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A117647 (2 * n + 1) - 2 * a (n - 1)

end

end A179604.P10771297354361987669

namespace A179604

/-- `A117647(2*n+1)-2*a(n-1)` -/
def P10771297354361987669.Spec : Prop :=
  ∀ n, P10771297354361987669.a n = A179604 n

end A179604

/-! ## A179604.P8428680134813094260

`A000045(3*n+2)-2*a(n-1)` with `a(0)=1`
-/

namespace A179604.P8428680134813094260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (3 * n + 2) - 2 * a (n - 1)

end

end A179604.P8428680134813094260

namespace A179604

/-- `A000045(3*n+2)-2*a(n-1)` -/
def P8428680134813094260.Spec : Prop :=
  ∀ n, P8428680134813094260.a n = A179604 n

end A179604

/-! ## A179604.P16233516243295030084

`A212804(3*(n+1))-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A179604.P16233516243295030084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212804 (3 * (n + 1)) - a (n - 1) - a (n - 1)

end

end A179604.P16233516243295030084

namespace A179604

/-- `A212804(3*(n+1))-a(n-1)-a(n-1)` -/
def P16233516243295030084.Spec : Prop :=
  ∀ n, P16233516243295030084.a n = A179604 n

end A179604

/-! ## A179604.P3560010663896889459

`(A179605(n+1)-A015448(n+1))/4`
-/

namespace A179604.P3560010663896889459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179605 (n + 1) - A015448 (n + 1) : ℚ) / 4

end

end A179604.P3560010663896889459

namespace A179604

/-- `(A179605(n+1)-A015448(n+1))/4` -/
def P3560010663896889459.Spec : Prop :=
  ∀ n, P3560010663896889459.a n = (A179604 n : ℚ)

end A179604

/-!
# A179605: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 3*x - 2*x^2)/(1 - 2*x - 9*x^2 - 2*x^3).

The programs for A179605, the canonical program `A179605.P5847395391383442263` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179605 has offset 0).

The definition of A179605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179605.P5847395391383442263

`2*a(n-1)+9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=17`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179605

/-- `2*a(n-1)+9*a(n-2)+2*a(n-3)` -/
def P5847395391383442263.Spec : Prop :=
  ∀ n, (P5847395391383442263.a n : ℤ) = A179605 n

theorem P5847395391383442263.correct : P5847395391383442263.Spec := by
  intro n
  simp only [A179605]

end A179605

/-! ## A179605.P18253866082771486898

`ogf((-1-3x+2x^2)/(-1+2x+9x^2+2x^3))`
-/

namespace A179605.P18253866082771486898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -2] [1, -2, -9, -2] n

end

end A179605.P18253866082771486898

namespace A179605

/-- `ogf((-1-3x+2x^2)/(-1+2x+9x^2+2x^3))` -/
def P18253866082771486898.Spec : Prop :=
  ∀ n, P18253866082771486898.a n = A179605 n

end A179605

/-! ## A179605.P8715074748440642091

`Δ[∑[A179604(n)]-A033887(n)]`
-/

namespace A179605.P8715074748440642091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179605.P8715074748440642091

namespace A179605

/-- `Δ[∑[A179604(n)]-A033887(n)]` -/
def P8715074748440642091.Spec : Prop :=
  ∀ n, P8715074748440642091.a n = A179605 n

end A179605

/-! ## A179605.P13878971354557314849

`A179604(n+1)-Δ[A033887(n)]`
-/

namespace A179605.P13878971354557314849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179604 (n + 1) - (f1 (n + 1) - f1 n)

end

end A179605.P13878971354557314849

namespace A179605

/-- `A179604(n+1)-Δ[A033887(n)]` -/
def P13878971354557314849.Spec : Prop :=
  ∀ n, P13878971354557314849.a n = A179605 n

end A179605

/-! ## A179605.P3559339197900995554

`A179604(n+1)-2*A015448(n+1)`
-/

namespace A179605.P3559339197900995554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179604 (n + 1) - 2 * A015448 (n + 1)

end

end A179605.P3559339197900995554

namespace A179605

/-- `A179604(n+1)-2*A015448(n+1)` -/
def P3559339197900995554.Spec : Prop :=
  ∀ n, P3559339197900995554.a n = A179605 n

end A179605

/-! ## A179605.P18068505899360431697

`A179604(n+1)-(A001077(n+1)+A001076(n))`
-/

namespace A179605.P18068505899360431697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179604 (n + 1) - (A001077 (n + 1) + A001076 n)

end

end A179605.P18068505899360431697

namespace A179605

/-- `A179604(n+1)-(A001077(n+1)+A001076(n))` -/
def P18068505899360431697.Spec : Prop :=
  ∀ n, P18068505899360431697.a n = A179605 n

end A179605

/-! ## A179605.P8585437169615850429

`A179604(n+1)+A033887(n)-A033887(n+1)`
-/

namespace A179605.P8585437169615850429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179604 (n + 1) + (A033887 n - A033887 (n + 1))

end

end A179605.P8585437169615850429

namespace A179605

/-- `A179604(n+1)+A033887(n)-A033887(n+1)` -/
def P8585437169615850429.Spec : Prop :=
  ∀ n, P8585437169615850429.a n = A179605 n

end A179605

/-!
# A179606: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + x)/(1 - 3*x - 5*x^2).

The programs for A179606, the canonical program `A179606.P16010226033217278107` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179606 has offset 0).

The definition of A179606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179606.P16010226033217278107

`3*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179606

/-- `3*a(n-1)+5*a(n-2)` -/
def P16010226033217278107.Spec : Prop :=
  ∀ n, (P16010226033217278107.a n : ℤ) = A179606 n

theorem P16010226033217278107.correct : P16010226033217278107.Spec := by
  intro n
  simp only [A179606]

end A179606

/-! ## A179606.P3583341365445558096

`A015523(n)+A015523(n+1)`
-/

namespace A179606.P3583341365445558096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015523 n + A015523 (n + 1)

end

end A179606.P3583341365445558096

namespace A179606

/-- `A015523(n)+A015523(n+1)` -/
def P3583341365445558096.Spec : Prop :=
  ∀ n, P3583341365445558096.a n = A179606 n

end A179606

/-! ## A179606.P12918371344650971718

`ogf((1+x)/(1-3x-5x^2))`
-/

namespace A179606.P12918371344650971718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, -5] n

end

end A179606.P12918371344650971718

namespace A179606

/-- `ogf((1+x)/(1-3x-5x^2))` -/
def P12918371344650971718.Spec : Prop :=
  ∀ n, P12918371344650971718.a n = A179606 n

end A179606

/-! ## A179606.P16785992028143432179

`lcm(3, a(n-1))+lcm(5, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A179606.P16785992028143432179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lcm 3 (a (n - 1)) + Nat.lcm 5 (a (n - 2))

end

end A179606.P16785992028143432179

namespace A179606

/-- `lcm(3, a(n-1))+lcm(5, a(n-2))` -/
def P16785992028143432179.Spec : Prop :=
  ∀ n, (P16785992028143432179.a n : ℤ) = A179606 n

end A179606

/-! ## A179606.P13840870312337515971

`4*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A179606.P13840870312337515971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A179606.P13840870312337515971

namespace A179606

/-- `4*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P13840870312337515971.Spec : Prop :=
  ∀ n, P13840870312337515971.a n = A179606 n

end A179606

/-! ## A179606.P4975607664144367940

`A152187(n)-A015523(n)`
-/

namespace A179606.P4975607664144367940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152187 n - A015523 n

end

end A179606.P4975607664144367940

namespace A179606

/-- `A152187(n)-A015523(n)` -/
def P4975607664144367940.Spec : Prop :=
  ∀ n, P4975607664144367940.a n = A179606 n

end A179606

/-! ## A179606.P13326639964703228071

`∑[2*A197189(n)]-A197189(n)`
-/

namespace A179606.P13326639964703228071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A197189 n

end

end A179606.P13326639964703228071

namespace A179606

/-- `∑[2*A197189(n)]-A197189(n)` -/
def P13326639964703228071.Spec : Prop :=
  ∀ n, P13326639964703228071.a n = A179606 n

end A179606

/-! ## A179606.P12659652085757777722

`A072264(n)+A152187(n)-A197189(n)`
-/

namespace A179606.P12659652085757777722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 n + (A152187 n - A197189 n)

end

end A179606.P12659652085757777722

namespace A179606

/-- `A072264(n)+A152187(n)-A197189(n)` -/
def P12659652085757777722.Spec : Prop :=
  ∀ n, P12659652085757777722.a n = A179606 n

end A179606

/-! ## A179606.P16649919358915142869

`A072264(n+1)+A072264(n)-A152187(n)`
-/

namespace A179606.P16649919358915142869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072264 (n + 1) + (A072264 n - A152187 n)

end

end A179606.P16649919358915142869

namespace A179606

/-- `A072264(n+1)+A072264(n)-A152187(n)` -/
def P16649919358915142869.Spec : Prop :=
  ∀ n, P16649919358915142869.a n = A179606 n

end A179606

/-! ## A179606.P13582784714985679456

`A152187(n+1)/5`
-/

namespace A179606.P13582784714985679456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152187 (n + 1) : ℚ) / 5

end

end A179606.P13582784714985679456

namespace A179606

/-- `A152187(n+1)/5` -/
def P13582784714985679456.Spec : Prop :=
  ∀ n, P13582784714985679456.a n = (A179606 n : ℚ)

end A179606

/-! ## A179606.P7372464486539406828

`lcm(A010686(n+1), A152185(n+1))/5`
-/

namespace A179606.P7372464486539406828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010686 (n + 1)) (A152185 (n + 1)) : ℚ) / 5

end

end A179606.P7372464486539406828

namespace A179606

/-- `lcm(A010686(n+1), A152185(n+1))/5` -/
def P7372464486539406828.Spec : Prop :=
  ∀ n, P7372464486539406828.a n = (A179606 n : ℚ)

end A179606

/-! ## A179606.P7091735035589804329

`A072263(n+1)+A072263(n)-A180140(n+1)`
-/

namespace A179606.P7091735035589804329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072263 (n + 1) + (A072263 n - A180140 (n + 1))

end

end A179606.P7091735035589804329

namespace A179606

/-- `A072263(n+1)+A072263(n)-A180140(n+1)` -/
def P7091735035589804329.Spec : Prop :=
  ∀ n, P7091735035589804329.a n = A179606 n

end A179606

/-!
# A179607: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1 + 2*x - 4*x^2)/(1 - 2*x - 8*x^2).

The programs for A179607, the canonical program `A179607.P1902756180740851221` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179607 has offset 0).

The definition of A179607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179607.P1902756180740851221

`2*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=4, a(2)=12`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179607

/-- `2*a(n-1)+8*a(n-2)` -/
def P1902756180740851221.Spec : Prop :=
  ∀ n, (P1902756180740851221.a n : ℤ) = A179607 n

theorem P1902756180740851221.correct : P1902756180740851221.Spec := by
  intro n
  simp only [A179607]

end A179607

/-! ## A179607.P4043932052717021369

`ogf((1+2x-4x^2)/(1-2x-8x^2))`
-/

namespace A179607.P4043932052717021369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4] [1, -2, -8] n

end

end A179607.P4043932052717021369

namespace A179607

/-- `ogf((1+2x-4x^2)/(1-2x-8x^2))` -/
def P4043932052717021369.Spec : Prop :=
  ∀ n, P4043932052717021369.a n = A179607 n

end A179607

/-! ## A179607.P17267134528861110729

`4*a(n-1)-(-2)^n` with `a(0)=1, a(1)=4`
-/

namespace A179607.P17267134528861110729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 * a (n - 1) - (-2) ^ n

end

end A179607.P17267134528861110729

namespace A179607

/-- `4*a(n-1)-(-2)^n` -/
def P17267134528861110729.Spec : Prop :=
  ∀ n, P17267134528861110729.a n = A179607 n

end A179607

/-! ## A179607.P17857830725383290947

`lcm(2^n, Δ[round(5*2^n/3)])`
-/

namespace A179607.P17857830725383290947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (f1 (n + 1) - f1 n)

end

end A179607.P17857830725383290947

namespace A179607

/-- `lcm(2^n, Δ[round(5*2^n/3)])` -/
def P17857830725383290947.Spec : Prop :=
  ∀ n, (P17857830725383290947.a n : ℤ) = A179607 n

end A179607

/-! ## A179607.P13219752493261536957

`ceil(2^(n-1))*Δ[round(5*2^n/3)]`
-/

namespace A179607.P13219752493261536957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * ((2 ^ n : ℚ) / 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (f1 (n + 1) - f1 n)

end

end A179607.P13219752493261536957

namespace A179607

/-- `ceil(2^(n-1))*Δ[round(5*2^n/3)]` -/
def P13219752493261536957.Spec : Prop :=
  ∀ n, P13219752493261536957.a n = A179607 n

end A179607

/-! ## A179607.P9197663952533237033

`A155543(n)-A054881(n)`
-/

namespace A179607.P9197663952533237033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A054881 n

end

end A179607.P9197663952533237033

namespace A179607

/-- `A155543(n)-A054881(n)` -/
def P9197663952533237033.Spec : Prop :=
  ∀ n, P9197663952533237033.a n = A179607 n

end A179607

/-! ## A179607.P2430426643998776910

`A054881(n+1)+A054881(n)`
-/

namespace A179607.P2430426643998776910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054881 (n + 1) + A054881 n

end

end A179607.P2430426643998776910

namespace A179607

/-- `A054881(n+1)+A054881(n)` -/
def P2430426643998776910.Spec : Prop :=
  ∀ n, P2430426643998776910.a n = A179607 n

end A179607

/-! ## A179607.P8889412941909537412

`A192382(n+1)+A081294(n)`
-/

namespace A179607.P8889412941909537412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A081294 n

end

end A179607.P8889412941909537412

namespace A179607

/-- `A192382(n+1)+A081294(n)` -/
def P8889412941909537412.Spec : Prop :=
  ∀ n, P8889412941909537412.a n = A179607 n

end A179607

/-! ## A179607.P17906071158316719876

`2*A081294(n)-A054881(n)`
-/

namespace A179607.P17906071158316719876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081294 n - A054881 n

end

end A179607.P17906071158316719876

namespace A179607

/-- `2*A081294(n)-A054881(n)` -/
def P17906071158316719876.Spec : Prop :=
  ∀ n, P17906071158316719876.a n = A179607 n

end A179607

/-! ## A179607.P925205883791300620

`A192382(n+1)+A011782(2*n)`
-/

namespace A179607.P925205883791300620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A011782 (2 * n)

end

end A179607.P925205883791300620

namespace A179607

/-- `A192382(n+1)+A011782(2*n)` -/
def P925205883791300620.Spec : Prop :=
  ∀ n, P925205883791300620.a n = A179607 n

end A179607

/-! ## A179607.P973832040277544808

`A081294(n)+A000079(n)*A001045(n)`
-/

namespace A179607.P973832040277544808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n + A000079 n * A001045 n

end

end A179607.P973832040277544808

namespace A179607

/-- `A081294(n)+A000079(n)*A001045(n)` -/
def P973832040277544808.Spec : Prop :=
  ∀ n, P973832040277544808.a n = A179607 n

end A179607

/-! ## A179607.P9545085178354389296

`A003674(n)+A001045(n+1)*A011782(n)`
-/

namespace A179607.P9545085178354389296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003674 n + A001045 (n + 1) * A011782 n

end

end A179607.P9545085178354389296

namespace A179607

/-- `A003674(n)+A001045(n+1)*A011782(n)` -/
def P9545085178354389296.Spec : Prop :=
  ∀ n, P9545085178354389296.a n = A179607 n

end A179607

/-! ## A179607.P18369559743508142607

`A011782(n+1)²+A011782(2*n)-A003683(n+1)`
-/

namespace A179607.P18369559743508142607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) ^ 2 + (A011782 (2 * n) - A003683 (n + 1))

end

end A179607.P18369559743508142607

namespace A179607

/-- `A011782(n+1)²+A011782(2*n)-A003683(n+1)` -/
def P18369559743508142607.Spec : Prop :=
  ∀ n, P18369559743508142607.a n = A179607 n

end A179607

/-! ## A179607.P5218084971725601505

`A011782(2*n+1)+A011782(2*n)-A003683(n+1)`
-/

namespace A179607.P5218084971725601505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) + (A011782 (2 * n) - A003683 (n + 1))

end

end A179607.P5218084971725601505

namespace A179607

/-- `A011782(2*n+1)+A011782(2*n)-A003683(n+1)` -/
def P5218084971725601505.Spec : Prop :=
  ∀ n, P5218084971725601505.a n = A179607 n

end A179607

/-! ## A179607.P16979917105520393860

`round(A246030(n)/2)`
-/

namespace A179607.P16979917105520393860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A246030 n : ℚ) / 2)

end

end A179607.P16979917105520393860

namespace A179607

/-- `round(A246030(n)/2)` -/
def P16979917105520393860.Spec : Prop :=
  ∀ n, P16979917105520393860.a n = A179607 n

end A179607

/-! ## A179607.P14223096509703066608

`A246030(n)/A036453(n+1)`
-/

namespace A179607.P14223096509703066608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246030 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A179607.P14223096509703066608

namespace A179607

/-- `A246030(n)/A036453(n+1)` -/
def P14223096509703066608.Spec : Prop :=
  ∀ n, P14223096509703066608.a n = (A179607 n : ℚ)

end A179607

/-! ## A179607.P9791853009384035488

`A083424(n+1)-2*A003947(n)`
-/

namespace A179607.P9791853009384035488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083424 (n + 1) - 2 * A003947 n

end

end A179607.P9791853009384035488

namespace A179607

/-- `A083424(n+1)-2*A003947(n)` -/
def P9791853009384035488.Spec : Prop :=
  ∀ n, P9791853009384035488.a n = A179607 n

end A179607

/-! ## A179607.P14998131963112905608

`A246030(n)/A020639(A102376(n))`
-/

namespace A179607.P14998131963112905608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246030 n : ℚ) / (A020639 (A102376 n).toNat : ℚ)

end

end A179607.P14998131963112905608

namespace A179607

/-- `A246030(n)/A020639(A102376(n))` -/
def P14998131963112905608.Spec : Prop :=
  ∀ n, P14998131963112905608.a n = (A179607 n : ℚ)

end A179607

/-! ## A179607.P2267637520809260630

`A246030(n)/A020639(A160239(n))`
-/

namespace A179607.P2267637520809260630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246030 n : ℚ) / (A020639 (A160239 n).toNat : ℚ)

end

end A179607.P2267637520809260630

namespace A179607

/-- `A246030(n)/A020639(A160239(n))` -/
def P2267637520809260630.Spec : Prop :=
  ∀ n, P2267637520809260630.a n = (A179607 n : ℚ)

end A179607

/-!
# A179608: a(n) = (7 + (-1)^n + 6*n)*2^(n-3).

The programs for A179608, the canonical program `A179608.P10134933418439728294` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179608 has offset 0).

The definition of A179608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7+(-1)^n+6*n)*2^(n-3)` (program `A179608.P7800912292720120121`, by `A179608.P7800912292720120121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179608.P7800912292720120121

`(7+(-1)^n+6*n)*2^(n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179608.P7800912292720120121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 + (-1) ^ n + (6 * n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A179608.P7800912292720120121

namespace A179608

/-- `(7+(-1)^n+6*n)*2^(n-3)` -/
def P7800912292720120121.Spec : Prop :=
  ∀ n, P7800912292720120121.a n = (A179608 n : ℚ)

theorem P7800912292720120121.correct : P7800912292720120121.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A179608, Nat.add_sub_cancel, A179608.P7800912292720120121.a, A179608.P10134933418439728294.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A179608, Nat.add_sub_cancel, A179608.P7800912292720120121.a, A179608.P10134933418439728294.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A179608

/-! ## A179608.P10134933418439728294

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179608

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P10134933418439728294.Spec : Prop :=
  ∀ n, P10134933418439728294.a n = A179608 n

theorem P10134933418439728294.correct : P10134933418439728294.Spec := by
  intro n
  simp only [A179608]

end A179608

/-! ## A179608.P8200823380028402221

`A213173(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A179608.P8200823380028402221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213173 n + 2 * a (n - 1)

end

end A179608.P8200823380028402221

namespace A179608

/-- `A213173(n)+2*a(n-1)` -/
def P8200823380028402221.Spec : Prop :=
  ∀ n, P8200823380028402221.a n = A179608 n

end A179608

/-! ## A179608.P3426788821214147595

`A320770(n)²+2*a(n-1)` with `a(0)=1`
-/

namespace A179608.P3426788821214147595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320770 n ^ 2 + 2 * a (n - 1)

end

end A179608.P3426788821214147595

namespace A179608

/-- `A320770(n)²+2*a(n-1)` -/
def P3426788821214147595.Spec : Prop :=
  ∀ n, P3426788821214147595.a n = A179608 n

end A179608

/-! ## A179608.P3935229712116120509

`floor(A263997(3*(n+1))*2^(n-1))`
-/

namespace A179608.P3935229712116120509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263997 (3 * (n + 1)) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A179608.P3935229712116120509

namespace A179608

/-- `floor(A263997(3*(n+1))*2^(n-1))` -/
def P3935229712116120509.Spec : Prop :=
  ∀ n, P3935229712116120509.a n = A179608 n

end A179608

/-! ## A179608.P15071529607136803739

`A131572(n)²+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A179608.P15071529607136803739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131572 n ^ 2 + (a (n - 1) + a (n - 1))

end

end A179608.P15071529607136803739

namespace A179608

/-- `A131572(n)²+a(n-1)+a(n-1)` -/
def P15071529607136803739.Spec : Prop :=
  ∀ n, P15071529607136803739.a n = A179608 n

end A179608

/-! ## A179608.P13187690599557812867

`A274497(n)+A001792(n)`
-/

namespace A179608.P13187690599557812867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 n + A001792 n

end

end A179608.P13187690599557812867

namespace A179608

/-- `A274497(n)+A001792(n)` -/
def P13187690599557812867.Spec : Prop :=
  ∀ n, P13187690599557812867.a n = A179608 n

end A179608

/-! ## A179608.P9516262595485086537

`ogf((1+x)/(1-2x-4x^2+8x^3))`
-/

namespace A179608.P9516262595485086537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -4, 8] n

end

end A179608.P9516262595485086537

namespace A179608

/-- `ogf((1+x)/(1-2x-4x^2+8x^3))` -/
def P9516262595485086537.Spec : Prop :=
  ∀ n, P9516262595485086537.a n = A179608 n

end A179608

/-! ## A179608.P14336356245926936223

`∑[gcd(2, n)]*A000079(n)/2`
-/

namespace A179608.P14336356245926936223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000079 n : ℚ) / 2

end

end A179608.P14336356245926936223

namespace A179608

/-- `∑[gcd(2, n)]*A000079(n)/2` -/
def P14336356245926936223.Spec : Prop :=
  ∀ n, P14336356245926936223.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P15547686162981606441

`A007494(n+1)*A011782(n+1)/2`
-/

namespace A179608.P15547686162981606441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) * A011782 (n + 1) : ℚ) / 2

end

end A179608.P15547686162981606441

namespace A179608

/-- `A007494(n+1)*A011782(n+1)/2` -/
def P15547686162981606441.Spec : Prop :=
  ∀ n, P15547686162981606441.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P11896091541607848134

`A007494(n+1)*A016116(2*n)/2`
-/

namespace A179608.P11896091541607848134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) * A016116 (2 * n) : ℚ) / 2

end

end A179608.P11896091541607848134

namespace A179608

/-- `A007494(n+1)*A016116(2*n)/2` -/
def P11896091541607848134.Spec : Prop :=
  ∀ n, P11896091541607848134.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P10086640487985042334

`A007494(n+1)*A017911(2*n)/2`
-/

namespace A179608.P10086640487985042334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) * A017911 (2 * n) : ℚ) / 2

end

end A179608.P10086640487985042334

namespace A179608

/-- `A007494(n+1)*A017911(2*n)/2` -/
def P10086640487985042334.Spec : Prop :=
  ∀ n, P10086640487985042334.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P10012702447621151250

`A007494(n+1)*A131572(2*n+1)/2`
-/

namespace A179608.P10012702447621151250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007494 (n + 1) * A131572 (2 * n + 1) : ℚ) / 2

end

end A179608.P10012702447621151250

namespace A179608

/-- `A007494(n+1)*A131572(2*n+1)/2` -/
def P10012702447621151250.Spec : Prop :=
  ∀ n, P10012702447621151250.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P10107683935851720875

`(A002265(2*n)+n+2)*A000079(n)/2`
-/

namespace A179608.P10107683935851720875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A002265 (2 * n) + (n + 2 : ℤ)) * A000079 n : ℚ) / 2

end

end A179608.P10107683935851720875

namespace A179608

/-- `(A002265(2*n)+n+2)*A000079(n)/2` -/
def P10107683935851720875.Spec : Prop :=
  ∀ n, P10107683935851720875.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P1935507212456936833

`A001787(n+1)-A004526(n+1)*A011782(n)`
-/

namespace A179608.P1935507212456936833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A004526 (n + 1) * A011782 n

end

end A179608.P1935507212456936833

namespace A179608

/-- `A001787(n+1)-A004526(n+1)*A011782(n)` -/
def P1935507212456936833.Spec : Prop :=
  ∀ n, P1935507212456936833.a n = A179608 n

end A179608

/-! ## A179608.P13842272977510358292

`A001787(n+1)-A004526(n+1)*A131577(n)`
-/

namespace A179608.P13842272977510358292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A004526 (n + 1) * A131577 n

end

end A179608.P13842272977510358292

namespace A179608

/-- `A001787(n+1)-A004526(n+1)*A131577(n)` -/
def P13842272977510358292.Spec : Prop :=
  ∀ n, P13842272977510358292.a n = A179608 n

end A179608

/-! ## A179608.P7813909456287219631

`sqrt(A000302(n))*∑[2-n%2]/2`
-/

namespace A179608.P7813909456287219631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000302 n : ℝ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) / 2

end

end A179608.P7813909456287219631

namespace A179608

/-- `sqrt(A000302(n))*∑[2-n%2]/2` -/
def P7813909456287219631.Spec : Prop :=
  ∀ n, P7813909456287219631.a n = (A179608 n : ℝ)

end A179608

/-! ## A179608.P4146554569516690518

`A000079(n)²*A007494(n+1)/A000079(n+1)`
-/

namespace A179608.P4146554569516690518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 * A007494 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A179608.P4146554569516690518

namespace A179608

/-- `A000079(n)²*A007494(n+1)/A000079(n+1)` -/
def P4146554569516690518.Spec : Prop :=
  ∀ n, P4146554569516690518.a n = (A179608 n : ℚ)

end A179608

/-! ## A179608.P16597106568181579972

`A000079(2*n)*A007494(n+1)/A000079(n+1)`
-/

namespace A179608.P16597106568181579972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) * A007494 (n + 1) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A179608.P16597106568181579972

namespace A179608

/-- `A000079(2*n)*A007494(n+1)/A000079(n+1)` -/
def P16597106568181579972.Spec : Prop :=
  ∀ n, P16597106568181579972.a n = (A179608 n : ℚ)

end A179608

/-!
# A179609: a(n)=(5-(-1)^n-6*n)*2^(n-2).

The programs for A179609, the canonical program `A179609.P2616221775107106304` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179609 has offset 0).

The definition of A179609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5-(-1)^n-6*n)*2^(n-2)` (program `A179609.P17992279360837047273`, by `A179609.P17992279360837047273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179609.P17992279360837047273

`(5-(-1)^n-6*n)*2^(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179609.P17992279360837047273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (-1) ^ n - (6 * n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A179609.P17992279360837047273

namespace A179609

/-- `(5-(-1)^n-6*n)*2^(n-2)` -/
def P17992279360837047273.Spec : Prop :=
  ∀ n, P17992279360837047273.a n = (A179609 n : ℚ)

theorem P17992279360837047273.correct : P17992279360837047273.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A179609, Nat.add_sub_cancel, A179609.P17992279360837047273.a, A179609.P2616221775107106304.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A179609, Nat.add_sub_cancel, A179609.P17992279360837047273.a, A179609.P2616221775107106304.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A179609

/-! ## A179609.P2616221775107106304

`2*a(n-1)+4*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=0, a(2)=-8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179609

/-- `2*a(n-1)+4*a(n-2)-8*a(n-3)` -/
def P2616221775107106304.Spec : Prop :=
  ∀ n, P2616221775107106304.a n = A179609 n

theorem P2616221775107106304.correct : P2616221775107106304.Spec := by
  intro n
  simp only [A179609]

end A179609

/-! ## A179609.P2466594565851967778

`2*a(n-1)-2^or(1, n)` with `a(0)=1`
-/

namespace A179609.P2466594565851967778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (2 ^ Nat.lor 1 n : ℤ)

end

end A179609.P2466594565851967778

namespace A179609

/-- `2*a(n-1)-2^or(1, n)` -/
def P2466594565851967778.Spec : Prop :=
  ∀ n, P2466594565851967778.a n = A179609 n

end A179609

/-! ## A179609.P16501933394995168083

`a(n-2)+3*(a(n-2)-2^n)` with `a(0)=1, a(1)=0`
-/

namespace A179609.P16501933394995168083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + 3 * (a (n - 2) - (2 ^ n : ℤ))

end

end A179609.P16501933394995168083

namespace A179609

/-- `a(n-2)+3*(a(n-2)-2^n)` -/
def P16501933394995168083.Spec : Prop :=
  ∀ n, P16501933394995168083.a n = A179609 n

end A179609

/-! ## A179609.P15540664205322475651

`a(n-2)-3*(2^n-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A179609.P15540664205322475651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - 3 * ((2 ^ n : ℤ) - a (n - 2))

end

end A179609.P15540664205322475651

namespace A179609

/-- `a(n-2)-3*(2^n-a(n-2))` -/
def P15540664205322475651.Spec : Prop :=
  ∀ n, P15540664205322475651.a n = A179609 n

end A179609

/-! ## A179609.P17058642679575563377

`A159964(n)-A000079(n)*A004526(n)`
-/

namespace A179609.P17058642679575563377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 n - A000079 n * A004526 n

end

end A179609.P17058642679575563377

namespace A179609

/-- `A159964(n)-A000079(n)*A004526(n)` -/
def P17058642679575563377.Spec : Prop :=
  ∀ n, P17058642679575563377.a n = A179609 n

end A179609

/-! ## A179609.P1226860843960583660

`A159964(n)-A004526(n)*A131577(n+1)`
-/

namespace A179609.P1226860843960583660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159964 n - A004526 n * A131577 (n + 1)

end

end A179609.P1226860843960583660

namespace A179609

/-- `A159964(n)-A004526(n)*A131577(n+1)` -/
def P1226860843960583660.Spec : Prop :=
  ∀ n, P1226860843960583660.a n = A179609 n

end A179609

/-! ## A179609.P11283348137067326001

`A000079(n+1)-A000079(n)*A001651(n+1)`
-/

namespace A179609.P11283348137067326001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A000079 n * A001651 (n + 1)

end

end A179609.P11283348137067326001

namespace A179609

/-- `A000079(n+1)-A000079(n)*A001651(n+1)` -/
def P11283348137067326001.Spec : Prop :=
  ∀ n, P11283348137067326001.a n = A179609 n

end A179609

/-!
# A179610: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: 1/(1-3*x-5*x^2+4*x^3).

The programs for A179610, the canonical program `A179610.P12923924821700583405` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179610 has offset 0).

The definition of A179610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179610.P12923924821700583405

`3*a(n-1)+5*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=14`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179610

/-- `3*a(n-1)+5*a(n-2)-4*a(n-3)` -/
def P12923924821700583405.Spec : Prop :=
  ∀ n, P12923924821700583405.a n = A179610 n

theorem P12923924821700583405.correct : P12923924821700583405.Spec := by
  intro n
  simp only [A179610]

end A179610

/-! ## A179610.P11681527875526696988

`ogf(1/(1-3x-5x^2+4x^3))`
-/

namespace A179610.P11681527875526696988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, -5, 4] n

end

end A179610.P11681527875526696988

namespace A179610

/-- `ogf(1/(1-3x-5x^2+4x^3))` -/
def P11681527875526696988.Spec : Prop :=
  ∀ n, P11681527875526696988.a n = A179610 n

end A179610

/-! ## A179610.P13703783647122751127

`4^n+a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A179610.P13703783647122751127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (4 ^ n : ℤ) + (a (n - 2) - a (n - 1))

end

end A179610.P13703783647122751127

namespace A179610

/-- `4^n+a(n-2)-a(n-1)` -/
def P13703783647122751127.Spec : Prop :=
  ∀ n, P13703783647122751127.a n = A179610 n

end A179610

/-! ## A179610.P16251066520929572022

`a(n-2)-(a(n-1)-4^n)` with `a(0)=1, a(1)=3`
-/

namespace A179610.P16251066520929572022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) - (a (n - 1) - (4 ^ n : ℤ))

end

end A179610.P16251066520929572022

namespace A179610

/-- `a(n-2)-(a(n-1)-4^n)` -/
def P16251066520929572022.Spec : Prop :=
  ∀ n, P16251066520929572022.a n = A179610 n

end A179610

/-! ## A179610.P3486439996923078240

`∑[4*a(n-1)]+a(n-2)-a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A179610.P3486439996923078240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 2) - a (n - 1)

end

end A179610.P3486439996923078240

namespace A179610

/-- `∑[4*a(n-1)]+a(n-2)-a(n-1)` -/
def P3486439996923078240.Spec : Prop :=
  ∀ n, P3486439996923078240.a n = A179610 n

end A179610

/-! ## A179610.P3998277524108734417

`A295200(floor(3/acot(n))-n)`
-/

namespace A179610.P3998277524108734417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295200 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A179610.P3998277524108734417

namespace A179610

/-- `A295200(floor(3/acot(n))-n)` -/
def P3998277524108734417.Spec : Prop :=
  ∀ n, P3998277524108734417.a n = A179610 n

end A179610

/-! ## A179610.P6161476683794194699

`A295200(comp[2*(n+1)]+1)`
-/

namespace A179610.P6161476683794194699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295200 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A179610.P6161476683794194699

namespace A179610

/-- `A295200(comp[2*(n+1)]+1)` -/
def P6161476683794194699.Spec : Prop :=
  ∀ n, P6161476683794194699.a n = A179610 n

end A179610

/-! ## A179610.P8125211367531499214

`(A295200(2*(n+1))-A295200(2*n+1))/2`
-/

namespace A179610.P8125211367531499214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295200 (2 * (n + 1)) - A295200 (2 * n + 1) : ℚ) / 2

end

end A179610.P8125211367531499214

namespace A179610

/-- `(A295200(2*(n+1))-A295200(2*n+1))/2` -/
def P8125211367531499214.Spec : Prop :=
  ∀ n, P8125211367531499214.a n = (A179610 n : ℚ)

end A179610

/-!
# A179611: Eight white kings and one red king on a 3 X 3 chessboard. G.f.: (1+2*x)/(1 - 2*x - 8*x^2 - 4*x^3).

The programs for A179611, the canonical program `A179611.P6201026878989489568` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179611 has offset 0).

The definition of A179611 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179611.P6201026878989489568

`2*a(n-1)+8*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=4, a(2)=16`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179611

/-- `2*a(n-1)+8*a(n-2)+4*a(n-3)` -/
def P6201026878989489568.Spec : Prop :=
  ∀ n, (P6201026878989489568.a n : ℤ) = A179611 n

theorem P6201026878989489568.correct : P6201026878989489568.Spec := by
  intro n
  simp only [A179611]

end A179611

/-! ## A179611.P10059742450724584832

`ogf((1+2x)/(1-2x-8x^2-4x^3))`
-/

namespace A179611.P10059742450724584832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -2, -8, -4] n

end

end A179611.P10059742450724584832

namespace A179611

/-- `ogf((1+2x)/(1-2x-8x^2-4x^3))` -/
def P10059742450724584832.Spec : Prop :=
  ∀ n, P10059742450724584832.a n = A179611 n

end A179611

/-! ## A179611.P4440860068440464060

`A004277(A045621(n)+A008549(n))`
-/

namespace A179611.P4440860068440464060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A045621 n + A008549 n).toNat

end

end A179611.P4440860068440464060

namespace A179611

/-- `A004277(A045621(n)+A008549(n))` -/
def P4440860068440464060.Spec : Prop :=
  ∀ n, P4440860068440464060.a n = A179611 n

end A179611

/-!
# A179612: Sums of pairs of betrothed (or quasi-amicable) numbers.

The programs for A179612, there is no canonical definition to state claims against.
-/

/-! ## A179612.P6237976172503739805

`A003502(n+1)+A003503(n+1)`
-/

namespace A179612.P6237976172503739805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003502 (n + 1) + A003503 (n + 1)

end

end A179612.P6237976172503739805

/-! ## A179612.P12699059510217282234

`A328370(Δ[n²])+A003503(n+1)`
-/

namespace A179612.P12699059510217282234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A003503 (n + 1)

end

end A179612.P12699059510217282234

/-! ## A179612.P8442166007081565370

`A328370(2*(n+1))+A003502(n+1)`
-/

namespace A179612.P8442166007081565370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328370 (2 * (n + 1)) + A003502 (n + 1)

end

end A179612.P8442166007081565370

/-! ## A179612.P16857239470823034289

`A003503(n+1)+A328370(2*n+1)`
-/

namespace A179612.P16857239470823034289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003503 (n + 1) + A328370 (2 * n + 1)

end

end A179612.P16857239470823034289

/-! ## A179612.P3842206296033062564

`A328370(2*(n+1))+A328370(Δ[n²])`
-/

namespace A179612.P3842206296033062564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328370 (2 * (n + 1)) + A328370 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A179612.P3842206296033062564

/-!
# A179614: Composite numbers not divisible by any triangular number other than 1.

The programs for A179614, there is no canonical definition to state claims against.
-/

/-! ## A179614.P3667746469413231048

`record[A191558(A112886(n+3))]`
-/

namespace A179614.P3667746469413231048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A112886 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179614.P3667746469413231048

/-! ## A179614.P4152038501064772017

`lt[A294334(n), atan(A003415(n))]`
-/

namespace A179614.P4152038501064772017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A003415 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A179614.P4152038501064772017

/-! ## A179614.P8726497561511811255

`lt[A294334(n), atan(A210442(n))]`
-/

namespace A179614.P8726497561511811255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A210442 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A179614.P8726497561511811255

/-! ## A179614.P15188369442225110152

`filter[A112886(n+1), A066247(#)]`
-/

namespace A179614.P15188369442225110152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A179614.P15188369442225110152

/-! ## A179614.P13845023223640610891

`filter[A112886(n+2), A005171(#)]`
-/

namespace A179614.P13845023223640610891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A179614.P13845023223640610891

/-! ## A179614.P828985209573765673

`eq[A325334(n), A339579(n+1)]`
-/

namespace A179614.P828985209573765673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A179614.P828985209573765673

/-! ## A179614.P2342824601764399228

`eq[exp(A339579(n+1)), A294334(n)]`
-/

namespace A179614.P2342824601764399228
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A339579 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A179614.P2342824601764399228

/-! ## A179614.P1747289639463988797

`∩[A002808(n+1), A112886(n+1)]`
-/

namespace A179614.P1747289639463988797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179614.P1747289639463988797

/-! ## A179614.P5898953821694942586

`∩[A112886(n+1), A379947(n+1)]`
-/

namespace A179614.P5898953821694942586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179614.P5898953821694942586

/-! ## A179614.P9893964930203165750

`∩[A018252(n+1), A112886(n+2)]`
-/

namespace A179614.P9893964930203165750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112886 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179614.P9893964930203165750

/-!
# A179618: T(n,k) = Half the number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock diagonal sum differing from its antidiagonal sum by more than 2.

The programs for A179618, there is no canonical definition to state claims against.
-/

/-! ## A179618.P13239970315618744276

`A245013(lt[7, A131818(n+5)])`
-/

namespace A179618.P13239970315618744276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A179618.P13239970315618744276

/-! ## A179618.P14830780510783136092

`A245013(lt[A245013(n), A226444(n)])`
-/

namespace A179618.P14830780510783136092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179618.P14830780510783136092

/-! ## A179618.P4591514857033200189

`A245013(lt[A109611(n+1), A081577(n)])`
-/

namespace A179618.P4591514857033200189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179618.P4591514857033200189

/-! ## A179618.P17174950353000807842

`A245013(lt[A245013(n), A219924(n)])`
-/

namespace A179618.P17174950353000807842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179618.P17174950353000807842

/-! ## A179618.P16535387632062493938

`A245013(lt[A245013(n), A322494(n)])`
-/

namespace A179618.P16535387632062493938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179618.P16535387632062493938

/-! ## A179618.P15008261209278602732

`A245013(lt[A244066(n+1), A186861(n+1)])`
-/

namespace A179618.P15008261209278602732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179618.P15008261209278602732

/-!
# A179619: a(1)=1, a(n+1) = 10*a(n)+2*n-1.

The programs for A179619, the canonical program `A179619.P18329946080751786753` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179619 has offset 1).

The definition of A179619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A179619.P18329946080751786753

`10*a(n-1)+2*(n+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A179619

/-- `10*a(n-1)+2*(n+1)-1` -/
def P18329946080751786753.Spec : Prop :=
  ∀ n, P18329946080751786753.a n = A179619 (n + 1)

theorem P18329946080751786753.correct : P18329946080751786753.Spec := by
  intro n
  simp only [A179619, Nat.add_sub_cancel]

end A179619

/-! ## A179619.P742411732162864959

`∑[ogf((1+x)/(1-11x+10x^2))]`
-/

namespace A179619.P742411732162864959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -11, 10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179619.P742411732162864959

namespace A179619

/-- `∑[ogf((1+x)/(1-11x+10x^2))]` -/
def P742411732162864959.Spec : Prop :=
  ∀ n, P742411732162864959.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P8627783545689164030

`∑[floor(11/9*10^n)]`
-/

namespace A179619.P8627783545689164030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(11 : ℚ) / 9 * (10 ^ n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179619.P8627783545689164030

namespace A179619

/-- `∑[floor(11/9*10^n)]` -/
def P8627783545689164030.Spec : Prop :=
  ∀ n, P8627783545689164030.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P476644922977960757

`Δ[n²+10*a(n-1)]` with `a(0)=0`
-/

namespace A179619.P476644922977960757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  n ^ 2 + 10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179619.P476644922977960757

namespace A179619

/-- `Δ[n²+10*a(n-1)]` -/
def P476644922977960757.Spec : Prop :=
  ∀ n, P476644922977960757.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P9348604326083693366

`∑[10*a(n-1)+4]/2` with `a(0)=2`
-/

namespace A179619.P9348604326083693366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  10 * f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A179619.P9348604326083693366

namespace A179619

/-- `∑[10*a(n-1)+4]/2` -/
def P9348604326083693366.Spec : Prop :=
  ∀ n, P9348604326083693366.a n = (A179619 (n + 1) : ℚ)

end A179619

/-! ## A179619.P3240856299808034056

`2*(5*a(n-1)+n)+1` with `a(0)=1`
-/

namespace A179619.P3240856299808034056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (5 * a (n - 1) + n) + 1

end

end A179619.P3240856299808034056

namespace A179619

/-- `2*(5*a(n-1)+n)+1` -/
def P3240856299808034056.Spec : Prop :=
  ∀ n, (P3240856299808034056.a n : ℤ) = A179619 (n + 1)

end A179619

/-! ## A179619.P181762681018888889

`10*a(n-1)-(2*(1-n)-3)` with `a(0)=1`
-/

namespace A179619.P181762681018888889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - (2 * (1 - (n : ℤ)) - 3)

end

end A179619.P181762681018888889

namespace A179619

/-- `10*a(n-1)-(2*(1-n)-3)` -/
def P181762681018888889.Spec : Prop :=
  ∀ n, P181762681018888889.a n = A179619 (n + 1)

theorem P181762681018888889.correct : P181762681018888889.Spec := by
  intro n
  simp only [A179619, Nat.add_sub_cancel, A179619.P181762681018888889.a, A179619.P18329946080751786753.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179619

/-! ## A179619.P14699839186861534785

`Δ[A032343(n)]`
-/

namespace A179619.P14699839186861534785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179619.P14699839186861534785

namespace A179619

/-- `Δ[A032343(n)]` -/
def P14699839186861534785.Spec : Prop :=
  ∀ n, P14699839186861534785.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P1332222373699237818

`A090843(n)+a(n-1)` with `a(0)=1`
-/

namespace A179619.P1332222373699237818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090843 n + a (n - 1)

end

end A179619.P1332222373699237818

namespace A179619

/-- `A090843(n)+a(n-1)` -/
def P1332222373699237818.Spec : Prop :=
  ∀ n, P1332222373699237818.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P12718419146369211095

`A014824(n+1)+A014824(n)`
-/

namespace A179619.P12718419146369211095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 (n + 1) + A014824 n

end

end A179619.P12718419146369211095

namespace A179619

/-- `A014824(n+1)+A014824(n)` -/
def P12718419146369211095.Spec : Prop :=
  ∀ n, P12718419146369211095.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P6976868411285145158

`A032343(n+1)-A032343(n)`
-/

namespace A179619.P6976868411285145158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032343 (n + 1) - A032343 n

end

end A179619.P6976868411285145158

namespace A179619

/-- `A032343(n+1)-A032343(n)` -/
def P6976868411285145158.Spec : Prop :=
  ∀ n, P6976868411285145158.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P15999108774663760554

`A099669(n+1)-A000042(n+1)`
-/

namespace A179619.P15999108774663760554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099669 (n + 1) - A000042 (n + 1)

end

end A179619.P15999108774663760554

namespace A179619

/-- `A099669(n+1)-A000042(n+1)` -/
def P15999108774663760554.Spec : Prop :=
  ∀ n, P15999108774663760554.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P11899702342891781756

`A099669(n+1)-A002275(n+1)`
-/

namespace A179619.P11899702342891781756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099669 (n + 1) - A002275 (n + 1)

end

end A179619.P11899702342891781756

namespace A179619

/-- `A099669(n+1)-A002275(n+1)` -/
def P11899702342891781756.Spec : Prop :=
  ∀ n, P11899702342891781756.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P7436877346599504912

`∑[A002276(n+1)]-A002275(n+1)`
-/

namespace A179619.P7436877346599504912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002275 (n + 1)

end

end A179619.P7436877346599504912

namespace A179619

/-- `∑[A002276(n+1)]-A002275(n+1)` -/
def P7436877346599504912.Spec : Prop :=
  ∀ n, P7436877346599504912.a n = A179619 (n + 1)

end A179619

/-! ## A179619.P4054970686136859315

`∑[A005408(n)/A011557(n)]*A011557(n)`
-/

namespace A179619.P4054970686136859315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A011557 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A011557 n : ℚ)

end

end A179619.P4054970686136859315

namespace A179619

/-- `∑[A005408(n)/A011557(n)]*A011557(n)` -/
def P4054970686136859315.Spec : Prop :=
  ∀ n, P4054970686136859315.a n = (A179619 (n + 1) : ℚ)

end A179619

/-!
# A179620: a(n) = largest k such that A002808(n+1) = A002808(n) + (A002808(n) mod k), or 0 if no such k exists.

The programs for A179620, the canonical program `A179620.P6976213543873507641` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179620 has offset 1).

The definition of A179620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179620.P7493728350399982004

`A130882(n+1)*A179621(n+1)`
-/

namespace A179620.P7493728350399982004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130882 (n + 1) * A179621 (n + 1)

end

end A179620.P7493728350399982004

namespace A179620

/-- `A130882(n+1)*A179621(n+1)` -/
def P7493728350399982004.Spec : Prop :=
  ∀ n, P7493728350399982004.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P6976213543873507641

`A166460(n+2)+1-Δ[A072668(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A179620

/-- `A166460(n+2)+1-Δ[A072668(n+1)]` -/
def P6976213543873507641.Spec : Prop :=
  ∀ n, P6976213543873507641.a n = A179620 (n + 1)

theorem P6976213543873507641.correct : P6976213543873507641.Spec := by
  intro n
  simp only [A179620, Nat.add_sub_cancel]

end A179620

/-! ## A179620.P9197374314085184695

`A072668(n+1)-A000720(Δ[A118742(n)])`
-/

namespace A179620.P9197374314085184695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) - A000720 (f1 (n + 1) - f1 n).toNat

end

end A179620.P9197374314085184695

namespace A179620

/-- `A072668(n+1)-A000720(Δ[A118742(n)])` -/
def P9197374314085184695.Spec : Prop :=
  ∀ n, P9197374314085184695.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P11298257216818502240

`A002808(n+1)+A166460(n+2)-A118742(n+1)`
-/

namespace A179620.P11298257216818502240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A166460 (n + 2) - A118742 (n + 1))

end

end A179620.P11298257216818502240

namespace A179620

/-- `A002808(n+1)+A166460(n+2)-A118742(n+1)` -/
def P11298257216818502240.Spec : Prop :=
  ∀ n, P11298257216818502240.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P17970852004551604148

`A002808(n+1)+A166460(n+2)-A072668(n+2)`
-/

namespace A179620.P17970852004551604148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A166460 (n + 2) - A072668 (n + 2))

end

end A179620.P17970852004551604148

namespace A179620

/-- `A002808(n+1)+A166460(n+2)-A072668(n+2)` -/
def P17970852004551604148.Spec : Prop :=
  ∀ n, P17970852004551604148.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P4716594876906421087

`A018252(n+2)+A166460(n+2)-A118742(n+1)`
-/

namespace A179620.P4716594876906421087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A166460 (n + 2) - A118742 (n + 1))

end

end A179620.P4716594876906421087

namespace A179620

/-- `A018252(n+2)+A166460(n+2)-A118742(n+1)` -/
def P4716594876906421087.Spec : Prop :=
  ∀ n, P4716594876906421087.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P17936410440601110711

`A018252(n+2)+A166460(n+2)-A072668(n+2)`
-/

namespace A179620.P17936410440601110711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A166460 (n + 2) - A072668 (n + 2))

end

end A179620.P17936410440601110711

namespace A179620

/-- `A018252(n+2)+A166460(n+2)-A072668(n+2)` -/
def P17936410440601110711.Spec : Prop :=
  ∀ n, P17936410440601110711.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P8945801012929160018

`A060462(n+2)-Δ[A000720(A166460(n+2))]`
-/

namespace A179620.P8945801012929160018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A166460 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2) - (f1 (n + 1) - f1 n)

end

end A179620.P8945801012929160018

namespace A179620

/-- `A060462(n+2)-Δ[A000720(A166460(n+2))]` -/
def P8945801012929160018.Spec : Prop :=
  ∀ n, P8945801012929160018.a n = A179620 (n + 1)

end A179620

/-! ## A179620.P13577292715000947909

`A166460(n+2)-A166460(Δ[A060462(n+2)])`
-/

namespace A179620.P13577292715000947909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166460 (n + 2) - A166460 (f1 (n + 1) - f1 n).toNat

end

end A179620.P13577292715000947909

namespace A179620

/-- `A166460(n+2)-A166460(Δ[A060462(n+2)])` -/
def P13577292715000947909.Spec : Prop :=
  ∀ n, P13577292715000947909.a n = A179620 (n + 1)

end A179620

/-!
# A179621: a(n) = A179620(n)/A130882(n) unless A130882(n) = 0 in which case a(n) = 0.

The programs for A179621, there is no canonical definition to state claims against.
-/

/-! ## A179621.P6057745681130530737

`A179620(n+1)/A130882(A028310(n)+1)`
-/

namespace A179621.P6057745681130530737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179620 (n + 1) : ℚ) / (A130882 (A028310 n + 1).toNat : ℚ)

end

end A179621.P6057745681130530737

/-! ## A179621.P14851829204144014588

`ceil(A179620(n+1)/A130882(A348776(n+1)))`
-/

namespace A179621.P14851829204144014588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179620 (n + 1) : ℚ) / (A130882 (A348776 (n + 1)).toNat : ℚ)⌉

end

end A179621.P14851829204144014588

/-!
# A179625: Legal generalized repunit prime numbers.

The programs for A179625, there is no canonical definition to state claims against.
-/

/-! ## A179625.P16836861606699231421

`p?[∏{d}[A161827(n²+1), #]]`
-/

namespace A179625.P16836861606699231421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n ^ 2 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179625.P16836861606699231421

/-! ## A179625.P15742232333484978819

`A006530(5*p?[A228643(n+1)])`
-/

namespace A179625.P15742232333484978819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A179625.P15742232333484978819

/-! ## A179625.P14767832100759968020

`A006530(lcm(5, p?[A228643(n+1)]))`
-/

namespace A179625.P14767832100759968020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228643 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 5 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A179625.P14767832100759968020

/-! ## A179625.P15297294067975334310

`p?[A098748(n)-A001222(2^n)]`
-/

namespace A179625.P15297294067975334310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098748 n - A001222 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179625.P15297294067975334310

/-! ## A179625.P7594391815246755441

`A002383(n+1)+A000038(∑[abs(1-n)!]-1)`
-/

namespace A179625.P7594391815246755441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1) + A000038 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A179625.P7594391815246755441

/-!
# A179626: Distance between the n-th abundant number and the nearest prime below it.

The programs for A179626, the canonical program `A179626.P7373420755373197027` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179626 has offset 1).

The definition of A179626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179626.P8357494007654020979

`A049711(A005101(n+1))`
-/

namespace A179626.P8357494007654020979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (A005101 (n + 1)).toNat

end

end A179626.P8357494007654020979

namespace A179626

/-- `A049711(A005101(n+1))` -/
def P8357494007654020979.Spec : Prop :=
  ∀ n, P8357494007654020979.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P304059712725066661

`A175851(A316100(n+1))`
-/

namespace A179626.P304059712725066661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A316100 (n + 1)).toNat

end

end A179626.P304059712725066661

namespace A179626

/-- `A175851(A316100(n+1))` -/
def P304059712725066661.Spec : Prop :=
  ∀ n, P304059712725066661.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P1266468366007339470

`A064722(A316100(n+1)+1)`
-/

namespace A179626.P1266468366007339470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (A316100 (n + 1) + 1).toNat

end

end A179626.P1266468366007339470

namespace A179626

/-- `A064722(A316100(n+1)+1)` -/
def P1266468366007339470.Spec : Prop :=
  ∀ n, P1266468366007339470.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P8741907403036608095

`A175851(A005101(n+1)-1)`
-/

namespace A179626.P8741907403036608095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A005101 (n + 1) - 1).toNat

end

end A179626.P8741907403036608095

namespace A179626

/-- `A175851(A005101(n+1)-1)` -/
def P8741907403036608095.Spec : Prop :=
  ∀ n, P8741907403036608095.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P9535955651977153942

`A064722(A224907(n+1)/2)`
-/

namespace A179626.P9535955651977153942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat

end

end A179626.P9535955651977153942

namespace A179626

/-- `A064722(A224907(n+1)/2)` -/
def P9535955651977153942.Spec : Prop :=
  ∀ n, P9535955651977153942.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P8557192224838304524

`A175851(eq[0, A341621(n+1)])`
-/

namespace A179626.P8557192224838304524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179626.P8557192224838304524

namespace A179626

/-- `A175851(eq[0, A341621(n+1)])` -/
def P8557192224838304524.Spec : Prop :=
  ∀ n, P8557192224838304524.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P659369667516075834

`A175851(eq[1, A060862(n+1)])`
-/

namespace A179626.P659369667516075834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179626.P659369667516075834

namespace A179626

/-- `A175851(eq[1, A060862(n+1)])` -/
def P659369667516075834.Spec : Prop :=
  ∀ n, P659369667516075834.a n = A179626 (n + 1)

end A179626

/-! ## A179626.P7373420755373197027

`A175851(eq[1, A082551(n+1)])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179626

/-- `A175851(eq[1, A082551(n+1)])` -/
def P7373420755373197027.Spec : Prop :=
  ∀ n, P7373420755373197027.a n = A179626 (n + 1)

theorem P7373420755373197027.correct : P7373420755373197027.Spec := by
  intro n
  simp only [A179626, Nat.add_sub_cancel]

end A179626

/-! ## A179626.P5362568650587060656

`A005101(n+1)-A000040(A036234(A005101(n+1))-1)`
-/

namespace A179626.P5362568650587060656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1) - A000040 (A036234 (A005101 (n + 1)).toNat - 1).toNat

end

end A179626.P5362568650587060656

namespace A179626

/-- `A005101(n+1)-A000040(A036234(A005101(n+1))-1)` -/
def P5362568650587060656.Spec : Prop :=
  ∀ n, P5362568650587060656.a n = A179626 (n + 1)

end A179626

/-!
# A179627: a(n) = length of Collatz sequence starting with n-th prime.

The programs for A179627, there is no canonical definition to state claims against.
-/

/-! ## A179627.P4554071226794325033

`A006666(A000040(n+1))+1`
-/

namespace A179627.P4554071226794325033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A000040 (n + 1)).toNat + 1

end

end A179627.P4554071226794325033

/-! ## A179627.P8218752141752828330

`A064433(A008864(n+1))`
-/

namespace A179627.P8218752141752828330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A008864 (n + 1)).toNat

end

end A179627.P8218752141752828330

/-! ## A179627.P4934110530615073445

`A064433(A028815(n+1))`
-/

namespace A179627.P4934110530615073445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A028815 (n + 1)).toNat

end

end A179627.P4934110530615073445

/-! ## A179627.P2271884773652355952

`A064433(A299763(n+2))`
-/

namespace A179627.P2271884773652355952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A299763 (n + 2)).toNat

end

end A179627.P2271884773652355952

/-! ## A179627.P6513545247288835980

`A064433(A000040(n+1)+1)`
-/

namespace A179627.P6513545247288835980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A000040 (n + 1) + 1).toNat

end

end A179627.P6513545247288835980

/-! ## A179627.P7865103673428205423

`A064433(A008578(n+2)+1)`
-/

namespace A179627.P7865103673428205423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A008578 (n + 2) + 1).toNat

end

end A179627.P7865103673428205423

/-! ## A179627.P15708467929117589590

`A064433(A113935(n+1)-2)`
-/

namespace A179627.P15708467929117589590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A113935 (n + 1) - 2).toNat

end

end A179627.P15708467929117589590

/-! ## A179627.P12307403851336259455

`A006666(Δ[A007504(n)])+1`
-/

namespace A179627.P12307403851336259455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (f1 (n + 1) - f1 n).toNat + 1

end

end A179627.P12307403851336259455

/-! ## A179627.P14253237333143618507

`A064433(record[A014963(n+2)+1])`
-/

namespace A179627.P14253237333143618507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179627.P14253237333143618507

/-! ## A179627.P10397015777332835520

`A006666(A067747(2*n+1))+1`
-/

namespace A179627.P10397015777332835520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A067747 (2 * n + 1)).toNat + 1

end

end A179627.P10397015777332835520

/-! ## A179627.P14720586318152107614

`A006666(A100484(n+1)/2)+1`
-/

namespace A179627.P14720586318152107614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat + 1

end

end A179627.P14720586318152107614

/-! ## A179627.P800886462335149508

`A006666(record[A000010(n+1)]+1)+1`
-/

namespace A179627.P800886462335149508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat + 1

end

end A179627.P800886462335149508

/-! ## A179627.P13107040034974191861

`A006666(A162939(n+1))+2`
-/

namespace A179627.P13107040034974191861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A162939 (n + 1)).toNat + 2

end

end A179627.P13107040034974191861

/-! ## A179627.P6544434338610508278

`A006666(A100484(n+1))`
-/

namespace A179627.P6544434338610508278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A100484 (n + 1)).toNat

end

end A179627.P6544434338610508278

/-! ## A179627.P14698159702196958047

`A006666(A001747(n+2))`
-/

namespace A179627.P14698159702196958047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A001747 (n + 2)).toNat

end

end A179627.P14698159702196958047

/-! ## A179627.P9809290733035054797

`A006666(Δ[2*A007504(n)])`
-/

namespace A179627.P9809290733035054797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (f1 (n + 1) - f1 n).toNat

end

end A179627.P9809290733035054797

/-!
# A179628: Sum of the numbers already killed in the first jump of a Sieve of Eratosthenes table.

The programs for A179628, there is no canonical definition to state claims against.
-/

/-! ## A179628.P1842429615051466351

`A179654(n)-A100484(n+1)`
-/

namespace A179628.P1842429615051466351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179654 n - A100484 (n + 1)

end

end A179628.P1842429615051466351

/-! ## A179628.P16402334666396519674

`A179545(n+1)-A108313(n+1)`
-/

namespace A179628.P16402334666396519674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1) - A108313 (n + 1)

end

end A179628.P16402334666396519674

/-! ## A179628.P7730547898825085398

`A179654(n)-2*A000040(n+1)`
-/

namespace A179628.P7730547898825085398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179654 n - 2 * A000040 (n + 1)

end

end A179628.P7730547898825085398

/-! ## A179628.P4601070540397181097

`∑[3*A371201(n)]-A108313(n+1)`
-/

namespace A179628.P4601070540397181097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A371201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108313 (n + 1)

end

end A179628.P4601070540397181097

/-! ## A179628.P7936323500734706224

`3*A008837(n+1)-A108313(n+1)`
-/

namespace A179628.P7936323500734706224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A008837 (n + 1) - A108313 (n + 1)

end

end A179628.P7936323500734706224

/-!
# A179629: Primes p such that p + the sum of its decimal digits + the sum of the squares of its digits is prime.

The programs for A179629, there is no canonical definition to state claims against.
-/

/-! ## A179629.P1476204504860487689

`A206770(A055042(n+1))`
-/

namespace A179629.P1476204504860487689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206770 (A055042 (n + 1)).toNat

end

end A179629.P1476204504860487689

/-!
# A179630: Primes p such that p minus sum of its digits minus sum of the square of its digits is a prime.

The programs for A179630, there is no canonical definition to state claims against.
-/

/-! ## A179630.P7424095805298463597

`p?[ceil(log(A202004(n+1)))]`
-/

namespace A179630.P7424095805298463597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A202004 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179630.P7424095805298463597

/-! ## A179630.P1299779903952877084

`A045429(A039696(3^n))`
-/

namespace A179630.P1299779903952877084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (A039696 (3 ^ n)).toNat

end

end A179630.P1299779903952877084

/-! ## A179630.P7966616147088271496

`∩[A045407(n+1), A379839(n+1)]`
-/

namespace A179630.P7966616147088271496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179630.P7966616147088271496

/-! ## A179630.P17646648282347822582

`∩[A045407(n+1), A379841(n+1)]`
-/

namespace A179630.P17646648282347822582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179630.P17646648282347822582

/-! ## A179630.P15514050978263442010

`∩[A045429(n+1), A379839(n+1)]`
-/

namespace A179630.P15514050978263442010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179630.P15514050978263442010

/-!
# A179631: Primes p such that p plus or minus the (sum of its digits and sum of squares of its digits) is a prime.

The programs for A179631, there is no canonical definition to state claims against.
-/

/-! ## A179631.P11280682629622392479

`∩[A179629(n+1), A179630(n+1)]`
-/

namespace A179631.P11280682629622392479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179631.P11280682629622392479

/-!
# A179632: Primes p such that p + the integer part of square root of its digits is a prime.

The programs for A179632, there is no canonical definition to state claims against.
-/

/-! ## A179632.P1218039876254267339

`or(A117877(n), A325801(A117867(n+1)))`
-/

namespace A179632.P1218039876254267339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117877 n) (A325801 (A117867 (n + 1)).toNat)

end

end A179632.P1218039876254267339

/-!
# A179633: Primes p such that p minus sum of integer of square root of its digits is a prime.

The programs for A179633, there is no canonical definition to state claims against.
-/

/-! ## A179633.P16406091451402020601

`p?[∏{d}[A178653(n+1), #]]`
-/

namespace A179633.P16406091451402020601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178653 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A179633.P16406091451402020601

/-! ## A179633.P16248269322681761281

`A144296(A145467(n))`
-/

namespace A179633.P16248269322681761281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144296 (A145467 n).toNat

end

end A179633.P16248269322681761281

/-! ## A179633.P11153977072487329252

`∩[A020615(n+1), A178653(n+1)]`
-/

namespace A179633.P11153977072487329252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179633.P11153977072487329252

/-!
# A179634: Primes p such that p + d and p - d are primes, where d is the sum of floors of square roots of the digits of p.

The programs for A179634, there is no canonical definition to state claims against.
-/

/-! ## A179634.P6225173936771819571

`∩[A179632(n+1), A179633(n+1)]`
-/

namespace A179634.P6225173936771819571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179634.P6225173936771819571

/-!
# A179635: Median of the digits in n (rounding down).

The programs for A179635, there is no canonical definition to state claims against.
-/

/-! ## A179635.P18018176311213654577

`A059995(A178358(n+1))%10`
-/

namespace A179635.P18018176311213654577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059995 (A178358 (n + 1)).toNat) 10

end

end A179635.P18018176311213654577

/-!
# A179636: Median of the digits in n (rounding up).

The programs for A179636, there is no canonical definition to state claims against.
-/

/-! ## A179636.P9011898776567348049

`A179635(10*(n+1))`
-/

namespace A179636.P9011898776567348049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (10 * (n + 1))

end

end A179636.P9011898776567348049

/-!
# A179642: Product of exactly 5 primes, 3 of which are distinct.

The programs for A179642, the canonical program `A179642.P1733193320111504691` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179642 has offset 1).

The definition of A179642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179642.P11879725657996512793

`filter[A195086(n+1), A358751(#)]`
-/

namespace A179642.P11879725657996512793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A179642.P11879725657996512793

namespace A179642

/-- `filter[A195086(n+1), A358751(#)]` -/
def P11879725657996512793.Spec : Prop :=
  ∀ n, P11879725657996512793.a n = A179642 (n + 1)

end A179642

/-! ## A179642.P1733193320111504691

`∩[A014614(n+1), A033992(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A179642

/-- `∩[A014614(n+1), A033992(n+1)]` -/
def P1733193320111504691.Spec : Prop :=
  ∀ n, (P1733193320111504691.a n : ℤ) = A179642 (n + 1)

theorem P1733193320111504691.correct : P1733193320111504691.Spec := by
  intro n
  simp only [A179642, Nat.add_sub_cancel]

end A179642

/-! ## A179642.P16541871472293997086

`∩[A014614(n+1), A195086(n+1)]`
-/

namespace A179642.P16541871472293997086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P16541871472293997086

namespace A179642

/-- `∩[A014614(n+1), A195086(n+1)]` -/
def P16541871472293997086.Spec : Prop :=
  ∀ n, (P16541871472293997086.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P6773703909469295483

`∩[A014614(n+1), A214195(n+1)]`
-/

namespace A179642.P6773703909469295483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P6773703909469295483

namespace A179642

/-- `∩[A014614(n+1), A214195(n+1)]` -/
def P6773703909469295483.Spec : Prop :=
  ∀ n, (P6773703909469295483.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P3177336313332285752

`∩[A033992(n+1), A195086(n+1)]`
-/

namespace A179642.P3177336313332285752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P3177336313332285752

namespace A179642

/-- `∩[A033992(n+1), A195086(n+1)]` -/
def P3177336313332285752.Spec : Prop :=
  ∀ n, (P3177336313332285752.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P12134344436265052621

`∩[A014614(n+1), A319238(n+1)]`
-/

namespace A179642.P12134344436265052621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P12134344436265052621

namespace A179642

/-- `∩[A014614(n+1), A319238(n+1)]` -/
def P12134344436265052621.Spec : Prop :=
  ∀ n, (P12134344436265052621.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P8868487838722319021

`∩[A014614(n+1), A340657(n+1)]`
-/

namespace A179642.P8868487838722319021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P8868487838722319021

namespace A179642

/-- `∩[A014614(n+1), A340657(n+1)]` -/
def P8868487838722319021.Spec : Prop :=
  ∀ n, (P8868487838722319021.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P3947765761974787732

`∩[A014614(n+1), A382208(n+1)]`
-/

namespace A179642.P3947765761974787732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P3947765761974787732

namespace A179642

/-- `∩[A014614(n+1), A382208(n+1)]` -/
def P3947765761974787732.Spec : Prop :=
  ∀ n, (P3947765761974787732.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P3918066274186128938

`∩[A195086(n+1), A214195(n+1)]`
-/

namespace A179642.P3918066274186128938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P3918066274186128938

namespace A179642

/-- `∩[A195086(n+1), A214195(n+1)]` -/
def P3918066274186128938.Spec : Prop :=
  ∀ n, (P3918066274186128938.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P13435255610984649855

`∩[A195086(n+1), A358761(n+1)]`
-/

namespace A179642.P13435255610984649855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P13435255610984649855

namespace A179642

/-- `∩[A195086(n+1), A358761(n+1)]` -/
def P13435255610984649855.Spec : Prop :=
  ∀ n, (P13435255610984649855.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P9434262182472097777

`∩[A279457(n+1), A382208(n+1)]`
-/

namespace A179642.P9434262182472097777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P9434262182472097777

namespace A179642

/-- `∩[A279457(n+1), A382208(n+1)]` -/
def P9434262182472097777.Spec : Prop :=
  ∀ n, (P9434262182472097777.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P11611317209014557224

`∩[A319238(n+1), A382208(n+1)]`
-/

namespace A179642.P11611317209014557224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P11611317209014557224

namespace A179642

/-- `∩[A319238(n+1), A382208(n+1)]` -/
def P11611317209014557224.Spec : Prop :=
  ∀ n, (P11611317209014557224.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P12798620259388625675

`∩[A319238(n+1), A392537(n+1)]`
-/

namespace A179642.P12798620259388625675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P12798620259388625675

namespace A179642

/-- `∩[A319238(n+1), A392537(n+1)]` -/
def P12798620259388625675.Spec : Prop :=
  ∀ n, (P12798620259388625675.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P1097121067082509260

`∪[A179643(n+1), A189975(n+1)]`
-/

namespace A179642.P1097121067082509260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A179642.P1097121067082509260

namespace A179642

/-- `∪[A179643(n+1), A189975(n+1)]` -/
def P1097121067082509260.Spec : Prop :=
  ∀ n, (P1097121067082509260.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P12474386368080733123

`eq[11, A077565(A028310(n))]`
-/

namespace A179642.P12474386368080733123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179642.P12474386368080733123

namespace A179642

/-- `eq[11, A077565(A028310(n))]` -/
def P12474386368080733123.Spec : Prop :=
  ∀ n, (P12474386368080733123.a n : ℤ) = A179642 (n + 1)

end A179642

/-! ## A179642.P1485011523869095145

`A020725(eq[11, A077565(n+1)])`
-/

namespace A179642.P1485011523869095145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179642.P1485011523869095145

namespace A179642

/-- `A020725(eq[11, A077565(n+1)])` -/
def P1485011523869095145.Spec : Prop :=
  ∀ n, P1485011523869095145.a n = A179642 (n + 1)

end A179642

/-! ## A179642.P3612189850974250408

`eq[1, A025438(A074206(n))]`
-/

namespace A179642.P3612189850974250408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A179642.P3612189850974250408

namespace A179642

/-- `eq[1, A025438(A074206(n))]` -/
def P3612189850974250408.Spec : Prop :=
  ∀ n, (P3612189850974250408.a n : ℤ) = A179642 (n + 1)

end A179642

/-!
# A179643: Products of exactly 2 distinct squares of primes and a different prime (p^2 * q^2 * r).

The programs for A179643, the canonical program `A179643.P5918982336618133946` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179643 has offset 1).

The definition of A179643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179643.P171359877898274924

`sqrt(A190471(n+1))`
-/

namespace A179643.P171359877898274924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A190471 (n + 1) : ℝ)

end

end A179643.P171359877898274924

namespace A179643

/-- `sqrt(A190471(n+1))` -/
def P171359877898274924.Spec : Prop :=
  ∀ n, P171359877898274924.a n = (A179643 (n + 1) : ℝ)

end A179643

/-! ## A179643.P5579366057663545019

`A000027(root(A190471(n+1), 2))`
-/

namespace A179643.P5579366057663545019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A190471 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A179643.P5579366057663545019

namespace A179643

/-- `A000027(root(A190471(n+1), 2))` -/
def P5579366057663545019.Spec : Prop :=
  ∀ n, P5579366057663545019.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P5918982336618133946

`filter[A030636(n+1), A212793(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179643

/-- `filter[A030636(n+1), A212793(#)]` -/
def P5918982336618133946.Spec : Prop :=
  ∀ n, P5918982336618133946.a n = A179643 (n + 1)

theorem P5918982336618133946.correct : P5918982336618133946.Spec := by
  intro n
  simp only [A179643, Nat.add_sub_cancel]

end A179643

/-! ## A179643.P13632184883661494359

`filter[A030636(n+1), A359429(#)]`
-/

namespace A179643.P13632184883661494359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A179643.P13632184883661494359

namespace A179643

/-- `filter[A030636(n+1), A359429(#)]` -/
def P13632184883661494359.Spec : Prop :=
  ∀ n, P13632184883661494359.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P15766040068569702428

`filter[A030636(n+1), A374130(#)]`
-/

namespace A179643.P15766040068569702428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A179643.P15766040068569702428

namespace A179643

/-- `filter[A030636(n+1), A374130(#)]` -/
def P15766040068569702428.Spec : Prop :=
  ∀ n, P15766040068569702428.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P10251107264263555265

`filter[A350372(n+1), A212793(#)]`
-/

namespace A179643.P10251107264263555265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A179643.P10251107264263555265

namespace A179643

/-- `filter[A350372(n+1), A212793(#)]` -/
def P10251107264263555265.Spec : Prop :=
  ∀ n, P10251107264263555265.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P8303810189903823503

`filter[A350372(n+1), A359429(#)]`
-/

namespace A179643.P8303810189903823503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A179643.P8303810189903823503

namespace A179643

/-- `filter[A350372(n+1), A359429(#)]` -/
def P8303810189903823503.Spec : Prop :=
  ∀ n, P8303810189903823503.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P6215162142765550442

`filter[A375144(n+1), A358751(#)]`
-/

namespace A179643.P6215162142765550442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A179643.P6215162142765550442

namespace A179643

/-- `filter[A375144(n+1), A358751(#)]` -/
def P6215162142765550442.Spec : Prop :=
  ∀ n, P6215162142765550442.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P1673825935453606193

`filter[A375144(n+1), A358769(#)]`
-/

namespace A179643.P1673825935453606193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A179643.P1673825935453606193

namespace A179643

/-- `filter[A375144(n+1), A358769(#)]` -/
def P1673825935453606193.Spec : Prop :=
  ∀ n, P1673825935453606193.a n = A179643 (n + 1)

end A179643

/-! ## A179643.P17040035280733235057

`∩[A014614(n+1), A030636(n+1)]`
-/

namespace A179643.P17040035280733235057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P17040035280733235057

namespace A179643

/-- `∩[A014614(n+1), A030636(n+1)]` -/
def P17040035280733235057.Spec : Prop :=
  ∀ n, (P17040035280733235057.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P16857836086133748388

`∩[A014614(n+1), A072413(n+1)]`
-/

namespace A179643.P16857836086133748388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P16857836086133748388

namespace A179643

/-- `∩[A014614(n+1), A072413(n+1)]` -/
def P16857836086133748388.Spec : Prop :=
  ∀ n, (P16857836086133748388.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P9210479759506055235

`∩[A030636(n+1), A072413(n+1)]`
-/

namespace A179643.P9210479759506055235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P9210479759506055235

namespace A179643

/-- `∩[A030636(n+1), A072413(n+1)]` -/
def P9210479759506055235.Spec : Prop :=
  ∀ n, (P9210479759506055235.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P17992923896893497073

`∩[A030636(n+1), A195086(n+1)]`
-/

namespace A179643.P17992923896893497073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P17992923896893497073

namespace A179643

/-- `∩[A030636(n+1), A195086(n+1)]` -/
def P17992923896893497073.Spec : Prop :=
  ∀ n, (P17992923896893497073.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P3618165318559681278

`∩[A064499(n+1), A195086(n+1)]`
-/

namespace A179643.P3618165318559681278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P3618165318559681278

namespace A179643

/-- `∩[A064499(n+1), A195086(n+1)]` -/
def P3618165318559681278.Spec : Prop :=
  ∀ n, (P3618165318559681278.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P8057953788178451135

`∩[A014614(n+1), A350372(n+1)]`
-/

namespace A179643.P8057953788178451135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P8057953788178451135

namespace A179643

/-- `∩[A014614(n+1), A350372(n+1)]` -/
def P8057953788178451135.Spec : Prop :=
  ∀ n, (P8057953788178451135.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P12141805200766307172

`∩[A030636(n+1), A350372(n+1)]`
-/

namespace A179643.P12141805200766307172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P12141805200766307172

namespace A179643

/-- `∩[A030636(n+1), A350372(n+1)]` -/
def P12141805200766307172.Spec : Prop :=
  ∀ n, (P12141805200766307172.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P16760898341703062062

`∩[A014614(n+1), A375144(n+1)]`
-/

namespace A179643.P16760898341703062062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P16760898341703062062

namespace A179643

/-- `∩[A014614(n+1), A375144(n+1)]` -/
def P16760898341703062062.Spec : Prop :=
  ∀ n, (P16760898341703062062.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P11817907579596371427

`∩[A014614(n+1), A377817(n+1)]`
-/

namespace A179643.P11817907579596371427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P11817907579596371427

namespace A179643

/-- `∩[A014614(n+1), A377817(n+1)]` -/
def P11817907579596371427.Spec : Prop :=
  ∀ n, (P11817907579596371427.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P17886815293409697374

`∩[A014614(n+1), A378430(n+1)]`
-/

namespace A179643.P17886815293409697374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P17886815293409697374

namespace A179643

/-- `∩[A014614(n+1), A378430(n+1)]` -/
def P17886815293409697374.Spec : Prop :=
  ∀ n, (P17886815293409697374.a n : ℤ) = A179643 (n + 1)

end A179643

/-! ## A179643.P7116828686360754455

`∩[A014614(n+1), A386797(n+1)]`
-/

namespace A179643.P7116828686360754455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179643.P7116828686360754455

namespace A179643

/-- `∩[A014614(n+1), A386797(n+1)]` -/
def P7116828686360754455.Spec : Prop :=
  ∀ n, (P7116828686360754455.a n : ℤ) = A179643 (n + 1)

end A179643

/-!
# A179644: Product of the 4th power of a prime and 2 different distinct primes (p^4*q*r).

The programs for A179644, the canonical program `A179644.P11803984710528431685` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179644 has offset 1).

The definition of A179644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179644.P4458678567475406947

`∩[A030638(n+1), A386972(n+1)]`
-/

namespace A179644.P4458678567475406947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P4458678567475406947

namespace A179644

/-- `∩[A030638(n+1), A386972(n+1)]` -/
def P4458678567475406947.Spec : Prop :=
  ∀ n, (P4458678567475406947.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P11803984710528431685

`∩[A030638(n+1), A082294(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179644

/-- `∩[A030638(n+1), A082294(n+1)]` -/
def P11803984710528431685.Spec : Prop :=
  ∀ n, (P11803984710528431685.a n : ℤ) = A179644 (n + 1)

theorem P11803984710528431685.correct : P11803984710528431685.Spec := by
  intro n
  simp only [A179644, Nat.add_sub_cancel]

end A179644

/-! ## A179644.P17923815561772391226

`∩[A030638(n+1), A195087(n+1)]`
-/

namespace A179644.P17923815561772391226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P17923815561772391226

namespace A179644

/-- `∩[A030638(n+1), A195087(n+1)]` -/
def P17923815561772391226.Spec : Prop :=
  ∀ n, (P17923815561772391226.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P17476138298454352180

`∩[A030638(n+1), A065127(n+1)]`
-/

namespace A179644.P17476138298454352180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P17476138298454352180

namespace A179644

/-- `∩[A030638(n+1), A065127(n+1)]` -/
def P17476138298454352180.Spec : Prop :=
  ∀ n, (P17476138298454352180.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P1763337476489643617

`∩[A030638(n+1), A067801(n+1)]`
-/

namespace A179644.P1763337476489643617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P1763337476489643617

namespace A179644

/-- `∩[A030638(n+1), A067801(n+1)]` -/
def P1763337476489643617.Spec : Prop :=
  ∀ n, (P1763337476489643617.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P9935619026970768753

`∩[A030638(n+1), A386977(n+1)]`
-/

namespace A179644.P9935619026970768753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P9935619026970768753

namespace A179644

/-- `∩[A030638(n+1), A386977(n+1)]` -/
def P9935619026970768753.Spec : Prop :=
  ∀ n, (P9935619026970768753.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P12495399800319320458

`∩[A048946(n+1), A386977(n+1)]`
-/

namespace A179644.P12495399800319320458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P12495399800319320458

namespace A179644

/-- `∩[A048946(n+1), A386977(n+1)]` -/
def P12495399800319320458.Spec : Prop :=
  ∀ n, (P12495399800319320458.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P10004915868176092845

`∩[A082294(n+1), A386977(n+1)]`
-/

namespace A179644.P10004915868176092845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P10004915868176092845

namespace A179644

/-- `∩[A082294(n+1), A386977(n+1)]` -/
def P10004915868176092845.Spec : Prop :=
  ∀ n, (P10004915868176092845.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P1843848868020359484

`∩[A130897(n+1), A386977(n+1)]`
-/

namespace A179644.P1843848868020359484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P1843848868020359484

namespace A179644

/-- `∩[A130897(n+1), A386977(n+1)]` -/
def P1843848868020359484.Spec : Prop :=
  ∀ n, (P1843848868020359484.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P11246239559287158131

`∩[A320891(n+1), A386977(n+1)]`
-/

namespace A179644.P11246239559287158131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P11246239559287158131

namespace A179644

/-- `∩[A320891(n+1), A386977(n+1)]` -/
def P11246239559287158131.Spec : Prop :=
  ∀ n, (P11246239559287158131.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P7631915045141890533

`∩[A322448(n+1), A386977(n+1)]`
-/

namespace A179644.P7631915045141890533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P7631915045141890533

namespace A179644

/-- `∩[A322448(n+1), A386977(n+1)]` -/
def P7631915045141890533.Spec : Prop :=
  ∀ n, (P7631915045141890533.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P181310457172567041

`∩[A336595(n+1), A386977(n+1)]`
-/

namespace A179644.P181310457172567041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P181310457172567041

namespace A179644

/-- `∩[A336595(n+1), A386977(n+1)]` -/
def P181310457172567041.Spec : Prop :=
  ∀ n, (P181310457172567041.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P11646146816665182950

`∩[A354181(n+1), A386977(n+1)]`
-/

namespace A179644.P11646146816665182950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P11646146816665182950

namespace A179644

/-- `∩[A354181(n+1), A386977(n+1)]` -/
def P11646146816665182950.Spec : Prop :=
  ∀ n, (P11646146816665182950.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P9160247015633929747

`∩[A030638(n+1), A046306(n+1)]`
-/

namespace A179644.P9160247015633929747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P9160247015633929747

namespace A179644

/-- `∩[A030638(n+1), A046306(n+1)]` -/
def P9160247015633929747.Spec : Prop :=
  ∀ n, (P9160247015633929747.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P17591121389665584271

`∩[A360723(n+1), A386977(n+1)]`
-/

namespace A179644.P17591121389665584271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P17591121389665584271

namespace A179644

/-- `∩[A360723(n+1), A386977(n+1)]` -/
def P17591121389665584271.Spec : Prop :=
  ∀ n, (P17591121389665584271.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P4205113783320209356

`∩[A386977(n+1), A391591(n+1)]`
-/

namespace A179644.P4205113783320209356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P4205113783320209356

namespace A179644

/-- `∩[A386977(n+1), A391591(n+1)]` -/
def P4205113783320209356.Spec : Prop :=
  ∀ n, (P4205113783320209356.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P1193985391220917856

`∩[A386977(n+1), A391115(n+1)]`
-/

namespace A179644.P1193985391220917856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P1193985391220917856

namespace A179644

/-- `∩[A386977(n+1), A391115(n+1)]` -/
def P1193985391220917856.Spec : Prop :=
  ∀ n, (P1193985391220917856.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P6434742938402697516

`∩[A046101(n+1), A386977(n+1)]`
-/

namespace A179644.P6434742938402697516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179644.P6434742938402697516

namespace A179644

/-- `∩[A046101(n+1), A386977(n+1)]` -/
def P6434742938402697516.Spec : Prop :=
  ∀ n, (P6434742938402697516.a n : ℤ) = A179644 (n + 1)

end A179644

/-! ## A179644.P15258873190818639232

`filter[A030638(n+1), A355823(#)]`
-/

namespace A179644.P15258873190818639232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A179644.P15258873190818639232

namespace A179644

/-- `filter[A030638(n+1), A355823(#)]` -/
def P15258873190818639232.Spec : Prop :=
  ∀ n, P15258873190818639232.a n = A179644 (n + 1)

end A179644

/-!
# A179645: a(n) = prime(n)^8.

The programs for A179645, the canonical program `A179645.P9823570256898303870` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179645 has offset 1).

The definition of A179645 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)^8` (program `A179645.P9823570256898303870`, by `A179645.P9823570256898303870.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179645.P9823570256898303870

`A000040(n+1)^8`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179645

/-- `A000040(n+1)^8` -/
def P9823570256898303870.Spec : Prop :=
  ∀ n, P9823570256898303870.a n = A179645 (n + 1)

theorem P9823570256898303870.correct : P9823570256898303870.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel]

end A179645

/-! ## A179645.P18356462612785363277

`A001016(A000040(n+1))`
-/

namespace A179645.P18356462612785363277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A000040 (n + 1)).toNat

end

end A179645.P18356462612785363277

namespace A179645

/-- `A001016(A000040(n+1))` -/
def P18356462612785363277.Spec : Prop :=
  ∀ n, P18356462612785363277.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P5037239991464470815

`A030514(n+1)²`
-/

namespace A179645.P5037239991464470815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 2

end

end A179645.P5037239991464470815

namespace A179645

/-- `A030514(n+1)²` -/
def P5037239991464470815.Spec : Prop :=
  ∀ n, P5037239991464470815.a n = A179645 (n + 1)

theorem P5037239991464470815.correct : P5037239991464470815.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P5037239991464470815.a, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179645

/-! ## A179645.P13056483556493924023

`A001248(n+1)^4`
-/

namespace A179645.P13056483556493924023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 4

end

end A179645.P13056483556493924023

namespace A179645

/-- `A001248(n+1)^4` -/
def P13056483556493924023.Spec : Prop :=
  ∀ n, P13056483556493924023.a n = A179645 (n + 1)

theorem P13056483556493924023.correct : P13056483556493924023.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P13056483556493924023.a, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179645

/-! ## A179645.P15972589826089099260

`Δ[A007504(n)]²²²`
-/

namespace A179645.P15972589826089099260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A179645.P15972589826089099260

namespace A179645

/-- `Δ[A007504(n)]²²²` -/
def P15972589826089099260.Spec : Prop :=
  ∀ n, P15972589826089099260.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P10618502480889656126

`Δ[A008348(n)]²²²`
-/

namespace A179645.P10618502480889656126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A179645.P10618502480889656126

namespace A179645

/-- `Δ[A008348(n)]²²²` -/
def P10618502480889656126.Spec : Prop :=
  ∀ n, P10618502480889656126.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P6844896709549593712

`Δ[A022837(n)]²²²`
-/

namespace A179645.P6844896709549593712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A179645.P6844896709549593712

namespace A179645

/-- `Δ[A022837(n)]²²²` -/
def P6844896709549593712.Spec : Prop :=
  ∀ n, P6844896709549593712.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P5303583084394422779

`Δ[A064365(n)]²²²`
-/

namespace A179645.P5303583084394422779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A179645.P5303583084394422779

namespace A179645

/-- `Δ[A064365(n)]²²²` -/
def P5303583084394422779.Spec : Prop :=
  ∀ n, P5303583084394422779.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P18269367244843865318

`Δ[A309222(n)]²²²`
-/

namespace A179645.P18269367244843865318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A179645.P18269367244843865318

namespace A179645

/-- `Δ[A309222(n)]²²²` -/
def P18269367244843865318.Spec : Prop :=
  ∀ n, P18269367244843865318.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P7799208255764871164

`A172191(n+1)²/4`
-/

namespace A179645.P7799208255764871164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172191 (n + 1) ^ 2 : ℚ) / 4

end

end A179645.P7799208255764871164

namespace A179645

/-- `A172191(n+1)²/4` -/
def P7799208255764871164.Spec : Prop :=
  ∀ n, P7799208255764871164.a n = (A179645 (n + 1) : ℚ)

theorem P7799208255764871164.correct : P7799208255764871164.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P7799208255764871164.a, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A172191, A172191.P932075180131269683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179645

/-! ## A179645.P15706340242437351529

`∑[A054541(n+1)]²²²`
-/

namespace A179645.P15706340242437351529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2) ^ 2

end

end A179645.P15706340242437351529

namespace A179645

/-- `∑[A054541(n+1)]²²²` -/
def P15706340242437351529.Spec : Prop :=
  ∀ n, P15706340242437351529.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P7607495948260599641

`A000040(C(n+1, n))²²²`
-/

namespace A179645.P7607495948260599641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (Nat.choose (n + 1) n) ^ 2) ^ 2) ^ 2

end

end A179645.P7607495948260599641

namespace A179645

/-- `A000040(C(n+1, n))²²²` -/
def P7607495948260599641.Spec : Prop :=
  ∀ n, P7607495948260599641.a n = A179645 (n + 1)

theorem P7607495948260599641.correct : P7607495948260599641.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P7607495948260599641.a, A179645.P9823570256898303870.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A179645

/-! ## A179645.P8671915910681070914

`A000040(Δ[n²]-n)²²²`
-/

namespace A179645.P8671915910681070914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2) ^ 2) ^ 2

end

end A179645.P8671915910681070914

namespace A179645

/-- `A000040(Δ[n²]-n)²²²` -/
def P8671915910681070914.Spec : Prop :=
  ∀ n, P8671915910681070914.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P14227322858541525695

`(A000040(2*n-(n-1))^4)²`
-/

namespace A179645.P14227322858541525695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 4) ^ 2

end

end A179645.P14227322858541525695

namespace A179645

/-- `(A000040(2*n-(n-1))^4)²` -/
def P14227322858541525695.Spec : Prop :=
  ∀ n, P14227322858541525695.a n = A179645 (n + 1)

end A179645

/-! ## A179645.P603548282110746490

`A001248(n+1)*A030516(n+1)`
-/

namespace A179645.P603548282110746490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030516 (n + 1)

end

end A179645.P603548282110746490

namespace A179645

/-- `A001248(n+1)*A030516(n+1)` -/
def P603548282110746490.Spec : Prop :=
  ∀ n, P603548282110746490.a n = A179645 (n + 1)

theorem P603548282110746490.correct : P603548282110746490.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P603548282110746490.a, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030516, A030516.P1711246340231228216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179645

/-! ## A179645.P11847231448342200834

`A030078(n+1)*A050997(n+1)`
-/

namespace A179645.P11847231448342200834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A050997 (n + 1)

end

end A179645.P11847231448342200834

namespace A179645

/-- `A030078(n+1)*A050997(n+1)` -/
def P11847231448342200834.Spec : Prop :=
  ∀ n, P11847231448342200834.a n = A179645 (n + 1)

theorem P11847231448342200834.correct : P11847231448342200834.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P11847231448342200834.a, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179645

/-! ## A179645.P10626112572879688114

`A000040(n+1)*A092759(n+1)`
-/

namespace A179645.P10626112572879688114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A092759 (n + 1)

end

end A179645.P10626112572879688114

namespace A179645

/-- `A000040(n+1)*A092759(n+1)` -/
def P10626112572879688114.Spec : Prop :=
  ∀ n, P10626112572879688114.a n = A179645 (n + 1)

theorem P10626112572879688114.correct : P10626112572879688114.Spec := by
  intro n
  simp only [A179645, Nat.add_sub_cancel, A179645.P10626112572879688114.a, A179645.P9823570256898303870.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179645

/-! ## A179645.P7654911431297977833

`A030629(n+1)/A001248(n+1)`
-/

namespace A179645.P7654911431297977833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030629 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A179645.P7654911431297977833

namespace A179645

/-- `A030629(n+1)/A001248(n+1)` -/
def P7654911431297977833.Spec : Prop :=
  ∀ n, P7654911431297977833.a n = (A179645 (n + 1) : ℚ)

end A179645

/-! ## A179645.P14522076187987521246

`A030631(n+1)/A030514(n+1)`
-/

namespace A179645.P14522076187987521246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030631 (n + 1) : ℚ) / (A030514 (n + 1) : ℚ)

end

end A179645.P14522076187987521246

namespace A179645

/-- `A030631(n+1)/A030514(n+1)` -/
def P14522076187987521246.Spec : Prop :=
  ∀ n, P14522076187987521246.a n = (A179645 (n + 1) : ℚ)

end A179645

/-!
# A179646: Product of the 5th power of a prime and different distinct prime of the 2nd power (p^5*q^2).

The programs for A179646, there is no canonical definition to state claims against.
-/

/-! ## A179646.P4386009170873997439

`∩[A030636(n+1), A052486(n+1)]`
-/

namespace A179646.P4386009170873997439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P4386009170873997439

/-! ## A179646.P5667173349083869451

`∩[A030636(n+1), A114128(n+1)]`
-/

namespace A179646.P5667173349083869451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P5667173349083869451

/-! ## A179646.P3286239413696377840

`∩[A030636(n+1), A286708(n+1)]`
-/

namespace A179646.P3286239413696377840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P3286239413696377840

/-! ## A179646.P2697920814809548256

`∩[A030636(n+1), A325240(n+1)]`
-/

namespace A179646.P2697920814809548256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P2697920814809548256

/-! ## A179646.P2657393753878034706

`∩[A030636(n+1), A355462(n+1)]`
-/

namespace A179646.P2657393753878034706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P2657393753878034706

/-! ## A179646.P11679331943527045391

`∩[A030636(n+1), A359280(n+1)]`
-/

namespace A179646.P11679331943527045391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P11679331943527045391

/-! ## A179646.P5425429324578566778

`∩[A030636(n+1), A387256(n+1)]`
-/

namespace A179646.P5425429324578566778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P5425429324578566778

/-! ## A179646.P6523932614446716576

`∩[A390539(n+1), A030636(n+1)]`
-/

namespace A179646.P6523932614446716576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P6523932614446716576

/-! ## A179646.P4121377506011623855

`∩[A030636(n+1), A114127(n+1)]`
-/

namespace A179646.P4121377506011623855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P4121377506011623855

/-! ## A179646.P365167011948035896

`∩[A030636(n+1), A195089(n+1)]`
-/

namespace A179646.P365167011948035896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179646.P365167011948035896

/-!
# A179647: Rectangular array read by antidiagonals: T(n,k) is the number of compositions (ordered partitions) of n in which no part (summand) is equal to k.

The programs for A179647, there is no canonical definition to state claims against.
-/

/-! ## A179647.P12496484000482470371

`A000194(A091187(n+1)%A121410(n+1))`
-/

namespace A179647.P12496484000482470371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A091187 (n + 1)) (A121410 (n + 1))).toNat

end

end A179647.P12496484000482470371

/-! ## A179647.P14484182754387691215

`A000194(A091187(n+1))-A036987(A027598(n+1))`
-/

namespace A179647.P14484182754387691215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A091187 (n + 1)).toNat - A036987 (A027598 (n + 1)).toNat

end

end A179647.P14484182754387691215

/-! ## A179647.P17716417582244481920

`A003056(A160232(n+1))%record[A098906(n+1)]`
-/

namespace A179647.P17716417582244481920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A160232 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179647.P17716417582244481920

/-! ## A179647.P6150772196037482057

`A000194(A091187(n+1))%A000203(A000031(n))`
-/

namespace A179647.P6150772196037482057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000194 (A091187 (n + 1)).toNat) (A000203 (A000031 n).toNat)

end

end A179647.P6150772196037482057

/-! ## A179647.P14467495953401969293

`A003056(A160232(n+1))%A000124(A107479(n))`
-/

namespace A179647.P14467495953401969293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A160232 (n + 1)).toNat) (A000124 (A107479 n).toNat)

end

end A179647.P14467495953401969293

/-!
# A179648: Expansion of (1/(1+4x-2x^2))*c(x/(1+4x-2x^2)), c(x) the g.f. of A000108.

The programs for A179648, there is no canonical definition to state claims against.
-/

/-! ## A179648.P8132371716602564926

`A117448(A172447(n+1))`
-/

namespace A179648.P8132371716602564926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117448 (A172447 (n + 1)).toNat

end

end A179648.P8132371716602564926

/-!
# A179649: Sum of the primes < n*10^7.

The programs for A179649, there is no canonical definition to state claims against.
-/

/-! ## A179649.P2727830355749203164

`A178221(10*(n+1))`
-/

namespace A179649.P2727830355749203164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178221 (10 * (n + 1))

end

end A179649.P2727830355749203164

/-!
# A179650: a(n) = (n-th prime) mod (n-th nonprime).

The programs for A179650, the canonical program `A179650.P8572586983599914253` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179650 has offset 1).

The definition of A179650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179650.P8572586983599914253

`A000040(n+1)%A018252(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179650

/-- `A000040(n+1)%A018252(n+1)` -/
def P8572586983599914253.Spec : Prop :=
  ∀ n, P8572586983599914253.a n = A179650 (n + 1)

theorem P8572586983599914253.correct : P8572586983599914253.Spec := by
  intro n
  simp only [A179650, Nat.add_sub_cancel]

end A179650

/-! ## A179650.P6828421275487684700

`p?[n%3+n]%(comp[p?[xor(1, n)+1]-1]+1)`
-/

namespace A179650.P6828421275487684700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

end

end A179650.P6828421275487684700

namespace A179650

/-- `p?[n%3+n]%(comp[p?[xor(1, n)+1]-1]+1)` -/
def P6828421275487684700.Spec : Prop :=
  ∀ n, (P6828421275487684700.a n : ℤ) = A179650 (n + 1)

end A179650

/-! ## A179650.P2938682245896909540

`p?[xor(1, n)+1]%Δ[A051349(n)]`
-/

namespace A179650.P2938682245896909540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (f2 (n + 1) - f2 n)

end

end A179650.P2938682245896909540

namespace A179650

/-- `p?[xor(1, n)+1]%Δ[A051349(n)]` -/
def P2938682245896909540.Spec : Prop :=
  ∀ n, P2938682245896909540.a n = A179650 (n + 1)

end A179650

/-! ## A179650.P4327597813847682600

`p?[abs(xor(1, -n))]%A141468(n+2)`
-/

namespace A179650.P4327597813847682600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A141468 (n + 2))

end

end A179650.P4327597813847682600

namespace A179650

/-- `p?[abs(xor(1, -n))]%A141468(n+2)` -/
def P4327597813847682600.Spec : Prop :=
  ∀ n, P4327597813847682600.a n = A179650 (n + 1)

end A179650

/-! ## A179650.P2614922011046215804

`p?[n*gcd(2, n)+2]%∑[A054546(n+1)]`
-/

namespace A179650.P2614922011046215804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A179650.P2614922011046215804

namespace A179650

/-- `p?[n*gcd(2, n)+2]%∑[A054546(n+1)]` -/
def P2614922011046215804.Spec : Prop :=
  ∀ n, P2614922011046215804.a n = A179650 (n + 1)

end A179650

/-! ## A179650.P10473562358239091897

`(A001748(n+1)/3)%(comp[p?[round(3*n/7)]-1]+1)`
-/

namespace A179650.P10473562358239091897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A179650.P10473562358239091897

namespace A179650

/-- `(A001748(n+1)/3)%(comp[p?[round(3*n/7)]-1]+1)` -/
def P10473562358239091897.Spec : Prop :=
  ∀ n, P10473562358239091897.a n = A179650 (n + 1)

end A179650

/-! ## A179650.P11507594800018463022

`(A014688(n+1)-(n+1))%(comp[p?[round(3*n/7)]-1]+1)`
-/

namespace A179650.P11507594800018463022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1) - (n + 1 : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ)

end

end A179650.P11507594800018463022

namespace A179650

/-- `(A014688(n+1)-(n+1))%(comp[p?[round(3*n/7)]-1]+1)` -/
def P11507594800018463022.Spec : Prop :=
  ∀ n, P11507594800018463022.a n = A179650 (n + 1)

end A179650

/-! ## A179650.P12280355895775565018

`p?[A259153(n)]%Δ[A051349(n)]`
-/

namespace A179650.P12280355895775565018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (f2 (n + 1) - f2 n)

end

end A179650.P12280355895775565018

namespace A179650

/-- `p?[A259153(n)]%Δ[A051349(n)]` -/
def P12280355895775565018.Spec : Prop :=
  ∀ n, P12280355895775565018.a n = A179650 (n + 1)

end A179650

/-! ## A179650.P2327508417429295040

`Δ[A007504(n)]%A018252(n+1)`
-/

namespace A179650.P2327508417429295040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A018252 (n + 1))

end

end A179650.P2327508417429295040

namespace A179650

/-- `Δ[A007504(n)]%A018252(n+1)` -/
def P2327508417429295040.Spec : Prop :=
  ∀ n, P2327508417429295040.a n = A179650 (n + 1)

end A179650

/-!
# A179651: Difference between consecutive practical numbers.

The programs for A179651, there is no canonical definition to state claims against.
-/

/-! ## A179651.P16722851367001291786

`A005153(n+2)-A005153(n+1)`
-/

namespace A179651.P16722851367001291786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 2) - A005153 (n + 1)

end

end A179651.P16722851367001291786

/-! ## A179651.P12353852634412092080

`Δ[A005153(n+1)]`
-/

namespace A179651.P12353852634412092080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179651.P12353852634412092080

/-! ## A179651.P4691369374633562434

`abs(Δ[A005153(2*n-(n-1))])`
-/

namespace A179651.P4691369374633562434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A179651.P4691369374633562434

/-! ## A179651.P133753072725614717

`Δ[lt[0, A322860(n+1)]]`
-/

namespace A179651.P133753072725614717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179651.P133753072725614717

/-! ## A179651.P12924289442480679433

`Δ[record[A327832(n+1)]]`
-/

namespace A179651.P12924289442480679433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179651.P12924289442480679433

/-! ## A179651.P12706462554757708346

`Δ[record[n%A225561(n+1)]]`
-/

namespace A179651.P12706462554757708346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A225561 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179651.P12706462554757708346

/-! ## A179651.P15051145430067627123

`Δ[record[(n+1)%A030057(n+1)]]`
-/

namespace A179651.P15051145430067627123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A030057 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A179651.P15051145430067627123

/-! ## A179651.P10243272717648235626

`Δ[lt[A279048(n+1), 1]]`
-/

namespace A179651.P10243272717648235626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A179651.P10243272717648235626

/-!
# A179652: (A175600(n)-5)/48 or A112559(n)/3.

The programs for A179652, the canonical program `A179652.P13750183402564225664` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179652 has offset 1).

The definition of A179652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179652.P13750183402564225664

`A112559(n+1)/3`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A179652

/-- `A112559(n+1)/3` -/
def P13750183402564225664.Spec : Prop :=
  ∀ n, P13750183402564225664.a n = (A179652 (n + 1) : ℚ)

end A179652

/-! ## A179652.P5745414478672701664

`(A175600(n+1)-5)/48`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A179652.P5745414478672701664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175600 (n + 1) - 5 : ℚ) / 48

end

end A179652.P5745414478672701664

namespace A179652

/-- `(A175600(n+1)-5)/48` -/
def P5745414478672701664.Spec : Prop :=
  ∀ n, P5745414478672701664.a n = (A179652 (n + 1) : ℚ)

end A179652

/-! ## A179652.P6434925709818882512

`floor(A113601(n+1)/12)`
-/

namespace A179652.P6434925709818882512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113601 (n + 1) : ℚ) / 12⌋

end

end A179652.P6434925709818882512

namespace A179652

/-- `floor(A113601(n+1)/12)` -/
def P6434925709818882512.Spec : Prop :=
  ∀ n, P6434925709818882512.a n = A179652 (n + 1)

end A179652

/-! ## A179652.P14498974162903896838

`floor(p?[2*A294091(n+1)-1]/16)/3`
-/

namespace A179652.P14498974162903896838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294091 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 16⌋ : ℚ) / 3

end

end A179652.P14498974162903896838

namespace A179652

/-- `floor(p?[2*A294091(n+1)-1]/16)/3` -/
def P14498974162903896838.Spec : Prop :=
  ∀ n, P14498974162903896838.a n = (A179652 (n + 1) : ℚ)

end A179652

/-! ## A179652.P15521834660711939684

`floor(p?[4*A002144(n+1)+1]/16)/3`
-/

namespace A179652.P15521834660711939684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002144 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 16⌋ : ℚ) / 3

end

end A179652.P15521834660711939684

namespace A179652

/-- `floor(p?[4*A002144(n+1)+1]/16)/3` -/
def P15521834660711939684.Spec : Prop :=
  ∀ n, P15521834660711939684.a n = (A179652 (n + 1) : ℚ)

end A179652

/-! ## A179652.P4616926383758822504

`A002264(A112559(n+1))`
-/

namespace A179652.P4616926383758822504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A112559 (n + 1)).toNat

end

end A179652.P4616926383758822504

namespace A179652

/-- `A002264(A112559(n+1))` -/
def P4616926383758822504.Spec : Prop :=
  ∀ n, P4616926383758822504.a n = A179652 (n + 1)

end A179652

/-! ## A179652.P10567568170759639830

`A008647(A113601(n+1))`
-/

namespace A179652.P10567568170759639830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A113601 (n + 1)).toNat

end

end A179652.P10567568170759639830

namespace A179652

/-- `A008647(A113601(n+1))` -/
def P10567568170759639830.Spec : Prop :=
  ∀ n, P10567568170759639830.a n = A179652 (n + 1)

end A179652

/-! ## A179652.P11782732678615073551

`A008611(A112559(n+1)+1)`
-/

namespace A179652.P11782732678615073551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A112559 (n + 1) + 1).toNat

end

end A179652.P11782732678615073551

namespace A179652

/-- `A008611(A112559(n+1)+1)` -/
def P11782732678615073551.Spec : Prop :=
  ∀ n, P11782732678615073551.a n = A179652 (n + 1)

end A179652

/-! ## A179652.P8080157057057455239

`A008620(A112559(n+1)-1)`
-/

namespace A179652.P8080157057057455239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A112559 (n + 1) - 1).toNat

end

end A179652.P8080157057057455239

namespace A179652

/-- `A008620(A112559(n+1)-1)` -/
def P8080157057057455239.Spec : Prop :=
  ∀ n, P8080157057057455239.a n = A179652 (n + 1)

end A179652

/-! ## A179652.P13522318395220790979

`record[A025480(A023212(n+3))/3]`
-/

namespace A179652.P13522318395220790979
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025480 (A023212 (n + 3)).toNat : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179652.P13522318395220790979

namespace A179652

/-- `record[A025480(A023212(n+3))/3]` -/
def P13522318395220790979.Spec : Prop :=
  ∀ n, P13522318395220790979.a n = (A179652 (n + 1) : ℚ)

end A179652

/-!
# A179653: Triangular numbers (A000217) which are also primes in carryless digital root arithmetic in base 10 (A169911).

The programs for A179653, there is no canonical definition to state claims against.
-/

/-! ## A179653.P1304702549367164513

`record[A286159(A169911(n+1))]`
-/

namespace A179653.P1304702549367164513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A169911 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A179653.P1304702549367164513

/-! ## A179653.P3055459280269664841

`∩[A169911(n+1), A000217(n)]`
-/

namespace A179653.P3055459280269664841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179653.P3055459280269664841

/-! ## A179653.P3368119808675630129

`∩[A169911(n+1), A253145(n)]`
-/

namespace A179653.P3368119808675630129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179653.P3368119808675630129

/-! ## A179653.P446826617247366564

`∩[A109811(n+1), A169911(n+1)]`
-/

namespace A179653.P446826617247366564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179653.P446826617247366564

/-! ## A179653.P3941929636844168235

`∩[A169911(n+1), A179865(n+2)]`
-/

namespace A179653.P3941929636844168235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179653.P3941929636844168235

/-!
# A179654: Sum of the numbers already removed (including the target number) in the first jump of a Sieve of Eratosthenes table.

The programs for A179654, there is no canonical definition to state claims against.
-/

/-! ## A179654.P2739837705966533651

`A073839(A000040(n+1))`
-/

namespace A179654.P2739837705966533651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073839 (A000040 (n + 1)).toNat

end

end A179654.P2739837705966533651

/-! ## A179654.P6746665494882330797

`A073839(A049551(n+1))`
-/

namespace A179654.P6746665494882330797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073839 (A049551 (n + 1)).toNat

end

end A179654.P6746665494882330797

/-! ## A179654.P9908072024951413114

`A073839(A057448(n+1))`
-/

namespace A179654.P9908072024951413114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073839 (A057448 (n + 1)).toNat

end

end A179654.P9908072024951413114

/-! ## A179654.P17910142588894492207

`A073839(A077359(n+1))`
-/

namespace A179654.P17910142588894492207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073839 (A077359 (n + 1)).toNat

end

end A179654.P17910142588894492207

/-! ## A179654.P14372575825134509435

`A073839(A095320(n+1))`
-/

namespace A179654.P14372575825134509435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073839 (A095320 (n + 1)).toNat

end

end A179654.P14372575825134509435

/-!
# A179655: Digital root of n-th abundant number.

The programs for A179655, the canonical program `A179655.P1047165839059861457` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179655 has offset 1).

The definition of A179655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179655.P1047165839059861457

`dr(A005101(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A179655

/-- `dr(A005101(n+1))` -/
def P1047165839059861457.Spec : Prop :=
  ∀ n, (P1047165839059861457.a n : ℤ) = A179655 (n + 1)

theorem P1047165839059861457.correct : P1047165839059861457.Spec := by
  intro n
  simp only [A179655, Nat.add_sub_cancel]

end A179655

/-! ## A179655.P6458544972961740884

`dr(A224907(n+1)/2)`
-/

namespace A179655.P6458544972961740884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2))

end

end A179655.P6458544972961740884

namespace A179655

/-- `dr(A224907(n+1)/2)` -/
def P6458544972961740884.Spec : Prop :=
  ∀ n, (P6458544972961740884.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P12147756042433237817

`dr(eq[0, A294935(n+1)]+1)`
-/

namespace A179655.P12147756042433237817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A179655.P12147756042433237817

namespace A179655

/-- `dr(eq[0, A294935(n+1)]+1)` -/
def P12147756042433237817.Spec : Prop :=
  ∀ n, (P12147756042433237817.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P637117613009974846

`dr(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A179655.P637117613009974846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A179655.P637117613009974846

namespace A179655

/-- `dr(lt[2*(n+1), A000203(n+1)]+1)` -/
def P637117613009974846.Spec : Prop :=
  ∀ n, (P637117613009974846.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P15986773054437016445

`dr(lt[2, A000203(n+2)/(n+2)]+2)`
-/

namespace A179655.P15986773054437016445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 2 : ℤ)

end

end A179655.P15986773054437016445

namespace A179655

/-- `dr(lt[2, A000203(n+2)/(n+2)]+2)` -/
def P15986773054437016445.Spec : Prop :=
  ∀ n, (P15986773054437016445.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P3570382826597904367

`dr(lt[n+3, A000203(n+3)-(n+3)]+3)`
-/

namespace A179655.P3570382826597904367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 3) - (n + 3 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3 : ℤ)

end

end A179655.P3570382826597904367

namespace A179655

/-- `dr(lt[n+3, A000203(n+3)-(n+3)]+3)` -/
def P3570382826597904367.Spec : Prop :=
  ∀ n, (P3570382826597904367.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P18141918096948667475

`dr(lt[n, A325826(n+1)]+1)`
-/

namespace A179655.P18141918096948667475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A179655.P18141918096948667475

namespace A179655

/-- `dr(lt[n, A325826(n+1)]+1)` -/
def P18141918096948667475.Spec : Prop :=
  ∀ n, (P18141918096948667475.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P11510303982570736523

`dr(lt[n+1, A001065(n+1)]+1)`
-/

namespace A179655.P11510303982570736523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A179655.P11510303982570736523

namespace A179655

/-- `dr(lt[n+1, A001065(n+1)]+1)` -/
def P11510303982570736523.Spec : Prop :=
  ∀ n, (P11510303982570736523.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P8498789115486541640

`A180595(A224907(n+1))`
-/

namespace A179655.P8498789115486541640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180595 (A224907 (n + 1)).toNat

end

end A179655.P8498789115486541640

namespace A179655

/-- `A180595(A224907(n+1))` -/
def P8498789115486541640.Spec : Prop :=
  ∀ n, P8498789115486541640.a n = A179655 (n + 1)

end A179655

/-! ## A179655.P2345686016836985264

`dr(A091194(A217740(n+1)))`
-/

namespace A179655.P2345686016836985264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A091194 (A217740 (n + 1)).toNat)

end

end A179655.P2345686016836985264

namespace A179655

/-- `dr(A091194(A217740(n+1)))` -/
def P2345686016836985264.Spec : Prop :=
  ∀ n, (P2345686016836985264.a n : ℤ) = A179655 (n + 1)

end A179655

/-! ## A179655.P6250372936720044375

`A010888(10*A005101(n+1))`
-/

namespace A179655.P6250372936720044375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (10 * A005101 (n + 1)).toNat

end

end A179655.P6250372936720044375

namespace A179655

/-- `A010888(10*A005101(n+1))` -/
def P6250372936720044375.Spec : Prop :=
  ∀ n, P6250372936720044375.a n = A179655 (n + 1)

end A179655

/-!
# A179656: prime(n) mod (digital root(prime(n))).

The programs for A179656, the canonical program `A179656.P13150600412935491952` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179656 has offset 1).

The definition of A179656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%dr(A000040(n+1))` (program `A179656.P13150600412935491952`, by `A179656.P13150600412935491952.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179656.P13150600412935491952

`A000040(n+1)%dr(A000040(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179656

/-- `A000040(n+1)%dr(A000040(n+1))` -/
def P13150600412935491952.Spec : Prop :=
  ∀ n, P13150600412935491952.a n = A179656 (n + 1)

theorem P13150600412935491952.correct : P13150600412935491952.Spec := by
  intro n
  simp only [A179656, Nat.add_sub_cancel]

end A179656

/-! ## A179656.P3079453122685604857

`∑{d}[A000040(n+1), #%dr(#)]`
-/

namespace A179656.P3079453122685604857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d % SequenceMachineLib.digitalRoot (d : ℤ)

end

end A179656.P3079453122685604857

namespace A179656

/-- `∑{d}[A000040(n+1), #%dr(#)]` -/
def P3079453122685604857.Spec : Prop :=
  ∀ n, (P3079453122685604857.a n : ℤ) = A179656 (n + 1)

end A179656

/-! ## A179656.P793267325669223368

`Δ[A007504(n)]%A038194(n+1)`
-/

namespace A179656.P793267325669223368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A038194 (n + 1))

end

end A179656.P793267325669223368

namespace A179656

/-- `Δ[A007504(n)]%A038194(n+1)` -/
def P793267325669223368.Spec : Prop :=
  ∀ n, P793267325669223368.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P15250371175494838763

`A000040(n+1)%A038194(n+1)`
-/

namespace A179656.P15250371175494838763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A038194 (n + 1))

end

end A179656.P15250371175494838763

namespace A179656

/-- `A000040(n+1)%A038194(n+1)` -/
def P15250371175494838763.Spec : Prop :=
  ∀ n, P15250371175494838763.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P14485752993084466014

`p?[xor(1, n)]%dr(p?[xor(1, n)])`
-/

namespace A179656.P14485752993084466014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % SequenceMachineLib.digitalRoot (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179656.P14485752993084466014

namespace A179656

/-- `p?[xor(1, n)]%dr(p?[xor(1, n)])` -/
def P14485752993084466014.Spec : Prop :=
  ∀ n, (P14485752993084466014.a n : ℤ) = A179656 (n + 1)

end A179656

/-! ## A179656.P5369531964288485553

`p?[n%3+n]%dr(p?[n%3+n])`
-/

namespace A179656.P5369531964288485553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % SequenceMachineLib.digitalRoot (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A179656.P5369531964288485553

namespace A179656

/-- `p?[n%3+n]%dr(p?[n%3+n])` -/
def P5369531964288485553.Spec : Prop :=
  ∀ n, (P5369531964288485553.a n : ℤ) = A179656 (n + 1)

end A179656

/-! ## A179656.P13773551077120321760

`p?[n-(-1)^n]%dr(p?[n-(-1)^n])`
-/

namespace A179656.P13773551077120321760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (SequenceMachineLib.digitalRoot (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)) : ℤ)

end

end A179656.P13773551077120321760

namespace A179656

/-- `p?[n-(-1)^n]%dr(p?[n-(-1)^n])` -/
def P13773551077120321760.Spec : Prop :=
  ∀ n, P13773551077120321760.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P1657948095670626580

`p?[xor(1, n)+1]%(p?[xor(1, n)+1]%9)`
-/

namespace A179656.P1657948095670626580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % 9)

end

end A179656.P1657948095670626580

namespace A179656

/-- `p?[xor(1, n)+1]%(p?[xor(1, n)+1]%9)` -/
def P1657948095670626580.Spec : Prop :=
  ∀ n, (P1657948095670626580.a n : ℤ) = A179656 (n + 1)

end A179656

/-! ## A179656.P4898811128631873515

`p?[xor(1, n)+1]%(sqrt(A001248(n+1))%9)`
-/

namespace A179656.P4898811128631873515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) 9)

end

end A179656.P4898811128631873515

namespace A179656

/-- `p?[xor(1, n)+1]%(sqrt(A001248(n+1))%9)` -/
def P4898811128631873515.Spec : Prop :=
  ∀ n, P4898811128631873515.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P15796125578697577875

`p?[abs(1-n*gcd(2, n))+1]%((A001748(n+1)/3)%9)`
-/

namespace A179656.P15796125578697577875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n * Nat.gcd 2 n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (Int.tmod (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)) 9)

end

end A179656.P15796125578697577875

namespace A179656

/-- `p?[abs(1-n*gcd(2, n))+1]%((A001748(n+1)/3)%9)` -/
def P15796125578697577875.Spec : Prop :=
  ∀ n, P15796125578697577875.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P611521294746430972

`record[A006530(n+2)]%A038194(n+1)`
-/

namespace A179656.P611521294746430972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038194 (n + 1))

end

end A179656.P611521294746430972

namespace A179656

/-- `record[A006530(n+2)]%A038194(n+1)` -/
def P611521294746430972.Spec : Prop :=
  ∀ n, P611521294746430972.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P1123492435028227337

`record[A020639(n+2)]%A038194(n+1)`
-/

namespace A179656.P1123492435028227337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038194 (n + 1))

end

end A179656.P1123492435028227337

namespace A179656

/-- `record[A020639(n+2)]%A038194(n+1)` -/
def P1123492435028227337.Spec : Prop :=
  ∀ n, P1123492435028227337.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P8700400370767299610

`record[A000010(n+1)+1]%A038194(n+1)`
-/

namespace A179656.P8700400370767299610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A038194 (n + 1))

end

end A179656.P8700400370767299610

namespace A179656

/-- `record[A000010(n+1)+1]%A038194(n+1)` -/
def P8700400370767299610.Spec : Prop :=
  ∀ n, P8700400370767299610.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P4657363194378781249

`(eq[1, A001222(n+1)]+1)%A038194(n+1)`
-/

namespace A179656.P4657363194378781249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A038194 (n + 1))

end

end A179656.P4657363194378781249

namespace A179656

/-- `(eq[1, A001222(n+1)]+1)%A038194(n+1)` -/
def P4657363194378781249.Spec : Prop :=
  ∀ n, P4657363194378781249.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P4569199983309806124

`(eq[2, A000005(n+1)]+1)%A038194(n+1)`
-/

namespace A179656.P4569199983309806124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) (A038194 (n + 1))

end

end A179656.P4569199983309806124

namespace A179656

/-- `(eq[2, A000005(n+1)]+1)%A038194(n+1)` -/
def P4569199983309806124.Spec : Prop :=
  ∀ n, P4569199983309806124.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P8466206515496752375

`(lt[A001222(n+2), 2]+2)%A038194(n+1)`
-/

namespace A179656.P8466206515496752375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) (A038194 (n + 1))

end

end A179656.P8466206515496752375

namespace A179656

/-- `(lt[A001222(n+2), 2]+2)%A038194(n+1)` -/
def P8466206515496752375.Spec : Prop :=
  ∀ n, P8466206515496752375.a n = A179656 (n + 1)

end A179656

/-! ## A179656.P7881945301179146358

`(lt[A000005(n+2), 3]+2)%A038194(n+1)`
-/

namespace A179656.P7881945301179146358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) (A038194 (n + 1))

end

end A179656.P7881945301179146358

namespace A179656

/-- `(lt[A000005(n+2), 3]+2)%A038194(n+1)` -/
def P7881945301179146358.Spec : Prop :=
  ∀ n, P7881945301179146358.a n = A179656 (n + 1)

end A179656

/-!
# A179657: Digital root of n-th practical number.

The programs for A179657, there is no canonical definition to state claims against.
-/

/-! ## A179657.P10958254869861351147

`A010888(A005153(n+1))`
-/

namespace A179657.P10958254869861351147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A005153 (n + 1)).toNat

end

end A179657.P10958254869861351147

/-! ## A179657.P17139123786193726303

`dr(A179651(n)+a(n-1))` with `a(0)=1`
-/

namespace A179657.P17139123786193726303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.digitalRoot (A179651 n + (a (n - 1) : ℤ))

end

end A179657.P17139123786193726303

/-! ## A179657.P15054831146891046610

`dr(record[A005153(A141256(n))])`
-/

namespace A179657.P15054831146891046610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A141256 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179657.P15054831146891046610

/-! ## A179657.P1225781079841618279

`dr(record[A327832(n+1)])`
-/

namespace A179657.P1225781079841618279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179657.P1225781079841618279

/-! ## A179657.P7823451219187566658

`dr(record[(n+1)%A030057(n+1)])`
-/

namespace A179657.P7823451219187566658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A030057 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179657.P7823451219187566658

/-! ## A179657.P3182191003378710797

`A010888(record[A327832(n+1)])`
-/

namespace A179657.P3182191003378710797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A179657.P3182191003378710797

/-!
# A179658: Minimal odd k such that k*2^n-1 and k*2^(n+1)-1 are Sophie Germain primes.

The programs for A179658, there is no canonical definition to state claims against.
-/

/-! ## A179658.P17374883637552940157

`A176248(n+1)-A267883(2*n)`
-/

namespace A179658.P17374883637552940157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176248 (n + 1) - A267883 (2 * n)

end

end A179658.P17374883637552940157

/-! ## A179658.P17129443090937913259

`A176248(n+1)%(5-A058389(n))`
-/

namespace A179658.P17129443090937913259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176248 (n + 1)) (5 - A058389 n)

end

end A179658.P17129443090937913259

/-! ## A179658.P10337784933557350660

`A176248(n+1)^A134323(n+1)²`
-/

namespace A179658.P10337784933557350660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176248 (n + 1) : ℚ) ^ (A134323 (n + 1) ^ 2 : ℤ)

end

end A179658.P10337784933557350660

/-! ## A179658.P12032797547970275307

`A176248(n+1)-A105700(A008574(n))`
-/

namespace A179658.P12032797547970275307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176248 (n + 1) - A105700 (A008574 n).toNat

end

end A179658.P12032797547970275307

/-! ## A179658.P6460307830376023625

`gcd(A056594(A166333(n)), A176248(n+1))`
-/

namespace A179658.P6460307830376023625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 (A166333 n).toNat) (A176248 (n + 1))

end

end A179658.P6460307830376023625

/-! ## A179658.P18032645015129388152

`A176248(n+1)-and(2, Δ[A000918(n)])`
-/

namespace A179658.P18032645015129388152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176248 (n + 1) - Int.land 2 (f1 (n + 1) - f1 n)

end

end A179658.P18032645015129388152

/-! ## A179658.P2065419759931323444

`A176248(n+1)%A089365(n)`
-/

namespace A179658.P2065419759931323444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176248 (n + 1)) (A089365 n)

end

end A179658.P2065419759931323444

/-! ## A179658.P15877408468795573066

`A176248(n+1)-A052928(A089026(∑[n+1]))`
-/

namespace A179658.P15877408468795573066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176248 (n + 1) - A052928 (A089026 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A179658.P15877408468795573066

/-! ## A179658.P15746369428290221912

`A176248(n+1)-A077957(A178623(n))`
-/

namespace A179658.P15746369428290221912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176248 (n + 1) - A077957 (A178623 n).toNat

end

end A179658.P15746369428290221912

/-! ## A179658.P12982583314176598919

`A176248(n+1)/A358692(n+1)`
-/

namespace A179658.P12982583314176598919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176248 (n + 1) : ℚ) / (A358692 (n + 1) : ℚ)

end

end A179658.P12982583314176598919

/-!
# A179659: Digital root of the n-th weird number.

The programs for A179659, there is no canonical definition to state claims against.
-/

/-! ## A179659.P17821420185973787477

`dr(A006037(n+1))`
-/

namespace A179659.P17821420185973787477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006037 (n + 1))

end

end A179659.P17821420185973787477

/-! ## A179659.P7301733139554560608

`A006037(Δ[n²]-n)%9`
-/

namespace A179659.P7301733139554560608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006037 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) 9

end

end A179659.P7301733139554560608

/-! ## A179659.P1780083002866136706

`dr(record[A006037(A022446(n))])`
-/

namespace A179659.P1780083002866136706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A022446 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P1780083002866136706

/-! ## A179659.P8346908889863363538

`dr(record[A006037(A065648(n))])`
-/

namespace A179659.P8346908889863363538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A065648 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P8346908889863363538

/-! ## A179659.P13638719302206944208

`dr(record[A006037(A126759(n))])`
-/

namespace A179659.P13638719302206944208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A126759 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P13638719302206944208

/-! ## A179659.P18443500826453313635

`dr(record[A006037(A133310(n))])`
-/

namespace A179659.P18443500826453313635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A133310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P18443500826453313635

/-! ## A179659.P12823058160975710286

`dr(record[A006037(A134478(n))])`
-/

namespace A179659.P12823058160975710286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A134478 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P12823058160975710286

/-! ## A179659.P8630964512163456659

`dr(record[A006037(A152271(n))])`
-/

namespace A179659.P8630964512163456659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A152271 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P8630964512163456659

/-! ## A179659.P8899806152486383064

`dr(record[A006037(A158416(n))])`
-/

namespace A179659.P8899806152486383064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A158416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P8899806152486383064

/-! ## A179659.P3795908403216762834

`dr(record[A006037(A242112(n))])`
-/

namespace A179659.P3795908403216762834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A242112 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P3795908403216762834

/-! ## A179659.P16725840381503775518

`dr(record[A006037(A344180(n))])`
-/

namespace A179659.P16725840381503775518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A344180 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A179659.P16725840381503775518

/-! ## A179659.P17552587650002899168

`record[A006037(A028920(n))]%9`
-/

namespace A179659.P17552587650002899168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A179659.P17552587650002899168

/-! ## A179659.P3354486291505955464

`record[A006037(A141256(n))]%9`
-/

namespace A179659.P3354486291505955464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A179659.P3354486291505955464

/-! ## A179659.P17578362185895665526

`record[A006037(A324347(n))]%9`
-/

namespace A179659.P17578362185895665526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A179659.P17578362185895665526

/-! ## A179659.P13216107814793428940

`record[A006037(A329048(n))]%9`
-/

namespace A179659.P13216107814793428940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (A329048 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 9

end

end A179659.P13216107814793428940

/-! ## A179659.P10008783235708356283

`A010888(∑{digits}[A006037(n+1), #])`
-/

namespace A179659.P10008783235708356283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A179659.P10008783235708356283

/-! ## A179659.P10028113910648266643

`dr(∪[A002975(n+1), A348631(n+1)])`
-/

namespace A179659.P10028113910648266643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A179659.P10028113910648266643

/-!
# A179660: Sum of the primes < n*10^8.

The programs for A179660, there is no canonical definition to state claims against.
-/

/-! ## A179660.P5789184299385874338

`A179649(10*(n+1))`
-/

namespace A179660.P5789184299385874338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179649 (10 * (n + 1))

end

end A179660.P5789184299385874338

/-!
# A179663: The dimension of the space of invariant tensors in the n-th tensor power of the adjoint representation of the exceptional Lie algebra E8.

The programs for A179663, there is no canonical definition to state claims against.
-/

/-! ## A179663.P1453904613969307508

`A203852(n)+A185238(floor(n²/2))`
-/

namespace A179663.P1453904613969307508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A185238 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A179663.P1453904613969307508

/-! ## A179663.P1440141551016139191

`A203852(n)+A010051(A010904(n))`
-/

namespace A179663.P1440141551016139191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A010051 (A010904 n).toNat

end

end A179663.P1440141551016139191

/-! ## A179663.P16061454526215810330

`A050167(n)+A023443(A203852(n))`
-/

namespace A179663.P16061454526215810330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050167 n + A023443 (A203852 n).toNat

end

end A179663.P16061454526215810330

/-! ## A179663.P1315742508924408968

`A203852(n)+A014378(A061219(n+1))`
-/

namespace A179663.P1315742508924408968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A014378 (A061219 (n + 1)).toNat

end

end A179663.P1315742508924408968

/-! ## A179663.P3063453526278730311

`A203852(n)+A124762(A352668(n+1))`
-/

namespace A179663.P3063453526278730311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A124762 (A352668 (n + 1)).toNat

end

end A179663.P3063453526278730311

/-!
# A179664: Products of the 7th power of a prime and a distinct prime (p^7*q).

The programs for A179664, there is no canonical definition to state claims against.
-/

/-! ## A179664.P18300826336085365968

`∩[A046310(n+1), A391922(n+1)]`
-/

namespace A179664.P18300826336085365968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P18300826336085365968

/-! ## A179664.P11050596690367089671

`∩[A195090(n+1), A391922(n+1)]`
-/

namespace A179664.P11050596690367089671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P11050596690367089671

/-! ## A179664.P9343006488679342612

`∩[A175496(n+1), A360906(n+1)]`
-/

namespace A179664.P9343006488679342612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P9343006488679342612

/-! ## A179664.P13197918385860864269

`∩[A360906(n+1), A381312(n+1)]`
-/

namespace A179664.P13197918385860864269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P13197918385860864269

/-! ## A179664.P10837069309409323931

`∩[A360906(n+1), A384520(n+1)]`
-/

namespace A179664.P10837069309409323931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384520 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P10837069309409323931

/-! ## A179664.P11220508739809340154

`∩[A360906(n+1), A362594(n+1)]`
-/

namespace A179664.P11220508739809340154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P11220508739809340154

/-! ## A179664.P3869569616562008422

`∩[A301517(n+1), A360906(n+1)]`
-/

namespace A179664.P3869569616562008422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P3869569616562008422

/-! ## A179664.P9583858717229280163

`filter[A360906(n+2), A359473(#)]`
-/

namespace A179664.P9583858717229280163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A179664.P9583858717229280163

/-! ## A179664.P10498128292945486098

`filter[A391841(n+2), A355825(#)]`
-/

namespace A179664.P10498128292945486098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391841 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A179664.P10498128292945486098

/-! ## A179664.P4503708234064174098

`∩[A030634(n+1), A046310(n+1)]`
-/

namespace A179664.P4503708234064174098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P4503708234064174098

/-! ## A179664.P9697379220772618116

`∩[A030634(n+1), A195090(n+1)]`
-/

namespace A179664.P9697379220772618116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P9697379220772618116

/-! ## A179664.P14302068444865486292

`∩[A030634(n+1), A320891(n+1)]`
-/

namespace A179664.P14302068444865486292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P14302068444865486292

/-! ## A179664.P14119231136433615699

`∩[A030634(n+1), A320892(n+1)]`
-/

namespace A179664.P14119231136433615699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P14119231136433615699

/-! ## A179664.P8943762506841999636

`∩[A030634(n+1), A391115(n+1)]`
-/

namespace A179664.P8943762506841999636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P8943762506841999636

/-! ## A179664.P15508432808278507471

`∩[A030634(n+1), A391591(n+1)]`
-/

namespace A179664.P15508432808278507471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P15508432808278507471

/-! ## A179664.P3399466172982691675

`∩[A030634(n+1), A391922(n+1)]`
-/

namespace A179664.P3399466172982691675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P3399466172982691675

/-! ## A179664.P597924747666672505

`∩[A392360(n+1), A030634(n+1)]`
-/

namespace A179664.P597924747666672505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P597924747666672505

/-! ## A179664.P431813789925305871

`∩[A030634(n+1), A114987(n+1)]`
-/

namespace A179664.P431813789925305871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179664.P431813789925305871

/-! ## A179664.P9432506112860769183

`filter[A360906(n+2), A295316(#)]`
-/

namespace A179664.P9432506112860769183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360906 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A179664.P9432506112860769183

/-!
# A179665: a(n) = prime(n)^9.

The programs for A179665, the canonical program `A179665.P967492933399289079` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179665 has offset 1).

The definition of A179665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)^9` (program `A179665.P967492933399289079`, by `A179665.P967492933399289079.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A179665.P967492933399289079

`A000040(n+1)^9`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A179665

/-- `A000040(n+1)^9` -/
def P967492933399289079.Spec : Prop :=
  ∀ n, P967492933399289079.a n = A179665 (n + 1)

theorem P967492933399289079.correct : P967492933399289079.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel]

end A179665

/-! ## A179665.P8172407130173004321

`A001017(A000040(n+1))`
-/

namespace A179665.P8172407130173004321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A000040 (n + 1)).toNat

end

end A179665.P8172407130173004321

namespace A179665

/-- `A001017(A000040(n+1))` -/
def P8172407130173004321.Spec : Prop :=
  ∀ n, P8172407130173004321.a n = A179665 (n + 1)

end A179665

/-! ## A179665.P15324825697978140419

`A030078(n+1)^3`
-/

namespace A179665.P15324825697978140419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) ^ 3

end

end A179665.P15324825697978140419

namespace A179665

/-- `A030078(n+1)^3` -/
def P15324825697978140419.Spec : Prop :=
  ∀ n, P15324825697978140419.a n = A179665 (n + 1)

theorem P15324825697978140419.correct : P15324825697978140419.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P15324825697978140419.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P17660284382752361899

`sqrt(A030516(n+1))^3`
-/

namespace A179665.P17660284382752361899
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 1) : ℝ) ^ 3

end

end A179665.P17660284382752361899

namespace A179665

/-- `sqrt(A030516(n+1))^3` -/
def P17660284382752361899.Spec : Prop :=
  ∀ n, P17660284382752361899.a n = (A179665 (n + 1) : ℝ)

end A179665

/-! ## A179665.P12048804039535598402

`(A000040(2*n-(n-1))^3)^3`
-/

namespace A179665.P12048804039535598402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 3) ^ 3

end

end A179665.P12048804039535598402

namespace A179665

/-- `(A000040(2*n-(n-1))^3)^3` -/
def P12048804039535598402.Spec : Prop :=
  ∀ n, P12048804039535598402.a n = A179665 (n + 1)

end A179665

/-! ## A179665.P14468333273842590922

`A030078(n+1)*A030516(n+1)`
-/

namespace A179665.P14468333273842590922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) * A030516 (n + 1)

end

end A179665.P14468333273842590922

namespace A179665

/-- `A030078(n+1)*A030516(n+1)` -/
def P14468333273842590922.Spec : Prop :=
  ∀ n, P14468333273842590922.a n = A179665 (n + 1)

theorem P14468333273842590922.correct : P14468333273842590922.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P14468333273842590922.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A030516, A030516.P1711246340231228216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P16050191790854817447

`A030514(n+1)*A050997(n+1)`
-/

namespace A179665.P16050191790854817447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) * A050997 (n + 1)

end

end A179665.P16050191790854817447

namespace A179665

/-- `A030514(n+1)*A050997(n+1)` -/
def P16050191790854817447.Spec : Prop :=
  ∀ n, P16050191790854817447.a n = A179665 (n + 1)

theorem P16050191790854817447.correct : P16050191790854817447.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P16050191790854817447.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P18224628646492891333

`A001248(n+1)*A092759(n+1)`
-/

namespace A179665.P18224628646492891333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A092759 (n + 1)

end

end A179665.P18224628646492891333

namespace A179665

/-- `A001248(n+1)*A092759(n+1)` -/
def P18224628646492891333.Spec : Prop :=
  ∀ n, P18224628646492891333.a n = A179665 (n + 1)

theorem P18224628646492891333.correct : P18224628646492891333.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P18224628646492891333.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P17517318280146145428

`A000040(n+1)*A179645(n+1)`
-/

namespace A179665.P17517318280146145428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A179645 (n + 1)

end

end A179665.P17517318280146145428

namespace A179665

/-- `A000040(n+1)*A179645(n+1)` -/
def P17517318280146145428.Spec : Prop :=
  ∀ n, P17517318280146145428.a n = A179665 (n + 1)

theorem P17517318280146145428.correct : P17517318280146145428.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P17517318280146145428.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A179645, A179645.P9823570256898303870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P17533898930736133743

`A030629(n+1)/A000040(n+1)`
-/

namespace A179665.P17533898930736133743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030629 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A179665.P17533898930736133743

namespace A179665

/-- `A030629(n+1)/A000040(n+1)` -/
def P17533898930736133743.Spec : Prop :=
  ∀ n, P17533898930736133743.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P1186646384838778141

`A030631(n+1)/A030078(n+1)`
-/

namespace A179665.P1186646384838778141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030631 (n + 1) : ℚ) / (A030078 (n + 1) : ℚ)

end

end A179665.P1186646384838778141

namespace A179665

/-- `A030631(n+1)/A030078(n+1)` -/
def P1186646384838778141.Spec : Prop :=
  ∀ n, P1186646384838778141.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P4732360794252967817

`A079395(n+1)/A001248(n+1)`
-/

namespace A179665.P4732360794252967817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079395 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A179665.P4732360794252967817

namespace A179665

/-- `A079395(n+1)/A001248(n+1)` -/
def P4732360794252967817.Spec : Prop :=
  ∀ n, P4732360794252967817.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P10944902561811032322

`A138031(n+1)/A030514(n+1)`
-/

namespace A179665.P10944902561811032322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138031 (n + 1) : ℚ) / (A030514 (n + 1) : ℚ)

end

end A179665.P10944902561811032322

namespace A179665

/-- `A138031(n+1)/A030514(n+1)` -/
def P10944902561811032322.Spec : Prop :=
  ∀ n, P10944902561811032322.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P13444738730728726695

`A030514(n+1)²*A000040(n+1)`
-/

namespace A179665.P13444738730728726695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 1) ^ 2 * A000040 (n + 1)

end

end A179665.P13444738730728726695

namespace A179665

/-- `A030514(n+1)²*A000040(n+1)` -/
def P13444738730728726695.Spec : Prop :=
  ∀ n, P13444738730728726695.a n = A179665 (n + 1)

theorem P13444738730728726695.correct : P13444738730728726695.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P13444738730728726695.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P12970603328108074570

`A001248(n+1)²*A050997(n+1)`
-/

namespace A179665.P12970603328108074570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A050997 (n + 1)

end

end A179665.P12970603328108074570

namespace A179665

/-- `A001248(n+1)²*A050997(n+1)` -/
def P12970603328108074570.Spec : Prop :=
  ∀ n, P12970603328108074570.a n = A179665 (n + 1)

theorem P12970603328108074570.correct : P12970603328108074570.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P12970603328108074570.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P17011666602966289867

`A000040(n+1)²*A092759(n+1)`
-/

namespace A179665.P17011666602966289867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A092759 (n + 1)

end

end A179665.P17011666602966289867

namespace A179665

/-- `A000040(n+1)²*A092759(n+1)` -/
def P17011666602966289867.Spec : Prop :=
  ∀ n, P17011666602966289867.a n = A179665 (n + 1)

theorem P17011666602966289867.correct : P17011666602966289867.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P17011666602966289867.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-! ## A179665.P8113679219152293146

`A050997(n+1)²/A000040(n+1)`
-/

namespace A179665.P8113679219152293146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050997 (n + 1) ^ 2 : ℚ) / (A000040 (n + 1) : ℚ)

end

end A179665.P8113679219152293146

namespace A179665

/-- `A050997(n+1)²/A000040(n+1)` -/
def P8113679219152293146.Spec : Prop :=
  ∀ n, P8113679219152293146.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P9017135884262068805

`A138031(n+1)/A001248(n+1)²`
-/

namespace A179665.P9017135884262068805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138031 (n + 1) : ℚ) / (A001248 (n + 1) ^ 2 : ℚ)

end

end A179665.P9017135884262068805

namespace A179665

/-- `A138031(n+1)/A001248(n+1)²` -/
def P9017135884262068805.Spec : Prop :=
  ∀ n, P9017135884262068805.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P17506425593894945741

`A092759(n+1)²/A050997(n+1)`
-/

namespace A179665.P17506425593894945741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092759 (n + 1) ^ 2 : ℚ) / (A050997 (n + 1) : ℚ)

end

end A179665.P17506425593894945741

namespace A179665

/-- `A092759(n+1)²/A050997(n+1)` -/
def P17506425593894945741.Spec : Prop :=
  ∀ n, P17506425593894945741.a n = (A179665 (n + 1) : ℚ)

end A179665

/-! ## A179665.P13261422895874150587

`(A066872(n+1)-1)*A092759(n+1)`
-/

namespace A179665.P13261422895874150587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 1) - 1) * A092759 (n + 1)

end

end A179665.P13261422895874150587

namespace A179665

/-- `(A066872(n+1)-1)*A092759(n+1)` -/
def P13261422895874150587.Spec : Prop :=
  ∀ n, P13261422895874150587.a n = A179665 (n + 1)

theorem P13261422895874150587.correct : P13261422895874150587.Spec := by
  intro n
  simp only [A179665, Nat.add_sub_cancel, A179665.P13261422895874150587.a, A179665.P967492933399289079.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066872, A066872.P16166098773502812344.a, A092759, A092759.P10365930146465751826.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A179665

/-!
# A179666: Products of the 4th power of a prime and a distinct prime of power 3 (p^4*q^3).

The programs for A179666, there is no canonical definition to state claims against.
-/

/-! ## A179666.P610353244872869292

`∩[A195089(n+1), A370788(n+1)]`
-/

namespace A179666.P610353244872869292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179666.P610353244872869292

/-! ## A179666.P10248455397341816864

`∩[A195089(n+1), A372695(n+1)]`
-/

namespace A179666.P10248455397341816864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179666.P10248455397341816864

/-! ## A179666.P10944027181379775298

`∩[A195089(n+1), A376173(n+1)]`
-/

namespace A179666.P10944027181379775298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179666.P10944027181379775298

/-! ## A179666.P16103650708935377365

`∩[A195089(n+1), A382064(n+1)]`
-/

namespace A179666.P16103650708935377365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179666.P16103650708935377365

/-! ## A179666.P4234959906034159528

`∩[A195089(n+1), A388293(n+1)]`
-/

namespace A179666.P4234959906034159528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179666.P4234959906034159528

/-!
# A179667: Products of the 5th power of a prime and 2 distinct primes (p^5*q*r).

The programs for A179667, the canonical program `A179667.P13137735960818223073` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179667 has offset 1).

The definition of A179667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179667.P3107099363500037782

`∩[A046308(n+1), A137487(n+1)]`
-/

namespace A179667.P3107099363500037782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P3107099363500037782

namespace A179667

/-- `∩[A046308(n+1), A137487(n+1)]` -/
def P3107099363500037782.Spec : Prop :=
  ∀ n, (P3107099363500037782.a n : ℤ) = A179667 (n + 1)

end A179667

/-! ## A179667.P13137735960818223073

`∩[A082294(n+1), A137487(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179667

/-- `∩[A082294(n+1), A137487(n+1)]` -/
def P13137735960818223073.Spec : Prop :=
  ∀ n, (P13137735960818223073.a n : ℤ) = A179667 (n + 1)

theorem P13137735960818223073.correct : P13137735960818223073.Spec := by
  intro n
  simp only [A179667, Nat.add_sub_cancel]

end A179667

/-! ## A179667.P9319632744097422068

`∩[A137487(n+1), A195088(n+1)]`
-/

namespace A179667.P9319632744097422068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P9319632744097422068

namespace A179667

/-- `∩[A137487(n+1), A195088(n+1)]` -/
def P9319632744097422068.Spec : Prop :=
  ∀ n, (P9319632744097422068.a n : ℤ) = A179667 (n + 1)

end A179667

/-! ## A179667.P5880332252955089904

`filter[A137487(n+1), A358753(#)]`
-/

namespace A179667.P5880332252955089904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A179667.P5880332252955089904

namespace A179667

/-- `filter[A137487(n+1), A358753(#)]` -/
def P5880332252955089904.Spec : Prop :=
  ∀ n, P5880332252955089904.a n = A179667 (n + 1)

end A179667

/-! ## A179667.P15144377871903257767

`filter[A137487(n+1), A353519(#)]`
-/

namespace A179667.P15144377871903257767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A179667.P15144377871903257767

namespace A179667

/-- `filter[A137487(n+1), A353519(#)]` -/
def P15144377871903257767.Spec : Prop :=
  ∀ n, P15144377871903257767.a n = A179667 (n + 1)

end A179667

/-! ## A179667.P3634244655377904373

`∩[A046308(n+1), A350371(n+1)]`
-/

namespace A179667.P3634244655377904373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P3634244655377904373

namespace A179667

/-- `∩[A046308(n+1), A350371(n+1)]` -/
def P3634244655377904373.Spec : Prop :=
  ∀ n, (P3634244655377904373.a n : ℤ) = A179667 (n + 1)

end A179667

/-! ## A179667.P13484788086750981432

`∩[A137487(n+1), A350371(n+1)]`
-/

namespace A179667.P13484788086750981432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P13484788086750981432

namespace A179667

/-- `∩[A137487(n+1), A350371(n+1)]` -/
def P13484788086750981432.Spec : Prop :=
  ∀ n, (P13484788086750981432.a n : ℤ) = A179667 (n + 1)

end A179667

/-! ## A179667.P3439496713312427241

`∩[A195088(n+1), A350371(n+1)]`
-/

namespace A179667.P3439496713312427241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P3439496713312427241

namespace A179667

/-- `∩[A195088(n+1), A350371(n+1)]` -/
def P3439496713312427241.Spec : Prop :=
  ∀ n, (P3439496713312427241.a n : ℤ) = A179667 (n + 1)

end A179667

/-! ## A179667.P14735589226930541825

`∩[A350371(n+1), A362841(n+1)]`
-/

namespace A179667.P14735589226930541825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179667.P14735589226930541825

namespace A179667

/-- `∩[A350371(n+1), A362841(n+1)]` -/
def P14735589226930541825.Spec : Prop :=
  ∀ n, (P14735589226930541825.a n : ℤ) = A179667 (n + 1)

end A179667

/-!
# A179668: Products of the 8th power of a prime and a distinct prime (p^8*q).

The programs for A179668, there is no canonical definition to state claims against.
-/

/-! ## A179668.P109405008844357507

`∩[A046312(n+1), A361176(n+1)]`
-/

namespace A179668.P109405008844357507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P109405008844357507

/-! ## A179668.P1060642308713975282

`∩[A030636(n+1), A046312(n+1)]`
-/

namespace A179668.P1060642308713975282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P1060642308713975282

/-! ## A179668.P16559058698857473326

`∩[A030636(n+1), A195091(n+1)]`
-/

namespace A179668.P16559058698857473326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P16559058698857473326

/-! ## A179668.P17840482546470477324

`∩[A030636(n+1), A361176(n+1)]`
-/

namespace A179668.P17840482546470477324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P17840482546470477324

/-! ## A179668.P3912699527929426022

`∩[A030636(n+1), A130897(n+1)]`
-/

namespace A179668.P3912699527929426022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P3912699527929426022

/-! ## A179668.P7090933963693414054

`∩[A030636(n+1), A322448(n+1)]`
-/

namespace A179668.P7090933963693414054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179668.P7090933963693414054

/-! ## A179668.P14381214592059697824

`filter[A046312(n+1), A123927(#)]`
-/

namespace A179668.P14381214592059697824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A179668.P14381214592059697824

/-! ## A179668.P8697709174224069688

`filter[A195091(n+1), A123927(#)]`
-/

namespace A179668.P8697709174224069688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A179668.P8697709174224069688

/-!
# A179669: Products of form p^4*q^2*r where p, q and r are three distinct primes.

The programs for A179669, the canonical program `A179669.P2073455603419507119` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179669 has offset 1).

The definition of A179669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179669.P13927059444227130105

`∩[A137493(n+1), A360902(n+1)]`
-/

namespace A179669.P13927059444227130105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P13927059444227130105

namespace A179669

/-- `∩[A137493(n+1), A360902(n+1)]` -/
def P13927059444227130105.Spec : Prop :=
  ∀ n, (P13927059444227130105.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P9115671747333992328

`∩[A137493(n+1), A195088(n+1)]`
-/

namespace A179669.P9115671747333992328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P9115671747333992328

namespace A179669

/-- `∩[A137493(n+1), A195088(n+1)]` -/
def P9115671747333992328.Spec : Prop :=
  ∀ n, (P9115671747333992328.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P12850250338683470476

`∩[A137493(n+1), A350372(n+1)]`
-/

namespace A179669.P12850250338683470476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P12850250338683470476

namespace A179669

/-- `∩[A137493(n+1), A350372(n+1)]` -/
def P12850250338683470476.Spec : Prop :=
  ∀ n, (P12850250338683470476.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P2073455603419507119

`∩[A350372(n+1), A360902(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179669

/-- `∩[A350372(n+1), A360902(n+1)]` -/
def P2073455603419507119.Spec : Prop :=
  ∀ n, (P2073455603419507119.a n : ℤ) = A179669 (n + 1)

theorem P2073455603419507119.correct : P2073455603419507119.Spec := by
  intro n
  simp only [A179669, Nat.add_sub_cancel]

end A179669

/-! ## A179669.P11125237704028372989

`∩[A137493(n+1), A323024(n+1)]`
-/

namespace A179669.P11125237704028372989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P11125237704028372989

namespace A179669

/-- `∩[A137493(n+1), A323024(n+1)]` -/
def P11125237704028372989.Spec : Prop :=
  ∀ n, (P11125237704028372989.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P3768222430211123720

`∩[A046308(n+1), A137493(n+1)]`
-/

namespace A179669.P3768222430211123720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P3768222430211123720

namespace A179669

/-- `∩[A046308(n+1), A137493(n+1)]` -/
def P3768222430211123720.Spec : Prop :=
  ∀ n, (P3768222430211123720.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P12356363087053142422

`∩[A046308(n+1), A360902(n+1)]`
-/

namespace A179669.P12356363087053142422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P12356363087053142422

namespace A179669

/-- `∩[A046308(n+1), A360902(n+1)]` -/
def P12356363087053142422.Spec : Prop :=
  ∀ n, (P12356363087053142422.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P2941403021853465758

`∩[A137493(n+1), A377817(n+1)]`
-/

namespace A179669.P2941403021853465758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377817 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P2941403021853465758

namespace A179669

/-- `∩[A137493(n+1), A377817(n+1)]` -/
def P2941403021853465758.Spec : Prop :=
  ∀ n, (P2941403021853465758.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P17724380826164741213

`∩[A137493(n+1), A393947(n+1)]`
-/

namespace A179669.P17724380826164741213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P17724380826164741213

namespace A179669

/-- `∩[A137493(n+1), A393947(n+1)]` -/
def P17724380826164741213.Spec : Prop :=
  ∀ n, (P17724380826164741213.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P16980097235336384653

`∩[A072413(n+1), A137493(n+1)]`
-/

namespace A179669.P16980097235336384653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P16980097235336384653

namespace A179669

/-- `∩[A072413(n+1), A137493(n+1)]` -/
def P16980097235336384653.Spec : Prop :=
  ∀ n, (P16980097235336384653.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P2191011484055973371

`∩[A137493(n+1), A378430(n+1)]`
-/

namespace A179669.P2191011484055973371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P2191011484055973371

namespace A179669

/-- `∩[A137493(n+1), A378430(n+1)]` -/
def P2191011484055973371.Spec : Prop :=
  ∀ n, (P2191011484055973371.a n : ℤ) = A179669 (n + 1)

end A179669

/-! ## A179669.P9954424642879234861

`filter[A137493(n+1), A355823(#)]`
-/

namespace A179669.P9954424642879234861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A179669.P9954424642879234861

namespace A179669

/-- `filter[A137493(n+1), A355823(#)]` -/
def P9954424642879234861.Spec : Prop :=
  ∀ n, P9954424642879234861.a n = A179669 (n + 1)

end A179669

/-! ## A179669.P4563013419508107205

`∩[A137493(n+1), A396323(n+1)]`
-/

namespace A179669.P4563013419508107205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P4563013419508107205

namespace A179669

/-- `∩[A137493(n+1), A396323(n+1)]` -/
def P4563013419508107205.Spec : Prop :=
  ∀ n, (P4563013419508107205.a n : ℤ) = A179669 (n + 1)

end A179669

/-!
# A179670: Numbers of the form p^3*q*r*s where p, q, r, and s are distinct primes.

The programs for A179670, the canonical program `A179670.P14392537173790149213` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179670 has offset 1).

The definition of A179670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2098 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179670.P3374770953434318281

`∩[A175742(n+1), A200521(n+1)]`
-/

namespace A179670.P3374770953434318281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P3374770953434318281

namespace A179670

/-- `∩[A175742(n+1), A200521(n+1)]` -/
def P3374770953434318281.Spec : Prop :=
  ∀ n, (P3374770953434318281.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P1097928238781750046

`∩[A175742(n+1), A386977(n+1)]`
-/

namespace A179670.P1097928238781750046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P1097928238781750046

namespace A179670

/-- `∩[A175742(n+1), A386977(n+1)]` -/
def P1097928238781750046.Spec : Prop :=
  ∀ n, (P1097928238781750046.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P559035531308730073

`∩[A046306(n+1), A175742(n+1)]`
-/

namespace A179670.P559035531308730073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P559035531308730073

namespace A179670

/-- `∩[A046306(n+1), A175742(n+1)]` -/
def P559035531308730073.Spec : Prop :=
  ∀ n, (P559035531308730073.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P12185537261716166130

`∩[A046306(n+1), A350374(n+1)]`
-/

namespace A179670.P12185537261716166130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P12185537261716166130

namespace A179670

/-- `∩[A046306(n+1), A350374(n+1)]` -/
def P12185537261716166130.Spec : Prop :=
  ∀ n, (P12185537261716166130.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P14511070214639160509

`∩[A175742(n+1), A350374(n+1)]`
-/

namespace A179670.P14511070214639160509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P14511070214639160509

namespace A179670

/-- `∩[A175742(n+1), A350374(n+1)]` -/
def P14511070214639160509.Spec : Prop :=
  ∀ n, (P14511070214639160509.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P11072323001170602784

`∩[A350374(n+1), A386977(n+1)]`
-/

namespace A179670.P11072323001170602784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P11072323001170602784

namespace A179670

/-- `∩[A350374(n+1), A386977(n+1)]` -/
def P11072323001170602784.Spec : Prop :=
  ∀ n, (P11072323001170602784.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P1587858555268929473

`∩[A350374(n+1), A391497(n+1)]`
-/

namespace A179670.P1587858555268929473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P1587858555268929473

namespace A179670

/-- `∩[A350374(n+1), A391497(n+1)]` -/
def P1587858555268929473.Spec : Prop :=
  ∀ n, (P1587858555268929473.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P2617084350223037955

`∩[A046306(n+1), A360793(n+1)]`
-/

namespace A179670.P2617084350223037955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P2617084350223037955

namespace A179670

/-- `∩[A046306(n+1), A360793(n+1)]` -/
def P2617084350223037955.Spec : Prop :=
  ∀ n, (P2617084350223037955.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P14392537173790149213

`∩[A175742(n+1), A360793(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A179670

/-- `∩[A175742(n+1), A360793(n+1)]` -/
def P14392537173790149213.Spec : Prop :=
  ∀ n, (P14392537173790149213.a n : ℤ) = A179670 (n + 1)

theorem P14392537173790149213.correct : P14392537173790149213.Spec := by
  intro n
  simp only [A179670, Nat.add_sub_cancel]

end A179670

/-! ## A179670.P3084462608704219189

`∩[A200521(n+1), A360793(n+1)]`
-/

namespace A179670.P3084462608704219189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P3084462608704219189

namespace A179670

/-- `∩[A200521(n+1), A360793(n+1)]` -/
def P3084462608704219189.Spec : Prop :=
  ∀ n, (P3084462608704219189.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P15255743862588424739

`∩[A350374(n+1), A360793(n+1)]`
-/

namespace A179670.P15255743862588424739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P15255743862588424739

namespace A179670

/-- `∩[A350374(n+1), A360793(n+1)]` -/
def P15255743862588424739.Spec : Prop :=
  ∀ n, (P15255743862588424739.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P3065060310097830819

`∩[A360793(n+1), A386977(n+1)]`
-/

namespace A179670.P3065060310097830819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P3065060310097830819

namespace A179670

/-- `∩[A360793(n+1), A386977(n+1)]` -/
def P3065060310097830819.Spec : Prop :=
  ∀ n, (P3065060310097830819.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P16034183942035362206

`∩[A046306(n+1), A048109(n+1)]`
-/

namespace A179670.P16034183942035362206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P16034183942035362206

namespace A179670

/-- `∩[A046306(n+1), A048109(n+1)]` -/
def P16034183942035362206.Spec : Prop :=
  ∀ n, (P16034183942035362206.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P3178280861944176381

`∩[A048109(n+1), A175742(n+1)]`
-/

namespace A179670.P3178280861944176381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P3178280861944176381

namespace A179670

/-- `∩[A048109(n+1), A175742(n+1)]` -/
def P3178280861944176381.Spec : Prop :=
  ∀ n, (P3178280861944176381.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P7390948745217391281

`∩[A048109(n+1), A200521(n+1)]`
-/

namespace A179670.P7390948745217391281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P7390948745217391281

namespace A179670

/-- `∩[A048109(n+1), A200521(n+1)]` -/
def P7390948745217391281.Spec : Prop :=
  ∀ n, (P7390948745217391281.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P11260218958215586534

`∩[A048109(n+1), A350374(n+1)]`
-/

namespace A179670.P11260218958215586534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P11260218958215586534

namespace A179670

/-- `∩[A048109(n+1), A350374(n+1)]` -/
def P11260218958215586534.Spec : Prop :=
  ∀ n, (P11260218958215586534.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P3698446336111473012

`∩[A048109(n+1), A386977(n+1)]`
-/

namespace A179670.P3698446336111473012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P3698446336111473012

namespace A179670

/-- `∩[A048109(n+1), A386977(n+1)]` -/
def P3698446336111473012.Spec : Prop :=
  ∀ n, (P3698446336111473012.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P8737182277436347033

`∩[A046306(n+1), A375076(n+1)]`
-/

namespace A179670.P8737182277436347033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P8737182277436347033

namespace A179670

/-- `∩[A046306(n+1), A375076(n+1)]` -/
def P8737182277436347033.Spec : Prop :=
  ∀ n, (P8737182277436347033.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P10430304127063909682

`∩[A350374(n+1), A375076(n+1)]`
-/

namespace A179670.P10430304127063909682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P10430304127063909682

namespace A179670

/-- `∩[A350374(n+1), A375076(n+1)]` -/
def P10430304127063909682.Spec : Prop :=
  ∀ n, (P10430304127063909682.a n : ℤ) = A179670 (n + 1)

end A179670

/-! ## A179670.P10906133176473439725

`∩[A375076(n+1), A386977(n+1)]`
-/

namespace A179670.P10906133176473439725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179670.P10906133176473439725

namespace A179670

/-- `∩[A375076(n+1), A386977(n+1)]` -/
def P10906133176473439725.Spec : Prop :=
  ∀ n, (P10906133176473439725.a n : ℤ) = A179670 (n + 1)

end A179670

/-!
# A179671: Products of the 5th power of a prime and a distinct prime of the 3rd power (p^5*q^3).

The programs for A179671, there is no canonical definition to state claims against.
-/

/-! ## A179671.P220064225141127862

`∩[A114128(n+1), A262675(n+1)]`
-/

namespace A179671.P220064225141127862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179671.P220064225141127862

/-! ## A179671.P13347269798479480490

`∩[A114128(n+1), A367804(n+1)]`
-/

namespace A179671.P13347269798479480490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179671.P13347269798479480490

/-! ## A179671.P17135268662806500721

`∩[A114128(n+1), A195090(n+1)]`
-/

namespace A179671.P17135268662806500721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179671.P17135268662806500721

/-! ## A179671.P12580490559320655498

`filter[A391593(n+1), A359764(#)]`
-/

namespace A179671.P12580490559320655498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A179671.P12580490559320655498

/-! ## A179671.P6532641818712030585

`filter[A392134(n+1), A359764(#)]`
-/

namespace A179671.P6532641818712030585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A179671.P6532641818712030585

/-!
# A179672: Products of the 6th power of a prime and 2 distinct primes (p^6*q*r).

The programs for A179672, there is no canonical definition to state claims against.
-/

/-! ## A179672.P1896515476837242620

`∩[A137491(n+1), A195089(n+1)]`
-/

namespace A179672.P1896515476837242620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179672.P1896515476837242620

/-! ## A179672.P15094544875000619789

`∩[A046310(n+1), A137491(n+1)]`
-/

namespace A179672.P15094544875000619789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179672.P15094544875000619789

/-! ## A179672.P10179412914638207682

`∩[A137491(n+1), A137945(n+1)]`
-/

namespace A179672.P10179412914638207682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179672.P10179412914638207682

/-! ## A179672.P1119775434745607121

`∩[A114987(n+1), A137491(n+1)]`
-/

namespace A179672.P1119775434745607121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179672.P1119775434745607121

/-! ## A179672.P5192680373439438800

`record[A052410(A137491(n+1))]*A294333(9*10*n+89)`
-/

namespace A179672.P5192680373439438800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A137491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A294333 (9 * (10 * n) + 89)

end

end A179672.P5192680373439438800

/-! ## A179672.P3631047965852813127

`record[A052410(A137491(n+1))]+n!%A059268(n)`
-/

namespace A179672.P3631047965852813127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A137491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.tmod (Nat.factorial n : ℤ) (A059268 n)

end

end A179672.P3631047965852813127

/-! ## A179672.P7365318577020808442

`record[A052410(A137491(n+1))]%A226020(n+1)`
-/

namespace A179672.P7365318577020808442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A137491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A226020 (n + 1))

end

end A179672.P7365318577020808442

/-! ## A179672.P9023475763913793327

`filter[A137491(n+1), A174898(#)]`
-/

namespace A179672.P9023475763913793327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A179672.P9023475763913793327

/-!
# A179673: Canyon primes (A134971) whose first and last digits are 9.

The programs for A179673, there is no canonical definition to state claims against.
-/

/-! ## A179673.P2834545478515184168

`∩[A045715(n+1), A134970(n+1)]`
-/

namespace A179673.P2834545478515184168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179673.P2834545478515184168

/-! ## A179673.P8455422839291919987

`∩[A045715(n+1), A134971(n+1)]`
-/

namespace A179673.P8455422839291919987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179673.P8455422839291919987

/-! ## A179673.P13053012157741173437

`∩[A062335(n+1), A134970(n+1)]`
-/

namespace A179673.P13053012157741173437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179673.P13053012157741173437

/-! ## A179673.P880082455635624835

`∩[A062335(n+1), A134971(n+1)]`
-/

namespace A179673.P880082455635624835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179673.P880082455635624835

/-! ## A179673.P10190697172035656005

`∩[A062335(n+1), A183087(n+1)]`
-/

namespace A179673.P10190697172035656005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062335 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179673.P10190697172035656005

/-! ## A179673.P7504778568049919933

`∩[A077685(n+1), A134971(n+1)]`
-/

namespace A179673.P7504778568049919933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179673.P7504778568049919933

/-!
# A179674: Number of binary sequences of length n having a conjugate at Hamming distance 2.

The programs for A179674, there is no canonical definition to state claims against.
-/

/-! ## A179674.P17376830995720415384

`(n+1)*A226893(n+1)`
-/

namespace A179674.P17376830995720415384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A226893 (n + 1)

end

end A179674.P17376830995720415384

/-!
# A179676: Numbers m=2*n-1 for all n>2 not in A179460.

The programs for A179676, there is no canonical definition to state claims against.
-/

/-! ## A179676.P15041547447046819058

`A014659(A272477(n+1)^A008835(n+1))`
-/

namespace A179676.P15041547447046819058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (SequenceMachineLib.roundAway ((A272477 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A179676.P15041547447046819058

/-! ## A179676.P7639394567964349964

`A014659(A008835(n+1)²²*A272477(n+1))`
-/

namespace A179676.P7639394567964349964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 ((A008835 (n + 1) ^ 2) ^ 2 * A272477 (n + 1)).toNat

end

end A179676.P7639394567964349964

/-! ## A179676.P1027738156650724731

`or(∏{e}[A133037(2*n+3)+1, #!], A014659(n+1))`
-/

namespace A179676.P1027738156650724731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133037 (2 * n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℕ) : ℤ) (A014659 (n + 1))

end

end A179676.P1027738156650724731

/-! ## A179676.P15903324903485267565

`or(A001222(A027118(n)), A014659(n+1))`
-/

namespace A179676.P15903324903485267565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A027118 n).toNat) (A014659 (n + 1))

end

end A179676.P15903324903485267565

/-! ## A179676.P9889458695259357908

`or(A014659(n+1), A086009(A304975(n)))`
-/

namespace A179676.P9889458695259357908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014659 (n + 1)) (A086009 (A304975 n).toNat)

end

end A179676.P9889458695259357908

/-!
# A179678: Primes which are the fifth element of a generalized Wieferich sequence.

The programs for A179678, there is no canonical definition to state claims against.
-/

/-! ## A179678.P9710350540423117475

`A179400(eq[A088423(2*n+1), A323116(2*n+3)])`
-/

namespace A179678.P9710350540423117475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323116 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179400 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A179678.P9710350540423117475

/-!
# A179679: Smaller of each pair of consecutive primes which sum to a practical number.

The programs for A179679, there is no canonical definition to state claims against.
-/

/-! ## A179679.P1397714701576878073

`p?[A322860(A001043(n+1))+A006093(n+1)]`
-/

namespace A179679.P1397714701576878073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A001043 (n + 1)).toNat + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179679.P1397714701576878073

/-! ## A179679.P16819604704739785630

`p?[A000040(n+1)*A322860(A001043(n+1))]`
-/

namespace A179679.P16819604704739785630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A322860 (A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179679.P16819604704739785630

/-! ## A179679.P9516006131159965225

`p?[A025915(A089294(n))+2*n+1]`
-/

namespace A179679.P9516006131159965225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 (A089294 n).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179679.P9516006131159965225

/-! ## A179679.P15962774513655189106

`p?[A191838(n+1)-52]`
-/

namespace A179679.P15962774513655189106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191838 (n + 1) - 52

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179679.P15962774513655189106

/-! ## A179679.P9723158380802487026

`p?[record[A331300(n+1)+A113189(n+3)]]`
-/

namespace A179679.P9723158380802487026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 (n + 1) + A113189 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A179679.P9723158380802487026

/-!
# A179680: The number of exponents >1 in a recursive reduction of 2n-1 until reaching an odd part equal to 1.

The programs for A179680, there is no canonical definition to state claims against.
-/

/-! ## A179680.P10065343471232222458

`A179382(n+1)-val(A292239(n), 2)`
-/

namespace A179680.P10065343471232222458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179382 (n + 1) - (SequenceMachineLib.valuation (A292239 n).toNat 2 : ℤ)

end

end A179680.P10065343471232222458

/-! ## A179680.P8976687588567235993

`A244078(A049647(n))%A080513(n)`
-/

namespace A179680.P8976687588567235993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244078 (A049647 n).toNat) (A080513 n)

end

end A179680.P8976687588567235993

/-!
# A179681: a(n)=(nextprime(n)+(n+1))(nextprime(n+1)+n)/2.

The programs for A179681, there is no canonical definition to state claims against.
-/

/-! ## A179681.P505193361980454921

`A272592(A256977(n))`
-/

namespace A179681.P505193361980454921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272592 (A256977 n).toNat

end

end A179681.P505193361980454921

/-! ## A179681.P14313964748895027354

`∑[eq[3, A088183(A294020(n+2)+1)]]`
-/

namespace A179681.P14313964748895027354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (A294020 (n + 2) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A179681.P14313964748895027354

/-!
# A179682: Least integer, k, greater than n such that t(k)*t(n) form a perfect square; t(i) is the i-th triangular number (A000217).

The programs for A179682, there is no canonical definition to state claims against.
-/

/-! ## A179682.P5530413068757198436

`A333714(n+1)%A345925(A279431(n+1))`
-/

namespace A179682.P5530413068757198436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333714 (n + 1)) (A345925 (A279431 (n + 1)).toNat)

end

end A179682.P5530413068757198436

/-!
# A179683: The dimension of the space of invariant tensors in the n-th tensor power of the adjoint representation of the exceptional Lie algebra E7.

The programs for A179683, there is no canonical definition to state claims against.
-/

/-! ## A179683.P3751376663399420527

`A179685(A228051(n+1))`
-/

namespace A179683.P3751376663399420527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179685 (A228051 (n + 1)).toNat

end

end A179683.P3751376663399420527

/-! ## A179683.P7723316877631500622

`A227292(A001222(5^n))`
-/

namespace A179683.P7723316877631500622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227292 (A001222 (5 ^ n)).toNat

end

end A179683.P7723316877631500622

/-! ## A179683.P4056870907347708147

`A179685(n*A294746(n))`
-/

namespace A179683.P4056870907347708147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179685 ((n : ℤ) * A294746 n).toNat

end

end A179683.P4056870907347708147

/-! ## A179683.P2472471010317490710

`A179685(n*A339768(n))`
-/

namespace A179683.P2472471010317490710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179685 ((n : ℤ) * A339768 n).toNat

end

end A179683.P2472471010317490710

/-!
# A179684: The dimension of the space of invariant tensors in the n-th tensor power of the adjoint representation of the exceptional Lie algebra E6.

The programs for A179684, there is no canonical definition to state claims against.
-/

/-! ## A179684.P5849171392280423065

`A005843(A179685(n))-A353173(n)`
-/

namespace A179684.P5849171392280423065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A179685 n).toNat - A353173 n

end

end A179684.P5849171392280423065

/-! ## A179684.P13727148168585333089

`A081753(or(A019538(n+2), A081920(n)))`
-/

namespace A179684.P13727148168585333089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (Int.lor (A019538 (n + 2)) (A081920 n)).toNat

end

end A179684.P13727148168585333089

/-!
# A179686: Let m > k > 0 be odd numbers and operations "m<+>k" and "m<->k" be defined as in A179382 and A179480. Then the sequence m<+>k, m<->(m<+>k), m<+>(m<->(m<+>k)), ... is periodic; a(n) is its smallest period starting from the seeds m=2*n-1 and k=1.

The programs for A179686, there is no canonical definition to state claims against.
-/

/-! ## A179686.P9165243650469281904

`A051702(or(A076123(n+1), A233584(n+1)))`
-/

namespace A179686.P9165243650469281904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051702 (Int.lor (A076123 (n + 1)) (A233584 (n + 1))).toNat

end

end A179686.P9165243650469281904

/-! ## A179686.P16109944045934028611

`A000005(or(A370528(n), A372081(2*n+1)))`
-/

namespace A179686.P16109944045934028611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lor (A370528 n) (A372081 (2 * n + 1))).toNat

end

end A179686.P16109944045934028611

/-! ## A179686.P16756413435761698113

`A001223(lt[A071695(n+1), A131105(2*(n+3))])`
-/

namespace A179686.P16756413435761698113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131105 (2 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A179686.P16756413435761698113

/-!
# A179688: Numbers of the form p^3*q^3*r where p, q, and r are prime.

The programs for A179688, the canonical program `A179688.P398064880116552051` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179688 has offset 1).

The definition of A179688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179688.P11640416138182571882

`∩[A109399(n+1), A350372(n+1)]`
-/

namespace A179688.P11640416138182571882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P11640416138182571882

namespace A179688

/-- `∩[A109399(n+1), A350372(n+1)]` -/
def P11640416138182571882.Spec : Prop :=
  ∀ n, (P11640416138182571882.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P10526055818318511959

`∩[A350372(n+1), A386801(n+1)]`
-/

namespace A179688.P10526055818318511959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P10526055818318511959

namespace A179688

/-- `∩[A350372(n+1), A386801(n+1)]` -/
def P10526055818318511959.Spec : Prop :=
  ∀ n, (P10526055818318511959.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P14623248879741164719

`∩[A046308(n+1), A109399(n+1)]`
-/

namespace A179688.P14623248879741164719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P14623248879741164719

namespace A179688

/-- `∩[A046308(n+1), A109399(n+1)]` -/
def P14623248879741164719.Spec : Prop :=
  ∀ n, (P14623248879741164719.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P6297419629936466077

`∩[A046308(n+1), A377845(n+1)]`
-/

namespace A179688.P6297419629936466077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P6297419629936466077

namespace A179688

/-- `∩[A046308(n+1), A377845(n+1)]` -/
def P6297419629936466077.Spec : Prop :=
  ∀ n, (P6297419629936466077.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P10136673740445976681

`∩[A046308(n+1), A386801(n+1)]`
-/

namespace A179688.P10136673740445976681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P10136673740445976681

namespace A179688

/-- `∩[A046308(n+1), A386801(n+1)]` -/
def P10136673740445976681.Spec : Prop :=
  ∀ n, (P10136673740445976681.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P9867710651578154638

`∩[A046308(n+1), A175742(n+1)]`
-/

namespace A179688.P9867710651578154638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P9867710651578154638

namespace A179688

/-- `∩[A046308(n+1), A175742(n+1)]` -/
def P9867710651578154638.Spec : Prop :=
  ∀ n, (P9867710651578154638.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P6606092760532624316

`∩[A109399(n+1), A175742(n+1)]`
-/

namespace A179688.P6606092760532624316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P6606092760532624316

namespace A179688

/-- `∩[A109399(n+1), A175742(n+1)]` -/
def P6606092760532624316.Spec : Prop :=
  ∀ n, (P6606092760532624316.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P15635522543550662765

`∩[A175742(n+1), A195088(n+1)]`
-/

namespace A179688.P15635522543550662765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195088 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P15635522543550662765

namespace A179688

/-- `∩[A175742(n+1), A195088(n+1)]` -/
def P15635522543550662765.Spec : Prop :=
  ∀ n, (P15635522543550662765.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P398064880116552051

`∩[A175742(n+1), A350372(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179688

/-- `∩[A175742(n+1), A350372(n+1)]` -/
def P398064880116552051.Spec : Prop :=
  ∀ n, (P398064880116552051.a n : ℤ) = A179688 (n + 1)

theorem P398064880116552051.correct : P398064880116552051.Spec := by
  intro n
  simp only [A179688, Nat.add_sub_cancel]

end A179688

/-! ## A179688.P1009262617350735340

`∩[A175742(n+1), A386801(n+1)]`
-/

namespace A179688.P1009262617350735340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P1009262617350735340

namespace A179688

/-- `∩[A175742(n+1), A386801(n+1)]` -/
def P1009262617350735340.Spec : Prop :=
  ∀ n, (P1009262617350735340.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P6649618177897831436

`∩[A175742(n+1), A393947(n+1)]`
-/

namespace A179688.P6649618177897831436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P6649618177897831436

namespace A179688

/-- `∩[A175742(n+1), A393947(n+1)]` -/
def P6649618177897831436.Spec : Prop :=
  ∀ n, (P6649618177897831436.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P4960924133438773378

`∩[A072413(n+1), A175742(n+1)]`
-/

namespace A179688.P4960924133438773378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P4960924133438773378

namespace A179688

/-- `∩[A072413(n+1), A175742(n+1)]` -/
def P4960924133438773378.Spec : Prop :=
  ∀ n, (P4960924133438773378.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P8207479829943775818

`∩[A175742(n+1), A304369(n+1)]`
-/

namespace A179688.P8207479829943775818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P8207479829943775818

namespace A179688

/-- `∩[A175742(n+1), A304369(n+1)]` -/
def P8207479829943775818.Spec : Prop :=
  ∀ n, (P8207479829943775818.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P13578791367889049100

`∩[A175742(n+1), A378430(n+1)]`
-/

namespace A179688.P13578791367889049100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P13578791367889049100

namespace A179688

/-- `∩[A175742(n+1), A378430(n+1)]` -/
def P13578791367889049100.Spec : Prop :=
  ∀ n, (P13578791367889049100.a n : ℤ) = A179688 (n + 1)

end A179688

/-! ## A179688.P5454552326015031740

`filter[A109399(n+1), A358753(#)]`
-/

namespace A179688.P5454552326015031740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109399 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A179688.P5454552326015031740

namespace A179688

/-- `filter[A109399(n+1), A358753(#)]` -/
def P5454552326015031740.Spec : Prop :=
  ∀ n, P5454552326015031740.a n = A179688 (n + 1)

end A179688

/-! ## A179688.P17744929328032986

`filter[A175742(n+1), A358753(#)]`
-/

namespace A179688.P17744929328032986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A179688.P17744929328032986

namespace A179688

/-- `filter[A175742(n+1), A358753(#)]` -/
def P17744929328032986.Spec : Prop :=
  ∀ n, P17744929328032986.a n = A179688 (n + 1)

end A179688

/-! ## A179688.P14933825163779280081

`filter[A386801(n+1), A358753(#)]`
-/

namespace A179688.P14933825163779280081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A179688.P14933825163779280081

namespace A179688

/-- `filter[A386801(n+1), A358753(#)]` -/
def P14933825163779280081.Spec : Prop :=
  ∀ n, P14933825163779280081.a n = A179688 (n + 1)

end A179688

/-!
# A179689: Numbers with prime signature {7,2}, i.e., of form p^7*q^2 with p and q distinct primes.

The programs for A179689, there is no canonical definition to state claims against.
-/

/-! ## A179689.P5773440832823754832

`∩[A046312(n+1), A114128(n+1)]`
-/

namespace A179689.P5773440832823754832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179689.P5773440832823754832

/-! ## A179689.P10774876593490211481

`∩[A046312(n+1), A114129(n+1)]`
-/

namespace A179689.P10774876593490211481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179689.P10774876593490211481

/-! ## A179689.P5144654774698878804

`A179699(n+1)/A332297(A006093(3*(n+1)))`
-/

namespace A179689.P5144654774698878804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179699 (n + 1) : ℚ) / (A332297 (A006093 (3 * (n + 1))).toNat : ℚ)

end

end A179689.P5144654774698878804

/-!
# A179690: Numbers of the form p^2*q^2*r*s where p, q, r, and s are distinct primes.

The programs for A179690, the canonical program `A179690.P2467920889633160340` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179690 has offset 1).

The definition of A179690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179690.P17698999839329115901

`∩[A175746(n+1), A375144(n+1)]`
-/

namespace A179690.P17698999839329115901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P17698999839329115901

namespace A179690

/-- `∩[A175746(n+1), A375144(n+1)]` -/
def P17698999839329115901.Spec : Prop :=
  ∀ n, (P17698999839329115901.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P6329382132976733944

`∩[A175746(n+1), A350375(n+1)]`
-/

namespace A179690.P6329382132976733944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P6329382132976733944

namespace A179690

/-- `∩[A175746(n+1), A350375(n+1)]` -/
def P6329382132976733944.Spec : Prop :=
  ∀ n, (P6329382132976733944.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P2467920889633160340

`∩[A350375(n+1), A375144(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A179690

/-- `∩[A350375(n+1), A375144(n+1)]` -/
def P2467920889633160340.Spec : Prop :=
  ∀ n, (P2467920889633160340.a n : ℤ) = A179690 (n + 1)

theorem P2467920889633160340.correct : P2467920889633160340.Spec := by
  intro n
  simp only [A179690, Nat.add_sub_cancel]

end A179690

/-! ## A179690.P5551465188972688763

`∩[A350375(n+1), A386797(n+1)]`
-/

namespace A179690.P5551465188972688763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P5551465188972688763

namespace A179690

/-- `∩[A350375(n+1), A386797(n+1)]` -/
def P5551465188972688763.Spec : Prop :=
  ∀ n, (P5551465188972688763.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P6020899689472648886

`∩[A175746(n+1), A393947(n+1)]`
-/

namespace A179690.P6020899689472648886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P6020899689472648886

namespace A179690

/-- `∩[A175746(n+1), A393947(n+1)]` -/
def P6020899689472648886.Spec : Prop :=
  ∀ n, (P6020899689472648886.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P6901424760266144202

`∩[A175746(n+1), A386972(n+1)]`
-/

namespace A179690.P6901424760266144202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P6901424760266144202

namespace A179690

/-- `∩[A175746(n+1), A386972(n+1)]` -/
def P6901424760266144202.Spec : Prop :=
  ∀ n, (P6901424760266144202.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P5974905933648568286

`∩[A350375(n+1), A386972(n+1)]`
-/

namespace A179690.P5974905933648568286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P5974905933648568286

namespace A179690

/-- `∩[A350375(n+1), A386972(n+1)]` -/
def P5974905933648568286.Spec : Prop :=
  ∀ n, (P5974905933648568286.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P2774899324263908171

`∩[A375144(n+1), A386972(n+1)]`
-/

namespace A179690.P2774899324263908171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P2774899324263908171

namespace A179690

/-- `∩[A375144(n+1), A386972(n+1)]` -/
def P2774899324263908171.Spec : Prop :=
  ∀ n, (P2774899324263908171.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P15032318020975525078

`∩[A386797(n+1), A386972(n+1)]`
-/

namespace A179690.P15032318020975525078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P15032318020975525078

namespace A179690

/-- `∩[A386797(n+1), A386972(n+1)]` -/
def P15032318020975525078.Spec : Prop :=
  ∀ n, (P15032318020975525078.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P8514385266753043039

`∩[A386972(n+1), A393947(n+1)]`
-/

namespace A179690.P8514385266753043039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P8514385266753043039

namespace A179690

/-- `∩[A386972(n+1), A393947(n+1)]` -/
def P8514385266753043039.Spec : Prop :=
  ∀ n, (P8514385266753043039.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P10962499504364808370

`∩[A175746(n+1), A200521(n+1)]`
-/

namespace A179690.P10962499504364808370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P10962499504364808370

namespace A179690

/-- `∩[A175746(n+1), A200521(n+1)]` -/
def P10962499504364808370.Spec : Prop :=
  ∀ n, (P10962499504364808370.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P3281754234108285791

`∩[A200521(n+1), A375144(n+1)]`
-/

namespace A179690.P3281754234108285791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P3281754234108285791

namespace A179690

/-- `∩[A200521(n+1), A375144(n+1)]` -/
def P3281754234108285791.Spec : Prop :=
  ∀ n, (P3281754234108285791.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P6685152703346647067

`∩[A200521(n+1), A386972(n+1)]`
-/

namespace A179690.P6685152703346647067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P6685152703346647067

namespace A179690

/-- `∩[A200521(n+1), A386972(n+1)]` -/
def P6685152703346647067.Spec : Prop :=
  ∀ n, (P6685152703346647067.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P10334115994569643999

`∩[A175746(n+1), A386977(n+1)]`
-/

namespace A179690.P10334115994569643999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P10334115994569643999

namespace A179690

/-- `∩[A175746(n+1), A386977(n+1)]` -/
def P10334115994569643999.Spec : Prop :=
  ∀ n, (P10334115994569643999.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P15620126896339122977

`∩[A350375(n+1), A386977(n+1)]`
-/

namespace A179690.P15620126896339122977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P15620126896339122977

namespace A179690

/-- `∩[A350375(n+1), A386977(n+1)]` -/
def P15620126896339122977.Spec : Prop :=
  ∀ n, (P15620126896339122977.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P7067583125096676009

`∩[A375144(n+1), A386977(n+1)]`
-/

namespace A179690.P7067583125096676009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P7067583125096676009

namespace A179690

/-- `∩[A375144(n+1), A386977(n+1)]` -/
def P7067583125096676009.Spec : Prop :=
  ∀ n, (P7067583125096676009.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P2672531854353756141

`∩[A386797(n+1), A386977(n+1)]`
-/

namespace A179690.P2672531854353756141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P2672531854353756141

namespace A179690

/-- `∩[A386797(n+1), A386977(n+1)]` -/
def P2672531854353756141.Spec : Prop :=
  ∀ n, (P2672531854353756141.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P9864019051124459886

`∩[A386977(n+1), A393947(n+1)]`
-/

namespace A179690.P9864019051124459886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P9864019051124459886

namespace A179690

/-- `∩[A386977(n+1), A393947(n+1)]` -/
def P9864019051124459886.Spec : Prop :=
  ∀ n, (P9864019051124459886.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P13088062411214358084

`∩[A046306(n+1), A175746(n+1)]`
-/

namespace A179690.P13088062411214358084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P13088062411214358084

namespace A179690

/-- `∩[A046306(n+1), A175746(n+1)]` -/
def P13088062411214358084.Spec : Prop :=
  ∀ n, (P13088062411214358084.a n : ℤ) = A179690 (n + 1)

end A179690

/-! ## A179690.P2519983984215325568

`∩[A046306(n+1), A350375(n+1)]`
-/

namespace A179690.P2519983984215325568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P2519983984215325568

namespace A179690

/-- `∩[A046306(n+1), A350375(n+1)]` -/
def P2519983984215325568.Spec : Prop :=
  ∀ n, (P2519983984215325568.a n : ℤ) = A179690 (n + 1)

end A179690

/-!
# A179691: Numbers p^5*q^2*r where p, q, r are 3 distinct primes.

The programs for A179691, there is no canonical definition to state claims against.
-/

/-! ## A179691.P4718335148966036195

`∩[A195089(n+1), A391841(n+1)]`
-/

namespace A179691.P4718335148966036195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P4718335148966036195

/-! ## A179691.P4081281468901534281

`∩[A175746(n+1), A195089(n+1)]`
-/

namespace A179691.P4081281468901534281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P4081281468901534281

/-! ## A179691.P17668803529039996280

`∩[A175746(n+1), A391841(n+1)]`
-/

namespace A179691.P17668803529039996280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P17668803529039996280

/-! ## A179691.P1188872103282033664

`∩[A046310(n+1), A175746(n+1)]`
-/

namespace A179691.P1188872103282033664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P1188872103282033664

/-! ## A179691.P15217208736994041342

`∩[A072414(n+1), A175746(n+1)]`
-/

namespace A179691.P15217208736994041342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P15217208736994041342

/-! ## A179691.P8707737640906492714

`∩[A175746(n+1), A350372(n+1)]`
-/

namespace A179691.P8707737640906492714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P8707737640906492714

/-! ## A179691.P18090996785625022613

`∩[A175746(n+1), A323024(n+1)]`
-/

namespace A179691.P18090996785625022613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P18090996785625022613

/-! ## A179691.P9994821192310968444

`filter[A175746(n+1), A359764(#)]`
-/

namespace A179691.P9994821192310968444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A179691.P9994821192310968444

/-! ## A179691.P1156809250799702353

`filter[A391841(n+2), A359764(#)]`
-/

namespace A179691.P1156809250799702353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391841 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A179691.P1156809250799702353

/-! ## A179691.P1723183108292834805

`∩[A114987(n+1), A175746(n+1)]`
-/

namespace A179691.P1723183108292834805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179691.P1723183108292834805

/-! ## A179691.P16566633643479969357

`filter[A391841(n+1), A353470(#)]`
-/

namespace A179691.P16566633643479969357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A179691.P16566633643479969357

/-!
# A179692: Numbers of the form p^9*q where p and q are distinct primes.

The programs for A179692, there is no canonical definition to state claims against.
-/

/-! ## A179692.P12959351430232493172

`∩[A030638(n+1), A046314(n+1)]`
-/

namespace A179692.P12959351430232493172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179692.P12959351430232493172

/-! ## A179692.P16347085967669679470

`∩[A030638(n+1), A195092(n+1)]`
-/

namespace A179692.P16347085967669679470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179692.P16347085967669679470

/-! ## A179692.P6777372938799572818

`∩[A030638(n+1), A320892(n+1)]`
-/

namespace A179692.P6777372938799572818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179692.P6777372938799572818

/-! ## A179692.P17239350502296232364

`∩[A030638(n+1), A046309(n+1)]`
-/

namespace A179692.P17239350502296232364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179692.P17239350502296232364

/-! ## A179692.P13006936414503264503

`A090331(A137485(n+1))`
-/

namespace A179692.P13006936414503264503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A137485 (n + 1)).toNat

end

end A179692.P13006936414503264503

/-!
# A179693: Numbers of the form p^4*q*r*s where p, q, r, and s are distinct primes.

The programs for A179693, there is no canonical definition to state claims against.
-/

/-! ## A179693.P6838122736991652566

`∩[A046308(n+1), A175749(n+1)]`
-/

namespace A179693.P6838122736991652566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P6838122736991652566

/-! ## A179693.P17562317050441174832

`∩[A082294(n+1), A175749(n+1)]`
-/

namespace A179693.P17562317050441174832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P17562317050441174832

/-! ## A179693.P1590759498498149888

`∩[A175749(n+1), A195087(n+1)]`
-/

namespace A179693.P1590759498498149888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P1590759498498149888

/-! ## A179693.P11133840855313079262

`∩[A175749(n+1), A200521(n+1)]`
-/

namespace A179693.P11133840855313079262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P11133840855313079262

/-! ## A179693.P2285347179058985785

`∩[A046308(n+1), A350374(n+1)]`
-/

namespace A179693.P2285347179058985785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P2285347179058985785

/-! ## A179693.P15995381051259520710

`∩[A175749(n+1), A350374(n+1)]`
-/

namespace A179693.P15995381051259520710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P15995381051259520710

/-! ## A179693.P10458989812178497437

`∩[A195087(n+1), A350374(n+1)]`
-/

namespace A179693.P10458989812178497437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P10458989812178497437

/-! ## A179693.P7626296172730896847

`∩[A350374(n+1), A386804(n+1)]`
-/

namespace A179693.P7626296172730896847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179693.P7626296172730896847

/-! ## A179693.P17786121732298500395

`filter[A175749(n+1), A355823(#)]`
-/

namespace A179693.P17786121732298500395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A179693.P17786121732298500395

/-!
# A179694: Numbers of the form p^6*q^3 where p and q are distinct primes.

The programs for A179694, the canonical program `A179694.P2135230186693000708` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179694 has offset 1).

The definition of A179694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054753, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A179694.P2135230186693000708

`A054753(n+1)^3`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A179694

/-- `A054753(n+1)^3` -/
def P2135230186693000708.Spec : Prop :=
  ∀ n, P2135230186693000708.a n = A179694 (n + 1)

theorem P2135230186693000708.correct : P2135230186693000708.Spec := by
  intro n
  simp only [A179694, Nat.add_sub_cancel]

end A179694

/-! ## A179694.P18417438823849066075

`sqrt(A189988(n+1)^3)`
-/

namespace A179694.P18417438823849066075
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189988 (n + 1) ^ 3 : ℝ)

end

end A179694.P18417438823849066075

namespace A179694

/-- `sqrt(A189988(n+1)^3)` -/
def P18417438823849066075.Spec : Prop :=
  ∀ n, P18417438823849066075.a n = (A179694 (n + 1) : ℝ)

end A179694

/-! ## A179694.P2619589168734610751

`A054753(n+1)*A189988(n+1)`
-/

namespace A179694.P2619589168734610751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (n + 1) * A189988 (n + 1)

end

end A179694.P2619589168734610751

namespace A179694

/-- `A054753(n+1)*A189988(n+1)` -/
def P2619589168734610751.Spec : Prop :=
  ∀ n, P2619589168734610751.a n = A179694 (n + 1)

end A179694

/-! ## A179694.P15844845499003312365

`(eq[2, A281116(n+1)]+1)^3`
-/

namespace A179694.P15844845499003312365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 3

end

end A179694.P15844845499003312365

namespace A179694

/-- `(eq[2, A281116(n+1)]+1)^3` -/
def P15844845499003312365.Spec : Prop :=
  ∀ n, (P15844845499003312365.a n : ℤ) = A179694 (n + 1)

end A179694

/-! ## A179694.P8763005275805114224

`∩[A014612(n+1), A059269(n+1)]^3`
-/

namespace A179694.P8763005275805114224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A179694.P8763005275805114224

namespace A179694

/-- `∩[A014612(n+1), A059269(n+1)]^3` -/
def P8763005275805114224.Spec : Prop :=
  ∀ n, (P8763005275805114224.a n : ℤ) = A179694 (n + 1)

end A179694

/-! ## A179694.P9569291892371298773

`∩[A014612(n+1), A072587(n+1)]^3`
-/

namespace A179694.P9569291892371298773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A179694.P9569291892371298773

namespace A179694

/-- `∩[A014612(n+1), A072587(n+1)]^3` -/
def P9569291892371298773.Spec : Prop :=
  ∀ n, (P9569291892371298773.a n : ℤ) = A179694 (n + 1)

end A179694

/-! ## A179694.P10235935246304633992

`∩[A007774(n+1), A060687(n+1)]^3`
-/

namespace A179694.P10235935246304633992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 3

end

end A179694.P10235935246304633992

namespace A179694

/-- `∩[A007774(n+1), A060687(n+1)]^3` -/
def P10235935246304633992.Spec : Prop :=
  ∀ n, (P10235935246304633992.a n : ℤ) = A179694 (n + 1)

end A179694

/-! ## A179694.P12492186930563179474

`eq[3, A160086(n)]^3`
-/

namespace A179694.P12492186930563179474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A179694.P12492186930563179474

namespace A179694

/-- `eq[3, A160086(n)]^3` -/
def P12492186930563179474.Spec : Prop :=
  ∀ n, (P12492186930563179474.a n : ℤ) = A179694 (n + 1)

end A179694

/-! ## A179694.P8348972804303798913

`A000578(A054753(n+1))`
-/

namespace A179694.P8348972804303798913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A054753 (n + 1)).toNat

end

end A179694.P8348972804303798913

namespace A179694

/-- `A000578(A054753(n+1))` -/
def P8348972804303798913.Spec : Prop :=
  ∀ n, P8348972804303798913.a n = A179694 (n + 1)

end A179694

/-! ## A179694.P15046498478461497834

`A000578(eq[3, A160086(n)])`
-/

namespace A179694.P15046498478461497834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A179694.P15046498478461497834

namespace A179694

/-- `A000578(eq[3, A160086(n)])` -/
def P15046498478461497834.Spec : Prop :=
  ∀ n, P15046498478461497834.a n = A179694 (n + 1)

end A179694

/-! ## A179694.P1422939005471916587

`A007955(A054753(2*n+1-n))`
-/

namespace A179694.P1422939005471916587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (A054753 (2 * n + 1 - n)).toNat

end

end A179694.P1422939005471916587

namespace A179694

/-- `A007955(A054753(2*n+1-n))` -/
def P1422939005471916587.Spec : Prop :=
  ∀ n, P1422939005471916587.a n = A179694 (n + 1)

end A179694

/-!
# A179695: Numbers of the form p^3*q^2*r^2 where p, q, and r are distinct primes.

The programs for A179695, there is no canonical definition to state claims against.
-/

/-! ## A179695.P6793594317080662279

`∩[A175746(n+1), A318720(n+1)]`
-/

namespace A179695.P6793594317080662279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P6793594317080662279

/-! ## A179695.P2705981110177186363

`∩[A175746(n+1), A338325(n+1)]`
-/

namespace A179695.P2705981110177186363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P2705981110177186363

/-! ## A179695.P4072611896632282936

`∩[A175746(n+1), A375073(n+1)]`
-/

namespace A179695.P4072611896632282936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P4072611896632282936

/-! ## A179695.P10015488710424763325

`∩[A175746(n+1), A375143(n+1)]`
-/

namespace A179695.P10015488710424763325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P10015488710424763325

/-! ## A179695.P10909085509466726596

`∩[A175746(n+1), A390950(n+1)]`
-/

namespace A179695.P10909085509466726596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P10909085509466726596

/-! ## A179695.P4368307010168152469

`∩[A175746(n+1), A392927(n+1)]`
-/

namespace A179695.P4368307010168152469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P4368307010168152469

/-! ## A179695.P6376744311508799079

`∩[A175746(n+1), A393708(n+1)]`
-/

namespace A179695.P6376744311508799079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P6376744311508799079

/-! ## A179695.P9124281959556362458

`∩[A175746(n+1), A394000(n+1)]`
-/

namespace A179695.P9124281959556362458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P9124281959556362458

/-! ## A179695.P5302224270739160055

`∩[A175746(n+1), A394050(n+1)]`
-/

namespace A179695.P5302224270739160055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P5302224270739160055

/-! ## A179695.P10678611826137286321

`∩[A175746(n+1), A395197(n+1)]`
-/

namespace A179695.P10678611826137286321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P10678611826137286321

/-! ## A179695.P1384343476796022925

`∩[A175746(n+1), A375074(n+1)]`
-/

namespace A179695.P1384343476796022925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179695.P1384343476796022925

/-!
# A179696: Numbers with prime signature {7,1,1}, i.e., of form p^7*q*r with p, q and r distinct primes.

The programs for A179696, the canonical program `A179696.P11726697368278326928` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179696 has offset 1).

The definition of A179696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179696.P13707129699404511209

`∩[A046312(n+1), A175742(n+1)]`
-/

namespace A179696.P13707129699404511209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179696.P13707129699404511209

namespace A179696

/-- `∩[A046312(n+1), A175742(n+1)]` -/
def P13707129699404511209.Spec : Prop :=
  ∀ n, (P13707129699404511209.a n : ℤ) = A179696 (n + 1)

end A179696

/-! ## A179696.P11726697368278326928

`∩[A079712(n+1), A175742(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A179696

/-- `∩[A079712(n+1), A175742(n+1)]` -/
def P11726697368278326928.Spec : Prop :=
  ∀ n, (P11726697368278326928.a n : ℤ) = A179696 (n + 1)

theorem P11726697368278326928.correct : P11726697368278326928.Spec := by
  intro n
  simp only [A179696, Nat.add_sub_cancel]

end A179696

/-! ## A179696.P16360630043213474671

`∩[A175742(n+1), A195090(n+1)]`
-/

namespace A179696.P16360630043213474671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179696.P16360630043213474671

namespace A179696

/-- `∩[A175742(n+1), A195090(n+1)]` -/
def P16360630043213474671.Spec : Prop :=
  ∀ n, (P16360630043213474671.a n : ℤ) = A179696 (n + 1)

end A179696

/-! ## A179696.P11801051295420194904

`A179747(n+1)/A082064(A198047(n+1))`
-/

namespace A179696.P11801051295420194904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179747 (n + 1) : ℚ) / (A082064 (A198047 (n + 1)).toNat : ℚ)

end

end A179696.P11801051295420194904

namespace A179696

/-- `A179747(n+1)/A082064(A198047(n+1))` -/
def P11801051295420194904.Spec : Prop :=
  ∀ n, P11801051295420194904.a n = (A179696 (n + 1) : ℚ)

end A179696

/-! ## A179696.P17986455465639654361

`A179747(n+1)/A126773(A353635(2*(n+1)))`
-/

namespace A179696.P17986455465639654361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179747 (n + 1) : ℚ) / (A126773 (A353635 (2 * (n + 1))).toNat : ℚ)

end

end A179696.P17986455465639654361

namespace A179696

/-- `A179747(n+1)/A126773(A353635(2*(n+1)))` -/
def P17986455465639654361.Spec : Prop :=
  ∀ n, P17986455465639654361.a n = (A179696 (n + 1) : ℚ)

end A179696

/-!
# A179697: Base-10 representation of numbers k which, in base 2, satisfy abs(k + reverse(k) - reverse(k + reverse(k))) = abs(k - reverse(k)) + reverse(abs(k - reverse(k))) = k.

The programs for A179697, there is no canonical definition to state claims against.
-/

/-! ## A179697.P4018653729679895169

`∩[A164302(n+1), A180204(n+1)]`
-/

namespace A179697.P4018653729679895169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179697.P4018653729679895169

/-! ## A179697.P13156876471154439544

`A151724(2^(n+4))`
-/

namespace A179697.P13156876471154439544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 (2 ^ (n + 4))

end

end A179697.P13156876471154439544

/-! ## A179697.P6180758035686329829

`A225561(40*2^n)`
-/

namespace A179697.P6180758035686329829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (40 * 2 ^ n)

end

end A179697.P6180758035686329829

/-! ## A179697.P3023078997436827562

`A241838(40*2^n)`
-/

namespace A179697.P3023078997436827562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241838 (40 * 2 ^ n)

end

end A179697.P3023078997436827562

/-!
# A179698: Numbers of the form p^4*q^3*r where p, q, and r are distinct primes.

The programs for A179698, there is no canonical definition to state claims against.
-/

/-! ## A179698.P2290348893172811771

`∩[A175749(n+1), A195089(n+1)]`
-/

namespace A179698.P2290348893172811771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179698.P2290348893172811771

/-! ## A179698.P1456701552387102540

`∩[A046310(n+1), A175749(n+1)]`
-/

namespace A179698.P1456701552387102540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179698.P1456701552387102540

/-! ## A179698.P6747908581096134249

`∩[A072414(n+1), A175749(n+1)]`
-/

namespace A179698.P6747908581096134249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179698.P6747908581096134249

/-! ## A179698.P16457756101573241330

`∩[A175749(n+1), A350372(n+1)]`
-/

namespace A179698.P16457756101573241330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179698.P16457756101573241330

/-! ## A179698.P5794368896792589616

`∩[A175749(n+1), A323024(n+1)]`
-/

namespace A179698.P5794368896792589616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179698.P5794368896792589616

/-! ## A179698.P16254341437843357027

`∩[A175749(n+1), A378430(n+1)]`
-/

namespace A179698.P16254341437843357027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179698.P16254341437843357027

/-! ## A179698.P6223933323394896469

`filter[A069781(n+1), A359764(#)]`
-/

namespace A179698.P6223933323394896469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A179698.P6223933323394896469

/-! ## A179698.P3999409478645945455

`filter[A175749(n+1), A359764(#)]`
-/

namespace A179698.P3999409478645945455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A179698.P3999409478645945455

/-!
# A179699: Numbers of the form p^8*q^2 where p and q are distinct primes.

The programs for A179699, the canonical program `A179699.P1483605779152392052` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A179699 has offset 1).

The definition of A179699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A179699.P1483605779152392052

`A178739(n+1)²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A179699

/-- `A178739(n+1)²` -/
def P1483605779152392052.Spec : Prop :=
  ∀ n, P1483605779152392052.a n = A179699 (n + 1)

theorem P1483605779152392052.correct : P1483605779152392052.Spec := by
  intro n
  simp only [A179699, Nat.add_sub_cancel]

end A179699

/-! ## A179699.P2536280753573443349

`A178739(Δ[n²]-n)^2`
-/

namespace A179699.P2536280753573443349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A179699.P2536280753573443349

namespace A179699

/-- `A178739(Δ[n²]-n)^2` -/
def P2536280753573443349.Spec : Prop :=
  ∀ n, P2536280753573443349.a n = A179699 (n + 1)

end A179699

/-! ## A179699.P11200606364812048168

`∩[A030628(n+1), A082294(n+1)]²`
-/

namespace A179699.P11200606364812048168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P11200606364812048168

namespace A179699

/-- `∩[A030628(n+1), A082294(n+1)]²` -/
def P11200606364812048168.Spec : Prop :=
  ∀ n, (P11200606364812048168.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P3607262223104520144

`∩[A030628(n+1), A195087(n+1)]²`
-/

namespace A179699.P3607262223104520144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P3607262223104520144

namespace A179699

/-- `∩[A030628(n+1), A195087(n+1)]²` -/
def P3607262223104520144.Spec : Prop :=
  ∀ n, (P3607262223104520144.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P13075400819206759560

`∩[A082294(n+1), A187039(n+1)]²`
-/

namespace A179699.P13075400819206759560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P13075400819206759560

namespace A179699

/-- `∩[A082294(n+1), A187039(n+1)]²` -/
def P13075400819206759560.Spec : Prop :=
  ∀ n, (P13075400819206759560.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P144998235530883427

`∩[A081619(n+1), A195087(n+1)]²`
-/

namespace A179699.P144998235530883427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P144998235530883427

namespace A179699

/-- `∩[A081619(n+1), A195087(n+1)]²` -/
def P144998235530883427.Spec : Prop :=
  ∀ n, (P144998235530883427.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P9898483663074448620

`∩[A030628(n+1), A345381(n+1)]²`
-/

namespace A179699.P9898483663074448620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P9898483663074448620

namespace A179699

/-- `∩[A030628(n+1), A345381(n+1)]²` -/
def P9898483663074448620.Spec : Prop :=
  ∀ n, (P9898483663074448620.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P17389959108818898010

`∩[A082294(n+1), A360902(n+1)]²`
-/

namespace A179699.P17389959108818898010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P17389959108818898010

namespace A179699

/-- `∩[A082294(n+1), A360902(n+1)]²` -/
def P17389959108818898010.Spec : Prop :=
  ∀ n, (P17389959108818898010.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P9287965580128689722

`∩[A195087(n+1), A253388(n+1)]²`
-/

namespace A179699.P9287965580128689722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P9287965580128689722

namespace A179699

/-- `∩[A195087(n+1), A253388(n+1)]²` -/
def P9287965580128689722.Spec : Prop :=
  ∀ n, (P9287965580128689722.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P16882409043975410259

`∩[A195087(n+1), A345381(n+1)]²`
-/

namespace A179699.P16882409043975410259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P16882409043975410259

namespace A179699

/-- `∩[A195087(n+1), A345381(n+1)]²` -/
def P16882409043975410259.Spec : Prop :=
  ∀ n, (P16882409043975410259.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P5507984951456015604

`∩[A253388(n+1), A360902(n+1)]²`
-/

namespace A179699.P5507984951456015604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P5507984951456015604

namespace A179699

/-- `∩[A253388(n+1), A360902(n+1)]²` -/
def P5507984951456015604.Spec : Prop :=
  ∀ n, (P5507984951456015604.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P20394266419847843

`∩[A345381(n+1), A360902(n+1)]²`
-/

namespace A179699.P20394266419847843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P20394266419847843

namespace A179699

/-- `∩[A345381(n+1), A360902(n+1)]²` -/
def P20394266419847843.Spec : Prop :=
  ∀ n, (P20394266419847843.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P14347378255800816267

`A178739(A000027(n+1))*A178739(n+1)`
-/

namespace A179699.P14347378255800816267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (A000027 (n + 1)).toNat * A178739 (n + 1)

end

end A179699.P14347378255800816267

namespace A179699

/-- `A178739(A000027(n+1))*A178739(n+1)` -/
def P14347378255800816267.Spec : Prop :=
  ∀ n, P14347378255800816267.a n = A179699 (n + 1)

end A179699

/-! ## A179699.P9986146864270216004

`A178739(n+1)%A179690(n+1)*A178739(n+1)`
-/

namespace A179699.P9986146864270216004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178739 (n + 1)) (A179690 (n + 1)) * A178739 (n + 1)

end

end A179699.P9986146864270216004

namespace A179699

/-- `A178739(n+1)%A179690(n+1)*A178739(n+1)` -/
def P9986146864270216004.Spec : Prop :=
  ∀ n, P9986146864270216004.a n = A179699 (n + 1)

end A179699

/-! ## A179699.P914166286245893923

`(A178739(n+2)-Δ[A178739(n+1)])^2`
-/

namespace A179699.P914166286245893923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178739 (n + 2) - (f1 (n + 1) - f1 n)) ^ 2

end

end A179699.P914166286245893923

namespace A179699

/-- `(A178739(n+2)-Δ[A178739(n+1)])^2` -/
def P914166286245893923.Spec : Prop :=
  ∀ n, P914166286245893923.a n = A179699 (n + 1)

theorem P914166286245893923.correct : P914166286245893923.Spec := by
  intro n
  simp only [A179699, Nat.add_sub_cancel, A179699.P914166286245893923.f1, A179699.P914166286245893923.a, A179699.P1483605779152392052.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A179699

/-! ## A179699.P12857353207970742119

`∩[A014614(n+1), A030628(n+1)]²`
-/

namespace A179699.P12857353207970742119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P12857353207970742119

namespace A179699

/-- `∩[A014614(n+1), A030628(n+1)]²` -/
def P12857353207970742119.Spec : Prop :=
  ∀ n, (P12857353207970742119.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P11533202705928723901

`∩[A014614(n+1), A130897(n+1)]²`
-/

namespace A179699.P11533202705928723901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P11533202705928723901

namespace A179699

/-- `∩[A014614(n+1), A130897(n+1)]²` -/
def P11533202705928723901.Spec : Prop :=
  ∀ n, (P11533202705928723901.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P16141666665694314370

`∩[A014614(n+1), A322448(n+1)]²`
-/

namespace A179699.P16141666665694314370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P16141666665694314370

namespace A179699

/-- `∩[A014614(n+1), A322448(n+1)]²` -/
def P16141666665694314370.Spec : Prop :=
  ∀ n, (P16141666665694314370.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P11270509325937257430

`∩[A014614(n+1), A336595(n+1)]²`
-/

namespace A179699.P11270509325937257430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P11270509325937257430

namespace A179699

/-- `∩[A014614(n+1), A336595(n+1)]²` -/
def P11270509325937257430.Spec : Prop :=
  ∀ n, (P11270509325937257430.a n : ℤ) = A179699 (n + 1)

end A179699

/-! ## A179699.P12670537582746656500

`∩[A014614(n+1), A345381(n+1)]²`
-/

namespace A179699.P12670537582746656500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A179699.P12670537582746656500

namespace A179699

/-- `∩[A014614(n+1), A345381(n+1)]²` -/
def P12670537582746656500.Spec : Prop :=
  ∀ n, (P12670537582746656500.a n : ℤ) = A179699 (n + 1)

end A179699


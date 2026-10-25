import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C014
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
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.Opaque.C001
import Seq.Opaque.C002

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A017300: a(n) = (10*n + 2)^8.

The programs for A017300, the canonical program `A017300.P1178456864602225787` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017300 has offset 0).

The definition of A017300 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^8` (program `A017300.P1178456864602225787`, by `A017300.P1178456864602225787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017300.P1178456864602225787

`(10*n+2)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017300

/-- `(10*n+2)^8` -/
def P1178456864602225787.Spec : Prop :=
  ∀ n, (P1178456864602225787.a n : ℤ) = A017300 n

theorem P1178456864602225787.correct : P1178456864602225787.Spec := by
  intro n
  simp only [A017300]

end A017300

/-! ## A017300.P6235209301165171521

`A017296(n)²`
-/

namespace A017300.P6235209301165171521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017296 n ^ 2

end

end A017300.P6235209301165171521

namespace A017300

/-- `A017296(n)²` -/
def P6235209301165171521.Spec : Prop :=
  ∀ n, P6235209301165171521.a n = A017300 n

theorem P6235209301165171521.correct : P6235209301165171521.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P6235209301165171521.a, A017300.P1178456864602225787.a, A017296, A017296.P1598874217564621727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P15626887464079412027

`A017294(n)²²`
-/

namespace A017300.P15626887464079412027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017294 n ^ 2) ^ 2

end

end A017300.P15626887464079412027

namespace A017300

/-- `A017294(n)²²` -/
def P15626887464079412027.Spec : Prop :=
  ∀ n, P15626887464079412027.a n = A017300 n

theorem P15626887464079412027.correct : P15626887464079412027.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P15626887464079412027.a, A017300.P1178456864602225787.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P7231385773370302604

`A017293(n)²²²`
-/

namespace A017300.P7231385773370302604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017293 n ^ 2) ^ 2) ^ 2

end

end A017300.P7231385773370302604

namespace A017300

/-- `A017293(n)²²²` -/
def P7231385773370302604.Spec : Prop :=
  ∀ n, P7231385773370302604.a n = A017300 n

theorem P7231385773370302604.correct : P7231385773370302604.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P7231385773370302604.a, A017300.P1178456864602225787.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P3468262879926797041

`(A017281(n)+1)²²²`
-/

namespace A017300.P3468262879926797041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017281 n + 1) ^ 2) ^ 2) ^ 2

end

end A017300.P3468262879926797041

namespace A017300

/-- `(A017281(n)+1)²²²` -/
def P3468262879926797041.Spec : Prop :=
  ∀ n, P3468262879926797041.a n = A017300 n

theorem P3468262879926797041.correct : P3468262879926797041.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P3468262879926797041.a, A017300.P1178456864602225787.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P6708865634382653585

`(A008592(n)+2)²²²`
-/

namespace A017300.P6708865634382653585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008592 n + 2) ^ 2) ^ 2) ^ 2

end

end A017300.P6708865634382653585

namespace A017300

/-- `(A008592(n)+2)²²²` -/
def P6708865634382653585.Spec : Prop :=
  ∀ n, P6708865634382653585.a n = A017300 n

theorem P6708865634382653585.correct : P6708865634382653585.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P6708865634382653585.a, A017300.P1178456864602225787.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P8371644872574763230

`(1-A017305(n))²²²`
-/

namespace A017300.P8371644872574763230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017305 n) ^ 2) ^ 2) ^ 2

end

end A017300.P8371644872574763230

namespace A017300

/-- `(1-A017305(n))²²²` -/
def P8371644872574763230.Spec : Prop :=
  ∀ n, P8371644872574763230.a n = A017300 n

theorem P8371644872574763230.correct : P8371644872574763230.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P8371644872574763230.a, A017300.P1178456864602225787.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P642037099151170362

`(2-A017317(n))²²²`
-/

namespace A017300.P642037099151170362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017317 n) ^ 2) ^ 2) ^ 2

end

end A017300.P642037099151170362

namespace A017300

/-- `(2-A017317(n))²²²` -/
def P642037099151170362.Spec : Prop :=
  ∀ n, P642037099151170362.a n = A017300 n

theorem P642037099151170362.correct : P642037099151170362.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P642037099151170362.a, A017300.P1178456864602225787.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P1291935881069453584

`(2*A016861(n))²²²`
-/

namespace A017300.P1291935881069453584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016861 n) ^ 2) ^ 2) ^ 2

end

end A017300.P1291935881069453584

namespace A017300

/-- `(2*A016861(n))²²²` -/
def P1291935881069453584.Spec : Prop :=
  ∀ n, P1291935881069453584.a n = A017300 n

theorem P1291935881069453584.correct : P1291935881069453584.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P1291935881069453584.a, A017300.P1178456864602225787.a, A016861, A016861.P12760207785627616280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P13544742320087333540

`(A017185(n)+n)²²²`
-/

namespace A017300.P13544742320087333540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017185 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017300.P13544742320087333540

namespace A017300

/-- `(A017185(n)+n)²²²` -/
def P13544742320087333540.Spec : Prop :=
  ∀ n, P13544742320087333540.a n = A017300 n

theorem P13544742320087333540.correct : P13544742320087333540.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P13544742320087333540.a, A017300.P1178456864602225787.a, A017185, A017185.P12174419037402659888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P1148840981877489405

`(n-A017413(n))²²²`
-/

namespace A017300.P1148840981877489405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017413 n) ^ 2) ^ 2) ^ 2

end

end A017300.P1148840981877489405

namespace A017300

/-- `(n-A017413(n))²²²` -/
def P1148840981877489405.Spec : Prop :=
  ∀ n, P1148840981877489405.a n = A017300 n

theorem P1148840981877489405.correct : P1148840981877489405.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P1148840981877489405.a, A017300.P1178456864602225787.a, A017413, A017413.P11529384767991400928.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P18359175917336064388

`A017294(n)*A017298(n)`
-/

namespace A017300.P18359175917336064388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n * A017298 n

end

end A017300.P18359175917336064388

namespace A017300

/-- `A017294(n)*A017298(n)` -/
def P18359175917336064388.Spec : Prop :=
  ∀ n, P18359175917336064388.a n = A017300 n

theorem P18359175917336064388.correct : P18359175917336064388.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P18359175917336064388.a, A017300.P1178456864602225787.a, A017294, A017294.P377073045484030866.a, A017298, A017298.P17607095530800570329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P9444144392489500707

`A017295(n)*A017297(n)`
-/

namespace A017300.P9444144392489500707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n * A017297 n

end

end A017300.P9444144392489500707

namespace A017300

/-- `A017295(n)*A017297(n)` -/
def P9444144392489500707.Spec : Prop :=
  ∀ n, P9444144392489500707.a n = A017300 n

theorem P9444144392489500707.correct : P9444144392489500707.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P9444144392489500707.a, A017300.P1178456864602225787.a, A017295, A017295.P1533593726141428041.a, A017297, A017297.P7548638678609786491.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P1838623492229205650

`A017293(n)*A017293(n)*A017298(n)`
-/

namespace A017300.P1838623492229205650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n * A017293 n * A017298 n

end

end A017300.P1838623492229205650

namespace A017300

/-- `A017293(n)*A017293(n)*A017298(n)` -/
def P1838623492229205650.Spec : Prop :=
  ∀ n, P1838623492229205650.a n = A017300 n

theorem P1838623492229205650.correct : P1838623492229205650.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P1838623492229205650.a, A017300.P1178456864602225787.a, A017293, A017293.P18006279673560884615.a, A017298, A017298.P17607095530800570329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P2076783508034167230

`A017294(n)*A017295(n)*A017295(n)`
-/

namespace A017300.P2076783508034167230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017294 n * A017295 n * A017295 n

end

end A017300.P2076783508034167230

namespace A017300

/-- `A017294(n)*A017295(n)*A017295(n)` -/
def P2076783508034167230.Spec : Prop :=
  ∀ n, P2076783508034167230.a n = A017300 n

theorem P2076783508034167230.correct : P2076783508034167230.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P2076783508034167230.a, A017300.P1178456864602225787.a, A017294, A017294.P377073045484030866.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P7236480689278942330

`Δ[A135706(n)]²²²`
-/

namespace A017300.P7236480689278942330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017300.P7236480689278942330

namespace A017300

/-- `Δ[A135706(n)]²²²` -/
def P7236480689278942330.Spec : Prop :=
  ∀ n, P7236480689278942330.a n = A017300 n

theorem P7236480689278942330.correct : P7236480689278942330.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P7236480689278942330.f1, A017300.P7236480689278942330.a, A017300.P1178456864602225787.a, A135706, A135706.P11401560679944584335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P15294514520011178190

`A016876(2*n)²`
-/

namespace A017300.P15294514520011178190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016876 (2 * n) ^ 2

end

end A017300.P15294514520011178190

namespace A017300

/-- `A016876(2*n)²` -/
def P15294514520011178190.Spec : Prop :=
  ∀ n, P15294514520011178190.a n = A017300 n

theorem P15294514520011178190.correct : P15294514520011178190.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P15294514520011178190.a, A017300.P1178456864602225787.a, A016876, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P3772618604070556354

`A016880(2*n)`
-/

namespace A017300.P3772618604070556354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016880 (2 * n)

end

end A017300.P3772618604070556354

namespace A017300

/-- `A016880(2*n)` -/
def P3772618604070556354.Spec : Prop :=
  ∀ n, P3772618604070556354.a n = A017300 n

theorem P3772618604070556354.correct : P3772618604070556354.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P3772618604070556354.a, A017300.P1178456864602225787.a, A016880, A016880.P10254929196614950629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P10699710187075364005

`A016874(2*n)²²`
-/

namespace A017300.P10699710187075364005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016874 (2 * n) ^ 2) ^ 2

end

end A017300.P10699710187075364005

namespace A017300

/-- `A016874(2*n)²²` -/
def P10699710187075364005.Spec : Prop :=
  ∀ n, P10699710187075364005.a n = A017300 n

theorem P10699710187075364005.correct : P10699710187075364005.Spec := by
  intro n
  simp only [A017300, Nat.add_sub_cancel, A017300.P10699710187075364005.a, A017300.P1178456864602225787.a, A016874, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017300

/-! ## A017300.P9314478086884824713

`A273375(Δ[n²])²²`
-/

namespace A017300.P9314478086884824713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273375 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017300.P9314478086884824713

namespace A017300

/-- `A273375(Δ[n²])²²` -/
def P9314478086884824713.Spec : Prop :=
  ∀ n, P9314478086884824713.a n = A017300 n

end A017300

/-!
# A017301: a(n) = (10*n + 2)^9.

The programs for A017301, the canonical program `A017301.P10489631051312385110` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017301 has offset 0).

The definition of A017301 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+2)^9` (program `A017301.P10489631051312385110`, by `A017301.P10489631051312385110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017301.P10489631051312385110

`(10*n+2)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017301

/-- `(10*n+2)^9` -/
def P10489631051312385110.Spec : Prop :=
  ∀ n, (P10489631051312385110.a n : ℤ) = A017301 n

theorem P10489631051312385110.correct : P10489631051312385110.Spec := by
  intro n
  simp only [A017301]

end A017301

/-! ## A017301.P4458183976850055467

`sqrt(A017298(n)^3)`
-/

namespace A017301.P4458183976850055467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017298 n ^ 3 : ℝ)

end

end A017301.P4458183976850055467

namespace A017301

/-- `sqrt(A017298(n)^3)` -/
def P4458183976850055467.Spec : Prop :=
  ∀ n, P4458183976850055467.a n = (A017301 n : ℝ)

end A017301

/-! ## A017301.P13947295305400601395

`A017295(n)*A017298(n)`
-/

namespace A017301.P13947295305400601395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n * A017298 n

end

end A017301.P13947295305400601395

namespace A017301

/-- `A017295(n)*A017298(n)` -/
def P13947295305400601395.Spec : Prop :=
  ∀ n, P13947295305400601395.a n = A017301 n

theorem P13947295305400601395.correct : P13947295305400601395.Spec := by
  intro n
  simp only [A017301, Nat.add_sub_cancel, A017301.P13947295305400601395.a, A017301.P10489631051312385110.a, A017295, A017295.P1533593726141428041.a, A017298, A017298.P17607095530800570329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017301

/-! ## A017301.P2022840900770244483

`A017294(n)²²*A017293(n)`
-/

namespace A017301.P2022840900770244483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017294 n ^ 2) ^ 2 * A017293 n

end

end A017301.P2022840900770244483

namespace A017301

/-- `A017294(n)²²*A017293(n)` -/
def P2022840900770244483.Spec : Prop :=
  ∀ n, P2022840900770244483.a n = A017301 n

theorem P2022840900770244483.correct : P2022840900770244483.Spec := by
  intro n
  simp only [A017301, Nat.add_sub_cancel, A017301.P2022840900770244483.a, A017301.P10489631051312385110.a, A017293, A017293.P18006279673560884615.a, A017294, A017294.P377073045484030866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017301

/-! ## A017301.P14172038150242992020

`A017296(n)²*sqrt(sqrt(A017296(n)))`
-/

namespace A017301.P14172038150242992020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017296 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017296 n : ℝ))

end

end A017301.P14172038150242992020

namespace A017301

/-- `A017296(n)²*sqrt(sqrt(A017296(n)))` -/
def P14172038150242992020.Spec : Prop :=
  ∀ n, P14172038150242992020.a n = (A017301 n : ℝ)

end A017301

/-! ## A017301.P16163342358596263239

`sqrt(A017298(n))*A017298(n%(n+1))`
-/

namespace A017301.P16163342358596263239
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017298 n : ℝ) * (A017298 (n % (n + 1)) : ℝ)

end

end A017301.P16163342358596263239

namespace A017301

/-- `sqrt(A017298(n))*A017298(n%(n+1))` -/
def P16163342358596263239.Spec : Prop :=
  ∀ n, P16163342358596263239.a n = (A017301 n : ℝ)

end A017301

/-! ## A017301.P15082044981522872239

`A016881(2*n)`
-/

namespace A017301.P15082044981522872239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016881 (2 * n)

end

end A017301.P15082044981522872239

namespace A017301

/-- `A016881(2*n)` -/
def P15082044981522872239.Spec : Prop :=
  ∀ n, P15082044981522872239.a n = A017301 n

theorem P15082044981522872239.correct : P15082044981522872239.Spec := by
  intro n
  simp only [A017301, Nat.add_sub_cancel, A017301.P15082044981522872239.a, A017301.P10489631051312385110.a, A016881, A016881.P1540911032170598906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017301

/-! ## A017301.P7846886189819462294

`A016873(2*n)*A016880(2*n)`
-/

namespace A017301.P7846886189819462294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n) * A016880 (2 * n)

end

end A017301.P7846886189819462294

namespace A017301

/-- `A016873(2*n)*A016880(2*n)` -/
def P7846886189819462294.Spec : Prop :=
  ∀ n, P7846886189819462294.a n = A017301 n

theorem P7846886189819462294.correct : P7846886189819462294.Spec := by
  intro n
  simp only [A017301, Nat.add_sub_cancel, A017301.P7846886189819462294.a, A017301.P10489631051312385110.a, A016873, A016873.P366335242068170250.a, A016880, A016880.P10254929196614950629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017301

/-! ## A017301.P11399507653038208318

`A016749(A016945(n)-(n+2))`
-/

namespace A017301.P11399507653038208318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n - (n + 2 : ℤ)).toNat

end

end A017301.P11399507653038208318

namespace A017301

/-- `A016749(A016945(n)-(n+2))` -/
def P11399507653038208318.Spec : Prop :=
  ∀ n, P11399507653038208318.a n = A017301 n

end A017301

/-! ## A017301.P7100229112981855911

`A001017(A017293(n))`
-/

namespace A017301.P7100229112981855911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017293 n).toNat

end

end A017301.P7100229112981855911

namespace A017301

/-- `A001017(A017293(n))` -/
def P7100229112981855911.Spec : Prop :=
  ∀ n, P7100229112981855911.a n = A017301 n

end A017301

/-! ## A017301.P130992108977264693

`A001017(A017281(n)+1)`
-/

namespace A017301.P130992108977264693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + 1).toNat

end

end A017301.P130992108977264693

namespace A017301

/-- `A001017(A017281(n)+1)` -/
def P130992108977264693.Spec : Prop :=
  ∀ n, P130992108977264693.a n = A017301 n

end A017301

/-! ## A017301.P336017316037407285

`A001017(A008592(n)+2)`
-/

namespace A017301.P336017316037407285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008592 n + 2).toNat

end

end A017301.P336017316037407285

namespace A017301

/-- `A001017(A008592(n)+2)` -/
def P336017316037407285.Spec : Prop :=
  ∀ n, P336017316037407285.a n = A017301 n

end A017301

/-! ## A017301.P2524464953209193038

`A001017(A017305(n)-1)`
-/

namespace A017301.P2524464953209193038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017305 n - 1).toNat

end

end A017301.P2524464953209193038

namespace A017301

/-- `A001017(A017305(n)-1)` -/
def P2524464953209193038.Spec : Prop :=
  ∀ n, P2524464953209193038.a n = A017301 n

end A017301

/-! ## A017301.P11991766291707589346

`A001017(A008587(2*n)+2)`
-/

namespace A017301.P11991766291707589346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n) + 2).toNat

end

end A017301.P11991766291707589346

namespace A017301

/-- `A001017(A008587(2*n)+2)` -/
def P11991766291707589346.Spec : Prop :=
  ∀ n, P11991766291707589346.a n = A017301 n

end A017301

/-! ## A017301.P17211704546854564136

`A001017(A008591(n)+2+n)`
-/

namespace A017301.P17211704546854564136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008591 n + 2 + (n : ℤ)).toNat

end

end A017301.P17211704546854564136

namespace A017301

/-- `A001017(A008591(n)+2+n)` -/
def P17211704546854564136.Spec : Prop :=
  ∀ n, P17211704546854564136.a n = A017301 n

end A017301

/-! ## A017301.P966713045756183913

`A001017(2*(A016813(n)+n))`
-/

namespace A017301.P966713045756183913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (2 * (A016813 n + (n : ℤ))).toNat

end

end A017301.P966713045756183913

namespace A017301

/-- `A001017(2*(A016813(n)+n))` -/
def P966713045756183913.Spec : Prop :=
  ∀ n, P966713045756183913.a n = A017301 n

end A017301

/-! ## A017301.P17992801003555042037

`A000578(A017293(n))*A017298(n)`
-/

namespace A017301.P17992801003555042037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017293 n).toNat * A017298 n

end

end A017301.P17992801003555042037

namespace A017301

/-- `A000578(A017293(n))*A017298(n)` -/
def P17992801003555042037.Spec : Prop :=
  ∀ n, P17992801003555042037.a n = A017301 n

end A017301

/-!
# A017302: 

The programs for A017302, there is no canonical definition to state claims against.
-/

/-! ## A017302.P8077548078838105756

`(10*n+2)^10`
-/

namespace A017302.P8077548078838105756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 2) ^ 10

end

end A017302.P8077548078838105756

/-! ## A017302.P9876849467488368064

`record[(-(n+2))^gcd(10, n)]`
-/

namespace A017302.P9876849467488368064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ Nat.gcd 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017302.P9876849467488368064

/-! ## A017302.P3354917494966440165

`A017297(n)²`
-/

namespace A017302.P3354917494966440165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017297 n ^ 2

end

end A017302.P3354917494966440165

/-! ## A017302.P5964084595314791640

`sqrt(A017296(n)^5)`
-/

namespace A017302.P5964084595314791640
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017296 n ^ 5 : ℝ)

end

end A017302.P5964084595314791640

/-! ## A017302.P13999606373609033952

`(A017298(n)/A017293(n))²`
-/

namespace A017302.P13999606373609033952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017298 n : ℚ) / (A017293 n : ℚ)) ^ 2

end

end A017302.P13999606373609033952

/-! ## A017302.P10709829215857381189

`(A017293(n)²*A017295(n))²`
-/

namespace A017302.P10709829215857381189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017293 n ^ 2 * A017295 n) ^ 2

end

end A017302.P10709829215857381189

/-! ## A017302.P16302967873969302165

`(A017294(n)²*A017293(n))²`
-/

namespace A017302.P16302967873969302165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017294 n ^ 2 * A017293 n) ^ 2

end

end A017302.P16302967873969302165

/-! ## A017302.P14881573588762040071

`sqrt(sqrt(A017300(n)))*A017300(n)`
-/

namespace A017302.P14881573588762040071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017300 n : ℝ)) * (A017300 n : ℝ)

end

end A017302.P14881573588762040071

/-! ## A017302.P8289354093312100671

`A016882(2*n)`
-/

namespace A017302.P8289354093312100671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016882 (2 * n)

end

end A017302.P8289354093312100671

/-! ## A017302.P11996019686493091916

`A008454(A017281(n)+1)`
-/

namespace A017302.P11996019686493091916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + 1).toNat

end

end A017302.P11996019686493091916

/-! ## A017302.P14209940627400751694

`A008454(A008592(n)+2)`
-/

namespace A017302.P14209940627400751694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008592 n + 2).toNat

end

end A017302.P14209940627400751694

/-! ## A017302.P4120446463519758481

`A008454(2*A016861(n))`
-/

namespace A017302.P4120446463519758481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016861 n).toNat

end

end A017302.P4120446463519758481

/-! ## A017302.P11370000816558776026

`A008454(2*(A008587(n)+1))`
-/

namespace A017302.P11370000816558776026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * (A008587 n + 1)).toNat

end

end A017302.P11370000816558776026

/-! ## A017302.P5172396379080363373

`A008454(A016921(n)+A016813(n))`
-/

namespace A017302.P5172396379080363373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016921 n + A016813 n).toNat

end

end A017302.P5172396379080363373

/-!
# A017303: 

The programs for A017303, there is no canonical definition to state claims against.
-/

/-! ## A017303.P8592015519256419117

`(10*n+2)^11`
-/

namespace A017303.P8592015519256419117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 2) ^ 11

end

end A017303.P8592015519256419117

/-! ## A017303.P15488617860892893767

`A017298(n)²/A017293(n)`
-/

namespace A017303.P15488617860892893767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017298 n ^ 2 : ℚ) / (A017293 n : ℚ)

end

end A017303.P15488617860892893767

/-! ## A017303.P353536375876135467

`A017295(n)²²/A017293(n)`
-/

namespace A017303.P353536375876135467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017295 n ^ 2) ^ 2 : ℚ) / (A017293 n : ℚ)

end

end A017303.P353536375876135467

/-! ## A017303.P2037101047386465653

`A008455(A017281(n)+1)`
-/

namespace A017303.P2037101047386465653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 1).toNat

end

end A017303.P2037101047386465653

/-! ## A017303.P5333425597539776816

`A008455(A008592(n)+2)`
-/

namespace A017303.P5333425597539776816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008592 n + 2).toNat

end

end A017303.P5333425597539776816

/-! ## A017303.P7927637121743996415

`A008455(A017317(n)-2)`
-/

namespace A017303.P7927637121743996415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017317 n - 2).toNat

end

end A017303.P7927637121743996415

/-! ## A017303.P17421460942720241428

`A008455(A008591(n)+2+n)`
-/

namespace A017303.P17421460942720241428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 n + 2 + (n : ℤ)).toNat

end

end A017303.P17421460942720241428

/-! ## A017303.P16653827214437678270

`A008455(A008593(n)+2-n)`
-/

namespace A017303.P16653827214437678270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008593 n + (2 - (n : ℤ))).toNat

end

end A017303.P16653827214437678270

/-! ## A017303.P2439099262363551123

`A008455(2-(n-A008593(n)))`
-/

namespace A017303.P2439099262363551123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 - ((n : ℤ) - A008593 n)).toNat

end

end A017303.P2439099262363551123

/-! ## A017303.P15103656438257748326

`A008455(2*(A016813(n)+n))`
-/

namespace A017303.P15103656438257748326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (2 * (A016813 n + (n : ℤ))).toNat

end

end A017303.P15103656438257748326

/-! ## A017303.P11369077129057883852

`A008455(A016921(n)+A016813(n))`
-/

namespace A017303.P11369077129057883852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016921 n + A016813 n).toNat

end

end A017303.P11369077129057883852

/-!
# A017304: 

The programs for A017304, there is no canonical definition to state claims against.
-/

/-! ## A017304.P18415540906574917366

`(10*n+2)^12`
-/

namespace A017304.P18415540906574917366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 2) ^ 12

end

end A017304.P18415540906574917366

/-! ## A017304.P13131225878516596787

`A017298(n)²`
-/

namespace A017304.P13131225878516596787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017298 n ^ 2

end

end A017304.P13131225878516596787

/-! ## A017304.P2809141331322831560

`sqrt(A017300(n))*A017300(n)`
-/

namespace A017304.P2809141331322831560
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017300 n : ℝ) * (A017300 n : ℝ)

end

end A017304.P2809141331322831560

/-! ## A017304.P178472051591422283

`(A017293(n)*A017294(n))²²`
-/

namespace A017304.P178472051591422283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017293 n * A017294 n) ^ 2) ^ 2

end

end A017304.P178472051591422283

/-! ## A017304.P9959943111044871459

`sqrt(A016880(2*n))*A016880(2*n)`
-/

namespace A017304.P9959943111044871459
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016880 (2 * n) : ℝ) * (A016880 (2 * n) : ℝ)

end

end A017304.P9959943111044871459

/-! ## A017304.P13765959392413101844

`(A273375(2*n+1)²*A273375(2*n+1))²`
-/

namespace A017304.P13765959392413101844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273375 (2 * n + 1) ^ 2 * A273375 (2 * n + 1)) ^ 2

end

end A017304.P13765959392413101844

/-! ## A017304.P5219533918125403797

`sqrt(A017300(n)^3)`
-/

namespace A017304.P5219533918125403797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017300 n ^ 3 : ℝ)

end

end A017304.P5219533918125403797

/-! ## A017304.P3148981947469200001

`A008456(A008591(n)+2+n)`
-/

namespace A017304.P3148981947469200001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A008591 n + 2 + (n : ℤ)).toNat

end

end A017304.P3148981947469200001

/-! ## A017304.P2558048241820764675

`A008456(A017209(n)-2+n)`
-/

namespace A017304.P2558048241820764675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017209 n - 2 + (n : ℤ)).toNat

end

end A017304.P2558048241820764675

/-! ## A017304.P2106877697572905179

`A008456(n-(2-A017209(n)))`
-/

namespace A017304.P2106877697572905179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 ((n : ℤ) - (2 - A017209 n)).toNat

end

end A017304.P2106877697572905179

/-! ## A017304.P85229969173803065

`A000578(A017281(n)+1)²²`
-/

namespace A017304.P85229969173803065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017281 n + 1).toNat ^ 2) ^ 2

end

end A017304.P85229969173803065

/-! ## A017304.P269677403720506003

`A000578(A008592(n)+2)²²`
-/

namespace A017304.P269677403720506003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A008592 n + 2).toNat ^ 2) ^ 2

end

end A017304.P269677403720506003

/-! ## A017304.P12006835318436412159

`A000578(A017305(n)-1)²²`
-/

namespace A017304.P12006835318436412159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017305 n - 1).toNat ^ 2) ^ 2

end

end A017304.P12006835318436412159

/-! ## A017304.P4915396240920292054

`A000578(A017185(n)+n)²²`
-/

namespace A017304.P4915396240920292054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017185 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017304.P4915396240920292054

/-!
# A017305: a(n) = 10*n + 3.

The programs for A017305, the canonical program `A017305.P18400868229800390008` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017305 has offset 0).

The definition of A017305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+3` (program `A017305.P18400868229800390008`, by `A017305.P18400868229800390008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017305.P18400868229800390008

`10*n+3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017305

/-- `10*n+3` -/
def P18400868229800390008.Spec : Prop :=
  ∀ n, (P18400868229800390008.a n : ℤ) = A017305 n

theorem P18400868229800390008.correct : P18400868229800390008.Spec := by
  intro n
  simp only [A017305]

end A017305

/-!
# A017306: a(n) = (10*n + 3)^2.

The programs for A017306, the canonical program `A017306.P4754400106784477427` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017306 has offset 0).

The definition of A017306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)²` (program `A017306.P4754400106784477427`, by `A017306.P4754400106784477427.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017306.P4754400106784477427

`(10*n+3)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017306

/-- `(10*n+3)²` -/
def P4754400106784477427.Spec : Prop :=
  ∀ n, (P4754400106784477427.a n : ℤ) = A017306 n

theorem P4754400106784477427.correct : P4754400106784477427.Spec := by
  intro n
  simp only [A017306]

end A017306

/-! ## A017306.P6340538936877182107

`record[gcd(n+3, n%10)²]`
-/

namespace A017306.P6340538936877182107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (n % 10) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017306.P6340538936877182107

namespace A017306

/-- `record[gcd(n+3, n%10)²]` -/
def P6340538936877182107.Spec : Prop :=
  ∀ n, (P6340538936877182107.a n : ℤ) = A017306 n

end A017306

/-! ## A017306.P984291578492219454

`ceil((sqrt(a(n-1))+10)²)` with `a(0)=9`
-/

namespace A017306.P984291578492219454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 10) ^ 2⌉

end

end A017306.P984291578492219454

namespace A017306

/-- `ceil((sqrt(a(n-1))+10)²)` -/
def P984291578492219454.Spec : Prop :=
  ∀ n, P984291578492219454.a n = A017306 n

end A017306

/-! ## A017306.P958932118050896921

`record[(gcd(10, 1-n)+n+2)²]`
-/

namespace A017306.P958932118050896921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 10 (1 - (n : ℤ)) + (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017306.P958932118050896921

namespace A017306

/-- `record[(gcd(10, 1-n)+n+2)²]` -/
def P958932118050896921.Spec : Prop :=
  ∀ n, (P958932118050896921.a n : ℤ) = A017306 n

end A017306

/-! ## A017306.P4274205130576078383

`5*∑[a(n-1)+40]+4` with `a(0)=1, a(1)=32`
-/

namespace A017306.P4274205130576078383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 32] fun n f1 =>
  f1 (n - 1) + 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A017306.P4274205130576078383

namespace A017306

/-- `5*∑[a(n-1)+40]+4` -/
def P4274205130576078383.Spec : Prop :=
  ∀ n, (P4274205130576078383.a n : ℤ) = A017306 n

end A017306

/-! ## A017306.P2798685102912030396

`sqrt(A017308(n))`
-/

namespace A017306.P2798685102912030396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017308 n : ℝ)

end

end A017306.P2798685102912030396

namespace A017306

/-- `sqrt(A017308(n))` -/
def P2798685102912030396.Spec : Prop :=
  ∀ n, P2798685102912030396.a n = (A017306 n : ℝ)

end A017306

/-! ## A017306.P14577856321448366485

`A017305(n)^2`
-/

namespace A017306.P14577856321448366485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n ^ 2

end

end A017306.P14577856321448366485

namespace A017306

/-- `A017305(n)^2` -/
def P14577856321448366485.Spec : Prop :=
  ∀ n, P14577856321448366485.a n = A017306 n

theorem P14577856321448366485.correct : P14577856321448366485.Spec := by
  intro n
  simp only [A017306, Nat.add_sub_cancel, A017306.P14577856321448366485.a, A017306.P4754400106784477427.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017306

/-! ## A017306.P1878486058397402832

`sqrt(sqrt(A017312(n)))`
-/

namespace A017306.P1878486058397402832
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017312 n : ℝ))

end

end A017306.P1878486058397402832

namespace A017306

/-- `sqrt(sqrt(A017312(n)))` -/
def P1878486058397402832.Spec : Prop :=
  ∀ n, P1878486058397402832.a n = (A017306 n : ℝ)

end A017306

/-! ## A017306.P14972693936533262983

`5*A033574(n)+4`
-/

namespace A017306.P14972693936533262983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033574 n + 4

end

end A017306.P14972693936533262983

namespace A017306

/-- `5*A033574(n)+4` -/
def P14972693936533262983.Spec : Prop :=
  ∀ n, P14972693936533262983.a n = A017306 n

theorem P14972693936533262983.correct : P14972693936533262983.Spec := by
  intro n
  simp only [A017306, Nat.add_sub_cancel, A017306.P14972693936533262983.a, A017306.P4754400106784477427.a, A033574, A033574.P17979063128835907106.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017306

/-! ## A017306.P908351766337724846

`A017310(n)^(1/3)`
-/

namespace A017306.P908351766337724846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017310 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017306.P908351766337724846

namespace A017306

/-- `A017310(n)^(1/3)` -/
def P908351766337724846.Spec : Prop :=
  ∀ n, P908351766337724846.a n = (A017306 n : ℝ)

end A017306

/-! ## A017306.P14476195943906666130

`A017307(n)^(2/3)`
-/

namespace A017306.P14476195943906666130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017307 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017306.P14476195943906666130

namespace A017306

/-- `A017307(n)^(2/3)` -/
def P14476195943906666130.Spec : Prop :=
  ∀ n, P14476195943906666130.a n = (A017306 n : ℝ)

end A017306

/-! ## A017306.P1279762760206276005

`or(1, (A008592(n)+3)²)`
-/

namespace A017306.P1279762760206276005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((A008592 n + 3) ^ 2)

end

end A017306.P1279762760206276005

namespace A017306

/-- `or(1, (A008592(n)+3)²)` -/
def P1279762760206276005.Spec : Prop :=
  ∀ n, P1279762760206276005.a n = A017306 n

end A017306

/-! ## A017306.P16422902439041956828

`A001535(n)-A317095(n)`
-/

namespace A017306.P16422902439041956828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001535 n - A317095 n

end

end A017306.P16422902439041956828

namespace A017306

/-- `A001535(n)-A317095(n)` -/
def P16422902439041956828.Spec : Prop :=
  ∀ n, P16422902439041956828.a n = A017306 n

theorem P16422902439041956828.correct : P16422902439041956828.Spec := by
  intro n
  simp only [A017306, Nat.add_sub_cancel, A017306.P16422902439041956828.a, A017306.P4754400106784477427.a, A001535, A001535.P12452821338296333738.a, A317095, A317095.P1083006563003922456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017306

/-! ## A017306.P9561838917847698360

`A017307(n)/A017305(n)`
-/

namespace A017306.P9561838917847698360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017307 n : ℚ) / (A017305 n : ℚ)

end

end A017306.P9561838917847698360

namespace A017306

/-- `A017307(n)/A017305(n)` -/
def P9561838917847698360.Spec : Prop :=
  ∀ n, P9561838917847698360.a n = (A017306 n : ℚ)

end A017306

/-! ## A017306.P7767559576489639789

`A017309(n)/A017307(n)`
-/

namespace A017306.P7767559576489639789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017309 n : ℚ) / (A017307 n : ℚ)

end

end A017306.P7767559576489639789

namespace A017306

/-- `A017309(n)/A017307(n)` -/
def P7767559576489639789.Spec : Prop :=
  ∀ n, P7767559576489639789.a n = (A017306 n : ℚ)

end A017306

/-! ## A017306.P655040806275896618

`A017310(n)/A017308(n)`
-/

namespace A017306.P655040806275896618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017310 n : ℚ) / (A017308 n : ℚ)

end

end A017306.P655040806275896618

namespace A017306

/-- `A017310(n)/A017308(n)` -/
def P655040806275896618.Spec : Prop :=
  ∀ n, P655040806275896618.a n = (A017306 n : ℚ)

end A017306

/-! ## A017306.P8986339128408931708

`A017307(n)²/A017308(n)`
-/

namespace A017306.P8986339128408931708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017307 n ^ 2 : ℚ) / (A017308 n : ℚ)

end

end A017306.P8986339128408931708

namespace A017306

/-- `A017307(n)²/A017308(n)` -/
def P8986339128408931708.Spec : Prop :=
  ∀ n, P8986339128408931708.a n = (A017306 n : ℚ)

end A017306

/-! ## A017306.P9526301008012711624

`A139279(n+1)+A017282(n)`
-/

namespace A017306.P9526301008012711624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + A017282 n

end

end A017306.P9526301008012711624

namespace A017306

/-- `A139279(n+1)+A017282(n)` -/
def P9526301008012711624.Spec : Prop :=
  ∀ n, P9526301008012711624.a n = A017306 n

theorem P9526301008012711624.correct : P9526301008012711624.Spec := by
  intro n
  simp only [A017306, Nat.add_sub_cancel, A017306.P9526301008012711624.a, A017306.P4754400106784477427.a, A017282, A017282.P475574155490114698.a, A139279, A139279.P12774484099064457542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017306

/-! ## A017306.P17349435569087910050

`A157626(n+1)+A017425(n)`
-/

namespace A017306.P17349435569087910050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157626 (n + 1) + A017425 n

end

end A017306.P17349435569087910050

namespace A017306

/-- `A157626(n+1)+A017425(n)` -/
def P17349435569087910050.Spec : Prop :=
  ∀ n, P17349435569087910050.a n = A017306 n

theorem P17349435569087910050.correct : P17349435569087910050.Spec := by
  intro n
  simp only [A017306, Nat.add_sub_cancel, A017306.P17349435569087910050.a, A017306.P4754400106784477427.a, A017425, A017425.P2855568862637286375.a, A157626, A157626.P2623146090325781425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017306

/-! ## A017306.P11904487345115652776

`A017310(n)/A017305(n)²²`
-/

namespace A017306.P11904487345115652776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017310 n : ℚ) / ((A017305 n ^ 2) ^ 2 : ℚ)

end

end A017306.P11904487345115652776

namespace A017306

/-- `A017310(n)/A017305(n)²²` -/
def P11904487345115652776.Spec : Prop :=
  ∀ n, P11904487345115652776.a n = (A017306 n : ℚ)

end A017306

/-!
# A017307: a(n) = (10*n + 3)^3.

The programs for A017307, the canonical program `A017307.P14907071720325567128` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017307 has offset 0).

The definition of A017307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^3` (program `A017307.P14907071720325567128`, by `A017307.P14907071720325567128.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017307.P14907071720325567128

`(10*n+3)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017307

/-- `(10*n+3)^3` -/
def P14907071720325567128.Spec : Prop :=
  ∀ n, (P14907071720325567128.a n : ℤ) = A017307 n

theorem P14907071720325567128.correct : P14907071720325567128.Spec := by
  intro n
  simp only [A017307]

end A017307

/-! ## A017307.P4175084091603498405

`A000578(A017305(n))`
-/

namespace A017307.P4175084091603498405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017305 n).toNat

end

end A017307.P4175084091603498405

namespace A017307

/-- `A000578(A017305(n))` -/
def P4175084091603498405.Spec : Prop :=
  ∀ n, P4175084091603498405.a n = A017307 n

end A017307

/-! ## A017307.P15973287708679739883

`sqrt(A017310(n))`
-/

namespace A017307.P15973287708679739883
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017310 n : ℝ)

end

end A017307.P15973287708679739883

namespace A017307

/-- `sqrt(A017310(n))` -/
def P15973287708679739883.Spec : Prop :=
  ∀ n, P15973287708679739883.a n = (A017307 n : ℝ)

end A017307

/-! ## A017307.P5942743263645940430

`sqrt(A017306(n)^3)`
-/

namespace A017307.P5942743263645940430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017306 n ^ 3 : ℝ)

end

end A017307.P5942743263645940430

namespace A017307

/-- `sqrt(A017306(n)^3)` -/
def P5942743263645940430.Spec : Prop :=
  ∀ n, P5942743263645940430.a n = (A017307 n : ℝ)

end A017307

/-! ## A017307.P932974149040826232

`A017305(n)*A017306(n)`
-/

namespace A017307.P932974149040826232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017306 n

end

end A017307.P932974149040826232

namespace A017307

/-- `A017305(n)*A017306(n)` -/
def P932974149040826232.Spec : Prop :=
  ∀ n, P932974149040826232.a n = A017307 n

theorem P932974149040826232.correct : P932974149040826232.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P932974149040826232.a, A017307.P14907071720325567128.a, A017305, A017305.P18400868229800390008.a, A017306, A017306.P4754400106784477427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P15128081263434770922

`A017308(n)/A017305(n)`
-/

namespace A017307.P15128081263434770922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017308 n : ℚ) / (A017305 n : ℚ)

end

end A017307.P15128081263434770922

namespace A017307

/-- `A017308(n)/A017305(n)` -/
def P15128081263434770922.Spec : Prop :=
  ∀ n, P15128081263434770922.a n = (A017307 n : ℚ)

end A017307

/-! ## A017307.P5866410507011483588

`A017309(n)/A017306(n)`
-/

namespace A017307.P5866410507011483588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017309 n : ℚ) / (A017306 n : ℚ)

end

end A017307.P5866410507011483588

namespace A017307

/-- `A017309(n)/A017306(n)` -/
def P5866410507011483588.Spec : Prop :=
  ∀ n, P5866410507011483588.a n = (A017307 n : ℚ)

end A017307

/-! ## A017307.P1501322070119715559

`A017309(n)/A017305(n)²`
-/

namespace A017307.P1501322070119715559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017309 n : ℚ) / (A017305 n ^ 2 : ℚ)

end

end A017307.P1501322070119715559

namespace A017307

/-- `A017309(n)/A017305(n)²` -/
def P1501322070119715559.Spec : Prop :=
  ∀ n, P1501322070119715559.a n = (A017307 n : ℚ)

end A017307

/-! ## A017307.P6578308370147334233

`A017310(n)/(A017305(n)²*A017305(n))`
-/

namespace A017307.P6578308370147334233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017310 n : ℚ) / (A017305 n ^ 2 * A017305 n : ℚ)

end

end A017307.P6578308370147334233

namespace A017307

/-- `A017310(n)/(A017305(n)²*A017305(n))` -/
def P6578308370147334233.Spec : Prop :=
  ∀ n, P6578308370147334233.a n = (A017307 n : ℚ)

end A017307

/-! ## A017307.P7407366362810491761

`Δ[A145995(n+1)]²*Δ[A145995(n+1)]`
-/

namespace A017307.P7407366362810491761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017307.P7407366362810491761

namespace A017307

/-- `Δ[A145995(n+1)]²*Δ[A145995(n+1)]` -/
def P7407366362810491761.Spec : Prop :=
  ∀ n, P7407366362810491761.a n = A017307 n

theorem P7407366362810491761.correct : P7407366362810491761.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P7407366362810491761.f1, A017307.P7407366362810491761.f2, A017307.P7407366362810491761.a, A017307.P14907071720325567128.a, A145995, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P7330131302381620027

`A017343(2*n)/8`
-/

namespace A017307.P7330131302381620027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017343 (2 * n) : ℚ) / 8

end

end A017307.P7330131302381620027

namespace A017307

/-- `A017343(2*n)/8` -/
def P7330131302381620027.Spec : Prop :=
  ∀ n, P7330131302381620027.a n = (A017307 n : ℚ)

theorem P7330131302381620027.correct : P7330131302381620027.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P7330131302381620027.a, A017307.P14907071720325567128.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P11289431726873997919

`A016887(2*n)`
-/

namespace A017307.P11289431726873997919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 (2 * n)

end

end A017307.P11289431726873997919

namespace A017307

/-- `A016887(2*n)` -/
def P11289431726873997919.Spec : Prop :=
  ∀ n, P11289431726873997919.a n = A017307 n

theorem P11289431726873997919.correct : P11289431726873997919.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P11289431726873997919.a, A017307.P14907071720325567128.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P1365589741563543129

`sqrt(A016890(2*n))`
-/

namespace A017307.P1365589741563543129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016890 (2 * n) : ℝ)

end

end A017307.P1365589741563543129

namespace A017307

/-- `sqrt(A016890(2*n))` -/
def P1365589741563543129.Spec : Prop :=
  ∀ n, P1365589741563543129.a n = (A017307 n : ℝ)

end A017307

/-! ## A017307.P12775790718257735452

`A016885(2*n)*A016886(2*n)`
-/

namespace A017307.P12775790718257735452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) * A016886 (2 * n)

end

end A017307.P12775790718257735452

namespace A017307

/-- `A016885(2*n)*A016886(2*n)` -/
def P12775790718257735452.Spec : Prop :=
  ∀ n, P12775790718257735452.a n = A017307 n

theorem P12775790718257735452.correct : P12775790718257735452.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P12775790718257735452.a, A017307.P14907071720325567128.a, A016885, A016885.P12442016633976001399.a, A016886, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P5067577235014746769

`A016888(2*n)/A016885(2*n)`
-/

namespace A017307.P5067577235014746769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 (2 * n) : ℚ) / (A016885 (2 * n) : ℚ)

end

end A017307.P5067577235014746769

namespace A017307

/-- `A016888(2*n)/A016885(2*n)` -/
def P5067577235014746769.Spec : Prop :=
  ∀ n, P5067577235014746769.a n = (A017307 n : ℚ)

theorem P5067577235014746769.correct : P5067577235014746769.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P5067577235014746769.a, A017307.P14907071720325567128.a, A016885, A016885.P12442016633976001399.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P1668087500097087692

`A016889(2*n)/A016886(2*n)`
-/

namespace A017307.P1668087500097087692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 (2 * n) : ℚ) / (A016886 (2 * n) : ℚ)

end

end A017307.P1668087500097087692

namespace A017307

/-- `A016889(2*n)/A016886(2*n)` -/
def P1668087500097087692.Spec : Prop :=
  ∀ n, P1668087500097087692.a n = (A017307 n : ℚ)

theorem P1668087500097087692.correct : P1668087500097087692.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P1668087500097087692.a, A017307.P14907071720325567128.a, A016886, A016886.P17506654077827832753.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P3231143946990773144

`A016891(2*n)/A016888(2*n)`
-/

namespace A017307.P3231143946990773144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 (2 * n) : ℚ) / (A016888 (2 * n) : ℚ)

end

end A017307.P3231143946990773144

namespace A017307

/-- `A016891(2*n)/A016888(2*n)` -/
def P3231143946990773144.Spec : Prop :=
  ∀ n, P3231143946990773144.a n = (A017307 n : ℚ)

theorem P3231143946990773144.correct : P3231143946990773144.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P3231143946990773144.a, A017307.P14907071720325567128.a, A016888, A016888.P4081375051396763708.a, A016891, A016891.P1643224120457508040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P11299009950647364496

`(A008592(n)+3)²*A016885(2*n)`
-/

namespace A017307.P11299009950647364496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008592 n + 3) ^ 2 * A016885 (2 * n)

end

end A017307.P11299009950647364496

namespace A017307

/-- `(A008592(n)+3)²*A016885(2*n)` -/
def P11299009950647364496.Spec : Prop :=
  ∀ n, P11299009950647364496.a n = A017307 n

theorem P11299009950647364496.correct : P11299009950647364496.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P11299009950647364496.a, A017307.P14907071720325567128.a, A008592, A008592.P4981059802862696142.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-! ## A017307.P2791279981008857658

`A016888(2*n)²/A016889(2*n)`
-/

namespace A017307.P2791279981008857658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016888 (2 * n) ^ 2 : ℚ) / (A016889 (2 * n) : ℚ)

end

end A017307.P2791279981008857658

namespace A017307

/-- `A016888(2*n)²/A016889(2*n)` -/
def P2791279981008857658.Spec : Prop :=
  ∀ n, P2791279981008857658.a n = (A017307 n : ℚ)

theorem P2791279981008857658.correct : P2791279981008857658.Spec := by
  intro n
  simp only [A017307, Nat.add_sub_cancel, A017307.P2791279981008857658.a, A017307.P14907071720325567128.a, A016888, A016888.P4081375051396763708.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017307

/-!
# A017308: a(n) = (10*n + 3)^4.

The programs for A017308, the canonical program `A017308.P12544717933082687973` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017308 has offset 0).

The definition of A017308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^4` (program `A017308.P12544717933082687973`, by `A017308.P12544717933082687973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017308.P12544717933082687973

`(10*n+3)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017308

/-- `(10*n+3)^4` -/
def P12544717933082687973.Spec : Prop :=
  ∀ n, (P12544717933082687973.a n : ℤ) = A017308 n

theorem P12544717933082687973.correct : P12544717933082687973.Spec := by
  intro n
  simp only [A017308]

end A017308

/-! ## A017308.P7389401505642826280

`or(1, (10*n+3)²²)`
-/

namespace A017308.P7389401505642826280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (((10 * n + 3) ^ 2) ^ 2)

end

end A017308.P7389401505642826280

namespace A017308

/-- `or(1, (10*n+3)²²)` -/
def P7389401505642826280.Spec : Prop :=
  ∀ n, (P7389401505642826280.a n : ℤ) = A017308 n

end A017308

/-! ## A017308.P16147972092379006677

`(Δ[C(3*n, 2)]+n)²²`
-/

namespace A017308.P16147972092379006677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)) ^ 2) ^ 2

end

end A017308.P16147972092379006677

namespace A017308

/-- `(Δ[C(3*n, 2)]+n)²²` -/
def P16147972092379006677.Spec : Prop :=
  ∀ n, P16147972092379006677.a n = A017308 n

theorem P16147972092379006677.correct : P16147972092379006677.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P16147972092379006677.f1, A017308.P16147972092379006677.a, A017308.P12544717933082687973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P15543548614260045065

`(5*or(1, 2*n)-2)²²`
-/

namespace A017308.P15543548614260045065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((5 * Nat.lor 1 (2 * n) : ℤ) - 2) ^ 2) ^ 2

end

end A017308.P15543548614260045065

namespace A017308

/-- `(5*or(1, 2*n)-2)²²` -/
def P15543548614260045065.Spec : Prop :=
  ∀ n, P15543548614260045065.a n = A017308 n

end A017308

/-! ## A017308.P3311038250734343204

`∩[2*n+1, a(n-1)+5]²²` with `a(0)=3`
-/

namespace A017308.P3311038250734343204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017308.P3311038250734343204

namespace A017308

/-- `∩[2*n+1, a(n-1)+5]²²` -/
def P3311038250734343204.Spec : Prop :=
  ∀ n, (P3311038250734343204.a n : ℤ) = A017308 n

end A017308

/-! ## A017308.P12787878674828994861

`(lcm(2, 2*n+2*n+1)+2*n+1)²²`
-/

namespace A017308.P12787878674828994861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (2 * n + (2 * n + 1)) + (2 * n + 1)) ^ 2) ^ 2

end

end A017308.P12787878674828994861

namespace A017308

/-- `(lcm(2, 2*n+2*n+1)+2*n+1)²²` -/
def P12787878674828994861.Spec : Prop :=
  ∀ n, (P12787878674828994861.a n : ℤ) = A017308 n

end A017308

/-! ## A017308.P14527788594836011889

`A017306(n)²`
-/

namespace A017308.P14527788594836011889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n ^ 2

end

end A017308.P14527788594836011889

namespace A017308

/-- `A017306(n)²` -/
def P14527788594836011889.Spec : Prop :=
  ∀ n, P14527788594836011889.a n = A017308 n

theorem P14527788594836011889.correct : P14527788594836011889.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P14527788594836011889.a, A017308.P12544717933082687973.a, A017306, A017306.P4754400106784477427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P7007040757422570343

`sqrt(A017312(n))`
-/

namespace A017308.P7007040757422570343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017312 n : ℝ)

end

end A017308.P7007040757422570343

namespace A017308

/-- `sqrt(A017312(n))` -/
def P7007040757422570343.Spec : Prop :=
  ∀ n, P7007040757422570343.a n = (A017308 n : ℝ)

end A017308

/-! ## A017308.P1093523881998684917

`A017305(n)²²`
-/

namespace A017308.P1093523881998684917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n ^ 2) ^ 2

end

end A017308.P1093523881998684917

namespace A017308

/-- `A017305(n)²²` -/
def P1093523881998684917.Spec : Prop :=
  ∀ n, P1093523881998684917.a n = A017308 n

theorem P1093523881998684917.correct : P1093523881998684917.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P1093523881998684917.a, A017308.P12544717933082687973.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P8442378732492136229

`(A017293(n)+1)²²`
-/

namespace A017308.P8442378732492136229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017293 n + 1) ^ 2) ^ 2

end

end A017308.P8442378732492136229

namespace A017308

/-- `(A017293(n)+1)²²` -/
def P8442378732492136229.Spec : Prop :=
  ∀ n, P8442378732492136229.a n = A017308 n

theorem P8442378732492136229.correct : P8442378732492136229.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P8442378732492136229.a, A017308.P12544717933082687973.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P10878394527959747125

`(A017281(n)+2)²²`
-/

namespace A017308.P10878394527959747125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017281 n + 2) ^ 2) ^ 2

end

end A017308.P10878394527959747125

namespace A017308

/-- `(A017281(n)+2)²²` -/
def P10878394527959747125.Spec : Prop :=
  ∀ n, P10878394527959747125.a n = A017308 n

theorem P10878394527959747125.correct : P10878394527959747125.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P10878394527959747125.a, A017308.P12544717933082687973.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P1790145775203733515

`(1-A017317(n))²²`
-/

namespace A017308.P1790145775203733515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017317 n) ^ 2) ^ 2

end

end A017308.P1790145775203733515

namespace A017308

/-- `(1-A017317(n))²²` -/
def P1790145775203733515.Spec : Prop :=
  ∀ n, P1790145775203733515.a n = A017308 n

theorem P1790145775203733515.correct : P1790145775203733515.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P1790145775203733515.a, A017308.P12544717933082687973.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P10371110992851736825

`(A008592(n)+3)²²`
-/

namespace A017308.P10371110992851736825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 3) ^ 2) ^ 2

end

end A017308.P10371110992851736825

namespace A017308

/-- `(A008592(n)+3)²²` -/
def P10371110992851736825.Spec : Prop :=
  ∀ n, P10371110992851736825.a n = A017308 n

theorem P10371110992851736825.correct : P10371110992851736825.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P10371110992851736825.a, A017308.P12544717933082687973.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P15893071803096838842

`(2-A017329(n))²²`
-/

namespace A017308.P15893071803096838842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017329 n) ^ 2) ^ 2

end

end A017308.P15893071803096838842

namespace A017308

/-- `(2-A017329(n))²²` -/
def P15893071803096838842.Spec : Prop :=
  ∀ n, P15893071803096838842.a n = A017308 n

theorem P15893071803096838842.correct : P15893071803096838842.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P15893071803096838842.a, A017308.P12544717933082687973.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P8358851578767214439

`(3-A017341(n))²²`
-/

namespace A017308.P8358851578767214439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017341 n) ^ 2) ^ 2

end

end A017308.P8358851578767214439

namespace A017308

/-- `(3-A017341(n))²²` -/
def P8358851578767214439.Spec : Prop :=
  ∀ n, P8358851578767214439.a n = A017308 n

theorem P8358851578767214439.correct : P8358851578767214439.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P8358851578767214439.a, A017308.P12544717933082687973.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P3798039540414117493

`(A017197(n)+n)²²`
-/

namespace A017308.P3798039540414117493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017197 n + (n : ℤ)) ^ 2) ^ 2

end

end A017308.P3798039540414117493

namespace A017308

/-- `(A017197(n)+n)²²` -/
def P3798039540414117493.Spec : Prop :=
  ∀ n, P3798039540414117493.a n = A017308 n

theorem P3798039540414117493.correct : P3798039540414117493.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P3798039540414117493.a, A017308.P12544717933082687973.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P18269259246480659105

`(n-A017425(n))²²`
-/

namespace A017308.P18269259246480659105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017425 n) ^ 2) ^ 2

end

end A017308.P18269259246480659105

namespace A017308

/-- `(n-A017425(n))²²` -/
def P18269259246480659105.Spec : Prop :=
  ∀ n, P18269259246480659105.a n = A017308 n

theorem P18269259246480659105.correct : P18269259246480659105.Spec := by
  intro n
  simp only [A017308, Nat.add_sub_cancel, A017308.P18269259246480659105.a, A017308.P12544717933082687973.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017308

/-! ## A017308.P8277279343364755891

`(sqrt(A017294(n))+1)²²`
-/

namespace A017308.P8277279343364755891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017294 n : ℝ) + 1) ^ 2) ^ 2

end

end A017308.P8277279343364755891

namespace A017308

/-- `(sqrt(A017294(n))+1)²²` -/
def P8277279343364755891.Spec : Prop :=
  ∀ n, P8277279343364755891.a n = (A017308 n : ℝ)

end A017308

/-! ## A017308.P12410069186077622522

`(sqrt(A017282(n))+2)²²`
-/

namespace A017308.P12410069186077622522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017282 n : ℝ) + 2) ^ 2) ^ 2

end

end A017308.P12410069186077622522

namespace A017308

/-- `(sqrt(A017282(n))+2)²²` -/
def P12410069186077622522.Spec : Prop :=
  ∀ n, P12410069186077622522.a n = (A017308 n : ℝ)

end A017308

/-! ## A017308.P17344011812497781300

`(1-sqrt(A017318(n)))²²`
-/

namespace A017308.P17344011812497781300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017318 n : ℝ)) ^ 2) ^ 2

end

end A017308.P17344011812497781300

namespace A017308

/-- `(1-sqrt(A017318(n)))²²` -/
def P17344011812497781300.Spec : Prop :=
  ∀ n, P17344011812497781300.a n = (A017308 n : ℝ)

end A017308

/-!
# A017309: a(n) = (10*n + 3)^5.

The programs for A017309, the canonical program `A017309.P11716717383300043174` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017309 has offset 0).

The definition of A017309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^5` (program `A017309.P11716717383300043174`, by `A017309.P11716717383300043174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017309.P11716717383300043174

`(10*n+3)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017309

/-- `(10*n+3)^5` -/
def P11716717383300043174.Spec : Prop :=
  ∀ n, (P11716717383300043174.a n : ℤ) = A017309 n

theorem P11716717383300043174.correct : P11716717383300043174.Spec := by
  intro n
  simp only [A017309]

end A017309

/-! ## A017309.P114737157623039005

`record[(n+3+n)^gcd(5, n)]`
-/

namespace A017309.P114737157623039005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3 + n) ^ Nat.gcd 5 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017309.P114737157623039005

namespace A017309

/-- `record[(n+3+n)^gcd(5, n)]` -/
def P114737157623039005.Spec : Prop :=
  ∀ n, (P114737157623039005.a n : ℤ) = A017309 n

end A017309

/-! ## A017309.P2478780246094720095

`sqrt(A017306(n)^5)`
-/

namespace A017309.P2478780246094720095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017306 n ^ 5 : ℝ)

end

end A017309.P2478780246094720095

namespace A017309

/-- `sqrt(A017306(n)^5)` -/
def P2478780246094720095.Spec : Prop :=
  ∀ n, P2478780246094720095.a n = (A017309 n : ℝ)

end A017309

/-! ## A017309.P11725560023080699380

`(10*n+3)*A017308(n)`
-/

namespace A017309.P11725560023080699380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 3 : ℤ) * A017308 n

end

end A017309.P11725560023080699380

namespace A017309

/-- `(10*n+3)*A017308(n)` -/
def P11725560023080699380.Spec : Prop :=
  ∀ n, P11725560023080699380.a n = A017309 n

theorem P11725560023080699380.correct : P11725560023080699380.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P11725560023080699380.a, A017309.P11716717383300043174.a, A017308, A017308.P12544717933082687973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P10176297685771879894

`A017306(n)*A017307(n)`
-/

namespace A017309.P10176297685771879894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n * A017307 n

end

end A017309.P10176297685771879894

namespace A017309

/-- `A017306(n)*A017307(n)` -/
def P10176297685771879894.Spec : Prop :=
  ∀ n, P10176297685771879894.a n = A017309 n

theorem P10176297685771879894.correct : P10176297685771879894.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P10176297685771879894.a, A017309.P11716717383300043174.a, A017306, A017306.P4754400106784477427.a, A017307, A017307.P14907071720325567128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P6084542546010920107

`A017310(n)/A017305(n)`
-/

namespace A017309.P6084542546010920107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017310 n : ℚ) / (A017305 n : ℚ)

end

end A017309.P6084542546010920107

namespace A017309

/-- `A017310(n)/A017305(n)` -/
def P6084542546010920107.Spec : Prop :=
  ∀ n, P6084542546010920107.a n = (A017309 n : ℚ)

end A017309

/-! ## A017309.P7359902019078142047

`A017312(n)/A017307(n)`
-/

namespace A017309.P7359902019078142047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017312 n : ℚ) / (A017307 n : ℚ)

end

end A017309.P7359902019078142047

namespace A017309

/-- `A017312(n)/A017307(n)` -/
def P7359902019078142047.Spec : Prop :=
  ∀ n, P7359902019078142047.a n = (A017309 n : ℚ)

end A017309

/-! ## A017309.P7438455649635309168

`A017305(n)²*A017307(n)`
-/

namespace A017309.P7438455649635309168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n ^ 2 * A017307 n

end

end A017309.P7438455649635309168

namespace A017309

/-- `A017305(n)²*A017307(n)` -/
def P7438455649635309168.Spec : Prop :=
  ∀ n, P7438455649635309168.a n = A017309 n

theorem P7438455649635309168.correct : P7438455649635309168.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P7438455649635309168.a, A017309.P11716717383300043174.a, A017305, A017305.P18400868229800390008.a, A017307, A017307.P14907071720325567128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P18228243076971145960

`A017306(n)²*A017305(n)`
-/

namespace A017309.P18228243076971145960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n ^ 2 * A017305 n

end

end A017309.P18228243076971145960

namespace A017309

/-- `A017306(n)²*A017305(n)` -/
def P18228243076971145960.Spec : Prop :=
  ∀ n, P18228243076971145960.a n = A017309 n

theorem P18228243076971145960.correct : P18228243076971145960.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P18228243076971145960.a, A017309.P11716717383300043174.a, A017305, A017305.P18400868229800390008.a, A017306, A017306.P4754400106784477427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P7632104469370632864

`A017308(n)²/A017307(n)`
-/

namespace A017309.P7632104469370632864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017308 n ^ 2 : ℚ) / (A017307 n : ℚ)

end

end A017309.P7632104469370632864

namespace A017309

/-- `A017308(n)²/A017307(n)` -/
def P7632104469370632864.Spec : Prop :=
  ∀ n, P7632104469370632864.a n = (A017309 n : ℚ)

end A017309

/-! ## A017309.P6652093624025219543

`A017313(n)/A017305(n)²²`
-/

namespace A017309.P6652093624025219543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017313 n : ℚ) / ((A017305 n ^ 2) ^ 2 : ℚ)

end

end A017309.P6652093624025219543

namespace A017309

/-- `A017313(n)/A017305(n)²²` -/
def P6652093624025219543.Spec : Prop :=
  ∀ n, P6652093624025219543.a n = (A017309 n : ℚ)

end A017309

/-! ## A017309.P12739616749877388167

`A017312(n)/(A017305(n)²*A017305(n))`
-/

namespace A017309.P12739616749877388167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017312 n : ℚ) / (A017305 n ^ 2 * A017305 n : ℚ)

end

end A017309.P12739616749877388167

namespace A017309

/-- `A017312(n)/(A017305(n)²*A017305(n))` -/
def P12739616749877388167.Spec : Prop :=
  ∀ n, P12739616749877388167.a n = (A017309 n : ℚ)

end A017309

/-! ## A017309.P10763184733422011309

`A016889(2*n)`
-/

namespace A017309.P10763184733422011309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016889 (2 * n)

end

end A017309.P10763184733422011309

namespace A017309

/-- `A016889(2*n)` -/
def P10763184733422011309.Spec : Prop :=
  ∀ n, P10763184733422011309.a n = A017309 n

theorem P10763184733422011309.correct : P10763184733422011309.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P10763184733422011309.a, A017309.P11716717383300043174.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P9641630459965914877

`record[(A016945(or(1, n)-1)-n)^5]`
-/

namespace A017309.P9641630459965914877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016945 (Nat.lor 1 n - 1) - (n : ℤ)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017309.P9641630459965914877

namespace A017309

/-- `record[(A016945(or(1, n)-1)-n)^5]` -/
def P9641630459965914877.Spec : Prop :=
  ∀ n, P9641630459965914877.a n = A017309 n

end A017309

/-! ## A017309.P3005169418609454242

`A016885(2*n)*A016888(2*n)`
-/

namespace A017309.P3005169418609454242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) * A016888 (2 * n)

end

end A017309.P3005169418609454242

namespace A017309

/-- `A016885(2*n)*A016888(2*n)` -/
def P3005169418609454242.Spec : Prop :=
  ∀ n, P3005169418609454242.a n = A017309 n

theorem P3005169418609454242.correct : P3005169418609454242.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P3005169418609454242.a, A017309.P11716717383300043174.a, A016885, A016885.P12442016633976001399.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P5803984507434751735

`A016886(2*n)*A016887(2*n)`
-/

namespace A017309.P5803984507434751735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 (2 * n) * A016887 (2 * n)

end

end A017309.P5803984507434751735

namespace A017309

/-- `A016886(2*n)*A016887(2*n)` -/
def P5803984507434751735.Spec : Prop :=
  ∀ n, P5803984507434751735.a n = A017309 n

theorem P5803984507434751735.correct : P5803984507434751735.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P5803984507434751735.a, A017309.P11716717383300043174.a, A016886, A016886.P17506654077827832753.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P14117583175994506926

`A016890(2*n)/A016885(2*n)`
-/

namespace A017309.P14117583175994506926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016890 (2 * n) : ℚ) / (A016885 (2 * n) : ℚ)

end

end A017309.P14117583175994506926

namespace A017309

/-- `A016890(2*n)/A016885(2*n)` -/
def P14117583175994506926.Spec : Prop :=
  ∀ n, P14117583175994506926.a n = (A017309 n : ℚ)

theorem P14117583175994506926.correct : P14117583175994506926.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P14117583175994506926.a, A017309.P11716717383300043174.a, A016885, A016885.P12442016633976001399.a, A016890, A016890.P2080566048522477546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P880933813693083167

`A016891(2*n)/A016886(2*n)`
-/

namespace A017309.P880933813693083167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 (2 * n) : ℚ) / (A016886 (2 * n) : ℚ)

end

end A017309.P880933813693083167

namespace A017309

/-- `A016891(2*n)/A016886(2*n)` -/
def P880933813693083167.Spec : Prop :=
  ∀ n, P880933813693083167.a n = (A017309 n : ℚ)

theorem P880933813693083167.correct : P880933813693083167.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P880933813693083167.a, A017309.P11716717383300043174.a, A016886, A016886.P17506654077827832753.a, A016891, A016891.P1643224120457508040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-! ## A017309.P6833481947136119186

`A016885(2*n)²*A016887(2*n)`
-/

namespace A017309.P6833481947136119186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) ^ 2 * A016887 (2 * n)

end

end A017309.P6833481947136119186

namespace A017309

/-- `A016885(2*n)²*A016887(2*n)` -/
def P6833481947136119186.Spec : Prop :=
  ∀ n, P6833481947136119186.a n = A017309 n

theorem P6833481947136119186.correct : P6833481947136119186.Spec := by
  intro n
  simp only [A017309, Nat.add_sub_cancel, A017309.P6833481947136119186.a, A017309.P11716717383300043174.a, A016885, A016885.P12442016633976001399.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017309

/-!
# A017310: a(n) = (10*n + 3)^6.

The programs for A017310, the canonical program `A017310.P10596882465810349871` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017310 has offset 0).

The definition of A017310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^6` (program `A017310.P10596882465810349871`, by `A017310.P10596882465810349871.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017310.P10596882465810349871

`(10*n+3)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017310

/-- `(10*n+3)^6` -/
def P10596882465810349871.Spec : Prop :=
  ∀ n, (P10596882465810349871.a n : ℤ) = A017310 n

theorem P10596882465810349871.correct : P10596882465810349871.Spec := by
  intro n
  simp only [A017310]

end A017310

/-! ## A017310.P1611838002233150045

`A017307(n)²`
-/

namespace A017310.P1611838002233150045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n ^ 2

end

end A017310.P1611838002233150045

namespace A017310

/-- `A017307(n)²` -/
def P1611838002233150045.Spec : Prop :=
  ∀ n, P1611838002233150045.a n = A017310 n

theorem P1611838002233150045.correct : P1611838002233150045.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P1611838002233150045.a, A017310.P10596882465810349871.a, A017307, A017307.P14907071720325567128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P851831812025833587

`sqrt(A017308(n)^3)`
-/

namespace A017310.P851831812025833587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017308 n ^ 3 : ℝ)

end

end A017310.P851831812025833587

namespace A017310

/-- `sqrt(A017308(n)^3)` -/
def P851831812025833587.Spec : Prop :=
  ∀ n, P851831812025833587.a n = (A017310 n : ℝ)

end A017310

/-! ## A017310.P5770092609734169858

`A017305(n)*A017309(n)`
-/

namespace A017310.P5770092609734169858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017309 n

end

end A017310.P5770092609734169858

namespace A017310

/-- `A017305(n)*A017309(n)` -/
def P5770092609734169858.Spec : Prop :=
  ∀ n, P5770092609734169858.a n = A017310 n

theorem P5770092609734169858.correct : P5770092609734169858.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P5770092609734169858.a, A017310.P10596882465810349871.a, A017305, A017305.P18400868229800390008.a, A017309, A017309.P11716717383300043174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P14158904419403949454

`A017306(n)*A017308(n)`
-/

namespace A017310.P14158904419403949454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n * A017308 n

end

end A017310.P14158904419403949454

namespace A017310

/-- `A017306(n)*A017308(n)` -/
def P14158904419403949454.Spec : Prop :=
  ∀ n, P14158904419403949454.a n = A017310 n

theorem P14158904419403949454.correct : P14158904419403949454.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P14158904419403949454.a, A017310.P10596882465810349871.a, A017306, A017306.P4754400106784477427.a, A017308, A017308.P12544717933082687973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P7888611956809356289

`A017313(n)/A017307(n)`
-/

namespace A017310.P7888611956809356289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017313 n : ℚ) / (A017307 n : ℚ)

end

end A017310.P7888611956809356289

namespace A017310

/-- `A017313(n)/A017307(n)` -/
def P7888611956809356289.Spec : Prop :=
  ∀ n, P7888611956809356289.a n = (A017310 n : ℚ)

end A017310

/-! ## A017310.P3043317622551637779

`(A017305(n)*A017306(n))²`
-/

namespace A017310.P3043317622551637779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n * A017306 n) ^ 2

end

end A017310.P3043317622551637779

namespace A017310

/-- `(A017305(n)*A017306(n))²` -/
def P3043317622551637779.Spec : Prop :=
  ∀ n, P3043317622551637779.a n = A017310 n

theorem P3043317622551637779.correct : P3043317622551637779.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P3043317622551637779.a, A017310.P10596882465810349871.a, A017305, A017305.P18400868229800390008.a, A017306, A017306.P4754400106784477427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P460401366462866031

`A017305(n)²*A017308(n)`
-/

namespace A017310.P460401366462866031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n ^ 2 * A017308 n

end

end A017310.P460401366462866031

namespace A017310

/-- `A017305(n)²*A017308(n)` -/
def P460401366462866031.Spec : Prop :=
  ∀ n, P460401366462866031.a n = A017310 n

theorem P460401366462866031.correct : P460401366462866031.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P460401366462866031.a, A017310.P10596882465810349871.a, A017305, A017305.P18400868229800390008.a, A017308, A017308.P12544717933082687973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P3342196317665520169

`(A017309(n)/A017306(n))²`
-/

namespace A017310.P3342196317665520169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017309 n : ℚ) / (A017306 n : ℚ)) ^ 2

end

end A017310.P3342196317665520169

namespace A017310

/-- `(A017309(n)/A017306(n))²` -/
def P3342196317665520169.Spec : Prop :=
  ∀ n, P3342196317665520169.a n = (A017310 n : ℚ)

end A017310

/-! ## A017310.P14284692958330474313

`A017312(n)/A017305(n)²`
-/

namespace A017310.P14284692958330474313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017312 n : ℚ) / (A017305 n ^ 2 : ℚ)

end

end A017310.P14284692958330474313

namespace A017310

/-- `A017312(n)/A017305(n)²` -/
def P14284692958330474313.Spec : Prop :=
  ∀ n, P14284692958330474313.a n = (A017310 n : ℚ)

end A017310

/-! ## A017310.P13936864675714982237

`(Δ[A145995(n+1)]^3)²`
-/

namespace A017310.P13936864675714982237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017310.P13936864675714982237

namespace A017310

/-- `(Δ[A145995(n+1)]^3)²` -/
def P13936864675714982237.Spec : Prop :=
  ∀ n, P13936864675714982237.a n = A017310 n

theorem P13936864675714982237.correct : P13936864675714982237.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P13936864675714982237.f1, A017310.P13936864675714982237.a, A017310.P10596882465810349871.a, A145995, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P16537280405442299835

`(Δ[A147874(n+1)]^3)²`
-/

namespace A017310.P16537280405442299835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017310.P16537280405442299835

namespace A017310

/-- `(Δ[A147874(n+1)]^3)²` -/
def P16537280405442299835.Spec : Prop :=
  ∀ n, P16537280405442299835.a n = A017310 n

theorem P16537280405442299835.correct : P16537280405442299835.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P16537280405442299835.f1, A017310.P16537280405442299835.a, A017310.P10596882465810349871.a, A147874, A147874.P12438232049573977665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P5262971847615458594

`(Δ[A295905(n+1)]^3)²`
-/

namespace A017310.P5262971847615458594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017310.P5262971847615458594

namespace A017310

/-- `(Δ[A295905(n+1)]^3)²` -/
def P5262971847615458594.Spec : Prop :=
  ∀ n, P5262971847615458594.a n = A017310 n

theorem P5262971847615458594.correct : P5262971847615458594.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P5262971847615458594.f1, A017310.P5262971847615458594.a, A017310.P10596882465810349871.a, A295905, A295905.P10892409839882005326.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P15112693211108102047

`A017346(2*n)/A016746(n+1)*A001014(n+1)`
-/

namespace A017310.P15112693211108102047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017346 (2 * n) : ℚ) / (A016746 (n + 1) : ℚ) * (A001014 (n + 1) : ℚ)

end

end A017310.P15112693211108102047

namespace A017310

/-- `A017346(2*n)/A016746(n+1)*A001014(n+1)` -/
def P15112693211108102047.Spec : Prop :=
  ∀ n, P15112693211108102047.a n = (A017310 n : ℚ)

theorem P15112693211108102047.correct : P15112693211108102047.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P15112693211108102047.a, A017310.P10596882465810349871.a, A001014, A001014.P10270364271630987481.a, A016746, A016746.P14284362242224681843.a, A017346, A017346.P12927245387655009054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P14030145087301084872

`A016890(2*n)`
-/

namespace A017310.P14030145087301084872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016890 (2 * n)

end

end A017310.P14030145087301084872

namespace A017310

/-- `A016890(2*n)` -/
def P14030145087301084872.Spec : Prop :=
  ∀ n, P14030145087301084872.a n = A017310 n

theorem P14030145087301084872.correct : P14030145087301084872.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P14030145087301084872.a, A017310.P10596882465810349871.a, A016890, A016890.P2080566048522477546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P13430304059575502779

`A016887(2*n)²`
-/

namespace A017310.P13430304059575502779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 (2 * n) ^ 2

end

end A017310.P13430304059575502779

namespace A017310

/-- `A016887(2*n)²` -/
def P13430304059575502779.Spec : Prop :=
  ∀ n, P13430304059575502779.a n = A017310 n

theorem P13430304059575502779.correct : P13430304059575502779.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P13430304059575502779.a, A017310.P10596882465810349871.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P18097660349771042790

`A016885(2*n)*A016889(2*n)`
-/

namespace A017310.P18097660349771042790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) * A016889 (2 * n)

end

end A017310.P18097660349771042790

namespace A017310

/-- `A016885(2*n)*A016889(2*n)` -/
def P18097660349771042790.Spec : Prop :=
  ∀ n, P18097660349771042790.a n = A017310 n

theorem P18097660349771042790.correct : P18097660349771042790.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P18097660349771042790.a, A017310.P10596882465810349871.a, A016885, A016885.P12442016633976001399.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P2330135860773766113

`A016886(2*n)*A016888(2*n)`
-/

namespace A017310.P2330135860773766113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 (2 * n) * A016888 (2 * n)

end

end A017310.P2330135860773766113

namespace A017310

/-- `A016886(2*n)*A016888(2*n)` -/
def P2330135860773766113.Spec : Prop :=
  ∀ n, P2330135860773766113.a n = A017310 n

theorem P2330135860773766113.correct : P2330135860773766113.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P2330135860773766113.a, A017310.P10596882465810349871.a, A016886, A016886.P17506654077827832753.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-! ## A017310.P4110950402694107057

`A016891(2*n)/A016885(2*n)`
-/

namespace A017310.P4110950402694107057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016891 (2 * n) : ℚ) / (A016885 (2 * n) : ℚ)

end

end A017310.P4110950402694107057

namespace A017310

/-- `A016891(2*n)/A016885(2*n)` -/
def P4110950402694107057.Spec : Prop :=
  ∀ n, P4110950402694107057.a n = (A017310 n : ℚ)

theorem P4110950402694107057.correct : P4110950402694107057.Spec := by
  intro n
  simp only [A017310, Nat.add_sub_cancel, A017310.P4110950402694107057.a, A017310.P10596882465810349871.a, A016885, A016885.P12442016633976001399.a, A016891, A016891.P1643224120457508040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017310

/-!
# A017311: a(n) = (10*n + 3)^7.

The programs for A017311, the canonical program `A017311.P17526156729363613882` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017311 has offset 0).

The definition of A017311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^7` (program `A017311.P17526156729363613882`, by `A017311.P17526156729363613882.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017311.P17526156729363613882

`(10*n+3)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017311

/-- `(10*n+3)^7` -/
def P17526156729363613882.Spec : Prop :=
  ∀ n, (P17526156729363613882.a n : ℤ) = A017311 n

theorem P17526156729363613882.correct : P17526156729363613882.Spec := by
  intro n
  simp only [A017311]

end A017311

/-! ## A017311.P268425168024668618

`A017312(n)/(10*n+3)`
-/

namespace A017311.P268425168024668618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017312 n : ℚ) / (10 * n + 3 : ℚ)

end

end A017311.P268425168024668618

namespace A017311

/-- `A017312(n)/(10*n+3)` -/
def P268425168024668618.Spec : Prop :=
  ∀ n, P268425168024668618.a n = (A017311 n : ℚ)

end A017311

/-! ## A017311.P14642642684952377511

`A017305(n)*A017310(n)`
-/

namespace A017311.P14642642684952377511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017310 n

end

end A017311.P14642642684952377511

namespace A017311

/-- `A017305(n)*A017310(n)` -/
def P14642642684952377511.Spec : Prop :=
  ∀ n, P14642642684952377511.a n = A017311 n

theorem P14642642684952377511.correct : P14642642684952377511.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P14642642684952377511.a, A017311.P17526156729363613882.a, A017305, A017305.P18400868229800390008.a, A017310, A017310.P10596882465810349871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P4596673704850826976

`A017306(n)*A017309(n)`
-/

namespace A017311.P4596673704850826976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n * A017309 n

end

end A017311.P4596673704850826976

namespace A017311

/-- `A017306(n)*A017309(n)` -/
def P4596673704850826976.Spec : Prop :=
  ∀ n, P4596673704850826976.a n = A017311 n

theorem P4596673704850826976.correct : P4596673704850826976.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P4596673704850826976.a, A017311.P17526156729363613882.a, A017306, A017306.P4754400106784477427.a, A017309, A017309.P11716717383300043174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P6598261359383203571

`A017307(n)*A017308(n)`
-/

namespace A017311.P6598261359383203571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n * A017308 n

end

end A017311.P6598261359383203571

namespace A017311

/-- `A017307(n)*A017308(n)` -/
def P6598261359383203571.Spec : Prop :=
  ∀ n, P6598261359383203571.a n = A017311 n

theorem P6598261359383203571.correct : P6598261359383203571.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P6598261359383203571.a, A017311.P17526156729363613882.a, A017307, A017307.P14907071720325567128.a, A017308, A017308.P12544717933082687973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P2994380852424460580

`A017305(n)²*A017309(n)`
-/

namespace A017311.P2994380852424460580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n ^ 2 * A017309 n

end

end A017311.P2994380852424460580

namespace A017311

/-- `A017305(n)²*A017309(n)` -/
def P2994380852424460580.Spec : Prop :=
  ∀ n, P2994380852424460580.a n = A017311 n

theorem P2994380852424460580.correct : P2994380852424460580.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P2994380852424460580.a, A017311.P17526156729363613882.a, A017305, A017305.P18400868229800390008.a, A017309, A017309.P11716717383300043174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P16174730179688258893

`A017306(n)²*A017307(n)`
-/

namespace A017311.P16174730179688258893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n ^ 2 * A017307 n

end

end A017311.P16174730179688258893

namespace A017311

/-- `A017306(n)²*A017307(n)` -/
def P16174730179688258893.Spec : Prop :=
  ∀ n, P16174730179688258893.a n = A017311 n

theorem P16174730179688258893.correct : P16174730179688258893.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P16174730179688258893.a, A017311.P17526156729363613882.a, A017306, A017306.P4754400106784477427.a, A017307, A017307.P14907071720325567128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P13288546976436342263

`A017307(n)²*A017305(n)`
-/

namespace A017311.P13288546976436342263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n ^ 2 * A017305 n

end

end A017311.P13288546976436342263

namespace A017311

/-- `A017307(n)²*A017305(n)` -/
def P13288546976436342263.Spec : Prop :=
  ∀ n, P13288546976436342263.a n = A017311 n

theorem P13288546976436342263.correct : P13288546976436342263.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P13288546976436342263.a, A017311.P17526156729363613882.a, A017305, A017305.P18400868229800390008.a, A017307, A017307.P14907071720325567128.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P5874329624903608684

`A017308(n)²/A017305(n)`
-/

namespace A017311.P5874329624903608684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017308 n ^ 2 : ℚ) / (A017305 n : ℚ)

end

end A017311.P5874329624903608684

namespace A017311

/-- `A017308(n)²/A017305(n)` -/
def P5874329624903608684.Spec : Prop :=
  ∀ n, P5874329624903608684.a n = (A017311 n : ℚ)

end A017311

/-! ## A017311.P8148834097216122358

`A017313(n)/A017305(n)²`
-/

namespace A017311.P8148834097216122358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017313 n : ℚ) / (A017305 n ^ 2 : ℚ)

end

end A017311.P8148834097216122358

namespace A017311

/-- `A017313(n)/A017305(n)²` -/
def P8148834097216122358.Spec : Prop :=
  ∀ n, P8148834097216122358.a n = (A017311 n : ℚ)

end A017311

/-! ## A017311.P4430968549638349833

`A017306(n)²²/A017305(n)`
-/

namespace A017311.P4430968549638349833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017306 n ^ 2) ^ 2 : ℚ) / (A017305 n : ℚ)

end

end A017311.P4430968549638349833

namespace A017311

/-- `A017306(n)²²/A017305(n)` -/
def P4430968549638349833.Spec : Prop :=
  ∀ n, P4430968549638349833.a n = (A017311 n : ℚ)

end A017311

/-! ## A017311.P11001688796916643857

`A017309(n)/A017307(n)*A017309(n)`
-/

namespace A017311.P11001688796916643857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017309 n : ℚ) / (A017307 n : ℚ) * (A017309 n : ℚ)

end

end A017311.P11001688796916643857

namespace A017311

/-- `A017309(n)/A017307(n)*A017309(n)` -/
def P11001688796916643857.Spec : Prop :=
  ∀ n, P11001688796916643857.a n = (A017311 n : ℚ)

end A017311

/-! ## A017311.P10899579009970834492

`A016891(2*n)`
-/

namespace A017311.P10899579009970834492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016891 (2 * n)

end

end A017311.P10899579009970834492

namespace A017311

/-- `A016891(2*n)` -/
def P10899579009970834492.Spec : Prop :=
  ∀ n, P10899579009970834492.a n = A017311 n

theorem P10899579009970834492.correct : P10899579009970834492.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P10899579009970834492.a, A017311.P17526156729363613882.a, A016891, A016891.P1643224120457508040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P14285016346344028261

`A016885(2*n)*A016890(2*n)`
-/

namespace A017311.P14285016346344028261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) * A016890 (2 * n)

end

end A017311.P14285016346344028261

namespace A017311

/-- `A016885(2*n)*A016890(2*n)` -/
def P14285016346344028261.Spec : Prop :=
  ∀ n, P14285016346344028261.a n = A017311 n

theorem P14285016346344028261.correct : P14285016346344028261.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P14285016346344028261.a, A017311.P17526156729363613882.a, A016885, A016885.P12442016633976001399.a, A016890, A016890.P2080566048522477546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P3037717834590477206

`A016886(2*n)*A016889(2*n)`
-/

namespace A017311.P3037717834590477206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 (2 * n) * A016889 (2 * n)

end

end A017311.P3037717834590477206

namespace A017311

/-- `A016886(2*n)*A016889(2*n)` -/
def P3037717834590477206.Spec : Prop :=
  ∀ n, P3037717834590477206.a n = A017311 n

theorem P3037717834590477206.correct : P3037717834590477206.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P3037717834590477206.a, A017311.P17526156729363613882.a, A016886, A016886.P17506654077827832753.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P3380879975086801711

`A016887(2*n)*A016888(2*n)`
-/

namespace A017311.P3380879975086801711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 (2 * n) * A016888 (2 * n)

end

end A017311.P3380879975086801711

namespace A017311

/-- `A016887(2*n)*A016888(2*n)` -/
def P3380879975086801711.Spec : Prop :=
  ∀ n, P3380879975086801711.a n = A017311 n

theorem P3380879975086801711.correct : P3380879975086801711.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P3380879975086801711.a, A017311.P17526156729363613882.a, A016887, A016887.P17409783610642502630.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P17388124944480163405

`A016892(2*n)/A016885(2*n)`
-/

namespace A017311.P17388124944480163405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016892 (2 * n) : ℚ) / (A016885 (2 * n) : ℚ)

end

end A017311.P17388124944480163405

namespace A017311

/-- `A016892(2*n)/A016885(2*n)` -/
def P17388124944480163405.Spec : Prop :=
  ∀ n, P17388124944480163405.a n = (A017311 n : ℚ)

theorem P17388124944480163405.correct : P17388124944480163405.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P17388124944480163405.a, A017311.P17526156729363613882.a, A016885, A016885.P12442016633976001399.a, A016892, A016892.P4747035820161575619.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P1220809891483902454

`A016885(2*n)²*A016889(2*n)`
-/

namespace A017311.P1220809891483902454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n) ^ 2 * A016889 (2 * n)

end

end A017311.P1220809891483902454

namespace A017311

/-- `A016885(2*n)²*A016889(2*n)` -/
def P1220809891483902454.Spec : Prop :=
  ∀ n, P1220809891483902454.a n = A017311 n

theorem P1220809891483902454.correct : P1220809891483902454.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P1220809891483902454.a, A017311.P17526156729363613882.a, A016885, A016885.P12442016633976001399.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P13033914692112599231

`A016886(2*n)²*A016887(2*n)`
-/

namespace A017311.P13033914692112599231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 (2 * n) ^ 2 * A016887 (2 * n)

end

end A017311.P13033914692112599231

namespace A017311

/-- `A016886(2*n)²*A016887(2*n)` -/
def P13033914692112599231.Spec : Prop :=
  ∀ n, P13033914692112599231.a n = A017311 n

theorem P13033914692112599231.correct : P13033914692112599231.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P13033914692112599231.a, A017311.P17526156729363613882.a, A016886, A016886.P17506654077827832753.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-! ## A017311.P1323476526595301143

`A016887(2*n)²*A016885(2*n)`
-/

namespace A017311.P1323476526595301143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 (2 * n) ^ 2 * A016885 (2 * n)

end

end A017311.P1323476526595301143

namespace A017311

/-- `A016887(2*n)²*A016885(2*n)` -/
def P1323476526595301143.Spec : Prop :=
  ∀ n, P1323476526595301143.a n = A017311 n

theorem P1323476526595301143.correct : P1323476526595301143.Spec := by
  intro n
  simp only [A017311, Nat.add_sub_cancel, A017311.P1323476526595301143.a, A017311.P17526156729363613882.a, A016885, A016885.P12442016633976001399.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017311

/-!
# A017312: a(n) = (10*n + 3)^8.

The programs for A017312, the canonical program `A017312.P6867229066951187642` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017312 has offset 0).

The definition of A017312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^8` (program `A017312.P6867229066951187642`, by `A017312.P6867229066951187642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017312.P6867229066951187642

`(10*n+3)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017312

/-- `(10*n+3)^8` -/
def P6867229066951187642.Spec : Prop :=
  ∀ n, (P6867229066951187642.a n : ℤ) = A017312 n

theorem P6867229066951187642.correct : P6867229066951187642.Spec := by
  intro n
  simp only [A017312]

end A017312

/-! ## A017312.P11909669755852008984

`A001016(A017305(n))`
-/

namespace A017312.P11909669755852008984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A017305 n).toNat

end

end A017312.P11909669755852008984

namespace A017312

/-- `A001016(A017305(n))` -/
def P11909669755852008984.Spec : Prop :=
  ∀ n, P11909669755852008984.a n = A017312 n

end A017312

/-! ## A017312.P1713512037495179617

`A017308(n)²`
-/

namespace A017312.P1713512037495179617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017308 n ^ 2

end

end A017312.P1713512037495179617

namespace A017312

/-- `A017308(n)²` -/
def P1713512037495179617.Spec : Prop :=
  ∀ n, P1713512037495179617.a n = A017312 n

theorem P1713512037495179617.correct : P1713512037495179617.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P1713512037495179617.a, A017312.P6867229066951187642.a, A017308, A017308.P12544717933082687973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P15027326941324360602

`A017306(n)²²`
-/

namespace A017312.P15027326941324360602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017306 n ^ 2) ^ 2

end

end A017312.P15027326941324360602

namespace A017312

/-- `A017306(n)²²` -/
def P15027326941324360602.Spec : Prop :=
  ∀ n, P15027326941324360602.a n = A017312 n

theorem P15027326941324360602.correct : P15027326941324360602.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P15027326941324360602.a, A017312.P6867229066951187642.a, A017306, A017306.P4754400106784477427.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P9932503146863912962

`(A017293(n)+1)²²²`
-/

namespace A017312.P9932503146863912962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017293 n + 1) ^ 2) ^ 2) ^ 2

end

end A017312.P9932503146863912962

namespace A017312

/-- `(A017293(n)+1)²²²` -/
def P9932503146863912962.Spec : Prop :=
  ∀ n, P9932503146863912962.a n = A017312 n

theorem P9932503146863912962.correct : P9932503146863912962.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P9932503146863912962.a, A017312.P6867229066951187642.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P16592920253331469580

`(A017281(n)+2)²²²`
-/

namespace A017312.P16592920253331469580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017281 n + 2) ^ 2) ^ 2) ^ 2

end

end A017312.P16592920253331469580

namespace A017312

/-- `(A017281(n)+2)²²²` -/
def P16592920253331469580.Spec : Prop :=
  ∀ n, P16592920253331469580.a n = A017312 n

theorem P16592920253331469580.correct : P16592920253331469580.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P16592920253331469580.a, A017312.P6867229066951187642.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P14096245945908107957

`(1-A017317(n))²²²`
-/

namespace A017312.P14096245945908107957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017317 n) ^ 2) ^ 2) ^ 2

end

end A017312.P14096245945908107957

namespace A017312

/-- `(1-A017317(n))²²²` -/
def P14096245945908107957.Spec : Prop :=
  ∀ n, P14096245945908107957.a n = A017312 n

theorem P14096245945908107957.correct : P14096245945908107957.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P14096245945908107957.a, A017312.P6867229066951187642.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P14384632143069838045

`(A008592(n)+3)²²²`
-/

namespace A017312.P14384632143069838045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008592 n + 3) ^ 2) ^ 2) ^ 2

end

end A017312.P14384632143069838045

namespace A017312

/-- `(A008592(n)+3)²²²` -/
def P14384632143069838045.Spec : Prop :=
  ∀ n, P14384632143069838045.a n = A017312 n

theorem P14384632143069838045.correct : P14384632143069838045.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P14384632143069838045.a, A017312.P6867229066951187642.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P12865627433541367643

`(2-A017329(n))²²²`
-/

namespace A017312.P12865627433541367643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017329 n) ^ 2) ^ 2) ^ 2

end

end A017312.P12865627433541367643

namespace A017312

/-- `(2-A017329(n))²²²` -/
def P12865627433541367643.Spec : Prop :=
  ∀ n, P12865627433541367643.a n = A017312 n

theorem P12865627433541367643.correct : P12865627433541367643.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P12865627433541367643.a, A017312.P6867229066951187642.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P1927736527286810629

`(A017197(n)+n)²²²`
-/

namespace A017312.P1927736527286810629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017197 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017312.P1927736527286810629

namespace A017312

/-- `(A017197(n)+n)²²²` -/
def P1927736527286810629.Spec : Prop :=
  ∀ n, P1927736527286810629.a n = A017312 n

theorem P1927736527286810629.correct : P1927736527286810629.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P1927736527286810629.a, A017312.P6867229066951187642.a, A017197, A017197.P8201470797211874866.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P17056714037557500784

`(n-A017425(n))²²²`
-/

namespace A017312.P17056714037557500784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017425 n) ^ 2) ^ 2) ^ 2

end

end A017312.P17056714037557500784

namespace A017312

/-- `(n-A017425(n))²²²` -/
def P17056714037557500784.Spec : Prop :=
  ∀ n, P17056714037557500784.a n = A017312 n

theorem P17056714037557500784.correct : P17056714037557500784.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P17056714037557500784.a, A017312.P6867229066951187642.a, A017425, A017425.P2855568862637286375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P10775452705651614023

`A017306(n)*A017310(n)`
-/

namespace A017312.P10775452705651614023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017306 n * A017310 n

end

end A017312.P10775452705651614023

namespace A017312

/-- `A017306(n)*A017310(n)` -/
def P10775452705651614023.Spec : Prop :=
  ∀ n, P10775452705651614023.a n = A017312 n

theorem P10775452705651614023.correct : P10775452705651614023.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P10775452705651614023.a, A017312.P6867229066951187642.a, A017306, A017306.P4754400106784477427.a, A017310, A017310.P10596882465810349871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P10277451587395115239

`A017307(n)*A017309(n)`
-/

namespace A017312.P10277451587395115239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n * A017309 n

end

end A017312.P10277451587395115239

namespace A017312

/-- `A017307(n)*A017309(n)` -/
def P10277451587395115239.Spec : Prop :=
  ∀ n, P10277451587395115239.a n = A017312 n

theorem P10277451587395115239.correct : P10277451587395115239.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P10277451587395115239.a, A017312.P6867229066951187642.a, A017307, A017307.P14907071720325567128.a, A017309, A017309.P11716717383300043174.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P14854935954643052361

`A017313(n)/A017305(n)`
-/

namespace A017312.P14854935954643052361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017313 n : ℚ) / (A017305 n : ℚ)

end

end A017312.P14854935954643052361

namespace A017312

/-- `A017313(n)/A017305(n)` -/
def P14854935954643052361.Spec : Prop :=
  ∀ n, P14854935954643052361.a n = (A017312 n : ℚ)

end A017312

/-! ## A017312.P10648096957176197998

`Δ[A145995(n+1)]²²²`
-/

namespace A017312.P10648096957176197998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017312.P10648096957176197998

namespace A017312

/-- `Δ[A145995(n+1)]²²²` -/
def P10648096957176197998.Spec : Prop :=
  ∀ n, P10648096957176197998.a n = A017312 n

theorem P10648096957176197998.correct : P10648096957176197998.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P10648096957176197998.f1, A017312.P10648096957176197998.a, A017312.P6867229066951187642.a, A145995, A145995.P7477718694786758229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P3842988053779591195

`Δ[A147874(n+1)]²²²`
-/

namespace A017312.P3842988053779591195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017312.P3842988053779591195

namespace A017312

/-- `Δ[A147874(n+1)]²²²` -/
def P3842988053779591195.Spec : Prop :=
  ∀ n, P3842988053779591195.a n = A017312 n

theorem P3842988053779591195.correct : P3842988053779591195.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P3842988053779591195.f1, A017312.P3842988053779591195.a, A017312.P6867229066951187642.a, A147874, A147874.P12438232049573977665.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P9980153907737542731

`Δ[A295905(n+1)]²²²`
-/

namespace A017312.P9980153907737542731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295905 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017312.P9980153907737542731

namespace A017312

/-- `Δ[A295905(n+1)]²²²` -/
def P9980153907737542731.Spec : Prop :=
  ∀ n, P9980153907737542731.a n = A017312 n

theorem P9980153907737542731.correct : P9980153907737542731.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P9980153907737542731.f1, A017312.P9980153907737542731.a, A017312.P6867229066951187642.a, A295905, A295905.P10892409839882005326.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P5547428191406392390

`A016892(2*n)`
-/

namespace A017312.P5547428191406392390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016892 (2 * n)

end

end A017312.P5547428191406392390

namespace A017312

/-- `A016892(2*n)` -/
def P5547428191406392390.Spec : Prop :=
  ∀ n, P5547428191406392390.a n = A017312 n

theorem P5547428191406392390.correct : P5547428191406392390.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P5547428191406392390.a, A017312.P6867229066951187642.a, A016892, A016892.P4747035820161575619.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P12678247549657393378

`A016888(2*n)²`
-/

namespace A017312.P12678247549657393378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 (2 * n) ^ 2

end

end A017312.P12678247549657393378

namespace A017312

/-- `A016888(2*n)²` -/
def P12678247549657393378.Spec : Prop :=
  ∀ n, P12678247549657393378.a n = A017312 n

theorem P12678247549657393378.correct : P12678247549657393378.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P12678247549657393378.a, A017312.P6867229066951187642.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-! ## A017312.P3264388515215215288

`A016886(2*n)²²`
-/

namespace A017312.P3264388515215215288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 (2 * n) ^ 2) ^ 2

end

end A017312.P3264388515215215288

namespace A017312

/-- `A016886(2*n)²²` -/
def P3264388515215215288.Spec : Prop :=
  ∀ n, P3264388515215215288.a n = A017312 n

theorem P3264388515215215288.correct : P3264388515215215288.Spec := by
  intro n
  simp only [A017312, Nat.add_sub_cancel, A017312.P3264388515215215288.a, A017312.P6867229066951187642.a, A016886, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017312

/-!
# A017313: a(n) = (10*n + 3)^9.

The programs for A017313, the canonical program `A017313.P9615052772185367146` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017313 has offset 0).

The definition of A017313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+3)^9` (program `A017313.P9615052772185367146`, by `A017313.P9615052772185367146.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017313.P9615052772185367146

`(10*n+3)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017313

/-- `(10*n+3)^9` -/
def P9615052772185367146.Spec : Prop :=
  ∀ n, (P9615052772185367146.a n : ℤ) = A017313 n

theorem P9615052772185367146.correct : P9615052772185367146.Spec := by
  intro n
  simp only [A017313]

end A017313

/-! ## A017313.P5351433697633738585

`sqrt(A017310(n)^3)`
-/

namespace A017313.P5351433697633738585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017310 n ^ 3 : ℝ)

end

end A017313.P5351433697633738585

namespace A017313

/-- `sqrt(A017310(n)^3)` -/
def P5351433697633738585.Spec : Prop :=
  ∀ n, P5351433697633738585.a n = (A017313 n : ℝ)

end A017313

/-! ## A017313.P750803431882929327

`A017305(n)*A017312(n)`
-/

namespace A017313.P750803431882929327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017312 n

end

end A017313.P750803431882929327

namespace A017313

/-- `A017305(n)*A017312(n)` -/
def P750803431882929327.Spec : Prop :=
  ∀ n, P750803431882929327.a n = A017313 n

theorem P750803431882929327.correct : P750803431882929327.Spec := by
  intro n
  simp only [A017313, Nat.add_sub_cancel, A017313.P750803431882929327.a, A017313.P9615052772185367146.a, A017305, A017305.P18400868229800390008.a, A017312, A017312.P6867229066951187642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017313

/-! ## A017313.P8387337653505710399

`A017307(n)*A017310(n)`
-/

namespace A017313.P8387337653505710399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017307 n * A017310 n

end

end A017313.P8387337653505710399

namespace A017313

/-- `A017307(n)*A017310(n)` -/
def P8387337653505710399.Spec : Prop :=
  ∀ n, P8387337653505710399.a n = A017313 n

theorem P8387337653505710399.correct : P8387337653505710399.Spec := by
  intro n
  simp only [A017313, Nat.add_sub_cancel, A017313.P8387337653505710399.a, A017313.P9615052772185367146.a, A017307, A017307.P14907071720325567128.a, A017310, A017310.P10596882465810349871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017313

/-! ## A017313.P17200940675052561221

`A017306(n)²²*sqrt(A017306(n))`
-/

namespace A017313.P17200940675052561221
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A017306 n ^ 2) ^ 2 : ℝ) * Real.sqrt (A017306 n : ℝ)

end

end A017313.P17200940675052561221

namespace A017313

/-- `A017306(n)²²*sqrt(A017306(n))` -/
def P17200940675052561221.Spec : Prop :=
  ∀ n, P17200940675052561221.a n = (A017313 n : ℝ)

end A017313

/-! ## A017313.P11221480715584416297

`A017308(n)²*sqrt(sqrt(A017308(n)))`
-/

namespace A017313.P11221480715584416297
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017308 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017308 n : ℝ))

end

end A017313.P11221480715584416297

namespace A017313

/-- `A017308(n)²*sqrt(sqrt(A017308(n)))` -/
def P11221480715584416297.Spec : Prop :=
  ∀ n, P11221480715584416297.a n = (A017313 n : ℝ)

end A017313

/-! ## A017313.P3306634135407264597

`A016893(2*n)`
-/

namespace A017313.P3306634135407264597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016893 (2 * n)

end

end A017313.P3306634135407264597

namespace A017313

/-- `A016893(2*n)` -/
def P3306634135407264597.Spec : Prop :=
  ∀ n, P3306634135407264597.a n = A017313 n

theorem P3306634135407264597.correct : P3306634135407264597.Spec := by
  intro n
  simp only [A017313, Nat.add_sub_cancel, A017313.P3306634135407264597.a, A017313.P9615052772185367146.a, A016893, A016893.P16330274285848702467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017313

/-! ## A017313.P12286339581733209489

`A016886(2*n)²²*A016885(2*n)`
-/

namespace A017313.P12286339581733209489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 (2 * n) ^ 2) ^ 2 * A016885 (2 * n)

end

end A017313.P12286339581733209489

namespace A017313

/-- `A016886(2*n)²²*A016885(2*n)` -/
def P12286339581733209489.Spec : Prop :=
  ∀ n, P12286339581733209489.a n = A017313 n

theorem P12286339581733209489.correct : P12286339581733209489.Spec := by
  intro n
  simp only [A017313, Nat.add_sub_cancel, A017313.P12286339581733209489.a, A017313.P9615052772185367146.a, A016885, A016885.P12442016633976001399.a, A016886, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017313

/-! ## A017313.P5068444210775480621

`A016761(A016945(n)-(n+2))`
-/

namespace A017313.P5068444210775480621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n - (n + 2 : ℤ)).toNat

end

end A017313.P5068444210775480621

namespace A017313

/-- `A016761(A016945(n)-(n+2))` -/
def P5068444210775480621.Spec : Prop :=
  ∀ n, P5068444210775480621.a n = A017313 n

end A017313

/-! ## A017313.P2339115852745619998

`A001017(A017305(n))`
-/

namespace A017313.P2339115852745619998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017305 n).toNat

end

end A017313.P2339115852745619998

namespace A017313

/-- `A001017(A017305(n))` -/
def P2339115852745619998.Spec : Prop :=
  ∀ n, P2339115852745619998.a n = A017313 n

end A017313

/-! ## A017313.P13864026986264243082

`A001017(A017293(n)+1)`
-/

namespace A017313.P13864026986264243082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017293 n + 1).toNat

end

end A017313.P13864026986264243082

namespace A017313

/-- `A001017(A017293(n)+1)` -/
def P13864026986264243082.Spec : Prop :=
  ∀ n, P13864026986264243082.a n = A017313 n

end A017313

/-! ## A017313.P10339027079832293293

`A001017(A017281(n)+2)`
-/

namespace A017313.P10339027079832293293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + 2).toNat

end

end A017313.P10339027079832293293

namespace A017313

/-- `A001017(A017281(n)+2)` -/
def P10339027079832293293.Spec : Prop :=
  ∀ n, P10339027079832293293.a n = A017313 n

end A017313

/-! ## A017313.P2824684794904705427

`A001017(A017341(2*n)/2)`
-/

namespace A017313.P2824684794904705427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017341 (2 * n) : ℚ) / 2)).toNat

end

end A017313.P2824684794904705427

namespace A017313

/-- `A001017(A017341(2*n)/2)` -/
def P2824684794904705427.Spec : Prop :=
  ∀ n, P2824684794904705427.a n = A017313 n

end A017313

/-! ## A017313.P13498368713939776578

`A001017(A008587(2*n+1)-2)`
-/

namespace A017313.P13498368713939776578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n + 1) - 2).toNat

end

end A017313.P13498368713939776578

namespace A017313

/-- `A001017(A008587(2*n+1)-2)` -/
def P13498368713939776578.Spec : Prop :=
  ∀ n, P13498368713939776578.a n = A017313 n

end A017313

/-!
# A017314: 

The programs for A017314, there is no canonical definition to state claims against.
-/

/-! ## A017314.P16940061504918582592

`(10*n+3)^10`
-/

namespace A017314.P16940061504918582592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 3) ^ 10

end

end A017314.P16940061504918582592

/-! ## A017314.P3810478644120820115

`A017309(n)²`
-/

namespace A017314.P3810478644120820115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017309 n ^ 2

end

end A017314.P3810478644120820115

/-! ## A017314.P10671476480529970347

`sqrt(A017308(n)^5)`
-/

namespace A017314.P10671476480529970347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017308 n ^ 5 : ℝ)

end

end A017314.P10671476480529970347

/-! ## A017314.P13375955105531296147

`A017305(n)*A017313(n)`
-/

namespace A017314.P13375955105531296147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017313 n

end

end A017314.P13375955105531296147

/-! ## A017314.P2189523476183833912

`A017305(n)²*A017312(n)`
-/

namespace A017314.P2189523476183833912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n ^ 2 * A017312 n

end

end A017314.P2189523476183833912

/-! ## A017314.P11140265134907535848

`A016889(2*n)²`
-/

namespace A017314.P11140265134907535848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016889 (2 * n) ^ 2

end

end A017314.P11140265134907535848

/-! ## A017314.P18138173615388690616

`A016894(2*n)`
-/

namespace A017314.P18138173615388690616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016894 (2 * n)

end

end A017314.P18138173615388690616

/-! ## A017314.P4821125627536693869

`(A016886(2*n)²*A016885(2*n))²`
-/

namespace A017314.P4821125627536693869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 (2 * n) ^ 2 * A016885 (2 * n)) ^ 2

end

end A017314.P4821125627536693869

/-! ## A017314.P17838130695296484323

`A008454(A017281(n)+2)`
-/

namespace A017314.P17838130695296484323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + 2).toNat

end

end A017314.P17838130695296484323

/-! ## A017314.P1144395611168359975

`A008454(2*A016861(n)+1)`
-/

namespace A017314.P1144395611168359975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016861 n + 1).toNat

end

end A017314.P1144395611168359975

/-! ## A017314.P6834976997081948946

`A008454(A017341(2*n)/2)`
-/

namespace A017314.P6834976997081948946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (SequenceMachineLib.roundAway ((A017341 (2 * n) : ℚ) / 2)).toNat

end

end A017314.P6834976997081948946

/-! ## A017314.P849408807746633626

`A008454(A008587(2*n+1)-2)`
-/

namespace A017314.P849408807746633626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (2 * n + 1) - 2).toNat

end

end A017314.P849408807746633626

/-! ## A017314.P8912540656974650200

`A008454(A016861(n)+A016861(n)+1)`
-/

namespace A017314.P8912540656974650200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 n + (A016861 n + 1)).toNat

end

end A017314.P8912540656974650200

/-!
# A017315: 

The programs for A017315, there is no canonical definition to state claims against.
-/

/-! ## A017315.P4317374705680118716

`(10*n+3)^11`
-/

namespace A017315.P4317374705680118716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 3) ^ 11

end

end A017315.P4317374705680118716

/-! ## A017315.P18116962657441878480

`A017305(n)²*A017313(n)`
-/

namespace A017315.P18116962657441878480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n ^ 2 * A017313 n

end

end A017315.P18116962657441878480

/-! ## A017315.P10349797092533697678

`A017305(n)*A017312(n)*A017305(n)²`
-/

namespace A017315.P10349797092533697678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n * A017312 n * A017305 n ^ 2

end

end A017315.P10349797092533697678

/-! ## A017315.P11919159135104842903

`A016887(2*n)²²/A016885(2*n)`
-/

namespace A017315.P11919159135104842903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016887 (2 * n) ^ 2) ^ 2 : ℚ) / (A016885 (2 * n) : ℚ)

end

end A017315.P11919159135104842903

/-! ## A017315.P16317126774908125123

`A008455(A017281(n)+2)`
-/

namespace A017315.P16317126774908125123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 2).toNat

end

end A017315.P16317126774908125123

/-! ## A017315.P17468654870976857300

`A008455(A017317(n)-1)`
-/

namespace A017315.P17468654870976857300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017317 n - 1).toNat

end

end A017315.P17468654870976857300

/-! ## A017315.P6322344302018029947

`A008455(A008592(n)+3)`
-/

namespace A017315.P6322344302018029947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008592 n + 3).toNat

end

end A017315.P6322344302018029947

/-! ## A017315.P11050441864528411427

`A008455(A017353(n)-4)`
-/

namespace A017315.P11050441864528411427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017353 n - 4).toNat

end

end A017315.P11050441864528411427

/-! ## A017315.P17188526759327382191

`A008455(A017101(n)+A005843(n))`
-/

namespace A017315.P17188526759327382191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017101 n + A005843 n).toNat

end

end A017315.P17188526759327382191

/-! ## A017315.P5436597049117490868

`A008455(A016993(n)+A016789(n))`
-/

namespace A017315.P5436597049117490868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016993 n + A016789 n).toNat

end

end A017315.P5436597049117490868

/-!
# A017316: 

The programs for A017316, there is no canonical definition to state claims against.
-/

/-! ## A017316.P15902734492766838353

`(10*n+3)^12`
-/

namespace A017316.P15902734492766838353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 3) ^ 12

end

end A017316.P15902734492766838353

/-! ## A017316.P10521229737062912378

`A017310(n)²`
-/

namespace A017316.P10521229737062912378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017310 n ^ 2

end

end A017316.P10521229737062912378

/-! ## A017316.P8116754551264544268

`(A017305(n)^6)²`
-/

namespace A017316.P8116754551264544268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n ^ 6) ^ 2

end

end A017316.P8116754551264544268

/-! ## A017316.P14070473756933537360

`sqrt(A017312(n))*A017312(n)`
-/

namespace A017316.P14070473756933537360
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017312 n : ℝ) * (A017312 n : ℝ)

end

end A017316.P14070473756933537360

/-! ## A017316.P2503897756581442841

`A017305(n)²²*A017312(n)`
-/

namespace A017316.P2503897756581442841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017305 n ^ 2) ^ 2 * A017312 n

end

end A017316.P2503897756581442841

/-! ## A017316.P13181123262310291366

`(A016885(2*n)*A016886(2*n))²²`
-/

namespace A017316.P13181123262310291366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 (2 * n) * A016886 (2 * n)) ^ 2) ^ 2

end

end A017316.P13181123262310291366

/-! ## A017316.P10230261654284733276

`sqrt(A017312(n)^3)`
-/

namespace A017316.P10230261654284733276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017312 n ^ 3 : ℝ)

end

end A017316.P10230261654284733276

/-! ## A017316.P1354268333637070495

`A000578(A017293(n)+1)²²`
-/

namespace A017316.P1354268333637070495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017293 n + 1).toNat ^ 2) ^ 2

end

end A017316.P1354268333637070495

/-! ## A017316.P11690846595875789020

`A000578(A017281(n)+2)²²`
-/

namespace A017316.P11690846595875789020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017281 n + 2).toNat ^ 2) ^ 2

end

end A017316.P11690846595875789020

/-! ## A017316.P14303847215539979106

`A000578(A016885(2*n))²²`
-/

namespace A017316.P14303847215539979106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016885 (2 * n)).toNat ^ 2) ^ 2

end

end A017316.P14303847215539979106

/-! ## A017316.P8418274925466431796

`A000578(A017425(n)-n)²²`
-/

namespace A017316.P8418274925466431796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017425 n - (n : ℤ)).toNat ^ 2) ^ 2

end

end A017316.P8418274925466431796

/-! ## A017316.P3057337730830884023

`A000578(A017305(n))*A017313(n)`
-/

namespace A017316.P3057337730830884023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017305 n).toNat * A017313 n

end

end A017316.P3057337730830884023

/-!
# A017317: a(n) = 10*n + 4.

The programs for A017317, the canonical program `A017317.P14631111836214894890` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017317 has offset 0).

The definition of A017317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+4` (program `A017317.P14631111836214894890`, by `A017317.P14631111836214894890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017317.P14631111836214894890

`10*n+4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017317

/-- `10*n+4` -/
def P14631111836214894890.Spec : Prop :=
  ∀ n, (P14631111836214894890.a n : ℤ) = A017317 n

theorem P14631111836214894890.correct : P14631111836214894890.Spec := by
  intro n
  simp only [A017317]

end A017317

/-!
# A017318: a(n) = (10*n + 4)^2.

The programs for A017318, the canonical program `A017318.P7055602040077496612` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017318 has offset 0).

The definition of A017318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)²` (program `A017318.P7055602040077496612`, by `A017318.P7055602040077496612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017318.P7055602040077496612

`(10*n+4)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017318

/-- `(10*n+4)²` -/
def P7055602040077496612.Spec : Prop :=
  ∀ n, (P7055602040077496612.a n : ℤ) = A017318 n

theorem P7055602040077496612.correct : P7055602040077496612.Spec := by
  intro n
  simp only [A017318]

end A017318

/-! ## A017318.P3705190316390560282

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=16, a(1)=196, a(2)=576`
-/

namespace A017318.P3705190316390560282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 196, 576] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017318.P3705190316390560282

namespace A017318

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3705190316390560282.Spec : Prop :=
  ∀ n, P3705190316390560282.a n = A017318 n

theorem P3705190316390560282.correct : P3705190316390560282.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017318, Nat.add_sub_cancel, A017318.P3705190316390560282.a, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017318, Nat.add_sub_cancel, A017318.P3705190316390560282.a, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017318

/-! ## A017318.P2328777810113176581

`4*A016874(n)`
-/

namespace A017318.P2328777810113176581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016874 n

end

end A017318.P2328777810113176581

namespace A017318

/-- `4*A016874(n)` -/
def P2328777810113176581.Spec : Prop :=
  ∀ n, P2328777810113176581.a n = A017318 n

theorem P2328777810113176581.correct : P2328777810113176581.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P2328777810113176581.a, A017318.P7055602040077496612.a, A016874, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-! ## A017318.P4307202187105644997

`A016898(2*n)`
-/

namespace A017318.P4307202187105644997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n)

end

end A017318.P4307202187105644997

namespace A017318

/-- `A016898(2*n)` -/
def P4307202187105644997.Spec : Prop :=
  ∀ n, P4307202187105644997.a n = A017318 n

theorem P4307202187105644997.correct : P4307202187105644997.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P4307202187105644997.a, A017318.P7055602040077496612.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-! ## A017318.P9952172176788489544

`record[(gcd(10, 1-n)+n+3)²]`
-/

namespace A017318.P9952172176788489544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 10 (1 - (n : ℤ)) + (n + 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017318.P9952172176788489544

namespace A017318

/-- `record[(gcd(10, 1-n)+n+3)²]` -/
def P9952172176788489544.Spec : Prop :=
  ∀ n, (P9952172176788489544.a n : ℤ) = A017318 n

end A017318

/-! ## A017318.P4457761586785209339

`sqrt(A017320(n))`
-/

namespace A017318.P4457761586785209339
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017320 n : ℝ)

end

end A017318.P4457761586785209339

namespace A017318

/-- `sqrt(A017320(n))` -/
def P4457761586785209339.Spec : Prop :=
  ∀ n, P4457761586785209339.a n = (A017318 n : ℝ)

end A017318

/-! ## A017318.P12615083713912295973

`A017317(n)^2`
-/

namespace A017318.P12615083713912295973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n ^ 2

end

end A017318.P12615083713912295973

namespace A017318

/-- `A017317(n)^2` -/
def P12615083713912295973.Spec : Prop :=
  ∀ n, P12615083713912295973.a n = A017318 n

theorem P12615083713912295973.correct : P12615083713912295973.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P12615083713912295973.a, A017318.P7055602040077496612.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-! ## A017318.P7023221559058157600

`sqrt(sqrt(A017324(n)))`
-/

namespace A017318.P7023221559058157600
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017324 n : ℝ))

end

end A017318.P7023221559058157600

namespace A017318

/-- `sqrt(sqrt(A017324(n)))` -/
def P7023221559058157600.Spec : Prop :=
  ∀ n, P7023221559058157600.a n = (A017318 n : ℝ)

end A017318

/-! ## A017318.P4488623177257944686

`4*A016873(n)²`
-/

namespace A017318.P4488623177257944686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016873 n ^ 2

end

end A017318.P4488623177257944686

namespace A017318

/-- `4*A016873(n)²` -/
def P4488623177257944686.Spec : Prop :=
  ∀ n, P4488623177257944686.a n = A017318 n

theorem P4488623177257944686.correct : P4488623177257944686.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P4488623177257944686.a, A017318.P7055602040077496612.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-! ## A017318.P14435632504515381201

`4*sqrt(A016876(n))`
-/

namespace A017318.P14435632504515381201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016876 n : ℝ)

end

end A017318.P14435632504515381201

namespace A017318

/-- `4*sqrt(A016876(n))` -/
def P14435632504515381201.Spec : Prop :=
  ∀ n, P14435632504515381201.a n = (A017318 n : ℝ)

end A017318

/-! ## A017318.P3652478739453607085

`A017322(n)^(1/3)`
-/

namespace A017318.P3652478739453607085
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017322 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017318.P3652478739453607085

namespace A017318

/-- `A017322(n)^(1/3)` -/
def P3652478739453607085.Spec : Prop :=
  ∀ n, P3652478739453607085.a n = (A017318 n : ℝ)

end A017318

/-! ## A017318.P6942087626988274605

`A017319(n)^(2/3)`
-/

namespace A017318.P6942087626988274605
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017319 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017318.P6942087626988274605

namespace A017318

/-- `A017319(n)^(2/3)` -/
def P6942087626988274605.Spec : Prop :=
  ∀ n, P6942087626988274605.a n = (A017318 n : ℝ)

end A017318

/-! ## A017318.P4935715726239520113

`4*(1-A016885(n))²`
-/

namespace A017318.P4935715726239520113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (1 - A016885 n) ^ 2

end

end A017318.P4935715726239520113

namespace A017318

/-- `4*(1-A016885(n))²` -/
def P4935715726239520113.Spec : Prop :=
  ∀ n, P4935715726239520113.a n = A017318 n

theorem P4935715726239520113.correct : P4935715726239520113.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P4935715726239520113.a, A017318.P7055602040077496612.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-! ## A017318.P17747174795968751002

`A017319(n)/A017317(n)`
-/

namespace A017318.P17747174795968751002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017319 n : ℚ) / (A017317 n : ℚ)

end

end A017318.P17747174795968751002

namespace A017318

/-- `A017319(n)/A017317(n)` -/
def P17747174795968751002.Spec : Prop :=
  ∀ n, P17747174795968751002.a n = (A017318 n : ℚ)

end A017318

/-! ## A017318.P9658952206663251687

`A017321(n)/A017319(n)`
-/

namespace A017318.P9658952206663251687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017321 n : ℚ) / (A017319 n : ℚ)

end

end A017318.P9658952206663251687

namespace A017318

/-- `A017321(n)/A017319(n)` -/
def P9658952206663251687.Spec : Prop :=
  ∀ n, P9658952206663251687.a n = (A017318 n : ℚ)

end A017318

/-! ## A017318.P7274175178522271996

`A017322(n)/A017320(n)`
-/

namespace A017318.P7274175178522271996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017322 n : ℚ) / (A017320 n : ℚ)

end

end A017318.P7274175178522271996

namespace A017318

/-- `A017322(n)/A017320(n)` -/
def P7274175178522271996.Spec : Prop :=
  ∀ n, P7274175178522271996.a n = (A017318 n : ℚ)

end A017318

/-! ## A017318.P10546564254981003424

`A017319(n)²/A017320(n)`
-/

namespace A017318.P10546564254981003424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017319 n ^ 2 : ℚ) / (A017320 n : ℚ)

end

end A017318.P10546564254981003424

namespace A017318

/-- `A017319(n)²/A017320(n)` -/
def P10546564254981003424.Spec : Prop :=
  ∀ n, P10546564254981003424.a n = (A017318 n : ℚ)

end A017318

/-! ## A017318.P13515352051699188319

`A017322(n)/A017317(n)²²`
-/

namespace A017318.P13515352051699188319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017322 n : ℚ) / ((A017317 n ^ 2) ^ 2 : ℚ)

end

end A017318.P13515352051699188319

namespace A017318

/-- `A017322(n)/A017317(n)²²` -/
def P13515352051699188319.Spec : Prop :=
  ∀ n, P13515352051699188319.a n = (A017318 n : ℚ)

end A017318

/-! ## A017318.P10829204370703649094

`(2*A016876(n))²/A016878(n)`
-/

namespace A017318.P10829204370703649094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A016876 n) ^ 2 : ℚ) / (A016878 n : ℚ)

end

end A017318.P10829204370703649094

namespace A017318

/-- `(2*A016876(n))²/A016878(n)` -/
def P10829204370703649094.Spec : Prop :=
  ∀ n, P10829204370703649094.a n = (A017318 n : ℚ)

theorem P10829204370703649094.correct : P10829204370703649094.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P10829204370703649094.a, A017318.P7055602040077496612.a, A016876, A016876.P3444311806117056528.a, A016878, A016878.P5221297515916649507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-! ## A017318.P4231265946208918941

`(2*A016877(n))²/A016880(n)`
-/

namespace A017318.P4231265946208918941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * A016877 n) ^ 2 : ℚ) / (A016880 n : ℚ)

end

end A017318.P4231265946208918941

namespace A017318

/-- `(2*A016877(n))²/A016880(n)` -/
def P4231265946208918941.Spec : Prop :=
  ∀ n, P4231265946208918941.a n = (A017318 n : ℚ)

theorem P4231265946208918941.correct : P4231265946208918941.Spec := by
  intro n
  simp only [A017318, Nat.add_sub_cancel, A017318.P4231265946208918941.a, A017318.P7055602040077496612.a, A016877, A016877.P4696338323351149343.a, A016880, A016880.P10254929196614950629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017318

/-!
# A017319: a(n) = (10*n + 4)^3.

The programs for A017319, the canonical program `A017319.P7214915799351479979` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017319 has offset 0).

The definition of A017319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^3` (program `A017319.P7214915799351479979`, by `A017319.P7214915799351479979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017319.P7214915799351479979

`(10*n+4)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017319

/-- `(10*n+4)^3` -/
def P7214915799351479979.Spec : Prop :=
  ∀ n, (P7214915799351479979.a n : ℤ) = A017319 n

theorem P7214915799351479979.correct : P7214915799351479979.Spec := by
  intro n
  simp only [A017319]

end A017319

/-! ## A017319.P9662624315339704048

`8*A016875(n)`
-/

namespace A017319.P9662624315339704048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016875 n

end

end A017319.P9662624315339704048

namespace A017319

/-- `8*A016875(n)` -/
def P9662624315339704048.Spec : Prop :=
  ∀ n, P9662624315339704048.a n = A017319 n

theorem P9662624315339704048.correct : P9662624315339704048.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P9662624315339704048.a, A017319.P7214915799351479979.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P16812761174365273679

`A016899(2*n)`
-/

namespace A017319.P16812761174365273679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 (2 * n)

end

end A017319.P16812761174365273679

namespace A017319

/-- `A016899(2*n)` -/
def P16812761174365273679.Spec : Prop :=
  ∀ n, P16812761174365273679.a n = A017319 n

theorem P16812761174365273679.correct : P16812761174365273679.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P16812761174365273679.a, A017319.P7214915799351479979.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P482974131062620798

`sqrt(A017322(n))`
-/

namespace A017319.P482974131062620798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017322 n : ℝ)

end

end A017319.P482974131062620798

namespace A017319

/-- `sqrt(A017322(n))` -/
def P482974131062620798.Spec : Prop :=
  ∀ n, P482974131062620798.a n = (A017319 n : ℝ)

end A017319

/-! ## A017319.P5652836578963802603

`sqrt(A017318(n)^3)`
-/

namespace A017319.P5652836578963802603
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017318 n ^ 3 : ℝ)

end

end A017319.P5652836578963802603

namespace A017319

/-- `sqrt(A017318(n)^3)` -/
def P5652836578963802603.Spec : Prop :=
  ∀ n, P5652836578963802603.a n = (A017319 n : ℝ)

end A017319

/-! ## A017319.P15859744661896874730

`8*A016873(n)^3`
-/

namespace A017319.P15859744661896874730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016873 n ^ 3

end

end A017319.P15859744661896874730

namespace A017319

/-- `8*A016873(n)^3` -/
def P15859744661896874730.Spec : Prop :=
  ∀ n, P15859744661896874730.a n = A017319 n

theorem P15859744661896874730.correct : P15859744661896874730.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P15859744661896874730.a, A017319.P7214915799351479979.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P2075017412729058792

`A017317(n)*(10*n+4)²`
-/

namespace A017319.P2075017412729058792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n * ((10 * n + 4) ^ 2 : ℤ)

end

end A017319.P2075017412729058792

namespace A017319

/-- `A017317(n)*(10*n+4)²` -/
def P2075017412729058792.Spec : Prop :=
  ∀ n, P2075017412729058792.a n = A017319 n

theorem P2075017412729058792.correct : P2075017412729058792.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P2075017412729058792.a, A017319.P7214915799351479979.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P8677419528253166269

`A017320(n)/A017317(n)`
-/

namespace A017319.P8677419528253166269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017320 n : ℚ) / (A017317 n : ℚ)

end

end A017319.P8677419528253166269

namespace A017319

/-- `A017320(n)/A017317(n)` -/
def P8677419528253166269.Spec : Prop :=
  ∀ n, P8677419528253166269.a n = (A017319 n : ℚ)

end A017319

/-! ## A017319.P7836801661631985821

`A017321(n)/A017318(n)`
-/

namespace A017319.P7836801661631985821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017321 n : ℚ) / (A017318 n : ℚ)

end

end A017319.P7836801661631985821

namespace A017319

/-- `A017321(n)/A017318(n)` -/
def P7836801661631985821.Spec : Prop :=
  ∀ n, P7836801661631985821.a n = (A017319 n : ℚ)

end A017319

/-! ## A017319.P17424671307725294734

`A017318(n)²/A017317(n)`
-/

namespace A017319.P17424671307725294734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017318 n ^ 2 : ℚ) / (A017317 n : ℚ)

end

end A017319.P17424671307725294734

namespace A017319

/-- `A017318(n)²/A017317(n)` -/
def P17424671307725294734.Spec : Prop :=
  ∀ n, P17424671307725294734.a n = (A017319 n : ℚ)

end A017319

/-! ## A017319.P3086574015648310897

`A017321(n)/A017317(n)²`
-/

namespace A017319.P3086574015648310897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017321 n : ℚ) / (A017317 n ^ 2 : ℚ)

end

end A017319.P3086574015648310897

namespace A017319

/-- `A017321(n)/A017317(n)²` -/
def P3086574015648310897.Spec : Prop :=
  ∀ n, P3086574015648310897.a n = (A017319 n : ℚ)

end A017319

/-! ## A017319.P10632689279382495803

`A017323(n)/A017317(n)²²`
-/

namespace A017319.P10632689279382495803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017323 n : ℚ) / ((A017317 n ^ 2) ^ 2 : ℚ)

end

end A017319.P10632689279382495803

namespace A017319

/-- `A017323(n)/A017317(n)²²` -/
def P10632689279382495803.Spec : Prop :=
  ∀ n, P10632689279382495803.a n = (A017319 n : ℚ)

end A017319

/-! ## A017319.P6311396958027354392

`(A016898(n)-A016850(n))*A016874(n)`
-/

namespace A017319.P6311396958027354392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016898 n - A016850 n) * A016874 n

end

end A017319.P6311396958027354392

namespace A017319

/-- `(A016898(n)-A016850(n))*A016874(n)` -/
def P6311396958027354392.Spec : Prop :=
  ∀ n, P6311396958027354392.a n = A017319 n

theorem P6311396958027354392.correct : P6311396958027354392.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P6311396958027354392.a, A017319.P7214915799351479979.a, A016850, A016850.P11162086959237364138.a, A016874, A016874.P17500456718272948104.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P14235222467448183194

`A017322(n)/(A017317(n)²*A017317(n))`
-/

namespace A017319.P14235222467448183194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017322 n : ℚ) / (A017317 n ^ 2 * A017317 n : ℚ)

end

end A017319.P14235222467448183194

namespace A017319

/-- `A017322(n)/(A017317(n)²*A017317(n))` -/
def P14235222467448183194.Spec : Prop :=
  ∀ n, P14235222467448183194.a n = (A017319 n : ℚ)

end A017319

/-! ## A017319.P4814465209646332232

`A017367(2*n)/8`
-/

namespace A017319.P4814465209646332232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017367 (2 * n) : ℚ) / 8

end

end A017319.P4814465209646332232

namespace A017319

/-- `A017367(2*n)/8` -/
def P4814465209646332232.Spec : Prop :=
  ∀ n, P4814465209646332232.a n = (A017319 n : ℚ)

theorem P4814465209646332232.correct : P4814465209646332232.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P4814465209646332232.a, A017319.P7214915799351479979.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P10041266321044213114

`sqrt(A016902(2*n))`
-/

namespace A017319.P10041266321044213114
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016902 (2 * n) : ℝ)

end

end A017319.P10041266321044213114

namespace A017319

/-- `sqrt(A016902(2*n))` -/
def P10041266321044213114.Spec : Prop :=
  ∀ n, P10041266321044213114.a n = (A017319 n : ℝ)

end A017319

/-! ## A017319.P617562164813525763

`sqrt(A272914(2*n+1))`
-/

namespace A017319.P617562164813525763
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A272914 (2 * n + 1) : ℝ)

end

end A017319.P617562164813525763

namespace A017319

/-- `sqrt(A272914(2*n+1))` -/
def P617562164813525763.Spec : Prop :=
  ∀ n, P617562164813525763.a n = (A017319 n : ℝ)

end A017319

/-! ## A017319.P1883521525268770737

`A016897(2*n)*A017318(n)`
-/

namespace A017319.P1883521525268770737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n) * A017318 n

end

end A017319.P1883521525268770737

namespace A017319

/-- `A016897(2*n)*A017318(n)` -/
def P1883521525268770737.Spec : Prop :=
  ∀ n, P1883521525268770737.a n = A017319 n

theorem P1883521525268770737.correct : P1883521525268770737.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P1883521525268770737.a, A017319.P7214915799351479979.a, A016897, A016897.P9287350145607759688.a, A017318, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-! ## A017319.P18246390875997837660

`A016898(2*n)*A017317(n)`
-/

namespace A017319.P18246390875997837660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n) * A017317 n

end

end A017319.P18246390875997837660

namespace A017319

/-- `A016898(2*n)*A017317(n)` -/
def P18246390875997837660.Spec : Prop :=
  ∀ n, P18246390875997837660.a n = A017319 n

theorem P18246390875997837660.correct : P18246390875997837660.Spec := by
  intro n
  simp only [A017319, Nat.add_sub_cancel, A017319.P18246390875997837660.a, A017319.P7214915799351479979.a, A016898, A016898.P14343272817953415938.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017319

/-!
# A017320: a(n) = (10*n + 4)^4.

The programs for A017320, the canonical program `A017320.P6920118133699820454` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017320 has offset 0).

The definition of A017320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^4` (program `A017320.P6920118133699820454`, by `A017320.P6920118133699820454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017320.P6920118133699820454

`(10*n+4)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017320

/-- `(10*n+4)^4` -/
def P6920118133699820454.Spec : Prop :=
  ∀ n, (P6920118133699820454.a n : ℤ) = A017320 n

theorem P6920118133699820454.correct : P6920118133699820454.Spec := by
  intro n
  simp only [A017320]

end A017320

/-! ## A017320.P17005122209150176098

`and(10*n+5, -2)²²`
-/

namespace A017320.P17005122209150176098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (10 * n + 5 : ℤ) (-2) ^ 2) ^ 2

end

end A017320.P17005122209150176098

namespace A017320

/-- `and(10*n+5, -2)²²` -/
def P17005122209150176098.Spec : Prop :=
  ∀ n, P17005122209150176098.a n = A017320 n

end A017320

/-! ## A017320.P6509672223427529974

`xor(1, 5*(2*n+1))²²`
-/

namespace A017320.P6509672223427529974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (5 * (2 * n + 1)) ^ 2) ^ 2

end

end A017320.P6509672223427529974

namespace A017320

/-- `xor(1, 5*(2*n+1))²²` -/
def P6509672223427529974.Spec : Prop :=
  ∀ n, (P6509672223427529974.a n : ℤ) = A017320 n

end A017320

/-! ## A017320.P7810358267784945426

`(5*or(1, 2*n)-1)²²`
-/

namespace A017320.P7810358267784945426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((5 * Nat.lor 1 (2 * n) : ℤ) - 1) ^ 2) ^ 2

end

end A017320.P7810358267784945426

namespace A017320

/-- `(5*or(1, 2*n)-1)²²` -/
def P7810358267784945426.Spec : Prop :=
  ∀ n, P7810358267784945426.a n = A017320 n

end A017320

/-! ## A017320.P4131672927740809649

`(record[lcm(4, n+1)]+2*n)²²`
-/

namespace A017320.P4131672927740809649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 * n) ^ 2) ^ 2

end

end A017320.P4131672927740809649

namespace A017320

/-- `(record[lcm(4, n+1)]+2*n)²²` -/
def P4131672927740809649.Spec : Prop :=
  ∀ n, (P4131672927740809649.a n : ℤ) = A017320 n

end A017320

/-! ## A017320.P12579538586986852751

`(2*(lcm(2, 2*n+1)+n))²²`
-/

namespace A017320.P12579538586986852751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.lcm 2 (2 * n + 1) + n)) ^ 2) ^ 2

end

end A017320.P12579538586986852751

namespace A017320

/-- `(2*(lcm(2, 2*n+1)+n))²²` -/
def P12579538586986852751.Spec : Prop :=
  ∀ n, (P12579538586986852751.a n : ℤ) = A017320 n

end A017320

/-! ## A017320.P9569209086594145024

`∩[2*n, a(n-1)+5]²²` with `a(0)=4`
-/

namespace A017320.P9569209086594145024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017320.P9569209086594145024

namespace A017320

/-- `∩[2*n, a(n-1)+5]²²` -/
def P9569209086594145024.Spec : Prop :=
  ∀ n, (P9569209086594145024.a n : ℤ) = A017320 n

end A017320

/-! ## A017320.P2411163713655524482

`(Δ[and(2*n+1, 2*n)²]+2*n)²²`
-/

namespace A017320.P2411163713655524482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)) ^ 2) ^ 2

end

end A017320.P2411163713655524482

namespace A017320

/-- `(Δ[and(2*n+1, 2*n)²]+2*n)²²` -/
def P2411163713655524482.Spec : Prop :=
  ∀ n, P2411163713655524482.a n = A017320 n

end A017320

/-! ## A017320.P16309930875423220807

`A017318(n)²`
-/

namespace A017320.P16309930875423220807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n ^ 2

end

end A017320.P16309930875423220807

namespace A017320

/-- `A017318(n)²` -/
def P16309930875423220807.Spec : Prop :=
  ∀ n, P16309930875423220807.a n = A017320 n

theorem P16309930875423220807.correct : P16309930875423220807.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P16309930875423220807.a, A017320.P6920118133699820454.a, A017318, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P10046194049290122989

`sqrt(A017324(n))`
-/

namespace A017320.P10046194049290122989
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017324 n : ℝ)

end

end A017320.P10046194049290122989

namespace A017320

/-- `sqrt(A017324(n))` -/
def P10046194049290122989.Spec : Prop :=
  ∀ n, P10046194049290122989.a n = (A017320 n : ℝ)

end A017320

/-! ## A017320.P17279967761072390028

`16*A016876(n)`
-/

namespace A017320.P17279967761072390028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016876 n

end

end A017320.P17279967761072390028

namespace A017320

/-- `16*A016876(n)` -/
def P17279967761072390028.Spec : Prop :=
  ∀ n, P17279967761072390028.a n = A017320 n

theorem P17279967761072390028.correct : P17279967761072390028.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P17279967761072390028.a, A017320.P6920118133699820454.a, A016876, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P2318180325742836202

`A017317(n)²²`
-/

namespace A017320.P2318180325742836202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017317 n ^ 2) ^ 2

end

end A017320.P2318180325742836202

namespace A017320

/-- `A017317(n)²²` -/
def P2318180325742836202.Spec : Prop :=
  ∀ n, P2318180325742836202.a n = A017320 n

theorem P2318180325742836202.correct : P2318180325742836202.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P2318180325742836202.a, A017320.P6920118133699820454.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P6284796057570018014

`(4*A016874(n))²`
-/

namespace A017320.P6284796057570018014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016874 n) ^ 2

end

end A017320.P6284796057570018014

namespace A017320

/-- `(4*A016874(n))²` -/
def P6284796057570018014.Spec : Prop :=
  ∀ n, P6284796057570018014.a n = A017320 n

theorem P6284796057570018014.correct : P6284796057570018014.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P6284796057570018014.a, A017320.P6920118133699820454.a, A016874, A016874.P17500456718272948104.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P14359942624630778069

`(A017305(n)+1)²²`
-/

namespace A017320.P14359942624630778069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017305 n + 1) ^ 2) ^ 2

end

end A017320.P14359942624630778069

namespace A017320

/-- `(A017305(n)+1)²²` -/
def P14359942624630778069.Spec : Prop :=
  ∀ n, P14359942624630778069.a n = A017320 n

theorem P14359942624630778069.correct : P14359942624630778069.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P14359942624630778069.a, A017320.P6920118133699820454.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P7877214401132423866

`(A017293(n)+2)²²`
-/

namespace A017320.P7877214401132423866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017293 n + 2) ^ 2) ^ 2

end

end A017320.P7877214401132423866

namespace A017320

/-- `(A017293(n)+2)²²` -/
def P7877214401132423866.Spec : Prop :=
  ∀ n, P7877214401132423866.a n = A017320 n

theorem P7877214401132423866.correct : P7877214401132423866.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P7877214401132423866.a, A017320.P6920118133699820454.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P6531285834950138455

`(1-A017329(n))²²`
-/

namespace A017320.P6531285834950138455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017329 n) ^ 2) ^ 2

end

end A017320.P6531285834950138455

namespace A017320

/-- `(1-A017329(n))²²` -/
def P6531285834950138455.Spec : Prop :=
  ∀ n, P6531285834950138455.a n = A017320 n

theorem P6531285834950138455.correct : P6531285834950138455.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P6531285834950138455.a, A017320.P6920118133699820454.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P14780038311326430797

`(A017281(n)+3)²²`
-/

namespace A017320.P14780038311326430797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017281 n + 3) ^ 2) ^ 2

end

end A017320.P14780038311326430797

namespace A017320

/-- `(A017281(n)+3)²²` -/
def P14780038311326430797.Spec : Prop :=
  ∀ n, P14780038311326430797.a n = A017320 n

theorem P14780038311326430797.correct : P14780038311326430797.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P14780038311326430797.a, A017320.P6920118133699820454.a, A017281, A017281.P12372910670058171543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P13223843930250048397

`(2-A017341(n))²²`
-/

namespace A017320.P13223843930250048397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017341 n) ^ 2) ^ 2

end

end A017320.P13223843930250048397

namespace A017320

/-- `(2-A017341(n))²²` -/
def P13223843930250048397.Spec : Prop :=
  ∀ n, P13223843930250048397.a n = A017320 n

theorem P13223843930250048397.correct : P13223843930250048397.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P13223843930250048397.a, A017320.P6920118133699820454.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P9821664249425397501

`(A008592(n)+4)²²`
-/

namespace A017320.P9821664249425397501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 4) ^ 2) ^ 2

end

end A017320.P9821664249425397501

namespace A017320

/-- `(A008592(n)+4)²²` -/
def P9821664249425397501.Spec : Prop :=
  ∀ n, P9821664249425397501.a n = A017320 n

theorem P9821664249425397501.correct : P9821664249425397501.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P9821664249425397501.a, A017320.P6920118133699820454.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-! ## A017320.P12629621570357372937

`(2*A016873(n))²²`
-/

namespace A017320.P12629621570357372937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016873 n) ^ 2) ^ 2

end

end A017320.P12629621570357372937

namespace A017320

/-- `(2*A016873(n))²²` -/
def P12629621570357372937.Spec : Prop :=
  ∀ n, P12629621570357372937.a n = A017320 n

theorem P12629621570357372937.correct : P12629621570357372937.Spec := by
  intro n
  simp only [A017320, Nat.add_sub_cancel, A017320.P12629621570357372937.a, A017320.P6920118133699820454.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017320

/-!
# A017321: a(n) = (10*n + 4)^5.

The programs for A017321, the canonical program `A017321.P6454535710957811682` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017321 has offset 0).

The definition of A017321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^5` (program `A017321.P6454535710957811682`, by `A017321.P6454535710957811682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017321.P6454535710957811682

`(10*n+4)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017321

/-- `(10*n+4)^5` -/
def P6454535710957811682.Spec : Prop :=
  ∀ n, (P6454535710957811682.a n : ℤ) = A017321 n

theorem P6454535710957811682.correct : P6454535710957811682.Spec := by
  intro n
  simp only [A017321]

end A017321

/-! ## A017321.P3842581408785642388

`32*A016877(n)`
-/

namespace A017321.P3842581408785642388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A016877 n

end

end A017321.P3842581408785642388

namespace A017321

/-- `32*A016877(n)` -/
def P3842581408785642388.Spec : Prop :=
  ∀ n, P3842581408785642388.a n = A017321 n

theorem P3842581408785642388.correct : P3842581408785642388.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P3842581408785642388.a, A017321.P6454535710957811682.a, A016877, A016877.P4696338323351149343.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P3245606486902129589

`sqrt(A017318(n)^5)`
-/

namespace A017321.P3245606486902129589
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017318 n ^ 5 : ℝ)

end

end A017321.P3245606486902129589

namespace A017321

/-- `sqrt(A017318(n)^5)` -/
def P3245606486902129589.Spec : Prop :=
  ∀ n, P3245606486902129589.a n = (A017321 n : ℝ)

end A017321

/-! ## A017321.P18065329070522513289

`(10*n+4)*A017320(n)`
-/

namespace A017321.P18065329070522513289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 4 : ℤ) * A017320 n

end

end A017321.P18065329070522513289

namespace A017321

/-- `(10*n+4)*A017320(n)` -/
def P18065329070522513289.Spec : Prop :=
  ∀ n, P18065329070522513289.a n = A017321 n

theorem P18065329070522513289.correct : P18065329070522513289.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P18065329070522513289.a, A017321.P6454535710957811682.a, A017320, A017320.P6920118133699820454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P18145140046896343048

`A017319(n)*(10*n+4)²`
-/

namespace A017321.P18145140046896343048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n * ((10 * n + 4) ^ 2 : ℤ)

end

end A017321.P18145140046896343048

namespace A017321

/-- `A017319(n)*(10*n+4)²` -/
def P18145140046896343048.Spec : Prop :=
  ∀ n, P18145140046896343048.a n = A017321 n

theorem P18145140046896343048.correct : P18145140046896343048.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P18145140046896343048.a, A017321.P6454535710957811682.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P17404994272274039034

`A017318(n)*A017319(n)`
-/

namespace A017321.P17404994272274039034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n * A017319 n

end

end A017321.P17404994272274039034

namespace A017321

/-- `A017318(n)*A017319(n)` -/
def P17404994272274039034.Spec : Prop :=
  ∀ n, P17404994272274039034.a n = A017321 n

theorem P17404994272274039034.correct : P17404994272274039034.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P17404994272274039034.a, A017321.P6454535710957811682.a, A017318, A017318.P7055602040077496612.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P9722038839420211358

`A017322(n)/A017317(n)`
-/

namespace A017321.P9722038839420211358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017322 n : ℚ) / (A017317 n : ℚ)

end

end A017321.P9722038839420211358

namespace A017321

/-- `A017322(n)/A017317(n)` -/
def P9722038839420211358.Spec : Prop :=
  ∀ n, P9722038839420211358.a n = (A017321 n : ℚ)

end A017321

/-! ## A017321.P10208085795399228613

`A017323(n)/A017318(n)`
-/

namespace A017321.P10208085795399228613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017323 n : ℚ) / (A017318 n : ℚ)

end

end A017321.P10208085795399228613

namespace A017321

/-- `A017323(n)/A017318(n)` -/
def P10208085795399228613.Spec : Prop :=
  ∀ n, P10208085795399228613.a n = (A017321 n : ℚ)

end A017321

/-! ## A017321.P85497305726774306

`A017317(n)²*A017319(n)`
-/

namespace A017321.P85497305726774306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n ^ 2 * A017319 n

end

end A017321.P85497305726774306

namespace A017321

/-- `A017317(n)²*A017319(n)` -/
def P85497305726774306.Spec : Prop :=
  ∀ n, P85497305726774306.a n = A017321 n

theorem P85497305726774306.correct : P85497305726774306.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P85497305726774306.a, A017321.P6454535710957811682.a, A017317, A017317.P14631111836214894890.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P3033064616038905791

`A017318(n)²*A017317(n)`
-/

namespace A017321.P3033064616038905791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n ^ 2 * A017317 n

end

end A017321.P3033064616038905791

namespace A017321

/-- `A017318(n)²*A017317(n)` -/
def P3033064616038905791.Spec : Prop :=
  ∀ n, P3033064616038905791.a n = A017321 n

theorem P3033064616038905791.correct : P3033064616038905791.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P3033064616038905791.a, A017321.P6454535710957811682.a, A017317, A017317.P14631111836214894890.a, A017318, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P1859469778640038907

`A017320(n)²/A017319(n)`
-/

namespace A017321.P1859469778640038907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017320 n ^ 2 : ℚ) / (A017319 n : ℚ)

end

end A017321.P1859469778640038907

namespace A017321

/-- `A017320(n)²/A017319(n)` -/
def P1859469778640038907.Spec : Prop :=
  ∀ n, P1859469778640038907.a n = (A017321 n : ℚ)

end A017321

/-! ## A017321.P606899545854463483

`A017323(n)/A017317(n)²`
-/

namespace A017321.P606899545854463483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017323 n : ℚ) / (A017317 n ^ 2 : ℚ)

end

end A017321.P606899545854463483

namespace A017321

/-- `A017323(n)/A017317(n)²` -/
def P606899545854463483.Spec : Prop :=
  ∀ n, P606899545854463483.a n = (A017321 n : ℚ)

end A017321

/-! ## A017321.P7306026579870379269

`A017317(n)/A017319(n)*A017323(n)`
-/

namespace A017321.P7306026579870379269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017317 n : ℚ) / (A017319 n : ℚ) * (A017323 n : ℚ)

end

end A017321.P7306026579870379269

namespace A017321

/-- `A017317(n)/A017319(n)*A017323(n)` -/
def P7306026579870379269.Spec : Prop :=
  ∀ n, P7306026579870379269.a n = (A017321 n : ℚ)

end A017321

/-! ## A017321.P14397055469519329446

`A016901(2*n)`
-/

namespace A017321.P14397055469519329446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 (2 * n)

end

end A017321.P14397055469519329446

namespace A017321

/-- `A016901(2*n)` -/
def P14397055469519329446.Spec : Prop :=
  ∀ n, P14397055469519329446.a n = A017321 n

theorem P14397055469519329446.correct : P14397055469519329446.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P14397055469519329446.a, A017321.P6454535710957811682.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P1482309921946538264

`A016898(2*n)*A017319(n)`
-/

namespace A017321.P1482309921946538264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n) * A017319 n

end

end A017321.P1482309921946538264

namespace A017321

/-- `A016898(2*n)*A017319(n)` -/
def P1482309921946538264.Spec : Prop :=
  ∀ n, P1482309921946538264.a n = A017321 n

theorem P1482309921946538264.correct : P1482309921946538264.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P1482309921946538264.a, A017321.P6454535710957811682.a, A016898, A016898.P14343272817953415938.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P9582898332758189598

`A016899(2*n)*A017318(n)`
-/

namespace A017321.P9582898332758189598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 (2 * n) * A017318 n

end

end A017321.P9582898332758189598

namespace A017321

/-- `A016899(2*n)*A017318(n)` -/
def P9582898332758189598.Spec : Prop :=
  ∀ n, P9582898332758189598.a n = A017321 n

theorem P9582898332758189598.correct : P9582898332758189598.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P9582898332758189598.a, A017321.P6454535710957811682.a, A016899, A016899.P5984754013059427978.a, A017318, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P14030688333057115471

`A017323(n)/A016898(2*n)`
-/

namespace A017321.P14030688333057115471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017323 n : ℚ) / (A016898 (2 * n) : ℚ)

end

end A017321.P14030688333057115471

namespace A017321

/-- `A017323(n)/A016898(2*n)` -/
def P14030688333057115471.Spec : Prop :=
  ∀ n, P14030688333057115471.a n = (A017321 n : ℚ)

theorem P14030688333057115471.correct : P14030688333057115471.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P14030688333057115471.a, A017321.P6454535710957811682.a, A016898, A016898.P14343272817953415938.a, A017323, A017323.P16384574135893999101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P17841196246042508779

`A016897(2*n)*A016900(2*n)`
-/

namespace A017321.P17841196246042508779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n) * A016900 (2 * n)

end

end A017321.P17841196246042508779

namespace A017321

/-- `A016897(2*n)*A016900(2*n)` -/
def P17841196246042508779.Spec : Prop :=
  ∀ n, P17841196246042508779.a n = A017321 n

theorem P17841196246042508779.correct : P17841196246042508779.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P17841196246042508779.a, A017321.P6454535710957811682.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-! ## A017321.P1084900727517408486

`A016898(2*n)*A016899(2*n)`
-/

namespace A017321.P1084900727517408486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n) * A016899 (2 * n)

end

end A017321.P1084900727517408486

namespace A017321

/-- `A016898(2*n)*A016899(2*n)` -/
def P1084900727517408486.Spec : Prop :=
  ∀ n, P1084900727517408486.a n = A017321 n

theorem P1084900727517408486.correct : P1084900727517408486.Spec := by
  intro n
  simp only [A017321, Nat.add_sub_cancel, A017321.P1084900727517408486.a, A017321.P6454535710957811682.a, A016898, A016898.P14343272817953415938.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017321

/-!
# A017322: a(n) = (10*n + 4)^6.

The programs for A017322, the canonical program `A017322.P13003129980100266173` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017322 has offset 0).

The definition of A017322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^6` (program `A017322.P13003129980100266173`, by `A017322.P13003129980100266173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017322.P13003129980100266173

`(10*n+4)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017322

/-- `(10*n+4)^6` -/
def P13003129980100266173.Spec : Prop :=
  ∀ n, (P13003129980100266173.a n : ℤ) = A017322 n

theorem P13003129980100266173.correct : P13003129980100266173.Spec := by
  intro n
  simp only [A017322]

end A017322

/-! ## A017322.P121165439647107763

`A017319(n)²`
-/

namespace A017322.P121165439647107763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n ^ 2

end

end A017322.P121165439647107763

namespace A017322

/-- `A017319(n)²` -/
def P121165439647107763.Spec : Prop :=
  ∀ n, P121165439647107763.a n = A017322 n

theorem P121165439647107763.correct : P121165439647107763.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P121165439647107763.a, A017322.P13003129980100266173.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P8751655649793338103

`64*A016878(n)`
-/

namespace A017322.P8751655649793338103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A016878 n

end

end A017322.P8751655649793338103

namespace A017322

/-- `64*A016878(n)` -/
def P8751655649793338103.Spec : Prop :=
  ∀ n, P8751655649793338103.a n = A017322 n

theorem P8751655649793338103.correct : P8751655649793338103.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P8751655649793338103.a, A017322.P13003129980100266173.a, A016878, A016878.P5221297515916649507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P14130784867582529473

`(8*A016875(n))²`
-/

namespace A017322.P14130784867582529473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016875 n) ^ 2

end

end A017322.P14130784867582529473

namespace A017322

/-- `(8*A016875(n))²` -/
def P14130784867582529473.Spec : Prop :=
  ∀ n, P14130784867582529473.a n = A017322 n

theorem P14130784867582529473.correct : P14130784867582529473.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P14130784867582529473.a, A017322.P13003129980100266173.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P16452902894658284149

`sqrt(A017320(n)^3)`
-/

namespace A017322.P16452902894658284149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017320 n ^ 3 : ℝ)

end

end A017322.P16452902894658284149

namespace A017322

/-- `sqrt(A017320(n)^3)` -/
def P16452902894658284149.Spec : Prop :=
  ∀ n, P16452902894658284149.a n = (A017322 n : ℝ)

end A017322

/-! ## A017322.P12924270865114291634

`A017323(n)/(10*n+4)`
-/

namespace A017322.P12924270865114291634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017323 n : ℚ) / (10 * n + 4 : ℚ)

end

end A017322.P12924270865114291634

namespace A017322

/-- `A017323(n)/(10*n+4)` -/
def P12924270865114291634.Spec : Prop :=
  ∀ n, P12924270865114291634.a n = (A017322 n : ℚ)

end A017322

/-! ## A017322.P15638621328966812080

`A017317(n)*A017321(n)`
-/

namespace A017322.P15638621328966812080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n * A017321 n

end

end A017322.P15638621328966812080

namespace A017322

/-- `A017317(n)*A017321(n)` -/
def P15638621328966812080.Spec : Prop :=
  ∀ n, P15638621328966812080.a n = A017322 n

theorem P15638621328966812080.correct : P15638621328966812080.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P15638621328966812080.a, A017322.P13003129980100266173.a, A017317, A017317.P14631111836214894890.a, A017321, A017321.P6454535710957811682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P17608184912515921662

`A017318(n)*A017320(n)`
-/

namespace A017322.P17608184912515921662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n * A017320 n

end

end A017322.P17608184912515921662

namespace A017322

/-- `A017318(n)*A017320(n)` -/
def P17608184912515921662.Spec : Prop :=
  ∀ n, P17608184912515921662.a n = A017322 n

theorem P17608184912515921662.correct : P17608184912515921662.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P17608184912515921662.a, A017322.P13003129980100266173.a, A017318, A017318.P7055602040077496612.a, A017320, A017320.P6920118133699820454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P11298572073378535415

`(A017317(n)*A017318(n))²`
-/

namespace A017322.P11298572073378535415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017317 n * A017318 n) ^ 2

end

end A017322.P11298572073378535415

namespace A017322

/-- `(A017317(n)*A017318(n))²` -/
def P11298572073378535415.Spec : Prop :=
  ∀ n, P11298572073378535415.a n = A017322 n

theorem P11298572073378535415.correct : P11298572073378535415.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P11298572073378535415.a, A017322.P13003129980100266173.a, A017317, A017317.P14631111836214894890.a, A017318, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P9213740853445828312

`A017317(n)²*A017320(n)`
-/

namespace A017322.P9213740853445828312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n ^ 2 * A017320 n

end

end A017322.P9213740853445828312

namespace A017322

/-- `A017317(n)²*A017320(n)` -/
def P9213740853445828312.Spec : Prop :=
  ∀ n, P9213740853445828312.a n = A017322 n

theorem P9213740853445828312.correct : P9213740853445828312.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P9213740853445828312.a, A017322.P13003129980100266173.a, A017317, A017317.P14631111836214894890.a, A017320, A017320.P6920118133699820454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P1916016248912291424

`(A017321(n)/A017318(n))²`
-/

namespace A017322.P1916016248912291424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017321 n : ℚ) / (A017318 n : ℚ)) ^ 2

end

end A017322.P1916016248912291424

namespace A017322

/-- `(A017321(n)/A017318(n))²` -/
def P1916016248912291424.Spec : Prop :=
  ∀ n, P1916016248912291424.a n = (A017322 n : ℚ)

end A017322

/-! ## A017322.P4682351559681836505

`sqrt(sqrt(A017324(n))*A017324(n))`
-/

namespace A017322.P4682351559681836505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017324 n : ℝ) * (A017324 n : ℝ))

end

end A017322.P4682351559681836505

namespace A017322

/-- `sqrt(sqrt(A017324(n))*A017324(n))` -/
def P4682351559681836505.Spec : Prop :=
  ∀ n, P4682351559681836505.a n = (A017322 n : ℝ)

end A017322

/-! ## A017322.P4468884485619322075

`(Δ[A172043(n)]^3)²`
-/

namespace A017322.P4468884485619322075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017322.P4468884485619322075

namespace A017322

/-- `(Δ[A172043(n)]^3)²` -/
def P4468884485619322075.Spec : Prop :=
  ∀ n, P4468884485619322075.a n = A017322 n

theorem P4468884485619322075.correct : P4468884485619322075.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P4468884485619322075.f1, A017322.P4468884485619322075.a, A017322.P13003129980100266173.a, A172043, A172043.P1662803192776030026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P14473635857802052040

`A016875(n)*A017367(2*n)`
-/

namespace A017322.P14473635857802052040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n * A017367 (2 * n)

end

end A017322.P14473635857802052040

namespace A017322

/-- `A016875(n)*A017367(2*n)` -/
def P14473635857802052040.Spec : Prop :=
  ∀ n, P14473635857802052040.a n = A017322 n

theorem P14473635857802052040.correct : P14473635857802052040.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P14473635857802052040.a, A017322.P13003129980100266173.a, A016875, A016875.P10633171972771459334.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P2372353346032178701

`A016902(2*n)`
-/

namespace A017322.P2372353346032178701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016902 (2 * n)

end

end A017322.P2372353346032178701

namespace A017322

/-- `A016902(2*n)` -/
def P2372353346032178701.Spec : Prop :=
  ∀ n, P2372353346032178701.a n = A017322 n

theorem P2372353346032178701.correct : P2372353346032178701.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P2372353346032178701.a, A017322.P13003129980100266173.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P14887853017653696249

`A272914(Δ[n²])`
-/

namespace A017322.P14887853017653696249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272914 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017322.P14887853017653696249

namespace A017322

/-- `A272914(Δ[n²])` -/
def P14887853017653696249.Spec : Prop :=
  ∀ n, P14887853017653696249.a n = A017322 n

end A017322

/-! ## A017322.P14724591331442938463

`A016899(2*n)²`
-/

namespace A017322.P14724591331442938463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 (2 * n) ^ 2

end

end A017322.P14724591331442938463

namespace A017322

/-- `A016899(2*n)²` -/
def P14724591331442938463.Spec : Prop :=
  ∀ n, P14724591331442938463.a n = A017322 n

theorem P14724591331442938463.correct : P14724591331442938463.Spec := by
  intro n
  simp only [A017322, Nat.add_sub_cancel, A017322.P14724591331442938463.a, A017322.P13003129980100266173.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017322

/-! ## A017322.P1138773195327080105

`lcm(2, A272914(2*n+1))`
-/

namespace A017322.P1138773195327080105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A272914 (2 * n + 1))

end

end A017322.P1138773195327080105

namespace A017322

/-- `lcm(2, A272914(2*n+1))` -/
def P1138773195327080105.Spec : Prop :=
  ∀ n, (P1138773195327080105.a n : ℤ) = A017322 n

end A017322

/-! ## A017322.P3910720683375842174

`∩[A272914(n+1), A016902(n)]`
-/

namespace A017322.P3910720683375842174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016902 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A017322.P3910720683375842174

namespace A017322

/-- `∩[A272914(n+1), A016902(n)]` -/
def P3910720683375842174.Spec : Prop :=
  ∀ n, (P3910720683375842174.a n : ℤ) = A017322 n

end A017322

/-!
# A017323: a(n) = (10*n + 4)^7.

The programs for A017323, the canonical program `A017323.P16384574135893999101` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017323 has offset 0).

The definition of A017323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^7` (program `A017323.P16384574135893999101`, by `A017323.P16384574135893999101.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017323.P16384574135893999101

`(10*n+4)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017323

/-- `(10*n+4)^7` -/
def P16384574135893999101.Spec : Prop :=
  ∀ n, (P16384574135893999101.a n : ℤ) = A017323 n

theorem P16384574135893999101.correct : P16384574135893999101.Spec := by
  intro n
  simp only [A017323]

end A017323

/-! ## A017323.P634693557453308226

`A017317(n)*A017322(n)`
-/

namespace A017323.P634693557453308226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n * A017322 n

end

end A017323.P634693557453308226

namespace A017323

/-- `A017317(n)*A017322(n)` -/
def P634693557453308226.Spec : Prop :=
  ∀ n, P634693557453308226.a n = A017323 n

theorem P634693557453308226.correct : P634693557453308226.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P634693557453308226.a, A017323.P16384574135893999101.a, A017317, A017317.P14631111836214894890.a, A017322, A017322.P13003129980100266173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P3698068368768775931

`A017318(n)*A017321(n)`
-/

namespace A017323.P3698068368768775931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n * A017321 n

end

end A017323.P3698068368768775931

namespace A017323

/-- `A017318(n)*A017321(n)` -/
def P3698068368768775931.Spec : Prop :=
  ∀ n, P3698068368768775931.a n = A017323 n

theorem P3698068368768775931.correct : P3698068368768775931.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P3698068368768775931.a, A017323.P16384574135893999101.a, A017318, A017318.P7055602040077496612.a, A017321, A017321.P6454535710957811682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P13109776052810253581

`A017319(n)*A017320(n)`
-/

namespace A017323.P13109776052810253581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n * A017320 n

end

end A017323.P13109776052810253581

namespace A017323

/-- `A017319(n)*A017320(n)` -/
def P13109776052810253581.Spec : Prop :=
  ∀ n, P13109776052810253581.a n = A017323 n

theorem P13109776052810253581.correct : P13109776052810253581.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P13109776052810253581.a, A017323.P16384574135893999101.a, A017319, A017319.P7214915799351479979.a, A017320, A017320.P6920118133699820454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P12455911949506826948

`A017317(n)²*A017321(n)`
-/

namespace A017323.P12455911949506826948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n ^ 2 * A017321 n

end

end A017323.P12455911949506826948

namespace A017323

/-- `A017317(n)²*A017321(n)` -/
def P12455911949506826948.Spec : Prop :=
  ∀ n, P12455911949506826948.a n = A017323 n

theorem P12455911949506826948.correct : P12455911949506826948.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P12455911949506826948.a, A017323.P16384574135893999101.a, A017317, A017317.P14631111836214894890.a, A017321, A017321.P6454535710957811682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P11906438096775847385

`A017318(n)²*A017319(n)`
-/

namespace A017323.P11906438096775847385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n ^ 2 * A017319 n

end

end A017323.P11906438096775847385

namespace A017323

/-- `A017318(n)²*A017319(n)` -/
def P11906438096775847385.Spec : Prop :=
  ∀ n, P11906438096775847385.a n = A017323 n

theorem P11906438096775847385.correct : P11906438096775847385.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P11906438096775847385.a, A017323.P16384574135893999101.a, A017318, A017318.P7055602040077496612.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P11112302967457591437

`A017319(n)²*A017317(n)`
-/

namespace A017323.P11112302967457591437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n ^ 2 * A017317 n

end

end A017323.P11112302967457591437

namespace A017323

/-- `A017319(n)²*A017317(n)` -/
def P11112302967457591437.Spec : Prop :=
  ∀ n, P11112302967457591437.a n = A017323 n

theorem P11112302967457591437.correct : P11112302967457591437.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P11112302967457591437.a, A017323.P16384574135893999101.a, A017317, A017317.P14631111836214894890.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P10705355521818183407

`A017320(n)²/A017317(n)`
-/

namespace A017323.P10705355521818183407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017320 n ^ 2 : ℚ) / (A017317 n : ℚ)

end

end A017323.P10705355521818183407

namespace A017323

/-- `A017320(n)²/A017317(n)` -/
def P10705355521818183407.Spec : Prop :=
  ∀ n, P10705355521818183407.a n = (A017323 n : ℚ)

end A017323

/-! ## A017323.P6692010415418914060

`A017318(n)²²/A017317(n)`
-/

namespace A017323.P6692010415418914060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017318 n ^ 2) ^ 2 : ℚ) / (A017317 n : ℚ)

end

end A017323.P6692010415418914060

namespace A017323

/-- `A017318(n)²²/A017317(n)` -/
def P6692010415418914060.Spec : Prop :=
  ∀ n, P6692010415418914060.a n = (A017323 n : ℚ)

end A017323

/-! ## A017323.P783708978101759637

`A017321(n)/A017319(n)*A017321(n)`
-/

namespace A017323.P783708978101759637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017321 n : ℚ) / (A017319 n : ℚ) * (A017321 n : ℚ)

end

end A017323.P783708978101759637

namespace A017323

/-- `A017321(n)/A017319(n)*A017321(n)` -/
def P783708978101759637.Spec : Prop :=
  ∀ n, P783708978101759637.a n = (A017323 n : ℚ)

end A017323

/-! ## A017323.P9351227863491467164

`A016903(2*n)`
-/

namespace A017323.P9351227863491467164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016903 (2 * n)

end

end A017323.P9351227863491467164

namespace A017323

/-- `A016903(2*n)` -/
def P9351227863491467164.Spec : Prop :=
  ∀ n, P9351227863491467164.a n = A017323 n

theorem P9351227863491467164.correct : P9351227863491467164.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P9351227863491467164.a, A017323.P16384574135893999101.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P13786961804186241270

`A016897(2*n)*A016902(2*n)`
-/

namespace A017323.P13786961804186241270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n) * A016902 (2 * n)

end

end A017323.P13786961804186241270

namespace A017323

/-- `A016897(2*n)*A016902(2*n)` -/
def P13786961804186241270.Spec : Prop :=
  ∀ n, P13786961804186241270.a n = A017323 n

theorem P13786961804186241270.correct : P13786961804186241270.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P13786961804186241270.a, A017323.P16384574135893999101.a, A016897, A016897.P9287350145607759688.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P16431969163501636913

`A016898(2*n)*A016901(2*n)`
-/

namespace A017323.P16431969163501636913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n) * A016901 (2 * n)

end

end A017323.P16431969163501636913

namespace A017323

/-- `A016898(2*n)*A016901(2*n)` -/
def P16431969163501636913.Spec : Prop :=
  ∀ n, P16431969163501636913.a n = A017323 n

theorem P16431969163501636913.correct : P16431969163501636913.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P16431969163501636913.a, A017323.P16384574135893999101.a, A016898, A016898.P14343272817953415938.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P5207705697009155596

`A016899(2*n)*A016900(2*n)`
-/

namespace A017323.P5207705697009155596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 (2 * n) * A016900 (2 * n)

end

end A017323.P5207705697009155596

namespace A017323

/-- `A016899(2*n)*A016900(2*n)` -/
def P5207705697009155596.Spec : Prop :=
  ∀ n, P5207705697009155596.a n = A017323 n

theorem P5207705697009155596.correct : P5207705697009155596.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P5207705697009155596.a, A017323.P16384574135893999101.a, A016899, A016899.P5984754013059427978.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P1416434013443557358

`A016904(2*n)/A016897(2*n)`
-/

namespace A017323.P1416434013443557358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016904 (2 * n) : ℚ) / (A016897 (2 * n) : ℚ)

end

end A017323.P1416434013443557358

namespace A017323

/-- `A016904(2*n)/A016897(2*n)` -/
def P1416434013443557358.Spec : Prop :=
  ∀ n, P1416434013443557358.a n = (A017323 n : ℚ)

theorem P1416434013443557358.correct : P1416434013443557358.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P1416434013443557358.a, A017323.P16384574135893999101.a, A016897, A016897.P9287350145607759688.a, A016904, A016904.P2651510011051962688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P11893324215379250918

`A016897(2*n)²*A016901(2*n)`
-/

namespace A017323.P11893324215379250918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 (2 * n) ^ 2 * A016901 (2 * n)

end

end A017323.P11893324215379250918

namespace A017323

/-- `A016897(2*n)²*A016901(2*n)` -/
def P11893324215379250918.Spec : Prop :=
  ∀ n, P11893324215379250918.a n = A017323 n

theorem P11893324215379250918.correct : P11893324215379250918.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P11893324215379250918.a, A017323.P16384574135893999101.a, A016897, A016897.P9287350145607759688.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P6502968693578653125

`A016898(2*n)²*A016899(2*n)`
-/

namespace A017323.P6502968693578653125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n) ^ 2 * A016899 (2 * n)

end

end A017323.P6502968693578653125

namespace A017323

/-- `A016898(2*n)²*A016899(2*n)` -/
def P6502968693578653125.Spec : Prop :=
  ∀ n, P6502968693578653125.a n = A017323 n

theorem P6502968693578653125.correct : P6502968693578653125.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P6502968693578653125.a, A017323.P16384574135893999101.a, A016898, A016898.P14343272817953415938.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P4225207913993906989

`A016899(2*n)²*A016897(2*n)`
-/

namespace A017323.P4225207913993906989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 (2 * n) ^ 2 * A016897 (2 * n)

end

end A017323.P4225207913993906989

namespace A017323

/-- `A016899(2*n)²*A016897(2*n)` -/
def P4225207913993906989.Spec : Prop :=
  ∀ n, P4225207913993906989.a n = A017323 n

theorem P4225207913993906989.correct : P4225207913993906989.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P4225207913993906989.a, A017323.P16384574135893999101.a, A016897, A016897.P9287350145607759688.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P18286800688061997415

`A016900(2*n)²/A016897(2*n)`
-/

namespace A017323.P18286800688061997415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 (2 * n) ^ 2 : ℚ) / (A016897 (2 * n) : ℚ)

end

end A017323.P18286800688061997415

namespace A017323

/-- `A016900(2*n)²/A016897(2*n)` -/
def P18286800688061997415.Spec : Prop :=
  ∀ n, P18286800688061997415.a n = (A017323 n : ℚ)

theorem P18286800688061997415.correct : P18286800688061997415.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P18286800688061997415.a, A017323.P16384574135893999101.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-! ## A017323.P18338329832670644907

`A016898(2*n)²²/A016897(2*n)`
-/

namespace A017323.P18338329832670644907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016898 (2 * n) ^ 2) ^ 2 : ℚ) / (A016897 (2 * n) : ℚ)

end

end A017323.P18338329832670644907

namespace A017323

/-- `A016898(2*n)²²/A016897(2*n)` -/
def P18338329832670644907.Spec : Prop :=
  ∀ n, P18338329832670644907.a n = (A017323 n : ℚ)

theorem P18338329832670644907.correct : P18338329832670644907.Spec := by
  intro n
  simp only [A017323, Nat.add_sub_cancel, A017323.P18338329832670644907.a, A017323.P16384574135893999101.a, A016897, A016897.P9287350145607759688.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017323

/-!
# A017324: a(n) = (10*n + 4)^8.

The programs for A017324, the canonical program `A017324.P18080619873122214313` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017324 has offset 0).

The definition of A017324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^8` (program `A017324.P18080619873122214313`, by `A017324.P18080619873122214313.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017324.P18080619873122214313

`(10*n+4)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017324

/-- `(10*n+4)^8` -/
def P18080619873122214313.Spec : Prop :=
  ∀ n, (P18080619873122214313.a n : ℤ) = A017324 n

theorem P18080619873122214313.correct : P18080619873122214313.Spec := by
  intro n
  simp only [A017324]

end A017324

/-! ## A017324.P4196133588358761656

`xor(1, 5*(2*n+1))²²²`
-/

namespace A017324.P4196133588358761656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (5 * (2 * n + 1)) ^ 2) ^ 2) ^ 2

end

end A017324.P4196133588358761656

namespace A017324

/-- `xor(1, 5*(2*n+1))²²²` -/
def P4196133588358761656.Spec : Prop :=
  ∀ n, (P4196133588358761656.a n : ℤ) = A017324 n

end A017324

/-! ## A017324.P16997839893683371719

`(lcm(4, 2*n+1)+2*n)²²²`
-/

namespace A017324.P16997839893683371719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((Nat.lcm 4 (2 * n + 1) + 2 * n) ^ 2) ^ 2) ^ 2

end

end A017324.P16997839893683371719

namespace A017324

/-- `(lcm(4, 2*n+1)+2*n)²²²` -/
def P16997839893683371719.Spec : Prop :=
  ∀ n, (P16997839893683371719.a n : ℤ) = A017324 n

end A017324

/-! ## A017324.P15941033460341678137

`A017320(n)²`
-/

namespace A017324.P15941033460341678137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017320 n ^ 2

end

end A017324.P15941033460341678137

namespace A017324

/-- `A017320(n)²` -/
def P15941033460341678137.Spec : Prop :=
  ∀ n, P15941033460341678137.a n = A017324 n

theorem P15941033460341678137.correct : P15941033460341678137.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P15941033460341678137.a, A017324.P18080619873122214313.a, A017320, A017320.P6920118133699820454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P16780341005013930844

`A017318(n)²²`
-/

namespace A017324.P16780341005013930844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017318 n ^ 2) ^ 2

end

end A017324.P16780341005013930844

namespace A017324

/-- `A017318(n)²²` -/
def P16780341005013930844.Spec : Prop :=
  ∀ n, P16780341005013930844.a n = A017324 n

theorem P16780341005013930844.correct : P16780341005013930844.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P16780341005013930844.a, A017324.P18080619873122214313.a, A017318, A017318.P7055602040077496612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P9442980892202392466

`A017317(n)²²²`
-/

namespace A017324.P9442980892202392466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017317 n ^ 2) ^ 2) ^ 2

end

end A017324.P9442980892202392466

namespace A017324

/-- `A017317(n)²²²` -/
def P9442980892202392466.Spec : Prop :=
  ∀ n, P9442980892202392466.a n = A017324 n

theorem P9442980892202392466.correct : P9442980892202392466.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P9442980892202392466.a, A017324.P18080619873122214313.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P16636709522251878765

`(A017305(n)+1)²²²`
-/

namespace A017324.P16636709522251878765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017305 n + 1) ^ 2) ^ 2) ^ 2

end

end A017324.P16636709522251878765

namespace A017324

/-- `(A017305(n)+1)²²²` -/
def P16636709522251878765.Spec : Prop :=
  ∀ n, P16636709522251878765.a n = A017324 n

theorem P16636709522251878765.correct : P16636709522251878765.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P16636709522251878765.a, A017324.P18080619873122214313.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P5407400212723156050

`(A017293(n)+2)²²²`
-/

namespace A017324.P5407400212723156050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017293 n + 2) ^ 2) ^ 2) ^ 2

end

end A017324.P5407400212723156050

namespace A017324

/-- `(A017293(n)+2)²²²` -/
def P5407400212723156050.Spec : Prop :=
  ∀ n, P5407400212723156050.a n = A017324 n

theorem P5407400212723156050.correct : P5407400212723156050.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P5407400212723156050.a, A017324.P18080619873122214313.a, A017293, A017293.P18006279673560884615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P5066484893187526813

`(1-A017329(n))²²²`
-/

namespace A017324.P5066484893187526813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017329 n) ^ 2) ^ 2) ^ 2

end

end A017324.P5066484893187526813

namespace A017324

/-- `(1-A017329(n))²²²` -/
def P5066484893187526813.Spec : Prop :=
  ∀ n, P5066484893187526813.a n = A017324 n

theorem P5066484893187526813.correct : P5066484893187526813.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P5066484893187526813.a, A017324.P18080619873122214313.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P6326961147249910436

`(2-A017341(n))²²²`
-/

namespace A017324.P6326961147249910436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017341 n) ^ 2) ^ 2) ^ 2

end

end A017324.P6326961147249910436

namespace A017324

/-- `(2-A017341(n))²²²` -/
def P6326961147249910436.Spec : Prop :=
  ∀ n, P6326961147249910436.a n = A017324 n

theorem P6326961147249910436.correct : P6326961147249910436.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P6326961147249910436.a, A017324.P18080619873122214313.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P3081005968616103383

`(A008592(n)+4)²²²`
-/

namespace A017324.P3081005968616103383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A008592 n + 4) ^ 2) ^ 2) ^ 2

end

end A017324.P3081005968616103383

namespace A017324

/-- `(A008592(n)+4)²²²` -/
def P3081005968616103383.Spec : Prop :=
  ∀ n, P3081005968616103383.a n = A017324 n

theorem P3081005968616103383.correct : P3081005968616103383.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P3081005968616103383.a, A017324.P18080619873122214313.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P13994202974977518722

`(2*A016873(n))²²²`
-/

namespace A017324.P13994202974977518722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016873 n) ^ 2) ^ 2) ^ 2

end

end A017324.P13994202974977518722

namespace A017324

/-- `(2*A016873(n))²²²` -/
def P13994202974977518722.Spec : Prop :=
  ∀ n, P13994202974977518722.a n = A017324 n

theorem P13994202974977518722.correct : P13994202974977518722.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P13994202974977518722.a, A017324.P18080619873122214313.a, A016873, A016873.P366335242068170250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P14217240952217554717

`(A017209(n)+n)²²²`
-/

namespace A017324.P14217240952217554717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017209 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017324.P14217240952217554717

namespace A017324

/-- `(A017209(n)+n)²²²` -/
def P14217240952217554717.Spec : Prop :=
  ∀ n, P14217240952217554717.a n = A017324 n

theorem P14217240952217554717.correct : P14217240952217554717.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P14217240952217554717.a, A017324.P18080619873122214313.a, A017209, A017209.P14094936957545695605.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P10991531713642565410

`(n-A017437(n))²²²`
-/

namespace A017324.P10991531713642565410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017437 n) ^ 2) ^ 2) ^ 2

end

end A017324.P10991531713642565410

namespace A017324

/-- `(n-A017437(n))²²²` -/
def P10991531713642565410.Spec : Prop :=
  ∀ n, P10991531713642565410.a n = A017324 n

theorem P10991531713642565410.correct : P10991531713642565410.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P10991531713642565410.a, A017324.P18080619873122214313.a, A017437, A017437.P10409157242345038154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P16585449783608708165

`A017323(n)*(10*n+4)`
-/

namespace A017324.P16585449783608708165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017323 n * (10 * n + 4 : ℤ)

end

end A017324.P16585449783608708165

namespace A017324

/-- `A017323(n)*(10*n+4)` -/
def P16585449783608708165.Spec : Prop :=
  ∀ n, P16585449783608708165.a n = A017324 n

theorem P16585449783608708165.correct : P16585449783608708165.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P16585449783608708165.a, A017324.P18080619873122214313.a, A017323, A017323.P16384574135893999101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P1224404978796690856

`(A016957(n)+4*n)²²²`
-/

namespace A017324.P1224404978796690856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A016957 n + (4 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017324.P1224404978796690856

namespace A017324

/-- `(A016957(n)+4*n)²²²` -/
def P1224404978796690856.Spec : Prop :=
  ∀ n, P1224404978796690856.a n = A017324 n

theorem P1224404978796690856.correct : P1224404978796690856.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P1224404978796690856.a, A017324.P18080619873122214313.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P1435029766706213551

`A000027(9*n+4+n)²²²`
-/

namespace A017324.P1435029766706213551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000027 (9 * n + 4 + n) ^ 2) ^ 2) ^ 2

end

end A017324.P1435029766706213551

namespace A017324

/-- `A000027(9*n+4+n)²²²` -/
def P1435029766706213551.Spec : Prop :=
  ∀ n, P1435029766706213551.a n = A017324 n

end A017324

/-! ## A017324.P9428040701356601328

`A017317(n)*A017323(n)`
-/

namespace A017324.P9428040701356601328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n * A017323 n

end

end A017324.P9428040701356601328

namespace A017324

/-- `A017317(n)*A017323(n)` -/
def P9428040701356601328.Spec : Prop :=
  ∀ n, P9428040701356601328.a n = A017324 n

theorem P9428040701356601328.correct : P9428040701356601328.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P9428040701356601328.a, A017324.P18080619873122214313.a, A017317, A017317.P14631111836214894890.a, A017323, A017323.P16384574135893999101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P2274571593957322099

`A017318(n)*A017322(n)`
-/

namespace A017324.P2274571593957322099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n * A017322 n

end

end A017324.P2274571593957322099

namespace A017324

/-- `A017318(n)*A017322(n)` -/
def P2274571593957322099.Spec : Prop :=
  ∀ n, P2274571593957322099.a n = A017324 n

theorem P2274571593957322099.correct : P2274571593957322099.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P2274571593957322099.a, A017324.P18080619873122214313.a, A017318, A017318.P7055602040077496612.a, A017322, A017322.P13003129980100266173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-! ## A017324.P9771852571211613061

`A017319(n)*A017321(n)`
-/

namespace A017324.P9771852571211613061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n * A017321 n

end

end A017324.P9771852571211613061

namespace A017324

/-- `A017319(n)*A017321(n)` -/
def P9771852571211613061.Spec : Prop :=
  ∀ n, P9771852571211613061.a n = A017324 n

theorem P9771852571211613061.correct : P9771852571211613061.Spec := by
  intro n
  simp only [A017324, Nat.add_sub_cancel, A017324.P9771852571211613061.a, A017324.P18080619873122214313.a, A017319, A017319.P7214915799351479979.a, A017321, A017321.P6454535710957811682.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017324

/-!
# A017325: a(n) = (10*n + 4)^9.

The programs for A017325, the canonical program `A017325.P7028980297984447181` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017325 has offset 0).

The definition of A017325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+4)^9` (program `A017325.P7028980297984447181`, by `A017325.P7028980297984447181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017325.P7028980297984447181

`(10*n+4)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017325

/-- `(10*n+4)^9` -/
def P7028980297984447181.Spec : Prop :=
  ∀ n, (P7028980297984447181.a n : ℤ) = A017325 n

theorem P7028980297984447181.correct : P7028980297984447181.Spec := by
  intro n
  simp only [A017325]

end A017325

/-! ## A017325.P11410395111394572337

`sqrt(A017322(n)^3)`
-/

namespace A017325.P11410395111394572337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017322 n ^ 3 : ℝ)

end

end A017325.P11410395111394572337

namespace A017325

/-- `sqrt(A017322(n)^3)` -/
def P11410395111394572337.Spec : Prop :=
  ∀ n, P11410395111394572337.a n = (A017325 n : ℝ)

end A017325

/-! ## A017325.P17196826551910235093

`A017318(n)*A017323(n)`
-/

namespace A017325.P17196826551910235093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017318 n * A017323 n

end

end A017325.P17196826551910235093

namespace A017325

/-- `A017318(n)*A017323(n)` -/
def P17196826551910235093.Spec : Prop :=
  ∀ n, P17196826551910235093.a n = A017325 n

theorem P17196826551910235093.correct : P17196826551910235093.Spec := by
  intro n
  simp only [A017325, Nat.add_sub_cancel, A017325.P17196826551910235093.a, A017325.P7028980297984447181.a, A017318, A017318.P7055602040077496612.a, A017323, A017323.P16384574135893999101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017325

/-! ## A017325.P8990735913350089799

`A017319(n)*A017322(n)`
-/

namespace A017325.P8990735913350089799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017319 n * A017322 n

end

end A017325.P8990735913350089799

namespace A017325

/-- `A017319(n)*A017322(n)` -/
def P8990735913350089799.Spec : Prop :=
  ∀ n, P8990735913350089799.a n = A017325 n

theorem P8990735913350089799.correct : P8990735913350089799.Spec := by
  intro n
  simp only [A017325, Nat.add_sub_cancel, A017325.P8990735913350089799.a, A017325.P7028980297984447181.a, A017319, A017319.P7214915799351479979.a, A017322, A017322.P13003129980100266173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017325

/-! ## A017325.P14079743626238735350

`A017317(n)²*A017323(n)`
-/

namespace A017325.P14079743626238735350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n ^ 2 * A017323 n

end

end A017325.P14079743626238735350

namespace A017325

/-- `A017317(n)²*A017323(n)` -/
def P14079743626238735350.Spec : Prop :=
  ∀ n, P14079743626238735350.a n = A017325 n

theorem P14079743626238735350.correct : P14079743626238735350.Spec := by
  intro n
  simp only [A017325, Nat.add_sub_cancel, A017325.P14079743626238735350.a, A017325.P7028980297984447181.a, A017317, A017317.P14631111836214894890.a, A017323, A017323.P16384574135893999101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017325

/-! ## A017325.P15004398526104917278

`A017320(n)²*sqrt(sqrt(A017320(n)))`
-/

namespace A017325.P15004398526104917278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017320 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017320 n : ℝ))

end

end A017325.P15004398526104917278

namespace A017325

/-- `A017320(n)²*sqrt(sqrt(A017320(n)))` -/
def P15004398526104917278.Spec : Prop :=
  ∀ n, P15004398526104917278.a n = (A017325 n : ℝ)

end A017325

/-! ## A017325.P5216316240003629546

`A016905(2*n)`
-/

namespace A017325.P5216316240003629546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016905 (2 * n)

end

end A017325.P5216316240003629546

namespace A017325

/-- `A016905(2*n)` -/
def P5216316240003629546.Spec : Prop :=
  ∀ n, P5216316240003629546.a n = A017325 n

theorem P5216316240003629546.correct : P5216316240003629546.Spec := by
  intro n
  simp only [A017325, Nat.add_sub_cancel, A017325.P5216316240003629546.a, A017325.P7028980297984447181.a, A016905, A016905.P13334272319696603784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017325

/-! ## A017325.P10118850928343998776

`A016900(2*n)²*A016897(2*n)`
-/

namespace A017325.P10118850928343998776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 (2 * n) ^ 2 * A016897 (2 * n)

end

end A017325.P10118850928343998776

namespace A017325

/-- `A016900(2*n)²*A016897(2*n)` -/
def P10118850928343998776.Spec : Prop :=
  ∀ n, P10118850928343998776.a n = A017325 n

theorem P10118850928343998776.correct : P10118850928343998776.Spec := by
  intro n
  simp only [A017325, Nat.add_sub_cancel, A017325.P10118850928343998776.a, A017325.P7028980297984447181.a, A016897, A016897.P9287350145607759688.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017325

/-! ## A017325.P18092826266622241137

`sqrt(A016902(2*n))*A016902(2*n)`
-/

namespace A017325.P18092826266622241137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016902 (2 * n) : ℝ) * (A016902 (2 * n) : ℝ)

end

end A017325.P18092826266622241137

namespace A017325

/-- `sqrt(A016902(2*n))*A016902(2*n)` -/
def P18092826266622241137.Spec : Prop :=
  ∀ n, P18092826266622241137.a n = (A017325 n : ℝ)

end A017325

/-! ## A017325.P12003084429424713243

`A016749(A016945(n)-(n+1))`
-/

namespace A017325.P12003084429424713243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n - (n + 1 : ℤ)).toNat

end

end A017325.P12003084429424713243

namespace A017325

/-- `A016749(A016945(n)-(n+1))` -/
def P12003084429424713243.Spec : Prop :=
  ∀ n, P12003084429424713243.a n = A017325 n

end A017325

/-! ## A017325.P8262747612638460024

`A001017(A017317(n))`
-/

namespace A017325.P8262747612638460024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017317 n).toNat

end

end A017325.P8262747612638460024

namespace A017325

/-- `A001017(A017317(n))` -/
def P8262747612638460024.Spec : Prop :=
  ∀ n, P8262747612638460024.a n = A017325 n

end A017325

/-! ## A017325.P10447751611066916754

`A001017(A017305(n)+1)`
-/

namespace A017325.P10447751611066916754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017305 n + 1).toNat

end

end A017325.P10447751611066916754

namespace A017325

/-- `A001017(A017305(n)+1)` -/
def P10447751611066916754.Spec : Prop :=
  ∀ n, P10447751611066916754.a n = A017325 n

end A017325

/-! ## A017325.P5271073057304556876

`A001017(A017293(n)+2)`
-/

namespace A017325.P5271073057304556876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017293 n + 2).toNat

end

end A017325.P5271073057304556876

namespace A017325

/-- `A001017(A017293(n)+2)` -/
def P5271073057304556876.Spec : Prop :=
  ∀ n, P5271073057304556876.a n = A017325 n

end A017325

/-! ## A017325.P1894935614705112203

`A001017(A017341(n)-2)`
-/

namespace A017325.P1894935614705112203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n - 2).toNat

end

end A017325.P1894935614705112203

namespace A017325

/-- `A001017(A017341(n)-2)` -/
def P1894935614705112203.Spec : Prop :=
  ∀ n, P1894935614705112203.a n = A017325 n

end A017325

/-! ## A017325.P9374301241157450443

`A001017(A008587(2*n+1)-1)`
-/

namespace A017325.P9374301241157450443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n + 1) - 1).toNat

end

end A017325.P9374301241157450443

namespace A017325

/-- `A001017(A008587(2*n+1)-1)` -/
def P9374301241157450443.Spec : Prop :=
  ∀ n, P9374301241157450443.a n = A017325 n

end A017325

/-! ## A017325.P6262020391100031852

`A001017(A016969(2*n)-(2*n+1))`
-/

namespace A017325.P6262020391100031852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A016969 (2 * n) - (2 * n + 1 : ℤ)).toNat

end

end A017325.P6262020391100031852

namespace A017325

/-- `A001017(A016969(2*n)-(2*n+1))` -/
def P6262020391100031852.Spec : Prop :=
  ∀ n, P6262020391100031852.a n = A017325 n

end A017325

/-!
# A017326: 

The programs for A017326, there is no canonical definition to state claims against.
-/

/-! ## A017326.P12469001974083903179

`(10*n+4)^10`
-/

namespace A017326.P12469001974083903179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 4) ^ 10

end

end A017326.P12469001974083903179

/-! ## A017326.P17622746220424117494

`record[(n+4)^gcd(10, n)]`
-/

namespace A017326.P17622746220424117494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 4) ^ Nat.gcd 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017326.P17622746220424117494

/-! ## A017326.P7432176222350470027

`A017321(n)²`
-/

namespace A017326.P7432176222350470027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017321 n ^ 2

end

end A017326.P7432176222350470027

/-! ## A017326.P6081380735530618182

`sqrt(A017320(n)^5)`
-/

namespace A017326.P6081380735530618182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017320 n ^ 5 : ℝ)

end

end A017326.P6081380735530618182

/-! ## A017326.P5534643778991295451

`(A017317(n)²*A017319(n))²`
-/

namespace A017326.P5534643778991295451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017317 n ^ 2 * A017319 n) ^ 2

end

end A017326.P5534643778991295451

/-! ## A017326.P16889537901632971231

`(A017323(n)/A017317(n)²)²`
-/

namespace A017326.P16889537901632971231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017323 n : ℚ) / (A017317 n ^ 2 : ℚ)) ^ 2

end

end A017326.P16889537901632971231

/-! ## A017326.P9550616476430107204

`sqrt(sqrt(A017324(n)))*A017324(n)`
-/

namespace A017326.P9550616476430107204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017324 n : ℝ)) * (A017324 n : ℝ)

end

end A017326.P9550616476430107204

/-! ## A017326.P3262863291320599177

`A016906(2*n)`
-/

namespace A017326.P3262863291320599177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016906 (2 * n)

end

end A017326.P3262863291320599177

/-! ## A017326.P4634237474752111523

`A016901(2*n)²`
-/

namespace A017326.P4634237474752111523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 (2 * n) ^ 2

end

end A017326.P4634237474752111523

/-! ## A017326.P17485646710946888457

`(A016897(2*n)*A016900(2*n))²`
-/

namespace A017326.P17485646710946888457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 (2 * n) * A016900 (2 * n)) ^ 2

end

end A017326.P17485646710946888457

/-! ## A017326.P2571943621398101396

`sqrt(sqrt(A016904(2*n)))*A016904(2*n)`
-/

namespace A017326.P2571943621398101396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016904 (2 * n) : ℝ)) * (A016904 (2 * n) : ℝ)

end

end A017326.P2571943621398101396

/-! ## A017326.P3392848062625102586

`A273373(2*n+1)²²*A273373(2*n+1)`
-/

namespace A017326.P3392848062625102586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273373 (2 * n + 1) ^ 2) ^ 2 * A273373 (2 * n + 1)

end

end A017326.P3392848062625102586

/-! ## A017326.P13442814452544289741

`A016750(A016789(n)+A005843(n))`
-/

namespace A017326.P13442814452544289741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016750 (A016789 n + A005843 n).toNat

end

end A017326.P13442814452544289741

/-! ## A017326.P14663977529639724850

`A008454(A017281(n)+3)`
-/

namespace A017326.P14663977529639724850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + 3).toNat

end

end A017326.P14663977529639724850

/-! ## A017326.P16104765924310823546

`A008454(A017341(n)-2)`
-/

namespace A017326.P16104765924310823546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n - 2).toNat

end

end A017326.P16104765924310823546

/-!
# A017327: 

The programs for A017327, there is no canonical definition to state claims against.
-/

/-! ## A017327.P18407365285354385300

`(10*n+4)^11`
-/

namespace A017327.P18407365285354385300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 4) ^ 11

end

end A017327.P18407365285354385300

/-! ## A017327.P8129186372335601212

`A017317(n)²²*A017323(n)`
-/

namespace A017327.P8129186372335601212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017317 n ^ 2) ^ 2 * A017323 n

end

end A017327.P8129186372335601212

/-! ## A017327.P6325727289078560283

`A017319(n)²²/A017317(n)`
-/

namespace A017327.P6325727289078560283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017319 n ^ 2) ^ 2 : ℚ) / (A017317 n : ℚ)

end

end A017327.P6325727289078560283

/-! ## A017327.P10150149002540073323

`A016907(2*n)`
-/

namespace A017327.P10150149002540073323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016907 (2 * n)

end

end A017327.P10150149002540073323

/-! ## A017327.P17140312108210403364

`A008455(A017281(n)+3)`
-/

namespace A017327.P17140312108210403364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 3).toNat

end

end A017327.P17140312108210403364

/-! ## A017327.P10276179425967330972

`A008455(A016969(2*n)-(2*n+1))`
-/

namespace A017327.P10276179425967330972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016969 (2 * n) - (2 * n + 1 : ℤ)).toNat

end

end A017327.P10276179425967330972

/-! ## A017327.P9505887842283503185

`A008455(A017569(n)-A005843(n))`
-/

namespace A017327.P9505887842283503185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017569 n - A005843 n).toNat

end

end A017327.P9505887842283503185

/-!
# A017328: 

The programs for A017328, there is no canonical definition to state claims against.
-/

/-! ## A017328.P15525347499886685056

`(10*n+4)^12`
-/

namespace A017328.P15525347499886685056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 4) ^ 12

end

end A017328.P15525347499886685056

/-! ## A017328.P7117385031127271884

`A017322(n)²`
-/

namespace A017328.P7117385031127271884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017322 n ^ 2

end

end A017328.P7117385031127271884

/-! ## A017328.P16125537873804167643

`(A017323(n)/A017317(n))²`
-/

namespace A017328.P16125537873804167643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017323 n : ℚ) / (A017317 n : ℚ)) ^ 2

end

end A017328.P16125537873804167643

/-! ## A017328.P771972540490528253

`sqrt(A017324(n))*A017324(n)`
-/

namespace A017328.P771972540490528253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017324 n : ℝ) * (A017324 n : ℝ)

end

end A017328.P771972540490528253

/-! ## A017328.P7597636849588404444

`A016902(2*n)²`
-/

namespace A017328.P7597636849588404444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016902 (2 * n) ^ 2

end

end A017328.P7597636849588404444

/-! ## A017328.P15760278163534287718

`sqrt(A016904(2*n))*A016904(2*n)`
-/

namespace A017328.P15760278163534287718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016904 (2 * n) : ℝ) * (A016904 (2 * n) : ℝ)

end

end A017328.P15760278163534287718

/-! ## A017328.P200801291305839598

`sqrt(A017324(n)^3)`
-/

namespace A017328.P200801291305839598
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017324 n ^ 3 : ℝ)

end

end A017328.P200801291305839598

/-! ## A017328.P8698289972374415965

`A000578(A017305(n)+1)²²`
-/

namespace A017328.P8698289972374415965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017305 n + 1).toNat ^ 2) ^ 2

end

end A017328.P8698289972374415965

/-! ## A017328.P9160101013032617217

`A000578(A017293(n)+2)²²`
-/

namespace A017328.P9160101013032617217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017293 n + 2).toNat ^ 2) ^ 2

end

end A017328.P9160101013032617217

/-! ## A017328.P7873799708838455015

`A000578(A017341(n)-2)²²`
-/

namespace A017328.P7873799708838455015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017341 n - 2).toNat ^ 2) ^ 2

end

end A017328.P7873799708838455015

/-! ## A017328.P18326313587497294649

`A000578(A017209(n)+n)²²`
-/

namespace A017328.P18326313587497294649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017209 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017328.P18326313587497294649

/-!
# A017329: a(n) = 10*n + 5.

The programs for A017329, the canonical program `A017329.P13641332030280969901` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017329 has offset 0).

The definition of A017329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+5` (program `A017329.P13641332030280969901`, by `A017329.P13641332030280969901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017329.P13641332030280969901

`10*n+5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017329

/-- `10*n+5` -/
def P13641332030280969901.Spec : Prop :=
  ∀ n, (P13641332030280969901.a n : ℤ) = A017329 n

theorem P13641332030280969901.correct : P13641332030280969901.Spec := by
  intro n
  simp only [A017329]

end A017329

/-!
# A017330: a(n) = (10*n + 5)^2.

The programs for A017330, the canonical program `A017330.P10434817311625232981` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017330 has offset 0).

The definition of A017330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)²` (program `A017330.P10434817311625232981`, by `A017330.P10434817311625232981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017330.P10434817311625232981

`(10*n+5)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017330

/-- `(10*n+5)²` -/
def P10434817311625232981.Spec : Prop :=
  ∀ n, (P10434817311625232981.a n : ℤ) = A017330 n

theorem P10434817311625232981.correct : P10434817311625232981.Spec := by
  intro n
  simp only [A017330]

end A017330

/-! ## A017330.P5998123334313433232

`a(n-1)+200*n` with `a(0)=25`
-/

namespace A017330.P5998123334313433232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [25] fun n a =>
  a (n - 1) + 200 * n

end

end A017330.P5998123334313433232

namespace A017330

/-- `a(n-1)+200*n` -/
def P5998123334313433232.Spec : Prop :=
  ∀ n, (P5998123334313433232.a n : ℤ) = A017330 n

theorem P5998123334313433232.correct : P5998123334313433232.Spec := by
  intro n
  induction n with
  | zero => simp [A017330, A017330.P5998123334313433232.a, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A017330, Nat.add_sub_cancel, A017330.P5998123334313433232.a, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A017330

/-! ## A017330.P7348067373684231296

`record[(5*xor(1, n))²]`
-/

namespace A017330.P7348067373684231296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017330.P7348067373684231296

namespace A017330

/-- `record[(5*xor(1, n))²]` -/
def P7348067373684231296.Spec : Prop :=
  ∀ n, (P7348067373684231296.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P14131380014425039741

`lcm(5, Δ[5*n²]²)`
-/

namespace A017330.P14131380014425039741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A017330.P14131380014425039741

namespace A017330

/-- `lcm(5, Δ[5*n²]²)` -/
def P14131380014425039741.Spec : Prop :=
  ∀ n, (P14131380014425039741.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P15997054157355459466

`or(1, Δ[5*n²]²)`
-/

namespace A017330.P15997054157355459466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A017330.P15997054157355459466

namespace A017330

/-- `or(1, Δ[5*n²]²)` -/
def P15997054157355459466.Spec : Prop :=
  ∀ n, P15997054157355459466.a n = A017330 n

end A017330

/-! ## A017330.P8278762338511765397

`5*5*or(1, 2*n)²`
-/

namespace A017330.P8278762338511765397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * Nat.lor 1 (2 * n) ^ 2)

end

end A017330.P8278762338511765397

namespace A017330

/-- `5*5*or(1, 2*n)²` -/
def P8278762338511765397.Spec : Prop :=
  ∀ n, (P8278762338511765397.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P11790038558788639891

`5*5*xor(1, 2*n)²`
-/

namespace A017330.P11790038558788639891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * Nat.xor 1 (2 * n) ^ 2)

end

end A017330.P11790038558788639891

namespace A017330

/-- `5*5*xor(1, 2*n)²` -/
def P11790038558788639891.Spec : Prop :=
  ∀ n, (P11790038558788639891.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P13973358642492327551

`sqrt(or(1, (10*n+5)^4))`
-/

namespace A017330.P13973358642492327551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 1 ((10 * n + 5) ^ 4) : ℝ)

end

end A017330.P13973358642492327551

namespace A017330

/-- `sqrt(or(1, (10*n+5)^4))` -/
def P13973358642492327551.Spec : Prop :=
  ∀ n, P13973358642492327551.a n = (A017330 n : ℝ)

end A017330

/-! ## A017330.P14056633690817547791

`record[(5*(n+1))^gcd(2, n)]`
-/

namespace A017330.P14056633690817547791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1)) ^ Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017330.P14056633690817547791

namespace A017330

/-- `record[(5*(n+1))^gcd(2, n)]` -/
def P14056633690817547791.Spec : Prop :=
  ∀ n, (P14056633690817547791.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P10641561848271935811

`(5*(2*n+1))^acos(cos(2))`
-/

namespace A017330.P10641561848271935811
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 * (2 * n + 1) : ℝ) ^ (Real.arccos (Real.cos (2 : ℝ)))

end

end A017330.P10641561848271935811

namespace A017330

/-- `(5*(2*n+1))^acos(cos(2))` -/
def P10641561848271935811.Spec : Prop :=
  ∀ n, P10641561848271935811.a n = (A017330 n : ℝ)

end A017330

/-! ## A017330.P8283264500987127275

`record[(gcd(10, 2-n)+n+3)²]`
-/

namespace A017330.P8283264500987127275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd 10 (2 - (n : ℤ)) + (n + 3)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017330.P8283264500987127275

namespace A017330

/-- `record[(gcd(10, 2-n)+n+3)²]` -/
def P8283264500987127275.Spec : Prop :=
  ∀ n, (P8283264500987127275.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P16922049690485949835

`Δ[5*5*C(2*n+1, 3)]`
-/

namespace A017330.P16922049690485949835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (5 * Nat.choose (2 * n + 1) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A017330.P16922049690485949835

namespace A017330

/-- `Δ[5*5*C(2*n+1, 3)]` -/
def P16922049690485949835.Spec : Prop :=
  ∀ n, P16922049690485949835.a n = A017330 n

theorem P16922049690485949835.correct : P16922049690485949835.Spec := by
  intro n
  simp only [A017330, Nat.add_sub_cancel, A017330.P16922049690485949835.f1, A017330.P16922049690485949835.a, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017330

/-! ## A017330.P5425103145146756896

`(5*(2*n+1))^(2%(n+3))`
-/

namespace A017330.P5425103145146756896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * (2 * n + 1)) ^ (2 % (n + 3))

end

end A017330.P5425103145146756896

namespace A017330

/-- `(5*(2*n+1))^(2%(n+3))` -/
def P5425103145146756896.Spec : Prop :=
  ∀ n, (P5425103145146756896.a n : ℤ) = A017330 n

end A017330

/-! ## A017330.P16372425475730630687

`(5*(2*n+1))^ceil(atan(n+2))`
-/

namespace A017330.P16372425475730630687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (2 * n + 1) : ℚ) ^ (⌈Real.arctan (n + 2 : ℝ)⌉ : ℤ)

end

end A017330.P16372425475730630687

namespace A017330

/-- `(5*(2*n+1))^ceil(atan(n+2))` -/
def P16372425475730630687.Spec : Prop :=
  ∀ n, P16372425475730630687.a n = (A017330 n : ℚ)

end A017330

/-! ## A017330.P273659558071857533

`5*5*∑[ogf((1+6x+x^2)/(1-2x+x^2))]`
-/

namespace A017330.P273659558071857533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (5 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A017330.P273659558071857533

namespace A017330

/-- `5*5*∑[ogf((1+6x+x^2)/(1-2x+x^2))]` -/
def P273659558071857533.Spec : Prop :=
  ∀ n, P273659558071857533.a n = A017330 n

end A017330

/-! ## A017330.P13145376462420436943

`sqrt(lcm(2*n+1, (5*(2*n+1))^4))`
-/

namespace A017330.P13145376462420436943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lcm (2 * n + 1) ((5 * (2 * n + 1)) ^ 4) : ℝ)

end

end A017330.P13145376462420436943

namespace A017330

/-- `sqrt(lcm(2*n+1, (5*(2*n+1))^4))` -/
def P13145376462420436943.Spec : Prop :=
  ∀ n, P13145376462420436943.a n = (A017330 n : ℝ)

end A017330

/-! ## A017330.P4344230055979259111

`sqrt(A017332(n))`
-/

namespace A017330.P4344230055979259111
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017332 n : ℝ)

end

end A017330.P4344230055979259111

namespace A017330

/-- `sqrt(A017332(n))` -/
def P4344230055979259111.Spec : Prop :=
  ∀ n, P4344230055979259111.a n = (A017330 n : ℝ)

end A017330

/-! ## A017330.P12834611559833432072

`A152161(n)+4`
-/

namespace A017330.P12834611559833432072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152161 n + 4

end

end A017330.P12834611559833432072

namespace A017330

/-- `A152161(n)+4` -/
def P12834611559833432072.Spec : Prop :=
  ∀ n, P12834611559833432072.a n = A017330 n

theorem P12834611559833432072.correct : P12834611559833432072.Spec := by
  intro n
  simp only [A017330, Nat.add_sub_cancel, A017330.P12834611559833432072.a, A017330.P10434817311625232981.a, A152161, A152161.P9122304770913121613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017330

/-! ## A017330.P14464218041452764063

`25*A016754(n)`
-/

namespace A017330.P14464218041452764063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A016754 n

end

end A017330.P14464218041452764063

namespace A017330

/-- `25*A016754(n)` -/
def P14464218041452764063.Spec : Prop :=
  ∀ n, P14464218041452764063.a n = A017330 n

theorem P14464218041452764063.correct : P14464218041452764063.Spec := by
  intro n
  simp only [A017330, Nat.add_sub_cancel, A017330.P14464218041452764063.a, A017330.P10434817311625232981.a, A016754, A016754.P2987865549988322084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017330

/-! ## A017330.P14500503083765542258

`sqrt(sqrt(A017336(n)))`
-/

namespace A017330.P14500503083765542258
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017336 n : ℝ))

end

end A017330.P14500503083765542258

namespace A017330

/-- `sqrt(sqrt(A017336(n)))` -/
def P14500503083765542258.Spec : Prop :=
  ∀ n, P14500503083765542258.a n = (A017330 n : ℝ)

end A017330

/-!
# A017331: a(n) = (10*n + 5)^3.

The programs for A017331, the canonical program `A017331.P17996871924844306037` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017331 has offset 0).

The definition of A017331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^3` (program `A017331.P17996871924844306037`, by `A017331.P17996871924844306037.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017331.P17996871924844306037

`(10*n+5)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017331

/-- `(10*n+5)^3` -/
def P17996871924844306037.Spec : Prop :=
  ∀ n, (P17996871924844306037.a n : ℤ) = A017331 n

theorem P17996871924844306037.correct : P17996871924844306037.Spec := by
  intro n
  simp only [A017331]

end A017331

/-! ## A017331.P14584807480979178760

`record[(5*xor(1, n))^3]`
-/

namespace A017331.P14584807480979178760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017331.P14584807480979178760

namespace A017331

/-- `record[(5*xor(1, n))^3]` -/
def P14584807480979178760.Spec : Prop :=
  ∀ n, (P14584807480979178760.a n : ℤ) = A017331 n

end A017331

/-! ## A017331.P757264690904660016

`sqrt(A017334(n))`
-/

namespace A017331.P757264690904660016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017334 n : ℝ)

end

end A017331.P757264690904660016

namespace A017331

/-- `sqrt(A017334(n))` -/
def P757264690904660016.Spec : Prop :=
  ∀ n, P757264690904660016.a n = (A017331 n : ℝ)

end A017331

/-! ## A017331.P6070460876893560828

`sqrt(A017330(n)^3)`
-/

namespace A017331.P6070460876893560828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017330 n ^ 3 : ℝ)

end

end A017331.P6070460876893560828

namespace A017331

/-- `sqrt(A017330(n)^3)` -/
def P6070460876893560828.Spec : Prop :=
  ∀ n, P6070460876893560828.a n = (A017331 n : ℝ)

end A017331

/-! ## A017331.P2135788941386894904

`(10*n+5)²*A017329(n)`
-/

namespace A017331.P2135788941386894904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 5) ^ 2 : ℤ) * A017329 n

end

end A017331.P2135788941386894904

namespace A017331

/-- `(10*n+5)²*A017329(n)` -/
def P2135788941386894904.Spec : Prop :=
  ∀ n, P2135788941386894904.a n = A017331 n

theorem P2135788941386894904.correct : P2135788941386894904.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P2135788941386894904.a, A017331.P17996871924844306037.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-! ## A017331.P7261533306629373145

`A017329(n)*A017330(n)`
-/

namespace A017331.P7261533306629373145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n * A017330 n

end

end A017331.P7261533306629373145

namespace A017331

/-- `A017329(n)*A017330(n)` -/
def P7261533306629373145.Spec : Prop :=
  ∀ n, P7261533306629373145.a n = A017331 n

theorem P7261533306629373145.correct : P7261533306629373145.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P7261533306629373145.a, A017331.P17996871924844306037.a, A017329, A017329.P13641332030280969901.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-! ## A017331.P7965087982987698663

`A017332(n)/A017329(n)`
-/

namespace A017331.P7965087982987698663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017332 n : ℚ) / (A017329 n : ℚ)

end

end A017331.P7965087982987698663

namespace A017331

/-- `A017332(n)/A017329(n)` -/
def P7965087982987698663.Spec : Prop :=
  ∀ n, P7965087982987698663.a n = (A017331 n : ℚ)

end A017331

/-! ## A017331.P6357295282062718425

`A017333(n)/A017330(n)`
-/

namespace A017331.P6357295282062718425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017333 n : ℚ) / (A017330 n : ℚ)

end

end A017331.P6357295282062718425

namespace A017331

/-- `A017333(n)/A017330(n)` -/
def P6357295282062718425.Spec : Prop :=
  ∀ n, P6357295282062718425.a n = (A017331 n : ℚ)

end A017331

/-! ## A017331.P8709366418950781145

`A017333(n)/A017329(n)²`
-/

namespace A017331.P8709366418950781145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017333 n : ℚ) / (A017329 n ^ 2 : ℚ)

end

end A017331.P8709366418950781145

namespace A017331

/-- `A017333(n)/A017329(n)²` -/
def P8709366418950781145.Spec : Prop :=
  ∀ n, P8709366418950781145.a n = (A017331 n : ℚ)

end A017331

/-! ## A017331.P934289745695032365

`(A017341(n)-1)*A017330(n)`
-/

namespace A017331.P934289745695032365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n - 1) * A017330 n

end

end A017331.P934289745695032365

namespace A017331

/-- `(A017341(n)-1)*A017330(n)` -/
def P934289745695032365.Spec : Prop :=
  ∀ n, P934289745695032365.a n = A017331 n

theorem P934289745695032365.correct : P934289745695032365.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P934289745695032365.a, A017331.P17996871924844306037.a, A017330, A017330.P10434817311625232981.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-! ## A017331.P17467772610548820799

`A017334(n)/(A017329(n)²*A017329(n))`
-/

namespace A017331.P17467772610548820799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017334 n : ℚ) / (A017329 n ^ 2 * A017329 n : ℚ)

end

end A017331.P17467772610548820799

namespace A017331

/-- `A017334(n)/(A017329(n)²*A017329(n))` -/
def P17467772610548820799.Spec : Prop :=
  ∀ n, P17467772610548820799.a n = (A017331 n : ℚ)

end A017331

/-! ## A017331.P17420670669316198486

`A016851(Δ[n²])`
-/

namespace A017331.P17420670669316198486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016851 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017331.P17420670669316198486

namespace A017331

/-- `A016851(Δ[n²])` -/
def P17420670669316198486.Spec : Prop :=
  ∀ n, P17420670669316198486.a n = A017331 n

end A017331

/-! ## A017331.P15244229852736341299

`sqrt(A016854(2*n+1))`
-/

namespace A017331.P15244229852736341299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016854 (2 * n + 1) : ℝ)

end

end A017331.P15244229852736341299

namespace A017331

/-- `sqrt(A016854(2*n+1))` -/
def P15244229852736341299.Spec : Prop :=
  ∀ n, P15244229852736341299.a n = (A017331 n : ℝ)

end A017331

/-! ## A017331.P1716143576631164880

`A017271(2*n+1)/8`
-/

namespace A017331.P1716143576631164880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017271 (2 * n + 1) : ℚ) / 8

end

end A017331.P1716143576631164880

namespace A017331

/-- `A017271(2*n+1)/8` -/
def P1716143576631164880.Spec : Prop :=
  ∀ n, P1716143576631164880.a n = (A017331 n : ℚ)

theorem P1716143576631164880.correct : P1716143576631164880.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P1716143576631164880.a, A017331.P17996871924844306037.a, A017271, A017271.P16549421429603654595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-! ## A017331.P4885954850446269818

`lcm(2*n+1, A016851(2*n+1))`
-/

namespace A017331.P4885954850446269818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A016851 (2 * n + 1))

end

end A017331.P4885954850446269818

namespace A017331

/-- `lcm(2*n+1, A016851(2*n+1))` -/
def P4885954850446269818.Spec : Prop :=
  ∀ n, (P4885954850446269818.a n : ℤ) = A017331 n

end A017331

/-! ## A017331.P15891469083755884640

`A008587(2*n+1)*A017330(n)`
-/

namespace A017331.P15891469083755884640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (2 * n + 1) * A017330 n

end

end A017331.P15891469083755884640

namespace A017331

/-- `A008587(2*n+1)*A017330(n)` -/
def P15891469083755884640.Spec : Prop :=
  ∀ n, P15891469083755884640.a n = A017331 n

theorem P15891469083755884640.correct : P15891469083755884640.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P15891469083755884640.a, A017331.P17996871924844306037.a, A008587, A008587.P15238079008432610842.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-! ## A017331.P6103669920476161959

`A033429(2*n+1)*A053742(n)`
-/

namespace A017331.P6103669920476161959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 (2 * n + 1) * A053742 n

end

end A017331.P6103669920476161959

namespace A017331

/-- `A033429(2*n+1)*A053742(n)` -/
def P6103669920476161959.Spec : Prop :=
  ∀ n, P6103669920476161959.a n = A017331 n

theorem P6103669920476161959.correct : P6103669920476161959.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P6103669920476161959.a, A017331.P17996871924844306037.a, A033429, A033429.P6959806467874002675.a, A053742, A053742.P14573697314274550349.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-! ## A017331.P14713893880851635541

`A091574(2*n)²*A091574(2*n)`
-/

namespace A017331.P14713893880851635541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091574 (2 * n) ^ 2 * A091574 (2 * n)

end

end A017331.P14713893880851635541

namespace A017331

/-- `A091574(2*n)²*A091574(2*n)` -/
def P14713893880851635541.Spec : Prop :=
  ∀ n, P14713893880851635541.a n = A017331 n

end A017331

/-! ## A017331.P17125782593097341206

`A008587(2*n+1)*A016850(2*n+1)`
-/

namespace A017331.P17125782593097341206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (2 * n + 1) * A016850 (2 * n + 1)

end

end A017331.P17125782593097341206

namespace A017331

/-- `A008587(2*n+1)*A016850(2*n+1)` -/
def P17125782593097341206.Spec : Prop :=
  ∀ n, P17125782593097341206.a n = A017331 n

theorem P17125782593097341206.correct : P17125782593097341206.Spec := by
  intro n
  simp only [A017331, Nat.add_sub_cancel, A017331.P17125782593097341206.a, A017331.P17996871924844306037.a, A008587, A008587.P15238079008432610842.a, A016850, A016850.P11162086959237364138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017331

/-!
# A017332: a(n) = (10*n + 5)^4.

The programs for A017332, the canonical program `A017332.P15909481897774357018` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017332 has offset 0).

The definition of A017332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^4` (program `A017332.P15909481897774357018`, by `A017332.P15909481897774357018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017332.P15909481897774357018

`(10*n+5)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017332

/-- `(10*n+5)^4` -/
def P15909481897774357018.Spec : Prop :=
  ∀ n, (P15909481897774357018.a n : ℤ) = A017332 n

theorem P15909481897774357018.correct : P15909481897774357018.Spec := by
  intro n
  simp only [A017332]

end A017332

/-! ## A017332.P9246334079513041088

`record[(5*xor(1, n))^4]`
-/

namespace A017332.P9246334079513041088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017332.P9246334079513041088

namespace A017332

/-- `record[(5*xor(1, n))^4]` -/
def P9246334079513041088.Spec : Prop :=
  ∀ n, (P9246334079513041088.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P6912161974580467084

`record[(5*xor(1, n))²²]`
-/

namespace A017332.P6912161974580467084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.xor 1 n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017332.P6912161974580467084

namespace A017332

/-- `record[(5*xor(1, n))²²]` -/
def P6912161974580467084.Spec : Prop :=
  ∀ n, (P6912161974580467084.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P6843361977608017043

`(5*or(1, 2*n))²²`
-/

namespace A017332.P6843361977608017043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.lor 1 (2 * n)) ^ 2) ^ 2

end

end A017332.P6843361977608017043

namespace A017332

/-- `(5*or(1, 2*n))²²` -/
def P6843361977608017043.Spec : Prop :=
  ∀ n, (P6843361977608017043.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P3985469200160973439

`(5*xor(1, 2*n))²²`
-/

namespace A017332.P3985469200160973439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.xor 1 (2 * n)) ^ 2) ^ 2

end

end A017332.P3985469200160973439

namespace A017332

/-- `(5*xor(1, 2*n))²²` -/
def P3985469200160973439.Spec : Prop :=
  ∀ n, (P3985469200160973439.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P422995137253478400

`and(-3, (10*n+5)²)²`
-/

namespace A017332.P422995137253478400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((10 * n + 5) ^ 2 : ℤ) ^ 2

end

end A017332.P422995137253478400

namespace A017332

/-- `and(-3, (10*n+5)²)²` -/
def P422995137253478400.Spec : Prop :=
  ∀ n, P422995137253478400.a n = A017332 n

end A017332

/-! ## A017332.P1435464385677899077

`lcm(5, (5*(2*n+1))²²)`
-/

namespace A017332.P1435464385677899077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (((5 * (2 * n + 1)) ^ 2) ^ 2)

end

end A017332.P1435464385677899077

namespace A017332

/-- `lcm(5, (5*(2*n+1))²²)` -/
def P1435464385677899077.Spec : Prop :=
  ∀ n, (P1435464385677899077.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P10016731562530889551

`∩[2*n+1, 5*n]²²`
-/

namespace A017332.P10016731562530889551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017332.P10016731562530889551

namespace A017332

/-- `∩[2*n+1, 5*n]²²` -/
def P10016731562530889551.Spec : Prop :=
  ∀ n, (P10016731562530889551.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P7454471380672754435

`((2*n+1)/tan(acot(5)))²²`
-/

namespace A017332.P7454471380672754435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot (5 : ℝ))) ^ 2) ^ 2

end

end A017332.P7454471380672754435

namespace A017332

/-- `((2*n+1)/tan(acot(5)))²²` -/
def P7454471380672754435.Spec : Prop :=
  ∀ n, P7454471380672754435.a n = (A017332 n : ℝ)

end A017332

/-! ## A017332.P12295712117637033707

`((2*n+1)/cot(atan(5)))²²`
-/

namespace A017332.P12295712117637033707
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1 : ℝ) / Real.cot (Real.arctan (5 : ℝ))) ^ 2) ^ 2

end

end A017332.P12295712117637033707

namespace A017332

/-- `((2*n+1)/cot(atan(5)))²²` -/
def P12295712117637033707.Spec : Prop :=
  ∀ n, P12295712117637033707.a n = (A017332 n : ℝ)

end A017332

/-! ## A017332.P17591191209184424877

`record[(5*(n-1))^(2*gcd(2, n))]`
-/

namespace A017332.P17591191209184424877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * ((n : ℤ) - 1)) ^ (2 * Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017332.P17591191209184424877

namespace A017332

/-- `record[(5*(n-1))^(2*gcd(2, n))]` -/
def P17591191209184424877.Spec : Prop :=
  ∀ n, P17591191209184424877.a n = A017332 n

end A017332

/-! ## A017332.P5963357228944471630

`((n-2)²-record[(n-3)²])²²`
-/

namespace A017332.P5963357228944471630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - 2) ^ 2 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ^ 2) ^ 2

end

end A017332.P5963357228944471630

namespace A017332

/-- `((n-2)²-record[(n-3)²])²²` -/
def P5963357228944471630.Spec : Prop :=
  ∀ n, P5963357228944471630.a n = A017332 n

end A017332

/-! ## A017332.P17149719030662185954

`(5*C(2*n+1, 2*n))²²`
-/

namespace A017332.P17149719030662185954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2

end

end A017332.P17149719030662185954

namespace A017332

/-- `(5*C(2*n+1, 2*n))²²` -/
def P17149719030662185954.Spec : Prop :=
  ∀ n, (P17149719030662185954.a n : ℤ) = A017332 n

theorem P17149719030662185954.correct : P17149719030662185954.Spec := by
  intro n
  simp only [A017332, Nat.add_sub_cancel, A017332.P17149719030662185954.a, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017332

/-! ## A017332.P10788738080074609004

`(5*∪[2*n+1, (2*n+1)²])²²`
-/

namespace A017332.P10788738080074609004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n) ^ 2) ^ 2

end

end A017332.P10788738080074609004

namespace A017332

/-- `(5*∪[2*n+1, (2*n+1)²])²²` -/
def P10788738080074609004.Spec : Prop :=
  ∀ n, (P10788738080074609004.a n : ℤ) = A017332 n

end A017332

/-! ## A017332.P9379792579780072834

`(Δ[and(2*n+1, 2*n)²]+2*n+1)²²`
-/

namespace A017332.P9379792579780072834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)) ^ 2) ^ 2

end

end A017332.P9379792579780072834

namespace A017332

/-- `(Δ[and(2*n+1, 2*n)²]+2*n+1)²²` -/
def P9379792579780072834.Spec : Prop :=
  ∀ n, P9379792579780072834.a n = A017332 n

end A017332

/-! ## A017332.P5331976909298689769

`A017330(n)²`
-/

namespace A017332.P5331976909298689769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n ^ 2

end

end A017332.P5331976909298689769

namespace A017332

/-- `A017330(n)²` -/
def P5331976909298689769.Spec : Prop :=
  ∀ n, P5331976909298689769.a n = A017332 n

theorem P5331976909298689769.correct : P5331976909298689769.Spec := by
  intro n
  simp only [A017332, Nat.add_sub_cancel, A017332.P5331976909298689769.a, A017332.P15909481897774357018.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017332

/-! ## A017332.P17901707302284301311

`sqrt(A017336(n))`
-/

namespace A017332.P17901707302284301311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017336 n : ℝ)

end

end A017332.P17901707302284301311

namespace A017332

/-- `sqrt(A017336(n))` -/
def P17901707302284301311.Spec : Prop :=
  ∀ n, P17901707302284301311.a n = (A017332 n : ℝ)

end A017332

/-! ## A017332.P18177667123873601376

`A017329(n)²²`
-/

namespace A017332.P18177667123873601376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017329 n ^ 2) ^ 2

end

end A017332.P18177667123873601376

namespace A017332

/-- `A017329(n)²²` -/
def P18177667123873601376.Spec : Prop :=
  ∀ n, P18177667123873601376.a n = A017332 n

theorem P18177667123873601376.correct : P18177667123873601376.Spec := by
  intro n
  simp only [A017332, Nat.add_sub_cancel, A017332.P18177667123873601376.a, A017332.P15909481897774357018.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017332

/-! ## A017332.P8349204199759177947

`(A152161(n)+4)²`
-/

namespace A017332.P8349204199759177947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152161 n + 4) ^ 2

end

end A017332.P8349204199759177947

namespace A017332

/-- `(A152161(n)+4)²` -/
def P8349204199759177947.Spec : Prop :=
  ∀ n, P8349204199759177947.a n = A017332 n

theorem P8349204199759177947.correct : P8349204199759177947.Spec := by
  intro n
  simp only [A017332, Nat.add_sub_cancel, A017332.P8349204199759177947.a, A017332.P15909481897774357018.a, A152161, A152161.P9122304770913121613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017332

/-! ## A017332.P4929597826789823953

`(A017317(n)+1)²²`
-/

namespace A017332.P4929597826789823953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017317 n + 1) ^ 2) ^ 2

end

end A017332.P4929597826789823953

namespace A017332

/-- `(A017317(n)+1)²²` -/
def P4929597826789823953.Spec : Prop :=
  ∀ n, P4929597826789823953.a n = A017332 n

theorem P4929597826789823953.correct : P4929597826789823953.Spec := by
  intro n
  simp only [A017332, Nat.add_sub_cancel, A017332.P4929597826789823953.a, A017332.P15909481897774357018.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017332

/-!
# A017333: a(n) = (10*n + 5)^5.

The programs for A017333, the canonical program `A017333.P15250838761759041178` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017333 has offset 0).

The definition of A017333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^5` (program `A017333.P15250838761759041178`, by `A017333.P15250838761759041178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017333.P15250838761759041178

`(10*n+5)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017333

/-- `(10*n+5)^5` -/
def P15250838761759041178.Spec : Prop :=
  ∀ n, (P15250838761759041178.a n : ℤ) = A017333 n

theorem P15250838761759041178.correct : P15250838761759041178.Spec := by
  intro n
  simp only [A017333]

end A017333

/-! ## A017333.P7688437815302958527

`record[(5*xor(1, n))^5]`
-/

namespace A017333.P7688437815302958527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * Nat.xor 1 n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017333.P7688437815302958527

namespace A017333

/-- `record[(5*xor(1, n))^5]` -/
def P7688437815302958527.Spec : Prop :=
  ∀ n, (P7688437815302958527.a n : ℤ) = A017333 n

end A017333

/-! ## A017333.P1058497904411049262

`sqrt(A017330(n)^5)`
-/

namespace A017333.P1058497904411049262
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017330 n ^ 5 : ℝ)

end

end A017333.P1058497904411049262

namespace A017333

/-- `sqrt(A017330(n)^5)` -/
def P1058497904411049262.Spec : Prop :=
  ∀ n, P1058497904411049262.a n = (A017333 n : ℝ)

end A017333

/-! ## A017333.P18378625553625732059

`(10*n+5)*A017332(n)`
-/

namespace A017333.P18378625553625732059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 5 : ℤ) * A017332 n

end

end A017333.P18378625553625732059

namespace A017333

/-- `(10*n+5)*A017332(n)` -/
def P18378625553625732059.Spec : Prop :=
  ∀ n, P18378625553625732059.a n = A017333 n

theorem P18378625553625732059.correct : P18378625553625732059.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P18378625553625732059.a, A017333.P15250838761759041178.a, A017332, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P7407758689828448100

`A017330(n)*A017331(n)`
-/

namespace A017333.P7407758689828448100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n * A017331 n

end

end A017333.P7407758689828448100

namespace A017333

/-- `A017330(n)*A017331(n)` -/
def P7407758689828448100.Spec : Prop :=
  ∀ n, P7407758689828448100.a n = A017333 n

theorem P7407758689828448100.correct : P7407758689828448100.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P7407758689828448100.a, A017333.P15250838761759041178.a, A017330, A017330.P10434817311625232981.a, A017331, A017331.P17996871924844306037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P14194756889632359121

`A017334(n)/A017329(n)`
-/

namespace A017333.P14194756889632359121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017334 n : ℚ) / (A017329 n : ℚ)

end

end A017333.P14194756889632359121

namespace A017333

/-- `A017334(n)/A017329(n)` -/
def P14194756889632359121.Spec : Prop :=
  ∀ n, P14194756889632359121.a n = (A017333 n : ℚ)

end A017333

/-! ## A017333.P3146694418963983730

`A017336(n)/A017331(n)`
-/

namespace A017333.P3146694418963983730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017336 n : ℚ) / (A017331 n : ℚ)

end

end A017333.P3146694418963983730

namespace A017333

/-- `A017336(n)/A017331(n)` -/
def P3146694418963983730.Spec : Prop :=
  ∀ n, P3146694418963983730.a n = (A017333 n : ℚ)

end A017333

/-! ## A017333.P13146202182985033560

`A017329(n)²*A017331(n)`
-/

namespace A017333.P13146202182985033560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n ^ 2 * A017331 n

end

end A017333.P13146202182985033560

namespace A017333

/-- `A017329(n)²*A017331(n)` -/
def P13146202182985033560.Spec : Prop :=
  ∀ n, P13146202182985033560.a n = A017333 n

theorem P13146202182985033560.correct : P13146202182985033560.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P13146202182985033560.a, A017333.P15250838761759041178.a, A017329, A017329.P13641332030280969901.a, A017331, A017331.P17996871924844306037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P7419856911252322211

`A017330(n)²*A017329(n)`
-/

namespace A017333.P7419856911252322211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n ^ 2 * A017329 n

end

end A017333.P7419856911252322211

namespace A017333

/-- `A017330(n)²*A017329(n)` -/
def P7419856911252322211.Spec : Prop :=
  ∀ n, P7419856911252322211.a n = A017333 n

theorem P7419856911252322211.correct : P7419856911252322211.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P7419856911252322211.a, A017333.P15250838761759041178.a, A017329, A017329.P13641332030280969901.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P2811363342665057029

`A017332(n)²/A017331(n)`
-/

namespace A017333.P2811363342665057029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017332 n ^ 2 : ℚ) / (A017331 n : ℚ)

end

end A017333.P2811363342665057029

namespace A017333

/-- `A017332(n)²/A017331(n)` -/
def P2811363342665057029.Spec : Prop :=
  ∀ n, P2811363342665057029.a n = (A017333 n : ℚ)

end A017333

/-! ## A017333.P6392980314057741632

`(A017341(n)-1)*A017330(n)²`
-/

namespace A017333.P6392980314057741632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n - 1) * A017330 n ^ 2

end

end A017333.P6392980314057741632

namespace A017333

/-- `(A017341(n)-1)*A017330(n)²` -/
def P6392980314057741632.Spec : Prop :=
  ∀ n, P6392980314057741632.a n = A017333 n

theorem P6392980314057741632.correct : P6392980314057741632.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P6392980314057741632.a, A017333.P15250838761759041178.a, A017330, A017330.P10434817311625232981.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P305994846315205101

`A016853(Δ[n²])`
-/

namespace A017333.P305994846315205101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016853 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017333.P305994846315205101

namespace A017333

/-- `A016853(Δ[n²])` -/
def P305994846315205101.Spec : Prop :=
  ∀ n, P305994846315205101.a n = A017333 n

end A017333

/-! ## A017333.P7143603377006722833

`lcm(5, A016853(2*n+1))`
-/

namespace A017333.P7143603377006722833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A016853 (2 * n + 1))

end

end A017333.P7143603377006722833

namespace A017333

/-- `lcm(5, A016853(2*n+1))` -/
def P7143603377006722833.Spec : Prop :=
  ∀ n, (P7143603377006722833.a n : ℤ) = A017333 n

end A017333

/-! ## A017333.P11486689469613998325

`A016854(2*n+1)/(10*n+5)`
-/

namespace A017333.P11486689469613998325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016854 (2 * n + 1) : ℚ) / (10 * n + 5 : ℚ)

end

end A017333.P11486689469613998325

namespace A017333

/-- `A016854(2*n+1)/(10*n+5)` -/
def P11486689469613998325.Spec : Prop :=
  ∀ n, P11486689469613998325.a n = (A017333 n : ℚ)

theorem P11486689469613998325.correct : P11486689469613998325.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P11486689469613998325.a, A017333.P15250838761759041178.a, A016854, A016854.P2052501307848235543.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P15576224323540459808

`A091574(2*n)²²*A091574(2*n)`
-/

namespace A017333.P15576224323540459808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091574 (2 * n) ^ 2) ^ 2 * A091574 (2 * n)

end

end A017333.P15576224323540459808

namespace A017333

/-- `A091574(2*n)²²*A091574(2*n)` -/
def P15576224323540459808.Spec : Prop :=
  ∀ n, P15576224323540459808.a n = A017333 n

end A017333

/-! ## A017333.P1324853839871812468

`A016850(2*n+1)²*A008587(2*n+1)`
-/

namespace A017333.P1324853839871812468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016850 (2 * n + 1) ^ 2 * A008587 (2 * n + 1)

end

end A017333.P1324853839871812468

namespace A017333

/-- `A016850(2*n+1)²*A008587(2*n+1)` -/
def P1324853839871812468.Spec : Prop :=
  ∀ n, P1324853839871812468.a n = A017333 n

theorem P1324853839871812468.correct : P1324853839871812468.Spec := by
  intro n
  simp only [A017333, Nat.add_sub_cancel, A017333.P1324853839871812468.a, A017333.P15250838761759041178.a, A008587, A008587.P15238079008432610842.a, A016850, A016850.P11162086959237364138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017333

/-! ## A017333.P3681646040652901114

`A016850(2*n+1)²*A008706(2*n+1)`
-/

namespace A017333.P3681646040652901114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016850 (2 * n + 1) ^ 2 * A008706 (2 * n + 1)

end

end A017333.P3681646040652901114

namespace A017333

/-- `A016850(2*n+1)²*A008706(2*n+1)` -/
def P3681646040652901114.Spec : Prop :=
  ∀ n, P3681646040652901114.a n = A017333 n

end A017333

/-! ## A017333.P10389064562543166038

`A164355(2*n+1)²²*A164355(2*n+1)`
-/

namespace A017333.P10389064562543166038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164355 (2 * n + 1) ^ 2) ^ 2 * A164355 (2 * n + 1)

end

end A017333.P10389064562543166038

namespace A017333

/-- `A164355(2*n+1)²²*A164355(2*n+1)` -/
def P10389064562543166038.Spec : Prop :=
  ∀ n, P10389064562543166038.a n = A017333 n

end A017333

/-! ## A017333.P3726909631740350626

`A166621(2*n+1)²²*A166621(2*n+1)`
-/

namespace A017333.P3726909631740350626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A166621 (2 * n + 1) ^ 2) ^ 2 * A166621 (2 * n + 1)

end

end A017333.P3726909631740350626

namespace A017333

/-- `A166621(2*n+1)²²*A166621(2*n+1)` -/
def P3726909631740350626.Spec : Prop :=
  ∀ n, P3726909631740350626.a n = A017333 n

end A017333

/-!
# A017334: a(n) = (10*n + 5)^6.

The programs for A017334, the canonical program `A017334.P522530592995191774` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017334 has offset 0).

The definition of A017334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^6` (program `A017334.P522530592995191774`, by `A017334.P522530592995191774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017334.P522530592995191774

`(10*n+5)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017334

/-- `(10*n+5)^6` -/
def P522530592995191774.Spec : Prop :=
  ∀ n, (P522530592995191774.a n : ℤ) = A017334 n

theorem P522530592995191774.correct : P522530592995191774.Spec := by
  intro n
  simp only [A017334]

end A017334

/-! ## A017334.P2989543288022366452

`((5*or(1, 2*n))^3)²`
-/

namespace A017334.P2989543288022366452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.lor 1 (2 * n)) ^ 3) ^ 2

end

end A017334.P2989543288022366452

namespace A017334

/-- `((5*or(1, 2*n))^3)²` -/
def P2989543288022366452.Spec : Prop :=
  ∀ n, (P2989543288022366452.a n : ℤ) = A017334 n

end A017334

/-! ## A017334.P4570876243550330082

`((5*xor(1, 2*n))^3)²`
-/

namespace A017334.P4570876243550330082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.xor 1 (2 * n)) ^ 3) ^ 2

end

end A017334.P4570876243550330082

namespace A017334

/-- `((5*xor(1, 2*n))^3)²` -/
def P4570876243550330082.Spec : Prop :=
  ∀ n, (P4570876243550330082.a n : ℤ) = A017334 n

end A017334

/-! ## A017334.P7473992898636951081

`A017331(n)²`
-/

namespace A017334.P7473992898636951081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017331 n ^ 2

end

end A017334.P7473992898636951081

namespace A017334

/-- `A017331(n)²` -/
def P7473992898636951081.Spec : Prop :=
  ∀ n, P7473992898636951081.a n = A017334 n

theorem P7473992898636951081.correct : P7473992898636951081.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P7473992898636951081.a, A017334.P522530592995191774.a, A017331, A017331.P17996871924844306037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P4166807622981380827

`(A017329(n)^3)²`
-/

namespace A017334.P4166807622981380827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017329 n ^ 3) ^ 2

end

end A017334.P4166807622981380827

namespace A017334

/-- `(A017329(n)^3)²` -/
def P4166807622981380827.Spec : Prop :=
  ∀ n, P4166807622981380827.a n = A017334 n

theorem P4166807622981380827.correct : P4166807622981380827.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P4166807622981380827.a, A017334.P522530592995191774.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P11836183426743950681

`sqrt(A017332(n)^3)`
-/

namespace A017334.P11836183426743950681
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017332 n ^ 3 : ℝ)

end

end A017334.P11836183426743950681

namespace A017334

/-- `sqrt(A017332(n)^3)` -/
def P11836183426743950681.Spec : Prop :=
  ∀ n, P11836183426743950681.a n = (A017334 n : ℝ)

end A017334

/-! ## A017334.P2456797818764901594

`((A008592(n)+5)^3)²`
-/

namespace A017334.P2456797818764901594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 5) ^ 3) ^ 2

end

end A017334.P2456797818764901594

namespace A017334

/-- `((A008592(n)+5)^3)²` -/
def P2456797818764901594.Spec : Prop :=
  ∀ n, P2456797818764901594.a n = A017334 n

theorem P2456797818764901594.correct : P2456797818764901594.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P2456797818764901594.a, A017334.P522530592995191774.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P15162604426496051508

`A017329(n)*A017333(n)`
-/

namespace A017334.P15162604426496051508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n * A017333 n

end

end A017334.P15162604426496051508

namespace A017334

/-- `A017329(n)*A017333(n)` -/
def P15162604426496051508.Spec : Prop :=
  ∀ n, P15162604426496051508.a n = A017334 n

theorem P15162604426496051508.correct : P15162604426496051508.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P15162604426496051508.a, A017334.P522530592995191774.a, A017329, A017329.P13641332030280969901.a, A017333, A017333.P15250838761759041178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P8575400705893265311

`A017330(n)*A017332(n)`
-/

namespace A017334.P8575400705893265311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n * A017332 n

end

end A017334.P8575400705893265311

namespace A017334

/-- `A017330(n)*A017332(n)` -/
def P8575400705893265311.Spec : Prop :=
  ∀ n, P8575400705893265311.a n = A017334 n

theorem P8575400705893265311.correct : P8575400705893265311.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P8575400705893265311.a, A017334.P522530592995191774.a, A017330, A017330.P10434817311625232981.a, A017332, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P17643983579265695649

`(A017329(n)*A017330(n))²`
-/

namespace A017334.P17643983579265695649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017329 n * A017330 n) ^ 2

end

end A017334.P17643983579265695649

namespace A017334

/-- `(A017329(n)*A017330(n))²` -/
def P17643983579265695649.Spec : Prop :=
  ∀ n, P17643983579265695649.a n = A017334 n

theorem P17643983579265695649.correct : P17643983579265695649.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P17643983579265695649.a, A017334.P522530592995191774.a, A017329, A017329.P13641332030280969901.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P6642096216653237389

`A017329(n)²*A017332(n)`
-/

namespace A017334.P6642096216653237389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n ^ 2 * A017332 n

end

end A017334.P6642096216653237389

namespace A017334

/-- `A017329(n)²*A017332(n)` -/
def P6642096216653237389.Spec : Prop :=
  ∀ n, P6642096216653237389.a n = A017334 n

theorem P6642096216653237389.correct : P6642096216653237389.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P6642096216653237389.a, A017334.P522530592995191774.a, A017329, A017329.P13641332030280969901.a, A017332, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P122890899311989958

`(A017333(n)/A017330(n))²`
-/

namespace A017334.P122890899311989958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017333 n : ℚ) / (A017330 n : ℚ)) ^ 2

end

end A017334.P122890899311989958

namespace A017334

/-- `(A017333(n)/A017330(n))²` -/
def P122890899311989958.Spec : Prop :=
  ∀ n, P122890899311989958.a n = (A017334 n : ℚ)

end A017334

/-! ## A017334.P13484987181977217909

`A017336(n)/A017329(n)²`
-/

namespace A017334.P13484987181977217909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017336 n : ℚ) / (A017329 n ^ 2 : ℚ)

end

end A017334.P13484987181977217909

namespace A017334

/-- `A017336(n)/A017329(n)²` -/
def P13484987181977217909.Spec : Prop :=
  ∀ n, P13484987181977217909.a n = (A017334 n : ℚ)

end A017334

/-! ## A017334.P17131071715391057195

`(Δ[A033429(n)]^3)²`
-/

namespace A017334.P17131071715391057195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017334.P17131071715391057195

namespace A017334

/-- `(Δ[A033429(n)]^3)²` -/
def P17131071715391057195.Spec : Prop :=
  ∀ n, P17131071715391057195.a n = A017334 n

theorem P17131071715391057195.correct : P17131071715391057195.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P17131071715391057195.f1, A017334.P17131071715391057195.a, A017334.P522530592995191774.a, A033429, A033429.P6959806467874002675.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P236997195005770788

`(Δ[A212656(n)]^3)²`
-/

namespace A017334.P236997195005770788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017334.P236997195005770788

namespace A017334

/-- `(Δ[A212656(n)]^3)²` -/
def P236997195005770788.Spec : Prop :=
  ∀ n, P236997195005770788.a n = A017334 n

theorem P236997195005770788.correct : P236997195005770788.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P236997195005770788.f1, A017334.P236997195005770788.a, A017334.P522530592995191774.a, A212656, A212656.P2315777106201839583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-! ## A017334.P14428094198072584154

`A016854(Δ[n²])`
-/

namespace A017334.P14428094198072584154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016854 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017334.P14428094198072584154

namespace A017334

/-- `A016854(Δ[n²])` -/
def P14428094198072584154.Spec : Prop :=
  ∀ n, P14428094198072584154.a n = A017334 n

end A017334

/-! ## A017334.P11496355513186032377

`A016851(Δ[n²])²`
-/

namespace A017334.P11496355513186032377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016851 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017334.P11496355513186032377

namespace A017334

/-- `A016851(Δ[n²])²` -/
def P11496355513186032377.Spec : Prop :=
  ∀ n, P11496355513186032377.a n = A017334 n

end A017334

/-! ## A017334.P4991830000075150502

`lcm(2*n+1, A016854(2*n+1))`
-/

namespace A017334.P4991830000075150502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A016854 (2 * n + 1))

end

end A017334.P4991830000075150502

namespace A017334

/-- `lcm(2*n+1, A016854(2*n+1))` -/
def P4991830000075150502.Spec : Prop :=
  ∀ n, (P4991830000075150502.a n : ℤ) = A017334 n

end A017334

/-! ## A017334.P18340205346263500290

`A016851(2*n+1)*A016851(2*n+1)`
-/

namespace A017334.P18340205346263500290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016851 (2 * n + 1) * A016851 (2 * n + 1)

end

end A017334.P18340205346263500290

namespace A017334

/-- `A016851(2*n+1)*A016851(2*n+1)` -/
def P18340205346263500290.Spec : Prop :=
  ∀ n, P18340205346263500290.a n = A017334 n

theorem P18340205346263500290.correct : P18340205346263500290.Spec := by
  intro n
  simp only [A017334, Nat.add_sub_cancel, A017334.P18340205346263500290.a, A017334.P522530592995191774.a, A016851, A016851.P6768670708261062492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017334

/-!
# A017335: a(n) = (10*n + 5)^7.

The programs for A017335, the canonical program `A017335.P13271186438040847179` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017335 has offset 0).

The definition of A017335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^7` (program `A017335.P13271186438040847179`, by `A017335.P13271186438040847179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017335.P13271186438040847179

`(10*n+5)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017335

/-- `(10*n+5)^7` -/
def P13271186438040847179.Spec : Prop :=
  ∀ n, (P13271186438040847179.a n : ℤ) = A017335 n

theorem P13271186438040847179.correct : P13271186438040847179.Spec := by
  intro n
  simp only [A017335]

end A017335

/-! ## A017335.P2819580332647562251

`A017329(n)*A017334(n)`
-/

namespace A017335.P2819580332647562251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n * A017334 n

end

end A017335.P2819580332647562251

namespace A017335

/-- `A017329(n)*A017334(n)` -/
def P2819580332647562251.Spec : Prop :=
  ∀ n, P2819580332647562251.a n = A017335 n

theorem P2819580332647562251.correct : P2819580332647562251.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P2819580332647562251.a, A017335.P13271186438040847179.a, A017329, A017329.P13641332030280969901.a, A017334, A017334.P522530592995191774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P17668782750984788452

`A017330(n)*A017333(n)`
-/

namespace A017335.P17668782750984788452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n * A017333 n

end

end A017335.P17668782750984788452

namespace A017335

/-- `A017330(n)*A017333(n)` -/
def P17668782750984788452.Spec : Prop :=
  ∀ n, P17668782750984788452.a n = A017335 n

theorem P17668782750984788452.correct : P17668782750984788452.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P17668782750984788452.a, A017335.P13271186438040847179.a, A017330, A017330.P10434817311625232981.a, A017333, A017333.P15250838761759041178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P16647630653173157982

`A017331(n)*A017332(n)`
-/

namespace A017335.P16647630653173157982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017331 n * A017332 n

end

end A017335.P16647630653173157982

namespace A017335

/-- `A017331(n)*A017332(n)` -/
def P16647630653173157982.Spec : Prop :=
  ∀ n, P16647630653173157982.a n = A017335 n

theorem P16647630653173157982.correct : P16647630653173157982.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P16647630653173157982.a, A017335.P13271186438040847179.a, A017331, A017331.P17996871924844306037.a, A017332, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P3901542595159311642

`A017336(n)/A017329(n)`
-/

namespace A017335.P3901542595159311642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017336 n : ℚ) / (A017329 n : ℚ)

end

end A017335.P3901542595159311642

namespace A017335

/-- `A017336(n)/A017329(n)` -/
def P3901542595159311642.Spec : Prop :=
  ∀ n, P3901542595159311642.a n = (A017335 n : ℚ)

end A017335

/-! ## A017335.P10132226865236920180

`A017329(n)²*A017333(n)`
-/

namespace A017335.P10132226865236920180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n ^ 2 * A017333 n

end

end A017335.P10132226865236920180

namespace A017335

/-- `A017329(n)²*A017333(n)` -/
def P10132226865236920180.Spec : Prop :=
  ∀ n, P10132226865236920180.a n = A017335 n

theorem P10132226865236920180.correct : P10132226865236920180.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P10132226865236920180.a, A017335.P13271186438040847179.a, A017329, A017329.P13641332030280969901.a, A017333, A017333.P15250838761759041178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P5590555798752248992

`A017330(n)²*A017331(n)`
-/

namespace A017335.P5590555798752248992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n ^ 2 * A017331 n

end

end A017335.P5590555798752248992

namespace A017335

/-- `A017330(n)²*A017331(n)` -/
def P5590555798752248992.Spec : Prop :=
  ∀ n, P5590555798752248992.a n = A017335 n

theorem P5590555798752248992.correct : P5590555798752248992.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P5590555798752248992.a, A017335.P13271186438040847179.a, A017330, A017330.P10434817311625232981.a, A017331, A017331.P17996871924844306037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P654369772279053484

`A017331(n)²*A017329(n)`
-/

namespace A017335.P654369772279053484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017331 n ^ 2 * A017329 n

end

end A017335.P654369772279053484

namespace A017335

/-- `A017331(n)²*A017329(n)` -/
def P654369772279053484.Spec : Prop :=
  ∀ n, P654369772279053484.a n = A017335 n

theorem P654369772279053484.correct : P654369772279053484.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P654369772279053484.a, A017335.P13271186438040847179.a, A017329, A017329.P13641332030280969901.a, A017331, A017331.P17996871924844306037.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P11918972331241827873

`A017332(n)²/A017329(n)`
-/

namespace A017335.P11918972331241827873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017332 n ^ 2 : ℚ) / (A017329 n : ℚ)

end

end A017335.P11918972331241827873

namespace A017335

/-- `A017332(n)²/A017329(n)` -/
def P11918972331241827873.Spec : Prop :=
  ∀ n, P11918972331241827873.a n = (A017335 n : ℚ)

end A017335

/-! ## A017335.P11610008777866068516

`A017330(n)²²/A017329(n)`
-/

namespace A017335.P11610008777866068516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017330 n ^ 2) ^ 2 : ℚ) / (A017329 n : ℚ)

end

end A017335.P11610008777866068516

namespace A017335

/-- `A017330(n)²²/A017329(n)` -/
def P11610008777866068516.Spec : Prop :=
  ∀ n, P11610008777866068516.a n = (A017335 n : ℚ)

end A017335

/-! ## A017335.P13043837733905078309

`A017333(n)/A017331(n)*A017333(n)`
-/

namespace A017335.P13043837733905078309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017333 n : ℚ) / (A017331 n : ℚ) * (A017333 n : ℚ)

end

end A017335.P13043837733905078309

namespace A017335

/-- `A017333(n)/A017331(n)*A017333(n)` -/
def P13043837733905078309.Spec : Prop :=
  ∀ n, P13043837733905078309.a n = (A017335 n : ℚ)

end A017335

/-! ## A017335.P16531012064345126103

`A016855(Δ[n²])`
-/

namespace A017335.P16531012064345126103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016855 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017335.P16531012064345126103

namespace A017335

/-- `A016855(Δ[n²])` -/
def P16531012064345126103.Spec : Prop :=
  ∀ n, P16531012064345126103.a n = A017335 n

end A017335

/-! ## A017335.P1715960398164561300

`lcm(2*n+1, A016855(2*n+1))`
-/

namespace A017335.P1715960398164561300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A016855 (2 * n + 1))

end

end A017335.P1715960398164561300

namespace A017335

/-- `lcm(2*n+1, A016855(2*n+1))` -/
def P1715960398164561300.Spec : Prop :=
  ∀ n, (P1715960398164561300.a n : ℤ) = A017335 n

end A017335

/-! ## A017335.P1048456583555866306

`∩[A016855(2*n+1), A016855(n)]`
-/

namespace A017335.P1048456583555866306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016855 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A017335.P1048456583555866306

namespace A017335

/-- `∩[A016855(2*n+1), A016855(n)]` -/
def P1048456583555866306.Spec : Prop :=
  ∀ n, (P1048456583555866306.a n : ℤ) = A017335 n

end A017335

/-! ## A017335.P2932939531434510031

`A016850(2*n+1)²²/A008587(2*n+1)`
-/

namespace A017335.P2932939531434510031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016850 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A008587 (2 * n + 1) : ℚ)

end

end A017335.P2932939531434510031

namespace A017335

/-- `A016850(2*n+1)²²/A008587(2*n+1)` -/
def P2932939531434510031.Spec : Prop :=
  ∀ n, P2932939531434510031.a n = (A017335 n : ℚ)

theorem P2932939531434510031.correct : P2932939531434510031.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P2932939531434510031.a, A017335.P13271186438040847179.a, A008587, A008587.P15238079008432610842.a, A016850, A016850.P11162086959237364138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P2317509740907542912

`A016850(2*n+1)²²/A008706(2*n+1)`
-/

namespace A017335.P2317509740907542912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016850 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A008706 (2 * n + 1) : ℚ)

end

end A017335.P2317509740907542912

namespace A017335

/-- `A016850(2*n+1)²²/A008706(2*n+1)` -/
def P2317509740907542912.Spec : Prop :=
  ∀ n, P2317509740907542912.a n = (A017335 n : ℚ)

end A017335

/-! ## A017335.P16902867779553255645

`A016759(5*n+2)`
-/

namespace A017335.P16902867779553255645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 (5 * n + 2)

end

end A017335.P16902867779553255645

namespace A017335

/-- `A016759(5*n+2)` -/
def P16902867779553255645.Spec : Prop :=
  ∀ n, P16902867779553255645.a n = A017335 n

theorem P16902867779553255645.correct : P16902867779553255645.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P16902867779553255645.a, A017335.P13271186438040847179.a, A016759, A016759.P1108963978635063233.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-! ## A017335.P14939193837534649068

`∩[A016759(n), A016855(n)]`
-/

namespace A017335.P14939193837534649068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A017335.P14939193837534649068

namespace A017335

/-- `∩[A016759(n), A016855(n)]` -/
def P14939193837534649068.Spec : Prop :=
  ∀ n, (P14939193837534649068.a n : ℤ) = A017335 n

end A017335

/-! ## A017335.P10165072835233993351

`A001015(10*n+5)`
-/

namespace A017335.P10165072835233993351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (10 * n + 5)

end

end A017335.P10165072835233993351

namespace A017335

/-- `A001015(10*n+5)` -/
def P10165072835233993351.Spec : Prop :=
  ∀ n, P10165072835233993351.a n = A017335 n

end A017335

/-! ## A017335.P12495086110706450638

`A190578(10*n+5)-(10*n+5)`
-/

namespace A017335.P12495086110706450638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190578 (10 * n + 5) - (10 * n + 5 : ℤ)

end

end A017335.P12495086110706450638

namespace A017335

/-- `A190578(10*n+5)-(10*n+5)` -/
def P12495086110706450638.Spec : Prop :=
  ∀ n, P12495086110706450638.a n = A017335 n

theorem P12495086110706450638.correct : P12495086110706450638.Spec := by
  intro n
  simp only [A017335, Nat.add_sub_cancel, A017335.P12495086110706450638.a, A017335.P13271186438040847179.a, A190578, A190578.P12146952088927153810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017335

/-!
# A017336: a(n) = (10*n + 5)^8.

The programs for A017336, the canonical program `A017336.P11820260960478220628` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017336 has offset 0).

The definition of A017336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^8` (program `A017336.P11820260960478220628`, by `A017336.P11820260960478220628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017336.P11820260960478220628

`(10*n+5)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017336

/-- `(10*n+5)^8` -/
def P11820260960478220628.Spec : Prop :=
  ∀ n, (P11820260960478220628.a n : ℤ) = A017336 n

theorem P11820260960478220628.correct : P11820260960478220628.Spec := by
  intro n
  simp only [A017336]

end A017336

/-! ## A017336.P9004313664215619081

`((5*or(1, 2*n))^4)²`
-/

namespace A017336.P9004313664215619081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.lor 1 (2 * n)) ^ 4) ^ 2

end

end A017336.P9004313664215619081

namespace A017336

/-- `((5*or(1, 2*n))^4)²` -/
def P9004313664215619081.Spec : Prop :=
  ∀ n, (P9004313664215619081.a n : ℤ) = A017336 n

end A017336

/-! ## A017336.P7141579520174387616

`((5*xor(1, 2*n))^4)²`
-/

namespace A017336.P7141579520174387616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((5 * Nat.xor 1 (2 * n)) ^ 4) ^ 2

end

end A017336.P7141579520174387616

namespace A017336

/-- `((5*xor(1, 2*n))^4)²` -/
def P7141579520174387616.Spec : Prop :=
  ∀ n, (P7141579520174387616.a n : ℤ) = A017336 n

end A017336

/-! ## A017336.P17845612373014839432

`(5*or(1, 2*n))²²²`
-/

namespace A017336.P17845612373014839432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((5 * Nat.lor 1 (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017336.P17845612373014839432

namespace A017336

/-- `(5*or(1, 2*n))²²²` -/
def P17845612373014839432.Spec : Prop :=
  ∀ n, (P17845612373014839432.a n : ℤ) = A017336 n

end A017336

/-! ## A017336.P9712821597191175634

`(5*xor(1, 2*n))²²²`
-/

namespace A017336.P9712821597191175634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((5 * Nat.xor 1 (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017336.P9712821597191175634

namespace A017336

/-- `(5*xor(1, 2*n))²²²` -/
def P9712821597191175634.Spec : Prop :=
  ∀ n, (P9712821597191175634.a n : ℤ) = A017336 n

end A017336

/-! ## A017336.P18421272440075123097

`lcm(5, (5*(2*n+1))²²²)`
-/

namespace A017336.P18421272440075123097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 ((((5 * (2 * n + 1)) ^ 2) ^ 2) ^ 2)

end

end A017336.P18421272440075123097

namespace A017336

/-- `lcm(5, (5*(2*n+1))²²²)` -/
def P18421272440075123097.Spec : Prop :=
  ∀ n, (P18421272440075123097.a n : ℤ) = A017336 n

end A017336

/-! ## A017336.P16963951041655891348

`∩[2*n+1, 5*n]²²²`
-/

namespace A017336.P16963951041655891348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2) ^ 2

end

end A017336.P16963951041655891348

namespace A017336

/-- `∩[2*n+1, 5*n]²²²` -/
def P16963951041655891348.Spec : Prop :=
  ∀ n, (P16963951041655891348.a n : ℤ) = A017336 n

end A017336

/-! ## A017336.P15980074883489867565

`(5*C(2*n+1, 2*n))²²²`
-/

namespace A017336.P15980074883489867565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((5 * Nat.choose (2 * n + 1) (2 * n)) ^ 2) ^ 2) ^ 2

end

end A017336.P15980074883489867565

namespace A017336

/-- `(5*C(2*n+1, 2*n))²²²` -/
def P15980074883489867565.Spec : Prop :=
  ∀ n, (P15980074883489867565.a n : ℤ) = A017336 n

theorem P15980074883489867565.correct : P15980074883489867565.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P15980074883489867565.a, A017336.P11820260960478220628.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017336

/-! ## A017336.P13607954139187596049

`A017332(n)²`
-/

namespace A017336.P13607954139187596049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017332 n ^ 2

end

end A017336.P13607954139187596049

namespace A017336

/-- `A017332(n)²` -/
def P13607954139187596049.Spec : Prop :=
  ∀ n, P13607954139187596049.a n = A017336 n

theorem P13607954139187596049.correct : P13607954139187596049.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P13607954139187596049.a, A017336.P11820260960478220628.a, A017332, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P17193403278860353916

`A017330(n)²²`
-/

namespace A017336.P17193403278860353916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017330 n ^ 2) ^ 2

end

end A017336.P17193403278860353916

namespace A017336

/-- `A017330(n)²²` -/
def P17193403278860353916.Spec : Prop :=
  ∀ n, P17193403278860353916.a n = A017336 n

theorem P17193403278860353916.correct : P17193403278860353916.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P17193403278860353916.a, A017336.P11820260960478220628.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P5226295117971769113

`(A017329(n)^4)²`
-/

namespace A017336.P5226295117971769113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017329 n ^ 4) ^ 2

end

end A017336.P5226295117971769113

namespace A017336

/-- `(A017329(n)^4)²` -/
def P5226295117971769113.Spec : Prop :=
  ∀ n, P5226295117971769113.a n = A017336 n

theorem P5226295117971769113.correct : P5226295117971769113.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P5226295117971769113.a, A017336.P11820260960478220628.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P13780918357116771285

`(A017317(n)+1)²²²`
-/

namespace A017336.P13780918357116771285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017317 n + 1) ^ 2) ^ 2) ^ 2

end

end A017336.P13780918357116771285

namespace A017336

/-- `(A017317(n)+1)²²²` -/
def P13780918357116771285.Spec : Prop :=
  ∀ n, P13780918357116771285.a n = A017336 n

theorem P13780918357116771285.correct : P13780918357116771285.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P13780918357116771285.a, A017336.P11820260960478220628.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P12593895275136028721

`(A017305(n)+2)²²²`
-/

namespace A017336.P12593895275136028721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017305 n + 2) ^ 2) ^ 2) ^ 2

end

end A017336.P12593895275136028721

namespace A017336

/-- `(A017305(n)+2)²²²` -/
def P12593895275136028721.Spec : Prop :=
  ∀ n, P12593895275136028721.a n = A017336 n

theorem P12593895275136028721.correct : P12593895275136028721.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P12593895275136028721.a, A017336.P11820260960478220628.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P6099893478839909114

`(1-A017341(n))²²²`
-/

namespace A017336.P6099893478839909114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017341 n) ^ 2) ^ 2) ^ 2

end

end A017336.P6099893478839909114

namespace A017336

/-- `(1-A017341(n))²²²` -/
def P6099893478839909114.Spec : Prop :=
  ∀ n, P6099893478839909114.a n = A017336 n

theorem P6099893478839909114.correct : P6099893478839909114.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P6099893478839909114.a, A017336.P11820260960478220628.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P11343598700229143545

`(2-A017353(n))²²²`
-/

namespace A017336.P11343598700229143545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017353 n) ^ 2) ^ 2) ^ 2

end

end A017336.P11343598700229143545

namespace A017336

/-- `(2-A017353(n))²²²` -/
def P11343598700229143545.Spec : Prop :=
  ∀ n, P11343598700229143545.a n = A017336 n

theorem P11343598700229143545.correct : P11343598700229143545.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P11343598700229143545.a, A017336.P11820260960478220628.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P10057307094889031300

`(A017221(n)+n)²²²`
-/

namespace A017336.P10057307094889031300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017221 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017336.P10057307094889031300

namespace A017336

/-- `(A017221(n)+n)²²²` -/
def P10057307094889031300.Spec : Prop :=
  ∀ n, P10057307094889031300.a n = A017336 n

theorem P10057307094889031300.correct : P10057307094889031300.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P10057307094889031300.a, A017336.P11820260960478220628.a, A017221, A017221.P17146920171309072654.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P2031876347783779747

`(n-A017449(n))²²²`
-/

namespace A017336.P2031876347783779747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017449 n) ^ 2) ^ 2) ^ 2

end

end A017336.P2031876347783779747

namespace A017336

/-- `(n-A017449(n))²²²` -/
def P2031876347783779747.Spec : Prop :=
  ∀ n, P2031876347783779747.a n = A017336 n

theorem P2031876347783779747.correct : P2031876347783779747.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P2031876347783779747.a, A017336.P11820260960478220628.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P10357022227862324518

`(A004770(n+1)+2*n)²²²`
-/

namespace A017336.P10357022227862324518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A004770 (n + 1) + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017336.P10357022227862324518

namespace A017336

/-- `(A004770(n+1)+2*n)²²²` -/
def P10357022227862324518.Spec : Prop :=
  ∀ n, P10357022227862324518.a n = A017336 n

theorem P10357022227862324518.correct : P10357022227862324518.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P10357022227862324518.a, A017336.P11820260960478220628.a, A004770, A004770.P3348596714663788795.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P14150788051136875312

`A017330(n)*A017334(n)`
-/

namespace A017336.P14150788051136875312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n * A017334 n

end

end A017336.P14150788051136875312

namespace A017336

/-- `A017330(n)*A017334(n)` -/
def P14150788051136875312.Spec : Prop :=
  ∀ n, P14150788051136875312.a n = A017336 n

theorem P14150788051136875312.correct : P14150788051136875312.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P14150788051136875312.a, A017336.P11820260960478220628.a, A017330, A017330.P10434817311625232981.a, A017334, A017334.P522530592995191774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-! ## A017336.P8667704323174057493

`A017331(n)*A017333(n)`
-/

namespace A017336.P8667704323174057493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017331 n * A017333 n

end

end A017336.P8667704323174057493

namespace A017336

/-- `A017331(n)*A017333(n)` -/
def P8667704323174057493.Spec : Prop :=
  ∀ n, P8667704323174057493.a n = A017336 n

theorem P8667704323174057493.correct : P8667704323174057493.Spec := by
  intro n
  simp only [A017336, Nat.add_sub_cancel, A017336.P8667704323174057493.a, A017336.P11820260960478220628.a, A017331, A017331.P17996871924844306037.a, A017333, A017333.P15250838761759041178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017336

/-!
# A017337: a(n) = (10*n + 5)^9.

The programs for A017337, the canonical program `A017337.P8153245751238394636` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017337 has offset 0).

The definition of A017337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+5)^9` (program `A017337.P8153245751238394636`, by `A017337.P8153245751238394636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017337.P8153245751238394636

`(10*n+5)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017337

/-- `(10*n+5)^9` -/
def P8153245751238394636.Spec : Prop :=
  ∀ n, (P8153245751238394636.a n : ℤ) = A017337 n

theorem P8153245751238394636.correct : P8153245751238394636.Spec := by
  intro n
  simp only [A017337]

end A017337

/-! ## A017337.P17605394836278483002

`sqrt(A017334(n)^3)`
-/

namespace A017337.P17605394836278483002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017334 n ^ 3 : ℝ)

end

end A017337.P17605394836278483002

namespace A017337

/-- `sqrt(A017334(n)^3)` -/
def P17605394836278483002.Spec : Prop :=
  ∀ n, P17605394836278483002.a n = (A017337 n : ℝ)

end A017337

/-! ## A017337.P8757747207600693548

`A017329(n)*A017336(n)`
-/

namespace A017337.P8757747207600693548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n * A017336 n

end

end A017337.P8757747207600693548

namespace A017337

/-- `A017329(n)*A017336(n)` -/
def P8757747207600693548.Spec : Prop :=
  ∀ n, P8757747207600693548.a n = A017337 n

theorem P8757747207600693548.correct : P8757747207600693548.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P8757747207600693548.a, A017337.P8153245751238394636.a, A017329, A017329.P13641332030280969901.a, A017336, A017336.P11820260960478220628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P17029716117336166847

`A017331(n)*A017334(n)`
-/

namespace A017337.P17029716117336166847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017331 n * A017334 n

end

end A017337.P17029716117336166847

namespace A017337

/-- `A017331(n)*A017334(n)` -/
def P17029716117336166847.Spec : Prop :=
  ∀ n, P17029716117336166847.a n = A017337 n

theorem P17029716117336166847.correct : P17029716117336166847.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P17029716117336166847.a, A017337.P8153245751238394636.a, A017331, A017331.P17996871924844306037.a, A017334, A017334.P522530592995191774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P2346867087139305751

`A017330(n)²*A017333(n)`
-/

namespace A017337.P2346867087139305751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017330 n ^ 2 * A017333 n

end

end A017337.P2346867087139305751

namespace A017337

/-- `A017330(n)²*A017333(n)` -/
def P2346867087139305751.Spec : Prop :=
  ∀ n, P2346867087139305751.a n = A017337 n

theorem P2346867087139305751.correct : P2346867087139305751.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P2346867087139305751.a, A017337.P8153245751238394636.a, A017330, A017330.P10434817311625232981.a, A017333, A017333.P15250838761759041178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P11872063467441954341

`A017330(n)²²*A017329(n)`
-/

namespace A017337.P11872063467441954341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017330 n ^ 2) ^ 2 * A017329 n

end

end A017337.P11872063467441954341

namespace A017337

/-- `A017330(n)²²*A017329(n)` -/
def P11872063467441954341.Spec : Prop :=
  ∀ n, P11872063467441954341.a n = A017337 n

theorem P11872063467441954341.correct : P11872063467441954341.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P11872063467441954341.a, A017337.P8153245751238394636.a, A017329, A017329.P13641332030280969901.a, A017330, A017330.P10434817311625232981.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P1208697704106331645

`A017332(n)²*sqrt(sqrt(A017332(n)))`
-/

namespace A017337.P1208697704106331645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017332 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017332 n : ℝ))

end

end A017337.P1208697704106331645

namespace A017337

/-- `A017332(n)²*sqrt(sqrt(A017332(n)))` -/
def P1208697704106331645.Spec : Prop :=
  ∀ n, P1208697704106331645.a n = (A017337 n : ℝ)

end A017337

/-! ## A017337.P11511811507238903577

`A017329(n)*A017332(n)*A017332(n)`
-/

namespace A017337.P11511811507238903577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n * A017332 n * A017332 n

end

end A017337.P11511811507238903577

namespace A017337

/-- `A017329(n)*A017332(n)*A017332(n)` -/
def P11511811507238903577.Spec : Prop :=
  ∀ n, P11511811507238903577.a n = A017337 n

theorem P11511811507238903577.correct : P11511811507238903577.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P11511811507238903577.a, A017337.P8153245751238394636.a, A017329, A017329.P13641332030280969901.a, A017332, A017332.P15909481897774357018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P15404438515881685470

`A016851(2*n+1)²*A016851(2*n+1)`
-/

namespace A017337.P15404438515881685470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016851 (2 * n + 1) ^ 2 * A016851 (2 * n + 1)

end

end A017337.P15404438515881685470

namespace A017337

/-- `A016851(2*n+1)²*A016851(2*n+1)` -/
def P15404438515881685470.Spec : Prop :=
  ∀ n, P15404438515881685470.a n = A017337 n

theorem P15404438515881685470.correct : P15404438515881685470.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P15404438515881685470.a, A017337.P8153245751238394636.a, A016851, A016851.P6768670708261062492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P16303751994268522606

`A016850(2*n+1)²²*A008587(2*n+1)`
-/

namespace A017337.P16303751994268522606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016850 (2 * n + 1) ^ 2) ^ 2 * A008587 (2 * n + 1)

end

end A017337.P16303751994268522606

namespace A017337

/-- `A016850(2*n+1)²²*A008587(2*n+1)` -/
def P16303751994268522606.Spec : Prop :=
  ∀ n, P16303751994268522606.a n = A017337 n

theorem P16303751994268522606.correct : P16303751994268522606.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P16303751994268522606.a, A017337.P8153245751238394636.a, A008587, A008587.P15238079008432610842.a, A016850, A016850.P11162086959237364138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-! ## A017337.P5983335116714938856

`A016850(2*n+1)²²*A008706(2*n+1)`
-/

namespace A017337.P5983335116714938856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016850 (2 * n + 1) ^ 2) ^ 2 * A008706 (2 * n + 1)

end

end A017337.P5983335116714938856

namespace A017337

/-- `A016850(2*n+1)²²*A008706(2*n+1)` -/
def P5983335116714938856.Spec : Prop :=
  ∀ n, P5983335116714938856.a n = A017337 n

end A017337

/-! ## A017337.P4210802249208777650

`A016761(A016945(n)-(n+1))`
-/

namespace A017337.P4210802249208777650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n - (n + 1 : ℤ)).toNat

end

end A017337.P4210802249208777650

namespace A017337

/-- `A016761(A016945(n)-(n+1))` -/
def P4210802249208777650.Spec : Prop :=
  ∀ n, P4210802249208777650.a n = A017337 n

end A017337

/-! ## A017337.P9870102567627617372

`A001017(5*(2*n+1))`
-/

namespace A017337.P9870102567627617372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (5 * (2 * n + 1))

end

end A017337.P9870102567627617372

namespace A017337

/-- `A001017(5*(2*n+1))` -/
def P9870102567627617372.Spec : Prop :=
  ∀ n, P9870102567627617372.a n = A017337 n

theorem P9870102567627617372.correct : P9870102567627617372.Spec := by
  intro n
  simp only [A017337, Nat.add_sub_cancel, A017337.P9870102567627617372.a, A017337.P8153245751238394636.a, A001017, A001017.P9152421289291957289.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017337

/-!
# A017338: 

The programs for A017338, there is no canonical definition to state claims against.
-/

/-! ## A017338.P9376505936806040305

`(10*n+5)^10`
-/

namespace A017338.P9376505936806040305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 5) ^ 10

end

end A017338.P9376505936806040305

/-! ## A017338.P13688245504803302687

`A017333(n)²`
-/

namespace A017338.P13688245504803302687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017333 n ^ 2

end

end A017338.P13688245504803302687

/-! ## A017338.P175773635274999096

`sqrt(A017332(n)^5)`
-/

namespace A017338.P175773635274999096
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017332 n ^ 5 : ℝ)

end

end A017338.P175773635274999096

/-! ## A017338.P16256419917629380909

`(A017330(n)²*A017329(n))²`
-/

namespace A017338.P16256419917629380909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017330 n ^ 2 * A017329 n) ^ 2

end

end A017338.P16256419917629380909

/-! ## A017338.P12832853028495638579

`sqrt(sqrt(A017336(n)))*A017336(n)`
-/

namespace A017338.P12832853028495638579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017336 n : ℝ)) * (A017336 n : ℝ)

end

end A017338.P12832853028495638579

/-! ## A017338.P14635063840628350182

`A016858(2*n+1)`
-/

namespace A017338.P14635063840628350182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016858 (2 * n + 1)

end

end A017338.P14635063840628350182

/-! ## A017338.P2885660760833084803

`A016853(2*n+1)²`
-/

namespace A017338.P2885660760833084803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016853 (2 * n + 1) ^ 2

end

end A017338.P2885660760833084803

/-! ## A017338.P4267353111731781664

`(A016850(2*n+1)²*A008587(2*n+1))²`
-/

namespace A017338.P4267353111731781664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016850 (2 * n + 1) ^ 2 * A008587 (2 * n + 1)) ^ 2

end

end A017338.P4267353111731781664

/-! ## A017338.P10772669655755055615

`A008454(5*(2*n+1))`
-/

namespace A017338.P10772669655755055615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (5 * (2 * n + 1))

end

end A017338.P10772669655755055615

/-!
# A017339: 

The programs for A017339, there is no canonical definition to state claims against.
-/

/-! ## A017339.P3837440317975005162

`(10*n+5)^11`
-/

namespace A017339.P3837440317975005162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 5) ^ 11

end

end A017339.P3837440317975005162

/-! ## A017339.P10502898845808891186

`A017333(n)*A017334(n)`
-/

namespace A017339.P10502898845808891186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017333 n * A017334 n

end

end A017339.P10502898845808891186

/-! ## A017339.P7827308530732408625

`sqrt(A017330(n)^11)`
-/

namespace A017339.P7827308530732408625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017330 n ^ 11 : ℝ)

end

end A017339.P7827308530732408625

/-! ## A017339.P1125759732099769268

`A016763(A008587(n)+2)`
-/

namespace A017339.P1125759732099769268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016763 (A008587 n + 2).toNat

end

end A017339.P1125759732099769268

/-! ## A017339.P13797903543791941746

`A008455(5*(2*n+1))`
-/

namespace A017339.P13797903543791941746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (5 * (2 * n + 1))

end

end A017339.P13797903543791941746

/-! ## A017339.P17799535967803618547

`A008454(A017329(n))*A017329(n)`
-/

namespace A017339.P17799535967803618547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017329 n).toNat * A017329 n

end

end A017339.P17799535967803618547

/-! ## A017339.P2267971625381310732

`A008454(A008587(2*n+1))*A008587(2*n+1)`
-/

namespace A017339.P2267971625381310732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008587 (2 * n + 1)).toNat * A008587 (2 * n + 1)

end

end A017339.P2267971625381310732

/-!
# A017340: 

The programs for A017340, there is no canonical definition to state claims against.
-/

/-! ## A017340.P5436829872124700757

`(10*n+5)^12`
-/

namespace A017340.P5436829872124700757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 5) ^ 12

end

end A017340.P5436829872124700757

/-! ## A017340.P12287859245766481992

`A017334(n)²`
-/

namespace A017340.P12287859245766481992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017334 n ^ 2

end

end A017340.P12287859245766481992

/-! ## A017340.P13052663122816194907

`sqrt(A017336(n))*A017336(n)`
-/

namespace A017340.P13052663122816194907
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017336 n : ℝ) * (A017336 n : ℝ)

end

end A017340.P13052663122816194907

/-! ## A017340.P9114247659055908703

`(A017329(n)*A017330(n))²²`
-/

namespace A017340.P9114247659055908703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017329 n * A017330 n) ^ 2) ^ 2

end

end A017340.P9114247659055908703

/-! ## A017340.P7466293230381257086

`A016854(2*n+1)²`
-/

namespace A017340.P7466293230381257086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016854 (2 * n + 1) ^ 2

end

end A017340.P7466293230381257086

/-! ## A017340.P9699422397482946277

`A016851(2*n+1)²²`
-/

namespace A017340.P9699422397482946277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016851 (2 * n + 1) ^ 2) ^ 2

end

end A017340.P9699422397482946277

/-! ## A017340.P4786835299754423821

`sqrt(A017336(n)^3)`
-/

namespace A017340.P4786835299754423821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017336 n ^ 3 : ℝ)

end

end A017340.P4786835299754423821

/-! ## A017340.P8914944150413736854

`A000578(A017305(n)+2)²²`
-/

namespace A017340.P8914944150413736854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017305 n + 2).toNat ^ 2) ^ 2

end

end A017340.P8914944150413736854

/-! ## A017340.P8014067585069952700

`A000578(A017341(n)-1)²²`
-/

namespace A017340.P8014067585069952700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017341 n - 1).toNat ^ 2) ^ 2

end

end A017340.P8014067585069952700

/-! ## A017340.P6777764106660789472

`A000578(A017353(n)-2)²²`
-/

namespace A017340.P6777764106660789472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017353 n - 2).toNat ^ 2) ^ 2

end

end A017340.P6777764106660789472

/-! ## A017340.P6488977692853658960

`A000578(A017221(n)+n)²²`
-/

namespace A017340.P6488977692853658960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017221 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017340.P6488977692853658960

/-!
# A017341: a(n) = 10*n + 6.

The programs for A017341, the canonical program `A017341.P14977180853961305525` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017341 has offset 0).

The definition of A017341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+6` (program `A017341.P14977180853961305525`, by `A017341.P14977180853961305525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017341.P14977180853961305525

`10*n+6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017341

/-- `10*n+6` -/
def P14977180853961305525.Spec : Prop :=
  ∀ n, (P14977180853961305525.a n : ℤ) = A017341 n

theorem P14977180853961305525.correct : P14977180853961305525.Spec := by
  intro n
  simp only [A017341]

end A017341

/-!
# A017342: a(n) = (10*n + 6)^2.

The programs for A017342, the canonical program `A017342.P11433131424691020703` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017342 has offset 0).

The definition of A017342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)²` (program `A017342.P11433131424691020703`, by `A017342.P11433131424691020703.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017342.P11433131424691020703

`(10*n+6)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017342

/-- `(10*n+6)²` -/
def P11433131424691020703.Spec : Prop :=
  ∀ n, (P11433131424691020703.a n : ℤ) = A017342 n

theorem P11433131424691020703.correct : P11433131424691020703.Spec := by
  intro n
  simp only [A017342]

end A017342

/-! ## A017342.P8822995065187662792

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=36, a(1)=256, a(2)=676`
-/

namespace A017342.P8822995065187662792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36, 256, 676] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017342.P8822995065187662792

namespace A017342

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8822995065187662792.Spec : Prop :=
  ∀ n, P8822995065187662792.a n = A017342 n

theorem P8822995065187662792.correct : P8822995065187662792.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017342, Nat.add_sub_cancel, A017342.P8822995065187662792.a, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017342, Nat.add_sub_cancel, A017342.P8822995065187662792.a, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017342

/-! ## A017342.P8584769529068278440

`4*A016886(n)`
-/

namespace A017342.P8584769529068278440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016886 n

end

end A017342.P8584769529068278440

namespace A017342

/-- `4*A016886(n)` -/
def P8584769529068278440.Spec : Prop :=
  ∀ n, P8584769529068278440.a n = A017342 n

theorem P8584769529068278440.correct : P8584769529068278440.Spec := by
  intro n
  simp only [A017342, Nat.add_sub_cancel, A017342.P8584769529068278440.a, A017342.P11433131424691020703.a, A016886, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017342

/-! ## A017342.P8168111295742792477

`A016862(2*n+1)`
-/

namespace A017342.P8168111295742792477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n + 1)

end

end A017342.P8168111295742792477

namespace A017342

/-- `A016862(2*n+1)` -/
def P8168111295742792477.Spec : Prop :=
  ∀ n, P8168111295742792477.a n = A017342 n

theorem P8168111295742792477.correct : P8168111295742792477.Spec := by
  intro n
  simp only [A017342, Nat.add_sub_cancel, A017342.P8168111295742792477.a, A017342.P11433131424691020703.a, A016862, A016862.P4720776691186821444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017342

/-! ## A017342.P11141102888450025918

`A000290(A017341(n))`
-/

namespace A017342.P11141102888450025918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A017341 n).toNat

end

end A017342.P11141102888450025918

namespace A017342

/-- `A000290(A017341(n))` -/
def P11141102888450025918.Spec : Prop :=
  ∀ n, P11141102888450025918.a n = A017342 n

end A017342

/-! ## A017342.P15971735294807327315

`4*lt[lcm(5, 3-n), n]²`
-/

namespace A017342.P15971735294807327315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (3 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A017342.P15971735294807327315

namespace A017342

/-- `4*lt[lcm(5, 3-n), n]²` -/
def P15971735294807327315.Spec : Prop :=
  ∀ n, (P15971735294807327315.a n : ℤ) = A017342 n

end A017342

/-! ## A017342.P14020488513463936492

`4*(5*∑[ogf((1+9x)/(1-2x+x^2))]+4)`
-/

namespace A017342.P14020488513463936492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (5 * (∑ j ∈ Finset.range (n + 1), f1 j) + 4)

end

end A017342.P14020488513463936492

namespace A017342

/-- `4*(5*∑[ogf((1+9x)/(1-2x+x^2))]+4)` -/
def P14020488513463936492.Spec : Prop :=
  ∀ n, P14020488513463936492.a n = A017342 n

end A017342

/-! ## A017342.P13226756851385045149

`sqrt(A017344(n))`
-/

namespace A017342.P13226756851385045149
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017344 n : ℝ)

end

end A017342.P13226756851385045149

namespace A017342

/-- `sqrt(A017344(n))` -/
def P13226756851385045149.Spec : Prop :=
  ∀ n, P13226756851385045149.a n = (A017342 n : ℝ)

end A017342

/-! ## A017342.P9150952178752900416

`sqrt(sqrt(A017348(n)))`
-/

namespace A017342.P9150952178752900416
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017348 n : ℝ))

end

end A017342.P9150952178752900416

namespace A017342

/-- `sqrt(sqrt(A017348(n)))` -/
def P9150952178752900416.Spec : Prop :=
  ∀ n, P9150952178752900416.a n = (A017342 n : ℝ)

end A017342

/-! ## A017342.P11896964780959460936

`4*A016885(n)²`
-/

namespace A017342.P11896964780959460936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016885 n ^ 2

end

end A017342.P11896964780959460936

namespace A017342

/-- `4*A016885(n)²` -/
def P11896964780959460936.Spec : Prop :=
  ∀ n, P11896964780959460936.a n = A017342 n

theorem P11896964780959460936.correct : P11896964780959460936.Spec := by
  intro n
  simp only [A017342, Nat.add_sub_cancel, A017342.P11896964780959460936.a, A017342.P11433131424691020703.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017342

/-! ## A017342.P13781713700480446759

`4*sqrt(A016888(n))`
-/

namespace A017342.P13781713700480446759
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016888 n : ℝ)

end

end A017342.P13781713700480446759

namespace A017342

/-- `4*sqrt(A016888(n))` -/
def P13781713700480446759.Spec : Prop :=
  ∀ n, P13781713700480446759.a n = (A017342 n : ℝ)

end A017342

/-! ## A017342.P10232472629948879456

`A017346(n)^(1/3)`
-/

namespace A017342.P10232472629948879456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017346 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017342.P10232472629948879456

namespace A017342

/-- `A017346(n)^(1/3)` -/
def P10232472629948879456.Spec : Prop :=
  ∀ n, P10232472629948879456.a n = (A017342 n : ℝ)

end A017342

/-! ## A017342.P1533748289050888824

`A017343(n)^(2/3)`
-/

namespace A017342.P1533748289050888824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017343 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017342.P1533748289050888824

namespace A017342

/-- `A017343(n)^(2/3)` -/
def P1533748289050888824.Spec : Prop :=
  ∀ n, P1533748289050888824.a n = (A017342 n : ℝ)

end A017342

/-! ## A017342.P17607182746707545458

`4*(n-A016945(n))²`
-/

namespace A017342.P17607182746707545458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℤ) - A016945 n) ^ 2

end

end A017342.P17607182746707545458

namespace A017342

/-- `4*(n-A016945(n))²` -/
def P17607182746707545458.Spec : Prop :=
  ∀ n, P17607182746707545458.a n = A017342 n

theorem P17607182746707545458.correct : P17607182746707545458.Spec := by
  intro n
  simp only [A017342, Nat.add_sub_cancel, A017342.P17607182746707545458.a, A017342.P11433131424691020703.a, A016945, A016945.P12463160785118576711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017342

/-! ## A017342.P13372702297981677971

`A290781(n)+A152161(n)`
-/

namespace A017342.P13372702297981677971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290781 n + A152161 n

end

end A017342.P13372702297981677971

namespace A017342

/-- `A290781(n)+A152161(n)` -/
def P13372702297981677971.Spec : Prop :=
  ∀ n, P13372702297981677971.a n = A017342 n

theorem P13372702297981677971.correct : P13372702297981677971.Spec := by
  intro n
  simp only [A017342, Nat.add_sub_cancel, A017342.P13372702297981677971.a, A017342.P11433131424691020703.a, A152161, A152161.P9122304770913121613.a, A290781, A290781.P16709635685453272756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017342

/-! ## A017342.P18355508122587763678

`A017343(n)/A017341(n)`
-/

namespace A017342.P18355508122587763678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017343 n : ℚ) / (A017341 n : ℚ)

end

end A017342.P18355508122587763678

namespace A017342

/-- `A017343(n)/A017341(n)` -/
def P18355508122587763678.Spec : Prop :=
  ∀ n, P18355508122587763678.a n = (A017342 n : ℚ)

end A017342

/-! ## A017342.P16374598046954741633

`A017345(n)/A017343(n)`
-/

namespace A017342.P16374598046954741633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017345 n : ℚ) / (A017343 n : ℚ)

end

end A017342.P16374598046954741633

namespace A017342

/-- `A017345(n)/A017343(n)` -/
def P16374598046954741633.Spec : Prop :=
  ∀ n, P16374598046954741633.a n = (A017342 n : ℚ)

end A017342

/-! ## A017342.P15535300274105024621

`A017346(n)/A017344(n)`
-/

namespace A017342.P15535300274105024621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017346 n : ℚ) / (A017344 n : ℚ)

end

end A017342.P15535300274105024621

namespace A017342

/-- `A017346(n)/A017344(n)` -/
def P15535300274105024621.Spec : Prop :=
  ∀ n, P15535300274105024621.a n = (A017342 n : ℚ)

end A017342

/-! ## A017342.P5542826672821560233

`A017343(n)²/A017344(n)`
-/

namespace A017342.P5542826672821560233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017343 n ^ 2 : ℚ) / (A017344 n : ℚ)

end

end A017342.P5542826672821560233

namespace A017342

/-- `A017343(n)²/A017344(n)` -/
def P5542826672821560233.Spec : Prop :=
  ∀ n, P5542826672821560233.a n = (A017342 n : ℚ)

end A017342

/-! ## A017342.P3796669957157140595

`A016885(n)*A305074(n+1)`
-/

namespace A017342.P3796669957157140595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n * A305074 (n + 1)

end

end A017342.P3796669957157140595

namespace A017342

/-- `A016885(n)*A305074(n+1)` -/
def P3796669957157140595.Spec : Prop :=
  ∀ n, P3796669957157140595.a n = A017342 n

theorem P3796669957157140595.correct : P3796669957157140595.Spec := by
  intro n
  simp only [A017342, Nat.add_sub_cancel, A017342.P3796669957157140595.a, A017342.P11433131424691020703.a, A016885, A016885.P12442016633976001399.a, A305074, A305074.P9440456111715766458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017342

/-!
# A017343: a(n) = (10*n + 6)^3.

The programs for A017343, the canonical program `A017343.P9364266596751166510` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017343 has offset 0).

The definition of A017343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^3` (program `A017343.P9364266596751166510`, by `A017343.P9364266596751166510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017343.P9364266596751166510

`(10*n+6)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017343

/-- `(10*n+6)^3` -/
def P9364266596751166510.Spec : Prop :=
  ∀ n, (P9364266596751166510.a n : ℤ) = A017343 n

theorem P9364266596751166510.correct : P9364266596751166510.Spec := by
  intro n
  simp only [A017343]

end A017343

/-! ## A017343.P5012115085291398687

`A000578(A017341(n))`
-/

namespace A017343.P5012115085291398687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017341 n).toNat

end

end A017343.P5012115085291398687

namespace A017343

/-- `A000578(A017341(n))` -/
def P5012115085291398687.Spec : Prop :=
  ∀ n, P5012115085291398687.a n = A017343 n

end A017343

/-! ## A017343.P9460158278620981744

`sqrt(A017346(n))`
-/

namespace A017343.P9460158278620981744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017346 n : ℝ)

end

end A017343.P9460158278620981744

namespace A017343

/-- `sqrt(A017346(n))` -/
def P9460158278620981744.Spec : Prop :=
  ∀ n, P9460158278620981744.a n = (A017343 n : ℝ)

end A017343

/-! ## A017343.P10612448823610470832

`8*A016887(n)`
-/

namespace A017343.P10612448823610470832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016887 n

end

end A017343.P10612448823610470832

namespace A017343

/-- `8*A016887(n)` -/
def P10612448823610470832.Spec : Prop :=
  ∀ n, P10612448823610470832.a n = A017343 n

theorem P10612448823610470832.correct : P10612448823610470832.Spec := by
  intro n
  simp only [A017343, Nat.add_sub_cancel, A017343.P10612448823610470832.a, A017343.P9364266596751166510.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017343

/-! ## A017343.P14267392820530901684

`sqrt(A017342(n)^3)`
-/

namespace A017343.P14267392820530901684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017342 n ^ 3 : ℝ)

end

end A017343.P14267392820530901684

namespace A017343

/-- `sqrt(A017342(n)^3)` -/
def P14267392820530901684.Spec : Prop :=
  ∀ n, P14267392820530901684.a n = (A017343 n : ℝ)

end A017343

/-! ## A017343.P3283476293227640195

`A017341(n)*A017342(n)`
-/

namespace A017343.P3283476293227640195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n * A017342 n

end

end A017343.P3283476293227640195

namespace A017343

/-- `A017341(n)*A017342(n)` -/
def P3283476293227640195.Spec : Prop :=
  ∀ n, P3283476293227640195.a n = A017343 n

theorem P3283476293227640195.correct : P3283476293227640195.Spec := by
  intro n
  simp only [A017343, Nat.add_sub_cancel, A017343.P3283476293227640195.a, A017343.P9364266596751166510.a, A017341, A017341.P14977180853961305525.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017343

/-! ## A017343.P14240395776671777319

`A017344(n)/A017341(n)`
-/

namespace A017343.P14240395776671777319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017344 n : ℚ) / (A017341 n : ℚ)

end

end A017343.P14240395776671777319

namespace A017343

/-- `A017344(n)/A017341(n)` -/
def P14240395776671777319.Spec : Prop :=
  ∀ n, P14240395776671777319.a n = (A017343 n : ℚ)

end A017343

/-! ## A017343.P16604715713587925680

`A017345(n)/A017342(n)`
-/

namespace A017343.P16604715713587925680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017345 n : ℚ) / (A017342 n : ℚ)

end

end A017343.P16604715713587925680

namespace A017343

/-- `A017345(n)/A017342(n)` -/
def P16604715713587925680.Spec : Prop :=
  ∀ n, P16604715713587925680.a n = (A017343 n : ℚ)

end A017343

/-! ## A017343.P1552500674402532433

`A017345(n)/A017341(n)²`
-/

namespace A017343.P1552500674402532433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017345 n : ℚ) / (A017341 n ^ 2 : ℚ)

end

end A017343.P1552500674402532433

namespace A017343

/-- `A017345(n)/A017341(n)²` -/
def P1552500674402532433.Spec : Prop :=
  ∀ n, P1552500674402532433.a n = (A017343 n : ℚ)

end A017343

/-! ## A017343.P17072985978721659979

`(A017353(n)-1)*A017342(n)`
-/

namespace A017343.P17072985978721659979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n - 1) * A017342 n

end

end A017343.P17072985978721659979

namespace A017343

/-- `(A017353(n)-1)*A017342(n)` -/
def P17072985978721659979.Spec : Prop :=
  ∀ n, P17072985978721659979.a n = A017343 n

theorem P17072985978721659979.correct : P17072985978721659979.Spec := by
  intro n
  simp only [A017343, Nat.add_sub_cancel, A017343.P17072985978721659979.a, A017343.P9364266596751166510.a, A017342, A017342.P11433131424691020703.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017343

/-! ## A017343.P11278034023136891943

`A017347(n)/A017341(n)²²`
-/

namespace A017343.P11278034023136891943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017347 n : ℚ) / ((A017341 n ^ 2) ^ 2 : ℚ)

end

end A017343.P11278034023136891943

namespace A017343

/-- `A017347(n)/A017341(n)²²` -/
def P11278034023136891943.Spec : Prop :=
  ∀ n, P11278034023136891943.a n = (A017343 n : ℚ)

end A017343

/-! ## A017343.P5221945655966302930

`A017346(n)/(A017341(n)²*A017341(n))`
-/

namespace A017343.P5221945655966302930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017346 n : ℚ) / (A017341 n ^ 2 * A017341 n : ℚ)

end

end A017343.P5221945655966302930

namespace A017343

/-- `A017346(n)/(A017341(n)²*A017341(n))` -/
def P5221945655966302930.Spec : Prop :=
  ∀ n, P5221945655966302930.a n = (A017343 n : ℚ)

end A017343

/-! ## A017343.P2914976134368409699

`A016863(Δ[n²])`
-/

namespace A017343.P2914976134368409699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017343.P2914976134368409699

namespace A017343

/-- `A016863(Δ[n²])` -/
def P2914976134368409699.Spec : Prop :=
  ∀ n, P2914976134368409699.a n = A017343 n

end A017343

/-! ## A017343.P5765560019741598886

`sqrt(A016866(2*n+1))`
-/

namespace A017343.P5765560019741598886
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016866 (2 * n + 1) : ℝ)

end

end A017343.P5765560019741598886

namespace A017343

/-- `sqrt(A016866(2*n+1))` -/
def P5765560019741598886.Spec : Prop :=
  ∀ n, P5765560019741598886.a n = (A017343 n : ℝ)

end A017343

/-! ## A017343.P960482910408252968

`sqrt(A272914(2*(n+1)))`
-/

namespace A017343.P960482910408252968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A272914 (2 * (n + 1)) : ℝ)

end

end A017343.P960482910408252968

namespace A017343

/-- `sqrt(A272914(2*(n+1)))` -/
def P960482910408252968.Spec : Prop :=
  ∀ n, P960482910408252968.a n = (A017343 n : ℝ)

end A017343

/-! ## A017343.P11684628303676796430

`A017295(2*n+1)/8`
-/

namespace A017343.P11684628303676796430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017295 (2 * n + 1) : ℚ) / 8

end

end A017343.P11684628303676796430

namespace A017343

/-- `A017295(2*n+1)/8` -/
def P11684628303676796430.Spec : Prop :=
  ∀ n, P11684628303676796430.a n = (A017343 n : ℚ)

theorem P11684628303676796430.correct : P11684628303676796430.Spec := by
  intro n
  simp only [A017343, Nat.add_sub_cancel, A017343.P11684628303676796430.a, A017343.P9364266596751166510.a, A017295, A017295.P1533593726141428041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017343

/-! ## A017343.P1749648399963609818

`lcm(2, A016863(2*n+1))`
-/

namespace A017343.P1749648399963609818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016863 (2 * n + 1))

end

end A017343.P1749648399963609818

namespace A017343

/-- `lcm(2, A016863(2*n+1))` -/
def P1749648399963609818.Spec : Prop :=
  ∀ n, (P1749648399963609818.a n : ℤ) = A017343 n

end A017343

/-! ## A017343.P4845525901538756931

`A016864(2*n+1)/(10*n+6)`
-/

namespace A017343.P4845525901538756931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 (2 * n + 1) : ℚ) / (10 * n + 6 : ℚ)

end

end A017343.P4845525901538756931

namespace A017343

/-- `A016864(2*n+1)/(10*n+6)` -/
def P4845525901538756931.Spec : Prop :=
  ∀ n, P4845525901538756931.a n = (A017343 n : ℚ)

theorem P4845525901538756931.correct : P4845525901538756931.Spec := by
  intro n
  simp only [A017343, Nat.add_sub_cancel, A017343.P4845525901538756931.a, A017343.P9364266596751166510.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017343

/-! ## A017343.P13434622262631373324

`A016861(2*n+1)*A017342(n)`
-/

namespace A017343.P13434622262631373324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * n + 1) * A017342 n

end

end A017343.P13434622262631373324

namespace A017343

/-- `A016861(2*n+1)*A017342(n)` -/
def P13434622262631373324.Spec : Prop :=
  ∀ n, P13434622262631373324.a n = A017343 n

theorem P13434622262631373324.correct : P13434622262631373324.Spec := by
  intro n
  simp only [A017343, Nat.add_sub_cancel, A017343.P13434622262631373324.a, A017343.P9364266596751166510.a, A016861, A016861.P12760207785627616280.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017343

/-!
# A017344: a(n) = (10*n + 6)^4.

The programs for A017344, the canonical program `A017344.P17777024052064702776` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017344 has offset 0).

The definition of A017344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^4` (program `A017344.P17777024052064702776`, by `A017344.P17777024052064702776.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017344.P17777024052064702776

`(10*n+6)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017344

/-- `(10*n+6)^4` -/
def P17777024052064702776.Spec : Prop :=
  ∀ n, (P17777024052064702776.a n : ℤ) = A017344 n

theorem P17777024052064702776.correct : P17777024052064702776.Spec := by
  intro n
  simp only [A017344]

end A017344

/-! ## A017344.P688830418003106334

`A017342(n)²`
-/

namespace A017344.P688830418003106334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n ^ 2

end

end A017344.P688830418003106334

namespace A017344

/-- `A017342(n)²` -/
def P688830418003106334.Spec : Prop :=
  ∀ n, P688830418003106334.a n = A017344 n

theorem P688830418003106334.correct : P688830418003106334.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P688830418003106334.a, A017344.P17777024052064702776.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P5791257822928978718

`16*A016888(n)`
-/

namespace A017344.P5791257822928978718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016888 n

end

end A017344.P5791257822928978718

namespace A017344

/-- `16*A016888(n)` -/
def P5791257822928978718.Spec : Prop :=
  ∀ n, P5791257822928978718.a n = A017344 n

theorem P5791257822928978718.correct : P5791257822928978718.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P5791257822928978718.a, A017344.P17777024052064702776.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P11566143934511447113

`A016864(2*n+1)`
-/

namespace A017344.P11566143934511447113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 (2 * n + 1)

end

end A017344.P11566143934511447113

namespace A017344

/-- `A016864(2*n+1)` -/
def P11566143934511447113.Spec : Prop :=
  ∀ n, P11566143934511447113.a n = A017344 n

theorem P11566143934511447113.correct : P11566143934511447113.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P11566143934511447113.a, A017344.P17777024052064702776.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P334273422283340387

`xor(1, -(10*n+5))²²`
-/

namespace A017344.P334273422283340387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (-(10 * n + 5 : ℤ)) ^ 2) ^ 2

end

end A017344.P334273422283340387

namespace A017344

/-- `xor(1, -(10*n+5))²²` -/
def P334273422283340387.Spec : Prop :=
  ∀ n, P334273422283340387.a n = A017344 n

end A017344

/-! ## A017344.P1003258588423453210

`∩[2*n, a(n-1)+5]²²` with `a(0)=1`
-/

namespace A017344.P1003258588423453210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017344.P1003258588423453210

namespace A017344

/-- `∩[2*n, a(n-1)+5]²²` -/
def P1003258588423453210.Spec : Prop :=
  ∀ n, (P1003258588423453210.a n : ℤ) = A017344 n

end A017344

/-! ## A017344.P10920125057333088676

`Δ[lcm(n, n+1)+(2*n)²]²²`
-/

namespace A017344.P10920125057333088676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017344.P10920125057333088676

namespace A017344

/-- `Δ[lcm(n, n+1)+(2*n)²]²²` -/
def P10920125057333088676.Spec : Prop :=
  ∀ n, P10920125057333088676.a n = A017344 n

end A017344

/-! ## A017344.P10903218578086711072

`(2*(lcm(2, 2*n+1)+n+1))²²`
-/

namespace A017344.P10903218578086711072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.lcm 2 (2 * n + 1) + (n + 1))) ^ 2) ^ 2

end

end A017344.P10903218578086711072

namespace A017344

/-- `(2*(lcm(2, 2*n+1)+n+1))²²` -/
def P10903218578086711072.Spec : Prop :=
  ∀ n, (P10903218578086711072.a n : ℤ) = A017344 n

end A017344

/-! ## A017344.P3001875753772762431

`sqrt(A017348(n))`
-/

namespace A017344.P3001875753772762431
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017348 n : ℝ)

end

end A017344.P3001875753772762431

namespace A017344

/-- `sqrt(A017348(n))` -/
def P3001875753772762431.Spec : Prop :=
  ∀ n, P3001875753772762431.a n = (A017344 n : ℝ)

end A017344

/-! ## A017344.P17464368312034849908

`A017341(n)²²`
-/

namespace A017344.P17464368312034849908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n ^ 2) ^ 2

end

end A017344.P17464368312034849908

namespace A017344

/-- `A017341(n)²²` -/
def P17464368312034849908.Spec : Prop :=
  ∀ n, P17464368312034849908.a n = A017344 n

theorem P17464368312034849908.correct : P17464368312034849908.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P17464368312034849908.a, A017344.P17777024052064702776.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P5326628079212222744

`(4*A016886(n))²`
-/

namespace A017344.P5326628079212222744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016886 n) ^ 2

end

end A017344.P5326628079212222744

namespace A017344

/-- `(4*A016886(n))²` -/
def P5326628079212222744.Spec : Prop :=
  ∀ n, P5326628079212222744.a n = A017344 n

theorem P5326628079212222744.correct : P5326628079212222744.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P5326628079212222744.a, A017344.P17777024052064702776.a, A016886, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P9827621390011465065

`(A017329(n)+1)²²`
-/

namespace A017344.P9827621390011465065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017329 n + 1) ^ 2) ^ 2

end

end A017344.P9827621390011465065

namespace A017344

/-- `(A017329(n)+1)²²` -/
def P9827621390011465065.Spec : Prop :=
  ∀ n, P9827621390011465065.a n = A017344 n

theorem P9827621390011465065.correct : P9827621390011465065.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P9827621390011465065.a, A017344.P17777024052064702776.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P3709286071269217760

`(A017317(n)+2)²²`
-/

namespace A017344.P3709286071269217760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017317 n + 2) ^ 2) ^ 2

end

end A017344.P3709286071269217760

namespace A017344

/-- `(A017317(n)+2)²²` -/
def P3709286071269217760.Spec : Prop :=
  ∀ n, P3709286071269217760.a n = A017344 n

theorem P3709286071269217760.correct : P3709286071269217760.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P3709286071269217760.a, A017344.P17777024052064702776.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P9914045544059578087

`(1-A017353(n))²²`
-/

namespace A017344.P9914045544059578087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017353 n) ^ 2) ^ 2

end

end A017344.P9914045544059578087

namespace A017344

/-- `(1-A017353(n))²²` -/
def P9914045544059578087.Spec : Prop :=
  ∀ n, P9914045544059578087.a n = A017344 n

theorem P9914045544059578087.correct : P9914045544059578087.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P9914045544059578087.a, A017344.P17777024052064702776.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P12982227613519330792

`(A017305(n)+3)²²`
-/

namespace A017344.P12982227613519330792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017305 n + 3) ^ 2) ^ 2

end

end A017344.P12982227613519330792

namespace A017344

/-- `(A017305(n)+3)²²` -/
def P12982227613519330792.Spec : Prop :=
  ∀ n, P12982227613519330792.a n = A017344 n

theorem P12982227613519330792.correct : P12982227613519330792.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P12982227613519330792.a, A017344.P17777024052064702776.a, A017305, A017305.P18400868229800390008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P5907479852845660287

`(2-A017365(n))²²`
-/

namespace A017344.P5907479852845660287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017365 n) ^ 2) ^ 2

end

end A017344.P5907479852845660287

namespace A017344

/-- `(2-A017365(n))²²` -/
def P5907479852845660287.Spec : Prop :=
  ∀ n, P5907479852845660287.a n = A017344 n

theorem P5907479852845660287.correct : P5907479852845660287.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P5907479852845660287.a, A017344.P17777024052064702776.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P12009812898067438035

`(2*A016885(n))²²`
-/

namespace A017344.P12009812898067438035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016885 n) ^ 2) ^ 2

end

end A017344.P12009812898067438035

namespace A017344

/-- `(2*A016885(n))²²` -/
def P12009812898067438035.Spec : Prop :=
  ∀ n, P12009812898067438035.a n = A017344 n

theorem P12009812898067438035.correct : P12009812898067438035.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P12009812898067438035.a, A017344.P17777024052064702776.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P17711570503399753060

`(3-A017377(n))²²`
-/

namespace A017344.P17711570503399753060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 - A017377 n) ^ 2) ^ 2

end

end A017344.P17711570503399753060

namespace A017344

/-- `(3-A017377(n))²²` -/
def P17711570503399753060.Spec : Prop :=
  ∀ n, P17711570503399753060.a n = A017344 n

theorem P17711570503399753060.correct : P17711570503399753060.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P17711570503399753060.a, A017344.P17777024052064702776.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P12852970793650385127

`(A017233(n)+n)²²`
-/

namespace A017344.P12852970793650385127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017233 n + (n : ℤ)) ^ 2) ^ 2

end

end A017344.P12852970793650385127

namespace A017344

/-- `(A017233(n)+n)²²` -/
def P12852970793650385127.Spec : Prop :=
  ∀ n, P12852970793650385127.a n = A017344 n

theorem P12852970793650385127.correct : P12852970793650385127.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P12852970793650385127.a, A017344.P17777024052064702776.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-! ## A017344.P1535271433382954685

`(n-A017461(n))²²`
-/

namespace A017344.P1535271433382954685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017461 n) ^ 2) ^ 2

end

end A017344.P1535271433382954685

namespace A017344

/-- `(n-A017461(n))²²` -/
def P1535271433382954685.Spec : Prop :=
  ∀ n, P1535271433382954685.a n = A017344 n

theorem P1535271433382954685.correct : P1535271433382954685.Spec := by
  intro n
  simp only [A017344, Nat.add_sub_cancel, A017344.P1535271433382954685.a, A017344.P17777024052064702776.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017344

/-!
# A017345: a(n) = (10*n + 6)^5.

The programs for A017345, the canonical program `A017345.P9412131434236632439` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017345 has offset 0).

The definition of A017345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^5` (program `A017345.P9412131434236632439`, by `A017345.P9412131434236632439.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017345.P9412131434236632439

`(10*n+6)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017345

/-- `(10*n+6)^5` -/
def P9412131434236632439.Spec : Prop :=
  ∀ n, (P9412131434236632439.a n : ℤ) = A017345 n

theorem P9412131434236632439.correct : P9412131434236632439.Spec := by
  intro n
  simp only [A017345]

end A017345

/-! ## A017345.P5407486320149558448

`sqrt(A017342(n)^5)`
-/

namespace A017345.P5407486320149558448
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017342 n ^ 5 : ℝ)

end

end A017345.P5407486320149558448

namespace A017345

/-- `sqrt(A017342(n)^5)` -/
def P5407486320149558448.Spec : Prop :=
  ∀ n, P5407486320149558448.a n = (A017345 n : ℝ)

end A017345

/-! ## A017345.P279854180266922219

`(10*n+6)*A017344(n)`
-/

namespace A017345.P279854180266922219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 6 : ℤ) * A017344 n

end

end A017345.P279854180266922219

namespace A017345

/-- `(10*n+6)*A017344(n)` -/
def P279854180266922219.Spec : Prop :=
  ∀ n, P279854180266922219.a n = A017345 n

theorem P279854180266922219.correct : P279854180266922219.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P279854180266922219.a, A017345.P9412131434236632439.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P12245522320542080568

`A017343(n)*(10*n+6)²`
-/

namespace A017345.P12245522320542080568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n * ((10 * n + 6) ^ 2 : ℤ)

end

end A017345.P12245522320542080568

namespace A017345

/-- `A017343(n)*(10*n+6)²` -/
def P12245522320542080568.Spec : Prop :=
  ∀ n, P12245522320542080568.a n = A017345 n

theorem P12245522320542080568.correct : P12245522320542080568.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P12245522320542080568.a, A017345.P9412131434236632439.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P9316248396637510391

`A017342(n)*A017343(n)`
-/

namespace A017345.P9316248396637510391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n * A017343 n

end

end A017345.P9316248396637510391

namespace A017345

/-- `A017342(n)*A017343(n)` -/
def P9316248396637510391.Spec : Prop :=
  ∀ n, P9316248396637510391.a n = A017345 n

theorem P9316248396637510391.correct : P9316248396637510391.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P9316248396637510391.a, A017345.P9412131434236632439.a, A017342, A017342.P11433131424691020703.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P17711198510642168528

`A017346(n)/A017341(n)`
-/

namespace A017345.P17711198510642168528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017346 n : ℚ) / (A017341 n : ℚ)

end

end A017345.P17711198510642168528

namespace A017345

/-- `A017346(n)/A017341(n)` -/
def P17711198510642168528.Spec : Prop :=
  ∀ n, P17711198510642168528.a n = (A017345 n : ℚ)

end A017345

/-! ## A017345.P5616647225740140300

`A017341(n)²*A017343(n)`
-/

namespace A017345.P5616647225740140300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n ^ 2 * A017343 n

end

end A017345.P5616647225740140300

namespace A017345

/-- `A017341(n)²*A017343(n)` -/
def P5616647225740140300.Spec : Prop :=
  ∀ n, P5616647225740140300.a n = A017345 n

theorem P5616647225740140300.correct : P5616647225740140300.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P5616647225740140300.a, A017345.P9412131434236632439.a, A017341, A017341.P14977180853961305525.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P16279706456000730624

`A017342(n)²*A017341(n)`
-/

namespace A017345.P16279706456000730624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n ^ 2 * A017341 n

end

end A017345.P16279706456000730624

namespace A017345

/-- `A017342(n)²*A017341(n)` -/
def P16279706456000730624.Spec : Prop :=
  ∀ n, P16279706456000730624.a n = A017345 n

theorem P16279706456000730624.correct : P16279706456000730624.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P16279706456000730624.a, A017345.P9412131434236632439.a, A017341, A017341.P14977180853961305525.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P18162813170777813811

`A017344(n)²/A017343(n)`
-/

namespace A017345.P18162813170777813811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017344 n ^ 2 : ℚ) / (A017343 n : ℚ)

end

end A017345.P18162813170777813811

namespace A017345

/-- `A017344(n)²/A017343(n)` -/
def P18162813170777813811.Spec : Prop :=
  ∀ n, P18162813170777813811.a n = (A017345 n : ℚ)

end A017345

/-! ## A017345.P1122097294159826126

`A017347(n)/A017341(n)²`
-/

namespace A017345.P1122097294159826126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017347 n : ℚ) / (A017341 n ^ 2 : ℚ)

end

end A017345.P1122097294159826126

namespace A017345

/-- `A017347(n)/A017341(n)²` -/
def P1122097294159826126.Spec : Prop :=
  ∀ n, P1122097294159826126.a n = (A017345 n : ℚ)

end A017345

/-! ## A017345.P9576070733042668498

`(A017353(n)-1)*A017342(n)²`
-/

namespace A017345.P9576070733042668498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n - 1) * A017342 n ^ 2

end

end A017345.P9576070733042668498

namespace A017345

/-- `(A017353(n)-1)*A017342(n)²` -/
def P9576070733042668498.Spec : Prop :=
  ∀ n, P9576070733042668498.a n = A017345 n

theorem P9576070733042668498.correct : P9576070733042668498.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P9576070733042668498.a, A017345.P9412131434236632439.a, A017342, A017342.P11433131424691020703.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P5120418726196404626

`2*A305074(n+1)²*A016887(n)`
-/

namespace A017345.P5120418726196404626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A305074 (n + 1) ^ 2 * A016887 n)

end

end A017345.P5120418726196404626

namespace A017345

/-- `2*A305074(n+1)²*A016887(n)` -/
def P5120418726196404626.Spec : Prop :=
  ∀ n, P5120418726196404626.a n = A017345 n

theorem P5120418726196404626.correct : P5120418726196404626.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P5120418726196404626.a, A017345.P9412131434236632439.a, A016887, A016887.P17409783610642502630.a, A305074, A305074.P9440456111715766458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P14378583684035229922

`A017342(n)*A017344(n)/A017341(n)`
-/

namespace A017345.P14378583684035229922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017342 n * A017344 n : ℚ) / (A017341 n : ℚ)

end

end A017345.P14378583684035229922

namespace A017345

/-- `A017342(n)*A017344(n)/A017341(n)` -/
def P14378583684035229922.Spec : Prop :=
  ∀ n, P14378583684035229922.a n = (A017345 n : ℚ)

end A017345

/-! ## A017345.P3740766742676797021

`A016865(Δ[n²])`
-/

namespace A017345.P3740766742676797021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017345.P3740766742676797021

namespace A017345

/-- `A016865(Δ[n²])` -/
def P3740766742676797021.Spec : Prop :=
  ∀ n, P3740766742676797021.a n = A017345 n

end A017345

/-! ## A017345.P8038380597216178380

`lcm(2, A016865(2*n+1))`
-/

namespace A017345.P8038380597216178380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016865 (2 * n + 1))

end

end A017345.P8038380597216178380

namespace A017345

/-- `lcm(2, A016865(2*n+1))` -/
def P8038380597216178380.Spec : Prop :=
  ∀ n, (P8038380597216178380.a n : ℤ) = A017345 n

end A017345

/-! ## A017345.P9936273655044230199

`(10*n+6)*A016864(2*n+1)`
-/

namespace A017345.P9936273655044230199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 6 : ℤ) * A016864 (2 * n + 1)

end

end A017345.P9936273655044230199

namespace A017345

/-- `(10*n+6)*A016864(2*n+1)` -/
def P9936273655044230199.Spec : Prop :=
  ∀ n, P9936273655044230199.a n = A017345 n

theorem P9936273655044230199.correct : P9936273655044230199.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P9936273655044230199.a, A017345.P9412131434236632439.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P3195934682548268787

`A016866(2*n+1)/(10*n+6)`
-/

namespace A017345.P3195934682548268787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016866 (2 * n + 1) : ℚ) / (10 * n + 6 : ℚ)

end

end A017345.P3195934682548268787

namespace A017345

/-- `A016866(2*n+1)/(10*n+6)` -/
def P3195934682548268787.Spec : Prop :=
  ∀ n, P3195934682548268787.a n = (A017345 n : ℚ)

theorem P3195934682548268787.correct : P3195934682548268787.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P3195934682548268787.a, A017345.P9412131434236632439.a, A016866, A016866.P4617952236870524676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P16575912544926455432

`(10*n+6)²*A016863(2*n+1)`
-/

namespace A017345.P16575912544926455432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 6) ^ 2 : ℤ) * A016863 (2 * n + 1)

end

end A017345.P16575912544926455432

namespace A017345

/-- `(10*n+6)²*A016863(2*n+1)` -/
def P16575912544926455432.Spec : Prop :=
  ∀ n, P16575912544926455432.a n = A017345 n

theorem P16575912544926455432.correct : P16575912544926455432.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P16575912544926455432.a, A017345.P9412131434236632439.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-! ## A017345.P4297597941846912038

`A016867(2*n+1)/(10*n+6)²`
-/

namespace A017345.P4297597941846912038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 (2 * n + 1) : ℚ) / ((10 * n + 6) ^ 2 : ℚ)

end

end A017345.P4297597941846912038

namespace A017345

/-- `A016867(2*n+1)/(10*n+6)²` -/
def P4297597941846912038.Spec : Prop :=
  ∀ n, P4297597941846912038.a n = (A017345 n : ℚ)

theorem P4297597941846912038.correct : P4297597941846912038.Spec := by
  intro n
  simp only [A017345, Nat.add_sub_cancel, A017345.P4297597941846912038.a, A017345.P9412131434236632439.a, A016867, A016867.P4252928174738916812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017345

/-!
# A017346: a(n) = (10*n + 6)^6.

The programs for A017346, the canonical program `A017346.P12927245387655009054` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017346 has offset 0).

The definition of A017346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^6` (program `A017346.P12927245387655009054`, by `A017346.P12927245387655009054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017346.P12927245387655009054

`(10*n+6)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017346

/-- `(10*n+6)^6` -/
def P12927245387655009054.Spec : Prop :=
  ∀ n, (P12927245387655009054.a n : ℤ) = A017346 n

theorem P12927245387655009054.correct : P12927245387655009054.Spec := by
  intro n
  simp only [A017346]

end A017346

/-! ## A017346.P9503594402278164359

`A017343(n)²`
-/

namespace A017346.P9503594402278164359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n ^ 2

end

end A017346.P9503594402278164359

namespace A017346

/-- `A017343(n)²` -/
def P9503594402278164359.Spec : Prop :=
  ∀ n, P9503594402278164359.a n = A017346 n

theorem P9503594402278164359.correct : P9503594402278164359.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P9503594402278164359.a, A017346.P12927245387655009054.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P4570039299797556577

`sqrt(A017344(n)^3)`
-/

namespace A017346.P4570039299797556577
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017344 n ^ 3 : ℝ)

end

end A017346.P4570039299797556577

namespace A017346

/-- `sqrt(A017344(n)^3)` -/
def P4570039299797556577.Spec : Prop :=
  ∀ n, P4570039299797556577.a n = (A017346 n : ℝ)

end A017346

/-! ## A017346.P11641192482303942125

`A017341(n)*A017345(n)`
-/

namespace A017346.P11641192482303942125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n * A017345 n

end

end A017346.P11641192482303942125

namespace A017346

/-- `A017341(n)*A017345(n)` -/
def P11641192482303942125.Spec : Prop :=
  ∀ n, P11641192482303942125.a n = A017346 n

theorem P11641192482303942125.correct : P11641192482303942125.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P11641192482303942125.a, A017346.P12927245387655009054.a, A017341, A017341.P14977180853961305525.a, A017345, A017345.P9412131434236632439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P17917855391849831552

`A017342(n)*A017344(n)`
-/

namespace A017346.P17917855391849831552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n * A017344 n

end

end A017346.P17917855391849831552

namespace A017346

/-- `A017342(n)*A017344(n)` -/
def P17917855391849831552.Spec : Prop :=
  ∀ n, P17917855391849831552.a n = A017346 n

theorem P17917855391849831552.correct : P17917855391849831552.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P17917855391849831552.a, A017346.P12927245387655009054.a, A017342, A017342.P11433131424691020703.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P1521044504253936109

`A017347(n)/A017341(n)`
-/

namespace A017346.P1521044504253936109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017347 n : ℚ) / (A017341 n : ℚ)

end

end A017346.P1521044504253936109

namespace A017346

/-- `A017347(n)/A017341(n)` -/
def P1521044504253936109.Spec : Prop :=
  ∀ n, P1521044504253936109.a n = (A017346 n : ℚ)

end A017346

/-! ## A017346.P4632271908560721795

`(A017341(n)*A017342(n))²`
-/

namespace A017346.P4632271908560721795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n * A017342 n) ^ 2

end

end A017346.P4632271908560721795

namespace A017346

/-- `(A017341(n)*A017342(n))²` -/
def P4632271908560721795.Spec : Prop :=
  ∀ n, P4632271908560721795.a n = A017346 n

theorem P4632271908560721795.correct : P4632271908560721795.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P4632271908560721795.a, A017346.P12927245387655009054.a, A017341, A017341.P14977180853961305525.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P4853517305318471245

`A017341(n)²*A017344(n)`
-/

namespace A017346.P4853517305318471245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n ^ 2 * A017344 n

end

end A017346.P4853517305318471245

namespace A017346

/-- `A017341(n)²*A017344(n)` -/
def P4853517305318471245.Spec : Prop :=
  ∀ n, P4853517305318471245.a n = A017346 n

theorem P4853517305318471245.correct : P4853517305318471245.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P4853517305318471245.a, A017346.P12927245387655009054.a, A017341, A017341.P14977180853961305525.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P7545906214578349699

`(A017345(n)/A017342(n))²`
-/

namespace A017346.P7545906214578349699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017345 n : ℚ) / (A017342 n : ℚ)) ^ 2

end

end A017346.P7545906214578349699

namespace A017346

/-- `(A017345(n)/A017342(n))²` -/
def P7545906214578349699.Spec : Prop :=
  ∀ n, P7545906214578349699.a n = (A017346 n : ℚ)

end A017346

/-! ## A017346.P16367608792751077870

`sqrt(sqrt(A017348(n))*A017348(n))`
-/

namespace A017346.P16367608792751077870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017348 n : ℝ) * (A017348 n : ℝ))

end

end A017346.P16367608792751077870

namespace A017346

/-- `sqrt(sqrt(A017348(n))*A017348(n))` -/
def P16367608792751077870.Spec : Prop :=
  ∀ n, P16367608792751077870.a n = (A017346 n : ℝ)

end A017346

/-! ## A017346.P5133696089467974227

`(Δ[A202803(n)]^3)²`
-/

namespace A017346.P5133696089467974227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017346.P5133696089467974227

namespace A017346

/-- `(Δ[A202803(n)]^3)²` -/
def P5133696089467974227.Spec : Prop :=
  ∀ n, P5133696089467974227.a n = A017346 n

theorem P5133696089467974227.correct : P5133696089467974227.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P5133696089467974227.f1, A017346.P5133696089467974227.a, A017346.P12927245387655009054.a, A202803, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P2340308548777471856

`A016866(Δ[n²])`
-/

namespace A017346.P2340308548777471856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016866 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017346.P2340308548777471856

namespace A017346

/-- `A016866(Δ[n²])` -/
def P2340308548777471856.Spec : Prop :=
  ∀ n, P2340308548777471856.a n = A017346 n

end A017346

/-! ## A017346.P10141181688383989324

`A016863(Δ[n²])²`
-/

namespace A017346.P10141181688383989324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017346.P10141181688383989324

namespace A017346

/-- `A016863(Δ[n²])²` -/
def P10141181688383989324.Spec : Prop :=
  ∀ n, P10141181688383989324.a n = A017346 n

end A017346

/-! ## A017346.P17987154710761716054

`A272914(2*(n+1))`
-/

namespace A017346.P17987154710761716054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272914 (2 * (n + 1))

end

end A017346.P17987154710761716054

namespace A017346

/-- `A272914(2*(n+1))` -/
def P17987154710761716054.Spec : Prop :=
  ∀ n, P17987154710761716054.a n = A017346 n

end A017346

/-! ## A017346.P4470317575337267195

`lcm(2, A016866(2*n+1))`
-/

namespace A017346.P4470317575337267195
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016866 (2 * n + 1))

end

end A017346.P4470317575337267195

namespace A017346

/-- `lcm(2, A016866(2*n+1))` -/
def P4470317575337267195.Spec : Prop :=
  ∀ n, (P4470317575337267195.a n : ℤ) = A017346 n

end A017346

/-! ## A017346.P7646478111602291927

`A016867(2*n+1)/(10*n+6)`
-/

namespace A017346.P7646478111602291927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016867 (2 * n + 1) : ℚ) / (10 * n + 6 : ℚ)

end

end A017346.P7646478111602291927

namespace A017346

/-- `A016867(2*n+1)/(10*n+6)` -/
def P7646478111602291927.Spec : Prop :=
  ∀ n, P7646478111602291927.a n = (A017346 n : ℚ)

theorem P7646478111602291927.correct : P7646478111602291927.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P7646478111602291927.a, A017346.P12927245387655009054.a, A016867, A016867.P4252928174738916812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P14655780993487928361

`(10*n+6)²*A016864(2*n+1)`
-/

namespace A017346.P14655780993487928361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 6) ^ 2 : ℤ) * A016864 (2 * n + 1)

end

end A017346.P14655780993487928361

namespace A017346

/-- `(10*n+6)²*A016864(2*n+1)` -/
def P14655780993487928361.Spec : Prop :=
  ∀ n, P14655780993487928361.a n = A017346 n

theorem P14655780993487928361.correct : P14655780993487928361.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P14655780993487928361.a, A017346.P12927245387655009054.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-! ## A017346.P3858970676551671551

`∩[A272914(n+1), A016866(n)]`
-/

namespace A017346.P3858970676551671551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016866 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A017346.P3858970676551671551

namespace A017346

/-- `∩[A272914(n+1), A016866(n)]` -/
def P3858970676551671551.Spec : Prop :=
  ∀ n, (P3858970676551671551.a n : ℤ) = A017346 n

end A017346

/-! ## A017346.P7732293259100547031

`A016862(2*n+1)*A017344(n)`
-/

namespace A017346.P7732293259100547031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016862 (2 * n + 1) * A017344 n

end

end A017346.P7732293259100547031

namespace A017346

/-- `A016862(2*n+1)*A017344(n)` -/
def P7732293259100547031.Spec : Prop :=
  ∀ n, P7732293259100547031.a n = A017346 n

theorem P7732293259100547031.correct : P7732293259100547031.Spec := by
  intro n
  simp only [A017346, Nat.add_sub_cancel, A017346.P7732293259100547031.a, A017346.P12927245387655009054.a, A016862, A016862.P4720776691186821444.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017346

/-!
# A017347: a(n) = (10*n + 6)^7.

The programs for A017347, the canonical program `A017347.P10303550377858958243` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017347 has offset 0).

The definition of A017347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^7` (program `A017347.P10303550377858958243`, by `A017347.P10303550377858958243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017347.P10303550377858958243

`(10*n+6)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017347

/-- `(10*n+6)^7` -/
def P10303550377858958243.Spec : Prop :=
  ∀ n, (P10303550377858958243.a n : ℤ) = A017347 n

theorem P10303550377858958243.correct : P10303550377858958243.Spec := by
  intro n
  simp only [A017347]

end A017347

/-! ## A017347.P8476809265826124618

`(10*n+6)²²*A017343(n)`
-/

namespace A017347.P8476809265826124618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((10 * n + 6) ^ 2) ^ 2 : ℤ) * A017343 n

end

end A017347.P8476809265826124618

namespace A017347

/-- `(10*n+6)²²*A017343(n)` -/
def P8476809265826124618.Spec : Prop :=
  ∀ n, P8476809265826124618.a n = A017347 n

theorem P8476809265826124618.correct : P8476809265826124618.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P8476809265826124618.a, A017347.P10303550377858958243.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P201612764986410076

`A017341(n)*A017346(n)`
-/

namespace A017347.P201612764986410076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n * A017346 n

end

end A017347.P201612764986410076

namespace A017347

/-- `A017341(n)*A017346(n)` -/
def P201612764986410076.Spec : Prop :=
  ∀ n, P201612764986410076.a n = A017347 n

theorem P201612764986410076.correct : P201612764986410076.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P201612764986410076.a, A017347.P10303550377858958243.a, A017341, A017341.P14977180853961305525.a, A017346, A017346.P12927245387655009054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P17346375349539910892

`A017342(n)*A017345(n)`
-/

namespace A017347.P17346375349539910892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n * A017345 n

end

end A017347.P17346375349539910892

namespace A017347

/-- `A017342(n)*A017345(n)` -/
def P17346375349539910892.Spec : Prop :=
  ∀ n, P17346375349539910892.a n = A017347 n

theorem P17346375349539910892.correct : P17346375349539910892.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P17346375349539910892.a, A017347.P10303550377858958243.a, A017342, A017342.P11433131424691020703.a, A017345, A017345.P9412131434236632439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P12368572873680385079

`A017343(n)*A017344(n)`
-/

namespace A017347.P12368572873680385079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n * A017344 n

end

end A017347.P12368572873680385079

namespace A017347

/-- `A017343(n)*A017344(n)` -/
def P12368572873680385079.Spec : Prop :=
  ∀ n, P12368572873680385079.a n = A017347 n

theorem P12368572873680385079.correct : P12368572873680385079.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P12368572873680385079.a, A017347.P10303550377858958243.a, A017343, A017343.P9364266596751166510.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P4829874669277396688

`A017341(n)²*A017345(n)`
-/

namespace A017347.P4829874669277396688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n ^ 2 * A017345 n

end

end A017347.P4829874669277396688

namespace A017347

/-- `A017341(n)²*A017345(n)` -/
def P4829874669277396688.Spec : Prop :=
  ∀ n, P4829874669277396688.a n = A017347 n

theorem P4829874669277396688.correct : P4829874669277396688.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P4829874669277396688.a, A017347.P10303550377858958243.a, A017341, A017341.P14977180853961305525.a, A017345, A017345.P9412131434236632439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P1852052803583208227

`A017343(n)²*A017341(n)`
-/

namespace A017347.P1852052803583208227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n ^ 2 * A017341 n

end

end A017347.P1852052803583208227

namespace A017347

/-- `A017343(n)²*A017341(n)` -/
def P1852052803583208227.Spec : Prop :=
  ∀ n, P1852052803583208227.a n = A017347 n

theorem P1852052803583208227.correct : P1852052803583208227.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P1852052803583208227.a, A017347.P10303550377858958243.a, A017341, A017341.P14977180853961305525.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P12605490323555792

`A017344(n)²/A017341(n)`
-/

namespace A017347.P12605490323555792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017344 n ^ 2 : ℚ) / (A017341 n : ℚ)

end

end A017347.P12605490323555792

namespace A017347

/-- `A017344(n)²/A017341(n)` -/
def P12605490323555792.Spec : Prop :=
  ∀ n, P12605490323555792.a n = (A017347 n : ℚ)

end A017347

/-! ## A017347.P14827680902759746577

`A017342(n)²²/A017341(n)`
-/

namespace A017347.P14827680902759746577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017342 n ^ 2) ^ 2 : ℚ) / (A017341 n : ℚ)

end

end A017347.P14827680902759746577

namespace A017347

/-- `A017342(n)²²/A017341(n)` -/
def P14827680902759746577.Spec : Prop :=
  ∀ n, P14827680902759746577.a n = (A017347 n : ℚ)

end A017347

/-! ## A017347.P6020237275203705253

`A017341(n)*A017342(n)*A017344(n)`
-/

namespace A017347.P6020237275203705253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n * A017342 n * A017344 n

end

end A017347.P6020237275203705253

namespace A017347

/-- `A017341(n)*A017342(n)*A017344(n)` -/
def P6020237275203705253.Spec : Prop :=
  ∀ n, P6020237275203705253.a n = A017347 n

theorem P6020237275203705253.correct : P6020237275203705253.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P6020237275203705253.a, A017347.P10303550377858958243.a, A017341, A017341.P14977180853961305525.a, A017342, A017342.P11433131424691020703.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P8227918649791659697

`A017345(n)/A017343(n)*A017345(n)`
-/

namespace A017347.P8227918649791659697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017345 n : ℚ) / (A017343 n : ℚ) * (A017345 n : ℚ)

end

end A017347.P8227918649791659697

namespace A017347

/-- `A017345(n)/A017343(n)*A017345(n)` -/
def P8227918649791659697.Spec : Prop :=
  ∀ n, P8227918649791659697.a n = (A017347 n : ℚ)

end A017347

/-! ## A017347.P2586448837226888227

`A016867(Δ[n²])`
-/

namespace A017347.P2586448837226888227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016867 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017347.P2586448837226888227

namespace A017347

/-- `A016867(Δ[n²])` -/
def P2586448837226888227.Spec : Prop :=
  ∀ n, P2586448837226888227.a n = A017347 n

end A017347

/-! ## A017347.P7538560521183266316

`lcm(2, A016867(2*n+1))`
-/

namespace A017347.P7538560521183266316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016867 (2 * n + 1))

end

end A017347.P7538560521183266316

namespace A017347

/-- `lcm(2, A016867(2*n+1))` -/
def P7538560521183266316.Spec : Prop :=
  ∀ n, (P7538560521183266316.a n : ℤ) = A017347 n

end A017347

/-! ## A017347.P10418795531299235798

`(10*n+6)*A016866(2*n+1)`
-/

namespace A017347.P10418795531299235798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 6 : ℤ) * A016866 (2 * n + 1)

end

end A017347.P10418795531299235798

namespace A017347

/-- `(10*n+6)*A016866(2*n+1)` -/
def P10418795531299235798.Spec : Prop :=
  ∀ n, P10418795531299235798.a n = A017347 n

theorem P10418795531299235798.correct : P10418795531299235798.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P10418795531299235798.a, A017347.P10303550377858958243.a, A016866, A016866.P4617952236870524676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P7314442656268327443

`A016868(2*n+1)/(10*n+6)`
-/

namespace A017347.P7314442656268327443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016868 (2 * n + 1) : ℚ) / (10 * n + 6 : ℚ)

end

end A017347.P7314442656268327443

namespace A017347

/-- `A016868(2*n+1)/(10*n+6)` -/
def P7314442656268327443.Spec : Prop :=
  ∀ n, P7314442656268327443.a n = (A017347 n : ℚ)

theorem P7314442656268327443.correct : P7314442656268327443.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P7314442656268327443.a, A017347.P10303550377858958243.a, A016868, A016868.P5827958273917566203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P14126776045584184174

`(10*n+6)²*A016865(2*n+1)`
-/

namespace A017347.P14126776045584184174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 6) ^ 2 : ℤ) * A016865 (2 * n + 1)

end

end A017347.P14126776045584184174

namespace A017347

/-- `(10*n+6)²*A016865(2*n+1)` -/
def P14126776045584184174.Spec : Prop :=
  ∀ n, P14126776045584184174.a n = A017347 n

theorem P14126776045584184174.correct : P14126776045584184174.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P14126776045584184174.a, A017347.P10303550377858958243.a, A016865, A016865.P15075696711859102256.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P7884458303219042865

`A016864(2*n+1)²/(10*n+6)`
-/

namespace A017347.P7884458303219042865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016864 (2 * n + 1) ^ 2 : ℚ) / (10 * n + 6 : ℚ)

end

end A017347.P7884458303219042865

namespace A017347

/-- `A016864(2*n+1)²/(10*n+6)` -/
def P7884458303219042865.Spec : Prop :=
  ∀ n, P7884458303219042865.a n = (A017347 n : ℚ)

theorem P7884458303219042865.correct : P7884458303219042865.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P7884458303219042865.a, A017347.P10303550377858958243.a, A016864, A016864.P18068450066866692869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P12733199310541940846

`A016869(2*n+1)/(10*n+6)²`
-/

namespace A017347.P12733199310541940846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016869 (2 * n + 1) : ℚ) / ((10 * n + 6) ^ 2 : ℚ)

end

end A017347.P12733199310541940846

namespace A017347

/-- `A016869(2*n+1)/(10*n+6)²` -/
def P12733199310541940846.Spec : Prop :=
  ∀ n, P12733199310541940846.a n = (A017347 n : ℚ)

theorem P12733199310541940846.correct : P12733199310541940846.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P12733199310541940846.a, A017347.P10303550377858958243.a, A016869, A016869.P8261051290482480769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P2601693498455551853

`(10*n+6)²²*A016863(2*n+1)`
-/

namespace A017347.P2601693498455551853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((10 * n + 6) ^ 2) ^ 2 : ℤ) * A016863 (2 * n + 1)

end

end A017347.P2601693498455551853

namespace A017347

/-- `(10*n+6)²²*A016863(2*n+1)` -/
def P2601693498455551853.Spec : Prop :=
  ∀ n, P2601693498455551853.a n = A017347 n

theorem P2601693498455551853.correct : P2601693498455551853.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P2601693498455551853.a, A017347.P10303550377858958243.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-! ## A017347.P16212751534218654619

`A016863(2*n+1)*A017344(n)`
-/

namespace A017347.P16212751534218654619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n + 1) * A017344 n

end

end A017347.P16212751534218654619

namespace A017347

/-- `A016863(2*n+1)*A017344(n)` -/
def P16212751534218654619.Spec : Prop :=
  ∀ n, P16212751534218654619.a n = A017347 n

theorem P16212751534218654619.correct : P16212751534218654619.Spec := by
  intro n
  simp only [A017347, Nat.add_sub_cancel, A017347.P16212751534218654619.a, A017347.P10303550377858958243.a, A016863, A016863.P8174085331725437101.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017347

/-!
# A017348: a(n) = (10*n + 6)^8.

The programs for A017348, the canonical program `A017348.P2803485023945241800` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017348 has offset 0).

The definition of A017348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^8` (program `A017348.P2803485023945241800`, by `A017348.P2803485023945241800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017348.P2803485023945241800

`(10*n+6)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017348

/-- `(10*n+6)^8` -/
def P2803485023945241800.Spec : Prop :=
  ∀ n, (P2803485023945241800.a n : ℤ) = A017348 n

theorem P2803485023945241800.correct : P2803485023945241800.Spec := by
  intro n
  simp only [A017348]

end A017348

/-! ## A017348.P10864451498303948872

`(Δ[lcm(2*n+1, 2*n)]+2*n)²²²`
-/

namespace A017348.P10864451498303948872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017348.P10864451498303948872

namespace A017348

/-- `(Δ[lcm(2*n+1, 2*n)]+2*n)²²²` -/
def P10864451498303948872.Spec : Prop :=
  ∀ n, P10864451498303948872.a n = A017348 n

end A017348

/-! ## A017348.P7347330100147068465

`A017344(n)²`
-/

namespace A017348.P7347330100147068465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017344 n ^ 2

end

end A017348.P7347330100147068465

namespace A017348

/-- `A017344(n)²` -/
def P7347330100147068465.Spec : Prop :=
  ∀ n, P7347330100147068465.a n = A017348 n

theorem P7347330100147068465.correct : P7347330100147068465.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P7347330100147068465.a, A017348.P2803485023945241800.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P5004074240522974553

`A017342(n)²²`
-/

namespace A017348.P5004074240522974553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017342 n ^ 2) ^ 2

end

end A017348.P5004074240522974553

namespace A017348

/-- `A017342(n)²²` -/
def P5004074240522974553.Spec : Prop :=
  ∀ n, P5004074240522974553.a n = A017348 n

theorem P5004074240522974553.correct : P5004074240522974553.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P5004074240522974553.a, A017348.P2803485023945241800.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P6565843461800393192

`(A017341(n)^4)²`
-/

namespace A017348.P6565843461800393192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n ^ 4) ^ 2

end

end A017348.P6565843461800393192

namespace A017348

/-- `(A017341(n)^4)²` -/
def P6565843461800393192.Spec : Prop :=
  ∀ n, P6565843461800393192.a n = A017348 n

theorem P6565843461800393192.correct : P6565843461800393192.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P6565843461800393192.a, A017348.P2803485023945241800.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P6315026367187560847

`(A017329(n)+1)²²²`
-/

namespace A017348.P6315026367187560847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017329 n + 1) ^ 2) ^ 2) ^ 2

end

end A017348.P6315026367187560847

namespace A017348

/-- `(A017329(n)+1)²²²` -/
def P6315026367187560847.Spec : Prop :=
  ∀ n, P6315026367187560847.a n = A017348 n

theorem P6315026367187560847.correct : P6315026367187560847.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P6315026367187560847.a, A017348.P2803485023945241800.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P9421448594199512981

`(A017317(n)+2)²²²`
-/

namespace A017348.P9421448594199512981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017317 n + 2) ^ 2) ^ 2) ^ 2

end

end A017348.P9421448594199512981

namespace A017348

/-- `(A017317(n)+2)²²²` -/
def P9421448594199512981.Spec : Prop :=
  ∀ n, P9421448594199512981.a n = A017348 n

theorem P9421448594199512981.correct : P9421448594199512981.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P9421448594199512981.a, A017348.P2803485023945241800.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P9905015155058906678

`(1-A017353(n))²²²`
-/

namespace A017348.P9905015155058906678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017353 n) ^ 2) ^ 2) ^ 2

end

end A017348.P9905015155058906678

namespace A017348

/-- `(1-A017353(n))²²²` -/
def P9905015155058906678.Spec : Prop :=
  ∀ n, P9905015155058906678.a n = A017348 n

theorem P9905015155058906678.correct : P9905015155058906678.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P9905015155058906678.a, A017348.P2803485023945241800.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P2136631451803861234

`(2-A017365(n))²²²`
-/

namespace A017348.P2136631451803861234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017365 n) ^ 2) ^ 2) ^ 2

end

end A017348.P2136631451803861234

namespace A017348

/-- `(2-A017365(n))²²²` -/
def P2136631451803861234.Spec : Prop :=
  ∀ n, P2136631451803861234.a n = A017348 n

theorem P2136631451803861234.correct : P2136631451803861234.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P2136631451803861234.a, A017348.P2803485023945241800.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P17480159103654017565

`(2*A016885(n))²²²`
-/

namespace A017348.P17480159103654017565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016885 n) ^ 2) ^ 2) ^ 2

end

end A017348.P17480159103654017565

namespace A017348

/-- `(2*A016885(n))²²²` -/
def P17480159103654017565.Spec : Prop :=
  ∀ n, P17480159103654017565.a n = A017348 n

theorem P17480159103654017565.correct : P17480159103654017565.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P17480159103654017565.a, A017348.P2803485023945241800.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P16570155128835981687

`(A017233(n)+n)²²²`
-/

namespace A017348.P16570155128835981687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017233 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017348.P16570155128835981687

namespace A017348

/-- `(A017233(n)+n)²²²` -/
def P16570155128835981687.Spec : Prop :=
  ∀ n, P16570155128835981687.a n = A017348 n

theorem P16570155128835981687.correct : P16570155128835981687.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P16570155128835981687.a, A017348.P2803485023945241800.a, A017233, A017233.P12949994042344701827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P18033997845702552452

`(n-A017461(n))²²²`
-/

namespace A017348.P18033997845702552452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017461 n) ^ 2) ^ 2) ^ 2

end

end A017348.P18033997845702552452

namespace A017348

/-- `(n-A017461(n))²²²` -/
def P18033997845702552452.Spec : Prop :=
  ∀ n, P18033997845702552452.a n = A017348 n

theorem P18033997845702552452.correct : P18033997845702552452.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P18033997845702552452.a, A017348.P2803485023945241800.a, A017461, A017461.P14513907222713688530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P5160366670747756145

`(A305074(n+1)/2)²²²`
-/

namespace A017348.P5160366670747756145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((A305074 (n + 1) : ℚ) / 2) ^ 2) ^ 2) ^ 2

end

end A017348.P5160366670747756145

namespace A017348

/-- `(A305074(n+1)/2)²²²` -/
def P5160366670747756145.Spec : Prop :=
  ∀ n, P5160366670747756145.a n = (A017348 n : ℚ)

theorem P5160366670747756145.correct : P5160366670747756145.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P5160366670747756145.a, A017348.P2803485023945241800.a, A305074, A305074.P9440456111715766458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P1473767450372476348

`A017341(n)*A017347(n)`
-/

namespace A017348.P1473767450372476348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n * A017347 n

end

end A017348.P1473767450372476348

namespace A017348

/-- `A017341(n)*A017347(n)` -/
def P1473767450372476348.Spec : Prop :=
  ∀ n, P1473767450372476348.a n = A017348 n

theorem P1473767450372476348.correct : P1473767450372476348.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P1473767450372476348.a, A017348.P2803485023945241800.a, A017341, A017341.P14977180853961305525.a, A017347, A017347.P10303550377858958243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P4721841681765800132

`A017342(n)*A017346(n)`
-/

namespace A017348.P4721841681765800132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n * A017346 n

end

end A017348.P4721841681765800132

namespace A017348

/-- `A017342(n)*A017346(n)` -/
def P4721841681765800132.Spec : Prop :=
  ∀ n, P4721841681765800132.a n = A017348 n

theorem P4721841681765800132.correct : P4721841681765800132.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P4721841681765800132.a, A017348.P2803485023945241800.a, A017342, A017342.P11433131424691020703.a, A017346, A017346.P12927245387655009054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P10019359903049814264

`A017343(n)*A017345(n)`
-/

namespace A017348.P10019359903049814264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n * A017345 n

end

end A017348.P10019359903049814264

namespace A017348

/-- `A017343(n)*A017345(n)` -/
def P10019359903049814264.Spec : Prop :=
  ∀ n, P10019359903049814264.a n = A017348 n

theorem P10019359903049814264.correct : P10019359903049814264.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P10019359903049814264.a, A017348.P2803485023945241800.a, A017343, A017343.P9364266596751166510.a, A017345, A017345.P9412131434236632439.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P17190746050431782299

`A017346(n)/(1/A017341(n))²`
-/

namespace A017348.P17190746050431782299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017346 n : ℚ) / (1 / (A017341 n : ℚ)) ^ 2

end

end A017348.P17190746050431782299

namespace A017348

/-- `A017346(n)/(1/A017341(n))²` -/
def P17190746050431782299.Spec : Prop :=
  ∀ n, P17190746050431782299.a n = (A017348 n : ℚ)

end A017348

/-! ## A017348.P13430375656160052044

`A017342(n)*A017343(n)*A017343(n)`
-/

namespace A017348.P13430375656160052044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017342 n * A017343 n * A017343 n

end

end A017348.P13430375656160052044

namespace A017348

/-- `A017342(n)*A017343(n)*A017343(n)` -/
def P13430375656160052044.Spec : Prop :=
  ∀ n, P13430375656160052044.a n = A017348 n

theorem P13430375656160052044.correct : P13430375656160052044.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P13430375656160052044.a, A017348.P2803485023945241800.a, A017342, A017342.P11433131424691020703.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-! ## A017348.P8978388947140937901

`Δ[A202803(n)]²²²`
-/

namespace A017348.P8978388947140937901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017348.P8978388947140937901

namespace A017348

/-- `Δ[A202803(n)]²²²` -/
def P8978388947140937901.Spec : Prop :=
  ∀ n, P8978388947140937901.a n = A017348 n

theorem P8978388947140937901.correct : P8978388947140937901.Spec := by
  intro n
  simp only [A017348, Nat.add_sub_cancel, A017348.P8978388947140937901.f1, A017348.P8978388947140937901.a, A017348.P2803485023945241800.a, A202803, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017348

/-!
# A017349: a(n) = (10*n + 6)^9.

The programs for A017349, the canonical program `A017349.P16533928819629203179` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017349 has offset 0).

The definition of A017349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+6)^9` (program `A017349.P16533928819629203179`, by `A017349.P16533928819629203179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017349.P16533928819629203179

`(10*n+6)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017349

/-- `(10*n+6)^9` -/
def P16533928819629203179.Spec : Prop :=
  ∀ n, (P16533928819629203179.a n : ℤ) = A017349 n

theorem P16533928819629203179.correct : P16533928819629203179.Spec := by
  intro n
  simp only [A017349]

end A017349

/-! ## A017349.P2154738251202354275

`sqrt(A017346(n)^3)`
-/

namespace A017349.P2154738251202354275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017346 n ^ 3 : ℝ)

end

end A017349.P2154738251202354275

namespace A017349

/-- `sqrt(A017346(n)^3)` -/
def P2154738251202354275.Spec : Prop :=
  ∀ n, P2154738251202354275.a n = (A017349 n : ℝ)

end A017349

/-! ## A017349.P744722470613160527

`A017343(n)*A017346(n)`
-/

namespace A017349.P744722470613160527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017343 n * A017346 n

end

end A017349.P744722470613160527

namespace A017349

/-- `A017343(n)*A017346(n)` -/
def P744722470613160527.Spec : Prop :=
  ∀ n, P744722470613160527.a n = A017349 n

theorem P744722470613160527.correct : P744722470613160527.Spec := by
  intro n
  simp only [A017349, Nat.add_sub_cancel, A017349.P744722470613160527.a, A017349.P16533928819629203179.a, A017343, A017343.P9364266596751166510.a, A017346, A017346.P12927245387655009054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017349

/-! ## A017349.P14707393497808369072

`A017342(n)²²*A017341(n)`
-/

namespace A017349.P14707393497808369072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017342 n ^ 2) ^ 2 * A017341 n

end

end A017349.P14707393497808369072

namespace A017349

/-- `A017342(n)²²*A017341(n)` -/
def P14707393497808369072.Spec : Prop :=
  ∀ n, P14707393497808369072.a n = A017349 n

theorem P14707393497808369072.correct : P14707393497808369072.Spec := by
  intro n
  simp only [A017349, Nat.add_sub_cancel, A017349.P14707393497808369072.a, A017349.P16533928819629203179.a, A017341, A017341.P14977180853961305525.a, A017342, A017342.P11433131424691020703.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017349

/-! ## A017349.P14674399872087027599

`A017344(n)²*sqrt(sqrt(A017344(n)))`
-/

namespace A017349.P14674399872087027599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017344 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017344 n : ℝ))

end

end A017349.P14674399872087027599

namespace A017349

/-- `A017344(n)²*sqrt(sqrt(A017344(n)))` -/
def P14674399872087027599.Spec : Prop :=
  ∀ n, P14674399872087027599.a n = (A017349 n : ℝ)

end A017349

/-! ## A017349.P12886492880236592390

`A017341(n)*A017344(n)*A017344(n)`
-/

namespace A017349.P12886492880236592390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n * A017344 n * A017344 n

end

end A017349.P12886492880236592390

namespace A017349

/-- `A017341(n)*A017344(n)*A017344(n)` -/
def P12886492880236592390.Spec : Prop :=
  ∀ n, P12886492880236592390.a n = A017349 n

theorem P12886492880236592390.correct : P12886492880236592390.Spec := by
  intro n
  simp only [A017349, Nat.add_sub_cancel, A017349.P12886492880236592390.a, A017349.P16533928819629203179.a, A017341, A017341.P14977180853961305525.a, A017344, A017344.P17777024052064702776.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017349

/-! ## A017349.P11734027100146220334

`A016869(2*n+1)`
-/

namespace A017349.P11734027100146220334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016869 (2 * n + 1)

end

end A017349.P11734027100146220334

namespace A017349

/-- `A016869(2*n+1)` -/
def P11734027100146220334.Spec : Prop :=
  ∀ n, P11734027100146220334.a n = A017349 n

theorem P11734027100146220334.correct : P11734027100146220334.Spec := by
  intro n
  simp only [A017349, Nat.add_sub_cancel, A017349.P11734027100146220334.a, A017349.P16533928819629203179.a, A016869, A016869.P8261051290482480769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017349

/-! ## A017349.P1793003159365290994

`A016863(2*n+1)²*A016863(2*n+1)`
-/

namespace A017349.P1793003159365290994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016863 (2 * n + 1) ^ 2 * A016863 (2 * n + 1)

end

end A017349.P1793003159365290994

namespace A017349

/-- `A016863(2*n+1)²*A016863(2*n+1)` -/
def P1793003159365290994.Spec : Prop :=
  ∀ n, P1793003159365290994.a n = A017349 n

theorem P1793003159365290994.correct : P1793003159365290994.Spec := by
  intro n
  simp only [A017349, Nat.add_sub_cancel, A017349.P1793003159365290994.a, A017349.P16533928819629203179.a, A016863, A016863.P8174085331725437101.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017349

/-! ## A017349.P2883501057208735315

`A016749(A016945(n)-n)`
-/

namespace A017349.P2883501057208735315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016749 (A016945 n - (n : ℤ)).toNat

end

end A017349.P2883501057208735315

namespace A017349

/-- `A016749(A016945(n)-n)` -/
def P2883501057208735315.Spec : Prop :=
  ∀ n, P2883501057208735315.a n = A017349 n

end A017349

/-! ## A017349.P17389141060628805255

`A001017(A017341(n))`
-/

namespace A017349.P17389141060628805255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n).toNat

end

end A017349.P17389141060628805255

namespace A017349

/-- `A001017(A017341(n))` -/
def P17389141060628805255.Spec : Prop :=
  ∀ n, P17389141060628805255.a n = A017349 n

end A017349

/-! ## A017349.P1520163965949503738

`A001017(A017353(n)-1)`
-/

namespace A017349.P1520163965949503738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n - 1).toNat

end

end A017349.P1520163965949503738

namespace A017349

/-- `A001017(A017353(n)-1)` -/
def P1520163965949503738.Spec : Prop :=
  ∀ n, P1520163965949503738.a n = A017349 n

end A017349

/-! ## A017349.P8768449803925754917

`A001017(A017281(n)+5)`
-/

namespace A017349.P8768449803925754917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + 5).toNat

end

end A017349.P8768449803925754917

namespace A017349

/-- `A001017(A017281(n)+5)` -/
def P8768449803925754917.Spec : Prop :=
  ∀ n, P8768449803925754917.a n = A017349 n

end A017349

/-! ## A017349.P5911121512265578797

`A001017(A008587(2*n+1)+1)`
-/

namespace A017349.P5911121512265578797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008587 (2 * n + 1) + 1).toNat

end

end A017349.P5911121512265578797

namespace A017349

/-- `A001017(A008587(2*n+1)+1)` -/
def P5911121512265578797.Spec : Prop :=
  ∀ n, P5911121512265578797.a n = A017349 n

end A017349

/-! ## A017349.P15345931871496337860

`A001017(A017293(2*n+1)/2)`
-/

namespace A017349.P15345931871496337860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017293 (2 * n + 1) : ℚ) / 2)).toNat

end

end A017349.P15345931871496337860

namespace A017349

/-- `A001017(A017293(2*n+1)/2)` -/
def P15345931871496337860.Spec : Prop :=
  ∀ n, P15345931871496337860.a n = A017349 n

end A017349

/-! ## A017349.P18385020122193132101

`A001017(A008458(2*n+1)-2*n)`
-/

namespace A017349.P18385020122193132101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008458 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A017349.P18385020122193132101

namespace A017349

/-- `A001017(A008458(2*n+1)-2*n)` -/
def P18385020122193132101.Spec : Prop :=
  ∀ n, P18385020122193132101.a n = A017349 n

end A017349

/-! ## A017349.P16620262039078201746

`A001017(A008588(2*n+1)-2*n)`
-/

namespace A017349.P16620262039078201746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008588 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A017349.P16620262039078201746

namespace A017349

/-- `A001017(A008588(2*n+1)-2*n)` -/
def P16620262039078201746.Spec : Prop :=
  ∀ n, P16620262039078201746.a n = A017349 n

end A017349

/-! ## A017349.P13305155953950707492

`A001017(A016813(2*n+1)+2*n+1)`
-/

namespace A017349.P13305155953950707492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A016813 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A017349.P13305155953950707492

namespace A017349

/-- `A001017(A016813(2*n+1)+2*n+1)` -/
def P13305155953950707492.Spec : Prop :=
  ∀ n, P13305155953950707492.a n = A017349 n

end A017349

/-!
# A017350: 

The programs for A017350, there is no canonical definition to state claims against.
-/

/-! ## A017350.P911482993422056882

`(10*n+6)^10`
-/

namespace A017350.P911482993422056882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 6) ^ 10

end

end A017350.P911482993422056882

/-! ## A017350.P3718891524085473370

`A017345(n)²`
-/

namespace A017350.P3718891524085473370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017345 n ^ 2

end

end A017350.P3718891524085473370

/-! ## A017350.P2724644835740500470

`sqrt(A017344(n)^5)`
-/

namespace A017350.P2724644835740500470
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017344 n ^ 5 : ℝ)

end

end A017350.P2724644835740500470

/-! ## A017350.P9504076714512584242

`(A017341(n)²*A017343(n))²`
-/

namespace A017350.P9504076714512584242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n ^ 2 * A017343 n) ^ 2

end

end A017350.P9504076714512584242

/-! ## A017350.P1278972247178032011

`(A017342(n)²*A017341(n))²`
-/

namespace A017350.P1278972247178032011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017342 n ^ 2 * A017341 n) ^ 2

end

end A017350.P1278972247178032011

/-! ## A017350.P14117683536003688765

`sqrt(sqrt(A017348(n)))*A017348(n)`
-/

namespace A017350.P14117683536003688765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017348 n : ℝ)) * (A017348 n : ℝ)

end

end A017350.P14117683536003688765

/-! ## A017350.P8282429825429075320

`A016870(2*n+1)`
-/

namespace A017350.P8282429825429075320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016870 (2 * n + 1)

end

end A017350.P8282429825429075320

/-! ## A017350.P14832415271335574470

`A016865(2*n+1)²`
-/

namespace A017350.P14832415271335574470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016865 (2 * n + 1) ^ 2

end

end A017350.P14832415271335574470

/-! ## A017350.P10287530652563822827

`A016750(A016789(n)+A005408(n))`
-/

namespace A017350.P10287530652563822827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016750 (A016789 n + A005408 n).toNat

end

end A017350.P10287530652563822827

/-! ## A017350.P9822522432793718247

`A008454(A017341(n))`
-/

namespace A017350.P9822522432793718247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n).toNat

end

end A017350.P9822522432793718247

/-! ## A017350.P4267392159807025458

`A008454(A017353(n)-1)`
-/

namespace A017350.P4267392159807025458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n - 1).toNat

end

end A017350.P4267392159807025458

/-! ## A017350.P9125361929317813019

`A008454(A017281(n)+5)`
-/

namespace A017350.P9125361929317813019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + 5).toNat

end

end A017350.P9125361929317813019

/-! ## A017350.P2376504426394224395

`A008454(A016861(2*n+1))`
-/

namespace A017350.P2376504426394224395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 (2 * n + 1)).toNat

end

end A017350.P2376504426394224395

/-!
# A017351: 

The programs for A017351, there is no canonical definition to state claims against.
-/

/-! ## A017351.P11669017296583941672

`(10*n+6)^11`
-/

namespace A017351.P11669017296583941672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 6) ^ 11

end

end A017351.P11669017296583941672

/-! ## A017351.P11787947702398980770

`A017343(n)²²/A017341(n)`
-/

namespace A017351.P11787947702398980770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017343 n ^ 2) ^ 2 : ℚ) / (A017341 n : ℚ)

end

end A017351.P11787947702398980770

/-! ## A017351.P4708075223450300294

`A016864(2*n+1)²*A016863(2*n+1)`
-/

namespace A017351.P4708075223450300294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016864 (2 * n + 1) ^ 2 * A016863 (2 * n + 1)

end

end A017351.P4708075223450300294

/-! ## A017351.P2723880511806030710

`A016862(2*n+1)²²*A016863(2*n+1)`
-/

namespace A017351.P2723880511806030710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 (2 * n + 1) ^ 2) ^ 2 * A016863 (2 * n + 1)

end

end A017351.P2723880511806030710

/-! ## A017351.P10215164219609570504

`A016863(2*n+1)²²/A016861(2*n+1)`
-/

namespace A017351.P10215164219609570504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016863 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A016861 (2 * n + 1) : ℚ)

end

end A017351.P10215164219609570504

/-! ## A017351.P9103551656026438620

`A008455(A017281(n)+5)`
-/

namespace A017351.P9103551656026438620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 5).toNat

end

end A017351.P9103551656026438620

/-! ## A017351.P1749524423638197980

`A008455(A008592(n)+6)`
-/

namespace A017351.P1749524423638197980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008592 n + 6).toNat

end

end A017351.P1749524423638197980

/-! ## A017351.P9168638445250574074

`A008455(A008588(2*n+1)-2*n)`
-/

namespace A017351.P9168638445250574074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008588 (2 * n + 1) - (2 * n : ℤ)).toNat

end

end A017351.P9168638445250574074

/-! ## A017351.P8873357913199965596

`A008455(A016813(2*n+1)+2*n+1)`
-/

namespace A017351.P8873357913199965596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A016813 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A017351.P8873357913199965596

/-! ## A017351.P7956105101571368296

`A008454(A016861(2*n+1))*A016861(2*n+1)`
-/

namespace A017351.P7956105101571368296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A016861 (2 * n + 1)).toNat * A016861 (2 * n + 1)

end

end A017351.P7956105101571368296

/-!
# A017352: 

The programs for A017352, there is no canonical definition to state claims against.
-/

/-! ## A017352.P9921407571898230062

`(10*n+6)^12`
-/

namespace A017352.P9921407571898230062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 6) ^ 12

end

end A017352.P9921407571898230062

/-! ## A017352.P1074141776403941210

`A017346(n)²`
-/

namespace A017352.P1074141776403941210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017346 n ^ 2

end

end A017352.P1074141776403941210

/-! ## A017352.P5099270551879902812

`(A017341(n)^6)²`
-/

namespace A017352.P5099270551879902812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n ^ 6) ^ 2

end

end A017352.P5099270551879902812

/-! ## A017352.P649654498482141718

`sqrt(A017348(n))*A017348(n)`
-/

namespace A017352.P649654498482141718
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017348 n : ℝ) * (A017348 n : ℝ)

end

end A017352.P649654498482141718

/-! ## A017352.P11019622879705506152

`(A017341(n)*A017342(n))²²`
-/

namespace A017352.P11019622879705506152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n * A017342 n) ^ 2) ^ 2

end

end A017352.P11019622879705506152

/-! ## A017352.P4637310331283496548

`A272914(2*(n+1))²`
-/

namespace A017352.P4637310331283496548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272914 (2 * (n + 1)) ^ 2

end

end A017352.P4637310331283496548

/-! ## A017352.P11874891739616445366

`A016863(2*n+1)²²`
-/

namespace A017352.P11874891739616445366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016863 (2 * n + 1) ^ 2) ^ 2

end

end A017352.P11874891739616445366

/-! ## A017352.P13790761296019584472

`(A273373(2*n+2)²*A273373(2*n+2))²`
-/

namespace A017352.P13790761296019584472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273373 (2 * n + 2) ^ 2 * A273373 (2 * n + 2)) ^ 2

end

end A017352.P13790761296019584472

/-! ## A017352.P296848803392246165

`sqrt(A017348(n)^3)`
-/

namespace A017352.P296848803392246165
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017348 n ^ 3 : ℝ)

end

end A017352.P296848803392246165

/-! ## A017352.P2830862501322293930

`A000578(A017353(n)-1)²²`
-/

namespace A017352.P2830862501322293930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017353 n - 1).toNat ^ 2) ^ 2

end

end A017352.P2830862501322293930

/-! ## A017352.P1748283031461210862

`A000578(2*A016885(n))²²`
-/

namespace A017352.P1748283031461210862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (2 * A016885 n).toNat ^ 2) ^ 2

end

end A017352.P1748283031461210862

/-! ## A017352.P3285776137439970896

`A000578(A017233(n)+n)²²`
-/

namespace A017352.P3285776137439970896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017233 n + (n : ℤ)).toNat ^ 2) ^ 2

end

end A017352.P3285776137439970896

/-!
# A017353: a(n) = 10*n + 7.

The programs for A017353, the canonical program `A017353.P13300573628236260796` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017353 has offset 0).

The definition of A017353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+7` (program `A017353.P13300573628236260796`, by `A017353.P13300573628236260796.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017353.P13300573628236260796

`10*n+7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017353

/-- `10*n+7` -/
def P13300573628236260796.Spec : Prop :=
  ∀ n, (P13300573628236260796.a n : ℤ) = A017353 n

theorem P13300573628236260796.correct : P13300573628236260796.Spec := by
  intro n
  simp only [A017353]

end A017353

/-!
# A017354: a(n) = (10*n + 7)^2.

The programs for A017354, the canonical program `A017354.P6363149355192370715` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017354 has offset 0).

The definition of A017354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)²` (program `A017354.P6363149355192370715`, by `A017354.P6363149355192370715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017354.P6363149355192370715

`(10*n+7)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017354

/-- `(10*n+7)²` -/
def P6363149355192370715.Spec : Prop :=
  ∀ n, (P6363149355192370715.a n : ℤ) = A017354 n

theorem P6363149355192370715.correct : P6363149355192370715.Spec := by
  intro n
  simp only [A017354]

end A017354

/-! ## A017354.P2572150568111778551

`40*A000566(n+1)+9`
-/

namespace A017354.P2572150568111778551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  40 * A000566 (n + 1) + 9

end

end A017354.P2572150568111778551

namespace A017354

/-- `40*A000566(n+1)+9` -/
def P2572150568111778551.Spec : Prop :=
  ∀ n, P2572150568111778551.a n = A017354 n

end A017354

/-! ## A017354.P13006311101716582847

`record[(gcd(10, n)+n-3)²]`
-/

namespace A017354.P13006311101716582847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 10 n : ℤ) + ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017354.P13006311101716582847

namespace A017354

/-- `record[(gcd(10, n)+n-3)²]` -/
def P13006311101716582847.Spec : Prop :=
  ∀ n, P13006311101716582847.a n = A017354 n

end A017354

/-! ## A017354.P13805703875419505421

`record[(xor(7, n)+n/4)²]`
-/

namespace A017354.P13805703875419505421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 7 n : ℚ) + (n : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017354.P13805703875419505421

namespace A017354

/-- `record[(xor(7, n)+n/4)²]` -/
def P13805703875419505421.Spec : Prop :=
  ∀ n, P13805703875419505421.a n = (A017354 n : ℚ)

end A017354

/-! ## A017354.P12535267146874673109

`(10*n+7)^((3*n+2)%3)`
-/

namespace A017354.P12535267146874673109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 7) ^ ((3 * n + 2) % 3)

end

end A017354.P12535267146874673109

namespace A017354

/-- `(10*n+7)^((3*n+2)%3)` -/
def P12535267146874673109.Spec : Prop :=
  ∀ n, (P12535267146874673109.a n : ℤ) = A017354 n

theorem P12535267146874673109.correct : P12535267146874673109.Spec := by
  intro n
  simp only [A017354, Nat.add_sub_cancel, A017354.P12535267146874673109.a, A017354.P6363149355192370715.a, SequenceMachineLib.memo_apply]
  try simp

end A017354

/-! ## A017354.P11691698855410772195

`sqrt(A017356(n))`
-/

namespace A017354.P11691698855410772195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017356 n : ℝ)

end

end A017354.P11691698855410772195

namespace A017354

/-- `sqrt(A017356(n))` -/
def P11691698855410772195.Spec : Prop :=
  ∀ n, P11691698855410772195.a n = (A017354 n : ℝ)

end A017354

/-! ## A017354.P17169067587701840396

`sqrt(sqrt(A017360(n)))`
-/

namespace A017354.P17169067587701840396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017360 n : ℝ))

end

end A017354.P17169067587701840396

namespace A017354

/-- `sqrt(sqrt(A017360(n)))` -/
def P17169067587701840396.Spec : Prop :=
  ∀ n, P17169067587701840396.a n = (A017354 n : ℝ)

end A017354

/-! ## A017354.P1160067002432085839

`or(1, A017353(n)²)`
-/

namespace A017354.P1160067002432085839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A017353 n ^ 2)

end

end A017354.P1160067002432085839

namespace A017354

/-- `or(1, A017353(n)²)` -/
def P1160067002432085839.Spec : Prop :=
  ∀ n, P1160067002432085839.a n = A017354 n

end A017354

/-! ## A017354.P17420845997918532965

`A017358(n)^(1/3)`
-/

namespace A017354.P17420845997918532965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017358 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017354.P17420845997918532965

namespace A017354

/-- `A017358(n)^(1/3)` -/
def P17420845997918532965.Spec : Prop :=
  ∀ n, P17420845997918532965.a n = (A017354 n : ℝ)

end A017354

/-! ## A017354.P5709800377456405838

`A017355(n)^(2/3)`
-/

namespace A017354.P5709800377456405838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017355 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017354.P5709800377456405838

namespace A017354

/-- `A017355(n)^(2/3)` -/
def P5709800377456405838.Spec : Prop :=
  ∀ n, P5709800377456405838.a n = (A017354 n : ℝ)

end A017354

/-! ## A017354.P9386228469075552801

`8*C(A016897(n), 2)+1`
-/

namespace A017354.P9386228469075552801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (A016897 n).toNat 2 + 1

end

end A017354.P9386228469075552801

namespace A017354

/-- `8*C(A016897(n), 2)+1` -/
def P9386228469075552801.Spec : Prop :=
  ∀ n, (P9386228469075552801.a n : ℤ) = A017354 n

end A017354

/-! ## A017354.P535662576224661054

`A195018(n+1)²/(n+1)²`
-/

namespace A017354.P535662576224661054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195018 (n + 1) ^ 2 : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A017354.P535662576224661054

namespace A017354

/-- `A195018(n+1)²/(n+1)²` -/
def P535662576224661054.Spec : Prop :=
  ∀ n, P535662576224661054.a n = (A017354 n : ℚ)

theorem P535662576224661054.correct : P535662576224661054.Spec := by
  intro n
  simp only [A017354, Nat.add_sub_cancel, A017354.P535662576224661054.a, A017354.P6363149355192370715.a, A195018, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017354

/-! ## A017354.P1274752995147910171

`A053743(n)+A017294(n)`
-/

namespace A017354.P1274752995147910171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + A017294 n

end

end A017354.P1274752995147910171

namespace A017354

/-- `A053743(n)+A017294(n)` -/
def P1274752995147910171.Spec : Prop :=
  ∀ n, P1274752995147910171.a n = A017354 n

theorem P1274752995147910171.correct : P1274752995147910171.Spec := by
  intro n
  simp only [A017354, Nat.add_sub_cancel, A017354.P1274752995147910171.a, A017354.P6363149355192370715.a, A017294, A017294.P377073045484030866.a, A053743, A053743.P1433997258938577713.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017354

/-! ## A017354.P13202341650912151582

`A017366(n)-A290781(n)`
-/

namespace A017354.P13202341650912151582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n - A290781 n

end

end A017354.P13202341650912151582

namespace A017354

/-- `A017366(n)-A290781(n)` -/
def P13202341650912151582.Spec : Prop :=
  ∀ n, P13202341650912151582.a n = A017354 n

theorem P13202341650912151582.correct : P13202341650912151582.Spec := by
  intro n
  simp only [A017354, Nat.add_sub_cancel, A017354.P13202341650912151582.a, A017354.P6363149355192370715.a, A017366, A017366.P9177302132677222391.a, A290781, A290781.P16709635685453272756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017354

/-! ## A017354.P755638608438722221

`A017355(n)/A017353(n)`
-/

namespace A017354.P755638608438722221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017355 n : ℚ) / (A017353 n : ℚ)

end

end A017354.P755638608438722221

namespace A017354

/-- `A017355(n)/A017353(n)` -/
def P755638608438722221.Spec : Prop :=
  ∀ n, P755638608438722221.a n = (A017354 n : ℚ)

end A017354

/-! ## A017354.P10677794293794797302

`A017357(n)/A017355(n)`
-/

namespace A017354.P10677794293794797302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017357 n : ℚ) / (A017355 n : ℚ)

end

end A017354.P10677794293794797302

namespace A017354

/-- `A017357(n)/A017355(n)` -/
def P10677794293794797302.Spec : Prop :=
  ∀ n, P10677794293794797302.a n = (A017354 n : ℚ)

end A017354

/-! ## A017354.P5635203286496222998

`A017358(n)/A017356(n)`
-/

namespace A017354.P5635203286496222998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017358 n : ℚ) / (A017356 n : ℚ)

end

end A017354.P5635203286496222998

namespace A017354

/-- `A017358(n)/A017356(n)` -/
def P5635203286496222998.Spec : Prop :=
  ∀ n, P5635203286496222998.a n = (A017354 n : ℚ)

end A017354

/-! ## A017354.P6941429811577120473

`A017355(n)²/A017356(n)`
-/

namespace A017354.P6941429811577120473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017355 n ^ 2 : ℚ) / (A017356 n : ℚ)

end

end A017354.P6941429811577120473

namespace A017354

/-- `A017355(n)²/A017356(n)` -/
def P6941429811577120473.Spec : Prop :=
  ∀ n, P6941429811577120473.a n = (A017354 n : ℚ)

end A017354

/-! ## A017354.P5609325971409655001

`A157913(n+1)+A016922(n)`
-/

namespace A017354.P5609325971409655001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157913 (n + 1) + A016922 n

end

end A017354.P5609325971409655001

namespace A017354

/-- `A157913(n+1)+A016922(n)` -/
def P5609325971409655001.Spec : Prop :=
  ∀ n, P5609325971409655001.a n = A017354 n

theorem P5609325971409655001.correct : P5609325971409655001.Spec := by
  intro n
  simp only [A017354, Nat.add_sub_cancel, A017354.P5609325971409655001.a, A017354.P6363149355192370715.a, A016922, A016922.P12735287873668454303.a, A157913, A157913.P9302126423739827390.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017354

/-! ## A017354.P11692020008064314367

`A157651(n+1)-A017485(n)`
-/

namespace A017354.P11692020008064314367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157651 (n + 1) - A017485 n

end

end A017354.P11692020008064314367

namespace A017354

/-- `A157651(n+1)-A017485(n)` -/
def P11692020008064314367.Spec : Prop :=
  ∀ n, P11692020008064314367.a n = A017354 n

theorem P11692020008064314367.correct : P11692020008064314367.Spec := by
  intro n
  simp only [A017354, Nat.add_sub_cancel, A017354.P11692020008064314367.a, A017354.P6363149355192370715.a, A017485, A017485.P4370091181196038588.a, A157651, A157651.P17894242889737785624.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017354

/-!
# A017355: a(n) = (10*n + 7)^3.

The programs for A017355, the canonical program `A017355.P12001329552188820011` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017355 has offset 0).

The definition of A017355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^3` (program `A017355.P12001329552188820011`, by `A017355.P12001329552188820011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017355.P12001329552188820011

`(10*n+7)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017355

/-- `(10*n+7)^3` -/
def P12001329552188820011.Spec : Prop :=
  ∀ n, (P12001329552188820011.a n : ℤ) = A017355 n

theorem P12001329552188820011.correct : P12001329552188820011.Spec := by
  intro n
  simp only [A017355]

end A017355

/-! ## A017355.P15564586105635783428

`sqrt(A017358(n))`
-/

namespace A017355.P15564586105635783428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017358 n : ℝ)

end

end A017355.P15564586105635783428

namespace A017355

/-- `sqrt(A017358(n))` -/
def P15564586105635783428.Spec : Prop :=
  ∀ n, P15564586105635783428.a n = (A017355 n : ℝ)

end A017355

/-! ## A017355.P8175506805612441039

`sqrt(A017354(n)^3)`
-/

namespace A017355.P8175506805612441039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017354 n ^ 3 : ℝ)

end

end A017355.P8175506805612441039

namespace A017355

/-- `sqrt(A017354(n)^3)` -/
def P8175506805612441039.Spec : Prop :=
  ∀ n, P8175506805612441039.a n = (A017355 n : ℝ)

end A017355

/-! ## A017355.P9631858009415114244

`A017356(n)/(10*n+7)`
-/

namespace A017355.P9631858009415114244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017356 n : ℚ) / (10 * n + 7 : ℚ)

end

end A017355.P9631858009415114244

namespace A017355

/-- `A017356(n)/(10*n+7)` -/
def P9631858009415114244.Spec : Prop :=
  ∀ n, P9631858009415114244.a n = (A017355 n : ℚ)

end A017355

/-! ## A017355.P3530355784855602892

`A017353(n)*A017354(n)`
-/

namespace A017355.P3530355784855602892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A017354 n

end

end A017355.P3530355784855602892

namespace A017355

/-- `A017353(n)*A017354(n)` -/
def P3530355784855602892.Spec : Prop :=
  ∀ n, P3530355784855602892.a n = A017355 n

theorem P3530355784855602892.correct : P3530355784855602892.Spec := by
  intro n
  simp only [A017355, Nat.add_sub_cancel, A017355.P3530355784855602892.a, A017355.P12001329552188820011.a, A017353, A017353.P13300573628236260796.a, A017354, A017354.P6363149355192370715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017355

/-! ## A017355.P12960225063336538526

`A017357(n)/A017354(n)`
-/

namespace A017355.P12960225063336538526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017357 n : ℚ) / (A017354 n : ℚ)

end

end A017355.P12960225063336538526

namespace A017355

/-- `A017357(n)/A017354(n)` -/
def P12960225063336538526.Spec : Prop :=
  ∀ n, P12960225063336538526.a n = (A017355 n : ℚ)

end A017355

/-! ## A017355.P12009717668703210428

`A017357(n)/A017353(n)²`
-/

namespace A017355.P12009717668703210428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017357 n : ℚ) / (A017353 n ^ 2 : ℚ)

end

end A017355.P12009717668703210428

namespace A017355

/-- `A017357(n)/A017353(n)²` -/
def P12009717668703210428.Spec : Prop :=
  ∀ n, P12009717668703210428.a n = (A017355 n : ℚ)

end A017355

/-! ## A017355.P7232026156734787819

`sqrt(sqrt(A017356(n))*A017356(n))`
-/

namespace A017355.P7232026156734787819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017356 n : ℝ) * (A017356 n : ℝ))

end

end A017355.P7232026156734787819

namespace A017355

/-- `sqrt(sqrt(A017356(n))*A017356(n))` -/
def P7232026156734787819.Spec : Prop :=
  ∀ n, P7232026156734787819.a n = (A017355 n : ℝ)

end A017355

/-! ## A017355.P2063622718396813395

`(A017341(n)+1)*A017353(n)²`
-/

namespace A017355.P2063622718396813395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n + 1) * A017353 n ^ 2

end

end A017355.P2063622718396813395

namespace A017355

/-- `(A017341(n)+1)*A017353(n)²` -/
def P2063622718396813395.Spec : Prop :=
  ∀ n, P2063622718396813395.a n = A017355 n

theorem P2063622718396813395.correct : P2063622718396813395.Spec := by
  intro n
  simp only [A017355, Nat.add_sub_cancel, A017355.P2063622718396813395.a, A017355.P12001329552188820011.a, A017341, A017341.P14977180853961305525.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017355

/-! ## A017355.P676970044029370554

`(A017329(n)+2)*A017353(n)²`
-/

namespace A017355.P676970044029370554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017329 n + 2) * A017353 n ^ 2

end

end A017355.P676970044029370554

namespace A017355

/-- `(A017329(n)+2)*A017353(n)²` -/
def P676970044029370554.Spec : Prop :=
  ∀ n, P676970044029370554.a n = A017355 n

theorem P676970044029370554.correct : P676970044029370554.Spec := by
  intro n
  simp only [A017355, Nat.add_sub_cancel, A017355.P676970044029370554.a, A017355.P12001329552188820011.a, A017329, A017329.P13641332030280969901.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017355

/-! ## A017355.P11462769052237768062

`(2-A017377(n))²*A017353(n)`
-/

namespace A017355.P11462769052237768062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A017377 n) ^ 2 * A017353 n

end

end A017355.P11462769052237768062

namespace A017355

/-- `(2-A017377(n))²*A017353(n)` -/
def P11462769052237768062.Spec : Prop :=
  ∀ n, P11462769052237768062.a n = A017355 n

theorem P11462769052237768062.correct : P11462769052237768062.Spec := by
  intro n
  simp only [A017355, Nat.add_sub_cancel, A017355.P11462769052237768062.a, A017355.P12001329552188820011.a, A017353, A017353.P13300573628236260796.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017355

/-! ## A017355.P7100592821955975530

`A017356(n)/A017361(n)*A017360(n)`
-/

namespace A017355.P7100592821955975530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017356 n : ℚ) / (A017361 n : ℚ) * (A017360 n : ℚ)

end

end A017355.P7100592821955975530

namespace A017355

/-- `A017356(n)/A017361(n)*A017360(n)` -/
def P7100592821955975530.Spec : Prop :=
  ∀ n, P7100592821955975530.a n = (A017355 n : ℚ)

end A017355

/-! ## A017355.P11495956877033550483

`A017360(n)/(A017353(n)*A017356(n))`
-/

namespace A017355.P11495956877033550483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017360 n : ℚ) / (A017353 n * A017356 n : ℚ)

end

end A017355.P11495956877033550483

namespace A017355

/-- `A017360(n)/(A017353(n)*A017356(n))` -/
def P11495956877033550483.Spec : Prop :=
  ∀ n, P11495956877033550483.a n = (A017355 n : ℚ)

end A017355

/-! ## A017355.P3808569519148691912

`A017358(n)/(A017353(n)²*A017353(n))`
-/

namespace A017355.P3808569519148691912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017358 n : ℚ) / (A017353 n ^ 2 * A017353 n : ℚ)

end

end A017355.P3808569519148691912

namespace A017355

/-- `A017358(n)/(A017353(n)²*A017353(n))` -/
def P3808569519148691912.Spec : Prop :=
  ∀ n, P3808569519148691912.a n = (A017355 n : ℚ)

end A017355

/-! ## A017355.P17776343287506168002

`A017353(n)*A160912(n+2)*A017353(n)`
-/

namespace A017355.P17776343287506168002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A160912 (n + 2) * A017353 n

end

end A017355.P17776343287506168002

namespace A017355

/-- `A017353(n)*A160912(n+2)*A017353(n)` -/
def P17776343287506168002.Spec : Prop :=
  ∀ n, P17776343287506168002.a n = A017355 n

end A017355

/-! ## A017355.P14031489555789217856

`A016875(Δ[n²])`
-/

namespace A017355.P14031489555789217856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017355.P14031489555789217856

namespace A017355

/-- `A016875(Δ[n²])` -/
def P14031489555789217856.Spec : Prop :=
  ∀ n, P14031489555789217856.a n = A017355 n

end A017355

/-! ## A017355.P7233557845953023011

`sqrt(A016878(2*n+1))`
-/

namespace A017355.P7233557845953023011
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016878 (2 * n + 1) : ℝ)

end

end A017355.P7233557845953023011

namespace A017355

/-- `sqrt(A016878(2*n+1))` -/
def P7233557845953023011.Spec : Prop :=
  ∀ n, P7233557845953023011.a n = (A017355 n : ℝ)

end A017355

/-! ## A017355.P10929912423642560314

`A017319(2*n+1)/8`
-/

namespace A017355.P10929912423642560314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017319 (2 * n + 1) : ℚ) / 8

end

end A017355.P10929912423642560314

namespace A017355

/-- `A017319(2*n+1)/8` -/
def P10929912423642560314.Spec : Prop :=
  ∀ n, P10929912423642560314.a n = (A017355 n : ℚ)

theorem P10929912423642560314.correct : P10929912423642560314.Spec := by
  intro n
  simp only [A017355, Nat.add_sub_cancel, A017355.P10929912423642560314.a, A017355.P12001329552188820011.a, A017319, A017319.P7214915799351479979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017355

/-! ## A017355.P9767487357255019110

`10*n+7+A001509(2*n+1)`
-/

namespace A017355.P9767487357255019110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℤ) + A001509 (2 * n + 1)

end

end A017355.P9767487357255019110

namespace A017355

/-- `10*n+7+A001509(2*n+1)` -/
def P9767487357255019110.Spec : Prop :=
  ∀ n, P9767487357255019110.a n = A017355 n

theorem P9767487357255019110.correct : P9767487357255019110.Spec := by
  intro n
  simp only [A017355, Nat.add_sub_cancel, A017355.P9767487357255019110.a, A017355.P12001329552188820011.a, A001509, A001509.P5920101036534358201.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017355

/-!
# A017356: a(n) = (10*n+7)^4.

The programs for A017356, the canonical program `A017356.P7854101225273112733` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017356 has offset 0).

The definition of A017356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^4` (program `A017356.P7854101225273112733`, by `A017356.P7854101225273112733.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017356.P7854101225273112733

`(10*n+7)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017356

/-- `(10*n+7)^4` -/
def P7854101225273112733.Spec : Prop :=
  ∀ n, (P7854101225273112733.a n : ℤ) = A017356 n

theorem P7854101225273112733.correct : P7854101225273112733.Spec := by
  intro n
  simp only [A017356]

end A017356

/-! ## A017356.P4163639871217829544

`∩[2*n+1, a(n-1)+5]²²` with `a(0)=2`
-/

namespace A017356.P4163639871217829544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017356.P4163639871217829544

namespace A017356

/-- `∩[2*n+1, a(n-1)+5]²²` -/
def P4163639871217829544.Spec : Prop :=
  ∀ n, (P4163639871217829544.a n : ℤ) = A017356 n

end A017356

/-! ## A017356.P1627842324480749066

`Δ[lcm(2*n+1, 2*n)+n²]²²`
-/

namespace A017356.P1627842324480749066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ^ 2

end

end A017356.P1627842324480749066

namespace A017356

/-- `Δ[lcm(2*n+1, 2*n)+n²]²²` -/
def P1627842324480749066.Spec : Prop :=
  ∀ n, P1627842324480749066.a n = A017356 n

end A017356

/-! ## A017356.P16962045488436504419

`A017354(n)²`
-/

namespace A017356.P16962045488436504419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n ^ 2

end

end A017356.P16962045488436504419

namespace A017356

/-- `A017354(n)²` -/
def P16962045488436504419.Spec : Prop :=
  ∀ n, P16962045488436504419.a n = A017356 n

theorem P16962045488436504419.correct : P16962045488436504419.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P16962045488436504419.a, A017356.P7854101225273112733.a, A017354, A017354.P6363149355192370715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P12966611580380869043

`sqrt(A017360(n))`
-/

namespace A017356.P12966611580380869043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017360 n : ℝ)

end

end A017356.P12966611580380869043

namespace A017356

/-- `sqrt(A017360(n))` -/
def P12966611580380869043.Spec : Prop :=
  ∀ n, P12966611580380869043.a n = (A017356 n : ℝ)

end A017356

/-! ## A017356.P4766908318159726217

`A017353(n)²²`
-/

namespace A017356.P4766908318159726217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n ^ 2) ^ 2

end

end A017356.P4766908318159726217

namespace A017356

/-- `A017353(n)²²` -/
def P4766908318159726217.Spec : Prop :=
  ∀ n, P4766908318159726217.a n = A017356 n

theorem P4766908318159726217.correct : P4766908318159726217.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P4766908318159726217.a, A017356.P7854101225273112733.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P5091276782051514216

`Δ[A168668(n)]²²`
-/

namespace A017356.P5091276782051514216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 2) ^ 2

end

end A017356.P5091276782051514216

namespace A017356

/-- `Δ[A168668(n)]²²` -/
def P5091276782051514216.Spec : Prop :=
  ∀ n, P5091276782051514216.a n = A017356 n

theorem P5091276782051514216.correct : P5091276782051514216.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P5091276782051514216.f1, A017356.P5091276782051514216.a, A017356.P7854101225273112733.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P14039387522470786578

`(A017341(n)+1)²²`
-/

namespace A017356.P14039387522470786578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + 1) ^ 2) ^ 2

end

end A017356.P14039387522470786578

namespace A017356

/-- `(A017341(n)+1)²²` -/
def P14039387522470786578.Spec : Prop :=
  ∀ n, P14039387522470786578.a n = A017356 n

theorem P14039387522470786578.correct : P14039387522470786578.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P14039387522470786578.a, A017356.P7854101225273112733.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P8935793207329552177

`(A017329(n)+2)²²`
-/

namespace A017356.P8935793207329552177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017329 n + 2) ^ 2) ^ 2

end

end A017356.P8935793207329552177

namespace A017356

/-- `(A017329(n)+2)²²` -/
def P8935793207329552177.Spec : Prop :=
  ∀ n, P8935793207329552177.a n = A017356 n

theorem P8935793207329552177.correct : P8935793207329552177.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P8935793207329552177.a, A017356.P7854101225273112733.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P17582322696696299365

`(1-A017365(n))²²`
-/

namespace A017356.P17582322696696299365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017365 n) ^ 2) ^ 2

end

end A017356.P17582322696696299365

namespace A017356

/-- `(1-A017365(n))²²` -/
def P17582322696696299365.Spec : Prop :=
  ∀ n, P17582322696696299365.a n = A017356 n

theorem P17582322696696299365.correct : P17582322696696299365.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P17582322696696299365.a, A017356.P7854101225273112733.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P17913629349888616516

`(A017317(n)+3)²²`
-/

namespace A017356.P17913629349888616516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017317 n + 3) ^ 2) ^ 2

end

end A017356.P17913629349888616516

namespace A017356

/-- `(A017317(n)+3)²²` -/
def P17913629349888616516.Spec : Prop :=
  ∀ n, P17913629349888616516.a n = A017356 n

theorem P17913629349888616516.correct : P17913629349888616516.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P17913629349888616516.a, A017356.P7854101225273112733.a, A017317, A017317.P14631111836214894890.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P9045207312081715243

`(2-A017377(n))²²`
-/

namespace A017356.P9045207312081715243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - A017377 n) ^ 2) ^ 2

end

end A017356.P9045207312081715243

namespace A017356

/-- `(2-A017377(n))²²` -/
def P9045207312081715243.Spec : Prop :=
  ∀ n, P9045207312081715243.a n = A017356 n

theorem P9045207312081715243.correct : P9045207312081715243.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P9045207312081715243.a, A017356.P7854101225273112733.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P10419660322867401585

`(A017245(n)+n)²²`
-/

namespace A017356.P10419660322867401585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017245 n + (n : ℤ)) ^ 2) ^ 2

end

end A017356.P10419660322867401585

namespace A017356

/-- `(A017245(n)+n)²²` -/
def P10419660322867401585.Spec : Prop :=
  ∀ n, P10419660322867401585.a n = A017356 n

theorem P10419660322867401585.correct : P10419660322867401585.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P10419660322867401585.a, A017356.P7854101225273112733.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P10577188910873051945

`(n-A017473(n))²²`
-/

namespace A017356.P10577188910873051945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017473 n) ^ 2) ^ 2

end

end A017356.P10577188910873051945

namespace A017356

/-- `(n-A017473(n))²²` -/
def P10577188910873051945.Spec : Prop :=
  ∀ n, P10577188910873051945.a n = A017356 n

theorem P10577188910873051945.correct : P10577188910873051945.Spec := by
  intro n
  simp only [A017356, Nat.add_sub_cancel, A017356.P10577188910873051945.a, A017356.P7854101225273112733.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017356

/-! ## A017356.P18145168584331891962

`(sqrt(A017342(n))+1)²²`
-/

namespace A017356.P18145168584331891962
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017342 n : ℝ) + 1) ^ 2) ^ 2

end

end A017356.P18145168584331891962

namespace A017356

/-- `(sqrt(A017342(n))+1)²²` -/
def P18145168584331891962.Spec : Prop :=
  ∀ n, P18145168584331891962.a n = (A017356 n : ℝ)

end A017356

/-! ## A017356.P2827606034997037710

`(sqrt(A017330(n))+2)²²`
-/

namespace A017356.P2827606034997037710
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017330 n : ℝ) + 2) ^ 2) ^ 2

end

end A017356.P2827606034997037710

namespace A017356

/-- `(sqrt(A017330(n))+2)²²` -/
def P2827606034997037710.Spec : Prop :=
  ∀ n, P2827606034997037710.a n = (A017356 n : ℝ)

end A017356

/-! ## A017356.P2614189355857528460

`(1-sqrt(A017366(n)))²²`
-/

namespace A017356.P2614189355857528460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 - Real.sqrt (A017366 n : ℝ)) ^ 2) ^ 2

end

end A017356.P2614189355857528460

namespace A017356

/-- `(1-sqrt(A017366(n)))²²` -/
def P2614189355857528460.Spec : Prop :=
  ∀ n, P2614189355857528460.a n = (A017356 n : ℝ)

end A017356

/-! ## A017356.P8494712810326122428

`(2-sqrt(A017378(n)))²²`
-/

namespace A017356.P8494712810326122428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 - Real.sqrt (A017378 n : ℝ)) ^ 2) ^ 2

end

end A017356.P8494712810326122428

namespace A017356

/-- `(2-sqrt(A017378(n)))²²` -/
def P8494712810326122428.Spec : Prop :=
  ∀ n, P8494712810326122428.a n = (A017356 n : ℝ)

end A017356

/-! ## A017356.P12283020180512794912

`(sqrt(A017246(n))+n)²²`
-/

namespace A017356.P12283020180512794912
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017246 n : ℝ) + (n : ℝ)) ^ 2) ^ 2

end

end A017356.P12283020180512794912

namespace A017356

/-- `(sqrt(A017246(n))+n)²²` -/
def P12283020180512794912.Spec : Prop :=
  ∀ n, P12283020180512794912.a n = (A017356 n : ℝ)

end A017356

/-! ## A017356.P6270972252791622887

`(n-sqrt(A017474(n)))²²`
-/

namespace A017356.P6270972252791622887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017474 n : ℝ)) ^ 2) ^ 2

end

end A017356.P6270972252791622887

namespace A017356

/-- `(n-sqrt(A017474(n)))²²` -/
def P6270972252791622887.Spec : Prop :=
  ∀ n, P6270972252791622887.a n = (A017356 n : ℝ)

end A017356

/-!
# A017357: a(n) = (10*n + 7)^5.

The programs for A017357, the canonical program `A017357.P15854384354875850829` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017357 has offset 0).

The definition of A017357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^5` (program `A017357.P15854384354875850829`, by `A017357.P15854384354875850829.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017357.P15854384354875850829

`(10*n+7)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017357

/-- `(10*n+7)^5` -/
def P15854384354875850829.Spec : Prop :=
  ∀ n, (P15854384354875850829.a n : ℤ) = A017357 n

theorem P15854384354875850829.correct : P15854384354875850829.Spec := by
  intro n
  simp only [A017357]

end A017357

/-! ## A017357.P12155446531851079851

`sqrt(A017354(n)^5)`
-/

namespace A017357.P12155446531851079851
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017354 n ^ 5 : ℝ)

end

end A017357.P12155446531851079851

namespace A017357

/-- `sqrt(A017354(n)^5)` -/
def P12155446531851079851.Spec : Prop :=
  ∀ n, P12155446531851079851.a n = (A017357 n : ℝ)

end A017357

/-! ## A017357.P13861548575610579111

`(10*n+7)*A017356(n)`
-/

namespace A017357.P13861548575610579111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℤ) * A017356 n

end

end A017357.P13861548575610579111

namespace A017357

/-- `(10*n+7)*A017356(n)` -/
def P13861548575610579111.Spec : Prop :=
  ∀ n, P13861548575610579111.a n = A017357 n

theorem P13861548575610579111.correct : P13861548575610579111.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P13861548575610579111.a, A017357.P15854384354875850829.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P7628137100638708504

`A017354(n)*A017355(n)`
-/

namespace A017357.P7628137100638708504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n * A017355 n

end

end A017357.P7628137100638708504

namespace A017357

/-- `A017354(n)*A017355(n)` -/
def P7628137100638708504.Spec : Prop :=
  ∀ n, P7628137100638708504.a n = A017357 n

theorem P7628137100638708504.correct : P7628137100638708504.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P7628137100638708504.a, A017357.P15854384354875850829.a, A017354, A017354.P6363149355192370715.a, A017355, A017355.P12001329552188820011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P12796014547597643596

`A017358(n)/A017353(n)`
-/

namespace A017357.P12796014547597643596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017358 n : ℚ) / (A017353 n : ℚ)

end

end A017357.P12796014547597643596

namespace A017357

/-- `A017358(n)/A017353(n)` -/
def P12796014547597643596.Spec : Prop :=
  ∀ n, P12796014547597643596.a n = (A017357 n : ℚ)

end A017357

/-! ## A017357.P11915421740507668835

`A017361(n)/A017356(n)`
-/

namespace A017357.P11915421740507668835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017361 n : ℚ) / (A017356 n : ℚ)

end

end A017357.P11915421740507668835

namespace A017357

/-- `A017361(n)/A017356(n)` -/
def P11915421740507668835.Spec : Prop :=
  ∀ n, P11915421740507668835.a n = (A017357 n : ℚ)

end A017357

/-! ## A017357.P5117465541135554687

`A017353(n)²*A017355(n)`
-/

namespace A017357.P5117465541135554687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n ^ 2 * A017355 n

end

end A017357.P5117465541135554687

namespace A017357

/-- `A017353(n)²*A017355(n)` -/
def P5117465541135554687.Spec : Prop :=
  ∀ n, P5117465541135554687.a n = A017357 n

theorem P5117465541135554687.correct : P5117465541135554687.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P5117465541135554687.a, A017357.P15854384354875850829.a, A017353, A017353.P13300573628236260796.a, A017355, A017355.P12001329552188820011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P16019213611685095214

`A017354(n)²*A017353(n)`
-/

namespace A017357.P16019213611685095214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n ^ 2 * A017353 n

end

end A017357.P16019213611685095214

namespace A017357

/-- `A017354(n)²*A017353(n)` -/
def P16019213611685095214.Spec : Prop :=
  ∀ n, P16019213611685095214.a n = A017357 n

theorem P16019213611685095214.correct : P16019213611685095214.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P16019213611685095214.a, A017357.P15854384354875850829.a, A017353, A017353.P13300573628236260796.a, A017354, A017354.P6363149355192370715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P15157615474205312177

`A017356(n)²/A017355(n)`
-/

namespace A017357.P15157615474205312177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017356 n ^ 2 : ℚ) / (A017355 n : ℚ)

end

end A017357.P15157615474205312177

namespace A017357

/-- `A017356(n)²/A017355(n)` -/
def P15157615474205312177.Spec : Prop :=
  ∀ n, P15157615474205312177.a n = (A017357 n : ℚ)

end A017357

/-! ## A017357.P8103539874190571040

`A017361(n)/A017353(n)²²`
-/

namespace A017357.P8103539874190571040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017361 n : ℚ) / ((A017353 n ^ 2) ^ 2 : ℚ)

end

end A017357.P8103539874190571040

namespace A017357

/-- `A017361(n)/A017353(n)²²` -/
def P8103539874190571040.Spec : Prop :=
  ∀ n, P8103539874190571040.a n = (A017357 n : ℚ)

end A017357

/-! ## A017357.P1162078562671234216

`(2-A017377(n))²*A017355(n)`
-/

namespace A017357.P1162078562671234216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A017377 n) ^ 2 * A017355 n

end

end A017357.P1162078562671234216

namespace A017357

/-- `(2-A017377(n))²*A017355(n)` -/
def P1162078562671234216.Spec : Prop :=
  ∀ n, P1162078562671234216.a n = A017357 n

theorem P1162078562671234216.correct : P1162078562671234216.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P1162078562671234216.a, A017357.P15854384354875850829.a, A017355, A017355.P12001329552188820011.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P6190421611841636402

`A017353(n)/A017356(n)*A017360(n)`
-/

namespace A017357.P6190421611841636402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017353 n : ℚ) / (A017356 n : ℚ) * (A017360 n : ℚ)

end

end A017357.P6190421611841636402

namespace A017357

/-- `A017353(n)/A017356(n)*A017360(n)` -/
def P6190421611841636402.Spec : Prop :=
  ∀ n, P6190421611841636402.a n = (A017357 n : ℚ)

end A017357

/-! ## A017357.P4095851580003703133

`A017356(n)*A160912(n+2)`
-/

namespace A017357.P4095851580003703133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017356 n * A160912 (n + 2)

end

end A017357.P4095851580003703133

namespace A017357

/-- `A017356(n)*A160912(n+2)` -/
def P4095851580003703133.Spec : Prop :=
  ∀ n, P4095851580003703133.a n = A017357 n

end A017357

/-! ## A017357.P4663510894426338405

`A016877(Δ[n²])`
-/

namespace A017357.P4663510894426338405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017357.P4663510894426338405

namespace A017357

/-- `A016877(Δ[n²])` -/
def P4663510894426338405.Spec : Prop :=
  ∀ n, P4663510894426338405.a n = A017357 n

end A017357

/-! ## A017357.P3350509408676725882

`(10*n+7)*A016876(2*n+1)`
-/

namespace A017357.P3350509408676725882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℤ) * A016876 (2 * n + 1)

end

end A017357.P3350509408676725882

namespace A017357

/-- `(10*n+7)*A016876(2*n+1)` -/
def P3350509408676725882.Spec : Prop :=
  ∀ n, P3350509408676725882.a n = A017357 n

theorem P3350509408676725882.correct : P3350509408676725882.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P3350509408676725882.a, A017357.P15854384354875850829.a, A016876, A016876.P3444311806117056528.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P2248880319570090435

`A016878(2*n+1)/(10*n+7)`
-/

namespace A017357.P2248880319570090435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016878 (2 * n + 1) : ℚ) / (10 * n + 7 : ℚ)

end

end A017357.P2248880319570090435

namespace A017357

/-- `A016878(2*n+1)/(10*n+7)` -/
def P2248880319570090435.Spec : Prop :=
  ∀ n, P2248880319570090435.a n = (A017357 n : ℚ)

theorem P2248880319570090435.correct : P2248880319570090435.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P2248880319570090435.a, A017357.P15854384354875850829.a, A016878, A016878.P5221297515916649507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P1291581859745182605

`(10*n+7)²*A016875(2*n+1)`
-/

namespace A017357.P1291581859745182605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 7) ^ 2 : ℤ) * A016875 (2 * n + 1)

end

end A017357.P1291581859745182605

namespace A017357

/-- `(10*n+7)²*A016875(2*n+1)` -/
def P1291581859745182605.Spec : Prop :=
  ∀ n, P1291581859745182605.a n = A017357 n

theorem P1291581859745182605.correct : P1291581859745182605.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P1291581859745182605.a, A017357.P15854384354875850829.a, A016875, A016875.P10633171972771459334.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P16919846820211039987

`A016879(2*n+1)/(10*n+7)²`
-/

namespace A017357.P16919846820211039987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016879 (2 * n + 1) : ℚ) / ((10 * n + 7) ^ 2 : ℚ)

end

end A017357.P16919846820211039987

namespace A017357

/-- `A016879(2*n+1)/(10*n+7)²` -/
def P16919846820211039987.Spec : Prop :=
  ∀ n, P16919846820211039987.a n = (A017357 n : ℚ)

theorem P16919846820211039987.correct : P16919846820211039987.Spec := by
  intro n
  simp only [A017357, Nat.add_sub_cancel, A017357.P16919846820211039987.a, A017357.P15854384354875850829.a, A016879, A016879.P9881379482011814406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017357

/-! ## A017357.P4175517197727610845

`abs((n+3-A016957(Δ[n²])+n)^5)`
-/

namespace A017357.P4175517197727610845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 3 : ℤ) - A016957 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)) ^ 5|

end

end A017357.P4175517197727610845

namespace A017357

/-- `abs((n+3-A016957(Δ[n²])+n)^5)` -/
def P4175517197727610845.Spec : Prop :=
  ∀ n, P4175517197727610845.a n = A017357 n

end A017357

/-!
# A017358: a(n) = (10*n + 7)^6.

The programs for A017358, the canonical program `A017358.P15841104271664137065` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017358 has offset 0).

The definition of A017358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^6` (program `A017358.P15841104271664137065`, by `A017358.P15841104271664137065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017358.P15841104271664137065

`(10*n+7)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017358

/-- `(10*n+7)^6` -/
def P15841104271664137065.Spec : Prop :=
  ∀ n, (P15841104271664137065.a n : ℤ) = A017358 n

theorem P15841104271664137065.correct : P15841104271664137065.Spec := by
  intro n
  simp only [A017358]

end A017358

/-! ## A017358.P2413625738567896493

`A017355(n)²`
-/

namespace A017358.P2413625738567896493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n ^ 2

end

end A017358.P2413625738567896493

namespace A017358

/-- `A017355(n)²` -/
def P2413625738567896493.Spec : Prop :=
  ∀ n, P2413625738567896493.a n = A017358 n

theorem P2413625738567896493.correct : P2413625738567896493.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P2413625738567896493.a, A017358.P15841104271664137065.a, A017355, A017355.P12001329552188820011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P13493550272943946725

`sqrt(A017356(n)^3)`
-/

namespace A017358.P13493550272943946725
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017356 n ^ 3 : ℝ)

end

end A017358.P13493550272943946725

namespace A017358

/-- `sqrt(A017356(n)^3)` -/
def P13493550272943946725.Spec : Prop :=
  ∀ n, P13493550272943946725.a n = (A017358 n : ℝ)

end A017358

/-! ## A017358.P11557808101892734838

`(Δ[A168668(n)]^3)²`
-/

namespace A017358.P11557808101892734838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017358.P11557808101892734838

namespace A017358

/-- `(Δ[A168668(n)]^3)²` -/
def P11557808101892734838.Spec : Prop :=
  ∀ n, P11557808101892734838.a n = A017358 n

theorem P11557808101892734838.correct : P11557808101892734838.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P11557808101892734838.f1, A017358.P11557808101892734838.a, A017358.P15841104271664137065.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P7939385866542770355

`A017353(n)*A017357(n)`
-/

namespace A017358.P7939385866542770355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A017357 n

end

end A017358.P7939385866542770355

namespace A017358

/-- `A017353(n)*A017357(n)` -/
def P7939385866542770355.Spec : Prop :=
  ∀ n, P7939385866542770355.a n = A017358 n

theorem P7939385866542770355.correct : P7939385866542770355.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P7939385866542770355.a, A017358.P15841104271664137065.a, A017353, A017353.P13300573628236260796.a, A017357, A017357.P15854384354875850829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P15625224148892300483

`A017354(n)*A017356(n)`
-/

namespace A017358.P15625224148892300483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n * A017356 n

end

end A017358.P15625224148892300483

namespace A017358

/-- `A017354(n)*A017356(n)` -/
def P15625224148892300483.Spec : Prop :=
  ∀ n, P15625224148892300483.a n = A017358 n

theorem P15625224148892300483.correct : P15625224148892300483.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P15625224148892300483.a, A017358.P15841104271664137065.a, A017354, A017354.P6363149355192370715.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P13300680508956183776

`(A017353(n)*A017354(n))²`
-/

namespace A017358.P13300680508956183776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n * A017354 n) ^ 2

end

end A017358.P13300680508956183776

namespace A017358

/-- `(A017353(n)*A017354(n))²` -/
def P13300680508956183776.Spec : Prop :=
  ∀ n, P13300680508956183776.a n = A017358 n

theorem P13300680508956183776.correct : P13300680508956183776.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P13300680508956183776.a, A017358.P15841104271664137065.a, A017353, A017353.P13300573628236260796.a, A017354, A017354.P6363149355192370715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P16355480554796106405

`A017353(n)²*A017356(n)`
-/

namespace A017358.P16355480554796106405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n ^ 2 * A017356 n

end

end A017358.P16355480554796106405

namespace A017358

/-- `A017353(n)²*A017356(n)` -/
def P16355480554796106405.Spec : Prop :=
  ∀ n, P16355480554796106405.a n = A017358 n

theorem P16355480554796106405.correct : P16355480554796106405.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P16355480554796106405.a, A017358.P15841104271664137065.a, A017353, A017353.P13300573628236260796.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P3313600879780871872

`(A017357(n)/A017354(n))²`
-/

namespace A017358.P3313600879780871872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017357 n : ℚ) / (A017354 n : ℚ)) ^ 2

end

end A017358.P3313600879780871872

namespace A017358

/-- `(A017357(n)/A017354(n))²` -/
def P3313600879780871872.Spec : Prop :=
  ∀ n, P3313600879780871872.a n = (A017358 n : ℚ)

end A017358

/-! ## A017358.P18343329116253293258

`A017360(n)/A017353(n)²`
-/

namespace A017358.P18343329116253293258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017360 n : ℚ) / (A017353 n ^ 2 : ℚ)

end

end A017358.P18343329116253293258

namespace A017358

/-- `A017360(n)/A017353(n)²` -/
def P18343329116253293258.Spec : Prop :=
  ∀ n, P18343329116253293258.a n = (A017358 n : ℚ)

end A017358

/-! ## A017358.P15734022674351460857

`(A017341(n)+1)²*A017356(n)`
-/

namespace A017358.P15734022674351460857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n + 1) ^ 2 * A017356 n

end

end A017358.P15734022674351460857

namespace A017358

/-- `(A017341(n)+1)²*A017356(n)` -/
def P15734022674351460857.Spec : Prop :=
  ∀ n, P15734022674351460857.a n = A017358 n

theorem P15734022674351460857.correct : P15734022674351460857.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P15734022674351460857.a, A017358.P15841104271664137065.a, A017341, A017341.P14977180853961305525.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P14367752601342783464

`A017353(n)/A017356(n)*A017361(n)`
-/

namespace A017358.P14367752601342783464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017353 n : ℚ) / (A017356 n : ℚ) * (A017361 n : ℚ)

end

end A017358.P14367752601342783464

namespace A017358

/-- `A017353(n)/A017356(n)*A017361(n)` -/
def P14367752601342783464.Spec : Prop :=
  ∀ n, P14367752601342783464.a n = (A017358 n : ℚ)

end A017358

/-! ## A017358.P10382381806889821464

`(Δ[A273982(n+1)]^3)²`
-/

namespace A017358.P10382381806889821464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017358.P10382381806889821464

namespace A017358

/-- `(Δ[A273982(n+1)]^3)²` -/
def P10382381806889821464.Spec : Prop :=
  ∀ n, P10382381806889821464.a n = A017358 n

theorem P10382381806889821464.correct : P10382381806889821464.Spec := by
  intro n
  simp only [A017358, Nat.add_sub_cancel, A017358.P10382381806889821464.f1, A017358.P10382381806889821464.a, A017358.P15841104271664137065.a, A273982, A273982.P14215871611992905758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017358

/-! ## A017358.P18211259354281220890

`A160912(n+2)²*A017356(n)`
-/

namespace A017358.P18211259354281220890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 2) ^ 2 * A017356 n

end

end A017358.P18211259354281220890

namespace A017358

/-- `A160912(n+2)²*A017356(n)` -/
def P18211259354281220890.Spec : Prop :=
  ∀ n, P18211259354281220890.a n = A017358 n

end A017358

/-! ## A017358.P16262168862516757528

`A017360(n)/A160912(n+2)²`
-/

namespace A017358.P16262168862516757528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017360 n : ℚ) / (A160912 (n + 2) ^ 2 : ℚ)

end

end A017358.P16262168862516757528

namespace A017358

/-- `A017360(n)/A160912(n+2)²` -/
def P16262168862516757528.Spec : Prop :=
  ∀ n, P16262168862516757528.a n = (A017358 n : ℚ)

end A017358

/-! ## A017358.P7583655311802951362

`(Δ[A308600(n+3)]^3)²`
-/

namespace A017358.P7583655311802951362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308600 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017358.P7583655311802951362

namespace A017358

/-- `(Δ[A308600(n+3)]^3)²` -/
def P7583655311802951362.Spec : Prop :=
  ∀ n, P7583655311802951362.a n = A017358 n

end A017358

/-! ## A017358.P4603885268762134282

`A016878(Δ[n²])`
-/

namespace A017358.P4603885268762134282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017358.P4603885268762134282

namespace A017358

/-- `A016878(Δ[n²])` -/
def P4603885268762134282.Spec : Prop :=
  ∀ n, P4603885268762134282.a n = A017358 n

end A017358

/-! ## A017358.P15360457940634383581

`A016875(Δ[n²])²`
-/

namespace A017358.P15360457940634383581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017358.P15360457940634383581

namespace A017358

/-- `A016875(Δ[n²])²` -/
def P15360457940634383581.Spec : Prop :=
  ∀ n, P15360457940634383581.a n = A017358 n

end A017358

/-!
# A017359: a(n) = (10*n + 7)^7.

The programs for A017359, the canonical program `A017359.P6753851652387099392` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017359 has offset 0).

The definition of A017359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^7` (program `A017359.P6753851652387099392`, by `A017359.P6753851652387099392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017359.P6753851652387099392

`(10*n+7)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017359

/-- `(10*n+7)^7` -/
def P6753851652387099392.Spec : Prop :=
  ∀ n, (P6753851652387099392.a n : ℤ) = A017359 n

theorem P6753851652387099392.correct : P6753851652387099392.Spec := by
  intro n
  simp only [A017359]

end A017359

/-! ## A017359.P13093271559968598099

`A017360(n)/(10*n+7)`
-/

namespace A017359.P13093271559968598099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017360 n : ℚ) / (10 * n + 7 : ℚ)

end

end A017359.P13093271559968598099

namespace A017359

/-- `A017360(n)/(10*n+7)` -/
def P13093271559968598099.Spec : Prop :=
  ∀ n, P13093271559968598099.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P17991672758433664512

`A017353(n)*A017358(n)`
-/

namespace A017359.P17991672758433664512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A017358 n

end

end A017359.P17991672758433664512

namespace A017359

/-- `A017353(n)*A017358(n)` -/
def P17991672758433664512.Spec : Prop :=
  ∀ n, P17991672758433664512.a n = A017359 n

theorem P17991672758433664512.correct : P17991672758433664512.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P17991672758433664512.a, A017359.P6753851652387099392.a, A017353, A017353.P13300573628236260796.a, A017358, A017358.P15841104271664137065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P10609931872499116310

`A017354(n)*A017357(n)`
-/

namespace A017359.P10609931872499116310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n * A017357 n

end

end A017359.P10609931872499116310

namespace A017359

/-- `A017354(n)*A017357(n)` -/
def P10609931872499116310.Spec : Prop :=
  ∀ n, P10609931872499116310.a n = A017359 n

theorem P10609931872499116310.correct : P10609931872499116310.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P10609931872499116310.a, A017359.P6753851652387099392.a, A017354, A017354.P6363149355192370715.a, A017357, A017357.P15854384354875850829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P15526658202770326765

`A017355(n)*A017356(n)`
-/

namespace A017359.P15526658202770326765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n * A017356 n

end

end A017359.P15526658202770326765

namespace A017359

/-- `A017355(n)*A017356(n)` -/
def P15526658202770326765.Spec : Prop :=
  ∀ n, P15526658202770326765.a n = A017359 n

theorem P15526658202770326765.correct : P15526658202770326765.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P15526658202770326765.a, A017359.P6753851652387099392.a, A017355, A017355.P12001329552188820011.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P128408605660109036

`A017353(n)²*A017357(n)`
-/

namespace A017359.P128408605660109036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n ^ 2 * A017357 n

end

end A017359.P128408605660109036

namespace A017359

/-- `A017353(n)²*A017357(n)` -/
def P128408605660109036.Spec : Prop :=
  ∀ n, P128408605660109036.a n = A017359 n

theorem P128408605660109036.correct : P128408605660109036.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P128408605660109036.a, A017359.P6753851652387099392.a, A017353, A017353.P13300573628236260796.a, A017357, A017357.P15854384354875850829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P1175620354099217384

`A017354(n)²*A017355(n)`
-/

namespace A017359.P1175620354099217384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n ^ 2 * A017355 n

end

end A017359.P1175620354099217384

namespace A017359

/-- `A017354(n)²*A017355(n)` -/
def P1175620354099217384.Spec : Prop :=
  ∀ n, P1175620354099217384.a n = A017359 n

theorem P1175620354099217384.correct : P1175620354099217384.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P1175620354099217384.a, A017359.P6753851652387099392.a, A017354, A017354.P6363149355192370715.a, A017355, A017355.P12001329552188820011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P5172712528652947764

`A017355(n)²*A017353(n)`
-/

namespace A017359.P5172712528652947764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n ^ 2 * A017353 n

end

end A017359.P5172712528652947764

namespace A017359

/-- `A017355(n)²*A017353(n)` -/
def P5172712528652947764.Spec : Prop :=
  ∀ n, P5172712528652947764.a n = A017359 n

theorem P5172712528652947764.correct : P5172712528652947764.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P5172712528652947764.a, A017359.P6753851652387099392.a, A017353, A017353.P13300573628236260796.a, A017355, A017355.P12001329552188820011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P2861850429145347396

`A017356(n)²/A017353(n)`
-/

namespace A017359.P2861850429145347396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017356 n ^ 2 : ℚ) / (A017353 n : ℚ)

end

end A017359.P2861850429145347396

namespace A017359

/-- `A017356(n)²/A017353(n)` -/
def P2861850429145347396.Spec : Prop :=
  ∀ n, P2861850429145347396.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P913596439269226417

`A017361(n)/A017353(n)²`
-/

namespace A017359.P913596439269226417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017361 n : ℚ) / (A017353 n ^ 2 : ℚ)

end

end A017359.P913596439269226417

namespace A017359

/-- `A017361(n)/A017353(n)²` -/
def P913596439269226417.Spec : Prop :=
  ∀ n, P913596439269226417.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P6654144697149757364

`A017354(n)²²/A017353(n)`
-/

namespace A017359.P6654144697149757364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017354 n ^ 2) ^ 2 : ℚ) / (A017353 n : ℚ)

end

end A017359.P6654144697149757364

namespace A017359

/-- `A017354(n)²²/A017353(n)` -/
def P6654144697149757364.Spec : Prop :=
  ∀ n, P6654144697149757364.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P9607528248381914543

`A017356(n)²/(A017341(n)+1)`
-/

namespace A017359.P9607528248381914543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017356 n ^ 2 : ℚ) / (A017341 n + 1 : ℚ)

end

end A017359.P9607528248381914543

namespace A017359

/-- `A017356(n)²/(A017341(n)+1)` -/
def P9607528248381914543.Spec : Prop :=
  ∀ n, P9607528248381914543.a n = (A017359 n : ℚ)

theorem P9607528248381914543.correct : P9607528248381914543.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P9607528248381914543.a, A017359.P6753851652387099392.a, A017341, A017341.P14977180853961305525.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P5931973898086883536

`(A017377(n)-2)*A017355(n)²`
-/

namespace A017359.P5931973898086883536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n - 2) * A017355 n ^ 2

end

end A017359.P5931973898086883536

namespace A017359

/-- `(A017377(n)-2)*A017355(n)²` -/
def P5931973898086883536.Spec : Prop :=
  ∀ n, P5931973898086883536.a n = A017359 n

theorem P5931973898086883536.correct : P5931973898086883536.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P5931973898086883536.a, A017359.P6753851652387099392.a, A017355, A017355.P12001329552188820011.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P4464362597536549421

`A017357(n)/A017355(n)*A017357(n)`
-/

namespace A017359.P4464362597536549421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017357 n : ℚ) / (A017355 n : ℚ) * (A017357 n : ℚ)

end

end A017359.P4464362597536549421

namespace A017359

/-- `A017357(n)/A017355(n)*A017357(n)` -/
def P4464362597536549421.Spec : Prop :=
  ∀ n, P4464362597536549421.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P16467310108657114945

`A017360(n)/A017361(n)*A017360(n)`
-/

namespace A017359.P16467310108657114945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017360 n : ℚ) / (A017361 n : ℚ) * (A017360 n : ℚ)

end

end A017359.P16467310108657114945

namespace A017359

/-- `A017360(n)/A017361(n)*A017360(n)` -/
def P16467310108657114945.Spec : Prop :=
  ∀ n, P16467310108657114945.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P6436149835969474389

`A017356(n)²/A160912(n+2)`
-/

namespace A017359.P6436149835969474389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017356 n ^ 2 : ℚ) / (A160912 (n + 2) : ℚ)

end

end A017359.P6436149835969474389

namespace A017359

/-- `A017356(n)²/A160912(n+2)` -/
def P6436149835969474389.Spec : Prop :=
  ∀ n, P6436149835969474389.a n = (A017359 n : ℚ)

end A017359

/-! ## A017359.P17958549127046123493

`A016879(Δ[n²])`
-/

namespace A017359.P17958549127046123493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016879 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017359.P17958549127046123493

namespace A017359

/-- `A016879(Δ[n²])` -/
def P17958549127046123493.Spec : Prop :=
  ∀ n, P17958549127046123493.a n = A017359 n

end A017359

/-! ## A017359.P12715849639785999141

`(10*n+7)*A016878(2*n+1)`
-/

namespace A017359.P12715849639785999141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 7 : ℤ) * A016878 (2 * n + 1)

end

end A017359.P12715849639785999141

namespace A017359

/-- `(10*n+7)*A016878(2*n+1)` -/
def P12715849639785999141.Spec : Prop :=
  ∀ n, P12715849639785999141.a n = A017359 n

theorem P12715849639785999141.correct : P12715849639785999141.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P12715849639785999141.a, A017359.P6753851652387099392.a, A016878, A016878.P5221297515916649507.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-! ## A017359.P8814947322169549576

`A016880(2*n+1)/(10*n+7)`
-/

namespace A017359.P8814947322169549576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016880 (2 * n + 1) : ℚ) / (10 * n + 7 : ℚ)

end

end A017359.P8814947322169549576

namespace A017359

/-- `A016880(2*n+1)/(10*n+7)` -/
def P8814947322169549576.Spec : Prop :=
  ∀ n, P8814947322169549576.a n = (A017359 n : ℚ)

theorem P8814947322169549576.correct : P8814947322169549576.Spec := by
  intro n
  simp only [A017359, Nat.add_sub_cancel, A017359.P8814947322169549576.a, A017359.P6753851652387099392.a, A016880, A016880.P10254929196614950629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017359

/-!
# A017360: a(n) = (10*n + 7)^8.

The programs for A017360, the canonical program `A017360.P13812551050674271953` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017360 has offset 0).

The definition of A017360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^8` (program `A017360.P13812551050674271953`, by `A017360.P13812551050674271953.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017360.P13812551050674271953

`(10*n+7)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017360

/-- `(10*n+7)^8` -/
def P13812551050674271953.Spec : Prop :=
  ∀ n, (P13812551050674271953.a n : ℤ) = A017360 n

theorem P13812551050674271953.correct : P13812551050674271953.Spec := by
  intro n
  simp only [A017360]

end A017360

/-! ## A017360.P252315675723832963

`(Δ[lcm(2*n+1, 2*n)]+2*n+1)²²²`
-/

namespace A017360.P252315675723832963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017360.P252315675723832963

namespace A017360

/-- `(Δ[lcm(2*n+1, 2*n)]+2*n+1)²²²` -/
def P252315675723832963.Spec : Prop :=
  ∀ n, P252315675723832963.a n = A017360 n

end A017360

/-! ## A017360.P3419451995508454188

`A017356(n)²`
-/

namespace A017360.P3419451995508454188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017356 n ^ 2

end

end A017360.P3419451995508454188

namespace A017360

/-- `A017356(n)²` -/
def P3419451995508454188.Spec : Prop :=
  ∀ n, P3419451995508454188.a n = A017360 n

theorem P3419451995508454188.correct : P3419451995508454188.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P3419451995508454188.a, A017360.P13812551050674271953.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P1319519921232945815

`A017354(n)²²`
-/

namespace A017360.P1319519921232945815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017354 n ^ 2) ^ 2

end

end A017360.P1319519921232945815

namespace A017360

/-- `A017354(n)²²` -/
def P1319519921232945815.Spec : Prop :=
  ∀ n, P1319519921232945815.a n = A017360 n

theorem P1319519921232945815.correct : P1319519921232945815.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P1319519921232945815.a, A017360.P13812551050674271953.a, A017354, A017354.P6363149355192370715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P11358791820599337834

`(A017353(n)^4)²`
-/

namespace A017360.P11358791820599337834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n ^ 4) ^ 2

end

end A017360.P11358791820599337834

namespace A017360

/-- `(A017353(n)^4)²` -/
def P11358791820599337834.Spec : Prop :=
  ∀ n, P11358791820599337834.a n = A017360 n

theorem P11358791820599337834.correct : P11358791820599337834.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P11358791820599337834.a, A017360.P13812551050674271953.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P18272510560553743284

`Δ[A168668(n)]²²²`
-/

namespace A017360.P18272510560553743284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017360.P18272510560553743284

namespace A017360

/-- `Δ[A168668(n)]²²²` -/
def P18272510560553743284.Spec : Prop :=
  ∀ n, P18272510560553743284.a n = A017360 n

theorem P18272510560553743284.correct : P18272510560553743284.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P18272510560553743284.f1, A017360.P18272510560553743284.a, A017360.P13812551050674271953.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P14334043502433396056

`(A017341(n)+1)²²²`
-/

namespace A017360.P14334043502433396056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017341 n + 1) ^ 2) ^ 2) ^ 2

end

end A017360.P14334043502433396056

namespace A017360

/-- `(A017341(n)+1)²²²` -/
def P14334043502433396056.Spec : Prop :=
  ∀ n, P14334043502433396056.a n = A017360 n

theorem P14334043502433396056.correct : P14334043502433396056.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P14334043502433396056.a, A017360.P13812551050674271953.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P8037581019107471470

`(A017329(n)+2)²²²`
-/

namespace A017360.P8037581019107471470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017329 n + 2) ^ 2) ^ 2) ^ 2

end

end A017360.P8037581019107471470

namespace A017360

/-- `(A017329(n)+2)²²²` -/
def P8037581019107471470.Spec : Prop :=
  ∀ n, P8037581019107471470.a n = A017360 n

theorem P8037581019107471470.correct : P8037581019107471470.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P8037581019107471470.a, A017360.P13812551050674271953.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P6941254936525245278

`(1-A017365(n))²²²`
-/

namespace A017360.P6941254936525245278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017365 n) ^ 2) ^ 2) ^ 2

end

end A017360.P6941254936525245278

namespace A017360

/-- `(1-A017365(n))²²²` -/
def P6941254936525245278.Spec : Prop :=
  ∀ n, P6941254936525245278.a n = A017360 n

theorem P6941254936525245278.correct : P6941254936525245278.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P6941254936525245278.a, A017360.P13812551050674271953.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P15985716822960192975

`(2-A017377(n))²²²`
-/

namespace A017360.P15985716822960192975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A017377 n) ^ 2) ^ 2) ^ 2

end

end A017360.P15985716822960192975

namespace A017360

/-- `(2-A017377(n))²²²` -/
def P15985716822960192975.Spec : Prop :=
  ∀ n, P15985716822960192975.a n = A017360 n

theorem P15985716822960192975.correct : P15985716822960192975.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P15985716822960192975.a, A017360.P13812551050674271953.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P3850403711159812378

`(A017245(n)+n)²²²`
-/

namespace A017360.P3850403711159812378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017245 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017360.P3850403711159812378

namespace A017360

/-- `(A017245(n)+n)²²²` -/
def P3850403711159812378.Spec : Prop :=
  ∀ n, P3850403711159812378.a n = A017360 n

theorem P3850403711159812378.correct : P3850403711159812378.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P3850403711159812378.a, A017360.P13812551050674271953.a, A017245, A017245.P13986592314876826789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P7978854251561449871

`(n-A017473(n))²²²`
-/

namespace A017360.P7978854251561449871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017473 n) ^ 2) ^ 2) ^ 2

end

end A017360.P7978854251561449871

namespace A017360

/-- `(n-A017473(n))²²²` -/
def P7978854251561449871.Spec : Prop :=
  ∀ n, P7978854251561449871.a n = A017360 n

theorem P7978854251561449871.correct : P7978854251561449871.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P7978854251561449871.a, A017360.P13812551050674271953.a, A017473, A017473.P6794540674081733570.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P2983958427685080427

`(8*C(A016897(n), 2)+1)²²`
-/

namespace A017360.P2983958427685080427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((8 * Nat.choose (A016897 n).toNat 2 + 1) ^ 2) ^ 2

end

end A017360.P2983958427685080427

namespace A017360

/-- `(8*C(A016897(n), 2)+1)²²` -/
def P2983958427685080427.Spec : Prop :=
  ∀ n, (P2983958427685080427.a n : ℤ) = A017360 n

end A017360

/-! ## A017360.P164751549440912490

`A017354(n)*A017358(n)`
-/

namespace A017360.P164751549440912490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017354 n * A017358 n

end

end A017360.P164751549440912490

namespace A017360

/-- `A017354(n)*A017358(n)` -/
def P164751549440912490.Spec : Prop :=
  ∀ n, P164751549440912490.a n = A017360 n

theorem P164751549440912490.correct : P164751549440912490.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P164751549440912490.a, A017360.P13812551050674271953.a, A017354, A017354.P6363149355192370715.a, A017358, A017358.P15841104271664137065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P3127970815429957332

`A017355(n)*A017357(n)`
-/

namespace A017360.P3127970815429957332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n * A017357 n

end

end A017360.P3127970815429957332

namespace A017360

/-- `A017355(n)*A017357(n)` -/
def P3127970815429957332.Spec : Prop :=
  ∀ n, P3127970815429957332.a n = A017360 n

theorem P3127970815429957332.correct : P3127970815429957332.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P3127970815429957332.a, A017360.P13812551050674271953.a, A017355, A017355.P12001329552188820011.a, A017357, A017357.P15854384354875850829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P17938409010438748414

`A017361(n)/A017353(n)`
-/

namespace A017360.P17938409010438748414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017361 n : ℚ) / (A017353 n : ℚ)

end

end A017360.P17938409010438748414

namespace A017360

/-- `A017361(n)/A017353(n)` -/
def P17938409010438748414.Spec : Prop :=
  ∀ n, P17938409010438748414.a n = (A017360 n : ℚ)

end A017360

/-! ## A017360.P11206881477957636045

`(A005843(n)+A004771(n))²²²`
-/

namespace A017360.P11206881477957636045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A005843 n + A004771 n) ^ 2) ^ 2) ^ 2

end

end A017360.P11206881477957636045

namespace A017360

/-- `(A005843(n)+A004771(n))²²²` -/
def P11206881477957636045.Spec : Prop :=
  ∀ n, P11206881477957636045.a n = A017360 n

theorem P11206881477957636045.correct : P11206881477957636045.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P11206881477957636045.a, A017360.P13812551050674271953.a, A004771, A004771.P15562682025386998074.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-! ## A017360.P17281311229339980819

`A160912(n+2)²²²`
-/

namespace A017360.P17281311229339980819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A160912 (n + 2) ^ 2) ^ 2) ^ 2

end

end A017360.P17281311229339980819

namespace A017360

/-- `A160912(n+2)²²²` -/
def P17281311229339980819.Spec : Prop :=
  ∀ n, P17281311229339980819.a n = A017360 n

end A017360

/-! ## A017360.P2348889045210408356

`Δ[A273982(n+1)]²²²`
-/

namespace A017360.P2348889045210408356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017360.P2348889045210408356

namespace A017360

/-- `Δ[A273982(n+1)]²²²` -/
def P2348889045210408356.Spec : Prop :=
  ∀ n, P2348889045210408356.a n = A017360 n

theorem P2348889045210408356.correct : P2348889045210408356.Spec := by
  intro n
  simp only [A017360, Nat.add_sub_cancel, A017360.P2348889045210408356.f1, A017360.P2348889045210408356.a, A017360.P13812551050674271953.a, A273982, A273982.P14215871611992905758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017360

/-!
# A017361: a(n) = (10*n + 7)^9.

The programs for A017361, the canonical program `A017361.P12653374592131878113` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017361 has offset 0).

The definition of A017361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+7)^9` (program `A017361.P12653374592131878113`, by `A017361.P12653374592131878113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017361.P12653374592131878113

`(10*n+7)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017361

/-- `(10*n+7)^9` -/
def P12653374592131878113.Spec : Prop :=
  ∀ n, (P12653374592131878113.a n : ℤ) = A017361 n

theorem P12653374592131878113.correct : P12653374592131878113.Spec := by
  intro n
  simp only [A017361]

end A017361

/-! ## A017361.P1351353719100925891

`sqrt(A017358(n)^3)`
-/

namespace A017361.P1351353719100925891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017358 n ^ 3 : ℝ)

end

end A017361.P1351353719100925891

namespace A017361

/-- `sqrt(A017358(n)^3)` -/
def P1351353719100925891.Spec : Prop :=
  ∀ n, P1351353719100925891.a n = (A017361 n : ℝ)

end A017361

/-! ## A017361.P16221935173629828170

`A017353(n)*A017360(n)`
-/

namespace A017361.P16221935173629828170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A017360 n

end

end A017361.P16221935173629828170

namespace A017361

/-- `A017353(n)*A017360(n)` -/
def P16221935173629828170.Spec : Prop :=
  ∀ n, P16221935173629828170.a n = A017361 n

theorem P16221935173629828170.correct : P16221935173629828170.Spec := by
  intro n
  simp only [A017361, Nat.add_sub_cancel, A017361.P16221935173629828170.a, A017361.P12653374592131878113.a, A017353, A017353.P13300573628236260796.a, A017360, A017360.P13812551050674271953.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017361

/-! ## A017361.P9825526827033285078

`A017355(n)*A017358(n)`
-/

namespace A017361.P9825526827033285078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017355 n * A017358 n

end

end A017361.P9825526827033285078

namespace A017361

/-- `A017355(n)*A017358(n)` -/
def P9825526827033285078.Spec : Prop :=
  ∀ n, P9825526827033285078.a n = A017361 n

theorem P9825526827033285078.correct : P9825526827033285078.Spec := by
  intro n
  simp only [A017361, Nat.add_sub_cancel, A017361.P9825526827033285078.a, A017361.P12653374592131878113.a, A017355, A017355.P12001329552188820011.a, A017358, A017358.P15841104271664137065.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017361

/-! ## A017361.P16604221995369266718

`A017356(n)²*A017353(n)`
-/

namespace A017361.P16604221995369266718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017356 n ^ 2 * A017353 n

end

end A017361.P16604221995369266718

namespace A017361

/-- `A017356(n)²*A017353(n)` -/
def P16604221995369266718.Spec : Prop :=
  ∀ n, P16604221995369266718.a n = A017361 n

theorem P16604221995369266718.correct : P16604221995369266718.Spec := by
  intro n
  simp only [A017361, Nat.add_sub_cancel, A017361.P16604221995369266718.a, A017361.P12653374592131878113.a, A017353, A017353.P13300573628236260796.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017361

/-! ## A017361.P8121095733921987711

`(A017341(n)+1)*A017356(n)²`
-/

namespace A017361.P8121095733921987711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017341 n + 1) * A017356 n ^ 2

end

end A017361.P8121095733921987711

namespace A017361

/-- `(A017341(n)+1)*A017356(n)²` -/
def P8121095733921987711.Spec : Prop :=
  ∀ n, P8121095733921987711.a n = A017361 n

theorem P8121095733921987711.correct : P8121095733921987711.Spec := by
  intro n
  simp only [A017361, Nat.add_sub_cancel, A017361.P8121095733921987711.a, A017361.P12653374592131878113.a, A017341, A017341.P14977180853961305525.a, A017356, A017356.P7854101225273112733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017361

/-! ## A017361.P11759244139654148367

`A017354(n)²²*sqrt(A017354(n))`
-/

namespace A017361.P11759244139654148367
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A017354 n ^ 2) ^ 2 : ℝ) * Real.sqrt (A017354 n : ℝ)

end

end A017361.P11759244139654148367

namespace A017361

/-- `A017354(n)²²*sqrt(A017354(n))` -/
def P11759244139654148367.Spec : Prop :=
  ∀ n, P11759244139654148367.a n = (A017361 n : ℝ)

end A017361

/-! ## A017361.P4673309435019996298

`A016881(2*n+1)`
-/

namespace A017361.P4673309435019996298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016881 (2 * n + 1)

end

end A017361.P4673309435019996298

namespace A017361

/-- `A016881(2*n+1)` -/
def P4673309435019996298.Spec : Prop :=
  ∀ n, P4673309435019996298.a n = A017361 n

theorem P4673309435019996298.correct : P4673309435019996298.Spec := by
  intro n
  simp only [A017361, Nat.add_sub_cancel, A017361.P4673309435019996298.a, A017361.P12653374592131878113.a, A016881, A016881.P1540911032170598906.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017361

/-! ## A017361.P3686057825641564801

`A016873(2*n+1)*A016880(2*n+1)`
-/

namespace A017361.P3686057825641564801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (2 * n + 1) * A016880 (2 * n + 1)

end

end A017361.P3686057825641564801

namespace A017361

/-- `A016873(2*n+1)*A016880(2*n+1)` -/
def P3686057825641564801.Spec : Prop :=
  ∀ n, P3686057825641564801.a n = A017361 n

theorem P3686057825641564801.correct : P3686057825641564801.Spec := by
  intro n
  simp only [A017361, Nat.add_sub_cancel, A017361.P3686057825641564801.a, A017361.P12653374592131878113.a, A016873, A016873.P366335242068170250.a, A016880, A016880.P10254929196614950629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017361

/-! ## A017361.P12147086063181405074

`A016761(A016945(n)-n)`
-/

namespace A017361.P12147086063181405074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 (A016945 n - (n : ℤ)).toNat

end

end A017361.P12147086063181405074

namespace A017361

/-- `A016761(A016945(n)-n)` -/
def P12147086063181405074.Spec : Prop :=
  ∀ n, P12147086063181405074.a n = A017361 n

end A017361

/-! ## A017361.P11369181101051576172

`A001017(A017353(n))`
-/

namespace A017361.P11369181101051576172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n).toNat

end

end A017361.P11369181101051576172

namespace A017361

/-- `A001017(A017353(n))` -/
def P11369181101051576172.Spec : Prop :=
  ∀ n, P11369181101051576172.a n = A017361 n

end A017361

/-! ## A017361.P13159059125488940635

`A001017(A017341(n)+1)`
-/

namespace A017361.P13159059125488940635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n + 1).toNat

end

end A017361.P13159059125488940635

namespace A017361

/-- `A001017(A017341(n)+1)` -/
def P13159059125488940635.Spec : Prop :=
  ∀ n, P13159059125488940635.a n = A017361 n

end A017361

/-! ## A017361.P7346473739355073903

`A001017(A017497(n)-(n+2))`
-/

namespace A017361.P7346473739355073903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - (n + 2 : ℤ)).toNat

end

end A017361.P7346473739355073903

namespace A017361

/-- `A001017(A017497(n)-(n+2))` -/
def P7346473739355073903.Spec : Prop :=
  ∀ n, P7346473739355073903.a n = A017361 n

end A017361

/-! ## A017361.P3222018777656448804

`A001017(A017497(n)-2-n)`
-/

namespace A017361.P3222018777656448804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - 2 - (n : ℤ)).toNat

end

end A017361.P3222018777656448804

namespace A017361

/-- `A001017(A017497(n)-2-n)` -/
def P3222018777656448804.Spec : Prop :=
  ∀ n, P3222018777656448804.a n = A017361 n

end A017361

/-! ## A017361.P9129797045741172314

`A001017(A017617(n)-(2*n+1))`
-/

namespace A017361.P9129797045741172314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017617 n - (2 * n + 1 : ℤ)).toNat

end

end A017361.P9129797045741172314

namespace A017361

/-- `A001017(A017617(n)-(2*n+1))` -/
def P9129797045741172314.Spec : Prop :=
  ∀ n, P9129797045741172314.a n = A017361 n

end A017361

/-!
# A017362: 

The programs for A017362, there is no canonical definition to state claims against.
-/

/-! ## A017362.P2714099882891412794

`(10*n+7)^10`
-/

namespace A017362.P2714099882891412794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 7) ^ 10

end

end A017362.P2714099882891412794

/-! ## A017362.P8522836062002568307

`A017357(n)²`
-/

namespace A017362.P8522836062002568307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017357 n ^ 2

end

end A017362.P8522836062002568307

/-! ## A017362.P12135679966815713495

`sqrt(A017356(n)^5)`
-/

namespace A017362.P12135679966815713495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017356 n ^ 5 : ℝ)

end

end A017362.P12135679966815713495

/-! ## A017362.P5193453865183951380

`A017353(n)*A017361(n)`
-/

namespace A017362.P5193453865183951380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A017361 n

end

end A017362.P5193453865183951380

/-! ## A017362.P4972875603573423529

`(A017353(n)*A017356(n))²`
-/

namespace A017362.P4972875603573423529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n * A017356 n) ^ 2

end

end A017362.P4972875603573423529

/-! ## A017362.P13307117507739596715

`A017353(n)²*A017360(n)`
-/

namespace A017362.P13307117507739596715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n ^ 2 * A017360 n

end

end A017362.P13307117507739596715

/-! ## A017362.P17588271721047991622

`((A017341(n)+1)*A017356(n))²`
-/

namespace A017362.P17588271721047991622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + 1) * A017356 n) ^ 2

end

end A017362.P17588271721047991622

/-! ## A017362.P11004006087452293440

`A016882(2*n+1)`
-/

namespace A017362.P11004006087452293440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016882 (2 * n + 1)

end

end A017362.P11004006087452293440

/-! ## A017362.P17247127393791522667

`A016874(2*n+1)²²*A016874(2*n+1)`
-/

namespace A017362.P17247127393791522667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016874 (2 * n + 1) ^ 2) ^ 2 * A016874 (2 * n + 1)

end

end A017362.P17247127393791522667

/-! ## A017362.P13849276318083859458

`sqrt(sqrt(A016880(2*n+1)))*A016880(2*n+1)`
-/

namespace A017362.P13849276318083859458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A016880 (2 * n + 1) : ℝ)) * (A016880 (2 * n + 1) : ℝ)

end

end A017362.P13849276318083859458

/-! ## A017362.P16082926300421899541

`A008454(A017353(n))`
-/

namespace A017362.P16082926300421899541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n).toNat

end

end A017362.P16082926300421899541

/-! ## A017362.P10731913824746677315

`A008454(A017341(n)+1)`
-/

namespace A017362.P10731913824746677315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017341 n + 1).toNat

end

end A017362.P10731913824746677315

/-! ## A017362.P2776690541868285353

`A008454(A017281(n)+6)`
-/

namespace A017362.P2776690541868285353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017281 n + 6).toNat

end

end A017362.P2776690541868285353

/-!
# A017363: 

The programs for A017363, there is no canonical definition to state claims against.
-/

/-! ## A017363.P12123197062241025157

`(10*n+7)^11`
-/

namespace A017363.P12123197062241025157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 7) ^ 11

end

end A017363.P12123197062241025157

/-! ## A017363.P17029117028757023070

`A017353(n)²*A017361(n)`
-/

namespace A017363.P17029117028757023070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n ^ 2 * A017361 n

end

end A017363.P17029117028757023070

/-! ## A017363.P17278412869931106717

`(A017353(n)*A017356(n))²*A017353(n)`
-/

namespace A017363.P17278412869931106717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n * A017356 n) ^ 2 * A017353 n

end

end A017363.P17278412869931106717

/-! ## A017363.P9414743953599605042

`A017353(n)*A017360(n)*A017353(n)²`
-/

namespace A017363.P9414743953599605042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n * A017360 n * A017353 n ^ 2

end

end A017363.P9414743953599605042

/-! ## A017363.P2945870692357228457

`A008455(A017281(n)+6)`
-/

namespace A017363.P2945870692357228457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 6).toNat

end

end A017363.P2945870692357228457

/-! ## A017363.P11678316064256107658

`A008455(A017617(n)-(2*n+1))`
-/

namespace A017363.P11678316064256107658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017617 n - (2 * n + 1 : ℤ)).toNat

end

end A017363.P11678316064256107658

/-!
# A017364: 

The programs for A017364, there is no canonical definition to state claims against.
-/

/-! ## A017364.P5637116280924198865

`(10*n+7)^12`
-/

namespace A017364.P5637116280924198865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 7) ^ 12

end

end A017364.P5637116280924198865

/-! ## A017364.P8947896589734265857

`A017358(n)²`
-/

namespace A017364.P8947896589734265857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017358 n ^ 2

end

end A017364.P8947896589734265857

/-! ## A017364.P11842458868560772384

`(A017353(n)^6)²`
-/

namespace A017364.P11842458868560772384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n ^ 6) ^ 2

end

end A017364.P11842458868560772384

/-! ## A017364.P5826993726627783734

`sqrt(A017360(n))*A017360(n)`
-/

namespace A017364.P5826993726627783734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017360 n : ℝ) * (A017360 n : ℝ)

end

end A017364.P5826993726627783734

/-! ## A017364.P7535762438741937780

`A017353(n)²²*A017360(n)`
-/

namespace A017364.P7535762438741937780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017353 n ^ 2) ^ 2 * A017360 n

end

end A017364.P7535762438741937780

/-! ## A017364.P5528896182804568801

`(A017356(n)/A017353(n))²²`
-/

namespace A017364.P5528896182804568801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((A017356 n : ℚ) / (A017353 n : ℚ)) ^ 2) ^ 2

end

end A017364.P5528896182804568801

/-! ## A017364.P6395017244533998412

`sqrt(A016880(2*n+1))*A016880(2*n+1)`
-/

namespace A017364.P6395017244533998412
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016880 (2 * n + 1) : ℝ) * (A016880 (2 * n + 1) : ℝ)

end

end A017364.P6395017244533998412

/-! ## A017364.P9314590081616929627

`(A016874(2*n+1)²*A016874(2*n+1))²`
-/

namespace A017364.P9314590081616929627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016874 (2 * n + 1) ^ 2 * A016874 (2 * n + 1)) ^ 2

end

end A017364.P9314590081616929627

/-! ## A017364.P11687917728989360796

`(A273374(2*n+2)²*A273374(2*n+2))²`
-/

namespace A017364.P11687917728989360796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273374 (2 * n + 2) ^ 2 * A273374 (2 * n + 2)) ^ 2

end

end A017364.P11687917728989360796

/-! ## A017364.P8808444987420816439

`sqrt(A017360(n)^3)`
-/

namespace A017364.P8808444987420816439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017360 n ^ 3 : ℝ)

end

end A017364.P8808444987420816439

/-! ## A017364.P3691795704352512180

`A008456(A017341(n)+1)`
-/

namespace A017364.P3691795704352512180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A017341 n + 1).toNat

end

end A017364.P3691795704352512180

/-! ## A017364.P8316246832492701319

`A000578(A017341(n)+1)²²`
-/

namespace A017364.P8316246832492701319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017341 n + 1).toNat ^ 2) ^ 2

end

end A017364.P8316246832492701319

/-! ## A017364.P13893723200515293482

`A000578(A017377(n)-2)²²`
-/

namespace A017364.P13893723200515293482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017377 n - 2).toNat ^ 2) ^ 2

end

end A017364.P13893723200515293482

/-! ## A017364.P2664527985308064281

`A008456(A004767(2*n+1)+2*n)`
-/

namespace A017364.P2664527985308064281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008456 (A004767 (2 * n + 1) + (2 * n : ℤ)).toNat

end

end A017364.P2664527985308064281

/-! ## A017364.P15517101782199713030

`A000578(A017353(n))*A017361(n)`
-/

namespace A017364.P15517101782199713030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A017353 n).toNat * A017361 n

end

end A017364.P15517101782199713030

/-! ## A017364.P3390529777125075333

`A000583(A017353(n))*A017360(n)`
-/

namespace A017364.P3390529777125075333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A017353 n).toNat * A017360 n

end

end A017364.P3390529777125075333

/-!
# A017365: a(n) = 10*n + 8.

The programs for A017365, the canonical program `A017365.P3452265278948084008` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017365 has offset 0).

The definition of A017365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+8` (program `A017365.P3452265278948084008`, by `A017365.P3452265278948084008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017365.P3452265278948084008

`10*n+8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017365

/-- `10*n+8` -/
def P3452265278948084008.Spec : Prop :=
  ∀ n, (P3452265278948084008.a n : ℤ) = A017365 n

theorem P3452265278948084008.correct : P3452265278948084008.Spec := by
  intro n
  simp only [A017365]

end A017365

/-!
# A017366: a(n) = (10*n + 8)^2.

The programs for A017366, the canonical program `A017366.P9177302132677222391` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017366 has offset 0).

The definition of A017366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)²` (program `A017366.P9177302132677222391`, by `A017366.P9177302132677222391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017366.P9177302132677222391

`(10*n+8)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017366

/-- `(10*n+8)²` -/
def P9177302132677222391.Spec : Prop :=
  ∀ n, (P9177302132677222391.a n : ℤ) = A017366 n

theorem P9177302132677222391.correct : P9177302132677222391.Spec := by
  intro n
  simp only [A017366]

end A017366

/-! ## A017366.P2700720912236320392

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=64, a(1)=324, a(2)=784`
-/

namespace A017366.P2700720912236320392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [64, 324, 784] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017366.P2700720912236320392

namespace A017366

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2700720912236320392.Spec : Prop :=
  ∀ n, P2700720912236320392.a n = A017366 n

theorem P2700720912236320392.correct : P2700720912236320392.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017366, Nat.add_sub_cancel, A017366.P2700720912236320392.a, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017366, Nat.add_sub_cancel, A017366.P2700720912236320392.a, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017366

/-! ## A017366.P2515746963037649978

`4*A016898(n)`
-/

namespace A017366.P2515746963037649978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016898 n

end

end A017366.P2515746963037649978

namespace A017366

/-- `4*A016898(n)` -/
def P2515746963037649978.Spec : Prop :=
  ∀ n, P2515746963037649978.a n = A017366 n

theorem P2515746963037649978.correct : P2515746963037649978.Spec := by
  intro n
  simp only [A017366, Nat.add_sub_cancel, A017366.P2515746963037649978.a, A017366.P9177302132677222391.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017366

/-! ## A017366.P1159759844286139362

`A016886(2*n+1)`
-/

namespace A017366.P1159759844286139362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016886 (2 * n + 1)

end

end A017366.P1159759844286139362

namespace A017366

/-- `A016886(2*n+1)` -/
def P1159759844286139362.Spec : Prop :=
  ∀ n, P1159759844286139362.a n = A017366 n

theorem P1159759844286139362.correct : P1159759844286139362.Spec := by
  intro n
  simp only [A017366, Nat.add_sub_cancel, A017366.P1159759844286139362.a, A017366.P9177302132677222391.a, A016886, A016886.P17506654077827832753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017366

/-! ## A017366.P1496092735052750835

`record[(gcd(10, n)+n-2)²]`
-/

namespace A017366.P1496092735052750835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 10 n : ℤ) + ((n : ℤ) - 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017366.P1496092735052750835

namespace A017366

/-- `record[(gcd(10, n)+n-2)²]` -/
def P1496092735052750835.Spec : Prop :=
  ∀ n, P1496092735052750835.a n = A017366 n

end A017366

/-! ## A017366.P17691171257408757952

`sqrt(A017368(n))`
-/

namespace A017366.P17691171257408757952
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017368 n : ℝ)

end

end A017366.P17691171257408757952

namespace A017366

/-- `sqrt(A017368(n))` -/
def P17691171257408757952.Spec : Prop :=
  ∀ n, P17691171257408757952.a n = (A017366 n : ℝ)

end A017366

/-! ## A017366.P13208593252575850628

`A017365(n)^2`
-/

namespace A017366.P13208593252575850628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n ^ 2

end

end A017366.P13208593252575850628

namespace A017366

/-- `A017365(n)^2` -/
def P13208593252575850628.Spec : Prop :=
  ∀ n, P13208593252575850628.a n = A017366 n

theorem P13208593252575850628.correct : P13208593252575850628.Spec := by
  intro n
  simp only [A017366, Nat.add_sub_cancel, A017366.P13208593252575850628.a, A017366.P9177302132677222391.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017366

/-! ## A017366.P18060786268411674086

`sqrt(sqrt(A017372(n)))`
-/

namespace A017366.P18060786268411674086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017372 n : ℝ))

end

end A017366.P18060786268411674086

namespace A017366

/-- `sqrt(sqrt(A017372(n)))` -/
def P18060786268411674086.Spec : Prop :=
  ∀ n, P18060786268411674086.a n = (A017366 n : ℝ)

end A017366

/-! ## A017366.P5465345395920040563

`4*A016897(n)²`
-/

namespace A017366.P5465345395920040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A016897 n ^ 2

end

end A017366.P5465345395920040563

namespace A017366

/-- `4*A016897(n)²` -/
def P5465345395920040563.Spec : Prop :=
  ∀ n, P5465345395920040563.a n = A017366 n

theorem P5465345395920040563.correct : P5465345395920040563.Spec := by
  intro n
  simp only [A017366, Nat.add_sub_cancel, A017366.P5465345395920040563.a, A017366.P9177302132677222391.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017366

/-! ## A017366.P14228362385895798903

`4*sqrt(A016900(n))`
-/

namespace A017366.P14228362385895798903
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A016900 n : ℝ)

end

end A017366.P14228362385895798903

namespace A017366

/-- `4*sqrt(A016900(n))` -/
def P14228362385895798903.Spec : Prop :=
  ∀ n, P14228362385895798903.a n = (A017366 n : ℝ)

end A017366

/-! ## A017366.P10122929412488354058

`A017370(n)^(1/3)`
-/

namespace A017366.P10122929412488354058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017370 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017366.P10122929412488354058

namespace A017366

/-- `A017370(n)^(1/3)` -/
def P10122929412488354058.Spec : Prop :=
  ∀ n, P10122929412488354058.a n = (A017366 n : ℝ)

end A017366

/-! ## A017366.P126646789695457170

`A017367(n)^(2/3)`
-/

namespace A017366.P126646789695457170
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017367 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017366.P126646789695457170

namespace A017366

/-- `A017367(n)^(2/3)` -/
def P126646789695457170.Spec : Prop :=
  ∀ n, P126646789695457170.a n = (A017366 n : ℝ)

end A017366

/-! ## A017366.P604626009215286887

`4*(A180577(n+1)+1)`
-/

namespace A017366.P604626009215286887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A180577 (n + 1) + 1)

end

end A017366.P604626009215286887

namespace A017366

/-- `4*(A180577(n+1)+1)` -/
def P604626009215286887.Spec : Prop :=
  ∀ n, P604626009215286887.a n = A017366 n

theorem P604626009215286887.correct : P604626009215286887.Spec := by
  intro n
  simp only [A017366, Nat.add_sub_cancel, A017366.P604626009215286887.a, A017366.P9177302132677222391.a, A180577, A180577.P1057012075480708171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017366

/-! ## A017366.P18114529245962799741

`(10*n+8)^A020639(2*(n+1))`
-/

namespace A017366.P18114529245962799741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n + 8 : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A017366.P18114529245962799741

namespace A017366

/-- `(10*n+8)^A020639(2*(n+1))` -/
def P18114529245962799741.Spec : Prop :=
  ∀ n, P18114529245962799741.a n = (A017366 n : ℚ)

end A017366

/-! ## A017366.P6123370624197326228

`A290781(n)+A017354(n)`
-/

namespace A017366.P6123370624197326228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290781 n + A017354 n

end

end A017366.P6123370624197326228

namespace A017366

/-- `A290781(n)+A017354(n)` -/
def P6123370624197326228.Spec : Prop :=
  ∀ n, P6123370624197326228.a n = A017366 n

theorem P6123370624197326228.correct : P6123370624197326228.Spec := by
  intro n
  simp only [A017366, Nat.add_sub_cancel, A017366.P6123370624197326228.a, A017366.P9177302132677222391.a, A017354, A017354.P6363149355192370715.a, A290781, A290781.P16709635685453272756.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017366

/-! ## A017366.P1871544011110304305

`A017367(n)/A017365(n)`
-/

namespace A017366.P1871544011110304305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017367 n : ℚ) / (A017365 n : ℚ)

end

end A017366.P1871544011110304305

namespace A017366

/-- `A017367(n)/A017365(n)` -/
def P1871544011110304305.Spec : Prop :=
  ∀ n, P1871544011110304305.a n = (A017366 n : ℚ)

end A017366

/-! ## A017366.P15473643129060892660

`A017369(n)/A017367(n)`
-/

namespace A017366.P15473643129060892660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017369 n : ℚ) / (A017367 n : ℚ)

end

end A017366.P15473643129060892660

namespace A017366

/-- `A017369(n)/A017367(n)` -/
def P15473643129060892660.Spec : Prop :=
  ∀ n, P15473643129060892660.a n = (A017366 n : ℚ)

end A017366

/-! ## A017366.P11679291908294868161

`A017370(n)/A017368(n)`
-/

namespace A017366.P11679291908294868161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017370 n : ℚ) / (A017368 n : ℚ)

end

end A017366.P11679291908294868161

namespace A017366

/-- `A017370(n)/A017368(n)` -/
def P11679291908294868161.Spec : Prop :=
  ∀ n, P11679291908294868161.a n = (A017366 n : ℚ)

end A017366

/-! ## A017366.P14639969012924437932

`A017367(n)²/A017368(n)`
-/

namespace A017366.P14639969012924437932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017367 n ^ 2 : ℚ) / (A017368 n : ℚ)

end

end A017366.P14639969012924437932

namespace A017366

/-- `A017367(n)²/A017368(n)` -/
def P14639969012924437932.Spec : Prop :=
  ∀ n, P14639969012924437932.a n = (A017366 n : ℚ)

end A017366

/-! ## A017366.P4247657187177574249

`A017372(n)/A017367(n)²`
-/

namespace A017366.P4247657187177574249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (A017367 n ^ 2 : ℚ)

end

end A017366.P4247657187177574249

namespace A017366

/-- `A017372(n)/A017367(n)²` -/
def P4247657187177574249.Spec : Prop :=
  ∀ n, P4247657187177574249.a n = (A017366 n : ℚ)

end A017366

/-!
# A017367: a(n) = (10*n + 8)^3.

The programs for A017367, the canonical program `A017367.P16209840253877747607` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017367 has offset 0).

The definition of A017367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^3` (program `A017367.P16209840253877747607`, by `A017367.P16209840253877747607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017367.P16209840253877747607

`(10*n+8)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017367

/-- `(10*n+8)^3` -/
def P16209840253877747607.Spec : Prop :=
  ∀ n, (P16209840253877747607.a n : ℤ) = A017367 n

theorem P16209840253877747607.correct : P16209840253877747607.Spec := by
  intro n
  simp only [A017367]

end A017367

/-! ## A017367.P13370657991906014249

`8*A016899(n)`
-/

namespace A017367.P13370657991906014249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016899 n

end

end A017367.P13370657991906014249

namespace A017367

/-- `8*A016899(n)` -/
def P13370657991906014249.Spec : Prop :=
  ∀ n, P13370657991906014249.a n = A017367 n

theorem P13370657991906014249.correct : P13370657991906014249.Spec := by
  intro n
  simp only [A017367, Nat.add_sub_cancel, A017367.P13370657991906014249.a, A017367.P16209840253877747607.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017367

/-! ## A017367.P14804124972157317315

`sqrt(A017370(n))`
-/

namespace A017367.P14804124972157317315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017370 n : ℝ)

end

end A017367.P14804124972157317315

namespace A017367

/-- `sqrt(A017370(n))` -/
def P14804124972157317315.Spec : Prop :=
  ∀ n, P14804124972157317315.a n = (A017367 n : ℝ)

end A017367

/-! ## A017367.P13203655189106204940

`sqrt(A017366(n)^3)`
-/

namespace A017367.P13203655189106204940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017366 n ^ 3 : ℝ)

end

end A017367.P13203655189106204940

namespace A017367

/-- `sqrt(A017366(n)^3)` -/
def P13203655189106204940.Spec : Prop :=
  ∀ n, P13203655189106204940.a n = (A017367 n : ℝ)

end A017367

/-! ## A017367.P166248199511267238

`A017365(n)*A017366(n)`
-/

namespace A017367.P166248199511267238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017366 n

end

end A017367.P166248199511267238

namespace A017367

/-- `A017365(n)*A017366(n)` -/
def P166248199511267238.Spec : Prop :=
  ∀ n, P166248199511267238.a n = A017367 n

theorem P166248199511267238.correct : P166248199511267238.Spec := by
  intro n
  simp only [A017367, Nat.add_sub_cancel, A017367.P166248199511267238.a, A017367.P16209840253877747607.a, A017365, A017365.P3452265278948084008.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017367

/-! ## A017367.P18261167985982324020

`A017368(n)/A017365(n)`
-/

namespace A017367.P18261167985982324020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017368 n : ℚ) / (A017365 n : ℚ)

end

end A017367.P18261167985982324020

namespace A017367

/-- `A017368(n)/A017365(n)` -/
def P18261167985982324020.Spec : Prop :=
  ∀ n, P18261167985982324020.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P9725546816192878819

`A017369(n)/A017366(n)`
-/

namespace A017367.P9725546816192878819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017369 n : ℚ) / (A017366 n : ℚ)

end

end A017367.P9725546816192878819

namespace A017367

/-- `A017369(n)/A017366(n)` -/
def P9725546816192878819.Spec : Prop :=
  ∀ n, P9725546816192878819.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P2472780963090519285

`A017372(n)/A017369(n)`
-/

namespace A017367.P2472780963090519285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (A017369 n : ℚ)

end

end A017367.P2472780963090519285

namespace A017367

/-- `A017372(n)/A017369(n)` -/
def P2472780963090519285.Spec : Prop :=
  ∀ n, P2472780963090519285.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P540989117912778414

`A017369(n)/A017365(n)²`
-/

namespace A017367.P540989117912778414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017369 n : ℚ) / (A017365 n ^ 2 : ℚ)

end

end A017367.P540989117912778414

namespace A017367

/-- `A017369(n)/A017365(n)²` -/
def P540989117912778414.Spec : Prop :=
  ∀ n, P540989117912778414.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P13077778090083991105

`A017371(n)/A017365(n)²²`
-/

namespace A017367.P13077778090083991105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017371 n : ℚ) / ((A017365 n ^ 2) ^ 2 : ℚ)

end

end A017367.P13077778090083991105

namespace A017367

/-- `A017371(n)/A017365(n)²²` -/
def P13077778090083991105.Spec : Prop :=
  ∀ n, P13077778090083991105.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P15663578078715432575

`A017368(n)/A017373(n)*A017368(n)²`
-/

namespace A017367.P15663578078715432575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017368 n : ℚ) / (A017373 n : ℚ) * (A017368 n ^ 2 : ℚ)

end

end A017367.P15663578078715432575

namespace A017367

/-- `A017368(n)/A017373(n)*A017368(n)²` -/
def P15663578078715432575.Spec : Prop :=
  ∀ n, P15663578078715432575.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P16689431305365838707

`A017370(n)/(A017365(n)²*A017365(n))`
-/

namespace A017367.P16689431305365838707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017370 n : ℚ) / (A017365 n ^ 2 * A017365 n : ℚ)

end

end A017367.P16689431305365838707

namespace A017367

/-- `A017370(n)/(A017365(n)²*A017365(n))` -/
def P16689431305365838707.Spec : Prop :=
  ∀ n, P16689431305365838707.a n = (A017367 n : ℚ)

end A017367

/-! ## A017367.P2869728024410977767

`(A016862(n+1)-A016874(n))*A016898(n)`
-/

namespace A017367.P2869728024410977767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016862 (n + 1) - A016874 n) * A016898 n

end

end A017367.P2869728024410977767

namespace A017367

/-- `(A016862(n+1)-A016874(n))*A016898(n)` -/
def P2869728024410977767.Spec : Prop :=
  ∀ n, P2869728024410977767.a n = A017367 n

theorem P2869728024410977767.correct : P2869728024410977767.Spec := by
  intro n
  simp only [A017367, Nat.add_sub_cancel, A017367.P2869728024410977767.a, A017367.P16209840253877747607.a, A016862, A016862.P4720776691186821444.a, A016874, A016874.P17500456718272948104.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017367

/-! ## A017367.P15139477751503697376

`A016887(Δ[n²])`
-/

namespace A017367.P15139477751503697376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017367.P15139477751503697376

namespace A017367

/-- `A016887(Δ[n²])` -/
def P15139477751503697376.Spec : Prop :=
  ∀ n, P15139477751503697376.a n = A017367 n

end A017367

/-! ## A017367.P7763826202773950869

`sqrt(A016890(2*n+1))`
-/

namespace A017367.P7763826202773950869
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016890 (2 * n + 1) : ℝ)

end

end A017367.P7763826202773950869

namespace A017367

/-- `sqrt(A016890(2*n+1))` -/
def P7763826202773950869.Spec : Prop :=
  ∀ n, P7763826202773950869.a n = (A017367 n : ℝ)

end A017367

/-! ## A017367.P7623954945211486457

`A017343(2*n+1)/8`
-/

namespace A017367.P7623954945211486457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017343 (2 * n + 1) : ℚ) / 8

end

end A017367.P7623954945211486457

namespace A017367

/-- `A017343(2*n+1)/8` -/
def P7623954945211486457.Spec : Prop :=
  ∀ n, P7623954945211486457.a n = (A017367 n : ℚ)

theorem P7623954945211486457.correct : P7623954945211486457.Spec := by
  intro n
  simp only [A017367, Nat.add_sub_cancel, A017367.P7623954945211486457.a, A017367.P16209840253877747607.a, A017343, A017343.P9364266596751166510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017367

/-! ## A017367.P3808504422932349255

`lcm(2, A016887(2*n+1))`
-/

namespace A017367.P3808504422932349255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016887 (2 * n + 1))

end

end A017367.P3808504422932349255

namespace A017367

/-- `lcm(2, A016887(2*n+1))` -/
def P3808504422932349255.Spec : Prop :=
  ∀ n, (P3808504422932349255.a n : ℤ) = A017367 n

end A017367

/-! ## A017367.P3360522765984968693

`A016889(2*n+1)/(10*n+8)²`
-/

namespace A017367.P3360522765984968693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016889 (2 * n + 1) : ℚ) / ((10 * n + 8) ^ 2 : ℚ)

end

end A017367.P3360522765984968693

namespace A017367

/-- `A016889(2*n+1)/(10*n+8)²` -/
def P3360522765984968693.Spec : Prop :=
  ∀ n, P3360522765984968693.a n = (A017367 n : ℚ)

theorem P3360522765984968693.correct : P3360522765984968693.Spec := by
  intro n
  simp only [A017367, Nat.add_sub_cancel, A017367.P3360522765984968693.a, A017367.P16209840253877747607.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017367

/-! ## A017367.P9049665886920516341

`A016885(2*n+1)*A017366(n)`
-/

namespace A017367.P9049665886920516341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (2 * n + 1) * A017366 n

end

end A017367.P9049665886920516341

namespace A017367

/-- `A016885(2*n+1)*A017366(n)` -/
def P9049665886920516341.Spec : Prop :=
  ∀ n, P9049665886920516341.a n = A017367 n

theorem P9049665886920516341.correct : P9049665886920516341.Spec := by
  intro n
  simp only [A017367, Nat.add_sub_cancel, A017367.P9049665886920516341.a, A017367.P16209840253877747607.a, A016885, A016885.P12442016633976001399.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017367

/-!
# A017368: a(n) = (10*n + 8)^4.

The programs for A017368, the canonical program `A017368.P4618921898896536041` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017368 has offset 0).

The definition of A017368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^4` (program `A017368.P4618921898896536041`, by `A017368.P4618921898896536041.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017368.P4618921898896536041

`(10*n+8)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017368

/-- `(10*n+8)^4` -/
def P4618921898896536041.Spec : Prop :=
  ∀ n, (P4618921898896536041.a n : ℤ) = A017368 n

theorem P4618921898896536041.correct : P4618921898896536041.Spec := by
  intro n
  simp only [A017368]

end A017368

/-! ## A017368.P12066908052471912842

`A017366(n)²`
-/

namespace A017368.P12066908052471912842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n ^ 2

end

end A017368.P12066908052471912842

namespace A017368

/-- `A017366(n)²` -/
def P12066908052471912842.Spec : Prop :=
  ∀ n, P12066908052471912842.a n = A017368 n

theorem P12066908052471912842.correct : P12066908052471912842.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P12066908052471912842.a, A017368.P4618921898896536041.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P15236815028642140097

`16*A016900(n)`
-/

namespace A017368.P15236815028642140097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A016900 n

end

end A017368.P15236815028642140097

namespace A017368

/-- `16*A016900(n)` -/
def P15236815028642140097.Spec : Prop :=
  ∀ n, P15236815028642140097.a n = A017368 n

theorem P15236815028642140097.correct : P15236815028642140097.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P15236815028642140097.a, A017368.P4618921898896536041.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P13336931381168044784

`A016888(2*n+1)`
-/

namespace A017368.P13336931381168044784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 (2 * n + 1)

end

end A017368.P13336931381168044784

namespace A017368

/-- `A016888(2*n+1)` -/
def P13336931381168044784.Spec : Prop :=
  ∀ n, P13336931381168044784.a n = A017368 n

theorem P13336931381168044784.correct : P13336931381168044784.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P13336931381168044784.a, A017368.P4618921898896536041.a, A016888, A016888.P4081375051396763708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P14798571078921542585

`∩[2*n, a(n-1)+5]²²` with `a(0)=3`
-/

namespace A017368.P14798571078921542585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017368.P14798571078921542585

namespace A017368

/-- `∩[2*n, a(n-1)+5]²²` -/
def P14798571078921542585.Spec : Prop :=
  ∀ n, (P14798571078921542585.a n : ℤ) = A017368 n

end A017368

/-! ## A017368.P8127659020426703460

`(2*(lcm(2, 2*n+1)+n+2))²²`
-/

namespace A017368.P8127659020426703460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (Nat.lcm 2 (2 * n + 1) + (n + 2))) ^ 2) ^ 2

end

end A017368.P8127659020426703460

namespace A017368

/-- `(2*(lcm(2, 2*n+1)+n+2))²²` -/
def P8127659020426703460.Spec : Prop :=
  ∀ n, (P8127659020426703460.a n : ℤ) = A017368 n

end A017368

/-! ## A017368.P8854470053474064415

`(Δ[C(2*n+1, 2*n)²]+2*n)²²`
-/

namespace A017368.P8854470053474064415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n : ℤ)) ^ 2) ^ 2

end

end A017368.P8854470053474064415

namespace A017368

/-- `(Δ[C(2*n+1, 2*n)²]+2*n)²²` -/
def P8854470053474064415.Spec : Prop :=
  ∀ n, P8854470053474064415.a n = A017368 n

theorem P8854470053474064415.correct : P8854470053474064415.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P8854470053474064415.f1, A017368.P8854470053474064415.a, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017368

/-! ## A017368.P9832810106280966576

`(Δ[(2*n+1)²]+and(2*n+1, 2*n))²²`
-/

namespace A017368.P9832810106280966576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.land (2 * n + 1) (2 * n) : ℤ)) ^ 2) ^ 2

end

end A017368.P9832810106280966576

namespace A017368

/-- `(Δ[(2*n+1)²]+and(2*n+1, 2*n))²²` -/
def P9832810106280966576.Spec : Prop :=
  ∀ n, P9832810106280966576.a n = A017368 n

end A017368

/-! ## A017368.P7431485135472532438

`sqrt(A017372(n))`
-/

namespace A017368.P7431485135472532438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017372 n : ℝ)

end

end A017368.P7431485135472532438

namespace A017368

/-- `sqrt(A017372(n))` -/
def P7431485135472532438.Spec : Prop :=
  ∀ n, P7431485135472532438.a n = (A017368 n : ℝ)

end A017368

/-! ## A017368.P2863149880925000332

`A017365(n)²²`
-/

namespace A017368.P2863149880925000332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n ^ 2) ^ 2

end

end A017368.P2863149880925000332

namespace A017368

/-- `A017365(n)²²` -/
def P2863149880925000332.Spec : Prop :=
  ∀ n, P2863149880925000332.a n = A017368 n

theorem P2863149880925000332.correct : P2863149880925000332.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P2863149880925000332.a, A017368.P4618921898896536041.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P5346786145725692496

`(4*A016898(n))²`
-/

namespace A017368.P5346786145725692496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A016898 n) ^ 2

end

end A017368.P5346786145725692496

namespace A017368

/-- `(4*A016898(n))²` -/
def P5346786145725692496.Spec : Prop :=
  ∀ n, P5346786145725692496.a n = A017368 n

theorem P5346786145725692496.correct : P5346786145725692496.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P5346786145725692496.a, A017368.P4618921898896536041.a, A016898, A016898.P14343272817953415938.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P9995230421042975674

`(A017353(n)+1)²²`
-/

namespace A017368.P9995230421042975674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017353 n + 1) ^ 2) ^ 2

end

end A017368.P9995230421042975674

namespace A017368

/-- `(A017353(n)+1)²²` -/
def P9995230421042975674.Spec : Prop :=
  ∀ n, P9995230421042975674.a n = A017368 n

theorem P9995230421042975674.correct : P9995230421042975674.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P9995230421042975674.a, A017368.P4618921898896536041.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P17993785152658895659

`(A017341(n)+2)²²`
-/

namespace A017368.P17993785152658895659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + 2) ^ 2) ^ 2

end

end A017368.P17993785152658895659

namespace A017368

/-- `(A017341(n)+2)²²` -/
def P17993785152658895659.Spec : Prop :=
  ∀ n, P17993785152658895659.a n = A017368 n

theorem P17993785152658895659.correct : P17993785152658895659.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P17993785152658895659.a, A017368.P4618921898896536041.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P5923251275029146336

`(1-A017377(n))²²`
-/

namespace A017368.P5923251275029146336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017377 n) ^ 2) ^ 2

end

end A017368.P5923251275029146336

namespace A017368

/-- `(1-A017377(n))²²` -/
def P5923251275029146336.Spec : Prop :=
  ∀ n, P5923251275029146336.a n = A017368 n

theorem P5923251275029146336.correct : P5923251275029146336.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P5923251275029146336.a, A017368.P4618921898896536041.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P13927415243433526435

`(A017329(n)+3)²²`
-/

namespace A017368.P13927415243433526435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017329 n + 3) ^ 2) ^ 2

end

end A017368.P13927415243433526435

namespace A017368

/-- `(A017329(n)+3)²²` -/
def P13927415243433526435.Spec : Prop :=
  ∀ n, P13927415243433526435.a n = A017368 n

theorem P13927415243433526435.correct : P13927415243433526435.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P13927415243433526435.a, A017368.P4618921898896536041.a, A017329, A017329.P13641332030280969901.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P17068430267168808674

`(2*A016897(n))²²`
-/

namespace A017368.P17068430267168808674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * A016897 n) ^ 2) ^ 2

end

end A017368.P17068430267168808674

namespace A017368

/-- `(2*A016897(n))²²` -/
def P17068430267168808674.Spec : Prop :=
  ∀ n, P17068430267168808674.a n = A017368 n

theorem P17068430267168808674.correct : P17068430267168808674.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P17068430267168808674.a, A017368.P4618921898896536041.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P14576733244785590106

`(A017257(n)+n)²²`
-/

namespace A017368.P14576733244785590106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017257 n + (n : ℤ)) ^ 2) ^ 2

end

end A017368.P14576733244785590106

namespace A017368

/-- `(A017257(n)+n)²²` -/
def P14576733244785590106.Spec : Prop :=
  ∀ n, P14576733244785590106.a n = A017368 n

theorem P14576733244785590106.correct : P14576733244785590106.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P14576733244785590106.a, A017368.P4618921898896536041.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P7912608302047051353

`(n-A017485(n))²²`
-/

namespace A017368.P7912608302047051353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017485 n) ^ 2) ^ 2

end

end A017368.P7912608302047051353

namespace A017368

/-- `(n-A017485(n))²²` -/
def P7912608302047051353.Spec : Prop :=
  ∀ n, P7912608302047051353.a n = A017368 n

theorem P7912608302047051353.correct : P7912608302047051353.Spec := by
  intro n
  simp only [A017368, Nat.add_sub_cancel, A017368.P7912608302047051353.a, A017368.P4618921898896536041.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017368

/-! ## A017368.P16118070828471540909

`(sqrt(A017354(n))+1)²²`
-/

namespace A017368.P16118070828471540909
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017354 n : ℝ) + 1) ^ 2) ^ 2

end

end A017368.P16118070828471540909

namespace A017368

/-- `(sqrt(A017354(n))+1)²²` -/
def P16118070828471540909.Spec : Prop :=
  ∀ n, P16118070828471540909.a n = (A017368 n : ℝ)

end A017368

/-! ## A017368.P17320941134806210381

`(sqrt(A017342(n))+2)²²`
-/

namespace A017368.P17320941134806210381
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017342 n : ℝ) + 2) ^ 2) ^ 2

end

end A017368.P17320941134806210381

namespace A017368

/-- `(sqrt(A017342(n))+2)²²` -/
def P17320941134806210381.Spec : Prop :=
  ∀ n, P17320941134806210381.a n = (A017368 n : ℝ)

end A017368

/-!
# A017369: a(n) = (10*n + 8)^5.

The programs for A017369, the canonical program `A017369.P3058591175913204461` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017369 has offset 0).

The definition of A017369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^5` (program `A017369.P3058591175913204461`, by `A017369.P3058591175913204461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017369.P3058591175913204461

`(10*n+8)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017369

/-- `(10*n+8)^5` -/
def P3058591175913204461.Spec : Prop :=
  ∀ n, (P3058591175913204461.a n : ℤ) = A017369 n

theorem P3058591175913204461.correct : P3058591175913204461.Spec := by
  intro n
  simp only [A017369]

end A017369

/-! ## A017369.P10697685638855713694

`sqrt(A017366(n)^5)`
-/

namespace A017369.P10697685638855713694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017366 n ^ 5 : ℝ)

end

end A017369.P10697685638855713694

namespace A017369

/-- `sqrt(A017366(n)^5)` -/
def P10697685638855713694.Spec : Prop :=
  ∀ n, P10697685638855713694.a n = (A017369 n : ℝ)

end A017369

/-! ## A017369.P2939002480840168527

`(10*n+8)*A017368(n)`
-/

namespace A017369.P2939002480840168527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 8 : ℤ) * A017368 n

end

end A017369.P2939002480840168527

namespace A017369

/-- `(10*n+8)*A017368(n)` -/
def P2939002480840168527.Spec : Prop :=
  ∀ n, P2939002480840168527.a n = A017369 n

theorem P2939002480840168527.correct : P2939002480840168527.Spec := by
  intro n
  simp only [A017369, Nat.add_sub_cancel, A017369.P2939002480840168527.a, A017369.P3058591175913204461.a, A017368, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017369

/-! ## A017369.P3791630914564306207

`A017366(n)*A017367(n)`
-/

namespace A017369.P3791630914564306207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n * A017367 n

end

end A017369.P3791630914564306207

namespace A017369

/-- `A017366(n)*A017367(n)` -/
def P3791630914564306207.Spec : Prop :=
  ∀ n, P3791630914564306207.a n = A017369 n

theorem P3791630914564306207.correct : P3791630914564306207.Spec := by
  intro n
  simp only [A017369, Nat.add_sub_cancel, A017369.P3791630914564306207.a, A017369.P3058591175913204461.a, A017366, A017366.P9177302132677222391.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017369

/-! ## A017369.P5063776713035417537

`A017370(n)/A017365(n)`
-/

namespace A017369.P5063776713035417537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017370 n : ℚ) / (A017365 n : ℚ)

end

end A017369.P5063776713035417537

namespace A017369

/-- `A017370(n)/A017365(n)` -/
def P5063776713035417537.Spec : Prop :=
  ∀ n, P5063776713035417537.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P3271366593537445915

`A017372(n)/A017367(n)`
-/

namespace A017369.P3271366593537445915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (A017367 n : ℚ)

end

end A017369.P3271366593537445915

namespace A017369

/-- `A017372(n)/A017367(n)` -/
def P3271366593537445915.Spec : Prop :=
  ∀ n, P3271366593537445915.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P1526964756210258521

`A017373(n)/A017368(n)`
-/

namespace A017369.P1526964756210258521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017373 n : ℚ) / (A017368 n : ℚ)

end

end A017369.P1526964756210258521

namespace A017369

/-- `A017373(n)/A017368(n)` -/
def P1526964756210258521.Spec : Prop :=
  ∀ n, P1526964756210258521.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P7171214958527271102

`A017365(n)²*A017367(n)`
-/

namespace A017369.P7171214958527271102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n ^ 2 * A017367 n

end

end A017369.P7171214958527271102

namespace A017369

/-- `A017365(n)²*A017367(n)` -/
def P7171214958527271102.Spec : Prop :=
  ∀ n, P7171214958527271102.a n = A017369 n

theorem P7171214958527271102.correct : P7171214958527271102.Spec := by
  intro n
  simp only [A017369, Nat.add_sub_cancel, A017369.P7171214958527271102.a, A017369.P3058591175913204461.a, A017365, A017365.P3452265278948084008.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017369

/-! ## A017369.P11712659416768120590

`A017366(n)²*A017365(n)`
-/

namespace A017369.P11712659416768120590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n ^ 2 * A017365 n

end

end A017369.P11712659416768120590

namespace A017369

/-- `A017366(n)²*A017365(n)` -/
def P11712659416768120590.Spec : Prop :=
  ∀ n, P11712659416768120590.a n = A017369 n

theorem P11712659416768120590.correct : P11712659416768120590.Spec := by
  intro n
  simp only [A017369, Nat.add_sub_cancel, A017369.P11712659416768120590.a, A017369.P3058591175913204461.a, A017365, A017365.P3452265278948084008.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017369

/-! ## A017369.P17717015595009570983

`A017368(n)²/A017367(n)`
-/

namespace A017369.P17717015595009570983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017368 n ^ 2 : ℚ) / (A017367 n : ℚ)

end

end A017369.P17717015595009570983

namespace A017369

/-- `A017368(n)²/A017367(n)` -/
def P17717015595009570983.Spec : Prop :=
  ∀ n, P17717015595009570983.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P12883015291193824850

`A017371(n)/A017365(n)²`
-/

namespace A017369.P12883015291193824850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017371 n : ℚ) / (A017365 n ^ 2 : ℚ)

end

end A017369.P12883015291193824850

namespace A017369

/-- `A017371(n)/A017365(n)²` -/
def P12883015291193824850.Spec : Prop :=
  ∀ n, P12883015291193824850.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P12466202402971436646

`A017373(n)/A017366(n)²`
-/

namespace A017369.P12466202402971436646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017373 n : ℚ) / (A017366 n ^ 2 : ℚ)

end

end A017369.P12466202402971436646

namespace A017369

/-- `A017373(n)/A017366(n)²` -/
def P12466202402971436646.Spec : Prop :=
  ∀ n, P12466202402971436646.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P2982455862020776541

`A017365(n)/A017368(n)*A017372(n)`
-/

namespace A017369.P2982455862020776541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017365 n : ℚ) / (A017368 n : ℚ) * (A017372 n : ℚ)

end

end A017369.P2982455862020776541

namespace A017369

/-- `A017365(n)/A017368(n)*A017372(n)` -/
def P2982455862020776541.Spec : Prop :=
  ∀ n, P2982455862020776541.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P2888485487670128756

`A017366(n)*A017368(n)/A017365(n)`
-/

namespace A017369.P2888485487670128756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017366 n * A017368 n : ℚ) / (A017365 n : ℚ)

end

end A017369.P2888485487670128756

namespace A017369

/-- `A017366(n)*A017368(n)/A017365(n)` -/
def P2888485487670128756.Spec : Prop :=
  ∀ n, P2888485487670128756.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P18129154864038596009

`A017372(n)/(A017365(n)*A017366(n))`
-/

namespace A017369.P18129154864038596009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (A017365 n * A017366 n : ℚ)

end

end A017369.P18129154864038596009

namespace A017369

/-- `A017372(n)/(A017365(n)*A017366(n))` -/
def P18129154864038596009.Spec : Prop :=
  ∀ n, P18129154864038596009.a n = (A017369 n : ℚ)

end A017369

/-! ## A017369.P18315506898214855723

`lcm(2, (2-A008592(n+1))^5)`
-/

namespace A017369.P18315506898214855723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 - A008592 (n + 1)) ^ 5)

end

end A017369.P18315506898214855723

namespace A017369

/-- `lcm(2, (2-A008592(n+1))^5)` -/
def P18315506898214855723.Spec : Prop :=
  ∀ n, (P18315506898214855723.a n : ℤ) = A017369 n

end A017369

/-! ## A017369.P17087641169431123093

`A016889(Δ[n²])`
-/

namespace A017369.P17087641169431123093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016889 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017369.P17087641169431123093

namespace A017369

/-- `A016889(Δ[n²])` -/
def P17087641169431123093.Spec : Prop :=
  ∀ n, P17087641169431123093.a n = A017369 n

end A017369

/-! ## A017369.P4933357823504795957

`lcm(2, A016889(2*n+1))`
-/

namespace A017369.P4933357823504795957
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016889 (2 * n + 1))

end

end A017369.P4933357823504795957

namespace A017369

/-- `lcm(2, A016889(2*n+1))` -/
def P4933357823504795957.Spec : Prop :=
  ∀ n, (P4933357823504795957.a n : ℤ) = A017369 n

end A017369

/-! ## A017369.P6842623050861297251

`A016890(2*n+1)/(10*n+8)`
-/

namespace A017369.P6842623050861297251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016890 (2 * n + 1) : ℚ) / (10 * n + 8 : ℚ)

end

end A017369.P6842623050861297251

namespace A017369

/-- `A016890(2*n+1)/(10*n+8)` -/
def P6842623050861297251.Spec : Prop :=
  ∀ n, P6842623050861297251.a n = (A017369 n : ℚ)

theorem P6842623050861297251.correct : P6842623050861297251.Spec := by
  intro n
  simp only [A017369, Nat.add_sub_cancel, A017369.P6842623050861297251.a, A017369.P3058591175913204461.a, A016890, A016890.P2080566048522477546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017369

/-!
# A017370: a(n) = (10*n + 8)^6.

The programs for A017370, the canonical program `A017370.P14669210876778964149` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017370 has offset 0).

The definition of A017370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^6` (program `A017370.P14669210876778964149`, by `A017370.P14669210876778964149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017370.P14669210876778964149

`(10*n+8)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017370

/-- `(10*n+8)^6` -/
def P14669210876778964149.Spec : Prop :=
  ∀ n, (P14669210876778964149.a n : ℤ) = A017370 n

theorem P14669210876778964149.correct : P14669210876778964149.Spec := by
  intro n
  simp only [A017370]

end A017370

/-! ## A017370.P13939636648671801083

`A017367(n)²`
-/

namespace A017370.P13939636648671801083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n ^ 2

end

end A017370.P13939636648671801083

namespace A017370

/-- `A017367(n)²` -/
def P13939636648671801083.Spec : Prop :=
  ∀ n, P13939636648671801083.a n = A017370 n

theorem P13939636648671801083.correct : P13939636648671801083.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P13939636648671801083.a, A017370.P14669210876778964149.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P14919834047559308296

`(8*A016899(n))²`
-/

namespace A017370.P14919834047559308296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * A016899 n) ^ 2

end

end A017370.P14919834047559308296

namespace A017370

/-- `(8*A016899(n))²` -/
def P14919834047559308296.Spec : Prop :=
  ∀ n, P14919834047559308296.a n = A017370 n

theorem P14919834047559308296.correct : P14919834047559308296.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P14919834047559308296.a, A017370.P14669210876778964149.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P13578387492787155750

`(A017365(n)^3)²`
-/

namespace A017370.P13578387492787155750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n ^ 3) ^ 2

end

end A017370.P13578387492787155750

namespace A017370

/-- `(A017365(n)^3)²` -/
def P13578387492787155750.Spec : Prop :=
  ∀ n, P13578387492787155750.a n = A017370 n

theorem P13578387492787155750.correct : P13578387492787155750.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P13578387492787155750.a, A017370.P14669210876778964149.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P4810904213927452193

`sqrt(A017368(n)^3)`
-/

namespace A017370.P4810904213927452193
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017368 n ^ 3 : ℝ)

end

end A017370.P4810904213927452193

namespace A017370

/-- `sqrt(A017368(n)^3)` -/
def P4810904213927452193.Spec : Prop :=
  ∀ n, P4810904213927452193.a n = (A017370 n : ℝ)

end A017370

/-! ## A017370.P5963325207242240114

`(2*4*A016897(n)^3)²`
-/

namespace A017370.P5963325207242240114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (4 * A016897 n ^ 3)) ^ 2

end

end A017370.P5963325207242240114

namespace A017370

/-- `(2*4*A016897(n)^3)²` -/
def P5963325207242240114.Spec : Prop :=
  ∀ n, P5963325207242240114.a n = A017370 n

theorem P5963325207242240114.correct : P5963325207242240114.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P5963325207242240114.a, A017370.P14669210876778964149.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P4647588241482319563

`A017365(n)*A017369(n)`
-/

namespace A017370.P4647588241482319563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017369 n

end

end A017370.P4647588241482319563

namespace A017370

/-- `A017365(n)*A017369(n)` -/
def P4647588241482319563.Spec : Prop :=
  ∀ n, P4647588241482319563.a n = A017370 n

theorem P4647588241482319563.correct : P4647588241482319563.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P4647588241482319563.a, A017370.P14669210876778964149.a, A017365, A017365.P3452265278948084008.a, A017369, A017369.P3058591175913204461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P5860851193009445207

`A017366(n)*A017368(n)`
-/

namespace A017370.P5860851193009445207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n * A017368 n

end

end A017370.P5860851193009445207

namespace A017370

/-- `A017366(n)*A017368(n)` -/
def P5860851193009445207.Spec : Prop :=
  ∀ n, P5860851193009445207.a n = A017370 n

theorem P5860851193009445207.correct : P5860851193009445207.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P5860851193009445207.a, A017370.P14669210876778964149.a, A017366, A017366.P9177302132677222391.a, A017368, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P3177422576717399166

`A017371(n)/A017365(n)`
-/

namespace A017370.P3177422576717399166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017371 n : ℚ) / (A017365 n : ℚ)

end

end A017370.P3177422576717399166

namespace A017370

/-- `A017371(n)/A017365(n)` -/
def P3177422576717399166.Spec : Prop :=
  ∀ n, P3177422576717399166.a n = (A017370 n : ℚ)

end A017370

/-! ## A017370.P11261557877463417018

`A017372(n)/A017366(n)`
-/

namespace A017370.P11261557877463417018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (A017366 n : ℚ)

end

end A017370.P11261557877463417018

namespace A017370

/-- `A017372(n)/A017366(n)` -/
def P11261557877463417018.Spec : Prop :=
  ∀ n, P11261557877463417018.a n = (A017370 n : ℚ)

end A017370

/-! ## A017370.P8669357083745778213

`(A017365(n)*A017366(n))²`
-/

namespace A017370.P8669357083745778213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n * A017366 n) ^ 2

end

end A017370.P8669357083745778213

namespace A017370

/-- `(A017365(n)*A017366(n))²` -/
def P8669357083745778213.Spec : Prop :=
  ∀ n, P8669357083745778213.a n = A017370 n

theorem P8669357083745778213.correct : P8669357083745778213.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P8669357083745778213.a, A017370.P14669210876778964149.a, A017365, A017365.P3452265278948084008.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P7792736014339241773

`A017365(n)²*A017368(n)`
-/

namespace A017370.P7792736014339241773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n ^ 2 * A017368 n

end

end A017370.P7792736014339241773

namespace A017370

/-- `A017365(n)²*A017368(n)` -/
def P7792736014339241773.Spec : Prop :=
  ∀ n, P7792736014339241773.a n = A017370 n

theorem P7792736014339241773.correct : P7792736014339241773.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P7792736014339241773.a, A017370.P14669210876778964149.a, A017365, A017365.P3452265278948084008.a, A017368, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P10798252376480346921

`(A017369(n)/A017366(n))²`
-/

namespace A017370.P10798252376480346921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017369 n : ℚ) / (A017366 n : ℚ)) ^ 2

end

end A017370.P10798252376480346921

namespace A017370

/-- `(A017369(n)/A017366(n))²` -/
def P10798252376480346921.Spec : Prop :=
  ∀ n, P10798252376480346921.a n = (A017370 n : ℚ)

end A017370

/-! ## A017370.P6303254100172997020

`A017372(n)/A017365(n)²`
-/

namespace A017370.P6303254100172997020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (A017365 n ^ 2 : ℚ)

end

end A017370.P6303254100172997020

namespace A017370

/-- `A017372(n)/A017365(n)²` -/
def P6303254100172997020.Spec : Prop :=
  ∀ n, P6303254100172997020.a n = (A017370 n : ℚ)

end A017370

/-! ## A017370.P9606023206537708471

`(A017372(n)/A017369(n))²`
-/

namespace A017370.P9606023206537708471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017372 n : ℚ) / (A017369 n : ℚ)) ^ 2

end

end A017370.P9606023206537708471

namespace A017370

/-- `(A017372(n)/A017369(n))²` -/
def P9606023206537708471.Spec : Prop :=
  ∀ n, P9606023206537708471.a n = (A017370 n : ℚ)

end A017370

/-! ## A017370.P14102037913292696085

`A017372(n)/(2*A016897(n))²`
-/

namespace A017370.P14102037913292696085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / ((2 * A016897 n) ^ 2 : ℚ)

end

end A017370.P14102037913292696085

namespace A017370

/-- `A017372(n)/(2*A016897(n))²` -/
def P14102037913292696085.Spec : Prop :=
  ∀ n, P14102037913292696085.a n = (A017370 n : ℚ)

theorem P14102037913292696085.correct : P14102037913292696085.Spec := by
  intro n
  simp only [A017370, Nat.add_sub_cancel, A017370.P14102037913292696085.a, A017370.P14669210876778964149.a, A016897, A016897.P9287350145607759688.a, A017372, A017372.P11434467655764517889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017370

/-! ## A017370.P8464224972248312034

`A016890(Δ[n²])`
-/

namespace A017370.P8464224972248312034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016890 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017370.P8464224972248312034

namespace A017370

/-- `A016890(Δ[n²])` -/
def P8464224972248312034.Spec : Prop :=
  ∀ n, P8464224972248312034.a n = A017370 n

end A017370

/-! ## A017370.P299092334897791755

`A016887(Δ[n²])²`
-/

namespace A017370.P299092334897791755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017370.P299092334897791755

namespace A017370

/-- `A016887(Δ[n²])²` -/
def P299092334897791755.Spec : Prop :=
  ∀ n, P299092334897791755.a n = A017370 n

end A017370

/-! ## A017370.P9015708235142464707

`lcm(2, A016890(2*n+1))`
-/

namespace A017370.P9015708235142464707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016890 (2 * n + 1))

end

end A017370.P9015708235142464707

namespace A017370

/-- `lcm(2, A016890(2*n+1))` -/
def P9015708235142464707.Spec : Prop :=
  ∀ n, (P9015708235142464707.a n : ℤ) = A017370 n

end A017370

/-!
# A017371: a(n) = (10*n + 8)^7.

The programs for A017371, the canonical program `A017371.P1805080450590348052` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017371 has offset 0).

The definition of A017371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^7` (program `A017371.P1805080450590348052`, by `A017371.P1805080450590348052.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017371.P1805080450590348052

`(10*n+8)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017371

/-- `(10*n+8)^7` -/
def P1805080450590348052.Spec : Prop :=
  ∀ n, (P1805080450590348052.a n : ℤ) = A017371 n

theorem P1805080450590348052.correct : P1805080450590348052.Spec := by
  intro n
  simp only [A017371]

end A017371

/-! ## A017371.P7949771788166224273

`A017372(n)/(10*n+8)`
-/

namespace A017371.P7949771788166224273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017372 n : ℚ) / (10 * n + 8 : ℚ)

end

end A017371.P7949771788166224273

namespace A017371

/-- `A017372(n)/(10*n+8)` -/
def P7949771788166224273.Spec : Prop :=
  ∀ n, P7949771788166224273.a n = (A017371 n : ℚ)

end A017371

/-! ## A017371.P3123110632252932125

`A017365(n)*A017370(n)`
-/

namespace A017371.P3123110632252932125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017370 n

end

end A017371.P3123110632252932125

namespace A017371

/-- `A017365(n)*A017370(n)` -/
def P3123110632252932125.Spec : Prop :=
  ∀ n, P3123110632252932125.a n = A017371 n

theorem P3123110632252932125.correct : P3123110632252932125.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P3123110632252932125.a, A017371.P1805080450590348052.a, A017365, A017365.P3452265278948084008.a, A017370, A017370.P14669210876778964149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P16515012366914242011

`A017366(n)*A017369(n)`
-/

namespace A017371.P16515012366914242011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n * A017369 n

end

end A017371.P16515012366914242011

namespace A017371

/-- `A017366(n)*A017369(n)` -/
def P16515012366914242011.Spec : Prop :=
  ∀ n, P16515012366914242011.a n = A017371 n

theorem P16515012366914242011.correct : P16515012366914242011.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P16515012366914242011.a, A017371.P1805080450590348052.a, A017366, A017366.P9177302132677222391.a, A017369, A017369.P3058591175913204461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P10402685996314954794

`A017367(n)*A017368(n)`
-/

namespace A017371.P10402685996314954794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n * A017368 n

end

end A017371.P10402685996314954794

namespace A017371

/-- `A017367(n)*A017368(n)` -/
def P10402685996314954794.Spec : Prop :=
  ∀ n, P10402685996314954794.a n = A017371 n

theorem P10402685996314954794.correct : P10402685996314954794.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P10402685996314954794.a, A017371.P1805080450590348052.a, A017367, A017367.P16209840253877747607.a, A017368, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P9057856970207586737

`A017373(n)/A017366(n)`
-/

namespace A017371.P9057856970207586737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017373 n : ℚ) / (A017366 n : ℚ)

end

end A017371.P9057856970207586737

namespace A017371

/-- `A017373(n)/A017366(n)` -/
def P9057856970207586737.Spec : Prop :=
  ∀ n, P9057856970207586737.a n = (A017371 n : ℚ)

end A017371

/-! ## A017371.P8364243034141898229

`A017365(n)²*A017369(n)`
-/

namespace A017371.P8364243034141898229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n ^ 2 * A017369 n

end

end A017371.P8364243034141898229

namespace A017371

/-- `A017365(n)²*A017369(n)` -/
def P8364243034141898229.Spec : Prop :=
  ∀ n, P8364243034141898229.a n = A017371 n

theorem P8364243034141898229.correct : P8364243034141898229.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P8364243034141898229.a, A017371.P1805080450590348052.a, A017365, A017365.P3452265278948084008.a, A017369, A017369.P3058591175913204461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P879715767318809769

`A017366(n)²*A017367(n)`
-/

namespace A017371.P879715767318809769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n ^ 2 * A017367 n

end

end A017371.P879715767318809769

namespace A017371

/-- `A017366(n)²*A017367(n)` -/
def P879715767318809769.Spec : Prop :=
  ∀ n, P879715767318809769.a n = A017371 n

theorem P879715767318809769.correct : P879715767318809769.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P879715767318809769.a, A017371.P1805080450590348052.a, A017366, A017366.P9177302132677222391.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P16007393683457400177

`A017367(n)²*A017365(n)`
-/

namespace A017371.P16007393683457400177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n ^ 2 * A017365 n

end

end A017371.P16007393683457400177

namespace A017371

/-- `A017367(n)²*A017365(n)` -/
def P16007393683457400177.Spec : Prop :=
  ∀ n, P16007393683457400177.a n = A017371 n

theorem P16007393683457400177.correct : P16007393683457400177.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P16007393683457400177.a, A017371.P1805080450590348052.a, A017365, A017365.P3452265278948084008.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P16768442930511100816

`A017368(n)²/A017365(n)`
-/

namespace A017371.P16768442930511100816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017368 n ^ 2 : ℚ) / (A017365 n : ℚ)

end

end A017371.P16768442930511100816

namespace A017371

/-- `A017368(n)²/A017365(n)` -/
def P16768442930511100816.Spec : Prop :=
  ∀ n, P16768442930511100816.a n = (A017371 n : ℚ)

end A017371

/-! ## A017371.P46393872087153215

`A017366(n)²²/A017365(n)`
-/

namespace A017371.P46393872087153215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017366 n ^ 2) ^ 2 : ℚ) / (A017365 n : ℚ)

end

end A017371.P46393872087153215

namespace A017371

/-- `A017366(n)²²/A017365(n)` -/
def P46393872087153215.Spec : Prop :=
  ∀ n, P46393872087153215.a n = (A017371 n : ℚ)

end A017371

/-! ## A017371.P10369625277340976342

`A017365(n)*A017366(n)*A017368(n)`
-/

namespace A017371.P10369625277340976342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017366 n * A017368 n

end

end A017371.P10369625277340976342

namespace A017371

/-- `A017365(n)*A017366(n)*A017368(n)` -/
def P10369625277340976342.Spec : Prop :=
  ∀ n, P10369625277340976342.a n = A017371 n

theorem P10369625277340976342.correct : P10369625277340976342.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P10369625277340976342.a, A017371.P1805080450590348052.a, A017365, A017365.P3452265278948084008.a, A017366, A017366.P9177302132677222391.a, A017368, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P13145784396942523504

`A017365(n)*A017372(n)/A017366(n)`
-/

namespace A017371.P13145784396942523504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017365 n * A017372 n : ℚ) / (A017366 n : ℚ)

end

end A017371.P13145784396942523504

namespace A017371

/-- `A017365(n)*A017372(n)/A017366(n)` -/
def P13145784396942523504.Spec : Prop :=
  ∀ n, P13145784396942523504.a n = (A017371 n : ℚ)

end A017371

/-! ## A017371.P10069577596979655214

`A017369(n)/A017367(n)*A017369(n)`
-/

namespace A017371.P10069577596979655214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017369 n : ℚ) / (A017367 n : ℚ) * (A017369 n : ℚ)

end

end A017371.P10069577596979655214

namespace A017371

/-- `A017369(n)/A017367(n)*A017369(n)` -/
def P10069577596979655214.Spec : Prop :=
  ∀ n, P10069577596979655214.a n = (A017371 n : ℚ)

end A017371

/-! ## A017371.P5259289989847171729

`A016891(Δ[n²])`
-/

namespace A017371.P5259289989847171729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016891 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017371.P5259289989847171729

namespace A017371

/-- `A016891(Δ[n²])` -/
def P5259289989847171729.Spec : Prop :=
  ∀ n, P5259289989847171729.a n = A017371 n

end A017371

/-! ## A017371.P8254416325808788472

`lcm(2, A016891(2*n+1))`
-/

namespace A017371.P8254416325808788472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016891 (2 * n + 1))

end

end A017371.P8254416325808788472

namespace A017371

/-- `lcm(2, A016891(2*n+1))` -/
def P8254416325808788472.Spec : Prop :=
  ∀ n, (P8254416325808788472.a n : ℤ) = A017371 n

end A017371

/-! ## A017371.P17265431993262875904

`(10*n+8)*A016890(2*n+1)`
-/

namespace A017371.P17265431993262875904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 8 : ℤ) * A016890 (2 * n + 1)

end

end A017371.P17265431993262875904

namespace A017371

/-- `(10*n+8)*A016890(2*n+1)` -/
def P17265431993262875904.Spec : Prop :=
  ∀ n, P17265431993262875904.a n = A017371 n

theorem P17265431993262875904.correct : P17265431993262875904.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P17265431993262875904.a, A017371.P1805080450590348052.a, A016890, A016890.P2080566048522477546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P2500388803984651482

`A016892(2*n+1)/(10*n+8)`
-/

namespace A017371.P2500388803984651482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016892 (2 * n + 1) : ℚ) / (10 * n + 8 : ℚ)

end

end A017371.P2500388803984651482

namespace A017371

/-- `A016892(2*n+1)/(10*n+8)` -/
def P2500388803984651482.Spec : Prop :=
  ∀ n, P2500388803984651482.a n = (A017371 n : ℚ)

theorem P2500388803984651482.correct : P2500388803984651482.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P2500388803984651482.a, A017371.P1805080450590348052.a, A016892, A016892.P4747035820161575619.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P16316384014759152078

`A016887(2*n+1)²*(10*n+8)`
-/

namespace A017371.P16316384014759152078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 (2 * n + 1) ^ 2 * (10 * n + 8 : ℤ)

end

end A017371.P16316384014759152078

namespace A017371

/-- `A016887(2*n+1)²*(10*n+8)` -/
def P16316384014759152078.Spec : Prop :=
  ∀ n, P16316384014759152078.a n = A017371 n

theorem P16316384014759152078.correct : P16316384014759152078.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P16316384014759152078.a, A017371.P1805080450590348052.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-! ## A017371.P11442927764811298080

`(10*n+8)²*A016889(2*n+1)`
-/

namespace A017371.P11442927764811298080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 8) ^ 2 : ℤ) * A016889 (2 * n + 1)

end

end A017371.P11442927764811298080

namespace A017371

/-- `(10*n+8)²*A016889(2*n+1)` -/
def P11442927764811298080.Spec : Prop :=
  ∀ n, P11442927764811298080.a n = A017371 n

theorem P11442927764811298080.correct : P11442927764811298080.Spec := by
  intro n
  simp only [A017371, Nat.add_sub_cancel, A017371.P11442927764811298080.a, A017371.P1805080450590348052.a, A016889, A016889.P1857063498717398882.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017371

/-!
# A017372: a(n) = (10*n+8)^8.

The programs for A017372, the canonical program `A017372.P11434467655764517889` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017372 has offset 0).

The definition of A017372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^8` (program `A017372.P11434467655764517889`, by `A017372.P11434467655764517889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017372.P11434467655764517889

`(10*n+8)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017372

/-- `(10*n+8)^8` -/
def P11434467655764517889.Spec : Prop :=
  ∀ n, (P11434467655764517889.a n : ℤ) = A017372 n

theorem P11434467655764517889.correct : P11434467655764517889.Spec := by
  intro n
  simp only [A017372]

end A017372

/-! ## A017372.P5691905978232249229

`A001016(A017365(n))`
-/

namespace A017372.P5691905978232249229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A017365 n).toNat

end

end A017372.P5691905978232249229

namespace A017372

/-- `A001016(A017365(n))` -/
def P5691905978232249229.Spec : Prop :=
  ∀ n, P5691905978232249229.a n = A017372 n

end A017372

/-! ## A017372.P5376745619352562835

`A017368(n)²`
-/

namespace A017372.P5376745619352562835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017368 n ^ 2

end

end A017372.P5376745619352562835

namespace A017372

/-- `A017368(n)²` -/
def P5376745619352562835.Spec : Prop :=
  ∀ n, P5376745619352562835.a n = A017372 n

theorem P5376745619352562835.correct : P5376745619352562835.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P5376745619352562835.a, A017372.P11434467655764517889.a, A017368, A017368.P4618921898896536041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P1263258000743477664

`A017366(n)²²`
-/

namespace A017372.P1263258000743477664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017366 n ^ 2) ^ 2

end

end A017372.P1263258000743477664

namespace A017372

/-- `A017366(n)²²` -/
def P1263258000743477664.Spec : Prop :=
  ∀ n, P1263258000743477664.a n = A017372 n

theorem P1263258000743477664.correct : P1263258000743477664.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P1263258000743477664.a, A017372.P11434467655764517889.a, A017366, A017366.P9177302132677222391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P11534966069184081165

`(A017353(n)+1)²²²`
-/

namespace A017372.P11534966069184081165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017353 n + 1) ^ 2) ^ 2) ^ 2

end

end A017372.P11534966069184081165

namespace A017372

/-- `(A017353(n)+1)²²²` -/
def P11534966069184081165.Spec : Prop :=
  ∀ n, P11534966069184081165.a n = A017372 n

theorem P11534966069184081165.correct : P11534966069184081165.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P11534966069184081165.a, A017372.P11434467655764517889.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P13146427981609330010

`(A017341(n)+2)²²²`
-/

namespace A017372.P13146427981609330010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017341 n + 2) ^ 2) ^ 2) ^ 2

end

end A017372.P13146427981609330010

namespace A017372

/-- `(A017341(n)+2)²²²` -/
def P13146427981609330010.Spec : Prop :=
  ∀ n, P13146427981609330010.a n = A017372 n

theorem P13146427981609330010.correct : P13146427981609330010.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P13146427981609330010.a, A017372.P11434467655764517889.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P16224272884634954858

`(1-A017377(n))²²²`
-/

namespace A017372.P16224272884634954858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - A017377 n) ^ 2) ^ 2) ^ 2

end

end A017372.P16224272884634954858

namespace A017372

/-- `(1-A017377(n))²²²` -/
def P16224272884634954858.Spec : Prop :=
  ∀ n, P16224272884634954858.a n = A017372 n

theorem P16224272884634954858.correct : P16224272884634954858.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P16224272884634954858.a, A017372.P11434467655764517889.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P9712017865793667706

`(2*A016897(n))²²²`
-/

namespace A017372.P9712017865793667706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * A016897 n) ^ 2) ^ 2) ^ 2

end

end A017372.P9712017865793667706

namespace A017372

/-- `(2*A016897(n))²²²` -/
def P9712017865793667706.Spec : Prop :=
  ∀ n, P9712017865793667706.a n = A017372 n

theorem P9712017865793667706.correct : P9712017865793667706.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P9712017865793667706.a, A017372.P11434467655764517889.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P17901175216287198336

`(A017257(n)+n)²²²`
-/

namespace A017372.P17901175216287198336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017257 n + (n : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017372.P17901175216287198336

namespace A017372

/-- `(A017257(n)+n)²²²` -/
def P17901175216287198336.Spec : Prop :=
  ∀ n, P17901175216287198336.a n = A017372 n

theorem P17901175216287198336.correct : P17901175216287198336.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P17901175216287198336.a, A017372.P11434467655764517889.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P2670220237899768269

`(n-A017485(n))²²²`
-/

namespace A017372.P2670220237899768269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017485 n) ^ 2) ^ 2) ^ 2

end

end A017372.P2670220237899768269

namespace A017372

/-- `(n-A017485(n))²²²` -/
def P2670220237899768269.Spec : Prop :=
  ∀ n, P2670220237899768269.a n = A017372 n

theorem P2670220237899768269.correct : P2670220237899768269.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P2670220237899768269.a, A017372.P11434467655764517889.a, A017485, A017485.P4370091181196038588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P3794588945851789741

`A017365(n)*A017371(n)`
-/

namespace A017372.P3794588945851789741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017371 n

end

end A017372.P3794588945851789741

namespace A017372

/-- `A017365(n)*A017371(n)` -/
def P3794588945851789741.Spec : Prop :=
  ∀ n, P3794588945851789741.a n = A017372 n

theorem P3794588945851789741.correct : P3794588945851789741.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P3794588945851789741.a, A017372.P11434467655764517889.a, A017365, A017365.P3452265278948084008.a, A017371, A017371.P1805080450590348052.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P1755494244059067916

`A017366(n)*A017370(n)`
-/

namespace A017372.P1755494244059067916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017366 n * A017370 n

end

end A017372.P1755494244059067916

namespace A017372

/-- `A017366(n)*A017370(n)` -/
def P1755494244059067916.Spec : Prop :=
  ∀ n, P1755494244059067916.a n = A017372 n

theorem P1755494244059067916.correct : P1755494244059067916.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P1755494244059067916.a, A017372.P11434467655764517889.a, A017366, A017366.P9177302132677222391.a, A017370, A017370.P14669210876778964149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P4785798219707796913

`A017367(n)*A017369(n)`
-/

namespace A017372.P4785798219707796913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n * A017369 n

end

end A017372.P4785798219707796913

namespace A017372

/-- `A017367(n)*A017369(n)` -/
def P4785798219707796913.Spec : Prop :=
  ∀ n, P4785798219707796913.a n = A017372 n

theorem P4785798219707796913.correct : P4785798219707796913.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P4785798219707796913.a, A017372.P11434467655764517889.a, A017367, A017367.P16209840253877747607.a, A017369, A017369.P3058591175913204461.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P18070778566753765329

`(2-A008592(n+1))²²²`
-/

namespace A017372.P18070778566753765329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 - A008592 (n + 1)) ^ 2) ^ 2) ^ 2

end

end A017372.P18070778566753765329

namespace A017372

/-- `(2-A008592(n+1))²²²` -/
def P18070778566753765329.Spec : Prop :=
  ∀ n, P18070778566753765329.a n = A017372 n

theorem P18070778566753765329.correct : P18070778566753765329.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P18070778566753765329.a, A017372.P11434467655764517889.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-! ## A017372.P252778533822278227

`A016892(Δ[n²])`
-/

namespace A017372.P252778533822278227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016892 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017372.P252778533822278227

namespace A017372

/-- `A016892(Δ[n²])` -/
def P252778533822278227.Spec : Prop :=
  ∀ n, P252778533822278227.a n = A017372 n

end A017372

/-! ## A017372.P7001804449637799706

`A016888(Δ[n²])²`
-/

namespace A017372.P7001804449637799706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016888 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017372.P7001804449637799706

namespace A017372

/-- `A016888(Δ[n²])²` -/
def P7001804449637799706.Spec : Prop :=
  ∀ n, P7001804449637799706.a n = A017372 n

end A017372

/-! ## A017372.P1303828058074052007

`A016886(Δ[n²])²²`
-/

namespace A017372.P1303828058074052007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017372.P1303828058074052007

namespace A017372

/-- `A016886(Δ[n²])²²` -/
def P1303828058074052007.Spec : Prop :=
  ∀ n, P1303828058074052007.a n = A017372 n

end A017372

/-! ## A017372.P11147697853509783545

`lcm(2, A016892(2*n+1))`
-/

namespace A017372.P11147697853509783545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A016892 (2 * n + 1))

end

end A017372.P11147697853509783545

namespace A017372

/-- `lcm(2, A016892(2*n+1))` -/
def P11147697853509783545.Spec : Prop :=
  ∀ n, (P11147697853509783545.a n : ℤ) = A017372 n

end A017372

/-! ## A017372.P6777732857404058060

`A273375(2*(n+1))²²`
-/

namespace A017372.P6777732857404058060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273375 (2 * (n + 1)) ^ 2) ^ 2

end

end A017372.P6777732857404058060

namespace A017372

/-- `A273375(2*(n+1))²²` -/
def P6777732857404058060.Spec : Prop :=
  ∀ n, P6777732857404058060.a n = A017372 n

end A017372

/-! ## A017372.P7179276702160581932

`A016885(2*n+1)²²²`
-/

namespace A017372.P7179276702160581932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016885 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017372.P7179276702160581932

namespace A017372

/-- `A016885(2*n+1)²²²` -/
def P7179276702160581932.Spec : Prop :=
  ∀ n, P7179276702160581932.a n = A017372 n

theorem P7179276702160581932.correct : P7179276702160581932.Spec := by
  intro n
  simp only [A017372, Nat.add_sub_cancel, A017372.P7179276702160581932.a, A017372.P11434467655764517889.a, A016885, A016885.P12442016633976001399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017372

/-!
# A017373: a(n) = (10*n + 8)^9.

The programs for A017373, the canonical program `A017373.P5969824595295521498` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017373 has offset 0).

The definition of A017373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+8)^9` (program `A017373.P5969824595295521498`, by `A017373.P5969824595295521498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017373.P5969824595295521498

`(10*n+8)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017373

/-- `(10*n+8)^9` -/
def P5969824595295521498.Spec : Prop :=
  ∀ n, (P5969824595295521498.a n : ℤ) = A017373 n

theorem P5969824595295521498.correct : P5969824595295521498.Spec := by
  intro n
  simp only [A017373]

end A017373

/-! ## A017373.P714862403837046204

`sqrt(A017370(n)^3)`
-/

namespace A017373.P714862403837046204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017370 n ^ 3 : ℝ)

end

end A017373.P714862403837046204

namespace A017373

/-- `sqrt(A017370(n)^3)` -/
def P714862403837046204.Spec : Prop :=
  ∀ n, P714862403837046204.a n = (A017373 n : ℝ)

end A017373

/-! ## A017373.P7818536535239114475

`A017365(n)*A017372(n)`
-/

namespace A017373.P7818536535239114475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017372 n

end

end A017373.P7818536535239114475

namespace A017373

/-- `A017365(n)*A017372(n)` -/
def P7818536535239114475.Spec : Prop :=
  ∀ n, P7818536535239114475.a n = A017373 n

theorem P7818536535239114475.correct : P7818536535239114475.Spec := by
  intro n
  simp only [A017373, Nat.add_sub_cancel, A017373.P7818536535239114475.a, A017373.P5969824595295521498.a, A017365, A017365.P3452265278948084008.a, A017372, A017372.P11434467655764517889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017373

/-! ## A017373.P17739894060363008762

`A017367(n)*A017370(n)`
-/

namespace A017373.P17739894060363008762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017367 n * A017370 n

end

end A017373.P17739894060363008762

namespace A017373

/-- `A017367(n)*A017370(n)` -/
def P17739894060363008762.Spec : Prop :=
  ∀ n, P17739894060363008762.a n = A017373 n

theorem P17739894060363008762.correct : P17739894060363008762.Spec := by
  intro n
  simp only [A017373, Nat.add_sub_cancel, A017373.P17739894060363008762.a, A017373.P5969824595295521498.a, A017367, A017367.P16209840253877747607.a, A017370, A017370.P14669210876778964149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017373

/-! ## A017373.P4669768055815008236

`2*A016897(n)*A017372(n)`
-/

namespace A017373.P4669768055815008236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016897 n * A017372 n)

end

end A017373.P4669768055815008236

namespace A017373

/-- `2*A016897(n)*A017372(n)` -/
def P4669768055815008236.Spec : Prop :=
  ∀ n, P4669768055815008236.a n = A017373 n

theorem P4669768055815008236.correct : P4669768055815008236.Spec := by
  intro n
  simp only [A017373, Nat.add_sub_cancel, A017373.P4669768055815008236.a, A017373.P5969824595295521498.a, A016897, A016897.P9287350145607759688.a, A017372, A017372.P11434467655764517889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017373

/-! ## A017373.P10207120308456018311

`A017366(n)²²*sqrt(A017366(n))`
-/

namespace A017373.P10207120308456018311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A017366 n ^ 2) ^ 2 : ℝ) * Real.sqrt (A017366 n : ℝ)

end

end A017373.P10207120308456018311

namespace A017373

/-- `A017366(n)²²*sqrt(A017366(n))` -/
def P10207120308456018311.Spec : Prop :=
  ∀ n, P10207120308456018311.a n = (A017373 n : ℝ)

end A017373

/-! ## A017373.P14936301696486442655

`A017368(n)²*sqrt(sqrt(A017368(n)))`
-/

namespace A017373.P14936301696486442655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017368 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017368 n : ℝ))

end

end A017373.P14936301696486442655

namespace A017373

/-- `A017368(n)²*sqrt(sqrt(A017368(n)))` -/
def P14936301696486442655.Spec : Prop :=
  ∀ n, P14936301696486442655.a n = (A017373 n : ℝ)

end A017373

/-! ## A017373.P14561876196578902863

`A016893(2*n+1)`
-/

namespace A017373.P14561876196578902863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016893 (2 * n + 1)

end

end A017373.P14561876196578902863

namespace A017373

/-- `A016893(2*n+1)` -/
def P14561876196578902863.Spec : Prop :=
  ∀ n, P14561876196578902863.a n = A017373 n

theorem P14561876196578902863.correct : P14561876196578902863.Spec := by
  intro n
  simp only [A017373, Nat.add_sub_cancel, A017373.P14561876196578902863.a, A017373.P5969824595295521498.a, A016893, A016893.P16330274285848702467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017373

/-! ## A017373.P10941254663942174201

`A016887(2*n+1)²*A016887(2*n+1)`
-/

namespace A017373.P10941254663942174201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016887 (2 * n + 1) ^ 2 * A016887 (2 * n + 1)

end

end A017373.P10941254663942174201

namespace A017373

/-- `A016887(2*n+1)²*A016887(2*n+1)` -/
def P10941254663942174201.Spec : Prop :=
  ∀ n, P10941254663942174201.a n = A017373 n

theorem P10941254663942174201.correct : P10941254663942174201.Spec := by
  intro n
  simp only [A017373, Nat.add_sub_cancel, A017373.P10941254663942174201.a, A017373.P5969824595295521498.a, A016887, A016887.P17409783610642502630.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017373

/-! ## A017373.P3678395879917781814

`A001017(A017365(n))`
-/

namespace A017373.P3678395879917781814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017365 n).toNat

end

end A017373.P3678395879917781814

namespace A017373

/-- `A001017(A017365(n))` -/
def P3678395879917781814.Spec : Prop :=
  ∀ n, P3678395879917781814.a n = A017373 n

end A017373

/-! ## A017373.P9134888094081423427

`A001017(A017353(n)+1)`
-/

namespace A017373.P9134888094081423427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n + 1).toNat

end

end A017373.P9134888094081423427

namespace A017373

/-- `A001017(A017353(n)+1)` -/
def P9134888094081423427.Spec : Prop :=
  ∀ n, P9134888094081423427.a n = A017373 n

end A017373

/-! ## A017373.P16164282076835659346

`A001017(A017341(n)+2)`
-/

namespace A017373.P16164282076835659346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017341 n + 2).toNat

end

end A017373.P16164282076835659346

namespace A017373

/-- `A001017(A017341(n)+2)` -/
def P16164282076835659346.Spec : Prop :=
  ∀ n, P16164282076835659346.a n = A017373 n

end A017373

/-! ## A017373.P5622288533141255082

`A001017(A017281(n)+7)`
-/

namespace A017373.P5622288533141255082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + 7).toNat

end

end A017373.P5622288533141255082

namespace A017373

/-- `A001017(A017281(n)+7)` -/
def P5622288533141255082.Spec : Prop :=
  ∀ n, P5622288533141255082.a n = A017373 n

end A017373

/-! ## A017373.P8998858993628312586

`A001017(A017497(n)-(n+1))`
-/

namespace A017373.P8998858993628312586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - (n + 1 : ℤ)).toNat

end

end A017373.P8998858993628312586

namespace A017373

/-- `A001017(A017497(n)-(n+1))` -/
def P8998858993628312586.Spec : Prop :=
  ∀ n, P8998858993628312586.a n = A017373 n

end A017373

/-! ## A017373.P18409390324904199374

`A001017(A017497(n)-1-n)`
-/

namespace A017373.P18409390324904199374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - 1 - (n : ℤ)).toNat

end

end A017373.P18409390324904199374

namespace A017373

/-- `A001017(A017497(n)-1-n)` -/
def P18409390324904199374.Spec : Prop :=
  ∀ n, P18409390324904199374.a n = A017373 n

end A017373

/-! ## A017373.P7963408058207269548

`A001017(A017617(n)-2*n)`
-/

namespace A017373.P7963408058207269548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017617 n - (2 * n : ℤ)).toNat

end

end A017373.P7963408058207269548

namespace A017373

/-- `A001017(A017617(n)-2*n)` -/
def P7963408058207269548.Spec : Prop :=
  ∀ n, P7963408058207269548.a n = A017373 n

end A017373

/-! ## A017373.P1925174562255422011

`A001017(A017617(n)-n-n)`
-/

namespace A017373.P1925174562255422011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017617 n - (n : ℤ) - (n : ℤ)).toNat

end

end A017373.P1925174562255422011

namespace A017373

/-- `A001017(A017617(n)-n-n)` -/
def P1925174562255422011.Spec : Prop :=
  ∀ n, P1925174562255422011.a n = A017373 n

end A017373

/-!
# A017374: 

The programs for A017374, there is no canonical definition to state claims against.
-/

/-! ## A017374.P1053202739355033500

`(10*n+8)^10`
-/

namespace A017374.P1053202739355033500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 8) ^ 10

end

end A017374.P1053202739355033500

/-! ## A017374.P14269112965240425961

`A017369(n)²`
-/

namespace A017374.P14269112965240425961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017369 n ^ 2

end

end A017374.P14269112965240425961

/-! ## A017374.P16120573760650255185

`sqrt(A017368(n)^5)`
-/

namespace A017374.P16120573760650255185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017368 n ^ 5 : ℝ)

end

end A017374.P16120573760650255185

/-! ## A017374.P14900896885478248858

`A017365(n)²*A017372(n)`
-/

namespace A017374.P14900896885478248858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n ^ 2 * A017372 n

end

end A017374.P14900896885478248858

/-! ## A017374.P12897839779478685051

`(2*A016897(n))²*A017372(n)`
-/

namespace A017374.P12897839779478685051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A016897 n) ^ 2 * A017372 n

end

end A017374.P12897839779478685051

/-! ## A017374.P3276060485924272934

`A016894(2*n+1)`
-/

namespace A017374.P3276060485924272934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016894 (2 * n + 1)

end

end A017374.P3276060485924272934

/-! ## A017374.P10058984648831051703

`A016889(2*n+1)²`
-/

namespace A017374.P10058984648831051703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016889 (2 * n + 1) ^ 2

end

end A017374.P10058984648831051703

/-! ## A017374.P17293816983439789671

`(A016885(2*n+1)²*A016887(2*n+1))²`
-/

namespace A017374.P17293816983439789671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016885 (2 * n + 1) ^ 2 * A016887 (2 * n + 1)) ^ 2

end

end A017374.P17293816983439789671

/-! ## A017374.P13215717291858443701

`(A016886(2*n+1)²*A016885(2*n+1))²`
-/

namespace A017374.P13215717291858443701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016886 (2 * n + 1) ^ 2 * A016885 (2 * n + 1)) ^ 2

end

end A017374.P13215717291858443701

/-! ## A017374.P17967588390324158509

`A273375(2*n+2)²²*A273375(2*n+2)`
-/

namespace A017374.P17967588390324158509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273375 (2 * n + 2) ^ 2) ^ 2 * A273375 (2 * n + 2)

end

end A017374.P17967588390324158509

/-! ## A017374.P1041092945203224764

`A008454(2*A016897(n))`
-/

namespace A017374.P1041092945203224764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (2 * A016897 n).toNat

end

end A017374.P1041092945203224764

/-!
# A017375: 

The programs for A017375, there is no canonical definition to state claims against.
-/

/-! ## A017375.P7827636657405793325

`(10*n+8)^11`
-/

namespace A017375.P7827636657405793325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 8) ^ 11

end

end A017375.P7827636657405793325

/-! ## A017375.P12785472787326239649

`A017365(n)*A017372(n)*A017365(n)²`
-/

namespace A017375.P12785472787326239649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n * A017372 n * A017365 n ^ 2

end

end A017375.P12785472787326239649

/-! ## A017375.P15458248442118233473

`A016887(2*n+1)²²/A016885(2*n+1)`
-/

namespace A017375.P15458248442118233473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A016887 (2 * n + 1) ^ 2) ^ 2 : ℚ) / (A016885 (2 * n + 1) : ℚ)

end

end A017375.P15458248442118233473

/-! ## A017375.P15339848760458927715

`A008455(A017353(n)+1)`
-/

namespace A017375.P15339848760458927715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017353 n + 1).toNat

end

end A017375.P15339848760458927715

/-! ## A017375.P5579049229422014562

`A008455(A017317(n)+4)`
-/

namespace A017375.P5579049229422014562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017317 n + 4).toNat

end

end A017375.P5579049229422014562

/-! ## A017375.P11887020029112638210

`A008455(A017281(n)+7)`
-/

namespace A017375.P11887020029112638210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 7).toNat

end

end A017375.P11887020029112638210

/-! ## A017375.P10414034443329565091

`A008455(A008592(n)+8)`
-/

namespace A017375.P10414034443329565091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008592 n + 8).toNat

end

end A017375.P10414034443329565091

/-! ## A017375.P12704622919104345355

`A008455(A017617(n)-2*n)`
-/

namespace A017375.P12704622919104345355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017617 n - (2 * n : ℤ)).toNat

end

end A017375.P12704622919104345355

/-! ## A017375.P12233460068403219336

`A008455(A017617(n)-n-n)`
-/

namespace A017375.P12233460068403219336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017617 n - (n : ℤ) - (n : ℤ)).toNat

end

end A017375.P12233460068403219336

/-!
# A017376: 

The programs for A017376, there is no canonical definition to state claims against.
-/

/-! ## A017376.P4023749501450917151

`(10*n+8)^12`
-/

namespace A017376.P4023749501450917151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 8) ^ 12

end

end A017376.P4023749501450917151

/-! ## A017376.P8667884841598496250

`A017370(n)²`
-/

namespace A017376.P8667884841598496250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017370 n ^ 2

end

end A017376.P8667884841598496250

/-! ## A017376.P16343859573668078987

`sqrt(A017372(n))*A017372(n)`
-/

namespace A017376.P16343859573668078987
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017372 n : ℝ) * (A017372 n : ℝ)

end

end A017376.P16343859573668078987

/-! ## A017376.P4064068793300830740

`A017365(n)²²*A017372(n)`
-/

namespace A017376.P4064068793300830740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n ^ 2) ^ 2 * A017372 n

end

end A017376.P4064068793300830740

/-! ## A017376.P9932459578335678487

`A016887(2*n+1)²²`
-/

namespace A017376.P9932459578335678487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016887 (2 * n + 1) ^ 2) ^ 2

end

end A017376.P9932459578335678487

/-! ## A017376.P8277166658735331962

`(A273375(2*n+2)²*A273375(2*n+2))²`
-/

namespace A017376.P8277166658735331962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273375 (2 * n + 2) ^ 2 * A273375 (2 * n + 2)) ^ 2

end

end A017376.P8277166658735331962

/-! ## A017376.P2156658898619358657

`sqrt(A017372(n)^3)`
-/

namespace A017376.P2156658898619358657
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017372 n ^ 3 : ℝ)

end

end A017376.P2156658898619358657

/-! ## A017376.P2343576902263064870

`A000578(A017353(n)+1)²²`
-/

namespace A017376.P2343576902263064870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017353 n + 1).toNat ^ 2) ^ 2

end

end A017376.P2343576902263064870

/-! ## A017376.P3574673686660943614

`A000578(A017341(n)+2)²²`
-/

namespace A017376.P3574673686660943614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017341 n + 2).toNat ^ 2) ^ 2

end

end A017376.P3574673686660943614

/-! ## A017376.P2275628455338691904

`A000578(A017377(n)-1)²²`
-/

namespace A017376.P2275628455338691904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017377 n - 1).toNat ^ 2) ^ 2

end

end A017376.P2275628455338691904

/-! ## A017376.P8846677621870845417

`A000578(A016885(2*n+1))²²`
-/

namespace A017376.P8846677621870845417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A016885 (2 * n + 1)).toNat ^ 2) ^ 2

end

end A017376.P8846677621870845417

/-!
# A017377: a(n) = 10*n + 9.

The programs for A017377, the canonical program `A017377.P8985772118360569930` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017377 has offset 0).

The definition of A017377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*n+9` (program `A017377.P8985772118360569930`, by `A017377.P8985772118360569930.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017377.P8985772118360569930

`10*n+9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017377

/-- `10*n+9` -/
def P8985772118360569930.Spec : Prop :=
  ∀ n, (P8985772118360569930.a n : ℤ) = A017377 n

theorem P8985772118360569930.correct : P8985772118360569930.Spec := by
  intro n
  simp only [A017377]

end A017377

/-!
# A017378: a(n) = (10*n + 9)^2.

The programs for A017378, the canonical program `A017378.P8023755885859236069` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017378 has offset 0).

The definition of A017378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)²` (program `A017378.P8023755885859236069`, by `A017378.P8023755885859236069.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017378.P8023755885859236069

`(10*n+9)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017378

/-- `(10*n+9)²` -/
def P8023755885859236069.Spec : Prop :=
  ∀ n, (P8023755885859236069.a n : ℤ) = A017378 n

theorem P8023755885859236069.correct : P8023755885859236069.Spec := by
  intro n
  simp only [A017378]

end A017378

/-! ## A017378.P17571583429282332866

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=81, a(1)=361, a(2)=841`
-/

namespace A017378.P17571583429282332866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [81, 361, 841] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A017378.P17571583429282332866

namespace A017378

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17571583429282332866.Spec : Prop :=
  ∀ n, P17571583429282332866.a n = A017378 n

theorem P17571583429282332866.correct : P17571583429282332866.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A017378, Nat.add_sub_cancel, A017378.P17571583429282332866.a, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A017378, Nat.add_sub_cancel, A017378.P17571583429282332866.a, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017378

/-! ## A017378.P1072736562417786219

`record[(gcd(10, n)+n-1)²]`
-/

namespace A017378.P1072736562417786219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 10 n : ℤ) + ((n : ℤ) - 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017378.P1072736562417786219

namespace A017378

/-- `record[(gcd(10, n)+n-1)²]` -/
def P1072736562417786219.Spec : Prop :=
  ∀ n, P1072736562417786219.a n = A017378 n

end A017378

/-! ## A017378.P671697454220289740

`record[(lcm(4, n+3)+n-3)²]`
-/

namespace A017378.P671697454220289740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 3) : ℤ) + ((n : ℤ) - 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017378.P671697454220289740

namespace A017378

/-- `record[(lcm(4, n+3)+n-3)²]` -/
def P671697454220289740.Spec : Prop :=
  ∀ n, P671697454220289740.a n = A017378 n

end A017378

/-! ## A017378.P2800034374443455958

`sqrt(A017380(n))`
-/

namespace A017378.P2800034374443455958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017380 n : ℝ)

end

end A017378.P2800034374443455958

namespace A017378

/-- `sqrt(A017380(n))` -/
def P2800034374443455958.Spec : Prop :=
  ∀ n, P2800034374443455958.a n = (A017378 n : ℝ)

end A017378

/-! ## A017378.P18352626274254122810

`A017377(n)^2`
-/

namespace A017378.P18352626274254122810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n ^ 2

end

end A017378.P18352626274254122810

namespace A017378

/-- `A017377(n)^2` -/
def P18352626274254122810.Spec : Prop :=
  ∀ n, P18352626274254122810.a n = A017378 n

theorem P18352626274254122810.correct : P18352626274254122810.Spec := by
  intro n
  simp only [A017378, Nat.add_sub_cancel, A017378.P18352626274254122810.a, A017378.P8023755885859236069.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017378

/-! ## A017378.P9799248002138231255

`sqrt(sqrt(A017384(n)))`
-/

namespace A017378.P9799248002138231255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A017384 n : ℝ))

end

end A017378.P9799248002138231255

namespace A017378

/-- `sqrt(sqrt(A017384(n)))` -/
def P9799248002138231255.Spec : Prop :=
  ∀ n, P9799248002138231255.a n = (A017378 n : ℝ)

end A017378

/-! ## A017378.P11983405744836153699

`A017382(n)^(1/3)`
-/

namespace A017378.P11983405744836153699
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017382 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A017378.P11983405744836153699

namespace A017378

/-- `A017382(n)^(1/3)` -/
def P11983405744836153699.Spec : Prop :=
  ∀ n, P11983405744836153699.a n = (A017378 n : ℝ)

end A017378

/-! ## A017378.P3072211965676923742

`A017379(n)^(2/3)`
-/

namespace A017378.P3072211965676923742
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017379 n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A017378.P3072211965676923742

namespace A017378

/-- `A017379(n)^(2/3)` -/
def P3072211965676923742.Spec : Prop :=
  ∀ n, P3072211965676923742.a n = (A017378 n : ℝ)

end A017378

/-! ## A017378.P3655379922726223465

`A017379(n)/A017377(n)`
-/

namespace A017378.P3655379922726223465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017379 n : ℚ) / (A017377 n : ℚ)

end

end A017378.P3655379922726223465

namespace A017378

/-- `A017379(n)/A017377(n)` -/
def P3655379922726223465.Spec : Prop :=
  ∀ n, P3655379922726223465.a n = (A017378 n : ℚ)

end A017378

/-! ## A017378.P1694068629851432686

`A017381(n)/A017379(n)`
-/

namespace A017378.P1694068629851432686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017381 n : ℚ) / (A017379 n : ℚ)

end

end A017378.P1694068629851432686

namespace A017378

/-- `A017381(n)/A017379(n)` -/
def P1694068629851432686.Spec : Prop :=
  ∀ n, P1694068629851432686.a n = (A017378 n : ℚ)

end A017378

/-! ## A017378.P1756323075796309217

`A017382(n)/A017380(n)`
-/

namespace A017378.P1756323075796309217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017382 n : ℚ) / (A017380 n : ℚ)

end

end A017378.P1756323075796309217

namespace A017378

/-- `A017382(n)/A017380(n)` -/
def P1756323075796309217.Spec : Prop :=
  ∀ n, P1756323075796309217.a n = (A017378 n : ℚ)

end A017378

/-! ## A017378.P14776733723650495585

`A017379(n)²/A017380(n)`
-/

namespace A017378.P14776733723650495585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017379 n ^ 2 : ℚ) / (A017380 n : ℚ)

end

end A017378.P14776733723650495585

namespace A017378

/-- `A017379(n)²/A017380(n)` -/
def P14776733723650495585.Spec : Prop :=
  ∀ n, P14776733723650495585.a n = (A017378 n : ℚ)

end A017378

/-! ## A017378.P12233825111203933222

`A017384(n)/A017379(n)²`
-/

namespace A017378.P12233825111203933222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017384 n : ℚ) / (A017379 n ^ 2 : ℚ)

end

end A017378.P12233825111203933222

namespace A017378

/-- `A017384(n)/A017379(n)²` -/
def P12233825111203933222.Spec : Prop :=
  ∀ n, P12233825111203933222.a n = (A017378 n : ℚ)

end A017378

/-! ## A017378.P15843272167335163944

`A304380(n+1)+A017150(n)`
-/

namespace A017378.P15843272167335163944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304380 (n + 1) + A017150 n

end

end A017378.P15843272167335163944

namespace A017378

/-- `A304380(n+1)+A017150(n)` -/
def P15843272167335163944.Spec : Prop :=
  ∀ n, P15843272167335163944.a n = A017378 n

theorem P15843272167335163944.correct : P15843272167335163944.Spec := by
  intro n
  simp only [A017378, Nat.add_sub_cancel, A017378.P15843272167335163944.a, A017378.P8023755885859236069.a, A017150, A017150.P5455253405257364887.a, A304380, A304380.P4205740382854217177.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017378

/-! ## A017378.P424518601934020621

`A017382(n)/A017377(n)²²`
-/

namespace A017378.P424518601934020621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017382 n : ℚ) / ((A017377 n ^ 2) ^ 2 : ℚ)

end

end A017378.P424518601934020621

namespace A017378

/-- `A017382(n)/A017377(n)²²` -/
def P424518601934020621.Spec : Prop :=
  ∀ n, P424518601934020621.a n = (A017378 n : ℚ)

end A017378

/-! ## A017378.P7455967568491052678

`A158129(n+1)-A239129(n+1)`
-/

namespace A017378.P7455967568491052678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158129 (n + 1) - A239129 (n + 1)

end

end A017378.P7455967568491052678

namespace A017378

/-- `A158129(n+1)-A239129(n+1)` -/
def P7455967568491052678.Spec : Prop :=
  ∀ n, P7455967568491052678.a n = A017378 n

theorem P7455967568491052678.correct : P7455967568491052678.Spec := by
  intro n
  simp only [A017378, Nat.add_sub_cancel, A017378.P7455967568491052678.a, A017378.P8023755885859236069.a, A158129, A158129.P10566472877537967381.a, A239129, A239129.P3711433288767926292.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017378

/-! ## A017378.P870790303877364889

`A323178(n+1)-A008602(n+1)`
-/

namespace A017378.P870790303877364889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323178 (n + 1) - A008602 (n + 1)

end

end A017378.P870790303877364889

namespace A017378

/-- `A323178(n+1)-A008602(n+1)` -/
def P870790303877364889.Spec : Prop :=
  ∀ n, P870790303877364889.a n = A017378 n

theorem P870790303877364889.correct : P870790303877364889.Spec := by
  intro n
  simp only [A017378, Nat.add_sub_cancel, A017378.P870790303877364889.a, A017378.P8023755885859236069.a, A008602, A008602.P10803716924039054280.a, A323178, A323178.P2135116130192440510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017378

/-! ## A017378.P18167282998225651150

`A017329(n+1)+A017281(n+1)*A017341(n)`
-/

namespace A017378.P18167282998225651150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (n + 1) + A017281 (n + 1) * A017341 n

end

end A017378.P18167282998225651150

namespace A017378

/-- `A017329(n+1)+A017281(n+1)*A017341(n)` -/
def P18167282998225651150.Spec : Prop :=
  ∀ n, P18167282998225651150.a n = A017378 n

theorem P18167282998225651150.correct : P18167282998225651150.Spec := by
  intro n
  simp only [A017378, Nat.add_sub_cancel, A017378.P18167282998225651150.a, A017378.P8023755885859236069.a, A017281, A017281.P12372910670058171543.a, A017329, A017329.P13641332030280969901.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017378

/-! ## A017378.P14810218408311968611

`A017293(n+1)*A017329(n+1)-A139280(n+2)`
-/

namespace A017378.P14810218408311968611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (n + 1) * A017329 (n + 1) - A139280 (n + 2)

end

end A017378.P14810218408311968611

namespace A017378

/-- `A017293(n+1)*A017329(n+1)-A139280(n+2)` -/
def P14810218408311968611.Spec : Prop :=
  ∀ n, P14810218408311968611.a n = A017378 n

theorem P14810218408311968611.correct : P14810218408311968611.Spec := by
  intro n
  simp only [A017378, Nat.add_sub_cancel, A017378.P14810218408311968611.a, A017378.P8023755885859236069.a, A017293, A017293.P18006279673560884615.a, A017329, A017329.P13641332030280969901.a, A139280, A139280.P15838564291208081942.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017378

/-!
# A017379: a(n) = (10*n + 9)^3.

The programs for A017379, the canonical program `A017379.P11328459825177427294` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017379 has offset 0).

The definition of A017379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^3` (program `A017379.P11328459825177427294`, by `A017379.P11328459825177427294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017379.P11328459825177427294

`(10*n+9)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017379

/-- `(10*n+9)^3` -/
def P11328459825177427294.Spec : Prop :=
  ∀ n, (P11328459825177427294.a n : ℤ) = A017379 n

theorem P11328459825177427294.correct : P11328459825177427294.Spec := by
  intro n
  simp only [A017379]

end A017379

/-! ## A017379.P3823470328071540198

`record[(lcm(4, n+3)+n-3)^3]`
-/

namespace A017379.P3823470328071540198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 3) : ℤ) + ((n : ℤ) - 3)) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017379.P3823470328071540198

namespace A017379

/-- `record[(lcm(4, n+3)+n-3)^3]` -/
def P3823470328071540198.Spec : Prop :=
  ∀ n, P3823470328071540198.a n = A017379 n

end A017379

/-! ## A017379.P15350772127819250924

`sqrt(A017382(n))`
-/

namespace A017379.P15350772127819250924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017382 n : ℝ)

end

end A017379.P15350772127819250924

namespace A017379

/-- `sqrt(A017382(n))` -/
def P15350772127819250924.Spec : Prop :=
  ∀ n, P15350772127819250924.a n = (A017379 n : ℝ)

end A017379

/-! ## A017379.P14656084188060662743

`sqrt(A017378(n)^3)`
-/

namespace A017379.P14656084188060662743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017378 n ^ 3 : ℝ)

end

end A017379.P14656084188060662743

namespace A017379

/-- `sqrt(A017378(n)^3)` -/
def P14656084188060662743.Spec : Prop :=
  ∀ n, P14656084188060662743.a n = (A017379 n : ℝ)

end A017379

/-! ## A017379.P2190654141143469782

`(10*n+9)²*A017377(n)`
-/

namespace A017379.P2190654141143469782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 9) ^ 2 : ℤ) * A017377 n

end

end A017379.P2190654141143469782

namespace A017379

/-- `(10*n+9)²*A017377(n)` -/
def P2190654141143469782.Spec : Prop :=
  ∀ n, P2190654141143469782.a n = A017379 n

theorem P2190654141143469782.correct : P2190654141143469782.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P2190654141143469782.a, A017379.P11328459825177427294.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P9258769642268676875

`A017377(n)*A017378(n)`
-/

namespace A017379.P9258769642268676875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n * A017378 n

end

end A017379.P9258769642268676875

namespace A017379

/-- `A017377(n)*A017378(n)` -/
def P9258769642268676875.Spec : Prop :=
  ∀ n, P9258769642268676875.a n = A017379 n

theorem P9258769642268676875.correct : P9258769642268676875.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P9258769642268676875.a, A017379.P11328459825177427294.a, A017377, A017377.P8985772118360569930.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P4180807786621960634

`A017380(n)/A017377(n)`
-/

namespace A017379.P4180807786621960634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017380 n : ℚ) / (A017377 n : ℚ)

end

end A017379.P4180807786621960634

namespace A017379

/-- `A017380(n)/A017377(n)` -/
def P4180807786621960634.Spec : Prop :=
  ∀ n, P4180807786621960634.a n = (A017379 n : ℚ)

end A017379

/-! ## A017379.P3309045925032094007

`A017381(n)/A017378(n)`
-/

namespace A017379.P3309045925032094007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017381 n : ℚ) / (A017378 n : ℚ)

end

end A017379.P3309045925032094007

namespace A017379

/-- `A017381(n)/A017378(n)` -/
def P3309045925032094007.Spec : Prop :=
  ∀ n, P3309045925032094007.a n = (A017379 n : ℚ)

end A017379

/-! ## A017379.P1882533246927201764

`A017381(n)/A017377(n)²`
-/

namespace A017379.P1882533246927201764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017381 n : ℚ) / (A017377 n ^ 2 : ℚ)

end

end A017379.P1882533246927201764

namespace A017379

/-- `A017381(n)/A017377(n)²` -/
def P1882533246927201764.Spec : Prop :=
  ∀ n, P1882533246927201764.a n = (A017379 n : ℚ)

end A017379

/-! ## A017379.P2221747739145311685

`(A017365(n)+1)*A017378(n)`
-/

namespace A017379.P2221747739145311685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n + 1) * A017378 n

end

end A017379.P2221747739145311685

namespace A017379

/-- `(A017365(n)+1)*A017378(n)` -/
def P2221747739145311685.Spec : Prop :=
  ∀ n, P2221747739145311685.a n = A017379 n

theorem P2221747739145311685.correct : P2221747739145311685.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P2221747739145311685.a, A017379.P11328459825177427294.a, A017365, A017365.P3452265278948084008.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P5163281181074234485

`A017380(n)/A017385(n)*A017380(n)²`
-/

namespace A017379.P5163281181074234485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017380 n : ℚ) / (A017385 n : ℚ) * (A017380 n ^ 2 : ℚ)

end

end A017379.P5163281181074234485

namespace A017379

/-- `A017380(n)/A017385(n)*A017380(n)²` -/
def P5163281181074234485.Spec : Prop :=
  ∀ n, P5163281181074234485.a n = (A017379 n : ℚ)

end A017379

/-! ## A017379.P2224888591547412556

`A017382(n)/(A017377(n)²*A017377(n))`
-/

namespace A017379.P2224888591547412556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017382 n : ℚ) / (A017377 n ^ 2 * A017377 n : ℚ)

end

end A017379.P2224888591547412556

namespace A017379

/-- `A017382(n)/(A017377(n)²*A017377(n))` -/
def P2224888591547412556.Spec : Prop :=
  ∀ n, P2224888591547412556.a n = (A017379 n : ℚ)

end A017379

/-! ## A017379.P16074775560675030369

`Δ[A135705(n)]²*Δ[A135705(n)]`
-/

namespace A017379.P16074775560675030369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A017379.P16074775560675030369

namespace A017379

/-- `Δ[A135705(n)]²*Δ[A135705(n)]` -/
def P16074775560675030369.Spec : Prop :=
  ∀ n, P16074775560675030369.a n = A017379 n

theorem P16074775560675030369.correct : P16074775560675030369.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P16074775560675030369.f1, A017379.P16074775560675030369.f2, A017379.P16074775560675030369.a, A017379.P11328459825177427294.a, A135705, A135705.P9136998948891428335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P15998384201720541250

`A008592(n+1)*A017378(n)-A017378(n)`
-/

namespace A017379.P15998384201720541250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) * A017378 n - A017378 n

end

end A017379.P15998384201720541250

namespace A017379

/-- `A008592(n+1)*A017378(n)-A017378(n)` -/
def P15998384201720541250.Spec : Prop :=
  ∀ n, P15998384201720541250.a n = A017379 n

theorem P15998384201720541250.correct : P15998384201720541250.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P15998384201720541250.a, A017379.P11328459825177427294.a, A008592, A008592.P4981059802862696142.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P14951392173003221874

`(A016850(n+1)-A016898(n))*A017378(n)`
-/

namespace A017379.P14951392173003221874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016850 (n + 1) - A016898 n) * A017378 n

end

end A017379.P14951392173003221874

namespace A017379

/-- `(A016850(n+1)-A016898(n))*A017378(n)` -/
def P14951392173003221874.Spec : Prop :=
  ∀ n, P14951392173003221874.a n = A017379 n

theorem P14951392173003221874.correct : P14951392173003221874.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P14951392173003221874.a, A017379.P11328459825177427294.a, A016850, A016850.P11162086959237364138.a, A016898, A016898.P14343272817953415938.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P17970936665988324111

`A016899(Δ[n²])`
-/

namespace A017379.P17970936665988324111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017379.P17970936665988324111

namespace A017379

/-- `A016899(Δ[n²])` -/
def P17970936665988324111.Spec : Prop :=
  ∀ n, P17970936665988324111.a n = A017379 n

end A017379

/-! ## A017379.P1830619169861626809

`sqrt(A016902(2*n+1))`
-/

namespace A017379.P1830619169861626809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016902 (2 * n + 1) : ℝ)

end

end A017379.P1830619169861626809

namespace A017379

/-- `sqrt(A016902(2*n+1))` -/
def P1830619169861626809.Spec : Prop :=
  ∀ n, P1830619169861626809.a n = (A017379 n : ℝ)

end A017379

/-! ## A017379.P5115058858465935022

`A017367(2*n+1)/8`
-/

namespace A017379.P5115058858465935022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017367 (2 * n + 1) : ℚ) / 8

end

end A017379.P5115058858465935022

namespace A017379

/-- `A017367(2*n+1)/8` -/
def P5115058858465935022.Spec : Prop :=
  ∀ n, P5115058858465935022.a n = (A017379 n : ℚ)

theorem P5115058858465935022.correct : P5115058858465935022.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P5115058858465935022.a, A017379.P11328459825177427294.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-! ## A017379.P1211732306128662967

`A016900(2*n+1)/(10*n+9)`
-/

namespace A017379.P1211732306128662967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 (2 * n + 1) : ℚ) / (10 * n + 9 : ℚ)

end

end A017379.P1211732306128662967

namespace A017379

/-- `A016900(2*n+1)/(10*n+9)` -/
def P1211732306128662967.Spec : Prop :=
  ∀ n, P1211732306128662967.a n = (A017379 n : ℚ)

theorem P1211732306128662967.correct : P1211732306128662967.Spec := by
  intro n
  simp only [A017379, Nat.add_sub_cancel, A017379.P1211732306128662967.a, A017379.P11328459825177427294.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017379

/-!
# A017380: a(n) = (10*n + 9)^4.

The programs for A017380, the canonical program `A017380.P9554480858658097875` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017380 has offset 0).

The definition of A017380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^4` (program `A017380.P9554480858658097875`, by `A017380.P9554480858658097875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017380.P9554480858658097875

`(10*n+9)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017380

/-- `(10*n+9)^4` -/
def P9554480858658097875.Spec : Prop :=
  ∀ n, (P9554480858658097875.a n : ℤ) = A017380 n

theorem P9554480858658097875.correct : P9554480858658097875.Spec := by
  intro n
  simp only [A017380]

end A017380

/-! ## A017380.P603774460824982434

`xor(1, 10*(n+1)-2)²²`
-/

namespace A017380.P603774460824982434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 ((10 * (n + 1) : ℤ) - 2) ^ 2) ^ 2

end

end A017380.P603774460824982434

namespace A017380

/-- `xor(1, 10*(n+1)-2)²²` -/
def P603774460824982434.Spec : Prop :=
  ∀ n, P603774460824982434.a n = A017380 n

end A017380

/-! ## A017380.P13574100117436974187

`record[(lcm(4, n+3)+n-3)^4]`
-/

namespace A017380.P13574100117436974187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 3) : ℤ) + ((n : ℤ) - 3)) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017380.P13574100117436974187

namespace A017380

/-- `record[(lcm(4, n+3)+n-3)^4]` -/
def P13574100117436974187.Spec : Prop :=
  ∀ n, P13574100117436974187.a n = A017380 n

end A017380

/-! ## A017380.P4530789656452176245

`∩[2*n+1, a(n-1)+5]²²` with `a(0)=4`
-/

namespace A017380.P4530789656452176245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n ^ 2) ^ 2

end

end A017380.P4530789656452176245

namespace A017380

/-- `∩[2*n+1, a(n-1)+5]²²` -/
def P4530789656452176245.Spec : Prop :=
  ∀ n, (P4530789656452176245.a n : ℤ) = A017380 n

end A017380

/-! ## A017380.P8217892241968497594

`(lcm(2, Δ[(2*n+1)²])+2*n+1)²²`
-/

namespace A017380.P8217892241968497594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (2 * n + 1)) ^ 2) ^ 2

end

end A017380.P8217892241968497594

namespace A017380

/-- `(lcm(2, Δ[(2*n+1)²])+2*n+1)²²` -/
def P8217892241968497594.Spec : Prop :=
  ∀ n, (P8217892241968497594.a n : ℤ) = A017380 n

end A017380

/-! ## A017380.P15989454805058613210

`(Δ[C(2*n+1, 2*n)²]+2*n+1)²²`
-/

namespace A017380.P15989454805058613210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)) ^ 2) ^ 2

end

end A017380.P15989454805058613210

namespace A017380

/-- `(Δ[C(2*n+1, 2*n)²]+2*n+1)²²` -/
def P15989454805058613210.Spec : Prop :=
  ∀ n, P15989454805058613210.a n = A017380 n

theorem P15989454805058613210.correct : P15989454805058613210.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P15989454805058613210.f1, A017380.P15989454805058613210.a, A017380.P9554480858658097875.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A017380

/-! ## A017380.P10976823019004132336

`A017378(n)²`
-/

namespace A017380.P10976823019004132336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n ^ 2

end

end A017380.P10976823019004132336

namespace A017380

/-- `A017378(n)²` -/
def P10976823019004132336.Spec : Prop :=
  ∀ n, P10976823019004132336.a n = A017380 n

theorem P10976823019004132336.correct : P10976823019004132336.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P10976823019004132336.a, A017380.P9554480858658097875.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P12258783929433046789

`sqrt(A017384(n))`
-/

namespace A017380.P12258783929433046789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017384 n : ℝ)

end

end A017380.P12258783929433046789

namespace A017380

/-- `sqrt(A017384(n))` -/
def P12258783929433046789.Spec : Prop :=
  ∀ n, P12258783929433046789.a n = (A017380 n : ℝ)

end A017380

/-! ## A017380.P7272650331534773893

`A017377(n)²²`
-/

namespace A017380.P7272650331534773893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n ^ 2) ^ 2

end

end A017380.P7272650331534773893

namespace A017380

/-- `A017377(n)²²` -/
def P7272650331534773893.Spec : Prop :=
  ∀ n, P7272650331534773893.a n = A017380 n

theorem P7272650331534773893.correct : P7272650331534773893.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P7272650331534773893.a, A017380.P9554480858658097875.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P13424403967339152223

`(A017365(n)+1)²²`
-/

namespace A017380.P13424403967339152223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017365 n + 1) ^ 2) ^ 2

end

end A017380.P13424403967339152223

namespace A017380

/-- `(A017365(n)+1)²²` -/
def P13424403967339152223.Spec : Prop :=
  ∀ n, P13424403967339152223.a n = A017380 n

theorem P13424403967339152223.correct : P13424403967339152223.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P13424403967339152223.a, A017380.P9554480858658097875.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P6744453268698632080

`(A017353(n)+2)²²`
-/

namespace A017380.P6744453268698632080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017353 n + 2) ^ 2) ^ 2

end

end A017380.P6744453268698632080

namespace A017380

/-- `(A017353(n)+2)²²` -/
def P6744453268698632080.Spec : Prop :=
  ∀ n, P6744453268698632080.a n = A017380 n

theorem P6744453268698632080.correct : P6744453268698632080.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P6744453268698632080.a, A017380.P9554480858658097875.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P273046058100058557

`(A017341(n)+3)²²`
-/

namespace A017380.P273046058100058557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017341 n + 3) ^ 2) ^ 2

end

end A017380.P273046058100058557

namespace A017380

/-- `(A017341(n)+3)²²` -/
def P273046058100058557.Spec : Prop :=
  ∀ n, P273046058100058557.a n = A017380 n

theorem P273046058100058557.correct : P273046058100058557.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P273046058100058557.a, A017380.P9554480858658097875.a, A017341, A017341.P14977180853961305525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P14924323506506769731

`(A008592(n)+9)²²`
-/

namespace A017380.P14924323506506769731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A008592 n + 9) ^ 2) ^ 2

end

end A017380.P14924323506506769731

namespace A017380

/-- `(A008592(n)+9)²²` -/
def P14924323506506769731.Spec : Prop :=
  ∀ n, P14924323506506769731.a n = A017380 n

theorem P14924323506506769731.correct : P14924323506506769731.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P14924323506506769731.a, A017380.P9554480858658097875.a, A008592, A008592.P4981059802862696142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P13417218274116840401

`(n-A017497(n))²²`
-/

namespace A017380.P13417218274116840401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - A017497 n) ^ 2) ^ 2

end

end A017380.P13417218274116840401

namespace A017380

/-- `(n-A017497(n))²²` -/
def P13417218274116840401.Spec : Prop :=
  ∀ n, P13417218274116840401.a n = A017380 n

theorem P13417218274116840401.correct : P13417218274116840401.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P13417218274116840401.a, A017380.P9554480858658097875.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P11347770700094787354

`(sqrt(A017366(n))+1)²²`
-/

namespace A017380.P11347770700094787354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017366 n : ℝ) + 1) ^ 2) ^ 2

end

end A017380.P11347770700094787354

namespace A017380

/-- `(sqrt(A017366(n))+1)²²` -/
def P11347770700094787354.Spec : Prop :=
  ∀ n, P11347770700094787354.a n = (A017380 n : ℝ)

end A017380

/-! ## A017380.P9873056535798027260

`(sqrt(A017354(n))+2)²²`
-/

namespace A017380.P9873056535798027260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (A017354 n : ℝ) + 2) ^ 2) ^ 2

end

end A017380.P9873056535798027260

namespace A017380

/-- `(sqrt(A017354(n))+2)²²` -/
def P9873056535798027260.Spec : Prop :=
  ∀ n, P9873056535798027260.a n = (A017380 n : ℝ)

end A017380

/-! ## A017380.P8926732312887915312

`(Δ[A168668(n)]+2)²²`
-/

namespace A017380.P8926732312887915312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n + 2) ^ 2) ^ 2

end

end A017380.P8926732312887915312

namespace A017380

/-- `(Δ[A168668(n)]+2)²²` -/
def P8926732312887915312.Spec : Prop :=
  ∀ n, P8926732312887915312.a n = A017380 n

theorem P8926732312887915312.correct : P8926732312887915312.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P8926732312887915312.f1, A017380.P8926732312887915312.a, A017380.P9554480858658097875.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P12525551142039274002

`(n-sqrt(A017498(n)))²²`
-/

namespace A017380.P12525551142039274002
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n : ℝ) - Real.sqrt (A017498 n : ℝ)) ^ 2) ^ 2

end

end A017380.P12525551142039274002

namespace A017380

/-- `(n-sqrt(A017498(n)))²²` -/
def P12525551142039274002.Spec : Prop :=
  ∀ n, P12525551142039274002.a n = (A017380 n : ℝ)

end A017380

/-! ## A017380.P9973929911876601960

`(A017257(n)+n+1)²²`
-/

namespace A017380.P9973929911876601960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017257 n + (n + 1 : ℤ)) ^ 2) ^ 2

end

end A017380.P9973929911876601960

namespace A017380

/-- `(A017257(n)+n+1)²²` -/
def P9973929911876601960.Spec : Prop :=
  ∀ n, P9973929911876601960.a n = A017380 n

theorem P9973929911876601960.correct : P9973929911876601960.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P9973929911876601960.a, A017380.P9554480858658097875.a, A017257, A017257.P3330609659631501478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-! ## A017380.P9717735149692037458

`(1-A017509(n)+n)²²`
-/

namespace A017380.P9717735149692037458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - A017509 n + (n : ℤ)) ^ 2) ^ 2

end

end A017380.P9717735149692037458

namespace A017380

/-- `(1-A017509(n)+n)²²` -/
def P9717735149692037458.Spec : Prop :=
  ∀ n, P9717735149692037458.a n = A017380 n

theorem P9717735149692037458.correct : P9717735149692037458.Spec := by
  intro n
  simp only [A017380, Nat.add_sub_cancel, A017380.P9717735149692037458.a, A017380.P9554480858658097875.a, A017509, A017509.P7373483985674399481.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017380

/-!
# A017381: a(n) = (10*n + 9)^5.

The programs for A017381, the canonical program `A017381.P6424422246759289212` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017381 has offset 0).

The definition of A017381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^5` (program `A017381.P6424422246759289212`, by `A017381.P6424422246759289212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017381.P6424422246759289212

`(10*n+9)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017381

/-- `(10*n+9)^5` -/
def P6424422246759289212.Spec : Prop :=
  ∀ n, (P6424422246759289212.a n : ℤ) = A017381 n

theorem P6424422246759289212.correct : P6424422246759289212.Spec := by
  intro n
  simp only [A017381]

end A017381

/-! ## A017381.P3424245340829270416

`record[(lcm(4, n+3)+n-3)^5]`
-/

namespace A017381.P3424245340829270416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 (n + 3) : ℤ) + ((n : ℤ) - 3)) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017381.P3424245340829270416

namespace A017381

/-- `record[(lcm(4, n+3)+n-3)^5]` -/
def P3424245340829270416.Spec : Prop :=
  ∀ n, P3424245340829270416.a n = A017381 n

end A017381

/-! ## A017381.P1836240483451043863

`sqrt(A017378(n)^5)`
-/

namespace A017381.P1836240483451043863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017378 n ^ 5 : ℝ)

end

end A017381.P1836240483451043863

namespace A017381

/-- `sqrt(A017378(n)^5)` -/
def P1836240483451043863.Spec : Prop :=
  ∀ n, P1836240483451043863.a n = (A017381 n : ℝ)

end A017381

/-! ## A017381.P6878671741791670014

`(10*n+9)*A017380(n)`
-/

namespace A017381.P6878671741791670014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 9 : ℤ) * A017380 n

end

end A017381.P6878671741791670014

namespace A017381

/-- `(10*n+9)*A017380(n)` -/
def P6878671741791670014.Spec : Prop :=
  ∀ n, P6878671741791670014.a n = A017381 n

theorem P6878671741791670014.correct : P6878671741791670014.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P6878671741791670014.a, A017381.P6424422246759289212.a, A017380, A017380.P9554480858658097875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P14278905568407935408

`A017379(n)*(10*n+9)²`
-/

namespace A017381.P14278905568407935408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n * ((10 * n + 9) ^ 2 : ℤ)

end

end A017381.P14278905568407935408

namespace A017381

/-- `A017379(n)*(10*n+9)²` -/
def P14278905568407935408.Spec : Prop :=
  ∀ n, P14278905568407935408.a n = A017381 n

theorem P14278905568407935408.correct : P14278905568407935408.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P14278905568407935408.a, A017381.P6424422246759289212.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P10582884199526296163

`A017378(n)*A017379(n)`
-/

namespace A017381.P10582884199526296163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n * A017379 n

end

end A017381.P10582884199526296163

namespace A017381

/-- `A017378(n)*A017379(n)` -/
def P10582884199526296163.Spec : Prop :=
  ∀ n, P10582884199526296163.a n = A017381 n

theorem P10582884199526296163.correct : P10582884199526296163.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P10582884199526296163.a, A017381.P6424422246759289212.a, A017378, A017378.P8023755885859236069.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P1506737804485809543

`A017382(n)/A017377(n)`
-/

namespace A017381.P1506737804485809543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017382 n : ℚ) / (A017377 n : ℚ)

end

end A017381.P1506737804485809543

namespace A017381

/-- `A017382(n)/A017377(n)` -/
def P1506737804485809543.Spec : Prop :=
  ∀ n, P1506737804485809543.a n = (A017381 n : ℚ)

end A017381

/-! ## A017381.P7206150048050848258

`A017384(n)/A017379(n)`
-/

namespace A017381.P7206150048050848258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017384 n : ℚ) / (A017379 n : ℚ)

end

end A017381.P7206150048050848258

namespace A017381

/-- `A017384(n)/A017379(n)` -/
def P7206150048050848258.Spec : Prop :=
  ∀ n, P7206150048050848258.a n = (A017381 n : ℚ)

end A017381

/-! ## A017381.P8231174654836590256

`A017385(n)/A017380(n)`
-/

namespace A017381.P8231174654836590256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017385 n : ℚ) / (A017380 n : ℚ)

end

end A017381.P8231174654836590256

namespace A017381

/-- `A017385(n)/A017380(n)` -/
def P8231174654836590256.Spec : Prop :=
  ∀ n, P8231174654836590256.a n = (A017381 n : ℚ)

end A017381

/-! ## A017381.P3838796522076611716

`A017377(n)²*A017379(n)`
-/

namespace A017381.P3838796522076611716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n ^ 2 * A017379 n

end

end A017381.P3838796522076611716

namespace A017381

/-- `A017377(n)²*A017379(n)` -/
def P3838796522076611716.Spec : Prop :=
  ∀ n, P3838796522076611716.a n = A017381 n

theorem P3838796522076611716.correct : P3838796522076611716.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P3838796522076611716.a, A017381.P6424422246759289212.a, A017377, A017377.P8985772118360569930.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P12733193046101792103

`A017378(n)²*A017377(n)`
-/

namespace A017381.P12733193046101792103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n ^ 2 * A017377 n

end

end A017381.P12733193046101792103

namespace A017381

/-- `A017378(n)²*A017377(n)` -/
def P12733193046101792103.Spec : Prop :=
  ∀ n, P12733193046101792103.a n = A017381 n

theorem P12733193046101792103.correct : P12733193046101792103.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P12733193046101792103.a, A017381.P6424422246759289212.a, A017377, A017377.P8985772118360569930.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P1540286664387360592

`A017380(n)²/A017379(n)`
-/

namespace A017381.P1540286664387360592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017380 n ^ 2 : ℚ) / (A017379 n : ℚ)

end

end A017381.P1540286664387360592

namespace A017381

/-- `A017380(n)²/A017379(n)` -/
def P1540286664387360592.Spec : Prop :=
  ∀ n, P1540286664387360592.a n = (A017381 n : ℚ)

end A017381

/-! ## A017381.P8750956014996844263

`A017385(n)/A017378(n)²`
-/

namespace A017381.P8750956014996844263
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017385 n : ℚ) / (A017378 n ^ 2 : ℚ)

end

end A017381.P8750956014996844263

namespace A017381

/-- `A017385(n)/A017378(n)²` -/
def P8750956014996844263.Spec : Prop :=
  ∀ n, P8750956014996844263.a n = (A017381 n : ℚ)

end A017381

/-! ## A017381.P1195334820988614520

`(A017365(n)+1)*A017378(n)²`
-/

namespace A017381.P1195334820988614520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017365 n + 1) * A017378 n ^ 2

end

end A017381.P1195334820988614520

namespace A017381

/-- `(A017365(n)+1)*A017378(n)²` -/
def P1195334820988614520.Spec : Prop :=
  ∀ n, P1195334820988614520.a n = A017381 n

theorem P1195334820988614520.correct : P1195334820988614520.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P1195334820988614520.a, A017381.P6424422246759289212.a, A017365, A017365.P3452265278948084008.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P12200013535604796690

`A017384(n)/(A017377(n)*A017378(n))`
-/

namespace A017381.P12200013535604796690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017384 n : ℚ) / (A017377 n * A017378 n : ℚ)

end

end A017381.P12200013535604796690

namespace A017381

/-- `A017384(n)/(A017377(n)*A017378(n))` -/
def P12200013535604796690.Spec : Prop :=
  ∀ n, P12200013535604796690.a n = (A017381 n : ℚ)

end A017381

/-! ## A017381.P15353719184792691571

`A016901(Δ[n²])`
-/

namespace A017381.P15353719184792691571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017381.P15353719184792691571

namespace A017381

/-- `A016901(Δ[n²])` -/
def P15353719184792691571.Spec : Prop :=
  ∀ n, P15353719184792691571.a n = A017381 n

end A017381

/-! ## A017381.P11981284288421558201

`(10*n+9)*A016900(2*n+1)`
-/

namespace A017381.P11981284288421558201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 9 : ℤ) * A016900 (2 * n + 1)

end

end A017381.P11981284288421558201

namespace A017381

/-- `(10*n+9)*A016900(2*n+1)` -/
def P11981284288421558201.Spec : Prop :=
  ∀ n, P11981284288421558201.a n = A017381 n

theorem P11981284288421558201.correct : P11981284288421558201.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P11981284288421558201.a, A017381.P6424422246759289212.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P15030551374438211872

`A016902(2*n+1)/(10*n+9)`
-/

namespace A017381.P15030551374438211872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016902 (2 * n + 1) : ℚ) / (10 * n + 9 : ℚ)

end

end A017381.P15030551374438211872

namespace A017381

/-- `A016902(2*n+1)/(10*n+9)` -/
def P15030551374438211872.Spec : Prop :=
  ∀ n, P15030551374438211872.a n = (A017381 n : ℚ)

theorem P15030551374438211872.correct : P15030551374438211872.Spec := by
  intro n
  simp only [A017381, Nat.add_sub_cancel, A017381.P15030551374438211872.a, A017381.P6424422246759289212.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017381

/-! ## A017381.P12191716948030872746

`abs((n+1-A016957(Δ[n²])+n)^5)`
-/

namespace A017381.P12191716948030872746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1 : ℤ) - A016957 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)) ^ 5|

end

end A017381.P12191716948030872746

namespace A017381

/-- `abs((n+1-A016957(Δ[n²])+n)^5)` -/
def P12191716948030872746.Spec : Prop :=
  ∀ n, P12191716948030872746.a n = A017381 n

end A017381

/-!
# A017382: a(n) = (10*n + 9)^6.

The programs for A017382, the canonical program `A017382.P8375754362991819397` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017382 has offset 0).

The definition of A017382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^6` (program `A017382.P8375754362991819397`, by `A017382.P8375754362991819397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017382.P8375754362991819397

`(10*n+9)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017382

/-- `(10*n+9)^6` -/
def P8375754362991819397.Spec : Prop :=
  ∀ n, (P8375754362991819397.a n : ℤ) = A017382 n

theorem P8375754362991819397.correct : P8375754362991819397.Spec := by
  intro n
  simp only [A017382]

end A017382

/-! ## A017382.P9201631115645584327

`A017379(n)²`
-/

namespace A017382.P9201631115645584327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n ^ 2

end

end A017382.P9201631115645584327

namespace A017382

/-- `A017379(n)²` -/
def P9201631115645584327.Spec : Prop :=
  ∀ n, P9201631115645584327.a n = A017382 n

theorem P9201631115645584327.correct : P9201631115645584327.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P9201631115645584327.a, A017382.P8375754362991819397.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P7067707426774869553

`(A017377(n)^3)²`
-/

namespace A017382.P7067707426774869553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n ^ 3) ^ 2

end

end A017382.P7067707426774869553

namespace A017382

/-- `(A017377(n)^3)²` -/
def P7067707426774869553.Spec : Prop :=
  ∀ n, P7067707426774869553.a n = A017382 n

theorem P7067707426774869553.correct : P7067707426774869553.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P7067707426774869553.a, A017382.P8375754362991819397.a, A017377, A017377.P8985772118360569930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P10581960945106756700

`sqrt(A017380(n)^3)`
-/

namespace A017382.P10581960945106756700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017380 n ^ 3 : ℝ)

end

end A017382.P10581960945106756700

namespace A017382

/-- `sqrt(A017380(n)^3)` -/
def P10581960945106756700.Spec : Prop :=
  ∀ n, P10581960945106756700.a n = (A017382 n : ℝ)

end A017382

/-! ## A017382.P6275945805840565915

`A017384(n)/(10*n+9)²`
-/

namespace A017382.P6275945805840565915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017384 n : ℚ) / ((10 * n + 9) ^ 2 : ℚ)

end

end A017382.P6275945805840565915

namespace A017382

/-- `A017384(n)/(10*n+9)²` -/
def P6275945805840565915.Spec : Prop :=
  ∀ n, P6275945805840565915.a n = (A017382 n : ℚ)

end A017382

/-! ## A017382.P14176464927449513423

`A017377(n)*A017381(n)`
-/

namespace A017382.P14176464927449513423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n * A017381 n

end

end A017382.P14176464927449513423

namespace A017382

/-- `A017377(n)*A017381(n)` -/
def P14176464927449513423.Spec : Prop :=
  ∀ n, P14176464927449513423.a n = A017382 n

theorem P14176464927449513423.correct : P14176464927449513423.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P14176464927449513423.a, A017382.P8375754362991819397.a, A017377, A017377.P8985772118360569930.a, A017381, A017381.P6424422246759289212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P10499959418284012848

`A017378(n)*A017380(n)`
-/

namespace A017382.P10499959418284012848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n * A017380 n

end

end A017382.P10499959418284012848

namespace A017382

/-- `A017378(n)*A017380(n)` -/
def P10499959418284012848.Spec : Prop :=
  ∀ n, P10499959418284012848.a n = A017382 n

theorem P10499959418284012848.correct : P10499959418284012848.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P10499959418284012848.a, A017382.P8375754362991819397.a, A017378, A017378.P8023755885859236069.a, A017380, A017380.P9554480858658097875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P12608642343802652547

`(A017377(n)*A017378(n))²`
-/

namespace A017382.P12608642343802652547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n * A017378 n) ^ 2

end

end A017382.P12608642343802652547

namespace A017382

/-- `(A017377(n)*A017378(n))²` -/
def P12608642343802652547.Spec : Prop :=
  ∀ n, P12608642343802652547.a n = A017382 n

theorem P12608642343802652547.correct : P12608642343802652547.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P12608642343802652547.a, A017382.P8375754362991819397.a, A017377, A017377.P8985772118360569930.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P5653582774751695973

`A017377(n)²*A017380(n)`
-/

namespace A017382.P5653582774751695973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n ^ 2 * A017380 n

end

end A017382.P5653582774751695973

namespace A017382

/-- `A017377(n)²*A017380(n)` -/
def P5653582774751695973.Spec : Prop :=
  ∀ n, P5653582774751695973.a n = A017382 n

theorem P5653582774751695973.correct : P5653582774751695973.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P5653582774751695973.a, A017382.P8375754362991819397.a, A017377, A017377.P8985772118360569930.a, A017380, A017380.P9554480858658097875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P6044972598080906205

`(A017381(n)/A017378(n))²`
-/

namespace A017382.P6044972598080906205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017381 n : ℚ) / (A017378 n : ℚ)) ^ 2

end

end A017382.P6044972598080906205

namespace A017382

/-- `(A017381(n)/A017378(n))²` -/
def P6044972598080906205.Spec : Prop :=
  ∀ n, P6044972598080906205.a n = (A017382 n : ℚ)

end A017382

/-! ## A017382.P17497734130572499151

`A017377(n)/A017379(n)*A017384(n)`
-/

namespace A017382.P17497734130572499151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017377 n : ℚ) / (A017379 n : ℚ) * (A017384 n : ℚ)

end

end A017382.P17497734130572499151

namespace A017382

/-- `A017377(n)/A017379(n)*A017384(n)` -/
def P17497734130572499151.Spec : Prop :=
  ∀ n, P17497734130572499151.a n = (A017382 n : ℚ)

end A017382

/-! ## A017382.P8765822122887227507

`(Δ[A135705(n)]^3)²`
-/

namespace A017382.P8765822122887227507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017382.P8765822122887227507

namespace A017382

/-- `(Δ[A135705(n)]^3)²` -/
def P8765822122887227507.Spec : Prop :=
  ∀ n, P8765822122887227507.a n = A017382 n

theorem P8765822122887227507.correct : P8765822122887227507.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P8765822122887227507.f1, A017382.P8765822122887227507.a, A017382.P8375754362991819397.a, A135705, A135705.P9136998948891428335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P8641634202938445010

`(Δ[A079273(n+1)]^3)²`
-/

namespace A017382.P8641634202938445010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) ^ 3) ^ 2

end

end A017382.P8641634202938445010

namespace A017382

/-- `(Δ[A079273(n+1)]^3)²` -/
def P8641634202938445010.Spec : Prop :=
  ∀ n, P8641634202938445010.a n = A017382 n

theorem P8641634202938445010.correct : P8641634202938445010.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P8641634202938445010.f1, A017382.P8641634202938445010.a, A017382.P8375754362991819397.a, A079273, A079273.P5421003371963778323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P17207370012201473290

`A016902(Δ[n²])`
-/

namespace A017382.P17207370012201473290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016902 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017382.P17207370012201473290

namespace A017382

/-- `A016902(Δ[n²])` -/
def P17207370012201473290.Spec : Prop :=
  ∀ n, P17207370012201473290.a n = A017382 n

end A017382

/-! ## A017382.P6767898547658643754

`A016899(Δ[n²])²`
-/

namespace A017382.P6767898547658643754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016899 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017382.P6767898547658643754

namespace A017382

/-- `A016899(Δ[n²])²` -/
def P6767898547658643754.Spec : Prop :=
  ∀ n, P6767898547658643754.a n = A017382 n

end A017382

/-! ## A017382.P3952446210672023463

`(A017367(2*n+1)/8)²`
-/

namespace A017382.P3952446210672023463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017367 (2 * n + 1) : ℚ) / 8) ^ 2

end

end A017382.P3952446210672023463

namespace A017382

/-- `(A017367(2*n+1)/8)²` -/
def P3952446210672023463.Spec : Prop :=
  ∀ n, P3952446210672023463.a n = (A017382 n : ℚ)

theorem P3952446210672023463.correct : P3952446210672023463.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P3952446210672023463.a, A017382.P8375754362991819397.a, A017367, A017367.P16209840253877747607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P4714893780178193797

`A016903(2*n+1)/(10*n+9)`
-/

namespace A017382.P4714893780178193797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016903 (2 * n + 1) : ℚ) / (10 * n + 9 : ℚ)

end

end A017382.P4714893780178193797

namespace A017382

/-- `A016903(2*n+1)/(10*n+9)` -/
def P4714893780178193797.Spec : Prop :=
  ∀ n, P4714893780178193797.a n = (A017382 n : ℚ)

theorem P4714893780178193797.correct : P4714893780178193797.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P4714893780178193797.a, A017382.P8375754362991819397.a, A016903, A016903.P1953682218511685154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P2718952240589344409

`A016900(2*n+1)²/(10*n+9)²`
-/

namespace A017382.P2718952240589344409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 (2 * n + 1) ^ 2 : ℚ) / ((10 * n + 9) ^ 2 : ℚ)

end

end A017382.P2718952240589344409

namespace A017382

/-- `A016900(2*n+1)²/(10*n+9)²` -/
def P2718952240589344409.Spec : Prop :=
  ∀ n, P2718952240589344409.a n = (A017382 n : ℚ)

theorem P2718952240589344409.correct : P2718952240589344409.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P2718952240589344409.a, A017382.P8375754362991819397.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-! ## A017382.P1406018711134392088

`A016898(2*n+1)*A016900(2*n+1)`
-/

namespace A017382.P1406018711134392088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016898 (2 * n + 1) * A016900 (2 * n + 1)

end

end A017382.P1406018711134392088

namespace A017382

/-- `A016898(2*n+1)*A016900(2*n+1)` -/
def P1406018711134392088.Spec : Prop :=
  ∀ n, P1406018711134392088.a n = A017382 n

theorem P1406018711134392088.correct : P1406018711134392088.Spec := by
  intro n
  simp only [A017382, Nat.add_sub_cancel, A017382.P1406018711134392088.a, A017382.P8375754362991819397.a, A016898, A016898.P14343272817953415938.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017382

/-!
# A017383: a(n) = (10*n+9)^7.

The programs for A017383, the canonical program `A017383.P7360664671072085115` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017383 has offset 0).

The definition of A017383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^7` (program `A017383.P7360664671072085115`, by `A017383.P7360664671072085115.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017383.P7360664671072085115

`(10*n+9)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017383

/-- `(10*n+9)^7` -/
def P7360664671072085115.Spec : Prop :=
  ∀ n, (P7360664671072085115.a n : ℤ) = A017383 n

theorem P7360664671072085115.correct : P7360664671072085115.Spec := by
  intro n
  simp only [A017383]

end A017383

/-! ## A017383.P3622000395928941022

`A017384(n)/(10*n+9)`
-/

namespace A017383.P3622000395928941022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017384 n : ℚ) / (10 * n + 9 : ℚ)

end

end A017383.P3622000395928941022

namespace A017383

/-- `A017384(n)/(10*n+9)` -/
def P3622000395928941022.Spec : Prop :=
  ∀ n, P3622000395928941022.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P14151667819571744738

`A017377(n)*A017382(n)`
-/

namespace A017383.P14151667819571744738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n * A017382 n

end

end A017383.P14151667819571744738

namespace A017383

/-- `A017377(n)*A017382(n)` -/
def P14151667819571744738.Spec : Prop :=
  ∀ n, P14151667819571744738.a n = A017383 n

theorem P14151667819571744738.correct : P14151667819571744738.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P14151667819571744738.a, A017383.P7360664671072085115.a, A017377, A017377.P8985772118360569930.a, A017382, A017382.P8375754362991819397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P17231502740470734940

`A017378(n)*A017381(n)`
-/

namespace A017383.P17231502740470734940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n * A017381 n

end

end A017383.P17231502740470734940

namespace A017383

/-- `A017378(n)*A017381(n)` -/
def P17231502740470734940.Spec : Prop :=
  ∀ n, P17231502740470734940.a n = A017383 n

theorem P17231502740470734940.correct : P17231502740470734940.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P17231502740470734940.a, A017383.P7360664671072085115.a, A017378, A017378.P8023755885859236069.a, A017381, A017381.P6424422246759289212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P12400235994096087161

`A017379(n)*A017380(n)`
-/

namespace A017383.P12400235994096087161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n * A017380 n

end

end A017383.P12400235994096087161

namespace A017383

/-- `A017379(n)*A017380(n)` -/
def P12400235994096087161.Spec : Prop :=
  ∀ n, P12400235994096087161.a n = A017383 n

theorem P12400235994096087161.correct : P12400235994096087161.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P12400235994096087161.a, A017383.P7360664671072085115.a, A017379, A017379.P11328459825177427294.a, A017380, A017380.P9554480858658097875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P15274548405638905291

`A017385(n)/A017378(n)`
-/

namespace A017383.P15274548405638905291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017385 n : ℚ) / (A017378 n : ℚ)

end

end A017383.P15274548405638905291

namespace A017383

/-- `A017385(n)/A017378(n)` -/
def P15274548405638905291.Spec : Prop :=
  ∀ n, P15274548405638905291.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P2273686699141289478

`A017377(n)²*A017381(n)`
-/

namespace A017383.P2273686699141289478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n ^ 2 * A017381 n

end

end A017383.P2273686699141289478

namespace A017383

/-- `A017377(n)²*A017381(n)` -/
def P2273686699141289478.Spec : Prop :=
  ∀ n, P2273686699141289478.a n = A017383 n

theorem P2273686699141289478.correct : P2273686699141289478.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P2273686699141289478.a, A017383.P7360664671072085115.a, A017377, A017377.P8985772118360569930.a, A017381, A017381.P6424422246759289212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P9502725598263592057

`A017378(n)²*A017379(n)`
-/

namespace A017383.P9502725598263592057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n ^ 2 * A017379 n

end

end A017383.P9502725598263592057

namespace A017383

/-- `A017378(n)²*A017379(n)` -/
def P9502725598263592057.Spec : Prop :=
  ∀ n, P9502725598263592057.a n = A017383 n

theorem P9502725598263592057.correct : P9502725598263592057.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P9502725598263592057.a, A017383.P7360664671072085115.a, A017378, A017378.P8023755885859236069.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P18425865651930565073

`A017379(n)²*A017377(n)`
-/

namespace A017383.P18425865651930565073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n ^ 2 * A017377 n

end

end A017383.P18425865651930565073

namespace A017383

/-- `A017379(n)²*A017377(n)` -/
def P18425865651930565073.Spec : Prop :=
  ∀ n, P18425865651930565073.a n = A017383 n

theorem P18425865651930565073.correct : P18425865651930565073.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P18425865651930565073.a, A017383.P7360664671072085115.a, A017377, A017377.P8985772118360569930.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P10609559349640259200

`A017380(n)²/A017377(n)`
-/

namespace A017383.P10609559349640259200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017380 n ^ 2 : ℚ) / (A017377 n : ℚ)

end

end A017383.P10609559349640259200

namespace A017383

/-- `A017380(n)²/A017377(n)` -/
def P10609559349640259200.Spec : Prop :=
  ∀ n, P10609559349640259200.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P6898148474625328242

`A017385(n)/A017377(n)²`
-/

namespace A017383.P6898148474625328242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017385 n : ℚ) / (A017377 n ^ 2 : ℚ)

end

end A017383.P6898148474625328242

namespace A017383

/-- `A017385(n)/A017377(n)²` -/
def P6898148474625328242.Spec : Prop :=
  ∀ n, P6898148474625328242.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P2343840474930999068

`A017378(n)²²/A017377(n)`
-/

namespace A017383.P2343840474930999068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017378 n ^ 2) ^ 2 : ℚ) / (A017377 n : ℚ)

end

end A017383.P2343840474930999068

namespace A017383

/-- `A017378(n)²²/A017377(n)` -/
def P2343840474930999068.Spec : Prop :=
  ∀ n, P2343840474930999068.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P13697683390326201405

`A017377(n)*A017384(n)/A017378(n)`
-/

namespace A017383.P13697683390326201405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017377 n * A017384 n : ℚ) / (A017378 n : ℚ)

end

end A017383.P13697683390326201405

namespace A017383

/-- `A017377(n)*A017384(n)/A017378(n)` -/
def P13697683390326201405.Spec : Prop :=
  ∀ n, P13697683390326201405.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P5044040147696024439

`A017381(n)/A017379(n)*A017381(n)`
-/

namespace A017383.P5044040147696024439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017381 n : ℚ) / (A017379 n : ℚ) * (A017381 n : ℚ)

end

end A017383.P5044040147696024439

namespace A017383

/-- `A017381(n)/A017379(n)*A017381(n)` -/
def P5044040147696024439.Spec : Prop :=
  ∀ n, P5044040147696024439.a n = (A017383 n : ℚ)

end A017383

/-! ## A017383.P4680982587903095423

`A016903(Δ[n²])`
-/

namespace A017383.P4680982587903095423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017383.P4680982587903095423

namespace A017383

/-- `A016903(Δ[n²])` -/
def P4680982587903095423.Spec : Prop :=
  ∀ n, P4680982587903095423.a n = A017383 n

end A017383

/-! ## A017383.P16178100923215977798

`(10*n+9)*A016902(2*n+1)`
-/

namespace A017383.P16178100923215977798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 9 : ℤ) * A016902 (2 * n + 1)

end

end A017383.P16178100923215977798

namespace A017383

/-- `(10*n+9)*A016902(2*n+1)` -/
def P16178100923215977798.Spec : Prop :=
  ∀ n, P16178100923215977798.a n = A017383 n

theorem P16178100923215977798.correct : P16178100923215977798.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P16178100923215977798.a, A017383.P7360664671072085115.a, A016902, A016902.P2808007698131298643.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P15765310087201825923

`A016904(2*n+1)/(10*n+9)`
-/

namespace A017383.P15765310087201825923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016904 (2 * n + 1) : ℚ) / (10 * n + 9 : ℚ)

end

end A017383.P15765310087201825923

namespace A017383

/-- `A016904(2*n+1)/(10*n+9)` -/
def P15765310087201825923.Spec : Prop :=
  ∀ n, P15765310087201825923.a n = (A017383 n : ℚ)

theorem P15765310087201825923.correct : P15765310087201825923.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P15765310087201825923.a, A017383.P7360664671072085115.a, A016904, A016904.P2651510011051962688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P14543489508701918790

`(10*n+9)²*A016901(2*n+1)`
-/

namespace A017383.P14543489508701918790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 * n + 9) ^ 2 : ℤ) * A016901 (2 * n + 1)

end

end A017383.P14543489508701918790

namespace A017383

/-- `(10*n+9)²*A016901(2*n+1)` -/
def P14543489508701918790.Spec : Prop :=
  ∀ n, P14543489508701918790.a n = A017383 n

theorem P14543489508701918790.correct : P14543489508701918790.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P14543489508701918790.a, A017383.P7360664671072085115.a, A016901, A016901.P18013072888350577229.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P7135241185539283302

`A016900(2*n+1)²/(10*n+9)`
-/

namespace A017383.P7135241185539283302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016900 (2 * n + 1) ^ 2 : ℚ) / (10 * n + 9 : ℚ)

end

end A017383.P7135241185539283302

namespace A017383

/-- `A016900(2*n+1)²/(10*n+9)` -/
def P7135241185539283302.Spec : Prop :=
  ∀ n, P7135241185539283302.a n = (A017383 n : ℚ)

theorem P7135241185539283302.correct : P7135241185539283302.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P7135241185539283302.a, A017383.P7360664671072085115.a, A016900, A016900.P7752663066395658380.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-! ## A017383.P5497598256587849495

`(10*n+9)²²*A016899(2*n+1)`
-/

namespace A017383.P5497598256587849495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((10 * n + 9) ^ 2) ^ 2 : ℤ) * A016899 (2 * n + 1)

end

end A017383.P5497598256587849495

namespace A017383

/-- `(10*n+9)²²*A016899(2*n+1)` -/
def P5497598256587849495.Spec : Prop :=
  ∀ n, P5497598256587849495.a n = A017383 n

theorem P5497598256587849495.correct : P5497598256587849495.Spec := by
  intro n
  simp only [A017383, Nat.add_sub_cancel, A017383.P5497598256587849495.a, A017383.P7360664671072085115.a, A016899, A016899.P5984754013059427978.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017383

/-!
# A017384: a(n) = (10*n + 9)^8.

The programs for A017384, the canonical program `A017384.P2015802504731493815` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017384 has offset 0).

The definition of A017384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^8` (program `A017384.P2015802504731493815`, by `A017384.P2015802504731493815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017384.P2015802504731493815

`(10*n+9)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017384

/-- `(10*n+9)^8` -/
def P2015802504731493815.Spec : Prop :=
  ∀ n, (P2015802504731493815.a n : ℤ) = A017384 n

theorem P2015802504731493815.correct : P2015802504731493815.Spec := by
  intro n
  simp only [A017384]

end A017384

/-! ## A017384.P1692775468171748149

`A001016(A017377(n))`
-/

namespace A017384.P1692775468171748149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 (A017377 n).toNat

end

end A017384.P1692775468171748149

namespace A017384

/-- `A001016(A017377(n))` -/
def P1692775468171748149.Spec : Prop :=
  ∀ n, P1692775468171748149.a n = A017384 n

end A017384

/-! ## A017384.P5685982439722681074

`A017380(n)²`
-/

namespace A017384.P5685982439722681074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017380 n ^ 2

end

end A017384.P5685982439722681074

namespace A017384

/-- `A017380(n)²` -/
def P5685982439722681074.Spec : Prop :=
  ∀ n, P5685982439722681074.a n = A017384 n

theorem P5685982439722681074.correct : P5685982439722681074.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P5685982439722681074.a, A017384.P2015802504731493815.a, A017380, A017380.P9554480858658097875.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P1658374350240566292

`A017378(n)²²`
-/

namespace A017384.P1658374350240566292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017378 n ^ 2) ^ 2

end

end A017384.P1658374350240566292

namespace A017384

/-- `A017378(n)²²` -/
def P1658374350240566292.Spec : Prop :=
  ∀ n, P1658374350240566292.a n = A017384 n

theorem P1658374350240566292.correct : P1658374350240566292.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P1658374350240566292.a, A017384.P2015802504731493815.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P8594583384509064589

`(A017365(n)+1)²²²`
-/

namespace A017384.P8594583384509064589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017365 n + 1) ^ 2) ^ 2) ^ 2

end

end A017384.P8594583384509064589

namespace A017384

/-- `(A017365(n)+1)²²²` -/
def P8594583384509064589.Spec : Prop :=
  ∀ n, P8594583384509064589.a n = A017384 n

theorem P8594583384509064589.correct : P8594583384509064589.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P8594583384509064589.a, A017384.P2015802504731493815.a, A017365, A017365.P3452265278948084008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P8088509982950124212

`(A017353(n)+2)²²²`
-/

namespace A017384.P8088509982950124212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A017353 n + 2) ^ 2) ^ 2) ^ 2

end

end A017384.P8088509982950124212

namespace A017384

/-- `(A017353(n)+2)²²²` -/
def P8088509982950124212.Spec : Prop :=
  ∀ n, P8088509982950124212.a n = A017384 n

theorem P8088509982950124212.correct : P8088509982950124212.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P8088509982950124212.a, A017384.P2015802504731493815.a, A017353, A017353.P13300573628236260796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P4785328123375604487

`(n-A017497(n))²²²`
-/

namespace A017384.P4785328123375604487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((n : ℤ) - A017497 n) ^ 2) ^ 2) ^ 2

end

end A017384.P4785328123375604487

namespace A017384

/-- `(n-A017497(n))²²²` -/
def P4785328123375604487.Spec : Prop :=
  ∀ n, P4785328123375604487.a n = A017384 n

theorem P4785328123375604487.correct : P4785328123375604487.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P4785328123375604487.a, A017384.P2015802504731493815.a, A017497, A017497.P15469120572134644275.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P18082915669974557333

`A017378(n)*A017382(n)`
-/

namespace A017384.P18082915669974557333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n * A017382 n

end

end A017384.P18082915669974557333

namespace A017384

/-- `A017378(n)*A017382(n)` -/
def P18082915669974557333.Spec : Prop :=
  ∀ n, P18082915669974557333.a n = A017384 n

theorem P18082915669974557333.correct : P18082915669974557333.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P18082915669974557333.a, A017384.P2015802504731493815.a, A017378, A017378.P8023755885859236069.a, A017382, A017382.P8375754362991819397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P17096973596005221957

`A017379(n)*A017381(n)`
-/

namespace A017384.P17096973596005221957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n * A017381 n

end

end A017384.P17096973596005221957

namespace A017384

/-- `A017379(n)*A017381(n)` -/
def P17096973596005221957.Spec : Prop :=
  ∀ n, P17096973596005221957.a n = A017384 n

theorem P17096973596005221957.correct : P17096973596005221957.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P17096973596005221957.a, A017384.P2015802504731493815.a, A017379, A017379.P11328459825177427294.a, A017381, A017381.P6424422246759289212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P11692394058316825046

`A017385(n)/A017377(n)`
-/

namespace A017384.P11692394058316825046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017385 n : ℚ) / (A017377 n : ℚ)

end

end A017384.P11692394058316825046

namespace A017384

/-- `A017385(n)/A017377(n)` -/
def P11692394058316825046.Spec : Prop :=
  ∀ n, P11692394058316825046.a n = (A017384 n : ℚ)

end A017384

/-! ## A017384.P8468145600461948651

`A017378(n)*A017379(n)*A017379(n)`
-/

namespace A017384.P8468145600461948651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017378 n * A017379 n * A017379 n

end

end A017384.P8468145600461948651

namespace A017384

/-- `A017378(n)*A017379(n)*A017379(n)` -/
def P8468145600461948651.Spec : Prop :=
  ∀ n, P8468145600461948651.a n = A017384 n

theorem P8468145600461948651.correct : P8468145600461948651.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P8468145600461948651.a, A017384.P2015802504731493815.a, A017378, A017378.P8023755885859236069.a, A017379, A017379.P11328459825177427294.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P863576668719805247

`Δ[A135705(n)]²²²`
-/

namespace A017384.P863576668719805247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017384.P863576668719805247

namespace A017384

/-- `Δ[A135705(n)]²²²` -/
def P863576668719805247.Spec : Prop :=
  ∀ n, P863576668719805247.a n = A017384 n

theorem P863576668719805247.correct : P863576668719805247.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P863576668719805247.f1, A017384.P863576668719805247.a, A017384.P2015802504731493815.a, A135705, A135705.P9136998948891428335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P17913574265167088564

`Δ[A079273(n+1)]²²²`
-/

namespace A017384.P17913574265167088564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017384.P17913574265167088564

namespace A017384

/-- `Δ[A079273(n+1)]²²²` -/
def P17913574265167088564.Spec : Prop :=
  ∀ n, P17913574265167088564.a n = A017384 n

theorem P17913574265167088564.correct : P17913574265167088564.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P17913574265167088564.f1, A017384.P17913574265167088564.a, A017384.P2015802504731493815.a, A079273, A079273.P5421003371963778323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-! ## A017384.P5434189111406387281

`(A179805(n+2)+n+3)²²²`
-/

namespace A017384.P5434189111406387281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((A179805 (n + 2) + (n + 3 : ℤ)) ^ 2) ^ 2) ^ 2

end

end A017384.P5434189111406387281

namespace A017384

/-- `(A179805(n+2)+n+3)²²²` -/
def P5434189111406387281.Spec : Prop :=
  ∀ n, P5434189111406387281.a n = A017384 n

end A017384

/-! ## A017384.P9876310841259129284

`A016904(Δ[n²])`
-/

namespace A017384.P9876310841259129284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016904 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A017384.P9876310841259129284

namespace A017384

/-- `A016904(Δ[n²])` -/
def P9876310841259129284.Spec : Prop :=
  ∀ n, P9876310841259129284.a n = A017384 n

end A017384

/-! ## A017384.P14617324709516499428

`A016900(Δ[n²])²`
-/

namespace A017384.P14617324709516499428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A017384.P14617324709516499428

namespace A017384

/-- `A016900(Δ[n²])²` -/
def P14617324709516499428.Spec : Prop :=
  ∀ n, P14617324709516499428.a n = A017384 n

end A017384

/-! ## A017384.P4657365640243483729

`A016898(Δ[n²])²²`
-/

namespace A017384.P4657365640243483729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017384.P4657365640243483729

namespace A017384

/-- `A016898(Δ[n²])²²` -/
def P4657365640243483729.Spec : Prop :=
  ∀ n, P4657365640243483729.a n = A017384 n

end A017384

/-! ## A017384.P17679204750289654607

`A273372(2*(n+1))²²`
-/

namespace A017384.P17679204750289654607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273372 (2 * (n + 1)) ^ 2) ^ 2

end

end A017384.P17679204750289654607

namespace A017384

/-- `A273372(2*(n+1))²²` -/
def P17679204750289654607.Spec : Prop :=
  ∀ n, P17679204750289654607.a n = A017384 n

end A017384

/-! ## A017384.P746361270939057370

`Δ[A195162(2*n)]²²²`
-/

namespace A017384.P746361270939057370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((f1 (n + 1) - f1 n) ^ 2) ^ 2) ^ 2

end

end A017384.P746361270939057370

namespace A017384

/-- `Δ[A195162(2*n)]²²²` -/
def P746361270939057370.Spec : Prop :=
  ∀ n, P746361270939057370.a n = A017384 n

end A017384

/-! ## A017384.P8385684364735394544

`A016897(2*n+1)²²²`
-/

namespace A017384.P8385684364735394544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A016897 (2 * n + 1) ^ 2) ^ 2) ^ 2

end

end A017384.P8385684364735394544

namespace A017384

/-- `A016897(2*n+1)²²²` -/
def P8385684364735394544.Spec : Prop :=
  ∀ n, P8385684364735394544.a n = A017384 n

theorem P8385684364735394544.correct : P8385684364735394544.Spec := by
  intro n
  simp only [A017384, Nat.add_sub_cancel, A017384.P8385684364735394544.a, A017384.P2015802504731493815.a, A016897, A016897.P9287350145607759688.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017384

/-!
# A017385: a(n) = (10*n + 9)^9.

The programs for A017385, the canonical program `A017385.P3028529792760426359` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017385 has offset 0).

The definition of A017385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10*n+9)^9` (program `A017385.P3028529792760426359`, by `A017385.P3028529792760426359.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017385.P3028529792760426359

`(10*n+9)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017385

/-- `(10*n+9)^9` -/
def P3028529792760426359.Spec : Prop :=
  ∀ n, (P3028529792760426359.a n : ℤ) = A017385 n

theorem P3028529792760426359.correct : P3028529792760426359.Spec := by
  intro n
  simp only [A017385]

end A017385

/-! ## A017385.P1145404704625542557

`sqrt(A017382(n)^3)`
-/

namespace A017385.P1145404704625542557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017382 n ^ 3 : ℝ)

end

end A017385.P1145404704625542557

namespace A017385

/-- `sqrt(A017382(n)^3)` -/
def P1145404704625542557.Spec : Prop :=
  ∀ n, P1145404704625542557.a n = (A017385 n : ℝ)

end A017385

/-! ## A017385.P2755278695446591573

`A017377(n)*A017384(n)`
-/

namespace A017385.P2755278695446591573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n * A017384 n

end

end A017385.P2755278695446591573

namespace A017385

/-- `A017377(n)*A017384(n)` -/
def P2755278695446591573.Spec : Prop :=
  ∀ n, P2755278695446591573.a n = A017385 n

theorem P2755278695446591573.correct : P2755278695446591573.Spec := by
  intro n
  simp only [A017385, Nat.add_sub_cancel, A017385.P2755278695446591573.a, A017385.P3028529792760426359.a, A017377, A017377.P8985772118360569930.a, A017384, A017384.P2015802504731493815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017385

/-! ## A017385.P10146110004584406092

`A017379(n)*A017382(n)`
-/

namespace A017385.P10146110004584406092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017379 n * A017382 n

end

end A017385.P10146110004584406092

namespace A017385

/-- `A017379(n)*A017382(n)` -/
def P10146110004584406092.Spec : Prop :=
  ∀ n, P10146110004584406092.a n = A017385 n

theorem P10146110004584406092.correct : P10146110004584406092.Spec := by
  intro n
  simp only [A017385, Nat.add_sub_cancel, A017385.P10146110004584406092.a, A017385.P3028529792760426359.a, A017379, A017379.P11328459825177427294.a, A017382, A017382.P8375754362991819397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017385

/-! ## A017385.P9482436305056175267

`A017378(n)²²*A017377(n)`
-/

namespace A017385.P9482436305056175267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017378 n ^ 2) ^ 2 * A017377 n

end

end A017385.P9482436305056175267

namespace A017385

/-- `A017378(n)²²*A017377(n)` -/
def P9482436305056175267.Spec : Prop :=
  ∀ n, P9482436305056175267.a n = A017385 n

theorem P9482436305056175267.correct : P9482436305056175267.Spec := by
  intro n
  simp only [A017385, Nat.add_sub_cancel, A017385.P9482436305056175267.a, A017385.P3028529792760426359.a, A017377, A017377.P8985772118360569930.a, A017378, A017378.P8023755885859236069.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017385

/-! ## A017385.P981283765833285788

`A017380(n)²*sqrt(sqrt(A017380(n)))`
-/

namespace A017385.P981283765833285788
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A017380 n ^ 2 : ℝ) * Real.sqrt (Real.sqrt (A017380 n : ℝ))

end

end A017385.P981283765833285788

namespace A017385

/-- `A017380(n)²*sqrt(sqrt(A017380(n)))` -/
def P981283765833285788.Spec : Prop :=
  ∀ n, P981283765833285788.a n = (A017385 n : ℝ)

end A017385

/-! ## A017385.P2213781672816430705

`A016905(2*n+1)`
-/

namespace A017385.P2213781672816430705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016905 (2 * n + 1)

end

end A017385.P2213781672816430705

namespace A017385

/-- `A016905(2*n+1)` -/
def P2213781672816430705.Spec : Prop :=
  ∀ n, P2213781672816430705.a n = A017385 n

theorem P2213781672816430705.correct : P2213781672816430705.Spec := by
  intro n
  simp only [A017385, Nat.add_sub_cancel, A017385.P2213781672816430705.a, A017385.P3028529792760426359.a, A016905, A016905.P13334272319696603784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A017385

/-! ## A017385.P1393678787707308987

`A001017(A017377(n))`
-/

namespace A017385.P1393678787707308987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017377 n).toNat

end

end A017385.P1393678787707308987

namespace A017385

/-- `A001017(A017377(n))` -/
def P1393678787707308987.Spec : Prop :=
  ∀ n, P1393678787707308987.a n = A017385 n

end A017385

/-! ## A017385.P9638791242979663001

`A001017(A017353(n)+2)`
-/

namespace A017385.P9638791242979663001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017353 n + 2).toNat

end

end A017385.P9638791242979663001

namespace A017385

/-- `A001017(A017353(n)+2)` -/
def P9638791242979663001.Spec : Prop :=
  ∀ n, P9638791242979663001.a n = A017385 n

end A017385

/-! ## A017385.P8940901811166039428

`A214877(A017353(n)+2)`
-/

namespace A017385.P8940901811166039428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214877 (A017353 n + 2).toNat

end

end A017385.P8940901811166039428

namespace A017385

/-- `A214877(A017353(n)+2)` -/
def P8940901811166039428.Spec : Prop :=
  ∀ n, P8940901811166039428.a n = A017385 n

end A017385

/-! ## A017385.P11691011540238729172

`A001017(A017281(n)+8)`
-/

namespace A017385.P11691011540238729172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017281 n + 8).toNat

end

end A017385.P11691011540238729172

namespace A017385

/-- `A001017(A017281(n)+8)` -/
def P11691011540238729172.Spec : Prop :=
  ∀ n, P11691011540238729172.a n = A017385 n

end A017385

/-! ## A017385.P13423373849733089132

`A001017(A017497(n)-n)`
-/

namespace A017385.P13423373849733089132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A017497 n - (n : ℤ)).toNat

end

end A017385.P13423373849733089132

namespace A017385

/-- `A001017(A017497(n)-n)` -/
def P13423373849733089132.Spec : Prop :=
  ∀ n, P13423373849733089132.a n = A017385 n

end A017385

/-! ## A017385.P378813041395346513

`A214877(A008592(n+1)-1)`
-/

namespace A017385.P378813041395346513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214877 (A008592 (n + 1) - 1).toNat

end

end A017385.P378813041395346513

namespace A017385

/-- `A214877(A008592(n+1)-1)` -/
def P378813041395346513.Spec : Prop :=
  ∀ n, P378813041395346513.a n = A017385 n

end A017385

/-! ## A017385.P13337737227853054297

`A001017(A008585(A008585(n+1))+n)`
-/

namespace A017385.P13337737227853054297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (A008585 (A008585 (n + 1)).toNat + (n : ℤ)).toNat

end

end A017385.P13337737227853054297

namespace A017385

/-- `A001017(A008585(A008585(n+1))+n)` -/
def P13337737227853054297.Spec : Prop :=
  ∀ n, P13337737227853054297.a n = A017385 n

end A017385

/-! ## A017385.P3831671254558888293

`A001017(A017499(n)/A017498(n)-n)`
-/

namespace A017385.P3831671254558888293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017499 n : ℚ) / (A017498 n : ℚ) - (n : ℚ))).toNat

end

end A017385.P3831671254558888293

namespace A017385

/-- `A001017(A017499(n)/A017498(n)-n)` -/
def P3831671254558888293.Spec : Prop :=
  ∀ n, P3831671254558888293.a n = A017385 n

end A017385

/-! ## A017385.P6544736884195469385

`A001017(A017500(n)/A017499(n)-n)`
-/

namespace A017385.P6544736884195469385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017500 n : ℚ) / (A017499 n : ℚ) - (n : ℚ))).toNat

end

end A017385.P6544736884195469385

namespace A017385

/-- `A001017(A017500(n)/A017499(n)-n)` -/
def P6544736884195469385.Spec : Prop :=
  ∀ n, P6544736884195469385.a n = A017385 n

end A017385

/-! ## A017385.P4326546766064263579

`A001017(A017501(n)/A017500(n)-n)`
-/

namespace A017385.P4326546766064263579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017501 n : ℚ) / (A017500 n : ℚ) - (n : ℚ))).toNat

end

end A017385.P4326546766064263579

namespace A017385

/-- `A001017(A017501(n)/A017500(n)-n)` -/
def P4326546766064263579.Spec : Prop :=
  ∀ n, P4326546766064263579.a n = A017385 n

end A017385

/-! ## A017385.P11119865577338510442

`A001017(A017502(n)/A017501(n)-n)`
-/

namespace A017385.P11119865577338510442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 (SequenceMachineLib.roundAway ((A017502 n : ℚ) / (A017501 n : ℚ) - (n : ℚ))).toNat

end

end A017385.P11119865577338510442

namespace A017385

/-- `A001017(A017502(n)/A017501(n)-n)` -/
def P11119865577338510442.Spec : Prop :=
  ∀ n, P11119865577338510442.a n = A017385 n

end A017385

/-!
# A017386: 

The programs for A017386, there is no canonical definition to state claims against.
-/

/-! ## A017386.P10043999307237885397

`(10*n+9)^10`
-/

namespace A017386.P10043999307237885397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 9) ^ 10

end

end A017386.P10043999307237885397

/-! ## A017386.P12925083451784686907

`record[(n+9)^gcd(10, n)]`
-/

namespace A017386.P12925083451784686907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 9) ^ Nat.gcd 10 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A017386.P12925083451784686907

/-! ## A017386.P10167440483999102028

`A017381(n)²`
-/

namespace A017386.P10167440483999102028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017381 n ^ 2

end

end A017386.P10167440483999102028

/-! ## A017386.P2131053038516839197

`sqrt(A017380(n)^5)`
-/

namespace A017386.P2131053038516839197
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017380 n ^ 5 : ℝ)

end

end A017386.P2131053038516839197

/-! ## A017386.P11973020800830744287

`A017377(n)²*A017384(n)`
-/

namespace A017386.P11973020800830744287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n ^ 2 * A017384 n

end

end A017386.P11973020800830744287

/-! ## A017386.P16261430677148076145

`(A017377(n)²*A017379(n))²`
-/

namespace A017386.P16261430677148076145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n ^ 2 * A017379 n) ^ 2

end

end A017386.P16261430677148076145

/-! ## A017386.P13947339209038959249

`(A017378(n)²*A017377(n))²`
-/

namespace A017386.P13947339209038959249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017378 n ^ 2 * A017377 n) ^ 2

end

end A017386.P13947339209038959249

/-! ## A017386.P5139956106206161162

`A016906(2*n+1)`
-/

namespace A017386.P5139956106206161162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016906 (2 * n + 1)

end

end A017386.P5139956106206161162

/-! ## A017386.P10299202330864574137

`A016901(2*n+1)²`
-/

namespace A017386.P10299202330864574137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016901 (2 * n + 1) ^ 2

end

end A017386.P10299202330864574137

/-! ## A017386.P11659623297235447941

`(A016897(2*n+1)*A016900(2*n+1))²`
-/

namespace A017386.P11659623297235447941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 (2 * n + 1) * A016900 (2 * n + 1)) ^ 2

end

end A017386.P11659623297235447941

/-! ## A017386.P3857158936742670270

`A008454(A017353(n)+2)`
-/

namespace A017386.P3857158936742670270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017353 n + 2).toNat

end

end A017386.P3857158936742670270

/-! ## A017386.P12229391032261041823

`A008454(A017497(n)-n)`
-/

namespace A017386.P12229391032261041823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A017497 n - (n : ℤ)).toNat

end

end A017386.P12229391032261041823

/-! ## A017386.P10756042853231786354

`A008454(A008592(n+1)-1)`
-/

namespace A017386.P10756042853231786354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 (A008592 (n + 1) - 1).toNat

end

end A017386.P10756042853231786354

/-!
# A017387: 

The programs for A017387, there is no canonical definition to state claims against.
-/

/-! ## A017387.P15764916115054842187

`(10*n+9)^11`
-/

namespace A017387.P15764916115054842187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 9) ^ 11

end

end A017387.P15764916115054842187

/-! ## A017387.P12308082964661026695

`A017382(n)²/A017377(n)`
-/

namespace A017387.P12308082964661026695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017382 n ^ 2 : ℚ) / (A017377 n : ℚ)

end

end A017387.P12308082964661026695

/-! ## A017387.P7499817150158969308

`A017379(n)²²/A017377(n)`
-/

namespace A017387.P7499817150158969308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A017379 n ^ 2) ^ 2 : ℚ) / (A017377 n : ℚ)

end

end A017387.P7499817150158969308

/-! ## A017387.P8236691182397076365

`A017377(n)*A017384(n)*A017377(n)²`
-/

namespace A017387.P8236691182397076365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n * A017384 n * A017377 n ^ 2

end

end A017387.P8236691182397076365

/-! ## A017387.P14140160923846539786

`A016907(2*n+1)`
-/

namespace A017387.P14140160923846539786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016907 (2 * n + 1)

end

end A017387.P14140160923846539786

/-! ## A017387.P1781097338753251279

`A008455(A017353(n)+2)`
-/

namespace A017387.P1781097338753251279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017353 n + 2).toNat

end

end A017387.P1781097338753251279

/-! ## A017387.P2274378927407373083

`A008455(A017317(n)+5)`
-/

namespace A017387.P2274378927407373083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017317 n + 5).toNat

end

end A017387.P2274378927407373083

/-! ## A017387.P12488108382830178417

`A008455(A017281(n)+8)`
-/

namespace A017387.P12488108382830178417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A017281 n + 8).toNat

end

end A017387.P12488108382830178417

/-! ## A017387.P5455910965351491854

`A008455(A008591(n+1)+n)`
-/

namespace A017387.P5455910965351491854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008591 (n + 1) + (n : ℤ)).toNat

end

end A017387.P5455910965351491854

/-! ## A017387.P16826831115201042249

`A008455(A008593(n+1)-(n+2))`
-/

namespace A017387.P16826831115201042249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008593 (n + 1) - (n + 2 : ℤ)).toNat

end

end A017387.P16826831115201042249

/-! ## A017387.P12766877041010183853

`A008455(A008585(A008585(n+1))+n)`
-/

namespace A017387.P12766877041010183853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008455 (A008585 (A008585 (n + 1)).toNat + (n : ℤ)).toNat

end

end A017387.P12766877041010183853

/-!
# A017388: 

The programs for A017388, there is no canonical definition to state claims against.
-/

/-! ## A017388.P11711712351144770053

`(10*n+9)^12`
-/

namespace A017388.P11711712351144770053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 * n + 9) ^ 12

end

end A017388.P11711712351144770053

/-! ## A017388.P10182654666434393446

`A017382(n)²`
-/

namespace A017388.P10182654666434393446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017382 n ^ 2

end

end A017388.P10182654666434393446

/-! ## A017388.P11322675250451821347

`sqrt(A017384(n))*A017384(n)`
-/

namespace A017388.P11322675250451821347
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017384 n : ℝ) * (A017384 n : ℝ)

end

end A017388.P11322675250451821347

/-! ## A017388.P3314556460713122466

`(A017377(n)*A017378(n))²²`
-/

namespace A017388.P3314556460713122466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A017377 n * A017378 n) ^ 2) ^ 2

end

end A017388.P3314556460713122466

/-! ## A017388.P9346554906224838060

`A017377(n)²²*A017384(n)`
-/

namespace A017388.P9346554906224838060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017377 n ^ 2) ^ 2 * A017384 n

end

end A017388.P9346554906224838060

/-! ## A017388.P13209168435637058077

`A016899(Δ[n²])²²`
-/

namespace A017388.P13209168435637058077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016899 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2) ^ 2

end

end A017388.P13209168435637058077

/-! ## A017388.P9352362237892105496

`A016902(2*n+1)²`
-/

namespace A017388.P9352362237892105496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016902 (2 * n + 1) ^ 2

end

end A017388.P9352362237892105496

/-! ## A017388.P16269951739184253674

`(A273372(2*n+2)²*A273372(2*n+2))²`
-/

namespace A017388.P16269951739184253674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273372 (2 * n + 2) ^ 2 * A273372 (2 * n + 2)) ^ 2

end

end A017388.P16269951739184253674

/-! ## A017388.P240222736926212060

`sqrt(A017384(n)^3)`
-/

namespace A017388.P240222736926212060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017384 n ^ 3 : ℝ)

end

end A017388.P240222736926212060

/-! ## A017388.P15126153435152102680

`A000578(A017353(n)+2)²²`
-/

namespace A017388.P15126153435152102680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000578 (A017353 n + 2).toNat ^ 2) ^ 2

end

end A017388.P15126153435152102680

/-!
# A017389: Expansion of g.f. 1/((1-3*x)*(1-5*x)*(1-7*x)).

The programs for A017389, the canonical program `A017389.P6948157244928272072` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017389 has offset 0).

The definition of A017389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A017389.P6948157244928272072

`12*a(n-1)-35*a(n-2)+3^n` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017389

/-- `12*a(n-1)-35*a(n-2)+3^n` -/
def P6948157244928272072.Spec : Prop :=
  ∀ n, P6948157244928272072.a n = A017389 n

theorem P6948157244928272072.correct : P6948157244928272072.Spec := by
  intro n
  simp only [A017389]

end A017389

/-! ## A017389.P14476438777720006536

`(7^(n+2)-2*5^(n+2)+3^(n+2))/8`
-/

namespace A017389.P14476438777720006536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ (n + 2) : ℤ) - (2 * 5 ^ (n + 2) : ℤ) + (3 ^ (n + 2) : ℤ) : ℚ) / 8

end

end A017389.P14476438777720006536

namespace A017389

/-- `(7^(n+2)-2*5^(n+2)+3^(n+2))/8` -/
def P14476438777720006536.Spec : Prop :=
  ∀ n, P14476438777720006536.a n = (A017389 n : ℚ)

theorem P14476438777720006536.correct : P14476438777720006536.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A017389, Nat.add_sub_cancel, A017389.P14476438777720006536.a, A017389.P6948157244928272072.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A017389, Nat.add_sub_cancel, A017389.P14476438777720006536.a, A017389.P6948157244928272072.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A017389

/-! ## A017389.P18292335903200684789

`A016138(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A017389.P18292335903200684789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016138 n + 5 * a (n - 1)

end

end A017389.P18292335903200684789

namespace A017389

/-- `A016138(n)+5*a(n-1)` -/
def P18292335903200684789.Spec : Prop :=
  ∀ n, P18292335903200684789.a n = A017389 n

end A017389

/-! ## A017389.P13908573790215733223

`A000007(n)+Δ[A039755(A167614(n+1))]`
-/

namespace A017389.P13908573790215733223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A017389.P13908573790215733223

namespace A017389

/-- `A000007(n)+Δ[A039755(A167614(n+1))]` -/
def P13908573790215733223.Spec : Prop :=
  ∀ n, P13908573790215733223.a n = A017389 n

end A017389

/-! ## A017389.P14645698379683436067

`Δ[A057427(n)+A039755(A167614(n+1))]`
-/

namespace A017389.P14645698379683436067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A039755 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017389.P14645698379683436067

namespace A017389

/-- `Δ[A057427(n)+A039755(A167614(n+1))]` -/
def P14645698379683436067.Spec : Prop :=
  ∀ n, P14645698379683436067.a n = A017389 n

end A017389

/-! ## A017389.P1796158092760766916

`Δ[A039755(A167614(n+1))%A016307(n)]`
-/

namespace A017389.P1796158092760766916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039755 (A167614 (n + 1)).toNat) (A016307 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A017389.P1796158092760766916

namespace A017389

/-- `Δ[A039755(A167614(n+1))%A016307(n)]` -/
def P1796158092760766916.Spec : Prop :=
  ∀ n, P1796158092760766916.a n = A017389 n

end A017389

/-!
# A017390: a(n) = (11*n)^2.

The programs for A017390, the canonical program `A017390.P8628830918857893322` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017390 has offset 0).

The definition of A017390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)²` (program `A017390.P8628830918857893322`, by `A017390.P8628830918857893322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017390.P8628830918857893322

`(11*n)²`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017390

/-- `(11*n)²` -/
def P8628830918857893322.Spec : Prop :=
  ∀ n, (P8628830918857893322.a n : ℤ) = A017390 n

theorem P8628830918857893322.correct : P8628830918857893322.Spec := by
  intro n
  simp only [A017390]

end A017390

/-!
# A017391: a(n) = (11*n)^3.

The programs for A017391, the canonical program `A017391.P12164892535402370747` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017391 has offset 0).

The definition of A017391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^3` (program `A017391.P12164892535402370747`, by `A017391.P12164892535402370747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017391.P12164892535402370747

`(11*n)^3`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017391

/-- `(11*n)^3` -/
def P12164892535402370747.Spec : Prop :=
  ∀ n, (P12164892535402370747.a n : ℤ) = A017391 n

theorem P12164892535402370747.correct : P12164892535402370747.Spec := by
  intro n
  simp only [A017391]

end A017391

/-!
# A017392: a(n) = (11*n)^4.

The programs for A017392, the canonical program `A017392.P18210701263811884649` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017392 has offset 0).

The definition of A017392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^4` (program `A017392.P18210701263811884649`, by `A017392.P18210701263811884649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017392.P18210701263811884649

`(11*n)^4`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017392

/-- `(11*n)^4` -/
def P18210701263811884649.Spec : Prop :=
  ∀ n, (P18210701263811884649.a n : ℤ) = A017392 n

theorem P18210701263811884649.correct : P18210701263811884649.Spec := by
  intro n
  simp only [A017392]

end A017392

/-!
# A017393: a(n) = (11*n)^5.

The programs for A017393, the canonical program `A017393.P9947157136548155420` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017393 has offset 0).

The definition of A017393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^5` (program `A017393.P9947157136548155420`, by `A017393.P9947157136548155420.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017393.P9947157136548155420

`(11*n)^5`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017393

/-- `(11*n)^5` -/
def P9947157136548155420.Spec : Prop :=
  ∀ n, (P9947157136548155420.a n : ℤ) = A017393 n

theorem P9947157136548155420.correct : P9947157136548155420.Spec := by
  intro n
  simp only [A017393]

end A017393

/-!
# A017394: a(n) = (11*n)^6.

The programs for A017394, the canonical program `A017394.P18018745152682479360` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017394 has offset 0).

The definition of A017394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^6` (program `A017394.P18018745152682479360`, by `A017394.P18018745152682479360.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017394.P18018745152682479360

`(11*n)^6`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017394

/-- `(11*n)^6` -/
def P18018745152682479360.Spec : Prop :=
  ∀ n, (P18018745152682479360.a n : ℤ) = A017394 n

theorem P18018745152682479360.correct : P18018745152682479360.Spec := by
  intro n
  simp only [A017394]

end A017394

/-!
# A017395: a(n) = (11*n)^7.

The programs for A017395, the canonical program `A017395.P6440129235059354802` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017395 has offset 0).

The definition of A017395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^7` (program `A017395.P6440129235059354802`, by `A017395.P6440129235059354802.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017395.P6440129235059354802

`(11*n)^7`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017395

/-- `(11*n)^7` -/
def P6440129235059354802.Spec : Prop :=
  ∀ n, (P6440129235059354802.a n : ℤ) = A017395 n

theorem P6440129235059354802.correct : P6440129235059354802.Spec := by
  intro n
  simp only [A017395]

end A017395

/-!
# A017396: a(n) = (11*n)^8.

The programs for A017396, the canonical program `A017396.P7509857511966182303` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017396 has offset 0).

The definition of A017396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^8` (program `A017396.P7509857511966182303`, by `A017396.P7509857511966182303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017396.P7509857511966182303

`(11*n)^8`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017396

/-- `(11*n)^8` -/
def P7509857511966182303.Spec : Prop :=
  ∀ n, (P7509857511966182303.a n : ℤ) = A017396 n

theorem P7509857511966182303.correct : P7509857511966182303.Spec := by
  intro n
  simp only [A017396]

end A017396

/-!
# A017397: a(n) = (11*n)^9.

The programs for A017397, the canonical program `A017397.P13230936440127351914` is in `Seq.B000.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A017397 has offset 0).

The definition of A017397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(11*n)^9` (program `A017397.P13230936440127351914`, by `A017397.P13230936440127351914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A017397.P13230936440127351914

`(11*n)^9`

The canonical program, it is in `Seq.B000.C003`.
-/

namespace A017397

/-- `(11*n)^9` -/
def P13230936440127351914.Spec : Prop :=
  ∀ n, (P13230936440127351914.a n : ℤ) = A017397 n

theorem P13230936440127351914.correct : P13230936440127351914.Spec := by
  intro n
  simp only [A017397]

end A017397

/-!
# A017398: 

The programs for A017398, there is no canonical definition to state claims against.
-/

/-! ## A017398.P12839066330689732383

`(11*n)^10`
-/

namespace A017398.P12839066330689732383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n) ^ 10

end

end A017398.P12839066330689732383

/-!
# A017399: 

The programs for A017399, there is no canonical definition to state claims against.
-/

/-! ## A017399.P14218764027481251401

`(11*n)^11`
-/

namespace A017399.P14218764027481251401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (11 * n) ^ 11

end

end A017399.P14218764027481251401


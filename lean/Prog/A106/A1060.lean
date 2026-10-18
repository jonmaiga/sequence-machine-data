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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A106000: Keep only the first digit of each integer and concatenate them. The result is the concatenation of all integers of the sequence.

The programs for A106000, there is no canonical definition to state claims against.
-/

/-! ## A106000.P9863558000539441109

`eq[A032762(A032762(n)), A054054(n)]`
-/

namespace A106000.P9863558000539441109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032762 (A032762 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106000.P9863558000539441109

/-! ## A106000.P6822766954177535768

`∪[A239090(A239090(n+1)), A001951(n)]`
-/

namespace A106000.P6822766954177535768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239090 (A239090 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106000.P6822766954177535768

/-! ## A106000.P16361965626898487506

`A285852(A304311(n+3))+A072544(n+1)`
-/

namespace A106000.P16361965626898487506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285852 (A304311 (n + 3)).toNat + A072544 (n + 1)

end

end A106000.P16361965626898487506

/-! ## A106000.P12824268181827859840

`lt[A334769(3*(n+1)), A069276(A047100(n))]`
-/

namespace A106000.P12824268181827859840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334769 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069276 (A047100 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106000.P12824268181827859840

/-! ## A106000.P17937426630332597646

`lt[A263267(n), A327349(A347437(2*n+3))]`
-/

namespace A106000.P17937426630332597646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327349 (A347437 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106000.P17937426630332597646

/-!
# A106002: a(n)=1 if there is a number of the form 6k+3 such that prime(n) < 6k+3 < prime(n+1), otherwise 0.

The programs for A106002, the canonical program `A106002.P14480807129506812826` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106002 has offset 1).

The definition of A106002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106002.P14480807129506812826

`floor((p?[2*n+1]-3)/(p?[abs(2*n-3)]+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106002

/-- `floor((p?[2*n+1]-3)/(p?[abs(2*n-3)]+1))` -/
def P14480807129506812826.Spec : Prop :=
  ∀ n, P14480807129506812826.a n = A106002 (n + 1)

theorem P14480807129506812826.correct : P14480807129506812826.Spec := by
  intro n
  simp only [A106002, Nat.add_sub_cancel]

end A106002

/-! ## A106002.P3356620805228250477

`A175217(n+1)%2`
-/

namespace A106002.P3356620805228250477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175217 (n + 1)) 2

end

end A106002.P3356620805228250477

namespace A106002

/-- `A175217(n+1)%2` -/
def P3356620805228250477.Spec : Prop :=
  ∀ n, P3356620805228250477.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P12565386936436171157

`Δ[A074239(abs(1-n))]`
-/

namespace A106002.P12565386936436171157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074239 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106002.P12565386936436171157

namespace A106002

/-- `Δ[A074239(abs(1-n))]` -/
def P12565386936436171157.Spec : Prop :=
  ∀ n, P12565386936436171157.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P1926316126129066607

`floor(atan(A046933(n+1)))`
-/

namespace A106002.P1926316126129066607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A046933 (n + 1) : ℝ)⌋

end

end A106002.P1926316126129066607

namespace A106002

/-- `floor(atan(A046933(n+1)))` -/
def P1926316126129066607.Spec : Prop :=
  ∀ n, P1926316126129066607.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P3170503835817925721

`floor(atan(A339270(n+1)))`
-/

namespace A106002.P3170503835817925721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A339270 (n + 1) : ℝ)⌋

end

end A106002.P3170503835817925721

namespace A106002

/-- `floor(atan(A339270(n+1)))` -/
def P3170503835817925721.Spec : Prop :=
  ∀ n, P3170503835817925721.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P12796387749128782296

`char[A049579(n+1)-1]`
-/

namespace A106002.P12796387749128782296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049579 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A106002.P12796387749128782296

namespace A106002

/-- `char[A049579(n+1)-1]` -/
def P12796387749128782296.Spec : Prop :=
  ∀ n, (P12796387749128782296.a n : ℤ) = A106002 (n + 1)

end A106002

/-! ## A106002.P9930905018368985645

`char[lt[2, A001223(n+1)]]`
-/

namespace A106002.P9930905018368985645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A106002.P9930905018368985645

namespace A106002

/-- `char[lt[2, A001223(n+1)]]` -/
def P9930905018368985645.Spec : Prop :=
  ∀ n, (P9930905018368985645.a n : ℤ) = A106002 (n + 1)

end A106002

/-! ## A106002.P12420722630101216047

`char[lt[4, A167770(n+1)]]`
-/

namespace A106002.P12420722630101216047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167770 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A106002.P12420722630101216047

namespace A106002

/-- `char[lt[4, A167770(n+1)]]` -/
def P12420722630101216047.Spec : Prop :=
  ∀ n, (P12420722630101216047.a n : ℤ) = A106002 (n + 1)

end A106002

/-! ## A106002.P12756312114592133411

`3%A100803(n+1)/3`
-/

namespace A106002.P12756312114592133411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod 3 (A100803 (n + 1)) : ℚ) / 3

end

end A106002.P12756312114592133411

namespace A106002

/-- `3%A100803(n+1)/3` -/
def P12756312114592133411.Spec : Prop :=
  ∀ n, P12756312114592133411.a n = (A106002 (n + 1) : ℚ)

end A106002

/-! ## A106002.P14975350361161776657

`1-C(2, A345366(n+1))`
-/

namespace A106002.P14975350361161776657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose 2 (A345366 (n + 1)).toNat : ℤ)

end

end A106002.P14975350361161776657

namespace A106002

/-- `1-C(2, A345366(n+1))` -/
def P14975350361161776657.Spec : Prop :=
  ∀ n, P14975350361161776657.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P10007738445151950652

`val(A076976(n+1)+6, 6)`
-/

namespace A106002.P10007738445151950652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076976 (n + 1) + 6).toNat 6

end

end A106002.P10007738445151950652

namespace A106002

/-- `val(A076976(n+1)+6, 6)` -/
def P10007738445151950652.Spec : Prop :=
  ∀ n, (P10007738445151950652.a n : ℤ) = A106002 (n + 1)

end A106002

/-! ## A106002.P5418848441586772296

`(n+3)%A089027(n+1)`
-/

namespace A106002.P5418848441586772296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A089027 (n + 1))

end

end A106002.P5418848441586772296

namespace A106002

/-- `(n+3)%A089027(n+1)` -/
def P5418848441586772296.Spec : Prop :=
  ∀ n, P5418848441586772296.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P10792438940647545049

`floor(atan(A074927(n+1)/2))`
-/

namespace A106002.P10792438940647545049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((A074927 (n + 1) : ℚ) / 2 : ℝ)⌋

end

end A106002.P10792438940647545049

namespace A106002

/-- `floor(atan(A074927(n+1)/2))` -/
def P10792438940647545049.Spec : Prop :=
  ∀ n, P10792438940647545049.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P4126149557018759655

`A084360(A001223(n+1))`
-/

namespace A106002.P4126149557018759655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A001223 (n + 1)).toNat

end

end A106002.P4126149557018759655

namespace A106002

/-- `A084360(A001223(n+1))` -/
def P4126149557018759655.Spec : Prop :=
  ∀ n, P4126149557018759655.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P7333057196564394151

`A014306(A167770(n+1))`
-/

namespace A106002.P7333057196564394151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A167770 (n + 1)).toNat

end

end A106002.P7333057196564394151

namespace A106002

/-- `A014306(A167770(n+1))` -/
def P7333057196564394151.Spec : Prop :=
  ∀ n, P7333057196564394151.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P9065160443186175781

`A014306(A038702(n+2))`
-/

namespace A106002.P9065160443186175781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (A038702 (n + 2)).toNat

end

end A106002.P9065160443186175781

namespace A106002

/-- `A014306(A038702(n+2))` -/
def P9065160443186175781.Spec : Prop :=
  ∀ n, P9065160443186175781.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P18414392543412995753

`floor(atan(Δ[A014692(n+1)]))`
-/

namespace A106002.P18414392543412995753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (f1 (n + 1) - f1 n : ℝ)⌋

end

end A106002.P18414392543412995753

namespace A106002

/-- `floor(atan(Δ[A014692(n+1)]))` -/
def P18414392543412995753.Spec : Prop :=
  ∀ n, P18414392543412995753.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P4827518074243771717

`C(A224715(n+2), n+1)`
-/

namespace A106002.P4827518074243771717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A224715 (n + 2)).toNat (n + 1)

end

end A106002.P4827518074243771717

namespace A106002

/-- `C(A224715(n+2), n+1)` -/
def P4827518074243771717.Spec : Prop :=
  ∀ n, (P4827518074243771717.a n : ℤ) = A106002 (n + 1)

end A106002

/-! ## A106002.P5467516423950982826

`ceil(ratio[A129768(n+1)])-1`
-/

namespace A106002.P5467516423950982826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ - 1

end

end A106002.P5467516423950982826

namespace A106002

/-- `ceil(ratio[A129768(n+1)])-1` -/
def P5467516423950982826.Spec : Prop :=
  ∀ n, P5467516423950982826.a n = A106002 (n + 1)

end A106002

/-! ## A106002.P15628810923413389119

`A084360(Δ[A000040(n+1)])`
-/

namespace A106002.P15628810923413389119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (f1 (n + 1) - f1 n).toNat

end

end A106002.P15628810923413389119

namespace A106002

/-- `A084360(Δ[A000040(n+1)])` -/
def P15628810923413389119.Spec : Prop :=
  ∀ n, P15628810923413389119.a n = A106002 (n + 1)

end A106002

/-!
# A106004: First monotonically increasing sequence such that erasing the first and last digit of each term and concatenating what is left results in the concatenation of all terms of the sequence.

The programs for A106004, there is no canonical definition to state claims against.
-/

/-! ## A106004.P182843955831629471

`A106003(xor(10, A005351(n)))`
-/

namespace A106004.P182843955831629471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106003 (Int.xor 10 (A005351 n)).toNat

end

end A106004.P182843955831629471

/-! ## A106004.P14794963449078241768

`abs(A001489(A106003(n+10)))`
-/

namespace A106004.P14794963449078241768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (A106003 (n + 10)).toNat|

end

end A106004.P14794963449078241768

/-! ## A106004.P10912262391913581797

`A001281(2*A106003(n+10))`
-/

namespace A106004.P10912262391913581797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A106003 (n + 10)).toNat

end

end A106004.P10912262391913581797

/-! ## A106004.P15816790864014301455

`A002264(3*A106003(n+10))`
-/

namespace A106004.P15816790864014301455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A106003 (n + 10)).toNat

end

end A106004.P15816790864014301455

/-! ## A106004.P16007294325083691973

`A004442(xor(1, A106003(n+10)))`
-/

namespace A106004.P16007294325083691973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor 1 (A106003 (n + 10))).toNat

end

end A106004.P16007294325083691973

/-!
# A106005: Fibonacci sequence (mod 15).

The programs for A106005, the canonical program `A106005.P13420602895302745714` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106005 has offset 0).

The definition of A106005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106005.P13420602895302745714

`(a(n-1)+a(n-2))%15` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106005

/-- `(a(n-1)+a(n-2))%15` -/
def P13420602895302745714.Spec : Prop :=
  ∀ n, (P13420602895302745714.a n : ℤ) = A106005 n

theorem P13420602895302745714.correct : P13420602895302745714.Spec := by
  intro n
  simp only [A106005]

end A106005

/-!
# A106006: a(n) = [n/2] + [n/3] + [n/5].

The programs for A106006, the canonical program `A106006.P13207956222686998087` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106006 has offset 0).

The definition of A106006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106006.P5468710556254658028

`∑[∑{p}[n, round(e/#)]]`
-/

namespace A106006.P5468710556254658028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.exp 1 / (p : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106006.P5468710556254658028

namespace A106006

/-- `∑[∑{p}[n, round(e/#)]]` -/
def P5468710556254658028.Spec : Prop :=
  ∀ n, P5468710556254658028.a n = A106006 n

end A106006

/-! ## A106006.P13207956222686998087

`floor(n/2)+floor(n/3)+floor(n/5)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106006

/-- `floor(n/2)+floor(n/3)+floor(n/5)` -/
def P13207956222686998087.Spec : Prop :=
  ∀ n, P13207956222686998087.a n = A106006 n

theorem P13207956222686998087.correct : P13207956222686998087.Spec := by
  intro n
  simp only [A106006]

end A106006

/-! ## A106006.P15711895992838720692

`∑[A178146(floor(sqrt(n²+1)))]`
-/

namespace A106006.P15711895992838720692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178146 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106006.P15711895992838720692

namespace A106006

/-- `∑[A178146(floor(sqrt(n²+1)))]` -/
def P15711895992838720692.Spec : Prop :=
  ∀ n, P15711895992838720692.a n = A106006 n

end A106006

/-! ## A106006.P14391565143910815339

`A023443(A008651(n)+n)`
-/

namespace A106006.P14391565143910815339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008651 n + (n : ℤ)).toNat

end

end A106006.P14391565143910815339

namespace A106006

/-- `A023443(A008651(n)+n)` -/
def P14391565143910815339.Spec : Prop :=
  ∀ n, P14391565143910815339.a n = A106006 n

end A106006

/-! ## A106006.P5781596518703189140

`∑[A366981(∏{p}[n, #^val(2*n, #)])]`
-/

namespace A106006.P5781596518703189140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366981 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (2 * n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106006.P5781596518703189140

namespace A106006

/-- `∑[A366981(∏{p}[n, #^val(2*n, #)])]` -/
def P5781596518703189140.Spec : Prop :=
  ∀ n, P5781596518703189140.a n = A106006 n

end A106006

/-! ## A106006.P15409025429880637977

`∑[A001221(gcd(n, A003948(n)))]`
-/

namespace A106006.P15409025429880637977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (n : ℤ) (A003948 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106006.P15409025429880637977

namespace A106006

/-- `∑[A001221(gcd(n, A003948(n)))]` -/
def P15409025429880637977.Spec : Prop :=
  ∀ n, P15409025429880637977.a n = A106006 n

end A106006

/-!
# A106008: Primes p such that 10*p - 3 and 10*p + 3 are both primes.

The programs for A106008, the canonical program `A106008.P17304472629844807330` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106008 has offset 1).

The definition of A106008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 680 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106008.P17304472629844807330

`p?[A093013(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106008

/-- `p?[A093013(n+1)]` -/
def P17304472629844807330.Spec : Prop :=
  ∀ n, P17304472629844807330.a n = A106008 (n + 1)

theorem P17304472629844807330.correct : P17304472629844807330.Spec := by
  intro n
  simp only [A106008, Nat.add_sub_cancel]

end A106008

/-! ## A106008.P13158363151110549617

`record[A006530(A093013(n+2))]`
-/

namespace A106008.P13158363151110549617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A093013 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106008.P13158363151110549617

namespace A106008

/-- `record[A006530(A093013(n+2))]` -/
def P13158363151110549617.Spec : Prop :=
  ∀ n, P13158363151110549617.a n = A106008 (n + 1)

end A106008

/-! ## A106008.P3776448439284835367

`record[A020639(A093013(n+3))]`
-/

namespace A106008.P3776448439284835367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093013 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106008.P3776448439284835367

namespace A106008

/-- `record[A020639(A093013(n+3))]` -/
def P3776448439284835367.Spec : Prop :=
  ∀ n, P3776448439284835367.a n = A106008 (n + 1)

end A106008

/-! ## A106008.P11856448563151656536

`filter[A093013(n+1), A010051(#)]`
-/

namespace A106008.P11856448563151656536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106008.P11856448563151656536

namespace A106008

/-- `filter[A093013(n+1), A010051(#)]` -/
def P11856448563151656536.Spec : Prop :=
  ∀ n, P11856448563151656536.a n = A106008 (n + 1)

end A106008

/-! ## A106008.P15161612844281044874

`∩[A023238(n+1), A093013(n+1)]`
-/

namespace A106008.P15161612844281044874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P15161612844281044874

namespace A106008

/-- `∩[A023238(n+1), A093013(n+1)]` -/
def P15161612844281044874.Spec : Prop :=
  ∀ n, (P15161612844281044874.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P11990187346144520081

`∩[A042989(n+1), A093013(n+1)]`
-/

namespace A106008.P11990187346144520081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P11990187346144520081

namespace A106008

/-- `∩[A042989(n+1), A093013(n+1)]` -/
def P11990187346144520081.Spec : Prop :=
  ∀ n, (P11990187346144520081.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P3028361136136421906

`∩[A093013(n+1), A042988(n)]`
-/

namespace A106008.P3028361136136421906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P3028361136136421906

namespace A106008

/-- `∩[A093013(n+1), A042988(n)]` -/
def P3028361136136421906.Spec : Prop :=
  ∀ n, (P3028361136136421906.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P6330201976340244690

`∩[A042966(n+1), A093013(n+1)]`
-/

namespace A106008.P6330201976340244690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P6330201976340244690

namespace A106008

/-- `∩[A042966(n+1), A093013(n+1)]` -/
def P6330201976340244690.Spec : Prop :=
  ∀ n, (P6330201976340244690.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P870300838576888072

`∩[A093013(n+1), A216881(n+1)]`
-/

namespace A106008.P870300838576888072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P870300838576888072

namespace A106008

/-- `∩[A093013(n+1), A216881(n+1)]` -/
def P870300838576888072.Spec : Prop :=
  ∀ n, (P870300838576888072.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P10006322970811343807

`∩[A093013(n+1), A216882(n+1)]`
-/

namespace A106008.P10006322970811343807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P10006322970811343807

namespace A106008

/-- `∩[A093013(n+1), A216882(n+1)]` -/
def P10006322970811343807.Spec : Prop :=
  ∀ n, (P10006322970811343807.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P2243535814589993378

`∩[A049545(n+1), A093013(n+1)]`
-/

namespace A106008.P2243535814589993378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P2243535814589993378

namespace A106008

/-- `∩[A049545(n+1), A093013(n+1)]` -/
def P2243535814589993378.Spec : Prop :=
  ∀ n, (P2243535814589993378.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P4642997184898743932

`∩[A093013(n+1), A165671(n+1)]`
-/

namespace A106008.P4642997184898743932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P4642997184898743932

namespace A106008

/-- `∩[A093013(n+1), A165671(n+1)]` -/
def P4642997184898743932.Spec : Prop :=
  ∀ n, (P4642997184898743932.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P8081724250309976733

`record[A006530(A091992(n+1))]`
-/

namespace A106008.P8081724250309976733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A091992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106008.P8081724250309976733

namespace A106008

/-- `record[A006530(A091992(n+1))]` -/
def P8081724250309976733.Spec : Prop :=
  ∀ n, P8081724250309976733.a n = A106008 (n + 1)

end A106008

/-! ## A106008.P17119252788736549861

`A000040(record[A061395(A091992(n+1))])`
-/

namespace A106008.P17119252788736549861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A091992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106008.P17119252788736549861

namespace A106008

/-- `A000040(record[A061395(A091992(n+1))])` -/
def P17119252788736549861.Spec : Prop :=
  ∀ n, P17119252788736549861.a n = A106008 (n + 1)

end A106008

/-! ## A106008.P7522119865603467738

`∩[A000040(n+1), A093013(n+1)]`
-/

namespace A106008.P7522119865603467738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P7522119865603467738

namespace A106008

/-- `∩[A000040(n+1), A093013(n+1)]` -/
def P7522119865603467738.Spec : Prop :=
  ∀ n, (P7522119865603467738.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P6711101966482668851

`∩[A045344(n+1), A093013(n+1)]`
-/

namespace A106008.P6711101966482668851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P6711101966482668851

namespace A106008

/-- `∩[A045344(n+1), A093013(n+1)]` -/
def P6711101966482668851.Spec : Prop :=
  ∀ n, (P6711101966482668851.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P15780423472439476593

`∩[A093013(n+1), A116974(n+1)]`
-/

namespace A106008.P15780423472439476593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P15780423472439476593

namespace A106008

/-- `∩[A093013(n+1), A116974(n+1)]` -/
def P15780423472439476593.Spec : Prop :=
  ∀ n, (P15780423472439476593.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P4526927940875774590

`∩[A093013(n+1), A182986(n+1)]`
-/

namespace A106008.P4526927940875774590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P4526927940875774590

namespace A106008

/-- `∩[A093013(n+1), A182986(n+1)]` -/
def P4526927940875774590.Spec : Prop :=
  ∀ n, (P4526927940875774590.a n : ℤ) = A106008 (n + 1)

end A106008

/-! ## A106008.P744035885940057919

`∩[A093013(n+1), A186285(n+1)]`
-/

namespace A106008.P744035885940057919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106008.P744035885940057919

namespace A106008

/-- `∩[A093013(n+1), A186285(n+1)]` -/
def P744035885940057919.Spec : Prop :=
  ∀ n, (P744035885940057919.a n : ℤ) = A106008 (n + 1)

end A106008

/-!
# A106009: Primes p such that 20*p - 3 and 20*p + 3 are both primes.

The programs for A106009, the canonical program `A106009.P16468234761695848879` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106009 has offset 1).

The definition of A106009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106009.P16468234761695848879

`record[A006530(A093013(n+3))%A022884(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A106009

/-- `record[A006530(A093013(n+3))%A022884(n+1)]` -/
def P16468234761695848879.Spec : Prop :=
  ∀ n, P16468234761695848879.a n = A106009 (n + 1)

theorem P16468234761695848879.correct : P16468234761695848879.Spec := by
  intro n
  simp only [A106009, Nat.add_sub_cancel]

end A106009

/-! ## A106009.P16477395816820484002

`p?[A302043(A093013(n+1))]`
-/

namespace A106009.P16477395816820484002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A093013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106009.P16477395816820484002

namespace A106009

/-- `p?[A302043(A093013(n+1))]` -/
def P16477395816820484002.Spec : Prop :=
  ∀ n, P16477395816820484002.a n = A106009 (n + 1)

end A106009

/-! ## A106009.P18117339333393316478

`p?[A302043(A091992(n+1)/2)]`
-/

namespace A106009.P18117339333393316478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (SequenceMachineLib.roundAway ((A091992 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106009.P18117339333393316478

namespace A106009

/-- `p?[A302043(A091992(n+1)/2)]` -/
def P18117339333393316478.Spec : Prop :=
  ∀ n, P18117339333393316478.a n = A106009 (n + 1)

end A106009

/-! ## A106009.P5826192406353184457

`p?[A093013(n+1)-A006530(A091992(n+1))]`
-/

namespace A106009.P5826192406353184457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093013 (n + 1) - A006530 (A091992 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106009.P5826192406353184457

namespace A106009

/-- `p?[A093013(n+1)-A006530(A091992(n+1))]` -/
def P5826192406353184457.Spec : Prop :=
  ∀ n, P5826192406353184457.a n = A106009 (n + 1)

end A106009

/-! ## A106009.P9541292614247747610

`p?[record[A117358(2*A091992(n+1))]]`
-/

namespace A106009.P9541292614247747610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A091992 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106009.P9541292614247747610

namespace A106009

/-- `p?[record[A117358(2*A091992(n+1))]]` -/
def P9541292614247747610.Spec : Prop :=
  ∀ n, P9541292614247747610.a n = A106009 (n + 1)

end A106009

/-! ## A106009.P3967772009074255081

`p?[A029578(A093013(n+2))]`
-/

namespace A106009.P3967772009074255081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A093013 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106009.P3967772009074255081

namespace A106009

/-- `p?[A029578(A093013(n+2))]` -/
def P3967772009074255081.Spec : Prop :=
  ∀ n, P3967772009074255081.a n = A106009 (n + 1)

end A106009

/-! ## A106009.P3420604885051705902

`A052410(p?[A060681(A093013(n+1))])`
-/

namespace A106009.P3420604885051705902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A093013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A106009.P3420604885051705902

namespace A106009

/-- `A052410(p?[A060681(A093013(n+1))])` -/
def P3420604885051705902.Spec : Prop :=
  ∀ n, P3420604885051705902.a n = A106009 (n + 1)

end A106009

/-! ## A106009.P7412894700127471161

`p?[A174571(2*A093013(n+1))]`
-/

namespace A106009.P7412894700127471161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A093013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106009.P7412894700127471161

namespace A106009

/-- `p?[A174571(2*A093013(n+1))]` -/
def P7412894700127471161.Spec : Prop :=
  ∀ n, P7412894700127471161.a n = A106009 (n + 1)

end A106009

/-!
# A106010: Primes p such that 40*p - 3 and 40*p + 3 are both primes.

The programs for A106010, there is no canonical definition to state claims against.
-/

/-! ## A106010.P7957947137945005937

`p?[record[A117358(A091992(n+1))]]`
-/

namespace A106010.P7957947137945005937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A091992 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106010.P7957947137945005937

/-! ## A106010.P2771269901491500348

`p?[record[A117358(2*A093013(n+1))]]`
-/

namespace A106010.P2771269901491500348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * A093013 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106010.P2771269901491500348

/-! ## A106010.P13959715152743516546

`p?[A174571(A093013(n+1))]`
-/

namespace A106010.P13959715152743516546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A093013 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106010.P13959715152743516546

/-!
# A106011: Primes p such that 50*p - 3 and 50*p + 3 are both primes.

The programs for A106011, there is no canonical definition to state claims against.
-/

/-! ## A106011.P10670990715290355712

`record[p?[A004151(A091992(n+1))]]`
-/

namespace A106011.P10670990715290355712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A091992 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106011.P10670990715290355712

/-! ## A106011.P16772218356460459263

`p?[∑[A073093(A003082(n))]]`
-/

namespace A106011.P16772218356460459263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A003082 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106011.P16772218356460459263

/-! ## A106011.P6364967791783498129

`A329131(∑[A333939(3*n)²])`
-/

namespace A106011.P6364967791783498129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329131 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106011.P6364967791783498129

/-!
# A106013: Primes p such that 80*p +- 3 are primes.

The programs for A106013, there is no canonical definition to state claims against.
-/

/-! ## A106013.P12335346482262150760

`p?[record[A117358(A093013(n+1))]]`
-/

namespace A106013.P12335346482262150760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A093013 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106013.P12335346482262150760

/-! ## A106013.P5719355236776208682

`p?[record[A117358(A091992(n+1)/2)]]`
-/

namespace A106013.P5719355236776208682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (SequenceMachineLib.roundAway ((A091992 (n + 1) : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106013.P5719355236776208682

/-! ## A106013.P16312519911798369189

`record[p?[A056554(A091992(n+1))]]`
-/

namespace A106013.P16312519911798369189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A091992 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106013.P16312519911798369189

/-!
# A106014: Primes p such that 100*p +- 3 are primes.

The programs for A106014, there is no canonical definition to state claims against.
-/

/-! ## A106014.P2325333955217733134

`p?[A232803(A062559(n))]`
-/

namespace A106014.P2325333955217733134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232803 (A062559 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106014.P2325333955217733134

/-! ## A106014.P1488232904172941716

`A232803(A062559(n+1))`
-/

namespace A106014.P1488232904172941716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232803 (A062559 (n + 1)).toNat

end

end A106014.P1488232904172941716

/-!
# A106015: Primes p such that 4*p +- 3 are primes.

The programs for A106015, there is no canonical definition to state claims against.
-/

/-! ## A106015.P12861725101772786659

`∩[A023213(n+1), A157978(n+1)]`
-/

namespace A106015.P12861725101772786659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106015.P12861725101772786659

/-! ## A106015.P10912479479905236934

`A000040(A174011(n+1))`
-/

namespace A106015.P10912479479905236934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A174011 (n + 1)).toNat

end

end A106015.P10912479479905236934

/-! ## A106015.P11908724584151896932

`A008578(A174011(n+1)+1)`
-/

namespace A106015.P11908724584151896932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A174011 (n + 1) + 1).toNat

end

end A106015.P11908724584151896932

/-! ## A106015.P8171890099344354171

`∑{d}[A174011(n+1), A007444(#)]`
-/

namespace A106015.P8171890099344354171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A106015.P8171890099344354171

/-! ## A106015.P11974826585025962703

`A006005(A174011(n+1))+A000007(n)`
-/

namespace A106015.P11974826585025962703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A174011 (n + 1)).toNat + A000007 n

end

end A106015.P11974826585025962703

/-! ## A106015.P2496126394788833103

`∩[A095278(n+1), A157978(n+1)]`
-/

namespace A106015.P2496126394788833103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106015.P2496126394788833103

/-! ## A106015.P8059221757867679218

`p?[A088763(n+1)-A006530(A088763(n+1))]`
-/

namespace A106015.P8059221757867679218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1) - A006530 (A088763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106015.P8059221757867679218

/-! ## A106015.P14814037188011347051

`A207790(2*A174011(n+1))`
-/

namespace A106015.P14814037188011347051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A174011 (n + 1)).toNat

end

end A106015.P14814037188011347051

/-! ## A106015.P14282042993383665312

`∩[A157978(n+1), A380550(n+1)]`
-/

namespace A106015.P14282042993383665312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106015.P14282042993383665312

/-! ## A106015.P13766335467901894464

`record[p?[A007913(A087695(n+1))]]`
-/

namespace A106015.P13766335467901894464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A087695 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106015.P13766335467901894464

/-! ## A106015.P17274419561476485996

`A006530(∩[2*A088763(n+1), A001749(n+1)])`
-/

namespace A106015.P17274419561476485996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106015.P17274419561476485996

/-!
# A106016: Primes p such that 14*p - 3 and 14*p + 3 are both primes.

The programs for A106016, there is no canonical definition to state claims against.
-/

/-! ## A106016.P3985248516999820578

`A003147(A001222((n+1)!)+1)`
-/

namespace A106016.P3985248516999820578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (A001222 (Nat.factorial (n + 1)) + 1).toNat

end

end A106016.P3985248516999820578

/-! ## A106016.P9035066192021597175

`A003147(A001222(∏[n+1])+1)`
-/

namespace A106016.P9035066192021597175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (A001222 (∏ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A106016.P9035066192021597175

/-!
# A106017: Primes p such that 16*p +- 3 are primes.

The programs for A106017, there is no canonical definition to state claims against.
-/

/-! ## A106017.P8785052902555764280

`A006530(∩[2*A001749(n+1), A088763(n+1)])`
-/

namespace A106017.P8785052902555764280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A106017.P8785052902555764280

/-! ## A106017.P7154275379393034624

`p?[record[A117358(A088763(n+1))]]`
-/

namespace A106017.P7154275379393034624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A088763 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106017.P7154275379393034624

/-! ## A106017.P5845246687863058447

`p?[record[A117358(A087695(n+1)/2)]]`
-/

namespace A106017.P5845246687863058447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (SequenceMachineLib.roundAway ((A087695 (n + 1) : ℚ) / 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106017.P5845246687863058447

/-! ## A106017.P6010843783847653538

`record[p?[A053165(A087695(n+1))]]`
-/

namespace A106017.P6010843783847653538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A087695 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106017.P6010843783847653538

/-!
# A106018: Primes p such that 22*p +- 3 are primes.

The programs for A106018, there is no canonical definition to state claims against.
-/

/-! ## A106018.P198529851524134179

`p?[∑[A237739(A292860(n))]]`
-/

namespace A106018.P198529851524134179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237739 (A292860 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106018.P198529851524134179

/-! ## A106018.P2388919482747693746

`p?[∑[A217680(n+1)+A004525(n)]]`
-/

namespace A106018.P2388919482747693746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217680 (n + 1) + A004525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106018.P2388919482747693746

/-!
# A106019: Primes p such that 26*p +- 3 are primes.

The programs for A106019, there is no canonical definition to state claims against.
-/

/-! ## A106019.P14996042541301079628

`A171561(A068497(n+1)-A002262(n))`
-/

namespace A106019.P14996042541301079628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (A068497 (n + 1) - A002262 n).toNat

end

end A106019.P14996042541301079628

/-!
# A106022: Primes p such that 2*p +/ - 3 and 8*p +/ - 3 are all primes.

The programs for A106022, the canonical program `A106022.P3953830917697227249` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106022 has offset 1).

The definition of A106022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106022.P3953830917697227249

`∩[A092110(n+1), A164570(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A106022

/-- `∩[A092110(n+1), A164570(n+1)]` -/
def P3953830917697227249.Spec : Prop :=
  ∀ n, (P3953830917697227249.a n : ℤ) = A106022 (n + 1)

theorem P3953830917697227249.correct : P3953830917697227249.Spec := by
  intro n
  simp only [A106022, Nat.add_sub_cancel]

end A106022

/-! ## A106022.P18424415008447691838

`∩[A088763(n+1), A164570(n+1)]`
-/

namespace A106022.P18424415008447691838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106022.P18424415008447691838

namespace A106022

/-- `∩[A088763(n+1), A164570(n+1)]` -/
def P18424415008447691838.Spec : Prop :=
  ∀ n, (P18424415008447691838.a n : ℤ) = A106022 (n + 1)

end A106022

/-! ## A106022.P10137068456858455581

`∩[A289436(A087695(n+1)), A164570(n+1)]`
-/

namespace A106022.P10137068456858455581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A087695 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106022.P10137068456858455581

namespace A106022

/-- `∩[A289436(A087695(n+1)), A164570(n+1)]` -/
def P10137068456858455581.Spec : Prop :=
  ∀ n, (P10137068456858455581.a n : ℤ) = A106022 (n + 1)

end A106022

/-!
# A106029: a(n) is the number of orbits under the action of GL_2[Z] on the primitive binary quadratic forms of discriminant D, where D=m if m=1 (mod 4), D=4*m otherwise and m

The programs for A106029, there is no canonical definition to state claims against.
-/

/-! ## A106029.P10232243747800900284

`A107628(abs(A033197(n+1)))`
-/

namespace A106029.P10232243747800900284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 |A033197 (n + 1)|.toNat

end

end A106029.P10232243747800900284

/-! ## A106029.P17776040951247603191

`A107628(-A033197(n+1))`
-/

namespace A106029.P17776040951247603191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (-A033197 (n + 1)).toNat

end

end A106029.P17776040951247603191

/-! ## A106029.P9214119326394630258

`A107628(root(A033197(n+1)², 2))`
-/

namespace A106029.P9214119326394630258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (SequenceMachineLib.roundAway ((A033197 (n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A106029.P9214119326394630258

/-! ## A106029.P18088690247781508839

`(A003643(n+1)+A000924(n+1))/2`
-/

namespace A106029.P18088690247781508839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003643 (n + 1) + A000924 (n + 1) : ℚ) / 2

end

end A106029.P18088690247781508839

/-! ## A106029.P13848193966845906776

`A004525(A003643(n+1)+A000924(n+1))`
-/

namespace A106029.P13848193966845906776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003643 (n + 1) + A000924 (n + 1)).toNat

end

end A106029.P13848193966845906776

/-! ## A106029.P18198421045962753134

`A004526(A003643(n+1)+A000924(n+1))`
-/

namespace A106029.P18198421045962753134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003643 (n + 1) + A000924 (n + 1)).toNat

end

end A106029.P18198421045962753134

/-! ## A106029.P9911591851416306189

`A026741(A003643(n+1)+A000924(n+1))`
-/

namespace A106029.P9911591851416306189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003643 (n + 1) + A000924 (n + 1)).toNat

end

end A106029.P9911591851416306189

/-! ## A106029.P17862250291787673520

`A034888(A003643(n+1)+A000924(n+1))`
-/

namespace A106029.P17862250291787673520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A003643 (n + 1) + A000924 (n + 1)).toNat

end

end A106029.P17862250291787673520

/-! ## A106029.P10107665622016229233

`(A202084(record[n*A008683(n+1)²]+1)+A003643(n+1))/2`
-/

namespace A106029.P10107665622016229233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat + A003643 (n + 1) : ℚ) / 2

end

end A106029.P10107665622016229233

/-!
# A106030: a(n) is the number of orbits under the action of GL_2[Z] on the primitive binary quadratic forms of discriminant D, where D=m if m=1 (mod 4), D=4*m otherwise and m>1 is the n-th squarefree number.

The programs for A106030, there is no canonical definition to state claims against.
-/

/-! ## A106030.P7685738265048516049

`(A317990(n+2)+A104888(n+2))/2`
-/

namespace A106030.P7685738265048516049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317990 (n + 2) + A104888 (n + 2) : ℚ) / 2

end

end A106030.P7685738265048516049

/-! ## A106030.P6584583706843650809

`or(A000035(A010894(n)), A317990(n+2))`
-/

namespace A106030.P6584583706843650809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A010894 (n + 21)).toNat) (A317990 (n + 2))

end

end A106030.P6584583706843650809

/-! ## A106030.P13833543120179531997

`A317990(n+2)+A025466(A122111(n+1))`
-/

namespace A106030.P13833543120179531997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317990 (n + 2) + A025466 (A122111 (n + 1)).toNat

end

end A106030.P13833543120179531997

/-! ## A106030.P17624486705881089665

`A317990(n+2)+A082784(A000009(2*n))`
-/

namespace A106030.P17624486705881089665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317990 (n + 2) + A082784 (A000009 (2 * n)).toNat

end

end A106030.P17624486705881089665

/-! ## A106030.P16936917467440916852

`A104888(n+2)-A378598(A014153(n))`
-/

namespace A106030.P16936917467440916852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104888 (n + 2) - A378598 (A014153 n).toNat

end

end A106030.P16936917467440916852

/-!
# A106031: a(n) is the number of orbits under the action of GL_2[Z] on the primitive binary quadratic forms of discriminant D, where D < 0 is the n-th fundamental discriminant.

The programs for A106031, there is no canonical definition to state claims against.
-/

/-! ## A106031.P13435192825746165596

`A107628(A003657(n+1))`
-/

namespace A106031.P13435192825746165596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (A003657 (n + 1)).toNat

end

end A106031.P13435192825746165596

/-! ## A106031.P15389633244010464166

`A223708(floor(A003657(n+1)/2))`
-/

namespace A106031.P15389633244010464166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223708 ⌊(A003657 (n + 1) : ℚ) / 2⌋.toNat

end

end A106031.P15389633244010464166

/-! ## A106031.P11660945325038315774

`(A006641(n+1)+A003640(n+1))/2`
-/

namespace A106031.P11660945325038315774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006641 (n + 1) + A003640 (n + 1) : ℚ) / 2

end

end A106031.P11660945325038315774

/-! ## A106031.P256734013814996876

`A004525(A006641(n+1)+A003640(n+1))`
-/

namespace A106031.P256734013814996876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006641 (n + 1) + A003640 (n + 1)).toNat

end

end A106031.P256734013814996876

/-! ## A106031.P8203762572582713154

`A004526(A006641(n+1)+A003640(n+1))`
-/

namespace A106031.P8203762572582713154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006641 (n + 1) + A003640 (n + 1)).toNat

end

end A106031.P8203762572582713154

/-! ## A106031.P6916470144047931526

`A026741(A006641(n+1)+A003640(n+1))`
-/

namespace A106031.P6916470144047931526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A006641 (n + 1) + A003640 (n + 1)).toNat

end

end A106031.P6916470144047931526

/-! ## A106031.P16653287616887326289

`(A007875(A003657(n+1))+A006641(n+1))/2`
-/

namespace A106031.P16653287616887326289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007875 (A003657 (n + 1)).toNat + A006641 (n + 1) : ℚ) / 2

end

end A106031.P16653287616887326289

/-! ## A106031.P11992640976838638126

`(A058305(A003657(n+1))+A003640(n+1))/2`
-/

namespace A106031.P11992640976838638126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058305 (A003657 (n + 1)).toNat + A003640 (n + 1) : ℚ) / 2

end

end A106031.P11992640976838638126

/-!
# A106032: a(n) is the number of orbits under the action of GL_2[Z] on the primitive binary quadratic forms of discriminant D, where D>1 is the n-th fundamental discriminant.

The programs for A106032, there is no canonical definition to state claims against.
-/

/-! ## A106032.P10764476472094667035

`(A317989(n+2)+A003646(n+2))/2`
-/

namespace A106032.P10764476472094667035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317989 (n + 2) + A003646 (n + 2) : ℚ) / 2

end

end A106032.P10764476472094667035

/-! ## A106032.P6756414410399425987

`floor(A317991(n+2)+sqrt(A003646(n+2)))`
-/

namespace A106032.P6756414410399425987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317991 (n + 2) : ℝ) + Real.sqrt (A003646 (n + 2) : ℝ)⌋

end

end A106032.P6756414410399425987

/-! ## A106032.P883951870744161338

`A000720(A317989(n+2)+A003646(n+2))`
-/

namespace A106032.P883951870744161338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A317989 (n + 2) + A003646 (n + 2)).toNat

end

end A106032.P883951870744161338

/-! ## A106032.P2226960170498774072

`or(A010054(A022269(n)), A317989(n+2))`
-/

namespace A106032.P2226960170498774072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A022269 n).toNat) (A317989 (n + 2))

end

end A106032.P2226960170498774072

/-! ## A106032.P14716061898440761793

`A317989(n+2)+A023533(A276941(2*n+3))`
-/

namespace A106032.P14716061898440761793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317989 (n + 2) + A023533 (A276941 (2 * n + 3)).toNat

end

end A106032.P14716061898440761793

/-!
# A106033: a(n) is the least number k such that n*prime(n)+k is a perfect square.

The programs for A106033, the canonical program `A106033.P11683275331328434839` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106033 has offset 1).

The definition of A106033 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033286, A080883, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106033.P11683275331328434839

`A080883(A033286(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106033

/-- `A080883(A033286(n+1))` -/
def P11683275331328434839.Spec : Prop :=
  ∀ n, P11683275331328434839.a n = A106033 (n + 1)

theorem P11683275331328434839.correct : P11683275331328434839.Spec := by
  intro n
  simp only [A106033, Nat.add_sub_cancel]

end A106033

/-! ## A106033.P3692375643292674730

`A068527((n+1)*p?[xor(1, n)+1])`
-/

namespace A106033.P3692375643292674730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 ((n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A106033.P3692375643292674730

namespace A106033

/-- `A068527((n+1)*p?[xor(1, n)+1])` -/
def P3692375643292674730.Spec : Prop :=
  ∀ n, P3692375643292674730.a n = A106033 (n + 1)

end A106033

/-! ## A106033.P15780434294330733414

`A068527(lcm(n+1, p?[xor(1, n)+1]))`
-/

namespace A106033.P15780434294330733414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (Nat.lcm (n + 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A106033.P15780434294330733414

namespace A106033

/-- `A068527(lcm(n+1, p?[xor(1, n)+1]))` -/
def P15780434294330733414.Spec : Prop :=
  ∀ n, P15780434294330733414.a n = A106033 (n + 1)

end A106033

/-! ## A106033.P16023747396697085127

`A068527((n+1)*p?[n%3+n])`
-/

namespace A106033.P16023747396697085127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 ((n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A106033.P16023747396697085127

namespace A106033

/-- `A068527((n+1)*p?[n%3+n])` -/
def P16023747396697085127.Spec : Prop :=
  ∀ n, P16023747396697085127.a n = A106033 (n + 1)

end A106033

/-! ## A106033.P11339092414192757271

`A080883(A083723(n+1)-n)`
-/

namespace A106033.P11339092414192757271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A083723 (n + 1) - (n : ℤ)).toNat

end

end A106033.P11339092414192757271

namespace A106033

/-- `A080883(A083723(n+1)-n)` -/
def P11339092414192757271.Spec : Prop :=
  ∀ n, P11339092414192757271.a n = A106033 (n + 1)

end A106033

/-!
# A106034: a(n) is the least number such that n*prime(n)+a(n) is a perfect cube.

The programs for A106034, there is no canonical definition to state claims against.
-/

/-! ## A106034.P9725700669602607383

`A333884(A033286(n+1))`
-/

namespace A106034.P9725700669602607383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (A033286 (n + 1)).toNat

end

end A106034.P9725700669602607383

/-! ## A106034.P1420251273913843983

`A333884((n+1)*A000040(n+1))`
-/

namespace A106034.P1420251273913843983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A106034.P1420251273913843983

/-! ## A106034.P10178673130755084834

`A333884(lcm(n+1, A000040(n+1)))`
-/

namespace A106034.P10178673130755084834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 (Int.lcm (n + 1 : ℤ) (A000040 (n + 1)))

end

end A106034.P10178673130755084834

/-! ## A106034.P9285454698007597784

`A333884((n+1)*record[A006530(n+2)])`
-/

namespace A106034.P9285454698007597784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106034.P9285454698007597784

/-!
# A106035: The "Octanacci" sequence: Trajectory of 1 under the morphism 1->{1,2,1}, 2->{1}.

The programs for A106035, the canonical program `A106035.P16227525705012729151` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106035 has offset 0).

The definition of A106035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106035.P3537735260538991836

`2-Δ[round(n/sqrt(2))]`
-/

namespace A106035.P3537735260538991836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n)

end

end A106035.P3537735260538991836

namespace A106035

/-- `2-Δ[round(n/sqrt(2))]` -/
def P3537735260538991836.Spec : Prop :=
  ∀ n, P3537735260538991836.a n = A106035 n

end A106035

/-! ## A106035.P13212369112304981107

`gcd(2, Δ[round(n/sqrt(2))])`
-/

namespace A106035.P13212369112304981107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sqrt (2 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (n + 1) - f1 n)

end

end A106035.P13212369112304981107

namespace A106035

/-- `gcd(2, Δ[round(n/sqrt(2))])` -/
def P13212369112304981107.Spec : Prop :=
  ∀ n, (P13212369112304981107.a n : ℤ) = A106035 n

end A106035

/-! ## A106035.P16797652652826278718

`A040001(A101438(n+1))`
-/

namespace A106035.P16797652652826278718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A101438 (n + 1)).toNat

end

end A106035.P16797652652826278718

namespace A106035

/-- `A040001(A101438(n+1))` -/
def P16797652652826278718.Spec : Prop :=
  ∀ n, P16797652652826278718.a n = A106035 n

end A106035

/-! ## A106035.P6266381827558025361

`A138330(A026249(n+1))`
-/

namespace A106035.P6266381827558025361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (A026249 (n + 1)).toNat

end

end A106035.P6266381827558025361

namespace A106035

/-- `A138330(A026249(n+1))` -/
def P6266381827558025361.Spec : Prop :=
  ∀ n, P6266381827558025361.a n = A106035 n

end A106035

/-! ## A106035.P16227525705012729151

`A006340(A049473(n+1)-A049473(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106035

/-- `A006340(A049473(n+1)-A049473(n))` -/
def P16227525705012729151.Spec : Prop :=
  ∀ n, P16227525705012729151.a n = A106035 n

theorem P16227525705012729151.correct : P16227525705012729151.Spec := by
  intro n
  simp only [A106035]

end A106035

/-! ## A106035.P11271505465557856562

`A106036(A049473(n)-A258703(n+1))`
-/

namespace A106035.P11271505465557856562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106036 (A049473 n - A258703 (n + 1)).toNat

end

end A106035.P11271505465557856562

namespace A106035

/-- `A106036(A049473(n)-A258703(n+1))` -/
def P11271505465557856562.Spec : Prop :=
  ∀ n, P11271505465557856562.a n = A106035 n

end A106035

/-! ## A106035.P1605261246706543196

`2/Δ[A189573(n+1)]`
-/

namespace A106035.P1605261246706543196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (f1 (n + 1) - f1 n : ℚ)

end

end A106035.P1605261246706543196

namespace A106035

/-- `2/Δ[A189573(n+1)]` -/
def P1605261246706543196.Spec : Prop :=
  ∀ n, P1605261246706543196.a n = (A106035 n : ℚ)

end A106035

/-! ## A106035.P18388247083216590686

`A318930(A184580(n+1))`
-/

namespace A106035.P18388247083216590686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A184580 (n + 1)).toNat

end

end A106035.P18388247083216590686

namespace A106035

/-- `A318930(A184580(n+1))` -/
def P18388247083216590686.Spec : Prop :=
  ∀ n, P18388247083216590686.a n = A106035 n

end A106035

/-! ## A106035.P16808366861311993982

`A318930(A184622(n+1))`
-/

namespace A106035.P16808366861311993982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A184622 (n + 1)).toNat

end

end A106035.P16808366861311993982

namespace A106035

/-- `A318930(A184622(n+1))` -/
def P16808366861311993982.Spec : Prop :=
  ∀ n, P16808366861311993982.a n = A106035 n

end A106035

/-! ## A106035.P4428929117897111834

`A318930(A258833(n))`
-/

namespace A106035.P4428929117897111834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A258833 n).toNat

end

end A106035.P4428929117897111834

namespace A106035

/-- `A318930(A258833(n))` -/
def P4428929117897111834.Spec : Prop :=
  ∀ n, P4428929117897111834.a n = A106035 n

end A106035

/-! ## A106035.P12927874939429806879

`A318930(A001951(n+1))`
-/

namespace A106035.P12927874939429806879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A001951 (n + 1)).toNat

end

end A106035.P12927874939429806879

namespace A106035

/-- `A318930(A001951(n+1))` -/
def P12927874939429806879.Spec : Prop :=
  ∀ n, P12927874939429806879.a n = A106035 n

end A106035

/-! ## A106035.P9337774424569091346

`A318930(A184117(n+1))`
-/

namespace A106035.P9337774424569091346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A184117 (n + 1)).toNat

end

end A106035.P9337774424569091346

namespace A106035

/-- `A318930(A184117(n+1))` -/
def P9337774424569091346.Spec : Prop :=
  ∀ n, P9337774424569091346.a n = A106035 n

end A106035

/-! ## A106035.P10814762381802152007

`A318930(A184624(n+1))`
-/

namespace A106035.P10814762381802152007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A184624 (n + 1)).toNat

end

end A106035.P10814762381802152007

namespace A106035

/-- `A318930(A184624(n+1))` -/
def P10814762381802152007.Spec : Prop :=
  ∀ n, P10814762381802152007.a n = A106035 n

end A106035

/-! ## A106035.P11607877166360057252

`A318930(A285360(n+1))`
-/

namespace A106035.P11607877166360057252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A285360 (n + 1)).toNat

end

end A106035.P11607877166360057252

namespace A106035

/-- `A318930(A285360(n+1))` -/
def P11607877166360057252.Spec : Prop :=
  ∀ n, P11607877166360057252.a n = A106035 n

end A106035

/-! ## A106035.P12491441156759849017

`A318930(A288998(n+1))`
-/

namespace A106035.P12491441156759849017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318930 (A288998 (n + 1)).toNat

end

end A106035.P12491441156759849017

namespace A106035

/-- `A318930(A288998(n+1))` -/
def P12491441156759849017.Spec : Prop :=
  ∀ n, P12491441156759849017.a n = A106035 n

end A106035

/-! ## A106035.P12150148392659414308

`A006337(A003152(n+1)-A144611(n))`
-/

namespace A106035.P12150148392659414308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A003152 (n + 1) - A144611 n).toNat

end

end A106035.P12150148392659414308

namespace A106035

/-- `A006337(A003152(n+1)-A144611(n))` -/
def P12150148392659414308.Spec : Prop :=
  ∀ n, P12150148392659414308.a n = A106035 n

end A106035

/-! ## A106035.P8888096860397920575

`A279620(A189573(n+1))`
-/

namespace A106035.P8888096860397920575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279620 (A189573 (n + 1)).toNat

end

end A106035.P8888096860397920575

namespace A106035

/-- `A279620(A189573(n+1))` -/
def P8888096860397920575.Spec : Prop :=
  ∀ n, P8888096860397920575.a n = A106035 n

end A106035

/-! ## A106035.P5318484667779809645

`A138330(A049472(A001951(n+1)+n+1))`
-/

namespace A106035.P5318484667779809645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (A049472 (A001951 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A106035.P5318484667779809645

namespace A106035

/-- `A138330(A049472(A001951(n+1)+n+1))` -/
def P5318484667779809645.Spec : Prop :=
  ∀ n, P5318484667779809645.a n = A106035 n

end A106035

/-! ## A106035.P12129316892994792326

`A006337(A001951(A049472(A003151(n+1))))`
-/

namespace A106035.P12129316892994792326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (A001951 (A049472 (A003151 (n + 1)).toNat).toNat).toNat

end

end A106035.P12129316892994792326

namespace A106035

/-- `A006337(A001951(A049472(A003151(n+1))))` -/
def P12129316892994792326.Spec : Prop :=
  ∀ n, P12129316892994792326.a n = A106035 n

end A106035

/-! ## A106035.P11943866685003372878

`A177704(A191405(n))`
-/

namespace A106035.P11943866685003372878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A191405 n).toNat

end

end A106035.P11943866685003372878

namespace A106035

/-- `A177704(A191405(n))` -/
def P11943866685003372878.Spec : Prop :=
  ∀ n, P11943866685003372878.a n = A106035 n

end A106035

/-!
# A106036: Trajectory of 1 under the morphism 1->{1,2}, 2->{1,2,3}, 3->{1,2,3,3}.

The programs for A106036, the canonical program `A106036.P1973716910247846646` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106036 has offset 0).

The definition of A106036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106036.P1973716910247846646

`Δ[A138670(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106036

/-- `Δ[A138670(n)]` -/
def P1973716910247846646.Spec : Prop :=
  ∀ n, P1973716910247846646.a n = A106036 n

theorem P1973716910247846646.correct : P1973716910247846646.Spec := by
  intro n
  simp only [A106036]

end A106036

/-! ## A106036.P3949370739000190974

`Δ[A189636(n+1)]`
-/

namespace A106036.P3949370739000190974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106036.P3949370739000190974

namespace A106036

/-- `Δ[A189636(n+1)]` -/
def P3949370739000190974.Spec : Prop :=
  ∀ n, P3949370739000190974.a n = A106036 n

end A106036

/-! ## A106036.P6619954306100801204

`A138670(n+1)-A138670(n)`
-/

namespace A106036.P6619954306100801204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138670 (n + 1) - A138670 n

end

end A106036.P6619954306100801204

namespace A106036

/-- `A138670(n+1)-A138670(n)` -/
def P6619954306100801204.Spec : Prop :=
  ∀ n, P6619954306100801204.a n = A106036 n

theorem P6619954306100801204.correct : P6619954306100801204.Spec := by
  intro n
  simp only [A106036, Nat.add_sub_cancel, A106036.P6619954306100801204.a, A106036.P1973716910247846646.f1, A106036.P1973716910247846646.a, SequenceMachineLib.memo_apply]

end A106036

/-! ## A106036.P14413927093746550494

`A189636(n+2)-A189636(n+1)`
-/

namespace A106036.P14413927093746550494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189636 (n + 2) - A189636 (n + 1)

end

end A106036.P14413927093746550494

namespace A106036

/-- `A189636(n+2)-A189636(n+1)` -/
def P14413927093746550494.Spec : Prop :=
  ∀ n, P14413927093746550494.a n = A106036 n

end A106036

/-! ## A106036.P16573357146958421566

`Δ[eq[0, A116178(n)]]`
-/

namespace A106036.P16573357146958421566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P16573357146958421566

namespace A106036

/-- `Δ[eq[0, A116178(n)]]` -/
def P16573357146958421566.Spec : Prop :=
  ∀ n, P16573357146958421566.a n = A106036 n

end A106036

/-! ## A106036.P8322887366126248108

`Δ[lt[A308364(n), A308364(n+1)]]`
-/

namespace A106036.P8322887366126248108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P8322887366126248108

namespace A106036

/-- `Δ[lt[A308364(n), A308364(n+1)]]` -/
def P8322887366126248108.Spec : Prop :=
  ∀ n, P8322887366126248108.a n = A106036 n

end A106036

/-! ## A106036.P16228104053732335693

`Δ[record[A026202(n+1)]]`
-/

namespace A106036.P16228104053732335693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106036.P16228104053732335693

namespace A106036

/-- `Δ[record[A026202(n+1)]]` -/
def P16228104053732335693.Spec : Prop :=
  ∀ n, P16228104053732335693.a n = A106036 n

end A106036

/-! ## A106036.P10894277650911702160

`Δ[lt[A061295(n), A061295(n+1)]]`
-/

namespace A106036.P10894277650911702160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061295 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P10894277650911702160

namespace A106036

/-- `Δ[lt[A061295(n), A061295(n+1)]]` -/
def P10894277650911702160.Spec : Prop :=
  ∀ n, P10894277650911702160.a n = A106036 n

end A106036

/-! ## A106036.P16602466599036522914

`Δ[lt[A116178(n), A011655(n+1)]]`
-/

namespace A106036.P16602466599036522914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P16602466599036522914

namespace A106036

/-- `Δ[lt[A116178(n), A011655(n+1)]]` -/
def P16602466599036522914.Spec : Prop :=
  ∀ n, P16602466599036522914.a n = A106036 n

end A106036

/-! ## A106036.P11780842053928703936

`Δ[lt[A338247(n), A338247(n+1)]]`
-/

namespace A106036.P11780842053928703936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P11780842053928703936

namespace A106036

/-- `Δ[lt[A338247(n), A338247(n+1)]]` -/
def P11780842053928703936.Spec : Prop :=
  ∀ n, P11780842053928703936.a n = A106036 n

end A106036

/-! ## A106036.P18088982256399461733

`Δ[lt[A343228(n), A343228(n+1)]]`
-/

namespace A106036.P18088982256399461733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P18088982256399461733

namespace A106036

/-- `Δ[lt[A343228(n), A343228(n+1)]]` -/
def P18088982256399461733.Spec : Prop :=
  ∀ n, P18088982256399461733.a n = A106036 n

end A106036

/-! ## A106036.P5306612085746202833

`Δ[lt[A343231(n), A343231(n+1)]]`
-/

namespace A106036.P5306612085746202833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P5306612085746202833

namespace A106036

/-- `Δ[lt[A343231(n), A343231(n+1)]]` -/
def P5306612085746202833.Spec : Prop :=
  ∀ n, P5306612085746202833.a n = A106036 n

end A106036

/-! ## A106036.P8976097543927792075

`Δ[lt[A062756(2*n), A062756(2*n+1)]]`
-/

namespace A106036.P8976097543927792075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P8976097543927792075

namespace A106036

/-- `Δ[lt[A062756(2*n), A062756(2*n+1)]]` -/
def P8976097543927792075.Spec : Prop :=
  ∀ n, P8976097543927792075.a n = A106036 n

end A106036

/-! ## A106036.P11581770045892253809

`Δ[lt[Δ[n²], A026166(2*n+1)]]`
-/

namespace A106036.P11581770045892253809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026166 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106036.P11581770045892253809

namespace A106036

/-- `Δ[lt[Δ[n²], A026166(2*n+1)]]` -/
def P11581770045892253809.Spec : Prop :=
  ∀ n, P11581770045892253809.a n = A106036 n

end A106036

/-! ## A106036.P930911521812770628

`Δ[record[A026166(A047270(n+1))/4]]`
-/

namespace A106036.P930911521812770628
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026166 (A047270 (n + 1)).toNat : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106036.P930911521812770628

namespace A106036

/-- `Δ[record[A026166(A047270(n+1))/4]]` -/
def P930911521812770628.Spec : Prop :=
  ∀ n, P930911521812770628.a n = (A106036 n : ℚ)

end A106036

/-!
# A106037: Special highly composite numbers: a highly composite number (A002182) that divides all larger highly composite numbers.

The programs for A106037, there is no canonical definition to state claims against.
-/

/-! ## A106037.P8426327086429791201

`lcm(∏[∏{p}[n+1, #]], comp[5*n])`
-/

namespace A106037.P8426327086429791201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∏ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

end

end A106037.P8426327086429791201

/-!
# A106038: Triangle read by rows, based on the morphism f: 1->1231, 2->2112, 3->3113.

The programs for A106038, there is no canonical definition to state claims against.
-/

/-! ## A106038.P15914499624968055823

`or(A001285(n), A010059(A320079(n)))`
-/

namespace A106038.P15914499624968055823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001285 n) (A010059 (A320079 n).toNat)

end

end A106038.P15914499624968055823

/-! ## A106038.P4712117714660645326

`or(A000035(A007089(2*n+3)), A127246(n))`
-/

namespace A106038.P4712117714660645326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A007089 (2 * n + 3)).toNat) (A127246 n)

end

end A106038.P4712117714660645326

/-! ## A106038.P13020537788395338098

`or(A232637(n+1)%4, A000035(A007089(2*n+3)))`
-/

namespace A106038.P13020537788395338098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A232637 (n + 1)) 4) (A000035 (A007089 (2 * n + 3)).toNat)

end

end A106038.P13020537788395338098

/-! ## A106038.P2942019941258530141

`or(A127244(A345918(2*n+5)), A127246(n))`
-/

namespace A106038.P2942019941258530141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127244 (A345918 (2 * n + 5)).toNat) (A127246 n)

end

end A106038.P2942019941258530141

/-! ## A106038.P5801108318470276600

`or(A127246(n), A127253(A091855(n+1)))`
-/

namespace A106038.P5801108318470276600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127246 n) (A127253 (A091855 (n + 1)).toNat)

end

end A106038.P5801108318470276600

/-!
# A106039: Belgian-0 numbers.

The programs for A106039, there is no canonical definition to state claims against.
-/

/-! ## A106039.P12914774424560612421

`eq[0, A257778(n)]`
-/

namespace A106039.P12914774424560612421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106039.P12914774424560612421

/-! ## A106039.P2046134281663892289

`lt[A257778(A028310(n)), 1]`
-/

namespace A106039.P2046134281663892289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A106039.P2046134281663892289

/-! ## A106039.P8673864259106149173

`lt[A257778(n), A057427(A190136(n+1))]`
-/

namespace A106039.P8673864259106149173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A190136 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P8673864259106149173

/-! ## A106039.P18076091874519941409

`lt[A257778(n), A001221(A000040(n+1))]`
-/

namespace A106039.P18076091874519941409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P18076091874519941409

/-! ## A106039.P16686653467404540925

`lt[A257778(n), A057427(A000203(n+1))]`
-/

namespace A106039.P16686653467404540925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P16686653467404540925

/-! ## A106039.P2379061916073198874

`lt[A257778(n), A057427(A106596(n+1))]`
-/

namespace A106039.P2379061916073198874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A106596 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P2379061916073198874

/-! ## A106039.P6296158407707468391

`lt[A257778(n), A057427(A106439(n+1))]`
-/

namespace A106039.P6296158407707468391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A106439 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P6296158407707468391

/-! ## A106039.P6078897263858299865

`lt[A257778(n), A057427(A302389(n+1))]`
-/

namespace A106039.P6078897263858299865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A302389 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P6078897263858299865

/-! ## A106039.P3442600225922748732

`lt[A257778(n), A057427(A320467(n+1))]`
-/

namespace A106039.P3442600225922748732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A320467 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P3442600225922748732

/-! ## A106039.P15457929537957374375

`lt[A257778(n), A057427(A280263(n))]`
-/

namespace A106039.P15457929537957374375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A280263 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106039.P15457929537957374375

/-!
# A106040: First 9-free digit in the fractional part of the decimal expansion of (1/10^n)^(1/10^n).

The programs for A106040, there is no canonical definition to state claims against.
-/

/-! ## A106040.P4303425648244439486

`A106043(A080600(n))`
-/

namespace A106040.P4303425648244439486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106043 (A080600 n).toNat

end

end A106040.P4303425648244439486

/-! ## A106040.P14271898746663960505

`A106043(A043096(3*n+2)-A144596(n²+8))`
-/

namespace A106040.P14271898746663960505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106043 (A043096 (3 * n + 2) - A144596 (n ^ 2 + 8)).toNat

end

end A106040.P14271898746663960505

/-! ## A106040.P1744723945665464344

`A106043(A017089(n)-A195119(A017089(n)))`
-/

namespace A106040.P1744723945665464344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106043 (A017089 n - A195119 (A017089 n).toNat).toNat

end

end A106040.P1744723945665464344

/-! ## A106040.P4887817570095306800

`A106043(A017089(n)%A195119(A017089(n)))`
-/

namespace A106040.P4887817570095306800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106043 (Int.tmod (A017089 n) (A195119 (A017089 n).toNat)).toNat

end

end A106040.P4887817570095306800

/-!
# A106043: First digit other than 9 in the fractional part of the decimal expansion of (1/1000^n)^(1/1000^n).

The programs for A106043, there is no canonical definition to state claims against.
-/

/-! ## A106043.P3067636430190552553

`A106040(A228722(n)+2*n)`
-/

namespace A106043.P3067636430190552553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106040 (A228722 n + (2 * n : ℤ)).toNat

end

end A106043.P3067636430190552553

/-! ## A106043.P11294082470310436792

`A106040(3*n-A144595(n))`
-/

namespace A106043.P11294082470310436792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106040 ((3 * n : ℤ) - A144595 n).toNat

end

end A106043.P11294082470310436792

/-! ## A106043.P10507125087447855278

`A106040(3*n-A144596(n))`
-/

namespace A106043.P10507125087447855278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106040 ((3 * n : ℤ) - A144596 n).toNat

end

end A106043.P10507125087447855278

/-! ## A106043.P10676479626116667579

`A106040(xor(3*n, A144596(n)))`
-/

namespace A106043.P10676479626116667579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106040 (Int.xor (3 * n : ℤ) (A144596 n)).toNat

end

end A106043.P10676479626116667579

/-! ## A106043.P8460052830759080005

`A106040(A228722(n)+n+n)`
-/

namespace A106043.P8460052830759080005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106040 (A228722 n + (n : ℤ) + (n : ℤ)).toNat

end

end A106043.P8460052830759080005

/-!
# A106044: Difference between n-th prime and next larger perfect square.

The programs for A106044, the canonical program `A106044.P18354520358344311336` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106044 has offset 1).

The definition of A106044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106044.P745259831639203243

`A068527(p?[comp[n²]])`
-/

namespace A106044.P745259831639203243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A106044.P745259831639203243

namespace A106044

/-- `A068527(p?[comp[n²]])` -/
def P745259831639203243.Spec : Prop :=
  ∀ n, P745259831639203243.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P18354520358344311336

`A068527(A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106044

/-- `A068527(A000040(n+1))` -/
def P18354520358344311336.Spec : Prop :=
  ∀ n, P18354520358344311336.a n = A106044 (n + 1)

theorem P18354520358344311336.correct : P18354520358344311336.Spec := by
  intro n
  simp only [A106044, Nat.add_sub_cancel]

end A106044

/-! ## A106044.P6916647015697547862

`A253515(A112045(n+1))`
-/

namespace A106044.P6916647015697547862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253515 (A112045 (n + 1)).toNat

end

end A106044.P6916647015697547862

namespace A106044

/-- `A253515(A112045(n+1))` -/
def P6916647015697547862.Spec : Prop :=
  ∀ n, P6916647015697547862.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P17063473760703992126

`A068527(A008578(n+2))`
-/

namespace A106044.P17063473760703992126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A008578 (n + 2)).toNat

end

end A106044.P17063473760703992126

namespace A106044

/-- `A068527(A008578(n+2))` -/
def P17063473760703992126.Spec : Prop :=
  ∀ n, P17063473760703992126.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P6849008370906181808

`A068527(A182986(n+2))`
-/

namespace A106044.P6849008370906181808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A182986 (n + 2)).toNat

end

end A106044.P6849008370906181808

namespace A106044

/-- `A068527(A182986(n+2))` -/
def P6849008370906181808.Spec : Prop :=
  ∀ n, P6849008370906181808.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P17819915737197777094

`A068527(A158611(n+3))`
-/

namespace A106044.P17819915737197777094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A158611 (n + 3)).toNat

end

end A106044.P17819915737197777094

namespace A106044

/-- `A068527(A158611(n+3))` -/
def P17819915737197777094.Spec : Prop :=
  ∀ n, P17819915737197777094.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P10122931521057680744

`A068527(eq[1, A003415(n)])`
-/

namespace A106044.P10122931521057680744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106044.P10122931521057680744

namespace A106044

/-- `A068527(eq[1, A003415(n)])` -/
def P10122931521057680744.Spec : Prop :=
  ∀ n, P10122931521057680744.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P5521061213214639388

`A068527(eq[1, A032741(n)])`
-/

namespace A106044.P5521061213214639388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106044.P5521061213214639388

namespace A106044

/-- `A068527(eq[1, A032741(n)])` -/
def P5521061213214639388.Spec : Prop :=
  ∀ n, P5521061213214639388.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P17948931100835560176

`A068527(eq[1, A302055(n)])`
-/

namespace A106044.P17948931100835560176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106044.P17948931100835560176

namespace A106044

/-- `A068527(eq[1, A302055(n)])` -/
def P17948931100835560176.Spec : Prop :=
  ∀ n, P17948931100835560176.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P17483331572638283635

`A068527(record[A006530(n+2)])`
-/

namespace A106044.P17483331572638283635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106044.P17483331572638283635

namespace A106044

/-- `A068527(record[A006530(n+2)])` -/
def P17483331572638283635.Spec : Prop :=
  ∀ n, P17483331572638283635.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P9106919878727395689

`A078142(record[A006530(n+2)])`
-/

namespace A106044.P9106919878727395689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106044.P9106919878727395689

namespace A106044

/-- `A078142(record[A006530(n+2)])` -/
def P9106919878727395689.Spec : Prop :=
  ∀ n, P9106919878727395689.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P14850946501349717943

`A068527(record[A020639(n+2)])`
-/

namespace A106044.P14850946501349717943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106044.P14850946501349717943

namespace A106044

/-- `A068527(record[A020639(n+2)])` -/
def P14850946501349717943.Spec : Prop :=
  ∀ n, P14850946501349717943.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P1856264768525807024

`A078142(record[A020639(n+2)])`
-/

namespace A106044.P1856264768525807024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106044.P1856264768525807024

namespace A106044

/-- `A078142(record[A020639(n+2)])` -/
def P1856264768525807024.Spec : Prop :=
  ∀ n, P1856264768525807024.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P18020161182522303149

`A068527(record[A126773(n+2)])`
-/

namespace A106044.P18020161182522303149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106044.P18020161182522303149

namespace A106044

/-- `A068527(record[A126773(n+2)])` -/
def P18020161182522303149.Spec : Prop :=
  ∀ n, P18020161182522303149.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P572930631458944315

`A068527(A100484(n+1)/2)`
-/

namespace A106044.P572930631458944315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A106044.P572930631458944315

namespace A106044

/-- `A068527(A100484(n+1)/2)` -/
def P572930631458944315.Spec : Prop :=
  ∀ n, P572930631458944315.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P4368338526066160040

`A068527(eq[1, A001222(n+1)]+1)`
-/

namespace A106044.P4368338526066160040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106044.P4368338526066160040

namespace A106044

/-- `A068527(eq[1, A001222(n+1)]+1)` -/
def P4368338526066160040.Spec : Prop :=
  ∀ n, P4368338526066160040.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P10265528333873880098

`A068527(eq[2, A000005(n+1)]+1)`
-/

namespace A106044.P10265528333873880098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106044.P10265528333873880098

namespace A106044

/-- `A068527(eq[2, A000005(n+1)]+1)` -/
def P10265528333873880098.Spec : Prop :=
  ∀ n, P10265528333873880098.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P6030516995158171532

`A080883(A014689(n+1)+n+1)`
-/

namespace A106044.P6030516995158171532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A014689 (n + 1) + (n + 1 : ℤ)).toNat

end

end A106044.P6030516995158171532

namespace A106044

/-- `A080883(A014689(n+1)+n+1)` -/
def P6030516995158171532.Spec : Prop :=
  ∀ n, P6030516995158171532.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P17098038563449368986

`A145445(n+1)-A000040(n+1)`
-/

namespace A106044.P17098038563449368986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145445 (n + 1) - A000040 (n + 1)

end

end A106044.P17098038563449368986

namespace A106044

/-- `A145445(n+1)-A000040(n+1)` -/
def P17098038563449368986.Spec : Prop :=
  ∀ n, P17098038563449368986.a n = A106044 (n + 1)

end A106044

/-! ## A106044.P1517831697075193055

`A117767(n+1)-A056892(n+1)`
-/

namespace A106044.P1517831697075193055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117767 (n + 1) - A056892 (n + 1)

end

end A106044.P1517831697075193055

namespace A106044

/-- `A117767(n+1)-A056892(n+1)` -/
def P1517831697075193055.Spec : Prop :=
  ∀ n, P1517831697075193055.a n = A106044 (n + 1)

end A106044

/-!
# A106045: For n>=2, a(n) = prime[prime[a(n-1)] + a(n-1)]; a(1)=1.

The programs for A106045, there is no canonical definition to state claims against.
-/

/-! ## A106045.P11530142945552075261

`A065995(a(n-1))` with `a(0)=1`
-/

namespace A106045.P11530142945552075261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065995 (a (n - 1)).toNat

end

end A106045.P11530142945552075261

/-!
# A106046: For n >= 2, a(n) = prime[prime[a(n-1)] - a(n-1)]; a(1)=5.

The programs for A106046, there is no canonical definition to state claims against.
-/

/-! ## A106046.P700050173626809779

`A065994(a(n-1))` with `a(0)=5`
-/

namespace A106046.P700050173626809779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A065994 (a (n - 1)).toNat

end

end A106046.P700050173626809779

/-!
# A106047: For n >= 2, a(n+1)=prime[prime[a(n)]-n]; a(1)=2.

The programs for A106047, there is no canonical definition to state claims against.
-/

/-! ## A106047.P2894232908722879076

`A284696(A000040(a(n-1)))` with `a(0)=2`
-/

namespace A106047.P2894232908722879076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A284696 (A000040 (a (n - 1)).toNat).toNat

end

end A106047.P2894232908722879076

/-! ## A106047.P12075076935212989678

`A000040(A000040(a(n-1))-n)` with `a(0)=2`
-/

namespace A106047.P12075076935212989678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000040 (a (n - 1)).toNat - (n : ℤ)).toNat

end

end A106047.P12075076935212989678

/-!
# A106048: For n >= 2, a(n+1)=prime[a(n)]-n; a(1)=3.

The programs for A106048, there is no canonical definition to state claims against.
-/

/-! ## A106048.P644545173152203700

`A247665(A248387(a(n-1)))-n` with `a(0)=3`
-/

namespace A106048.P644545173152203700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A247665 (A248387 (a (n - 1)).toNat).toNat - (n : ℤ)

end

end A106048.P644545173152203700

/-! ## A106048.P3754303838297284143

`A000040(a(n-1))-n` with `a(0)=3`
-/

namespace A106048.P3754303838297284143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000040 (a (n - 1)).toNat - (n : ℤ)

end

end A106048.P3754303838297284143

/-! ## A106048.P2040677403655284804

`A006005(a(n-1))-n` with `a(0)=3`
-/

namespace A106048.P2040677403655284804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A006005 (a (n - 1)).toNat - (n : ℤ)

end

end A106048.P2040677403655284804

/-! ## A106048.P17018434576462294060

`A171577(a(n-1))-n` with `a(0)=3`
-/

namespace A106048.P17018434576462294060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A171577 (a (n - 1)).toNat - (n : ℤ)

end

end A106048.P17018434576462294060

/-! ## A106048.P6514107095150293320

`A259277(a(n-1))-n` with `a(0)=3`
-/

namespace A106048.P6514107095150293320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A259277 (a (n - 1)).toNat - (n : ℤ)

end

end A106048.P6514107095150293320

/-!
# A106049: Triangle read by rows, based on the morphism f: 1->212, 2->3, 3->434, 4->1.

The programs for A106049, there is no canonical definition to state claims against.
-/

/-! ## A106049.P3277153731763818889

`A152672(3*n+1)%4+1`
-/

namespace A106049.P3277153731763818889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152672 (3 * n + 1)) 4 + 1

end

end A106049.P3277153731763818889

/-!
# A106050: Column two-from-center of triangle A059317.

The programs for A106050, there is no canonical definition to state claims against.
-/

/-! ## A106050.P10465459802129476015

`A283655(A149299(n))`
-/

namespace A106050.P10465459802129476015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283655 (A149299 n).toNat

end

end A106050.P10465459802129476015

/-! ## A106050.P1846223250453190009

`A230747(A319787(n))`
-/

namespace A106050.P1846223250453190009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230747 (A319787 n).toNat

end

end A106050.P1846223250453190009

/-! ## A106050.P5116339805376374747

`A280830(A303237(n+1))`
-/

namespace A106050.P5116339805376374747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280830 (A303237 (n + 1)).toNat

end

end A106050.P5116339805376374747

/-! ## A106050.P648870440901366406

`A165927(A000108(n))+A056879(n+1)`
-/

namespace A106050.P648870440901366406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (A000108 n).toNat + A056879 (n + 1)

end

end A106050.P648870440901366406

/-!
# A106053: Next-to-central column of triangle in A059317.

The programs for A106053, there is no canonical definition to state claims against.
-/

/-! ## A106053.P4604835777269609934

`A059317(A002061(n))%A000108(n)`
-/

namespace A106053.P4604835777269609934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059317 (A002061 n).toNat) (A000108 n)

end

end A106053.P4604835777269609934

/-! ## A106053.P12663718421456658169

`char[A029656(n+1)]*A059317(A002061(n))`
-/

namespace A106053.P12663718421456658169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A059317 (A002061 n).toNat

end

end A106053.P12663718421456658169

/-! ## A106053.P10229494238523978008

`char[A108872(n+1)]*A059317(A002061(n))`
-/

namespace A106053.P10229494238523978008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A059317 (A002061 n).toNat

end

end A106053.P10229494238523978008

/-! ## A106053.P16294128122857544297

`A159075(A008619(n))+A059317(A002061(n))`
-/

namespace A106053.P16294128122857544297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (A008619 n).toNat + A059317 (A002061 n).toNat

end

end A106053.P16294128122857544297

/-! ## A106053.P12938863223893606995

`A004197(A000124(n))*A059317(A002061(n))`
-/

namespace A106053.P12938863223893606995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A000124 n).toNat * A059317 (A002061 n).toNat

end

end A106053.P12938863223893606995

/-! ## A106053.P11496801556063563655

`A059317(∑[A004275(n)])%n!`
-/

namespace A106053.P11496801556063563655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (Nat.factorial n : ℤ)

end

end A106053.P11496801556063563655

/-!
# A106055: Fixed point of the morphism 1 -> 21212, 2 -> 3, 3 -> 43434, 4 -> 1, applied 4*k times to 1.

The programs for A106055, there is no canonical definition to state claims against.
-/

/-! ## A106055.P10025675837705088979

`A205398(gcd(A065239(n), A372555(3*(n+1))))`
-/

namespace A106055.P10025675837705088979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205398 (Int.gcd (A065239 n) (A372555 (3 * (n + 1))))

end

end A106055.P10025675837705088979

/-! ## A106055.P1662129176579226607

`A231475(n^a(n-1))` with `a(0)=1`
-/

namespace A106055.P1662129176579226607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A231475 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A106055.P1662129176579226607

/-! ## A106055.P2667228538309815948

`A040963(A247155(n))`
-/

namespace A106055.P2667228538309815948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040963 (A247155 n).toNat

end

end A106055.P2667228538309815948

/-! ## A106055.P3002998243738102758

`A204816(A051876(n+1))`
-/

namespace A106055.P3002998243738102758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204816 (A051876 (n + 1)).toNat

end

end A106055.P3002998243738102758

/-!
# A106057: Primes p such that 1*p + 4 and 4*p + 1 are primes.

The programs for A106057, there is no canonical definition to state claims against.
-/

/-! ## A106057.P3194542918749232224

`∩[A015913(n+1), A023212(n+1)]`
-/

namespace A106057.P3194542918749232224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P3194542918749232224

/-! ## A106057.P7453764141230731591

`∩[A023212(n+1), A172238(n+1)]`
-/

namespace A106057.P7453764141230731591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P7453764141230731591

/-! ## A106057.P12420081766779231190

`∩[A023212(n+1), A056772(n+1)]`
-/

namespace A106057.P12420081766779231190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P12420081766779231190

/-! ## A106057.P3894088935280508351

`p?[A120226(n+1)]`
-/

namespace A106057.P3894088935280508351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106057.P3894088935280508351

/-! ## A106057.P8856971068060478869

`∩[A015913(n+1), A120226(n+1)]`
-/

namespace A106057.P8856971068060478869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P8856971068060478869

/-! ## A106057.P2072095063045945629

`∩[A023212(n+1), A120226(n+1)]`
-/

namespace A106057.P2072095063045945629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P2072095063045945629

/-! ## A106057.P3633400297194425182

`∩[A056772(n+1), A120226(n+1)]`
-/

namespace A106057.P3633400297194425182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P3633400297194425182

/-! ## A106057.P8503819225467926224

`∩[A120226(n+1), A172238(n+1)]`
-/

namespace A106057.P8503819225467926224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P8503819225467926224

/-! ## A106057.P3460920053540952390

`∩[A117112(n+1), A120226(n+1)]`
-/

namespace A106057.P3460920053540952390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P3460920053540952390

/-! ## A106057.P3827012546209849544

`∩[A061771(n+1), A120226(n+1)]`
-/

namespace A106057.P3827012546209849544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P3827012546209849544

/-! ## A106057.P6677515166623232707

`p?[record[A120226(A133310(n))]]`
-/

namespace A106057.P6677515166623232707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106057.P6677515166623232707

/-! ## A106057.P6081447097494834198

`∩[A120226(n+1), A124590(n+1)]`
-/

namespace A106057.P6081447097494834198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P6081447097494834198

/-! ## A106057.P11624847754262135895

`∩[A007645(n+1), A120226(n+1)]`
-/

namespace A106057.P11624847754262135895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P11624847754262135895

/-! ## A106057.P16151006445028630414

`∩[A045331(n+1), A120226(n+1)]`
-/

namespace A106057.P16151006445028630414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P16151006445028630414

/-! ## A106057.P12657462921493540830

`∩[A120226(n+1), A279815(n+1)]`
-/

namespace A106057.P12657462921493540830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P12657462921493540830

/-! ## A106057.P13807336227939344748

`∩[A040116(n+1), A120226(n+1)]`
-/

namespace A106057.P13807336227939344748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P13807336227939344748

/-! ## A106057.P16221535861788408475

`∩[A042991(n+1), A120226(n+1)]`
-/

namespace A106057.P16221535861788408475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P16221535861788408475

/-! ## A106057.P2019258379580727209

`∩[A049557(n+1), A120226(n+1)]`
-/

namespace A106057.P2019258379580727209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P2019258379580727209

/-! ## A106057.P2899931347390224302

`∩[A040159(n+1), A120226(n+1)]`
-/

namespace A106057.P2899931347390224302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P2899931347390224302

/-! ## A106057.P4979063858475519290

`∩[A040161(n+1), A120226(n+1)]`
-/

namespace A106057.P4979063858475519290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106057.P4979063858475519290

/-!
# A106058: 4th diagonal of triangle in A059317.

The programs for A106058, the canonical program `A106058.P4484071664683161475` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106058 has offset 0).

The definition of A106058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106058.P4484071664683161475

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=9, a(5)=22`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106058

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4484071664683161475.Spec : Prop :=
  ∀ n, P4484071664683161475.a n = A106058 n

theorem P4484071664683161475.correct : P4484071664683161475.Spec := by
  intro n
  simp only [A106058]

end A106058

/-! ## A106058.P7504200332064200547

`∑[∑[a(n-1)+1]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=5`
-/

namespace A106058.P7504200332064200547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 2, 5] fun n f2 =>
  f2 (n - 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106058.P7504200332064200547

namespace A106058

/-- `∑[∑[a(n-1)+1]]` -/
def P7504200332064200547.Spec : Prop :=
  ∀ n, (P7504200332064200547.a n : ℤ) = A106058 n

end A106058

/-! ## A106058.P7441614437971194221

`∑[n]-∑[a(n-1)-n]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A106058.P7441614437971194221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 1] fun n f2 =>
  f2 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A106058.P7441614437971194221

namespace A106058

/-- `∑[n]-∑[a(n-1)-n]` -/
def P7441614437971194221.Spec : Prop :=
  ∀ n, P7441614437971194221.a n = A106058 n

end A106058

/-! ## A106058.P3583964111538257478

`1-a(n-2)+2*a(n-1)+n` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A106058.P3583964111538257478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  1 - a (n - 2) + (2 * a (n - 1) + (n : ℤ))

end

end A106058.P3583964111538257478

namespace A106058

/-- `1-a(n-2)+2*a(n-1)+n` -/
def P3583964111538257478.Spec : Prop :=
  ∀ n, P3583964111538257478.a n = A106058 n

end A106058

/-! ## A106058.P8220826214675024971

`1-(a(n-2)-2*a(n-1)-n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A106058.P8220826214675024971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  1 - (a (n - 2) - 2 * a (n - 1) - (n : ℤ))

end

end A106058.P8220826214675024971

namespace A106058

/-- `1-(a(n-2)-2*a(n-1)-n)` -/
def P8220826214675024971.Spec : Prop :=
  ∀ n, P8220826214675024971.a n = A106058 n

end A106058

/-! ## A106058.P8710040727218188099

`A116721(n+1)-A135042(n)`
-/

namespace A106058.P8710040727218188099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) - A135042 n

end

end A106058.P8710040727218188099

namespace A106058

/-- `A116721(n+1)-A135042(n)` -/
def P8710040727218188099.Spec : Prop :=
  ∀ n, P8710040727218188099.a n = A106058 n

end A106058

/-! ## A106058.P16481731701024810860

`∑[(∑[n+1]-8)%n!]`
-/

namespace A106058.P16481731701024810860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 8) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106058.P16481731701024810860

namespace A106058

/-- `∑[(∑[n+1]-8)%n!]` -/
def P16481731701024810860.Spec : Prop :=
  ∀ n, P16481731701024810860.a n = A106058 n

end A106058

/-!
# A106059: Primes p such that p + 6 and 6*p + 1 are primes.

The programs for A106059, the canonical program `A106059.P17377686189513014264` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106059 has offset 1).

The definition of A106059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106059.P11871101760921902622

`∩[A007693(n+1), A023201(n+1)]`
-/

namespace A106059.P11871101760921902622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P11871101760921902622

namespace A106059

/-- `∩[A007693(n+1), A023201(n+1)]` -/
def P11871101760921902622.Spec : Prop :=
  ∀ n, (P11871101760921902622.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P1742308577576150458

`∩[A007693(n+1), A015914(n+1)]`
-/

namespace A106059.P1742308577576150458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P1742308577576150458

namespace A106059

/-- `∩[A007693(n+1), A015914(n+1)]` -/
def P1742308577576150458.Spec : Prop :=
  ∀ n, (P1742308577576150458.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P17377686189513014264

`p?[A120222(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106059

/-- `p?[A120222(n+1)]` -/
def P17377686189513014264.Spec : Prop :=
  ∀ n, P17377686189513014264.a n = A106059 (n + 1)

theorem P17377686189513014264.correct : P17377686189513014264.Spec := by
  intro n
  simp only [A106059, Nat.add_sub_cancel]

end A106059

/-! ## A106059.P5581301784691167329

`∩[A007693(n+1), A120222(n+1)]`
-/

namespace A106059.P5581301784691167329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P5581301784691167329

namespace A106059

/-- `∩[A007693(n+1), A120222(n+1)]` -/
def P5581301784691167329.Spec : Prop :=
  ∀ n, (P5581301784691167329.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P6344776239217408313

`∩[A015914(n+1), A120222(n+1)]`
-/

namespace A106059.P6344776239217408313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P6344776239217408313

namespace A106059

/-- `∩[A015914(n+1), A120222(n+1)]` -/
def P6344776239217408313.Spec : Prop :=
  ∀ n, (P6344776239217408313.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P3491484200607460755

`∩[A023201(n+1), A120222(n+1)]`
-/

namespace A106059.P3491484200607460755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P3491484200607460755

namespace A106059

/-- `∩[A023201(n+1), A120222(n+1)]` -/
def P3491484200607460755.Spec : Prop :=
  ∀ n, (P3491484200607460755.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P17360796589663157747

`∩[A120222(n+1), A124590(n+1)]`
-/

namespace A106059.P17360796589663157747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P17360796589663157747

namespace A106059

/-- `∩[A120222(n+1), A124590(n+1)]` -/
def P17360796589663157747.Spec : Prop :=
  ∀ n, (P17360796589663157747.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P7017994546800217154

`∩[A120222(n+1), A136207(n+1)]`
-/

namespace A106059.P7017994546800217154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P7017994546800217154

namespace A106059

/-- `∩[A120222(n+1), A136207(n+1)]` -/
def P7017994546800217154.Spec : Prop :=
  ∀ n, (P7017994546800217154.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P12805405174922152921

`∩[A042986(n+1), A120222(n+1)]`
-/

namespace A106059.P12805405174922152921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P12805405174922152921

namespace A106059

/-- `∩[A042986(n+1), A120222(n+1)]` -/
def P12805405174922152921.Spec : Prop :=
  ∀ n, (P12805405174922152921.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P7558096885414884091

`∩[A120222(n+1), A216882(n+1)]`
-/

namespace A106059.P7558096885414884091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P7558096885414884091

namespace A106059

/-- `∩[A120222(n+1), A216882(n+1)]` -/
def P7558096885414884091.Spec : Prop :=
  ∀ n, (P7558096885414884091.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P15837330949451800180

`∩[A042966(n+1), A120222(n+1)]`
-/

namespace A106059.P15837330949451800180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P15837330949451800180

namespace A106059

/-- `∩[A042966(n+1), A120222(n+1)]` -/
def P15837330949451800180.Spec : Prop :=
  ∀ n, (P15837330949451800180.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P5469942794320858712

`∩[A007693(n+1), A086304(n+1)]`
-/

namespace A106059.P5469942794320858712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P5469942794320858712

namespace A106059

/-- `∩[A007693(n+1), A086304(n+1)]` -/
def P5469942794320858712.Spec : Prop :=
  ∀ n, (P5469942794320858712.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P14747300378375902659

`∩[A000040(n+1), A120222(n+1)]`
-/

namespace A106059.P14747300378375902659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P14747300378375902659

namespace A106059

/-- `∩[A000040(n+1), A120222(n+1)]` -/
def P14747300378375902659.Spec : Prop :=
  ∀ n, (P14747300378375902659.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P3725561974577880163

`∩[A007693(n+1), A118538(n+1)]`
-/

namespace A106059.P3725561974577880163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P3725561974577880163

namespace A106059

/-- `∩[A007693(n+1), A118538(n+1)]` -/
def P3725561974577880163.Spec : Prop :=
  ∀ n, (P3725561974577880163.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P14912726700984615331

`∩[A045344(n+1), A120222(n+1)]`
-/

namespace A106059.P14912726700984615331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P14912726700984615331

namespace A106059

/-- `∩[A045344(n+1), A120222(n+1)]` -/
def P14912726700984615331.Spec : Prop :=
  ∀ n, (P14912726700984615331.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P7796138790604253192

`∩[A051948(n+1), A120222(n+1)]`
-/

namespace A106059.P7796138790604253192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P7796138790604253192

namespace A106059

/-- `∩[A051948(n+1), A120222(n+1)]` -/
def P7796138790604253192.Spec : Prop :=
  ∀ n, (P7796138790604253192.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P3419613076133622393

`∩[A065091(n+1), A120222(n+1)]`
-/

namespace A106059.P3419613076133622393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P3419613076133622393

namespace A106059

/-- `∩[A065091(n+1), A120222(n+1)]` -/
def P3419613076133622393.Spec : Prop :=
  ∀ n, (P3419613076133622393.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P1766487220339595704

`∩[A083249(n+1), A120222(n+1)]`
-/

namespace A106059.P1766487220339595704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P1766487220339595704

namespace A106059

/-- `∩[A083249(n+1), A120222(n+1)]` -/
def P1766487220339595704.Spec : Prop :=
  ∀ n, (P1766487220339595704.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P4635489046310738991

`∩[A120222(n+1), A161346(n+1)]`
-/

namespace A106059.P4635489046310738991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P4635489046310738991

namespace A106059

/-- `∩[A120222(n+1), A161346(n+1)]` -/
def P4635489046310738991.Spec : Prop :=
  ∀ n, (P4635489046310738991.a n : ℤ) = A106059 (n + 1)

end A106059

/-! ## A106059.P261549836023556932

`∩[A120222(n+1), A182986(n+1)]`
-/

namespace A106059.P261549836023556932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106059.P261549836023556932

namespace A106059

/-- `∩[A120222(n+1), A182986(n+1)]` -/
def P261549836023556932.Spec : Prop :=
  ∀ n, (P261549836023556932.a n : ℤ) = A106059 (n + 1)

end A106059

/-!
# A106060: Primes p such that 1*p + 8 and 8*p + 1 are primes.

The programs for A106060, the canonical program `A106060.P15162970793732190485` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106060 has offset 1).

The definition of A106060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106060.P15162970793732190485

`∩[A015915(n+1), A023228(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106060

/-- `∩[A015915(n+1), A023228(n+1)]` -/
def P15162970793732190485.Spec : Prop :=
  ∀ n, (P15162970793732190485.a n : ℤ) = A106060 (n + 1)

theorem P15162970793732190485.correct : P15162970793732190485.Spec := by
  intro n
  simp only [A106060, Nat.add_sub_cancel]

end A106060

/-! ## A106060.P2236252295189830410

`∩[A023202(n+1), A023228(n+1)]`
-/

namespace A106060.P2236252295189830410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P2236252295189830410

namespace A106060

/-- `∩[A023202(n+1), A023228(n+1)]` -/
def P2236252295189830410.Spec : Prop :=
  ∀ n, (P2236252295189830410.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P4628409761017648139

`∩[A023228(n+1), A262085(n+1)]`
-/

namespace A106060.P4628409761017648139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P4628409761017648139

namespace A106060

/-- `∩[A023228(n+1), A262085(n+1)]` -/
def P4628409761017648139.Spec : Prop :=
  ∀ n, (P4628409761017648139.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P16218600195398967166

`p?[A120228(n+1)]`
-/

namespace A106060.P16218600195398967166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106060.P16218600195398967166

namespace A106060

/-- `p?[A120228(n+1)]` -/
def P16218600195398967166.Spec : Prop :=
  ∀ n, P16218600195398967166.a n = A106060 (n + 1)

end A106060

/-! ## A106060.P881649026988045183

`∩[A015915(n+1), A120228(n+1)]`
-/

namespace A106060.P881649026988045183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P881649026988045183

namespace A106060

/-- `∩[A015915(n+1), A120228(n+1)]` -/
def P881649026988045183.Spec : Prop :=
  ∀ n, (P881649026988045183.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P4093566297738659635

`∩[A023202(n+1), A120228(n+1)]`
-/

namespace A106060.P4093566297738659635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P4093566297738659635

namespace A106060

/-- `∩[A023202(n+1), A120228(n+1)]` -/
def P4093566297738659635.Spec : Prop :=
  ∀ n, (P4093566297738659635.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P4284759413244217202

`∩[A023228(n+1), A120228(n+1)]`
-/

namespace A106060.P4284759413244217202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P4284759413244217202

namespace A106060

/-- `∩[A023228(n+1), A120228(n+1)]` -/
def P4284759413244217202.Spec : Prop :=
  ∀ n, (P4284759413244217202.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P5517259669005026509

`∩[A120228(n+1), A262085(n+1)]`
-/

namespace A106060.P5517259669005026509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P5517259669005026509

namespace A106060

/-- `∩[A120228(n+1), A262085(n+1)]` -/
def P5517259669005026509.Spec : Prop :=
  ∀ n, (P5517259669005026509.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P12791224027922003064

`∩[A120228(n+1), A141785(n+1)]`
-/

namespace A106060.P12791224027922003064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P12791224027922003064

namespace A106060

/-- `∩[A120228(n+1), A141785(n+1)]` -/
def P12791224027922003064.Spec : Prop :=
  ∀ n, (P12791224027922003064.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P15235466820722425951

`∩[A120228(n+1), A228424(n+1)]`
-/

namespace A106060.P15235466820722425951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P15235466820722425951

namespace A106060

/-- `∩[A120228(n+1), A228424(n+1)]` -/
def P15235466820722425951.Spec : Prop :=
  ∀ n, (P15235466820722425951.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P16810075981606436246

`∩[A040998(n+1), A120228(n+1)]`
-/

namespace A106060.P16810075981606436246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P16810075981606436246

namespace A106060

/-- `∩[A040998(n+1), A120228(n+1)]` -/
def P16810075981606436246.Spec : Prop :=
  ∀ n, (P16810075981606436246.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P6429691226195295439

`∩[A038872(n+1), A120228(n+1)]`
-/

namespace A106060.P6429691226195295439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P6429691226195295439

namespace A106060

/-- `∩[A038872(n+1), A120228(n+1)]` -/
def P6429691226195295439.Spec : Prop :=
  ∀ n, (P6429691226195295439.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P12121221378350048057

`∩[A003627(n+1), A120228(n+1)]`
-/

namespace A106060.P12121221378350048057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P12121221378350048057

namespace A106060

/-- `∩[A003627(n+1), A120228(n+1)]` -/
def P12121221378350048057.Spec : Prop :=
  ∀ n, (P12121221378350048057.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P3758432185339915210

`∩[A007528(n+1), A120228(n+1)]`
-/

namespace A106060.P3758432185339915210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P3758432185339915210

namespace A106060

/-- `∩[A007528(n+1), A120228(n+1)]` -/
def P3758432185339915210.Spec : Prop :=
  ∀ n, (P3758432185339915210.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P3583483271829782176

`∩[A045309(n+1), A120228(n+1)]`
-/

namespace A106060.P3583483271829782176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P3583483271829782176

namespace A106060

/-- `∩[A045309(n+1), A120228(n+1)]` -/
def P3583483271829782176.Spec : Prop :=
  ∀ n, (P3583483271829782176.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P14929706565848548933

`∩[A045410(n+1), A120228(n+1)]`
-/

namespace A106060.P14929706565848548933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P14929706565848548933

namespace A106060

/-- `∩[A045410(n+1), A120228(n+1)]` -/
def P14929706565848548933.Spec : Prop :=
  ∀ n, (P14929706565848548933.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P1982651451219716784

`∩[A056955(n+1), A120228(n+1)]`
-/

namespace A106060.P1982651451219716784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P1982651451219716784

namespace A106060

/-- `∩[A056955(n+1), A120228(n+1)]` -/
def P1982651451219716784.Spec : Prop :=
  ∀ n, (P1982651451219716784.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P15755584134217163691

`∩[A120228(n+1), A155916(n+1)]`
-/

namespace A106060.P15755584134217163691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P15755584134217163691

namespace A106060

/-- `∩[A120228(n+1), A155916(n+1)]` -/
def P15755584134217163691.Spec : Prop :=
  ∀ n, (P15755584134217163691.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P16197475217559939841

`∩[A049596(n+1), A120228(n+1)]`
-/

namespace A106060.P16197475217559939841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P16197475217559939841

namespace A106060

/-- `∩[A049596(n+1), A120228(n+1)]` -/
def P16197475217559939841.Spec : Prop :=
  ∀ n, (P16197475217559939841.a n : ℤ) = A106060 (n + 1)

end A106060

/-! ## A106060.P5246403155115621460

`∩[A120228(n+1), A164319(n+1)]`
-/

namespace A106060.P5246403155115621460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106060.P5246403155115621460

namespace A106060

/-- `∩[A120228(n+1), A164319(n+1)]` -/
def P5246403155115621460.Spec : Prop :=
  ∀ n, (P5246403155115621460.a n : ℤ) = A106060 (n + 1)

end A106060

/-!
# A106061: Primes p such that 1*p + 10 and 10*p + 1 are primes.

The programs for A106061, there is no canonical definition to state claims against.
-/

/-! ## A106061.P12414526452966902842

`∩[A015916(n+1), A023237(n+1)]`
-/

namespace A106061.P12414526452966902842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P12414526452966902842

/-! ## A106061.P17137856024076641397

`∩[A023237(n+1), A262086(n+1)]`
-/

namespace A106061.P17137856024076641397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P17137856024076641397

/-! ## A106061.P9527803543521849400

`∩[A015916(n+1), A089374(n+1)]`
-/

namespace A106061.P9527803543521849400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P9527803543521849400

/-! ## A106061.P10071495633930961119

`∩[A089374(n+1), A262086(n+1)]`
-/

namespace A106061.P10071495633930961119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P10071495633930961119

/-! ## A106061.P2646842023645783406

`∩[A023237(n+1), A172407(n+1)]`
-/

namespace A106061.P2646842023645783406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P2646842023645783406

/-! ## A106061.P14318846638309301331

`∩[A015916(n+1), A024912(n+1)]`
-/

namespace A106061.P14318846638309301331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P14318846638309301331

/-! ## A106061.P5512476378230712416

`∩[A015916(n+1), A166458(n+1)]`
-/

namespace A106061.P5512476378230712416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P5512476378230712416

/-! ## A106061.P7433377442741895232

`∩[A024912(n+1), A262086(n+1)]`
-/

namespace A106061.P7433377442741895232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106061.P7433377442741895232

/-!
# A106062: Primes p such that 1*p + 12 and 12*p + 1 are primes.

The programs for A106062, the canonical program `A106062.P4524901779774754399` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106062 has offset 1).

The definition of A106062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1813 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106062.P4524901779774754399

`∩[A046133(n+1), A075704(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106062

/-- `∩[A046133(n+1), A075704(n)]` -/
def P4524901779774754399.Spec : Prop :=
  ∀ n, (P4524901779774754399.a n : ℤ) = A106062 (n + 1)

theorem P4524901779774754399.correct : P4524901779774754399.Spec := by
  intro n
  simp only [A106062, Nat.add_sub_cancel]

end A106062

/-! ## A106062.P7581333674199965347

`∩[A015917(n+1), A075704(n)]`
-/

namespace A106062.P7581333674199965347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106062.P7581333674199965347

namespace A106062

/-- `∩[A015917(n+1), A075704(n)]` -/
def P7581333674199965347.Spec : Prop :=
  ∀ n, (P7581333674199965347.a n : ℤ) = A106062 (n + 1)

end A106062

/-! ## A106062.P6833108414817723043

`∩[A056775(n+1), A075704(n)]`
-/

namespace A106062.P6833108414817723043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106062.P6833108414817723043

namespace A106062

/-- `∩[A056775(n+1), A075704(n)]` -/
def P6833108414817723043.Spec : Prop :=
  ∀ n, (P6833108414817723043.a n : ℤ) = A106062 (n + 1)

end A106062

/-! ## A106062.P5560252762870964976

`∩[A046133(n+1), A110801(n+1)]`
-/

namespace A106062.P5560252762870964976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106062.P5560252762870964976

namespace A106062

/-- `∩[A046133(n+1), A110801(n+1)]` -/
def P5560252762870964976.Spec : Prop :=
  ∀ n, (P5560252762870964976.a n : ℤ) = A106062 (n + 1)

end A106062

/-! ## A106062.P9108726805802548781

`A023454(p?[A075704(n)+12])`
-/

namespace A106062.P9108726805802548781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075704 n + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023454 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A106062.P9108726805802548781

namespace A106062

/-- `A023454(p?[A075704(n)+12])` -/
def P9108726805802548781.Spec : Prop :=
  ∀ n, P9108726805802548781.a n = A106062 (n + 1)

end A106062

/-!
# A106063: Primes p such that 1*p + 14 and 14*p + 1 are primes.

The programs for A106063, there is no canonical definition to state claims against.
-/

/-! ## A106063.P4090436489465205432

`record[A020639((n+3)*(8*n+1))]`
-/

namespace A106063.P4090436489465205432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 3) * (8 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106063.P4090436489465205432

/-! ## A106063.P13508678732149796865

`filter[A153417(n+1), A245837(#)]`
-/

namespace A106063.P13508678732149796865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245837 (f1 j).toNat = 1) n)

end

end A106063.P13508678732149796865

/-! ## A106063.P5195763549334757230

`filter[A140446(2*n+1), A245837(#)]`
-/

namespace A106063.P5195763549334757230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140446 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245837 (f1 j).toNat = 1) n)

end

end A106063.P5195763549334757230

/-!
# A106064: Primes p such that 1*p + 16 and 16*p + 1 are primes.

The programs for A106064, there is no canonical definition to state claims against.
-/

/-! ## A106064.P16689665092020765315

`∩[A049488(n+1), A155943(n+1)]`
-/

namespace A106064.P16689665092020765315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106064.P16689665092020765315

/-! ## A106064.P15595580253176805439

`∩[A049488(n+1), A155942(n+1)]`
-/

namespace A106064.P15595580253176805439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106064.P15595580253176805439

/-! ## A106064.P13412204589921881111

`∩[A272815(2*n+1), A155942(n+2)]`
-/

namespace A106064.P13412204589921881111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272815 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106064.P13412204589921881111

/-! ## A106064.P17767748121585953713

`∩[p?[A040976(n+1)-14], A155942(n+1)]`
-/

namespace A106064.P17767748121585953713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 14

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A106064.P17767748121585953713

/-! ## A106064.P3038539057203212222

`∩[p?[A000040(n+1)-16], A155942(n+1)]`
-/

namespace A106064.P3038539057203212222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 16

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A106064.P3038539057203212222

/-!
# A106065: Primes p such that 1*p+18 and 18*p+1 are primes.

The programs for A106065, there is no canonical definition to state claims against.
-/

/-! ## A106065.P2596001026065950713

`∩[A153418(n+1), A165810(n+1)]`
-/

namespace A106065.P2596001026065950713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106065.P2596001026065950713

/-! ## A106065.P10248534730569416497

`∩[A087678(n+1)-9, A165810(n+1)]`
-/

namespace A106065.P10248534730569416497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087678 (n + 1) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106065.P10248534730569416497

/-! ## A106065.P9847294630108282197

`∩[2*A088769(n+1)-9, A165810(n+1)]`
-/

namespace A106065.P9847294630108282197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088769 (n + 1) - 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106065.P9847294630108282197

/-! ## A106065.P12491405163492590687

`∩[A111094(n+1), A153418(n+1)]`
-/

namespace A106065.P12491405163492590687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106065.P12491405163492590687

/-! ## A106065.P11183357583120716365

`∩[A156328(2*n+1), A165810(n+2)]`
-/

namespace A106065.P11183357583120716365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156328 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165810 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106065.P11183357583120716365

/-!
# A106066: Primes p such that 1*p+20 and 20*p+1 are primes.

The programs for A106066, there is no canonical definition to state claims against.
-/

/-! ## A106066.P9114268154399440245

`∩[A124204(n+1), A153419(n+1)]`
-/

namespace A106066.P9114268154399440245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106066.P9114268154399440245

/-! ## A106066.P13787429446695821762

`p?[∪[A124158(n+1), A124204(n+5)]]`
-/

namespace A106066.P13787429446695821762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124158 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124204 (n + 5)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106066.P13787429446695821762

/-! ## A106066.P10946781542540486055

`∩[A124204(n+1), A130090(n+1)]`
-/

namespace A106066.P10946781542540486055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106066.P10946781542540486055

/-! ## A106066.P4737721107863724707

`p?[A124204(n+3)%A124197(n)]`
-/

namespace A106066.P4737721107863724707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124204 (n + 3)) (A124197 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106066.P4737721107863724707

/-! ## A106066.P2258214401266958670

`∩[A124204(n+1), A179522(n+1)]`
-/

namespace A106066.P2258214401266958670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106066.P2258214401266958670

/-!
# A106067: Primes p such that 3*p + 2 and 2*p + 3 are primes.

The programs for A106067, there is no canonical definition to state claims against.
-/

/-! ## A106067.P1980200155882004963

`∩[A023204(n+1), A023208(n+1)]`
-/

namespace A106067.P1980200155882004963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106067.P1980200155882004963

/-! ## A106067.P10261810453992358922

`∩[A023204(n+1), A024893(n+1)]`
-/

namespace A106067.P10261810453992358922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106067.P10261810453992358922

/-! ## A106067.P16909229493873909430

`∩[A023208(n+1), A067076(n+1)]`
-/

namespace A106067.P16909229493873909430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106067.P16909229493873909430

/-! ## A106067.P531892432239484932

`∩[A005097(n+1)-1, A023208(n+1)]`
-/

namespace A106067.P531892432239484932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106067.P531892432239484932

/-! ## A106067.P15638638715270261896

`p?[A087370(n+1)-A101264(A087370(n+1))]`
-/

namespace A106067.P15638638715270261896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - A101264 (A087370 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106067.P15638638715270261896

/-! ## A106067.P14967216434139895402

`p?[A024893(n+1)*A101264(A087370(n+1))]`
-/

namespace A106067.P14967216434139895402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) * A101264 (A087370 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106067.P14967216434139895402

/-! ## A106067.P12597743857171716340

`filter[A023204(n+2), A075743(#)]`
-/

namespace A106067.P12597743857171716340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075743 (f1 j).toNat = 1) n)

end

end A106067.P12597743857171716340

/-! ## A106067.P9534654774342054600

`p?[eq[A348971(3*n+2), A348981(2*n+3)]]`
-/

namespace A106067.P9534654774342054600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348981 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106067.P9534654774342054600

/-! ## A106067.P5778328923629036114

`p?[A285982(A016825(n))-A167020(n+1)]`
-/

namespace A106067.P5778328923629036114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (A016825 n).toNat - A167020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106067.P5778328923629036114

/-! ## A106067.P11343133485644849570

`p?[A036288(3*n+2)-A056240(2*n+3)]`
-/

namespace A106067.P11343133485644849570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (3 * n + 2) - A056240 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106067.P11343133485644849570

/-!
# A106068: Primes p such that 3p + 4 and 4p + 3 are primes.

The programs for A106068, the canonical program `A106068.P13422155209439487144` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106068 has offset 1).

The definition of A106068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106068.P577695193110352911

`∩[A023209(n+1), A023213(n+1)]`
-/

namespace A106068.P577695193110352911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P577695193110352911

namespace A106068

/-- `∩[A023209(n+1), A023213(n+1)]` -/
def P577695193110352911.Spec : Prop :=
  ∀ n, (P577695193110352911.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P13422155209439487144

`p?[A124855(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A106068

/-- `p?[A124855(n+1)]` -/
def P13422155209439487144.Spec : Prop :=
  ∀ n, P13422155209439487144.a n = A106068 (n + 1)

theorem P13422155209439487144.correct : P13422155209439487144.Spec := by
  intro n
  simp only [A106068, Nat.add_sub_cancel]

end A106068

/-! ## A106068.P12077785880056014398

`p?[record[A124855(A323889(n))]]`
-/

namespace A106068.P12077785880056014398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106068.P12077785880056014398

namespace A106068

/-- `p?[record[A124855(A323889(n))]]` -/
def P12077785880056014398.Spec : Prop :=
  ∀ n, P12077785880056014398.a n = A106068 (n + 1)

end A106068

/-! ## A106068.P5261486021221390639

`∩[A023209(n+1), A124855(n+1)]`
-/

namespace A106068.P5261486021221390639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023209 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P5261486021221390639

namespace A106068

/-- `∩[A023209(n+1), A124855(n+1)]` -/
def P5261486021221390639.Spec : Prop :=
  ∀ n, (P5261486021221390639.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P17772717919067460099

`∩[A023213(n+1), A124855(n+1)]`
-/

namespace A106068.P17772717919067460099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P17772717919067460099

namespace A106068

/-- `∩[A023213(n+1), A124855(n+1)]` -/
def P17772717919067460099.Spec : Prop :=
  ∀ n, (P17772717919067460099.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P8035457703185592523

`∩[A038872(n+1), A124855(n+1)]`
-/

namespace A106068.P8035457703185592523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P8035457703185592523

namespace A106068

/-- `∩[A038872(n+1), A124855(n+1)]` -/
def P8035457703185592523.Spec : Prop :=
  ∀ n, (P8035457703185592523.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P4821717635208105860

`p?[record[A124855(A117910(n))]]`
-/

namespace A106068.P4821717635208105860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106068.P4821717635208105860

namespace A106068

/-- `p?[record[A124855(A117910(n))]]` -/
def P4821717635208105860.Spec : Prop :=
  ∀ n, P4821717635208105860.a n = A106068 (n + 1)

end A106068

/-! ## A106068.P12486317650529989023

`∩[A045348(n+1), A124855(n+1)]`
-/

namespace A106068.P12486317650529989023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P12486317650529989023

namespace A106068

/-- `∩[A045348(n+1), A124855(n+1)]` -/
def P12486317650529989023.Spec : Prop :=
  ∀ n, (P12486317650529989023.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P15256342236198590900

`∩[A045405(n+1), A124855(n+1)]`
-/

namespace A106068.P15256342236198590900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P15256342236198590900

namespace A106068

/-- `∩[A045405(n+1), A124855(n+1)]` -/
def P15256342236198590900.Spec : Prop :=
  ∀ n, (P15256342236198590900.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P6155500854627020824

`∩[A124855(n+1), A230359(n+1)]`
-/

namespace A106068.P6155500854627020824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P6155500854627020824

namespace A106068

/-- `∩[A124855(n+1), A230359(n+1)]` -/
def P6155500854627020824.Spec : Prop :=
  ∀ n, (P6155500854627020824.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P6493496314398597108

`∩[A124855(n+1), A132143(n+1)]`
-/

namespace A106068.P6493496314398597108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P6493496314398597108

namespace A106068

/-- `∩[A124855(n+1), A132143(n+1)]` -/
def P6493496314398597108.Spec : Prop :=
  ∀ n, (P6493496314398597108.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P4926762391481284643

`∩[A042997(n+1), A124855(n+1)]`
-/

namespace A106068.P4926762391481284643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P4926762391481284643

namespace A106068

/-- `∩[A042997(n+1), A124855(n+1)]` -/
def P4926762391481284643.Spec : Prop :=
  ∀ n, (P4926762391481284643.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P18243997274717088431

`∩[A124855(n+1), A216882(n+1)]`
-/

namespace A106068.P18243997274717088431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P18243997274717088431

namespace A106068

/-- `∩[A124855(n+1), A216882(n+1)]` -/
def P18243997274717088431.Spec : Prop :=
  ∀ n, (P18243997274717088431.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P5421068071264994454

`∩[A124855(n+1), A216881(n+1)]`
-/

namespace A106068.P5421068071264994454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P5421068071264994454

namespace A106068

/-- `∩[A124855(n+1), A216881(n+1)]` -/
def P5421068071264994454.Spec : Prop :=
  ∀ n, (P5421068071264994454.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P9127525075245913514

`∩[A042966(n+1), A124855(n+1)]`
-/

namespace A106068.P9127525075245913514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P9127525075245913514

namespace A106068

/-- `∩[A042966(n+1), A124855(n+1)]` -/
def P9127525075245913514.Spec : Prop :=
  ∀ n, (P9127525075245913514.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P18064549698575499683

`∩[A000040(n+1), A124855(n+1)]`
-/

namespace A106068.P18064549698575499683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P18064549698575499683

namespace A106068

/-- `∩[A000040(n+1), A124855(n+1)]` -/
def P18064549698575499683.Spec : Prop :=
  ∀ n, (P18064549698575499683.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P17215021738842102201

`∩[A045344(n+1), A124855(n+1)]`
-/

namespace A106068.P17215021738842102201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P17215021738842102201

namespace A106068

/-- `∩[A045344(n+1), A124855(n+1)]` -/
def P17215021738842102201.Spec : Prop :=
  ∀ n, (P17215021738842102201.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P14354025916067455597

`∩[A051948(n+1), A124855(n+1)]`
-/

namespace A106068.P14354025916067455597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P14354025916067455597

namespace A106068

/-- `∩[A051948(n+1), A124855(n+1)]` -/
def P14354025916067455597.Spec : Prop :=
  ∀ n, (P14354025916067455597.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P14647144719649837528

`∩[A053813(n+1), A124855(n+1)]`
-/

namespace A106068.P14647144719649837528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P14647144719649837528

namespace A106068

/-- `∩[A053813(n+1), A124855(n+1)]` -/
def P14647144719649837528.Spec : Prop :=
  ∀ n, (P14647144719649837528.a n : ℤ) = A106068 (n + 1)

end A106068

/-! ## A106068.P15074220619443770136

`∩[A065091(n+1), A124855(n+1)]`
-/

namespace A106068.P15074220619443770136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106068.P15074220619443770136

namespace A106068

/-- `∩[A065091(n+1), A124855(n+1)]` -/
def P15074220619443770136.Spec : Prop :=
  ∀ n, (P15074220619443770136.a n : ℤ) = A106068 (n + 1)

end A106068

/-!
# A106069: Primes p such that 3*p + 8 and 8*p + 3 are primes.

The programs for A106069, the canonical program `A106069.P16981114974258630937` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106069 has offset 1).

The definition of A106069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106069.P16981114974258630937

`∩[A023210(n+1), A023229(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106069

/-- `∩[A023210(n+1), A023229(n+1)]` -/
def P16981114974258630937.Spec : Prop :=
  ∀ n, (P16981114974258630937.a n : ℤ) = A106069 (n + 1)

theorem P16981114974258630937.correct : P16981114974258630937.Spec := by
  intro n
  simp only [A106069, Nat.add_sub_cancel]

end A106069

/-! ## A106069.P8256140315648561607

`∩[A005124(n+1), A023210(n+1)]`
-/

namespace A106069.P8256140315648561607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106069.P8256140315648561607

namespace A106069

/-- `∩[A005124(n+1), A023210(n+1)]` -/
def P8256140315648561607.Spec : Prop :=
  ∀ n, (P8256140315648561607.a n : ℤ) = A106069 (n + 1)

end A106069

/-! ## A106069.P17160994494078871436

`p?[eq[A010051(8*n+3), A069249(3*n+8)]]`
-/

namespace A106069.P17160994494078871436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (8 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069249 (3 * n + 8)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106069.P17160994494078871436

namespace A106069

/-- `p?[eq[A010051(8*n+3), A069249(3*n+8)]]` -/
def P17160994494078871436.Spec : Prop :=
  ∀ n, (P17160994494078871436.a n : ℤ) = A106069 (n + 1)

end A106069

/-! ## A106069.P10730084223253426792

`∩[A023210(n+1), A210449(n+1)]`
-/

namespace A106069.P10730084223253426792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106069.P10730084223253426792

namespace A106069

/-- `∩[A023210(n+1), A210449(n+1)]` -/
def P10730084223253426792.Spec : Prop :=
  ∀ n, (P10730084223253426792.a n : ℤ) = A106069 (n + 1)

end A106069

/-! ## A106069.P13982952501961448669

`filter[A023229(n+2), A273592(#)]`
-/

namespace A106069.P13982952501961448669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A273592 (f1 j).toNat = 1) n)

end

end A106069.P13982952501961448669

namespace A106069

/-- `filter[A023229(n+2), A273592(#)]` -/
def P13982952501961448669.Spec : Prop :=
  ∀ n, P13982952501961448669.a n = A106069 (n + 1)

end A106069

/-!
# A106070: Primes p such that 3*p + 10 and 10*p + 3 are primes.

The programs for A106070, there is no canonical definition to state claims against.
-/

/-! ## A106070.P14316421227567031538

`∩[A023211(n+1), A023238(n+1)]`
-/

namespace A106070.P14316421227567031538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106070.P14316421227567031538

/-! ## A106070.P2209312798382527177

`∩[A023211(n+1), A102338(n+1)]`
-/

namespace A106070.P2209312798382527177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106070.P2209312798382527177

/-! ## A106070.P5991934087340486113

`A123318(A294492(n+2))`
-/

namespace A106070.P5991934087340486113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A294492 (n + 2)).toNat

end

end A106070.P5991934087340486113

/-! ## A106070.P5600074293129249677

`record[A037126(A135548(n+1))]`
-/

namespace A106070.P5600074293129249677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (A135548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106070.P5600074293129249677

/-! ## A106070.P4731751150993084247

`eq[A010892(A293113(n)), A237420(n)]`
-/

namespace A106070.P4731751150993084247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A293113 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106070.P4731751150993084247

/-!
# A106071: Primes p such that 3*p + 14 and 14*p + 3 are primes.

The programs for A106071, there is no canonical definition to state claims against.
-/

/-! ## A106071.P12501394545120668034

`A038872(lt[A014781(n+5), A137564(2*n+1)])`
-/

namespace A106071.P12501394545120668034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014781 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106071.P12501394545120668034

/-! ## A106071.P7460170346529251226

`∩[A038611(n+1), A266728(n)]`
-/

namespace A106071.P7460170346529251226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106071.P7460170346529251226

/-! ## A106071.P5861148507537956677

`∩[A122546(n+1), A275068(n)]`
-/

namespace A106071.P5861148507537956677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106071.P5861148507537956677

/-! ## A106071.P6965584103464015118

`∩[A386321(n+1), A266728(n)]`
-/

namespace A106071.P6965584103464015118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266728 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106071.P6965584103464015118

/-! ## A106071.P14367549570236324694

`p?[A136711(n)*A341783(n+1)]`
-/

namespace A106071.P14367549570236324694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136711 n * A341783 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106071.P14367549570236324694

/-!
# A106072: Primes p such that 3*p + 16 and 16*p + 3 are primes.

The programs for A106072, there is no canonical definition to state claims against.
-/

/-! ## A106072.P16715731198932722320

`∩[A038872(n+1), A191890(n+1)]`
-/

namespace A106072.P16715731198932722320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106072.P16715731198932722320

/-! ## A106072.P8673396493936723925

`∩[A193584(n+1), A272723(n+1)]`
-/

namespace A106072.P8673396493936723925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106072.P8673396493936723925

/-! ## A106072.P17982718521884525701

`A275068(lt[A260138(2*(n+2)), A189977(2*n+1)])`
-/

namespace A106072.P17982718521884525701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260138 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189977 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275068 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106072.P17982718521884525701

/-!
# A106074: Primes p such that 3*p + 22 and 22*p + 3 are primes.

The programs for A106074, there is no canonical definition to state claims against.
-/

/-! ## A106074.P11860859531362797453

`p?[n*A007376(A082040(n))]`
-/

namespace A106074.P11860859531362797453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007376 (A082040 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106074.P11860859531362797453

/-! ## A106074.P18295465256751104540

`eq[A003415(n), A007376(A082040(n))]`
-/

namespace A106074.P18295465256751104540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A082040 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106074.P18295465256751104540

/-!
# A106075: Primes p such that 3*p + 26 and 26*p + 3 are primes.

The programs for A106075, there is no canonical definition to state claims against.
-/

/-! ## A106075.P210530071933784114

`A001097(eq[4, round(lcm(2, n+3)/6)])`
-/

namespace A106075.P210530071933784114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 3) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106075.P210530071933784114

/-!
# A106076: Primes p such that 3*p + 28 and 28*p + 3 are primes.

The programs for A106076, there is no canonical definition to state claims against.
-/

/-! ## A106076.P8371059739550696867

`A045344(floor(A328825(3*(n+1))/A007310(n+5))+1)`
-/

namespace A106076.P8371059739550696867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (⌊(A328825 (3 * (n + 1)) : ℚ) / (A007310 (n + 5) : ℚ)⌋ + 1).toNat

end

end A106076.P8371059739550696867

/-!
# A106077: Primes p such that 5*p + 2 and 2*p + 5 are primes.

The programs for A106077, the canonical program `A106077.P8883552310742186102` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106077 has offset 1).

The definition of A106077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106077.P8883552310742186102

`∩[A023205(n+1), A023217(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106077

/-- `∩[A023205(n+1), A023217(n+1)]` -/
def P8883552310742186102.Spec : Prop :=
  ∀ n, (P8883552310742186102.a n : ℤ) = A106077 (n + 1)

theorem P8883552310742186102.correct : P8883552310742186102.Spec := by
  intro n
  simp only [A106077, Nat.add_sub_cancel]

end A106077

/-! ## A106077.P14903142252222037640

`p?[A107771(n+1)]`
-/

namespace A106077.P14903142252222037640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106077.P14903142252222037640

namespace A106077

/-- `p?[A107771(n+1)]` -/
def P14903142252222037640.Spec : Prop :=
  ∀ n, P14903142252222037640.a n = A106077 (n + 1)

end A106077

/-! ## A106077.P4711013329652708901

`∩[A023205(n+1), A107771(n+1)]`
-/

namespace A106077.P4711013329652708901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P4711013329652708901

namespace A106077

/-- `∩[A023205(n+1), A107771(n+1)]` -/
def P4711013329652708901.Spec : Prop :=
  ∀ n, (P4711013329652708901.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P1560310611844358350

`∩[A023217(n+1), A107771(n+1)]`
-/

namespace A106077.P1560310611844358350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P1560310611844358350

namespace A106077

/-- `∩[A023217(n+1), A107771(n+1)]` -/
def P1560310611844358350.Spec : Prop :=
  ∀ n, (P1560310611844358350.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P4046306309516584195

`∩[A007645(n+1), A107771(n+1)]`
-/

namespace A106077.P4046306309516584195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P4046306309516584195

namespace A106077

/-- `∩[A007645(n+1), A107771(n+1)]` -/
def P4046306309516584195.Spec : Prop :=
  ∀ n, (P4046306309516584195.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P14697030117741171908

`∩[A045331(n+1), A107771(n+1)]`
-/

namespace A106077.P14697030117741171908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P14697030117741171908

namespace A106077

/-- `∩[A045331(n+1), A107771(n+1)]` -/
def P14697030117741171908.Spec : Prop :=
  ∀ n, (P14697030117741171908.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P14784543387386298226

`∩[A107771(n+1), A279815(n+1)]`
-/

namespace A106077.P14784543387386298226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P14784543387386298226

namespace A106077

/-- `∩[A107771(n+1), A279815(n+1)]` -/
def P14784543387386298226.Spec : Prop :=
  ∀ n, (P14784543387386298226.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P16507437615057792363

`p?[record[A107771(A052938(n))]]`
-/

namespace A106077.P16507437615057792363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106077.P16507437615057792363

namespace A106077

/-- `p?[record[A107771(A052938(n))]]` -/
def P16507437615057792363.Spec : Prop :=
  ∀ n, P16507437615057792363.a n = A106077 (n + 1)

end A106077

/-! ## A106077.P2317160462847594273

`∩[A040116(n+1), A107771(n+1)]`
-/

namespace A106077.P2317160462847594273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P2317160462847594273

namespace A106077

/-- `∩[A040116(n+1), A107771(n+1)]` -/
def P2317160462847594273.Spec : Prop :=
  ∀ n, (P2317160462847594273.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P10638026913303438725

`∩[A107771(n+1), A325143(n+1)]`
-/

namespace A106077.P10638026913303438725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P10638026913303438725

namespace A106077

/-- `∩[A107771(n+1), A325143(n+1)]` -/
def P10638026913303438725.Spec : Prop :=
  ∀ n, (P10638026913303438725.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P16072442221879820372

`∩[A080191(n+1), A107771(n+1)]`
-/

namespace A106077.P16072442221879820372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P16072442221879820372

namespace A106077

/-- `∩[A080191(n+1), A107771(n+1)]` -/
def P16072442221879820372.Spec : Prop :=
  ∀ n, (P16072442221879820372.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P16875487067794862358

`∩[A107771(n+1), A216882(n+1)]`
-/

namespace A106077.P16875487067794862358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P16875487067794862358

namespace A106077

/-- `∩[A107771(n+1), A216882(n+1)]` -/
def P16875487067794862358.Spec : Prop :=
  ∀ n, (P16875487067794862358.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P14969388045231835016

`∩[A042966(n+1), A107771(n+1)]`
-/

namespace A106077.P14969388045231835016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P14969388045231835016

namespace A106077

/-- `∩[A042966(n+1), A107771(n+1)]` -/
def P14969388045231835016.Spec : Prop :=
  ∀ n, (P14969388045231835016.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P1221727656444623691

`∩[A107771(n+1), A216881(n+1)]`
-/

namespace A106077.P1221727656444623691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P1221727656444623691

namespace A106077

/-- `∩[A107771(n+1), A216881(n+1)]` -/
def P1221727656444623691.Spec : Prop :=
  ∀ n, (P1221727656444623691.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P1743862500187276881

`∩[A023217(n+1), A141544(n+1)]`
-/

namespace A106077.P1743862500187276881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P1743862500187276881

namespace A106077

/-- `∩[A023217(n+1), A141544(n+1)]` -/
def P1743862500187276881.Spec : Prop :=
  ∀ n, (P1743862500187276881.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P6525273402113083215

`∩[A000040(n+1), A107771(n+1)]`
-/

namespace A106077.P6525273402113083215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P6525273402113083215

namespace A106077

/-- `∩[A000040(n+1), A107771(n+1)]` -/
def P6525273402113083215.Spec : Prop :=
  ∀ n, (P6525273402113083215.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P3392119839399112397

`∩[A004139(n+1), A107771(n+1)]`
-/

namespace A106077.P3392119839399112397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P3392119839399112397

namespace A106077

/-- `∩[A004139(n+1), A107771(n+1)]` -/
def P3392119839399112397.Spec : Prop :=
  ∀ n, (P3392119839399112397.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P9464256452300761833

`∩[A045319(n+1), A107771(n+1)]`
-/

namespace A106077.P9464256452300761833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P9464256452300761833

namespace A106077

/-- `∩[A045319(n+1), A107771(n+1)]` -/
def P9464256452300761833.Spec : Prop :=
  ∀ n, (P9464256452300761833.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P8013739241512740332

`∩[A051948(n+1), A107771(n+1)]`
-/

namespace A106077.P8013739241512740332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P8013739241512740332

namespace A106077

/-- `∩[A051948(n+1), A107771(n+1)]` -/
def P8013739241512740332.Spec : Prop :=
  ∀ n, (P8013739241512740332.a n : ℤ) = A106077 (n + 1)

end A106077

/-! ## A106077.P8532218934527109348

`∩[A053813(n+1), A107771(n+1)]`
-/

namespace A106077.P8532218934527109348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106077.P8532218934527109348

namespace A106077

/-- `∩[A053813(n+1), A107771(n+1)]` -/
def P8532218934527109348.Spec : Prop :=
  ∀ n, (P8532218934527109348.a n : ℤ) = A106077 (n + 1)

end A106077

/-!
# A106078: Primes p such that 5*p+4 and 4*p+5 are primes.

The programs for A106078, the canonical program `A106078.P16388488065149343356` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106078 has offset 1).

The definition of A106078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106078.P16388488065149343356

`∩[A023214(n+1), A023218(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106078

/-- `∩[A023214(n+1), A023218(n+1)]` -/
def P16388488065149343356.Spec : Prop :=
  ∀ n, (P16388488065149343356.a n : ℤ) = A106078 (n + 1)

theorem P16388488065149343356.correct : P16388488065149343356.Spec := by
  intro n
  simp only [A106078, Nat.add_sub_cancel]

end A106078

/-! ## A106078.P12768563813043120142

`∩[A023214(n+1), A024897(n+1)]`
-/

namespace A106078.P12768563813043120142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106078.P12768563813043120142

namespace A106078

/-- `∩[A023214(n+1), A024897(n+1)]` -/
def P12768563813043120142.Spec : Prop :=
  ∀ n, (P12768563813043120142.a n : ℤ) = A106078 (n + 1)

end A106078

/-! ## A106078.P2609473634701656751

`∩[A023218(n+1), A111215(n+1)]`
-/

namespace A106078.P2609473634701656751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106078.P2609473634701656751

namespace A106078

/-- `∩[A023218(n+1), A111215(n+1)]` -/
def P2609473634701656751.Spec : Prop :=
  ∀ n, (P2609473634701656751.a n : ℤ) = A106078 (n + 1)

end A106078

/-!
# A106079: Primes p such that 5*p + 6 and 6*p + 5 are primes.

The programs for A106079, the canonical program `A106079.P250417658828765197` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106079 has offset 1).

The definition of A106079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106079.P250417658828765197

`∩[A023219(n+1), A023221(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106079

/-- `∩[A023219(n+1), A023221(n+1)]` -/
def P250417658828765197.Spec : Prop :=
  ∀ n, (P250417658828765197.a n : ℤ) = A106079 (n + 1)

theorem P250417658828765197.correct : P250417658828765197.Spec := by
  intro n
  simp only [A106079, Nat.add_sub_cancel]

end A106079

/-! ## A106079.P13132856154886056174

`∩[A023221(n+1), A081759(n+1)]`
-/

namespace A106079.P13132856154886056174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106079.P13132856154886056174

namespace A106079

/-- `∩[A023221(n+1), A081759(n+1)]` -/
def P13132856154886056174.Spec : Prop :=
  ∀ n, (P13132856154886056174.a n : ℤ) = A106079 (n + 1)

end A106079

/-! ## A106079.P386511307245620042

`∩[A023219(n+1), A059325(n+1)]`
-/

namespace A106079.P386511307245620042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106079.P386511307245620042

namespace A106079

/-- `∩[A023219(n+1), A059325(n+1)]` -/
def P386511307245620042.Spec : Prop :=
  ∀ n, (P386511307245620042.a n : ℤ) = A106079 (n + 1)

end A106079

/-! ## A106079.P4816885684179747152

`p?[A024894(n+1)-A167020(A024894(n+1))]`
-/

namespace A106079.P4816885684179747152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - A167020 (A024894 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106079.P4816885684179747152

namespace A106079

/-- `p?[A024894(n+1)-A167020(A024894(n+1))]` -/
def P4816885684179747152.Spec : Prop :=
  ∀ n, P4816885684179747152.a n = A106079 (n + 1)

end A106079

/-! ## A106079.P16701750980968302194

`p?[A081759(n+1)*A167020(A024894(n+1))]`
-/

namespace A106079.P16701750980968302194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1) * A167020 (A024894 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106079.P16701750980968302194

namespace A106079

/-- `p?[A081759(n+1)*A167020(A024894(n+1))]` -/
def P16701750980968302194.Spec : Prop :=
  ∀ n, P16701750980968302194.a n = A106079 (n + 1)

end A106079

/-!
# A106080: Primes p such that 5*p+8 and 8*p+5 are primes.

The programs for A106080, the canonical program `A106080.P13440203208369835731` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106080 has offset 1).

The definition of A106080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106080.P13440203208369835731

`∩[A023220(n+1), A023230(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106080

/-- `∩[A023220(n+1), A023230(n+1)]` -/
def P13440203208369835731.Spec : Prop :=
  ∀ n, (P13440203208369835731.a n : ℤ) = A106080 (n + 1)

theorem P13440203208369835731.correct : P13440203208369835731.Spec := by
  intro n
  simp only [A106080, Nat.add_sub_cancel]

end A106080

/-! ## A106080.P9637967636987422016

`∩[A023230(n+1), A111225(n+1)]`
-/

namespace A106080.P9637967636987422016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106080.P9637967636987422016

namespace A106080

/-- `∩[A023230(n+1), A111225(n+1)]` -/
def P9637967636987422016.Spec : Prop :=
  ∀ n, (P9637967636987422016.a n : ℤ) = A106080 (n + 1)

end A106080

/-! ## A106080.P6813148350266555873

`∩[A023220(n+1), A105133(n+1)]`
-/

namespace A106080.P6813148350266555873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106080.P6813148350266555873

namespace A106080

/-- `∩[A023220(n+1), A105133(n+1)]` -/
def P6813148350266555873.Spec : Prop :=
  ∀ n, (P6813148350266555873.a n : ℤ) = A106080 (n + 1)

end A106080

/-! ## A106080.P11187413075526165138

`p?[∩[A105133(n+1), A111225(n+1)]]`
-/

namespace A106080.P11187413075526165138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106080.P11187413075526165138

namespace A106080

/-- `p?[∩[A105133(n+1), A111225(n+1)]]` -/
def P11187413075526165138.Spec : Prop :=
  ∀ n, (P11187413075526165138.a n : ℤ) = A106080 (n + 1)

end A106080

/-! ## A106080.P6710664276245390175

`∩[eq[2, A000005(5*n+8)], A023230(n+1)]`
-/

namespace A106080.P6710664276245390175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 8)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A106080.P6710664276245390175

namespace A106080

/-- `∩[eq[2, A000005(5*n+8)], A023230(n+1)]` -/
def P6710664276245390175.Spec : Prop :=
  ∀ n, (P6710664276245390175.a n : ℤ) = A106080 (n + 1)

end A106080

/-!
# A106081: Primes p such that 5*p + 12 and 12*p + 5 are both primes.

The programs for A106081, there is no canonical definition to state claims against.
-/

/-! ## A106081.P7321148284135779775

`∪[A342194(A342160(n+2)), A342174(n+2)]`
-/

namespace A106081.P7321148284135779775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342194 (A342160 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342174 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106081.P7321148284135779775

/-! ## A106081.P3085957684142505461

`record[A006530(A178853(n+1)+6)]`
-/

namespace A106081.P3085957684142505461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178853 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106081.P3085957684142505461

/-! ## A106081.P5892172286658014287

`record[A020639(A178853(n+1)+6)]`
-/

namespace A106081.P5892172286658014287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A178853 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106081.P5892172286658014287

/-!
# A106082: Primes p such that 5*p+14 and 14*p+5 are primes.

The programs for A106082, there is no canonical definition to state claims against.
-/

/-! ## A106082.P1804465664263663157

`p?[A171101(record[A163511(n)])]`
-/

namespace A106082.P1804465664263663157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171101 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106082.P1804465664263663157

/-! ## A106082.P11115099070141316745

`p?[A171101(record[A319075(n)])]`
-/

namespace A106082.P11115099070141316745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319075 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171101 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106082.P11115099070141316745

/-!
# A106083: Primes p such that 5*p + 16 and 16*p + 5 are primes.

The programs for A106083, there is no canonical definition to state claims against.
-/

/-! ## A106083.P7886503831055084349

`∩[A258039(n+1), A342744(n+1)]`
-/

namespace A106083.P7886503831055084349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106083.P7886503831055084349

/-! ## A106083.P1862598887113508220

`∩[A158318(n+1), A342740(n+1)]`
-/

namespace A106083.P1862598887113508220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106083.P1862598887113508220

/-! ## A106083.P1330342745188933581

`p?[A352827(n+1)+A091379(n+1)]`
-/

namespace A106083.P1330342745188933581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352827 (n + 1) + A091379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106083.P1330342745188933581

/-! ## A106083.P8534467835273880565

`A062284(lt[A348843(n+2), A081493(2*n+1)])`
-/

namespace A106083.P8534467835273880565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348843 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062284 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106083.P8534467835273880565

/-!
# A106084: Primes p such that 5*p + 18 and 18*p + 5 are primes.

The programs for A106084, there is no canonical definition to state claims against.
-/

/-! ## A106084.P15624530690088256920

`∩[A092195(n+1), A190206(n+1)]`
-/

namespace A106084.P15624530690088256920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106084.P15624530690088256920

/-! ## A106084.P2812400231601286558

`∩[A140661(n+1), A147603(n+1)]`
-/

namespace A106084.P2812400231601286558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106084.P2812400231601286558

/-! ## A106084.P7775575567668456232

`A000040(lt[A328171(n+1), A178819(3*n+4)])`
-/

namespace A106084.P7775575567668456232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178819 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106084.P7775575567668456232

/-!
# A106085: Primes p such that 5*p + 22 and 22*p + 5 are primes.

The programs for A106085, there is no canonical definition to state claims against.
-/

/-! ## A106085.P12278755682142624068

`A249374(A270890(n+2)^A320955(3*n+4))`
-/

namespace A106085.P12278755682142624068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249374 (SequenceMachineLib.roundAway ((A270890 (n + 2) : ℚ) ^ (A320955 (3 * n + 4) : ℤ))).toNat

end

end A106085.P12278755682142624068

/-!
# A106086: Primes p such that 7*p + 2 and 2*p + 7 are primes.

The programs for A106086, the canonical program `A106086.P12121000121007339975` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106086 has offset 1).

The definition of A106086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2061 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106086.P12121000121007339975

`∩[A023206(n+1), A023223(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106086

/-- `∩[A023206(n+1), A023223(n+1)]` -/
def P12121000121007339975.Spec : Prop :=
  ∀ n, (P12121000121007339975.a n : ℤ) = A106086 (n + 1)

theorem P12121000121007339975.correct : P12121000121007339975.Spec := by
  intro n
  simp only [A106086, Nat.add_sub_cancel]

end A106086

/-! ## A106086.P11963289943882168804

`∩[A023206(n+1), A105772(n+1)]`
-/

namespace A106086.P11963289943882168804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106086.P11963289943882168804

namespace A106086

/-- `∩[A023206(n+1), A105772(n+1)]` -/
def P11963289943882168804.Spec : Prop :=
  ∀ n, (P11963289943882168804.a n : ℤ) = A106086 (n + 1)

end A106086

/-! ## A106086.P1919158300071442313

`∩[A023223(n+1), A105760(n+1)]`
-/

namespace A106086.P1919158300071442313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106086.P1919158300071442313

namespace A106086

/-- `∩[A023223(n+1), A105760(n+1)]` -/
def P1919158300071442313.Spec : Prop :=
  ∀ n, (P1919158300071442313.a n : ℤ) = A106086 (n + 1)

end A106086

/-! ## A106086.P10943625412867219271

`∩[A023223(n+1), A161720(n+3)]`
-/

namespace A106086.P10943625412867219271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106086.P10943625412867219271

namespace A106086

/-- `∩[A023223(n+1), A161720(n+3)]` -/
def P10943625412867219271.Spec : Prop :=
  ∀ n, (P10943625412867219271.a n : ℤ) = A106086 (n + 1)

end A106086

/-! ## A106086.P5226808453707380536

`p?[∩[A105760(n+1), A105772(n+1)]]`
-/

namespace A106086.P5226808453707380536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106086.P5226808453707380536

namespace A106086

/-- `p?[∩[A105760(n+1), A105772(n+1)]]` -/
def P5226808453707380536.Spec : Prop :=
  ∀ n, (P5226808453707380536.a n : ℤ) = A106086 (n + 1)

end A106086

/-!
# A106087: Primes p such that 7*p+4 and 4*p+7 are primes.

The programs for A106087, the canonical program `A106087.P13902758896492303522` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106087 has offset 1).

The definition of A106087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106087.P13902758896492303522

`∩[A023215(n+1), A023224(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106087

/-- `∩[A023215(n+1), A023224(n+1)]` -/
def P13902758896492303522.Spec : Prop :=
  ∀ n, (P13902758896492303522.a n : ℤ) = A106087 (n + 1)

theorem P13902758896492303522.correct : P13902758896492303522.Spec := by
  intro n
  simp only [A106087, Nat.add_sub_cancel]

end A106087

/-! ## A106087.P14988226367422248291

`∩[A023215(n+1), A024902(n+1)]`
-/

namespace A106087.P14988226367422248291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106087.P14988226367422248291

namespace A106087

/-- `∩[A023215(n+1), A024902(n+1)]` -/
def P14988226367422248291.Spec : Prop :=
  ∀ n, (P14988226367422248291.a n : ℤ) = A106087 (n + 1)

end A106087

/-! ## A106087.P3141472691195389597

`∩[A023224(n+1), A089986(n+1)]`
-/

namespace A106087.P3141472691195389597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106087.P3141472691195389597

namespace A106087

/-- `∩[A023224(n+1), A089986(n+1)]` -/
def P3141472691195389597.Spec : Prop :=
  ∀ n, (P3141472691195389597.a n : ℤ) = A106087 (n + 1)

end A106087

/-!
# A106088: Primes p such that 7*p + 6 and 6*p + 7 are primes.

The programs for A106088, the canonical program `A106088.P8246779572440490493` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106088 has offset 1).

The definition of A106088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106088.P8246779572440490493

`∩[A023222(n+1), A023225(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A106088

/-- `∩[A023222(n+1), A023225(n+1)]` -/
def P8246779572440490493.Spec : Prop :=
  ∀ n, (P8246779572440490493.a n : ℤ) = A106088 (n + 1)

theorem P8246779572440490493.correct : P8246779572440490493.Spec := by
  intro n
  simp only [A106088, Nat.add_sub_cancel]

end A106088

/-! ## A106088.P6207139879935957388

`∩[A023222(n+1), A024900(n+1)]`
-/

namespace A106088.P6207139879935957388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106088.P6207139879935957388

namespace A106088

/-- `∩[A023222(n+1), A024900(n+1)]` -/
def P6207139879935957388.Spec : Prop :=
  ∀ n, (P6207139879935957388.a n : ℤ) = A106088 (n + 1)

end A106088

/-! ## A106088.P12357663634481129874

`∩[A023225(n+1), A153218(n+1)]`
-/

namespace A106088.P12357663634481129874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106088.P12357663634481129874

namespace A106088

/-- `∩[A023225(n+1), A153218(n+1)]` -/
def P12357663634481129874.Spec : Prop :=
  ∀ n, (P12357663634481129874.a n : ℤ) = A106088 (n + 1)

end A106088

/-!
# A106089: Primes p such that 7*p + 8 and 8*p + 7 are primes.

The programs for A106089, the canonical program `A106089.P9950603822401867982` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106089 has offset 1).

The definition of A106089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106089.P9950603822401867982

`∩[A023226(n+1), A023231(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106089

/-- `∩[A023226(n+1), A023231(n+1)]` -/
def P9950603822401867982.Spec : Prop :=
  ∀ n, (P9950603822401867982.a n : ℤ) = A106089 (n + 1)

theorem P9950603822401867982.correct : P9950603822401867982.Spec := by
  intro n
  simp only [A106089, Nat.add_sub_cancel]

end A106089

/-! ## A106089.P6997633262531560061

`∩[A023231(n+1), A111249(n+1)]`
-/

namespace A106089.P6997633262531560061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106089.P6997633262531560061

namespace A106089

/-- `∩[A023231(n+1), A111249(n+1)]` -/
def P6997633262531560061.Spec : Prop :=
  ∀ n, (P6997633262531560061.a n : ℤ) = A106089 (n + 1)

end A106089

/-! ## A106089.P3646311186108744822

`∩[A023226(n+1), A139487(n+1)]`
-/

namespace A106089.P3646311186108744822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106089.P3646311186108744822

namespace A106089

/-- `∩[A023226(n+1), A139487(n+1)]` -/
def P3646311186108744822.Spec : Prop :=
  ∀ n, (P3646311186108744822.a n : ℤ) = A106089 (n + 1)

end A106089

/-! ## A106089.P3783519736159042487

`p?[eq[A349140(8*n+7), A349141(7*n+8)]]`
-/

namespace A106089.P3783519736159042487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349140 (8 * n + 7)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349141 (7 * n + 8)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106089.P3783519736159042487

namespace A106089

/-- `p?[eq[A349140(8*n+7), A349141(7*n+8)]]` -/
def P3783519736159042487.Spec : Prop :=
  ∀ n, (P3783519736159042487.a n : ℤ) = A106089 (n + 1)

end A106089

/-! ## A106089.P513347535250458421

`p?[eq[A348507(7*n+8), A349140(8*n+7)]]`
-/

namespace A106089.P513347535250458421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (7 * n + 8)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349140 (8 * n + 7)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106089.P513347535250458421

namespace A106089

/-- `p?[eq[A348507(7*n+8), A349140(8*n+7)]]` -/
def P513347535250458421.Spec : Prop :=
  ∀ n, (P513347535250458421.a n : ℤ) = A106089 (n + 1)

end A106089

/-!
# A106090: Prime numbers p such that 10p+7 and 7p+10 are primes.

The programs for A106090, the canonical program `A106090.P16719435767229659218` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106090 has offset 1).

The definition of A106090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106090.P16719435767229659218

`∩[A023227(n+1), A023239(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106090

/-- `∩[A023227(n+1), A023239(n+1)]` -/
def P16719435767229659218.Spec : Prop :=
  ∀ n, (P16719435767229659218.a n : ℤ) = A106090 (n + 1)

theorem P16719435767229659218.correct : P16719435767229659218.Spec := by
  intro n
  simp only [A106090, Nat.add_sub_cancel]

end A106090

/-! ## A106090.P11459981529860780166

`p?[A124825(n+1)]`
-/

namespace A106090.P11459981529860780166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106090.P11459981529860780166

namespace A106090

/-- `p?[A124825(n+1)]` -/
def P11459981529860780166.Spec : Prop :=
  ∀ n, P11459981529860780166.a n = A106090 (n + 1)

end A106090

/-! ## A106090.P10847112455839081057

`p?[record[A124825(A328399(n))]]`
-/

namespace A106090.P10847112455839081057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106090.P10847112455839081057

namespace A106090

/-- `p?[record[A124825(A328399(n))]]` -/
def P10847112455839081057.Spec : Prop :=
  ∀ n, P10847112455839081057.a n = A106090 (n + 1)

end A106090

/-! ## A106090.P10966701478878212784

`∩[A023227(n+1), A124825(n+1)]`
-/

namespace A106090.P10966701478878212784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P10966701478878212784

namespace A106090

/-- `∩[A023227(n+1), A124825(n+1)]` -/
def P10966701478878212784.Spec : Prop :=
  ∀ n, (P10966701478878212784.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P3475687492799071568

`∩[A023239(n+1), A124825(n+1)]`
-/

namespace A106090.P3475687492799071568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P3475687492799071568

namespace A106090

/-- `∩[A023239(n+1), A124825(n+1)]` -/
def P3475687492799071568.Spec : Prop :=
  ∀ n, (P3475687492799071568.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P10000308279673609518

`∩[A007645(n+1), A124825(n+1)]`
-/

namespace A106090.P10000308279673609518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P10000308279673609518

namespace A106090

/-- `∩[A007645(n+1), A124825(n+1)]` -/
def P10000308279673609518.Spec : Prop :=
  ∀ n, (P10000308279673609518.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P3811281128288706756

`∩[A045331(n+1), A124825(n+1)]`
-/

namespace A106090.P3811281128288706756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P3811281128288706756

namespace A106090

/-- `∩[A045331(n+1), A124825(n+1)]` -/
def P3811281128288706756.Spec : Prop :=
  ∀ n, (P3811281128288706756.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P15385768408770032113

`∩[A124825(n+1), A279815(n+1)]`
-/

namespace A106090.P15385768408770032113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P15385768408770032113

namespace A106090

/-- `∩[A124825(n+1), A279815(n+1)]` -/
def P15385768408770032113.Spec : Prop :=
  ∀ n, (P15385768408770032113.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P4046719905307417666

`∩[A040116(n+1), A124825(n+1)]`
-/

namespace A106090.P4046719905307417666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P4046719905307417666

namespace A106090

/-- `∩[A040116(n+1), A124825(n+1)]` -/
def P4046719905307417666.Spec : Prop :=
  ∀ n, (P4046719905307417666.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P15472220434301237027

`∩[A124825(n+1), A325143(n+1)]`
-/

namespace A106090.P15472220434301237027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P15472220434301237027

namespace A106090

/-- `∩[A124825(n+1), A325143(n+1)]` -/
def P15472220434301237027.Spec : Prop :=
  ∀ n, (P15472220434301237027.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P8897793640597765646

`∩[A059456(n+1), A124825(n+1)]`
-/

namespace A106090.P8897793640597765646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P8897793640597765646

namespace A106090

/-- `∩[A059456(n+1), A124825(n+1)]` -/
def P8897793640597765646.Spec : Prop :=
  ∀ n, (P8897793640597765646.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P8246048925173189005

`∩[A049549(n+1), A124825(n+1)]`
-/

namespace A106090.P8246048925173189005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P8246048925173189005

namespace A106090

/-- `∩[A049549(n+1), A124825(n+1)]` -/
def P8246048925173189005.Spec : Prop :=
  ∀ n, (P8246048925173189005.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P797018069519035927

`∩[A023239(n+1), A111250(n+1)]`
-/

namespace A106090.P797018069519035927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P797018069519035927

namespace A106090

/-- `∩[A023239(n+1), A111250(n+1)]` -/
def P797018069519035927.Spec : Prop :=
  ∀ n, (P797018069519035927.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P7620854915846421345

`∩[A000040(n+1), A124825(n+1)]`
-/

namespace A106090.P7620854915846421345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P7620854915846421345

namespace A106090

/-- `∩[A000040(n+1), A124825(n+1)]` -/
def P7620854915846421345.Spec : Prop :=
  ∀ n, (P7620854915846421345.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P10333333288659380846

`∩[A004139(n+1), A124825(n+1)]`
-/

namespace A106090.P10333333288659380846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P10333333288659380846

namespace A106090

/-- `∩[A004139(n+1), A124825(n+1)]` -/
def P10333333288659380846.Spec : Prop :=
  ∀ n, (P10333333288659380846.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P292843768793025268

`∩[A045319(n+1), A124825(n+1)]`
-/

namespace A106090.P292843768793025268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P292843768793025268

namespace A106090

/-- `∩[A045319(n+1), A124825(n+1)]` -/
def P292843768793025268.Spec : Prop :=
  ∀ n, (P292843768793025268.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P13836536314191454817

`∩[A051948(n+1), A124825(n+1)]`
-/

namespace A106090.P13836536314191454817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P13836536314191454817

namespace A106090

/-- `∩[A051948(n+1), A124825(n+1)]` -/
def P13836536314191454817.Spec : Prop :=
  ∀ n, (P13836536314191454817.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P13922502577309546934

`∩[A053813(n+1), A124825(n+1)]`
-/

namespace A106090.P13922502577309546934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P13922502577309546934

namespace A106090

/-- `∩[A053813(n+1), A124825(n+1)]` -/
def P13922502577309546934.Spec : Prop :=
  ∀ n, (P13922502577309546934.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P12197273345388520972

`∩[A065091(n+1), A124825(n+1)]`
-/

namespace A106090.P12197273345388520972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P12197273345388520972

namespace A106090

/-- `∩[A065091(n+1), A124825(n+1)]` -/
def P12197273345388520972.Spec : Prop :=
  ∀ n, (P12197273345388520972.a n : ℤ) = A106090 (n + 1)

end A106090

/-! ## A106090.P7601916006456642832

`∩[A065396(n+1), A124825(n+1)]`
-/

namespace A106090.P7601916006456642832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P7601916006456642832

namespace A106090

/-- `∩[A065396(n+1), A124825(n+1)]` -/
def P7601916006456642832.Spec : Prop :=
  ∀ n, (P7601916006456642832.a n : ℤ) = A106090 (n + 1)

end A106090

/-!
# A106091: Primes p such that 7*p + 12 and 12*p + 7 are primes.

The programs for A106091, there is no canonical definition to state claims against.
-/

/-! ## A106091.P17872749194340292688

`A200997(A122489(n+2))`
-/

namespace A106091.P17872749194340292688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A122489 (n + 2)).toNat

end

end A106091.P17872749194340292688

/-! ## A106091.P9240660123285900205

`A200997(A160663(n+2))`
-/

namespace A106091.P9240660123285900205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A160663 (n + 2)).toNat

end

end A106091.P9240660123285900205

/-! ## A106091.P13563993500066847662

`A200997(A027920(n+5))`
-/

namespace A106091.P13563993500066847662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A027920 (n + 5)).toNat

end

end A106091.P13563993500066847662

/-! ## A106091.P10830778780206732520

`A200997(A065802(n+4)+1)`
-/

namespace A106091.P10830778780206732520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A065802 (n + 4) + 1).toNat

end

end A106091.P10830778780206732520

/-! ## A106091.P12230527395922737329

`A200997(A245302(n+4)+1)`
-/

namespace A106091.P12230527395922737329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200997 (A245302 (n + 4) + 1).toNat

end

end A106091.P12230527395922737329

/-!
# A106092: Even numbers and primes.

The programs for A106092, the canonical program `A106092.P1085686516415469086` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106092 has offset 1).

The definition of A106092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106092.P3405030505858556717

`∪[2*(n+1), p?[2*n+1]]`
-/

namespace A106092.P3405030505858556717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A106092.P3405030505858556717

namespace A106092

/-- `∪[2*(n+1), p?[2*n+1]]` -/
def P3405030505858556717.Spec : Prop :=
  ∀ n, (P3405030505858556717.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P12544235490028228242

`A014091(n+1)-2`
-/

namespace A106092.P12544235490028228242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014091 (n + 1) - 2

end

end A106092.P12544235490028228242

namespace A106092

/-- `A014091(n+1)-2` -/
def P12544235490028228242.Spec : Prop :=
  ∀ n, P12544235490028228242.a n = A106092 (n + 1)

end A106092

/-! ## A106092.P15190599500454274325

`lt[xor(2, A107393(n)), 1]`
-/

namespace A106092.P15190599500454274325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A107393 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A106092.P15190599500454274325

namespace A106092

/-- `lt[xor(2, A107393(n)), 1]` -/
def P15190599500454274325.Spec : Prop :=
  ∀ n, (P15190599500454274325.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P14662949082002545742

`comp[A007921(n+1)]+2`
-/

namespace A106092.P14662949082002545742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A106092.P14662949082002545742

namespace A106092

/-- `comp[A007921(n+1)]+2` -/
def P14662949082002545742.Spec : Prop :=
  ∀ n, (P14662949082002545742.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P1556587120776315937

`comp[A014092(n+1)-2]`
-/

namespace A106092.P1556587120776315937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014092 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A106092.P1556587120776315937

namespace A106092

/-- `comp[A014092(n+1)-2]` -/
def P1556587120776315937.Spec : Prop :=
  ∀ n, (P1556587120776315937.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P1085686516415469086

`lt[A325937(n+2), 2]+2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106092

/-- `lt[A325937(n+2), 2]+2` -/
def P1085686516415469086.Spec : Prop :=
  ∀ n, (P1085686516415469086.a n : ℤ) = A106092 (n + 1)

theorem P1085686516415469086.correct : P1085686516415469086.Spec := by
  intro n
  simp only [A106092, Nat.add_sub_cancel]

end A106092

/-! ## A106092.P6013153538260667933

`lt[A349907(n+2), 2]+2`
-/

namespace A106092.P6013153538260667933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A106092.P6013153538260667933

namespace A106092

/-- `lt[A349907(n+2), 2]+2` -/
def P6013153538260667933.Spec : Prop :=
  ∀ n, (P6013153538260667933.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P4665427738230352430

`lt[1, n*A341945(n+2)]`
-/

namespace A106092.P4665427738230352430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A341945 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106092.P4665427738230352430

namespace A106092

/-- `lt[1, n*A341945(n+2)]` -/
def P4665427738230352430.Spec : Prop :=
  ∀ n, (P4665427738230352430.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P12989813895219056356

`record[A005171(n+1)+or(1, n)]`
-/

namespace A106092.P12989813895219056356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106092.P12989813895219056356

namespace A106092

/-- `record[A005171(n+1)+or(1, n)]` -/
def P12989813895219056356.Spec : Prop :=
  ∀ n, P12989813895219056356.a n = A106092 (n + 1)

end A106092

/-! ## A106092.P6795804125146685585

`∪[2*(n+1), A000040(n+1)]`
-/

namespace A106092.P6795804125146685585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106092.P6795804125146685585

namespace A106092

/-- `∪[2*(n+1), A000040(n+1)]` -/
def P6795804125146685585.Spec : Prop :=
  ∀ n, (P6795804125146685585.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P3224822197447173277

`eq[and(1, n), A010051(xor(1, n)+1)]`
-/

namespace A106092.P3224822197447173277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106092.P3224822197447173277

namespace A106092

/-- `eq[and(1, n), A010051(xor(1, n)+1)]` -/
def P3224822197447173277.Spec : Prop :=
  ∀ n, (P3224822197447173277.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P14474683655136187366

`comp[2*comp[A005097(n+1)]]+1`
-/

namespace A106092.P14474683655136187366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A106092.P14474683655136187366

namespace A106092

/-- `comp[2*comp[A005097(n+1)]]+1` -/
def P14474683655136187366.Spec : Prop :=
  ∀ n, (P14474683655136187366.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P17769588557702971296

`∪[A000040(n+2), n+2+n]`
-/

namespace A106092.P17769588557702971296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A106092.P17769588557702971296

namespace A106092

/-- `∪[A000040(n+2), n+2+n]` -/
def P17769588557702971296.Spec : Prop :=
  ∀ n, (P17769588557702971296.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P4255076460186064318

`eq[1, A001222(n*n%2+2)]+2`
-/

namespace A106092.P4255076460186064318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n * (n % 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A106092.P4255076460186064318

namespace A106092

/-- `eq[1, A001222(n*n%2+2)]+2` -/
def P4255076460186064318.Spec : Prop :=
  ∀ n, (P4255076460186064318.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P13347118158592851951

`lt[gcd(2*n, or(1, n))-1, A020639(n+2)]+2`
-/

namespace A106092.P13347118158592851951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (2 * n) (Nat.lor 1 n) : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A106092.P13347118158592851951

namespace A106092

/-- `lt[gcd(2*n, or(1, n))-1, A020639(n+2)]+2` -/
def P13347118158592851951.Spec : Prop :=
  ∀ n, (P13347118158592851951.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P13545450906760668643

`eq[2, A000005(A141310(n))]+1`
-/

namespace A106092.P13545450906760668643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A141310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106092.P13545450906760668643

namespace A106092

/-- `eq[2, A000005(A141310(n))]+1` -/
def P13545450906760668643.Spec : Prop :=
  ∀ n, (P13545450906760668643.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P7053162485837222931

`∪[A001751(n+1), A020739(n)]`
-/

namespace A106092.P7053162485837222931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106092.P7053162485837222931

namespace A106092

/-- `∪[A001751(n+1), A020739(n)]` -/
def P7053162485837222931.Spec : Prop :=
  ∀ n, (P7053162485837222931.a n : ℤ) = A106092 (n + 1)

end A106092

/-! ## A106092.P15635274877346458970

`∪[A001751(n+1), A020744(n)]`
-/

namespace A106092.P15635274877346458970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106092.P15635274877346458970

namespace A106092

/-- `∪[A001751(n+1), A020744(n)]` -/
def P15635274877346458970.Spec : Prop :=
  ∀ n, (P15635274877346458970.a n : ℤ) = A106092 (n + 1)

end A106092

/-!
# A106093: 

The programs for A106093, there is no canonical definition to state claims against.
-/

/-! ## A106093.P770559736220689619

`p?[A062679(n+1)]`
-/

namespace A106093.P770559736220689619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106093.P770559736220689619

/-! ## A106093.P17236083960577057972

`∩[A000040(n+1), A062679(n+1)]`
-/

namespace A106093.P17236083960577057972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P17236083960577057972

/-! ## A106093.P10982143595166110477

`∩[A006005(n+1), A062679(n+1)]`
-/

namespace A106093.P10982143595166110477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P10982143595166110477

/-! ## A106093.P12631660340919127488

`p?[A011539(n+1)]`
-/

namespace A106093.P12631660340919127488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106093.P12631660340919127488

/-! ## A106093.P3210736054134190015

`record[A006530(A011539(n+2))]`
-/

namespace A106093.P3210736054134190015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A011539 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106093.P3210736054134190015

/-! ## A106093.P6346633542940745016

`filter[A011539(n+1), A010051(#)]`
-/

namespace A106093.P6346633542940745016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106093.P6346633542940745016

/-! ## A106093.P1528134901112926177

`∩[A000040(n+1), A011539(n+1)]`
-/

namespace A106093.P1528134901112926177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P1528134901112926177

/-! ## A106093.P6687903863778623191

`∩[A004139(n+1), A011539(n+1)]`
-/

namespace A106093.P6687903863778623191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P6687903863778623191

/-! ## A106093.P5552726731214875976

`∩[A006005(n+1), A011539(n+1)]`
-/

namespace A106093.P5552726731214875976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P5552726731214875976

/-! ## A106093.P8073657089983976594

`∩[A008578(n+1), A011539(n+1)]`
-/

namespace A106093.P8073657089983976594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P8073657089983976594

/-! ## A106093.P7613679336512342648

`∩[A011539(n+1), A045319(n+1)]`
-/

namespace A106093.P7613679336512342648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P7613679336512342648

/-! ## A106093.P12342289463232338456

`∩[A011539(n+1), A045344(n+1)]`
-/

namespace A106093.P12342289463232338456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P12342289463232338456

/-! ## A106093.P4104304409084291244

`∩[A011539(n+1), A046022(n+1)]`
-/

namespace A106093.P4104304409084291244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P4104304409084291244

/-! ## A106093.P5700748209526779535

`∩[A011539(n+1), A051948(n+1)]`
-/

namespace A106093.P5700748209526779535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P5700748209526779535

/-! ## A106093.P5669258627870350713

`∩[A011539(n+1), A065091(n+1)]`
-/

namespace A106093.P5669258627870350713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P5669258627870350713

/-! ## A106093.P9046621723489400786

`∩[A011539(n+1), A065396(n+1)]`
-/

namespace A106093.P9046621723489400786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P9046621723489400786

/-! ## A106093.P17071937061613122018

`∩[A011539(n+1), A071621(n+1)]`
-/

namespace A106093.P17071937061613122018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P17071937061613122018

/-! ## A106093.P7131940675617473970

`∩[A106119(n+1), A011539(n+1)]`
-/

namespace A106093.P7131940675617473970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P7131940675617473970

/-! ## A106093.P12738829886376625375

`∩[A106120(n+1), A011539(n+1)]`
-/

namespace A106093.P12738829886376625375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P12738829886376625375

/-! ## A106093.P15944826302145030713

`∩[A106121(n+1), A011539(n+1)]`
-/

namespace A106093.P15944826302145030713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106093.P15944826302145030713

/-!
# A106094: Primes with maximal digit = 8.

The programs for A106094, there is no canonical definition to state claims against.
-/

/-! ## A106094.P9749895344450191047

`∩[A062677(n+1), A154767(n+1)]`
-/

namespace A106094.P9749895344450191047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P9749895344450191047

/-! ## A106094.P2537597943692996389

`∩[A038617(n+1), A062677(n+1)]`
-/

namespace A106094.P2537597943692996389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P2537597943692996389

/-! ## A106094.P7156230920661806013

`∩[A038617(n+1), A106124(n+1)]`
-/

namespace A106094.P7156230920661806013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P7156230920661806013

/-! ## A106094.P9414552844431422967

`∩[A106124(n+1), A154767(n+1)]`
-/

namespace A106094.P9414552844431422967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P9414552844431422967

/-! ## A106094.P3974195926021088159

`∩[A106123(n+1), A154767(n+1)]`
-/

namespace A106094.P3974195926021088159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P3974195926021088159

/-! ## A106094.P2136144027998313014

`p?[A283611(n+1)]`
-/

namespace A106094.P2136144027998313014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106094.P2136144027998313014

/-! ## A106094.P3142404399261235877

`∩[A000040(n+1), A283611(n+1)]`
-/

namespace A106094.P3142404399261235877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P3142404399261235877

/-! ## A106094.P6022068163036056714

`∩[A004139(n+1), A283611(n+1)]`
-/

namespace A106094.P6022068163036056714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P6022068163036056714

/-! ## A106094.P12315340510683170032

`∩[A006005(n+1), A283611(n+1)]`
-/

namespace A106094.P12315340510683170032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P12315340510683170032

/-! ## A106094.P3066239685610295933

`∩[A008578(n+1), A283611(n+1)]`
-/

namespace A106094.P3066239685610295933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P3066239685610295933

/-! ## A106094.P7472777007400131340

`∩[A033946(n+1), A283611(n+1)]`
-/

namespace A106094.P7472777007400131340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P7472777007400131340

/-! ## A106094.P16357284626302638574

`∩[A038617(n+1), A283611(n+1)]`
-/

namespace A106094.P16357284626302638574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P16357284626302638574

/-! ## A106094.P18340803139265406060

`∩[A042986(n+1), A283611(n+1)]`
-/

namespace A106094.P18340803139265406060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P18340803139265406060

/-! ## A106094.P5848735472397613849

`∩[A045319(n+1), A283611(n+1)]`
-/

namespace A106094.P5848735472397613849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P5848735472397613849

/-! ## A106094.P308428247419253735

`∩[A045321(n+1), A283611(n+1)]`
-/

namespace A106094.P308428247419253735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P308428247419253735

/-! ## A106094.P5950023760476179906

`∩[A045344(n+1), A283611(n+1)]`
-/

namespace A106094.P5950023760476179906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P5950023760476179906

/-! ## A106094.P3626687852304263818

`∩[A046022(n+1), A283611(n+1)]`
-/

namespace A106094.P3626687852304263818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P3626687852304263818

/-! ## A106094.P8908533985538250218

`∩[A062972(n+1), A283611(n+1)]`
-/

namespace A106094.P8908533985538250218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106094.P8908533985538250218

/-!
# A106095: Primes with maximal digit = 7.

The programs for A106095, there is no canonical definition to state claims against.
-/

/-! ## A106095.P463487382867236704

`∩[A036962(n+1), A257668(n+1)]`
-/

namespace A106095.P463487382867236704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P463487382867236704

/-! ## A106095.P1698601561843613718

`∩[A036962(n+1), A062675(n+1)]`
-/

namespace A106095.P1698601561843613718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P1698601561843613718

/-! ## A106095.P13177569687813123822

`∩[A062675(n+1), A155777(n+1)]`
-/

namespace A106095.P13177569687813123822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062675 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P13177569687813123822

/-! ## A106095.P8782692595313819917

`∩[A036962(n+1), A106123(n+1)]`
-/

namespace A106095.P8782692595313819917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P8782692595313819917

/-! ## A106095.P16501820398770053337

`∩[A106123(n+1), A155777(n+1)]`
-/

namespace A106095.P16501820398770053337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P16501820398770053337

/-! ## A106095.P15715805836660550233

`∩[A106122(n+1), A155777(n+1)]`
-/

namespace A106095.P15715805836660550233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P15715805836660550233

/-! ## A106095.P16505370599602552417

`p?[A283610(n+1)]`
-/

namespace A106095.P16505370599602552417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106095.P16505370599602552417

/-! ## A106095.P12656976643511798725

`filter[A283610(n+1), A010051(#)]`
-/

namespace A106095.P12656976643511798725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106095.P12656976643511798725

/-! ## A106095.P6896386671626835747

`filter[A283610(n+1), A323153(#)]`
-/

namespace A106095.P6896386671626835747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A106095.P6896386671626835747

/-! ## A106095.P8842537447061133711

`∩[A000040(n+1), A283610(n+1)]`
-/

namespace A106095.P8842537447061133711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P8842537447061133711

/-! ## A106095.P5575414429587774239

`∩[A004139(n+1), A283610(n+1)]`
-/

namespace A106095.P5575414429587774239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P5575414429587774239

/-! ## A106095.P17370922617606663914

`∩[A006005(n+1), A283610(n+1)]`
-/

namespace A106095.P17370922617606663914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P17370922617606663914

/-! ## A106095.P15926505721706249548

`∩[A008578(n+1), A283610(n+1)]`
-/

namespace A106095.P15926505721706249548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P15926505721706249548

/-! ## A106095.P1176774467735344917

`∩[A033946(n+1), A283610(n+1)]`
-/

namespace A106095.P1176774467735344917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P1176774467735344917

/-! ## A106095.P3558971743499442626

`∩[A036962(n+1), A283610(n+1)]`
-/

namespace A106095.P3558971743499442626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P3558971743499442626

/-! ## A106095.P4559622212866616375

`∩[A038616(n+1), A283610(n+1)]`
-/

namespace A106095.P4559622212866616375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P4559622212866616375

/-! ## A106095.P12531531370637687330

`∩[A038617(n+1), A283610(n+1)]`
-/

namespace A106095.P12531531370637687330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P12531531370637687330

/-! ## A106095.P17145137233827760620

`∩[A042986(n+1), A283610(n+1)]`
-/

namespace A106095.P17145137233827760620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P17145137233827760620

/-! ## A106095.P6414994710038317161

`∩[A045319(n+1), A283610(n+1)]`
-/

namespace A106095.P6414994710038317161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P6414994710038317161

/-! ## A106095.P8851702846727338350

`∩[A045321(n+1), A283610(n+1)]`
-/

namespace A106095.P8851702846727338350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106095.P8851702846727338350

/-!
# A106096: Primes with maximal digit 6.

The programs for A106096, there is no canonical definition to state claims against.
-/

/-! ## A106096.P9971219717278042775

`∩[A036960(n+1), A062673(n+1)]`
-/

namespace A106096.P9971219717278042775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P9971219717278042775

/-! ## A106096.P4714338590938902490

`∩[A036960(n+1), A106122(n+1)]`
-/

namespace A106096.P4714338590938902490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P4714338590938902490

/-! ## A106096.P2483692180901457672

`p?[A283609(n+1)]`
-/

namespace A106096.P2483692180901457672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106096.P2483692180901457672

/-! ## A106096.P6701344896272510894

`∩[A036960(n+1), A283609(n+1)]`
-/

namespace A106096.P6701344896272510894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P6701344896272510894

/-! ## A106096.P17314613692313317453

`∩[A036962(n+1), A283609(n+1)]`
-/

namespace A106096.P17314613692313317453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P17314613692313317453

/-! ## A106096.P60306409540013018

`∩[A038615(n+1), A283609(n+1)]`
-/

namespace A106096.P60306409540013018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P60306409540013018

/-! ## A106096.P15725873925443802967

`∩[A038616(n+1), A283609(n+1)]`
-/

namespace A106096.P15725873925443802967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P15725873925443802967

/-! ## A106096.P16851025197111565042

`∩[A038617(n+1), A283609(n+1)]`
-/

namespace A106096.P16851025197111565042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P16851025197111565042

/-! ## A106096.P15430126161502640439

`∩[A042986(n+1), A283609(n+1)]`
-/

namespace A106096.P15430126161502640439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P15430126161502640439

/-! ## A106096.P18435463558419124865

`∩[A045321(n+1), A283609(n+1)]`
-/

namespace A106096.P18435463558419124865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P18435463558419124865

/-! ## A106096.P2731501899901036465

`∩[A045405(n+1), A283609(n+1)]`
-/

namespace A106096.P2731501899901036465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P2731501899901036465

/-! ## A106096.P8511712040367930760

`∩[A045407(n+1), A283609(n+1)]`
-/

namespace A106096.P8511712040367930760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P8511712040367930760

/-! ## A106096.P15349516235422540019

`∩[A045428(n+1), A283609(n+1)]`
-/

namespace A106096.P15349516235422540019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P15349516235422540019

/-! ## A106096.P13420140979980780864

`∩[A045429(n+1), A283609(n+1)]`
-/

namespace A106096.P13420140979980780864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P13420140979980780864

/-! ## A106096.P9947795107170107000

`∩[A106120(n+1), A283609(n+1)]`
-/

namespace A106096.P9947795107170107000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P9947795107170107000

/-! ## A106096.P16655628485168323537

`∩[A000040(n+1), A283609(n+1)]`
-/

namespace A106096.P16655628485168323537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P16655628485168323537

/-! ## A106096.P15700342972183862658

`∩[A004139(n+1), A283609(n+1)]`
-/

namespace A106096.P15700342972183862658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P15700342972183862658

/-! ## A106096.P2187871350543910701

`∩[A006005(n+1), A283609(n+1)]`
-/

namespace A106096.P2187871350543910701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P2187871350543910701

/-! ## A106096.P8502208777667933761

`∩[A008578(n+1), A283609(n+1)]`
-/

namespace A106096.P8502208777667933761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106096.P8502208777667933761

/-!
# A106097: Primes with maximal digit = 5.

The programs for A106097, there is no canonical definition to state claims against.
-/

/-! ## A106097.P11603494290645285015

`∩[A036958(n+1), A257667(n+1)]`
-/

namespace A106097.P11603494290645285015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P11603494290645285015

/-! ## A106097.P11332211664604259917

`∩[A036958(n+1), A062671(n+1)]`
-/

namespace A106097.P11332211664604259917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P11332211664604259917

/-! ## A106097.P765007776075945482

`p?[A283608(n+1)]`
-/

namespace A106097.P765007776075945482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106097.P765007776075945482

/-! ## A106097.P7243118827108438562

`p?[or(1, A283608(A005408(n)))]`
-/

namespace A106097.P7243118827108438562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283608 (A005408 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106097.P7243118827108438562

/-! ## A106097.P8125865182396338758

`∩[A036958(n+1), A283608(n+1)]`
-/

namespace A106097.P8125865182396338758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P8125865182396338758

/-! ## A106097.P17793438878055097241

`∩[A036960(n+1), A283608(n+1)]`
-/

namespace A106097.P17793438878055097241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P17793438878055097241

/-! ## A106097.P1154185858672165514

`∩[A036962(n+1), A283608(n+1)]`
-/

namespace A106097.P1154185858672165514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P1154185858672165514

/-! ## A106097.P7707650356866181913

`∩[A038615(n+1), A283608(n+1)]`
-/

namespace A106097.P7707650356866181913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P7707650356866181913

/-! ## A106097.P16028691547431706248

`∩[A038617(n+1), A283608(n+1)]`
-/

namespace A106097.P16028691547431706248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P16028691547431706248

/-! ## A106097.P15827016768976239460

`∩[A045407(n+1), A283608(n+1)]`
-/

namespace A106097.P15827016768976239460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P15827016768976239460

/-! ## A106097.P15671936887114768229

`∩[A155777(n+1), A283608(n+1)]`
-/

namespace A106097.P15671936887114768229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P15671936887114768229

/-! ## A106097.P16695981278486432042

`∩[A257667(n+1), A283608(n+1)]`
-/

namespace A106097.P16695981278486432042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P16695981278486432042

/-! ## A106097.P6400354249636454748

`∩[A283608(n+1), A386354(n+1)]`
-/

namespace A106097.P6400354249636454748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P6400354249636454748

/-! ## A106097.P7637930282065278540

`∩[A283608(n+1), A386355(n+1)]`
-/

namespace A106097.P7637930282065278540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P7637930282065278540

/-! ## A106097.P10165137895674198701

`∩[A283608(n+1), A386356(n+1)]`
-/

namespace A106097.P10165137895674198701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P10165137895674198701

/-! ## A106097.P2076237217434479166

`∩[A283608(n+1), A386357(n+1)]`
-/

namespace A106097.P2076237217434479166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P2076237217434479166

/-! ## A106097.P4783526275361005121

`∩[A283608(n+1), A386358(n+1)]`
-/

namespace A106097.P4783526275361005121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P4783526275361005121

/-! ## A106097.P15428625690716667227

`∩[A038614(n+1), A283608(n+1)]`
-/

namespace A106097.P15428625690716667227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P15428625690716667227

/-! ## A106097.P5434465646034458959

`∩[A038616(n+1), A283608(n+1)]`
-/

namespace A106097.P5434465646034458959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P5434465646034458959

/-! ## A106097.P9202426045974140939

`∩[A155058(n+1), A283608(n+1)]`
-/

namespace A106097.P9202426045974140939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106097.P9202426045974140939

/-!
# A106098: Primes with maximal digit = 4.

The programs for A106098, there is no canonical definition to state claims against.
-/

/-! ## A106098.P13627598424815782882

`p?[A277966(n+1)]`
-/

namespace A106098.P13627598424815782882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106098.P13627598424815782882

/-! ## A106098.P16027284891804209858

`∩[A036956(n+1), A277966(n+1)]`
-/

namespace A106098.P16027284891804209858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P16027284891804209858

/-! ## A106098.P12541244292102030319

`∩[A036958(n+1), A277966(n+1)]`
-/

namespace A106098.P12541244292102030319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P12541244292102030319

/-! ## A106098.P8816659628689686158

`∩[A036960(n+1), A277966(n+1)]`
-/

namespace A106098.P8816659628689686158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P8816659628689686158

/-! ## A106098.P3378059073641800005

`∩[A154767(n+1), A277966(n+1)]`
-/

namespace A106098.P3378059073641800005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P3378059073641800005

/-! ## A106098.P4717379286354700421

`∩[A244392(n+1), A277966(n+1)]`
-/

namespace A106098.P4717379286354700421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P4717379286354700421

/-! ## A106098.P13668301338002232609

`∩[A277966(n+1), A386358(n+1)]`
-/

namespace A106098.P13668301338002232609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P13668301338002232609

/-! ## A106098.P16053668200067586390

`∩[A036962(n+1), A277966(n+1)]`
-/

namespace A106098.P16053668200067586390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P16053668200067586390

/-! ## A106098.P17151731321403397987

`∩[A277966(n+1), A386351(n+1)]`
-/

namespace A106098.P17151731321403397987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P17151731321403397987

/-! ## A106098.P11659805692575665957

`∩[A277966(n+1), A386353(n+1)]`
-/

namespace A106098.P11659805692575665957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P11659805692575665957

/-! ## A106098.P7446681889976586017

`∩[A277966(n+1), A386354(n+1)]`
-/

namespace A106098.P7446681889976586017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P7446681889976586017

/-! ## A106098.P10247234647252008806

`∩[A277966(n+1), A386356(n+1)]`
-/

namespace A106098.P10247234647252008806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P10247234647252008806

/-! ## A106098.P18337247937889247939

`∩[A277966(n+1), A386357(n+1)]`
-/

namespace A106098.P18337247937889247939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P18337247937889247939

/-! ## A106098.P2987503108153547555

`∩[A036956(n+1), A284290(n+1)]`
-/

namespace A106098.P2987503108153547555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P2987503108153547555

/-! ## A106098.P12480621774037343515

`∩[A277966(n+1), A284290(n+1)]`
-/

namespace A106098.P12480621774037343515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P12480621774037343515

/-! ## A106098.P12083143102656841790

`∩[A036956(n+1), A062669(n+1)]`
-/

namespace A106098.P12083143102656841790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P12083143102656841790

/-! ## A106098.P11842093451418699440

`p?[A007091(A337572(n+1))]`
-/

namespace A106098.P11842093451418699440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A337572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106098.P11842093451418699440

/-! ## A106098.P10641238191408011278

`∩[A284290(n+1), A007091(n)]`
-/

namespace A106098.P10641238191408011278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P10641238191408011278

/-! ## A106098.P5320867376503774453

`∩[A277966(n+1), A386350(n+1)]`
-/

namespace A106098.P5320867376503774453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P5320867376503774453

/-! ## A106098.P262885629210667196

`∩[A277966(n+1), A386352(n+1)]`
-/

namespace A106098.P262885629210667196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106098.P262885629210667196

/-!
# A106099: Primes with maximal digit = 3.

The programs for A106099, the canonical program `A106099.P6342612745526486747` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106099 has offset 1).

The definition of A106099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106099.P10808616630953474512

`∩[A036956(n+1), A277965(n+1)]`
-/

namespace A106099.P10808616630953474512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P10808616630953474512

namespace A106099

/-- `∩[A036956(n+1), A277965(n+1)]` -/
def P10808616630953474512.Spec : Prop :=
  ∀ n, (P10808616630953474512.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P4035719175161149578

`∩[A036958(n+1), A277965(n+1)]`
-/

namespace A106099.P4035719175161149578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P4035719175161149578

namespace A106099

/-- `∩[A036958(n+1), A277965(n+1)]` -/
def P4035719175161149578.Spec : Prop :=
  ∀ n, (P4035719175161149578.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P4790647535640002384

`∩[A107715(n+1), A277965(n+1)]`
-/

namespace A106099.P4790647535640002384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P4790647535640002384

namespace A106099

/-- `∩[A107715(n+1), A277965(n+1)]` -/
def P4790647535640002384.Spec : Prop :=
  ∀ n, (P4790647535640002384.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P6342612745526486747

`∩[A160337(n+1), A277965(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106099

/-- `∩[A160337(n+1), A277965(n+1)]` -/
def P6342612745526486747.Spec : Prop :=
  ∀ n, (P6342612745526486747.a n : ℤ) = A106099 (n + 1)

theorem P6342612745526486747.correct : P6342612745526486747.Spec := by
  intro n
  simp only [A106099, Nat.add_sub_cancel]

end A106099

/-! ## A106099.P16437484394336247393

`∩[A036960(n+1), A277965(n+1)]`
-/

namespace A106099.P16437484394336247393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P16437484394336247393

namespace A106099

/-- `∩[A036960(n+1), A277965(n+1)]` -/
def P16437484394336247393.Spec : Prop :=
  ∀ n, (P16437484394336247393.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P13190912777090141214

`p?[A277965(n+1)]`
-/

namespace A106099.P13190912777090141214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106099.P13190912777090141214

namespace A106099

/-- `p?[A277965(n+1)]` -/
def P13190912777090141214.Spec : Prop :=
  ∀ n, P13190912777090141214.a n = A106099 (n + 1)

end A106099

/-! ## A106099.P15942101698371225113

`p?[A007090(comp[A023717(n)])]`
-/

namespace A106099.P15942101698371225113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106099.P15942101698371225113

namespace A106099

/-- `p?[A007090(comp[A023717(n)])]` -/
def P15942101698371225113.Spec : Prop :=
  ∀ n, P15942101698371225113.a n = A106099 (n + 1)

end A106099

/-! ## A106099.P12294863955013811565

`p?[A007090(A337250(n+1))]`
-/

namespace A106099.P12294863955013811565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A337250 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106099.P12294863955013811565

namespace A106099

/-- `p?[A007090(A337250(n+1))]` -/
def P12294863955013811565.Spec : Prop :=
  ∀ n, P12294863955013811565.a n = A106099 (n + 1)

end A106099

/-! ## A106099.P9735876956070097463

`∩[A036962(n+1), A277965(n+1)]`
-/

namespace A106099.P9735876956070097463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P9735876956070097463

namespace A106099

/-- `∩[A036962(n+1), A277965(n+1)]` -/
def P9735876956070097463.Spec : Prop :=
  ∀ n, (P9735876956070097463.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P18292368328079374021

`∩[A155777(n+1), A277965(n+1)]`
-/

namespace A106099.P18292368328079374021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P18292368328079374021

namespace A106099

/-- `∩[A155777(n+1), A277965(n+1)]` -/
def P18292368328079374021.Spec : Prop :=
  ∀ n, (P18292368328079374021.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P7849589414250817174

`∩[A244392(n+1), A277965(n+1)]`
-/

namespace A106099.P7849589414250817174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P7849589414250817174

namespace A106099

/-- `∩[A244392(n+1), A277965(n+1)]` -/
def P7849589414250817174.Spec : Prop :=
  ∀ n, (P7849589414250817174.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P14233864873352645990

`∩[A277965(n+1), A386347(n+1)]`
-/

namespace A106099.P14233864873352645990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P14233864873352645990

namespace A106099

/-- `∩[A277965(n+1), A386347(n+1)]` -/
def P14233864873352645990.Spec : Prop :=
  ∀ n, (P14233864873352645990.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P6829444379190902374

`∩[A277965(n+1), A386349(n+1)]`
-/

namespace A106099.P6829444379190902374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P6829444379190902374

namespace A106099

/-- `∩[A277965(n+1), A386349(n+1)]` -/
def P6829444379190902374.Spec : Prop :=
  ∀ n, (P6829444379190902374.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P11621571390810409338

`∩[A277965(n+1), A386351(n+1)]`
-/

namespace A106099.P11621571390810409338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P11621571390810409338

namespace A106099

/-- `∩[A277965(n+1), A386351(n+1)]` -/
def P11621571390810409338.Spec : Prop :=
  ∀ n, (P11621571390810409338.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P5384132222423449947

`∩[A277965(n+1), A386353(n+1)]`
-/

namespace A106099.P5384132222423449947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P5384132222423449947

namespace A106099

/-- `∩[A277965(n+1), A386353(n+1)]` -/
def P5384132222423449947.Spec : Prop :=
  ∀ n, (P5384132222423449947.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P18285602971212171141

`∩[A277965(n+1), A386354(n+1)]`
-/

namespace A106099.P18285602971212171141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P18285602971212171141

namespace A106099

/-- `∩[A277965(n+1), A386354(n+1)]` -/
def P18285602971212171141.Spec : Prop :=
  ∀ n, (P18285602971212171141.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P2139259762318812938

`∩[A277965(n+1), A386356(n+1)]`
-/

namespace A106099.P2139259762318812938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P2139259762318812938

namespace A106099

/-- `∩[A277965(n+1), A386356(n+1)]` -/
def P2139259762318812938.Spec : Prop :=
  ∀ n, (P2139259762318812938.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P2833563765283090682

`∩[A277965(n+1), A386357(n+1)]`
-/

namespace A106099.P2833563765283090682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P2833563765283090682

namespace A106099

/-- `∩[A277965(n+1), A386357(n+1)]` -/
def P2833563765283090682.Spec : Prop :=
  ∀ n, (P2833563765283090682.a n : ℤ) = A106099 (n + 1)

end A106099

/-! ## A106099.P15506265191675824111

`∩[A277965(n+1), A386358(n+1)]`
-/

namespace A106099.P15506265191675824111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P15506265191675824111

namespace A106099

/-- `∩[A277965(n+1), A386358(n+1)]` -/
def P15506265191675824111.Spec : Prop :=
  ∀ n, (P15506265191675824111.a n : ℤ) = A106099 (n + 1)

end A106099


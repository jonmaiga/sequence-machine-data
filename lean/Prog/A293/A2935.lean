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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A293500: Number of orientable strings of length n using a maximum of k colors, array read by descending antidiagonals, T(n,k) for n >= 1 and k >= 1.

The programs for A293500, the canonical program `A293500.P12589312664931394862` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293500 has offset 1).

The definition of A293500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293500.P12589312664931394862

`((row(n)-col(n)+1)^(col(n)+1)-(row(n)-col(n)+1)^ceil((col(n)+1)/2))/2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293500

/-- `((row(n)-col(n)+1)^(col(n)+1)-(row(n)-col(n)+1)^ceil((col(n)+1)/2))/2` -/
def P12589312664931394862.Spec : Prop :=
  ∀ n, P12589312664931394862.a n = (A293500 (n + 1) : ℚ)

end A293500

/-! ## A293500.P9764135726036603320

`A051129(A038722(n+1))-A284979(A038722(n+1))`
-/

namespace A293500.P9764135726036603320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat - A284979 (A038722 (n + 1)).toNat

end

end A293500.P9764135726036603320

namespace A293500

/-- `A051129(A038722(n+1))-A284979(A038722(n+1))` -/
def P9764135726036603320.Spec : Prop :=
  ∀ n, P9764135726036603320.a n = A293500 (n + 1)

end A293500

/-! ## A293500.P14036699320585453891

`A225638(A008292(n+1)-A159689(n))`
-/

namespace A293500.P14036699320585453891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (A008292 (n + 1) - A159689 n).toNat

end

end A293500.P14036699320585453891

namespace A293500

/-- `A225638(A008292(n+1)-A159689(n))` -/
def P14036699320585453891.Spec : Prop :=
  ∀ n, P14036699320585453891.a n = A293500 (n + 1)

end A293500

/-! ## A293500.P5408848369751235580

`A090552(A008277(n+1))%A117401(n)`
-/

namespace A293500.P5408848369751235580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090552 (A008277 (n + 1)).toNat) (A117401 n)

end

end A293500.P5408848369751235580

namespace A293500

/-- `A090552(A008277(n+1))%A117401(n)` -/
def P5408848369751235580.Spec : Prop :=
  ∀ n, P5408848369751235580.a n = A293500 (n + 1)

end A293500

/-! ## A293500.P8473983601821355440

`A225638(A008292(n+1)-A286400(n+1))`
-/

namespace A293500.P8473983601821355440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (A008292 (n + 1) - A286400 (n + 1)).toNat

end

end A293500.P8473983601821355440

namespace A293500

/-- `A225638(A008292(n+1)-A286400(n+1))` -/
def P8473983601821355440.Spec : Prop :=
  ∀ n, P8473983601821355440.a n = A293500 (n + 1)

end A293500

/-!
# A293501: Number of unlabeled semiorders on n points and having dimension 3.

The programs for A293501, there is no canonical definition to state claims against.
-/

/-! ## A293501.P5387341952492998264

`A000108(n+7)-A293498(n+7)`
-/

namespace A293501.P5387341952492998264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7) - A293498 (n + 7)

end

end A293501.P5387341952492998264

/-!
# A293502: Greatest integer k such that k/n^2 < sqrt(2).

The programs for A293502, the canonical program `A293502.P3839236656667818` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293502 has offset 0).

The definition of A293502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293502.P3839236656667818

`floor(n²*sqrt(2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293502

/-- `floor(n²*sqrt(2))` -/
def P3839236656667818.Spec : Prop :=
  ∀ n, P3839236656667818.a n = A293502 n

theorem P3839236656667818.correct : P3839236656667818.Spec := by
  intro n
  simp only [A293502]

end A293502

/-! ## A293502.P10285635162470921952

`record[floor(sqrt(2)*A115881(n+1))]`
-/

namespace A293502.P10285635162470921952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A115881 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293502.P10285635162470921952

namespace A293502

/-- `record[floor(sqrt(2)*A115881(n+1))]` -/
def P10285635162470921952.Spec : Prop :=
  ∀ n, P10285635162470921952.a n = A293502 n

end A293502

/-! ## A293502.P9416658024701069812

`ceil(sqrt(2*n*A000578(n)+1))-1`
-/

namespace A293502.P9416658024701069812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((2 * n : ℤ) * A000578 n + 1 : ℝ)⌉ - 1

end

end A293502.P9416658024701069812

namespace A293502

/-- `ceil(sqrt(2*n*A000578(n)+1))-1` -/
def P9416658024701069812.Spec : Prop :=
  ∀ n, P9416658024701069812.a n = A293502 n

end A293502

/-! ## A293502.P1386940987067351683

`A293503(n)+A057428(n)`
-/

namespace A293502.P1386940987067351683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293503 n + A057428 n

end

end A293502.P1386940987067351683

namespace A293502

/-- `A293503(n)+A057428(n)` -/
def P1386940987067351683.Spec : Prop :=
  ∀ n, P1386940987067351683.a n = A293502 n

end A293502

/-! ## A293502.P16607593916667592359

`A293503(n)-A057427(n)`
-/

namespace A293502.P16607593916667592359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293503 n - A057427 n

end

end A293502.P16607593916667592359

namespace A293502

/-- `A293503(n)-A057427(n)` -/
def P16607593916667592359.Spec : Prop :=
  ∀ n, P16607593916667592359.a n = A293502 n

end A293502

/-! ## A293502.P15342704680073660634

`A293503(n)-char[A056011(n+1)]`
-/

namespace A293502.P15342704680073660634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293503 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293502.P15342704680073660634

namespace A293502

/-- `A293503(n)-char[A056011(n+1)]` -/
def P15342704680073660634.Spec : Prop :=
  ∀ n, P15342704680073660634.a n = A293502 n

end A293502

/-! ## A293502.P16099500576688967211

`A293503(n)-A008617(floor(1/(n+1)))`
-/

namespace A293502.P16099500576688967211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293503 n - A008617 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A293502.P16099500576688967211

namespace A293502

/-- `A293503(n)-A008617(floor(1/(n+1)))` -/
def P16099500576688967211.Spec : Prop :=
  ∀ n, P16099500576688967211.a n = A293502 n

end A293502

/-! ## A293502.P4233770911459675801

`A293503(n)-A032741(A006530(n+1))`
-/

namespace A293502.P4233770911459675801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293503 n - A032741 (A006530 (n + 1)).toNat

end

end A293502.P4233770911459675801

namespace A293502

/-- `A293503(n)-A032741(A006530(n+1))` -/
def P4233770911459675801.Spec : Prop :=
  ∀ n, P4233770911459675801.a n = A293502 n

end A293502

/-! ## A293502.P7190548784734698970

`(A293503(n)-1)%A293504(n+1)`
-/

namespace A293502.P7190548784734698970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293503 n - 1) (A293504 (n + 1))

end

end A293502.P7190548784734698970

namespace A293502

/-- `(A293503(n)-1)%A293504(n+1)` -/
def P7190548784734698970.Spec : Prop :=
  ∀ n, P7190548784734698970.a n = A293502 n

end A293502

/-! ## A293502.P9954619712280700547

`A293503(n)-char[A027750(n+1)]`
-/

namespace A293502.P9954619712280700547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293503 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293502.P9954619712280700547

namespace A293502

/-- `A293503(n)-char[A027750(n+1)]` -/
def P9954619712280700547.Spec : Prop :=
  ∀ n, P9954619712280700547.a n = A293502 n

end A293502

/-! ## A293502.P10446735641065338233

`A001951(n²)`
-/

namespace A293502.P10446735641065338233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n ^ 2)

end

end A293502.P10446735641065338233

namespace A293502

/-- `A001951(n²)` -/
def P10446735641065338233.Spec : Prop :=
  ∀ n, P10446735641065338233.a n = A293502 n

end A293502

/-! ## A293502.P15197384258659557793

`record[A001951(A091435(n))]`
-/

namespace A293502.P15197384258659557793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A091435 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293502.P15197384258659557793

namespace A293502

/-- `record[A001951(A091435(n))]` -/
def P15197384258659557793.Spec : Prop :=
  ∀ n, P15197384258659557793.a n = A293502 n

end A293502

/-! ## A293502.P8533298840518900965

`A001951(A000290(n))*A242481(2*n+1)`
-/

namespace A293502.P8533298840518900965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A000290 n).toNat * A242481 (2 * n + 1)

end

end A293502.P8533298840518900965

namespace A293502

/-- `A001951(A000290(n))*A242481(2*n+1)` -/
def P8533298840518900965.Spec : Prop :=
  ∀ n, P8533298840518900965.a n = A293502 n

end A293502

/-! ## A293502.P4835231150112148118

`A097508(n²)+n²`
-/

namespace A293502.P4835231150112148118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (n ^ 2) + (n ^ 2 : ℤ)

end

end A293502.P4835231150112148118

namespace A293502

/-- `A097508(n²)+n²` -/
def P4835231150112148118.Spec : Prop :=
  ∀ n, P4835231150112148118.a n = A293502 n

end A293502

/-!
# A293503: Least integer k such that k/n^2 > sqrt(2).

The programs for A293503, the canonical program `A293503.P9014828092973038109` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293503 has offset 0).

The definition of A293503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293503.P9014828092973038109

`ceil(n²*sqrt(2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293503

/-- `ceil(n²*sqrt(2))` -/
def P9014828092973038109.Spec : Prop :=
  ∀ n, P9014828092973038109.a n = A293503 n

theorem P9014828092973038109.correct : P9014828092973038109.Spec := by
  intro n
  simp only [A293503]

end A293503

/-! ## A293503.P753925756917431102

`A293502(n)+n²%(n+1)`
-/

namespace A293503.P753925756917431102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A293503.P753925756917431102

namespace A293503

/-- `A293502(n)+n²%(n+1)` -/
def P753925756917431102.Spec : Prop :=
  ∀ n, P753925756917431102.a n = A293503 n

end A293503

/-! ## A293503.P4522146271439514164

`A057427(n)+floor(n²*sqrt(2))`
-/

namespace A293503.P4522146271439514164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ⌊(n ^ 2 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A293503.P4522146271439514164

namespace A293503

/-- `A057427(n)+floor(n²*sqrt(2))` -/
def P4522146271439514164.Spec : Prop :=
  ∀ n, P4522146271439514164.a n = A293503 n

end A293503

/-! ## A293503.P10709353222374969811

`char[A006068(n+1)]+floor(n²*sqrt(2))`
-/

namespace A293503.P10709353222374969811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(n ^ 2 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A293503.P10709353222374969811

namespace A293503

/-- `char[A006068(n+1)]+floor(n²*sqrt(2))` -/
def P10709353222374969811.Spec : Prop :=
  ∀ n, P10709353222374969811.a n = A293503 n

end A293503

/-! ## A293503.P14558431355495716797

`A293502(n)+A057427(n)`
-/

namespace A293503.P14558431355495716797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A057427 n

end

end A293503.P14558431355495716797

namespace A293503

/-- `A293502(n)+A057427(n)` -/
def P14558431355495716797.Spec : Prop :=
  ∀ n, P14558431355495716797.a n = A293503 n

end A293503

/-! ## A293503.P12679461956192739317

`A293502(n)-A057428(n)`
-/

namespace A293503.P12679461956192739317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n - A057428 n

end

end A293503.P12679461956192739317

namespace A293503

/-- `A293502(n)-A057428(n)` -/
def P12679461956192739317.Spec : Prop :=
  ∀ n, P12679461956192739317.a n = A293503 n

end A293503

/-! ## A293503.P4700670169782028473

`A293502(n)+A178226(2*n)`
-/

namespace A293503.P4700670169782028473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A178226 (2 * n)

end

end A293503.P4700670169782028473

namespace A293503

/-- `A293502(n)+A178226(2*n)` -/
def P4700670169782028473.Spec : Prop :=
  ∀ n, P4700670169782028473.a n = A293503 n

end A293503

/-! ## A293503.P3973407388517340779

`(A293502(n)+1)%A051923(n)`
-/

namespace A293503.P3973407388517340779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293502 n + 1) (A051923 n)

end

end A293503.P3973407388517340779

namespace A293503

/-- `(A293502(n)+1)%A051923(n)` -/
def P3973407388517340779.Spec : Prop :=
  ∀ n, P3973407388517340779.a n = A293503 n

end A293503

/-! ## A293503.P10779284338583656742

`A293502(n)+A105812(n+1)²`
-/

namespace A293503.P10779284338583656742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A105812 (n + 1) ^ 2

end

end A293503.P10779284338583656742

namespace A293503

/-- `A293502(n)+A105812(n+1)²` -/
def P10779284338583656742.Spec : Prop :=
  ∀ n, P10779284338583656742.a n = A293503 n

end A293503

/-! ## A293503.P9636193782250164573

`A293502(n)+A105812(2*n+1)`
-/

namespace A293503.P9636193782250164573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A105812 (2 * n + 1)

end

end A293503.P9636193782250164573

namespace A293503

/-- `A293502(n)+A105812(2*n+1)` -/
def P9636193782250164573.Spec : Prop :=
  ∀ n, P9636193782250164573.a n = A293503 n

end A293503

/-! ## A293503.P11882972052856829135

`A293502(n)+A057979(A175365(n))`
-/

namespace A293503.P11882972052856829135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A057979 (A175365 n).toNat

end

end A293503.P11882972052856829135

namespace A293503

/-- `A293502(n)+A057979(A175365(n))` -/
def P11882972052856829135.Spec : Prop :=
  ∀ n, P11882972052856829135.a n = A293503 n

end A293503

/-! ## A293503.P15512346626883782585

`A293502(n)+A057979(A175368(n))`
-/

namespace A293503.P15512346626883782585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A057979 (A175368 n).toNat

end

end A293503.P15512346626883782585

namespace A293503

/-- `A293502(n)+A057979(A175368(n))` -/
def P15512346626883782585.Spec : Prop :=
  ∀ n, P15512346626883782585.a n = A293503 n

end A293503

/-! ## A293503.P4165498510475841822

`A293502(n)+A010051(A006530(n+1))`
-/

namespace A293503.P4165498510475841822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A010051 (A006530 (n + 1)).toNat

end

end A293503.P4165498510475841822

namespace A293503

/-- `A293502(n)+A010051(A006530(n+1))` -/
def P4165498510475841822.Spec : Prop :=
  ∀ n, P4165498510475841822.a n = A293503 n

end A293503

/-! ## A293503.P10079778518713155502

`A293502(n)+A056594(A105352(n+1))`
-/

namespace A293503.P10079778518713155502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293502 n + A056594 (A105352 (n + 1)).toNat

end

end A293503.P10079778518713155502

namespace A293503

/-- `A293502(n)+A056594(A105352(n+1))` -/
def P10079778518713155502.Spec : Prop :=
  ∀ n, P10079778518713155502.a n = A293503 n

end A293503

/-! ## A293503.P3627115570593552815

`A300719(A008578(n+1))+A293502(n)`
-/

namespace A293503.P3627115570593552815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A008578 (n + 1)).toNat + A293502 n

end

end A293503.P3627115570593552815

namespace A293503

/-- `A300719(A008578(n+1))+A293502(n)` -/
def P3627115570593552815.Spec : Prop :=
  ∀ n, P3627115570593552815.a n = A293503 n

end A293503

/-! ## A293503.P7055189795469492592

`A300719(A293523(n+1))+A293502(n)`
-/

namespace A293503.P7055189795469492592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A293523 (n + 1)).toNat + A293502 n

end

end A293503.P7055189795469492592

namespace A293503

/-- `A300719(A293523(n+1))+A293502(n)` -/
def P7055189795469492592.Spec : Prop :=
  ∀ n, P7055189795469492592.a n = A293503 n

end A293503

/-! ## A293503.P18372354900356647551

`record[ceil(n*sqrt(A000122(n)))]`
-/

namespace A293503.P18372354900356647551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.sqrt (A000122 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293503.P18372354900356647551

namespace A293503

/-- `record[ceil(n*sqrt(A000122(n)))]` -/
def P18372354900356647551.Spec : Prop :=
  ∀ n, P18372354900356647551.a n = A293503 n

end A293503

/-!
# A293504: The integer k that minimizes |k/n^2 - sqrt(2)|.

The programs for A293504, the canonical program `A293504.P14617866337159784839` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293504 has offset 0).

The definition of A293504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293504.P14617866337159784839

`round(n²*sqrt(2))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293504

/-- `round(n²*sqrt(2))` -/
def P14617866337159784839.Spec : Prop :=
  ∀ n, P14617866337159784839.a n = A293504 n

theorem P14617866337159784839.correct : P14617866337159784839.Spec := by
  intro n
  simp only [A293504]

end A293504

/-! ## A293504.P17750908847435899068

`abs(round(n*n/sin(atan(1))))`
-/

namespace A293504.P17750908847435899068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((n : ℝ) * ((n : ℝ) / Real.sin (Real.arctan (1 : ℝ))))|

end

end A293504.P17750908847435899068

namespace A293504

/-- `abs(round(n*n/sin(atan(1))))` -/
def P17750908847435899068.Spec : Prop :=
  ∀ n, P17750908847435899068.a n = A293504 n

end A293504

/-! ## A293504.P1796344340356410981

`A175684(n)%2*round(sqrt(2)*n^2)`
-/

namespace A293504.P1796344340356410981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175684 n) 2 * SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (n ^ 2 : ℝ))

end

end A293504.P1796344340356410981

namespace A293504

/-- `A175684(n)%2*round(sqrt(2)*n^2)` -/
def P1796344340356410981.Spec : Prop :=
  ∀ n, P1796344340356410981.a n = A293504 n

end A293504

/-! ## A293504.P5989367294130903502

`round(sqrt(2)*n^2)*A038769(A001511(n+1))`
-/

namespace A293504.P5989367294130903502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (n ^ 2 : ℝ)) * A038769 (A001511 (n + 1)).toNat

end

end A293504.P5989367294130903502

namespace A293504

/-- `round(sqrt(2)*n^2)*A038769(A001511(n+1))` -/
def P5989367294130903502.Spec : Prop :=
  ∀ n, P5989367294130903502.a n = A293504 n

end A293504

/-! ## A293504.P16795489404403847942

`A175677(A175684(n))+round(sqrt(2)*n^2)`
-/

namespace A293504.P16795489404403847942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175677 (A175684 n).toNat + SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (n ^ 2 : ℝ))

end

end A293504.P16795489404403847942

namespace A293504

/-- `A175677(A175684(n))+round(sqrt(2)*n^2)` -/
def P16795489404403847942.Spec : Prop :=
  ∀ n, P16795489404403847942.a n = A293504 n

end A293504

/-! ## A293504.P15083018682690274645

`A022846(n²)`
-/

namespace A293504.P15083018682690274645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (n ^ 2)

end

end A293504.P15083018682690274645

namespace A293504

/-- `A022846(n²)` -/
def P15083018682690274645.Spec : Prop :=
  ∀ n, P15083018682690274645.a n = A293504 n

theorem P15083018682690274645.correct : P15083018682690274645.Spec := by
  intro n
  simp only [A293504, Nat.add_sub_cancel, A293504.P15083018682690274645.a, A293504.P14617866337159784839.a, A022846, A022846.P4153130235843517023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A293504

/-! ## A293504.P12633477889784441879

`record[A022846(A123596(n))]`
-/

namespace A293504.P12633477889784441879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293504.P12633477889784441879

namespace A293504

/-- `record[A022846(A123596(n))]` -/
def P12633477889784441879.Spec : Prop :=
  ∀ n, P12633477889784441879.a n = A293504 n

end A293504

/-! ## A293504.P7071107560104230606

`A022846(n*n)%A000328(n)`
-/

namespace A293504.P7071107560104230606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022846 (n * n)) (A000328 n)

end

end A293504.P7071107560104230606

namespace A293504

/-- `A022846(n*n)%A000328(n)` -/
def P7071107560104230606.Spec : Prop :=
  ∀ n, P7071107560104230606.a n = A293504 n

end A293504

/-! ## A293504.P16195462902804330403

`record[A022846(A004526(n)*A142150(n))]`
-/

namespace A293504.P16195462902804330403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A004526 n * A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293504.P16195462902804330403

namespace A293504

/-- `record[A022846(A004526(n)*A142150(n))]` -/
def P16195462902804330403.Spec : Prop :=
  ∀ n, P16195462902804330403.a n = A293504 n

end A293504

/-!
# A293505: a(n) is the integer k that minimizes |k/Fibonacci(n) - 1/2|.

The programs for A293505, the canonical program `A293505.P15013580207223254228` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293505 has offset 0).

The definition of A293505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293505.P15013580207223254228

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=2, a(6)=4, a(7)=6`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293505

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P15013580207223254228.Spec : Prop :=
  ∀ n, P15013580207223254228.a n = A293505 n

theorem P15013580207223254228.correct : P15013580207223254228.Spec := by
  intro n
  simp only [A293505]

end A293505

/-! ## A293505.P3022076123818541771

`A293553(n)+Δ[A004697(n+1)]`
-/

namespace A293505.P3022076123818541771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 n + (f1 (n + 1) - f1 n)

end

end A293505.P3022076123818541771

namespace A293505

/-- `A293553(n)+Δ[A004697(n+1)]` -/
def P3022076123818541771.Spec : Prop :=
  ∀ n, P3022076123818541771.a n = A293505 n

end A293505

/-! ## A293505.P13759713581434406894

`∑[A293014(n)]+A293014(n+1)%2`
-/

namespace A293505.P13759713581434406894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A293014 (n + 1)) 2

end

end A293505.P13759713581434406894

namespace A293505

/-- `∑[A293014(n)]+A293014(n+1)%2` -/
def P13759713581434406894.Spec : Prop :=
  ∀ n, P13759713581434406894.a n = A293505 n

end A293505

/-! ## A293505.P14743717514556282725

`A004695(n)+A293553(n)-A004697(n)`
-/

namespace A293505.P14743717514556282725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + (A293553 n - A004697 n)

end

end A293505.P14743717514556282725

namespace A293505

/-- `A004695(n)+A293553(n)-A004697(n)` -/
def P14743717514556282725.Spec : Prop :=
  ∀ n, P14743717514556282725.a n = A293505 n

end A293505

/-! ## A293505.P16686654221729421461

`A004695(n)+and(A004695(n), A011655(n))`
-/

namespace A293505.P16686654221729421461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + Int.land (A004695 n) (A011655 n)

end

end A293505.P16686654221729421461

namespace A293505

/-- `A004695(n)+and(A004695(n), A011655(n))` -/
def P16686654221729421461.Spec : Prop :=
  ∀ n, P16686654221729421461.a n = A293505 n

end A293505

/-! ## A293505.P17394724255476642317

`A004695(n)+and(A004695(n), A059841(n))`
-/

namespace A293505.P17394724255476642317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + Int.land (A004695 n) (A059841 n)

end

end A293505.P17394724255476642317

namespace A293505

/-- `A004695(n)+and(A004695(n), A059841(n))` -/
def P17394724255476642317.Spec : Prop :=
  ∀ n, P17394724255476642317.a n = A293505 n

end A293505

/-! ## A293505.P10387866443616181627

`A000045(n)-(A293552(n)+A004697(n))`
-/

namespace A293505.P10387866443616181627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293552 n + A004697 n)

end

end A293505.P10387866443616181627

namespace A293505

/-- `A000045(n)-(A293552(n)+A004697(n))` -/
def P10387866443616181627.Spec : Prop :=
  ∀ n, P10387866443616181627.a n = A293505 n

end A293505

/-!
# A293507: Expansion of e.g.f. exp(x/(1 - x^4)).

The programs for A293507, there is no canonical definition to state claims against.
-/

/-! ## A293507.P317691345982687708

`abs(A293566(n))`
-/

namespace A293507.P317691345982687708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293566 n|

end

end A293507.P317691345982687708

/-! ## A293507.P6623898550941519026

`A033999(n)*A293566(n)`
-/

namespace A293507.P6623898550941519026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293566 n

end

end A293507.P6623898550941519026

/-! ## A293507.P5381138079386714085

`gcd(A000038(n), A293566(n))`
-/

namespace A293507.P5381138079386714085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293566 n)

end

end A293507.P5381138079386714085

/-! ## A293507.P11581643883562875959

`lcm(A097807(n), A293566(n))`
-/

namespace A293507.P11581643883562875959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A293566 n)

end

end A293507.P11581643883562875959

/-! ## A293507.P9545208467229861669

`A010815(A000326(n))*A293566(n)`
-/

namespace A293507.P9545208467229861669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A293566 n

end

end A293507.P9545208467229861669

/-!
# A293509: Decimal expansion of real root of x^5 - x^3 - x^2 - x - 1.

The programs for A293509, there is no canonical definition to state claims against.
-/

/-! ## A293509.P8507855768903781353

`A146101(A027642(n)*A060921(n))`
-/

namespace A293509.P8507855768903781353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146101 (A027642 n * A060921 n).toNat

end

end A293509.P8507855768903781353

/-!
# A293510: Number of connected minimal covers of n vertices.

The programs for A293510, there is no canonical definition to state claims against.
-/

/-! ## A293510.P4902613178489202843

`A062504(∑[C(C(n, 2), 2)])`
-/

namespace A293510.P4902613178489202843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293510.P4902613178489202843

/-! ## A293510.P84651870939827118

`A085724(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A293510.P84651870939827118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A085724 (a (n - 1)).toNat

end

end A293510.P84651870939827118

/-!
# A293511: Numbers that can be written as a product of distinct squarefree numbers in exactly one way.

The programs for A293511, there is no canonical definition to state claims against.
-/

/-! ## A293511.P10467865168815219633

`A212166(n+1)%160`
-/

namespace A293511.P10467865168815219633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212166 (n + 1)) 160

end

end A293511.P10467865168815219633

/-! ## A293511.P5349328142105300180

`eq[1, A050326(n+1)]+1`
-/

namespace A293511.P5349328142105300180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293511.P5349328142105300180

/-! ## A293511.P10601303815175514258

`eq[1, A381633(n+1)]+1`
-/

namespace A293511.P10601303815175514258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381633 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293511.P10601303815175514258

/-! ## A293511.P5126940518201048189

`A212166(3^C(n, 64)²+n)`
-/

namespace A293511.P5126940518201048189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (3 ^ Nat.choose n 64 ^ 2 + n)

end

end A293511.P5126940518201048189

/-! ## A293511.P11627615992136223751

`A212166(gcd((n+1)²/∏{p}[n+1, #], ∑[22*n]))`
-/

namespace A293511.P11627615992136223751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (Int.gcd (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A293511.P11627615992136223751

/-! ## A293511.P11401782369957010628

`A212166(A292579(n+1))`
-/

namespace A293511.P11401782369957010628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (A292579 (n + 1)).toNat

end

end A293511.P11401782369957010628

/-! ## A293511.P8440512205253840596

`filter[A212166(n+1), A307430(#)]`
-/

namespace A293511.P8440512205253840596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A293511.P8440512205253840596

/-!
# A293513: Number of proper divisors of n of the form 4k+3.

The programs for A293513, the canonical program `A293513.P2913360707613170259` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293513 has offset 1).

The definition of A293513 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293451, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293513.P2913360707613170259

`A091954(n+1)-A293451(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293513

/-- `A091954(n+1)-A293451(n+1)` -/
def P2913360707613170259.Spec : Prop :=
  ∀ n, P2913360707613170259.a n = A293513 (n + 1)

theorem P2913360707613170259.correct : P2913360707613170259.Spec := by
  intro n
  simp only [A293513, Nat.add_sub_cancel]

end A293513

/-! ## A293513.P14571723039389049475

`A001842(n+1)-A121262(n+2)`
-/

namespace A293513.P14571723039389049475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - A121262 (n + 2)

end

end A293513.P14571723039389049475

namespace A293513

/-- `A001842(n+1)-A121262(n+2)` -/
def P14571723039389049475.Spec : Prop :=
  ∀ n, P14571723039389049475.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P3693230350717097286

`A001842(n+1)-char[A016825(n)]`
-/

namespace A293513.P3693230350717097286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293513.P3693230350717097286

namespace A293513

/-- `A001842(n+1)-char[A016825(n)]` -/
def P3693230350717097286.Spec : Prop :=
  ∀ n, P3693230350717097286.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P16210704174799795722

`∑{d}[n+1, A014707(#-1)*A296066((n+1)/#)]`
-/

namespace A293513.P16210704174799795722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014707 (d - 1) * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293513.P16210704174799795722

namespace A293513

/-- `∑{d}[n+1, A014707(#-1)*A296066((n+1)/#)]` -/
def P16210704174799795722.Spec : Prop :=
  ∀ n, P16210704174799795722.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P17936670298424023849

`A091954(n+1)+A121262(n)-A001826(n+1)`
-/

namespace A293513.P17936670298424023849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091954 (n + 1) + (A121262 n - A001826 (n + 1))

end

end A293513.P17936670298424023849

namespace A293513

/-- `A091954(n+1)+A121262(n)-A001826(n+1)` -/
def P17936670298424023849.Spec : Prop :=
  ∀ n, P17936670298424023849.a n = A293513 (n + 1)

theorem P17936670298424023849.correct : P17936670298424023849.Spec := by
  intro n
  simp only [A293513, Nat.add_sub_cancel, A293513.P17936670298424023849.a, A293513.P2913360707613170259.a, A001826, A001826.P1518250824516108745.a, A091954, A091954.P3013811461556753393.a, A121262, A121262.P5808261376347758400.a, A293451, A293451.P7933704041420674484.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A001842, A001842.P7208978678147038563.f1, A001842.P7208978678147038563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A293513

/-! ## A293513.P7046541908818668467

`A001842(n+1)-A011765(n+2)`
-/

namespace A293513.P7046541908818668467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - A011765 (n + 2)

end

end A293513.P7046541908818668467

namespace A293513

/-- `A001842(n+1)-A011765(n+2)` -/
def P7046541908818668467.Spec : Prop :=
  ∀ n, P7046541908818668467.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P3643107855956493079

`A001842(n+1)-Δ[A002265(n+1)]`
-/

namespace A293513.P3643107855956493079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - (f1 (n + 1) - f1 n)

end

end A293513.P3643107855956493079

namespace A293513

/-- `A001842(n+1)-Δ[A002265(n+1)]` -/
def P3643107855956493079.Spec : Prop :=
  ∀ n, P3643107855956493079.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P8245825552414869372

`A001842(n+1)-Δ[A004526(A004526(n+1))]`
-/

namespace A293513.P8245825552414869372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1) - (f1 (n + 1) - f1 n)

end

end A293513.P8245825552414869372

namespace A293513

/-- `A001842(n+1)-Δ[A004526(A004526(n+1))]` -/
def P8245825552414869372.Spec : Prop :=
  ∀ n, P8245825552414869372.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P4870546500420655181

`A364387(A097053(n+1))`
-/

namespace A293513.P4870546500420655181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364387 (A097053 (n + 1)).toNat

end

end A293513.P4870546500420655181

namespace A293513

/-- `A364387(A097053(n+1))` -/
def P4870546500420655181.Spec : Prop :=
  ∀ n, P4870546500420655181.a n = A293513 (n + 1)

end A293513

/-! ## A293513.P5636670260602767669

`gcd(1-A070826(A293903(n+1)+1), A293903(n+1))`
-/

namespace A293513.P5636670260602767669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A070826 (A293903 (n + 1) + 1).toNat) (A293903 (n + 1))

end

end A293513.P5636670260602767669

namespace A293513

/-- `gcd(1-A070826(A293903(n+1)+1), A293903(n+1))` -/
def P5636670260602767669.Spec : Prop :=
  ∀ n, (P5636670260602767669.a n : ℤ) = A293513 (n + 1)

end A293513

/-!
# A293514: a(n) = Product_{d|n, d>1} prime(A286561(n,d)), where A286561(n,d) gives the highest exponent of d dividing n.

The programs for A293514, there is no canonical definition to state claims against.
-/

/-! ## A293514.P17695694675339565019

`A329043(A001097(n+1)*A046523(n+1))`
-/

namespace A293514.P17695694675339565019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A001097 (n + 1) * A046523 (n + 1)).toNat

end

end A293514.P17695694675339565019

/-! ## A293514.P13959259354537640671

`A329043(A046523(n+1)*A051899(n+1))`
-/

namespace A293514.P13959259354537640671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A046523 (n + 1) * A051899 (n + 1)).toNat

end

end A293514.P13959259354537640671

/-! ## A293514.P14623486613727861491

`A329043(lcm(A046523(n+1), A051899(n+1)))`
-/

namespace A293514.P14623486613727861491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (Int.lcm (A046523 (n + 1)) (A051899 (n + 1)))

end

end A293514.P14623486613727861491

/-! ## A293514.P2172938235147585852

`A329043(A046523(n+1)*A238086(n+1))`
-/

namespace A293514.P2172938235147585852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A046523 (n + 1) * A238086 (n + 1)).toNat

end

end A293514.P2172938235147585852

/-! ## A293514.P9170385446281432082

`A329043(A000040(2*n+3)*A046523(n+1))`
-/

namespace A293514.P9170385446281432082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329043 (A000040 (2 * n + 3) * A046523 (n + 1)).toNat

end

end A293514.P9170385446281432082

/-!
# A293515: a(n) = Product_{d^k|n, d>1, k>1} prime(A286561(n,d)-1), where A286561(n,d) gives the highest exponent of d dividing n.

The programs for A293515, there is no canonical definition to state claims against.
-/

/-! ## A293515.P7526226057801672142

`A064989(A293514(n+1))`
-/

namespace A293515.P7526226057801672142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A293514 (n + 1)).toNat

end

end A293515.P7526226057801672142

/-! ## A293515.P7875632270248308809

`A293810(A294897(n+1))*A295879(n+1)`
-/

namespace A293515.P7875632270248308809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293810 (A294897 (n + 1)).toNat * A295879 (n + 1)

end

end A293515.P7875632270248308809

/-! ## A293515.P10543121394934782248

`A000688(n+1)*A159631(A112624(n+1))`
-/

namespace A293515.P10543121394934782248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A159631 (A112624 (n + 1)).toNat

end

end A293515.P10543121394934782248

/-! ## A293515.P7520298361535447415

`∑{d}[A293514(n+1), A349127(#)]`
-/

namespace A293515.P7520298361535447415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A349127 d

end

end A293515.P7520298361535447415

/-! ## A293515.P15560822175209238947

`A082429(A046643(n+1))`
-/

namespace A293515.P15560822175209238947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A046643 (n + 1)).toNat

end

end A293515.P15560822175209238947

/-!
# A293516: a(n) = phi(n) - 2*phi(phi(n)), where phi = Euler totient function, A000010.

The programs for A293516, the canonical program `A293516.P8793904391479843574` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293516 has offset 1).

The definition of A293516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)-2*A000010(A000010(n+1))` (program `A293516.P8793904391479843574`, by `A293516.P8793904391479843574.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293516.P14621302751875985963

`-A083254(A000010(n+1))`
-/

namespace A293516.P14621302751875985963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (A000010 (n + 1)).toNat

end

end A293516.P14621302751875985963

namespace A293516

/-- `-A083254(A000010(n+1))` -/
def P14621302751875985963.Spec : Prop :=
  ∀ n, P14621302751875985963.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P9034369558879961417

`A070556(n+1)-A010554(n+1)`
-/

namespace A293516.P9034369558879961417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) - A010554 (n + 1)

end

end A293516.P9034369558879961417

namespace A293516

/-- `A070556(n+1)-A010554(n+1)` -/
def P9034369558879961417.Spec : Prop :=
  ∀ n, P9034369558879961417.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P7132416909478701011

`A000010(n+1)-2*A010554(n+1)`
-/

namespace A293516.P7132416909478701011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - 2 * A010554 (n + 1)

end

end A293516.P7132416909478701011

namespace A293516

/-- `A000010(n+1)-2*A010554(n+1)` -/
def P7132416909478701011.Spec : Prop :=
  ∀ n, P7132416909478701011.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P8793904391479843574

`A000010(n+1)-2*A000010(A000010(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293516

/-- `A000010(n+1)-2*A000010(A000010(n+1))` -/
def P8793904391479843574.Spec : Prop :=
  ∀ n, P8793904391479843574.a n = A293516 (n + 1)

theorem P8793904391479843574.correct : P8793904391479843574.Spec := by
  intro n
  simp only [A293516, Nat.add_sub_cancel]

end A293516

/-! ## A293516.P1576992828011635852

`-A083254(Δ[A002088(n)])`
-/

namespace A293516.P1576992828011635852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (f1 (n + 1) - f1 n).toNat

end

end A293516.P1576992828011635852

namespace A293516

/-- `-A083254(Δ[A002088(n)])` -/
def P1576992828011635852.Spec : Prop :=
  ∀ n, P1576992828011635852.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P9561306541583560720

`-A083254(Δ[A005728(n)])`
-/

namespace A293516.P9561306541583560720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (f1 (n + 1) - f1 n).toNat

end

end A293516.P9561306541583560720

namespace A293516

/-- `-A083254(Δ[A005728(n)])` -/
def P9561306541583560720.Spec : Prop :=
  ∀ n, P9561306541583560720.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P9019029643504489190

`-A083254(A349137(Δ[n²]))`
-/

namespace A293516.P9019029643504489190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A293516.P9019029643504489190

namespace A293516

/-- `-A083254(A349137(Δ[n²]))` -/
def P9019029643504489190.Spec : Prop :=
  ∀ n, P9019029643504489190.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P2810082613961850773

`-A083254(sqrt(A127473(n+1)))`
-/

namespace A293516.P2810082613961850773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A293516.P2810082613961850773

namespace A293516

/-- `-A083254(sqrt(A127473(n+1)))` -/
def P2810082613961850773.Spec : Prop :=
  ∀ n, P2810082613961850773.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P10926586609217341575

`-A083254(A039649(n+1)-1)`
-/

namespace A293516.P10926586609217341575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (A039649 (n + 1) - 1).toNat

end

end A293516.P10926586609217341575

namespace A293516

/-- `-A083254(A039649(n+1)-1)` -/
def P10926586609217341575.Spec : Prop :=
  ∀ n, P10926586609217341575.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P15824009831628183903

`-A083254(n-A219428(n+1))`
-/

namespace A293516.P15824009831628183903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A293516.P15824009831628183903

namespace A293516

/-- `-A083254(n-A219428(n+1))` -/
def P15824009831628183903.Spec : Prop :=
  ∀ n, P15824009831628183903.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P2174183731555935694

`-A083254(A319998(2*(n+1))/2)`
-/

namespace A293516.P2174183731555935694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A083254 (SequenceMachineLib.roundAway ((A319998 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A293516.P2174183731555935694

namespace A293516

/-- `-A083254(A319998(2*(n+1))/2)` -/
def P2174183731555935694.Spec : Prop :=
  ∀ n, P2174183731555935694.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P5618138778951370729

`A000010(n+1)-∑[2*A111409(n)]`
-/

namespace A293516.P5618138778951370729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293516.P5618138778951370729

namespace A293516

/-- `A000010(n+1)-∑[2*A111409(n)]` -/
def P5618138778951370729.Spec : Prop :=
  ∀ n, P5618138778951370729.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P3541095029590782136

`Δ[A002088(n)]-2*A010554(n+1)`
-/

namespace A293516.P3541095029590782136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A010554 (n + 1)

end

end A293516.P3541095029590782136

namespace A293516

/-- `Δ[A002088(n)]-2*A010554(n+1)` -/
def P3541095029590782136.Spec : Prop :=
  ∀ n, P3541095029590782136.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P16295984127601408925

`2*A070556(n+1)-A000010(n+1)`
-/

namespace A293516.P16295984127601408925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070556 (n + 1) - A000010 (n + 1)

end

end A293516.P16295984127601408925

namespace A293516

/-- `2*A070556(n+1)-A000010(n+1)` -/
def P16295984127601408925.Spec : Prop :=
  ∀ n, P16295984127601408925.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P5876060105819473647

`A051953(A000010(n+1))-A010554(n+1)`
-/

namespace A293516.P5876060105819473647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A000010 (n + 1)).toNat - A010554 (n + 1)

end

end A293516.P5876060105819473647

namespace A293516

/-- `A051953(A000010(n+1))-A010554(n+1)` -/
def P5876060105819473647.Spec : Prop :=
  ∀ n, P5876060105819473647.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P12366709882646230808

`A070556(n+1)-A000010(A000010(n+1))`
-/

namespace A293516.P12366709882646230808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070556 (n + 1) - A000010 (A000010 (n + 1)).toNat

end

end A293516.P12366709882646230808

namespace A293516

/-- `A070556(n+1)-A000010(A000010(n+1))` -/
def P12366709882646230808.Spec : Prop :=
  ∀ n, P12366709882646230808.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P16933843203253143434

`A219029(n+1)-(A219428(n+1)+A010554(n+1))`
-/

namespace A293516.P16933843203253143434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (n + 1) - (A219428 (n + 1) + A010554 (n + 1))

end

end A293516.P16933843203253143434

namespace A293516

/-- `A219029(n+1)-(A219428(n+1)+A010554(n+1))` -/
def P16933843203253143434.Spec : Prop :=
  ∀ n, P16933843203253143434.a n = A293516 (n + 1)

theorem P16933843203253143434.correct : P16933843203253143434.Spec := by
  intro n
  simp only [A293516, Nat.add_sub_cancel, A293516.P16933843203253143434.a, A293516.P8793904391479843574.a, A000010, A000010.P4673923239450215316.a, A010554, A010554.P11993721654035451912.a, A219029, A219029.P12345475859855343114.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293516

/-! ## A293516.P14952567785122547096

`A051953(A083254(n+1)+A051953(n+1))-A010554(n+1)`
-/

namespace A293516.P14952567785122547096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A083254 (n + 1) + A051953 (n + 1)).toNat - A010554 (n + 1)

end

end A293516.P14952567785122547096

namespace A293516

/-- `A051953(A083254(n+1)+A051953(n+1))-A010554(n+1)` -/
def P14952567785122547096.Spec : Prop :=
  ∀ n, P14952567785122547096.a n = A293516 (n + 1)

end A293516

/-! ## A293516.P6417980764551663610

`A004525(A319998(2*n+2))-A319998(A319998(2*n+2))`
-/

namespace A293516.P6417980764551663610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A319998 (2 * n + 2)).toNat - A319998 (A319998 (2 * n + 2)).toNat

end

end A293516.P6417980764551663610

namespace A293516

/-- `A004525(A319998(2*n+2))-A319998(A319998(2*n+2))` -/
def P6417980764551663610.Spec : Prop :=
  ∀ n, P6417980764551663610.a n = A293516 (n + 1)

end A293516

/-!
# A293517: a(n) = A293518(n) - A293519(n); how many more surviving even nodes than surviving (but not bifurcating) odd nodes there are at generation n in the binary tree of persistently squarefree numbers.

The programs for A293517, there is no canonical definition to state claims against.
-/

/-! ## A293517.P947921401838698616

`A293518(n)-A293519(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293517.P947921401838698616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n - A293519 n

end

end A293517.P947921401838698616

/-! ## A293517.P7541179702596259407

`A293441(1+n)-A293441(n)`
-/

namespace A293517.P7541179702596259407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (1 + n) - A293441 n

end

end A293517.P7541179702596259407

/-! ## A293517.P16514016445462153692

`2*A293518(n)-A293521(n)`
-/

namespace A293517.P16514016445462153692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293518 n - A293521 n

end

end A293517.P16514016445462153692

/-! ## A293517.P7261258009002053700

`A293521(n)-2*A293519(n)`
-/

namespace A293517.P7261258009002053700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n - 2 * A293519 n

end

end A293517.P7261258009002053700

/-! ## A293517.P8820546830794518417

`A293521(n)+2*A293519(n)*A057428(n)`
-/

namespace A293517.P8820546830794518417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n + 2 * A293519 n * A057428 n

end

end A293517.P8820546830794518417

/-! ## A293517.P6703549470185529977

`A293518(n)+A293519(n)/A140962(gcd(n, n+1))`
-/

namespace A293517.P6703549470185529977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293518 n : ℚ) + (A293519 n : ℚ) / (A140962 (Nat.gcd n (n + 1)) : ℚ)

end

end A293517.P6703549470185529977

/-! ## A293517.P17144690086807818267

`A293521(n)-A293519(n)-A293519(A028310(n))`
-/

namespace A293517.P17144690086807818267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n - A293519 n - A293519 (A028310 n).toNat

end

end A293517.P17144690086807818267

/-! ## A293517.P8624088787732290435

`A293518(n)-A293521(n)%A293518(A028310(n))`
-/

namespace A293517.P8624088787732290435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n - Int.tmod (A293521 n) (A293518 (A028310 n).toNat)

end

end A293517.P8624088787732290435

/-! ## A293517.P10736720880865243686

`A293521(n)-A293519(n)-A293519(A033619(n+1))`
-/

namespace A293517.P10736720880865243686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n - A293519 n - A293519 (A033619 (n + 1)).toNat

end

end A293517.P10736720880865243686

/-! ## A293517.P15331787409025218058

`Δ[A293441(n)]`
-/

namespace A293517.P15331787409025218058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293517.P15331787409025218058

/-!
# A293518: Number of surviving even nodes at generation n in the binary tree of persistently squarefree numbers (see A293230).

The programs for A293518, there is no canonical definition to state claims against.
-/

/-! ## A293518.P17311318049918251577

`A293519(n)+A293517(n)`
-/

namespace A293518.P17311318049918251577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293519 n + A293517 n

end

end A293518.P17311318049918251577

/-! ## A293518.P1574559296005128659

`A293521(n)-A293519(n)`
-/

namespace A293518.P1574559296005128659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n - A293519 n

end

end A293518.P1574559296005128659

/-! ## A293518.P616505483412064993

`(A293521(n)+A293517(n))/2`
-/

namespace A293518.P616505483412064993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293521 n + A293517 n : ℚ) / 2

end

end A293518.P616505483412064993

/-! ## A293518.P6173118022602847066

`A293521(n)+A057428(n)*A293519(n)`
-/

namespace A293518.P6173118022602847066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n + A057428 n * A293519 n

end

end A293518.P6173118022602847066

/-! ## A293518.P1104452306707596992

`A293517(n)-(A000035(2*n)-A293519(n))`
-/

namespace A293518.P1104452306707596992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 n - (A000035 (2 * n) - A293519 n)

end

end A293518.P1104452306707596992

/-! ## A293518.P6231939753442111928

`A293519(n)+Δ[A293441(n)]`
-/

namespace A293518.P6231939753442111928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293519 n + (f1 (n + 1) - f1 n)

end

end A293518.P6231939753442111928

/-! ## A293518.P4394023234423016536

`A293441(n+1)+A293519(n)-A293441(n)`
-/

namespace A293518.P4394023234423016536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (n + 1) + (A293519 n - A293441 n)

end

end A293518.P4394023234423016536

/-! ## A293518.P572078475989888985

`A293441(n+1)-A293522(n)`
-/

namespace A293518.P572078475989888985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (n + 1) - A293522 n

end

end A293518.P572078475989888985

/-! ## A293518.P12812479253089805316

`A293230(n)-(A293520(n)+A293441(n))`
-/

namespace A293518.P12812479253089805316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293520 n + A293441 n)

end

end A293518.P12812479253089805316

/-! ## A293518.P13902680901670973747

`A293441(n)-(A293522(n)-A293517(n))`
-/

namespace A293518.P13902680901670973747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - (A293522 n - A293517 n)

end

end A293518.P13902680901670973747

/-!
# A293519: Number of surviving (but not bifurcating) odd nodes at generation n in the binary tree of persistently squarefree numbers (see A293230).

The programs for A293519, there is no canonical definition to state claims against.
-/

/-! ## A293519.P15592991960964019785

`A293518(n)-A293517(n)`
-/

namespace A293519.P15592991960964019785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n - A293517 n

end

end A293519.P15592991960964019785

/-! ## A293519.P5645182889537427949

`A293521(n)-A293518(n)`
-/

namespace A293519.P5645182889537427949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293521 n - A293518 n

end

end A293519.P5645182889537427949

/-! ## A293519.P10183118443174166662

`(A293521(n)-A293517(n))/2`
-/

namespace A293519.P10183118443174166662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293521 n - A293517 n : ℚ) / 2

end

end A293519.P10183118443174166662

/-! ## A293519.P6682415765626433624

`A293521(n)%A293518(A028310(n))`
-/

namespace A293519.P6682415765626433624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293521 n) (A293518 (A028310 n).toNat)

end

end A293519.P6682415765626433624

/-! ## A293519.P13204289715984149243

`A293518(n)-Δ[A293441(n)]`
-/

namespace A293519.P13204289715984149243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n - (f1 (n + 1) - f1 n)

end

end A293519.P13204289715984149243

/-! ## A293519.P10686692132550833541

`A293441(n)+A293518(n)-A293441(n+1)`
-/

namespace A293519.P10686692132550833541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n + (A293518 n - A293441 (n + 1))

end

end A293519.P10686692132550833541

/-! ## A293519.P17371004618465696113

`(A293518(n)+A293230(n+1))%A293441(n+1)`
-/

namespace A293519.P17371004618465696113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293518 n + A293230 (n + 1)) (A293441 (n + 1))

end

end A293519.P17371004618465696113

/-! ## A293519.P11771232906280299469

`A293441(n)-A293522(n)`
-/

namespace A293519.P11771232906280299469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - A293522 n

end

end A293519.P11771232906280299469

/-! ## A293519.P4060434266208626066

`A293441(n)-(A293520(n)+A293440(n))`
-/

namespace A293519.P4060434266208626066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - (A293520 n + A293440 n)

end

end A293519.P4060434266208626066

/-! ## A293519.P15343491881269319438

`A293230(n)-(A293520(n)+A293441(n+1))`
-/

namespace A293519.P15343491881269319438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293520 n + A293441 (n + 1))

end

end A293519.P15343491881269319438

/-!
# A293520: Number of dying nodes (withering branches) at generation n in the binary tree of persistently squarefree numbers (A293230).

The programs for A293520, there is no canonical definition to state claims against.
-/

/-! ## A293520.P9999603247768397505

`A293522(n)-A293440(n)`
-/

namespace A293520.P9999603247768397505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293522 n - A293440 n

end

end A293520.P9999603247768397505

/-! ## A293520.P8408750235463016639

`A293522(n)-Δ[A293230(n)]`
-/

namespace A293520.P8408750235463016639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293522 n - (f1 (n + 1) - f1 n)

end

end A293520.P8408750235463016639

/-! ## A293520.P4658151352624451635

`A293522(gcd(n, 2*n))%A293440(n)`
-/

namespace A293520.P4658151352624451635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293522 (Nat.gcd n (2 * n))) (A293440 n)

end

end A293520.P4658151352624451635

/-! ## A293520.P5415436344585870188

`A293522(C(2, n)+n)%A293440(n)`
-/

namespace A293520.P5415436344585870188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293522 (Nat.choose 2 n + n)) (A293440 n)

end

end A293520.P5415436344585870188

/-! ## A293520.P18346332118520270927

`A293522(A028310(n))%A293440(n)`
-/

namespace A293520.P18346332118520270927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293522 (A028310 n).toNat) (A293440 n)

end

end A293520.P18346332118520270927

/-! ## A293520.P14105889758236600019

`A293522(log2(A000079(n)))%A293440(n)`
-/

namespace A293520.P14105889758236600019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293522 (SequenceMachineLib.roundAway (Real.logb 2 (A000079 n : ℝ))).toNat) (A293440 n)

end

end A293520.P14105889758236600019

/-! ## A293520.P14161246986935988412

`A293522(A033619(n+1))%A293440(n)`
-/

namespace A293520.P14161246986935988412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293522 (A033619 (n + 1)).toNat) (A293440 n)

end

end A293520.P14161246986935988412

/-! ## A293520.P6232464427914980018

`A293230(n)-(A293518(n)+A293441(n))`
-/

namespace A293520.P6232464427914980018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293518 n + A293441 n)

end

end A293520.P6232464427914980018

/-! ## A293520.P1837456520570766022

`A293230(n)-(A293522(n)+A293521(n))`
-/

namespace A293520.P1837456520570766022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293522 n + A293521 n)

end

end A293520.P1837456520570766022

/-! ## A293520.P4393467102526667771

`A293441(n)-(A293519(n)+A293440(n))`
-/

namespace A293520.P4393467102526667771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - (A293519 n + A293440 n)

end

end A293520.P4393467102526667771

/-!
# A293521: Number of surviving (but not bifurcating) nodes at generation n in the binary tree of persistently squarefree numbers (see A293230).

The programs for A293521, there is no canonical definition to state claims against.
-/

/-! ## A293521.P11416812204036596175

`A293518(n)+A293519(n)`
-/

namespace A293521.P11416812204036596175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n + A293519 n

end

end A293521.P11416812204036596175

/-! ## A293521.P15782354644068744978

`A293517(n)+2*A293519(n)`
-/

namespace A293521.P15782354644068744978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 n + 2 * A293519 n

end

end A293521.P15782354644068744978

/-! ## A293521.P8370287334424904111

`2*A293518(n)-A293517(n)`
-/

namespace A293521.P8370287334424904111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293518 n - A293517 n

end

end A293521.P8370287334424904111

/-! ## A293521.P17387756849792885566

`A293518(n)-(A000035(2*n)-A293519(n))`
-/

namespace A293521.P17387756849792885566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293518 n - (A000035 (2 * n) - A293519 n)

end

end A293521.P17387756849792885566

/-! ## A293521.P16834339321689574570

`A293519(A028310(n))+A293519(n)+A293517(n)`
-/

namespace A293521.P16834339321689574570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293519 (A028310 n).toNat + (A293519 n + A293517 n)

end

end A293521.P16834339321689574570

/-! ## A293521.P16595568601669268446

`Δ[A293441(n)]+2*A293519(n)`
-/

namespace A293521.P16595568601669268446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A293519 n

end

end A293521.P16595568601669268446

/-! ## A293521.P12816146241355859742

`2*A293518(n)-Δ[A293441(n)]`
-/

namespace A293521.P12816146241355859742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293518 n - (f1 (n + 1) - f1 n)

end

end A293521.P12816146241355859742

/-! ## A293521.P5787980596408798669

`A293230(n+1)-2*A293522(n)`
-/

namespace A293521.P5787980596408798669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 (n + 1) - 2 * A293522 n

end

end A293521.P5787980596408798669

/-! ## A293521.P3589679680513164802

`A293230(n)-(A293522(n)+A293520(n))`
-/

namespace A293521.P3589679680513164802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293522 n + A293520 n)

end

end A293521.P3589679680513164802

/-! ## A293521.P3016996717152581016

`A293441(n)+A293518(n)-A293522(n)`
-/

namespace A293521.P3016996717152581016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n + (A293518 n - A293522 n)

end

end A293521.P3016996717152581016

/-!
# A293522: Number of bifurcating nodes at generation n in the binary tree of persistently squarefree numbers (see A293230).

The programs for A293522, there is no canonical definition to state claims against.
-/

/-! ## A293522.P11643911479194151342

`A293520(n)+A293440(n)`
-/

namespace A293522.P11643911479194151342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293520 n + A293440 n

end

end A293522.P11643911479194151342

/-! ## A293522.P9141470927695939070

`A293441(n)-A293519(n)`
-/

namespace A293522.P9141470927695939070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - A293519 n

end

end A293522.P9141470927695939070

/-! ## A293522.P14728945520852885053

`A293520(n)+Δ[A293230(n)]`
-/

namespace A293522.P14728945520852885053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293520 n + (f1 (n + 1) - f1 n)

end

end A293522.P14728945520852885053

/-! ## A293522.P5665586968631228950

`A293441(n+1)-A293518(n)`
-/

namespace A293522.P5665586968631228950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (n + 1) - A293518 n

end

end A293522.P5665586968631228950

/-! ## A293522.P1812947485006608338

`∑[A293517(n)]+1-A293518(n)`
-/

namespace A293522.P1812947485006608338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293518 n)

end

end A293522.P1812947485006608338

/-! ## A293522.P10076428227627533784

`∑[A293517(abs(1-n))]-A293519(n)`
-/

namespace A293522.P10076428227627533784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293519 n

end

end A293522.P10076428227627533784

/-! ## A293522.P5230191918783451385

`∑[A293517(A028310(n))]-A293518(n)`
-/

namespace A293522.P5230191918783451385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293517 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293518 n

end

end A293522.P5230191918783451385

/-! ## A293522.P4144115464578365013

`record[A293441(A008615(n))]-A293518(n)`
-/

namespace A293522.P4144115464578365013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (A008615 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A293518 n

end

end A293522.P4144115464578365013

/-! ## A293522.P5962718149216525287

`A293230(n)-(A293521(n)+A293520(n))`
-/

namespace A293522.P5962718149216525287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - (A293521 n + A293520 n)

end

end A293522.P5962718149216525287

/-! ## A293522.P18295789130201092128

`A293441(n)-(A293518(n)-A293517(n))`
-/

namespace A293522.P18295789130201092128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n - (A293518 n - A293517 n)

end

end A293522.P18295789130201092128

/-!
# A293523: Persistently squarefree numbers for base-3 shifting: Numbers n such that all terms in finite set of positive numbers [n, floor(n/3), floor(n/9), floor(n/27), ..., floor(n/3^k)>0] are squarefree.

The programs for A293523, there is no canonical definition to state claims against.
-/

/-! ## A293523.P3169888874986209311

`record[∏{p}[n+1, #]%A105320(2*(n+1))]`
-/

namespace A293523.P3169888874986209311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A105320 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293523.P3169888874986209311

/-! ## A293523.P3609766993205931671

`record[A007947(n+1)/A344180(A055230(n+1))]`
-/

namespace A293523.P3609766993205931671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A344180 (A055230 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293523.P3609766993205931671

/-! ## A293523.P17851827883070544814

`record[A019554(n+1)/A344180(A055230(n+1))]`
-/

namespace A293523.P17851827883070544814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) : ℚ) / (A344180 (A055230 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293523.P17851827883070544814

/-! ## A293523.P18086561964402953863

`record[A304328(n+1)/A344180(A055230(n+1))]`
-/

namespace A293523.P18086561964402953863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304328 (n + 1) : ℚ) / (A344180 (A055230 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293523.P18086561964402953863

/-!
# A293524: a(n) = Product_{d|n, d>1} prime(A052409(d)).

The programs for A293524, there is no canonical definition to state claims against.
-/

/-! ## A293524.P14888327159338480327

`A294874(A278254(n+1))`
-/

namespace A293524.P14888327159338480327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 (A278254 (n + 1)).toNat

end

end A293524.P14888327159338480327

/-! ## A293524.P7968764515643137113

`A294874((n+1)²)`
-/

namespace A293524.P7968764515643137113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 ((n + 1) ^ 2)

end

end A293524.P7968764515643137113

/-! ## A293524.P292166099574646007

`A294874((n+1)^2)/A294874(A000040(n+1))`
-/

namespace A293524.P292166099574646007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294874 ((n + 1) ^ 2) : ℚ) / (A294874 (A000040 (n + 1)).toNat : ℚ)

end

end A293524.P292166099574646007

/-! ## A293524.P5418771358390706011

`A294874((n+1)*(n+1))+A055672(A055672(n))`
-/

namespace A293524.P5418771358390706011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 ((n + 1) * (n + 1)) + A055672 (A055672 n).toNat

end

end A293524.P5418771358390706011

/-! ## A293524.P7324080462513733353

`A001221(A002144(n+1))*A294874((n+1)*(n+1))`
-/

namespace A293524.P7324080462513733353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002144 (n + 1)).toNat * A294874 ((n + 1) * (n + 1))

end

end A293524.P7324080462513733353

/-!
# A293525: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. Product_{j > 0, j mod k > 0} exp(x^j).

The programs for A293525, there is no canonical definition to state claims against.
-/

/-! ## A293525.P9478253004464188898

`or(A293486(n), A325678(A267479(n)))`
-/

namespace A293525.P9478253004464188898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A293486 n) (A325678 (A267479 n).toNat)

end

end A293525.P9478253004464188898

/-! ## A293525.P12078247417024991331

`A247505(4*A276921(n))`
-/

namespace A293525.P12078247417024991331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (4 * A276921 n).toNat

end

end A293525.P12078247417024991331

/-! ## A293525.P17923244404012446635

`A247505(4*A293135(n))`
-/

namespace A293525.P17923244404012446635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247505 (4 * A293135 n).toNat

end

end A293525.P17923244404012446635

/-! ## A293525.P1897528062163904732

`A213712(A293135(n)^3)`
-/

namespace A293525.P1897528062163904732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213712 (A293135 n ^ 3).toNat

end

end A293525.P1897528062163904732

/-! ## A293525.P5969478780033126281

`7%A057608(A276890(n))`
-/

namespace A293525.P5969478780033126281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A057608 (A276890 n).toNat)

end

end A293525.P5969478780033126281

/-!
# A293526: Expansion of e.g.f. exp(x^3/(1 - x^4)).

The programs for A293526, there is no canonical definition to state claims against.
-/

/-! ## A293526.P3219994465622930502

`abs(A293568(n))`
-/

namespace A293526.P3219994465622930502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293568 n|

end

end A293526.P3219994465622930502

/-! ## A293526.P10050732103039963157

`A033999(n)*A293568(n)`
-/

namespace A293526.P10050732103039963157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293568 n

end

end A293526.P10050732103039963157

/-! ## A293526.P17845105823249211354

`gcd(A000038(n), A293568(n))`
-/

namespace A293526.P17845105823249211354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293568 n)

end

end A293526.P17845105823249211354

/-! ## A293526.P16377045882214121158

`lcm(A007318(n), A293568(n))`
-/

namespace A293526.P16377045882214121158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A293568 n)

end

end A293526.P16377045882214121158

/-! ## A293526.P4500704734464381532

`lcm(-A293568(n), A000034(n))`
-/

namespace A293526.P4500704734464381532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A293568 n) (A000034 n)

end

end A293526.P4500704734464381532

/-!
# A293528: E.g.f.: exp(x * Product_{k>0} (1 + x^k)).

The programs for A293528, there is no canonical definition to state claims against.
-/

/-! ## A293528.P4613620853787553119

`A014681(A293507(n)+A129375(n))`
-/

namespace A293528.P4613620853787553119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A293507 n + A129375 n).toNat

end

end A293528.P4613620853787553119

/-! ## A293528.P9985676371465086902

`A024912(or(A014307(n), A264924(n+1)))`
-/

namespace A293528.P9985676371465086902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024912 (Int.lor (A014307 n) (A264924 (n + 1))).toNat

end

end A293528.P9985676371465086902

/-!
# A293530: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. 1/Product_{j > 0, j mod k > 0} exp(x^j).

The programs for A293530, there is no canonical definition to state claims against.
-/

/-! ## A293530.P12776768711803916165

`A294254(n)-A185036(A233440(n))`
-/

namespace A293530.P12776768711803916165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 n - A185036 (A233440 n).toNat

end

end A293530.P12776768711803916165

/-! ## A293530.P15866758155485221981

`A294254(n)*A309896(A212163(n+1))`
-/

namespace A293530.P15866758155485221981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 n * A309896 (A212163 (n + 1)).toNat

end

end A293530.P15866758155485221981

/-! ## A293530.P12167789051796478128

`A294254(n)-A294243(A351241(n+1))`
-/

namespace A293530.P12167789051796478128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294254 n - A294243 (A351241 (n + 1)).toNat

end

end A293530.P12167789051796478128

/-! ## A293530.P16073476930345540850

`A109010(A358453(n+1))*A294254(n)`
-/

namespace A293530.P16073476930345540850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A358453 (n + 1)).toNat * A294254 n

end

end A293530.P16073476930345540850

/-!
# A293532: Expansion of e.g.f. exp(x/(x^2 - 1)).

The programs for A293532, there is no canonical definition to state claims against.
-/

/-! ## A293532.P10037273771958474835

`A293530(∑[n+2]-1)`
-/

namespace A293532.P10037273771958474835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293530 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293532.P10037273771958474835

/-! ## A293532.P8311351343324700189

`(-1)^n*A088009(n)`
-/

namespace A293532.P8311351343324700189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A088009 n

end

end A293532.P8311351343324700189

/-! ## A293532.P4867167113767617477

`A088009(n)/A033999(n)`
-/

namespace A293532.P4867167113767617477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088009 n : ℚ) / (A033999 n : ℚ)

end

end A293532.P4867167113767617477

/-! ## A293532.P8523764715068419047

`or(1, A293530(A027379(n)+1))`
-/

namespace A293532.P8523764715068419047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293530 (A027379 n + 1).toNat)

end

end A293532.P8523764715068419047

/-! ## A293532.P12338766744418524230

`or(1, A293530(A034856(n+1)))`
-/

namespace A293532.P12338766744418524230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293530 (A034856 (n + 1)).toNat)

end

end A293532.P12338766744418524230

/-! ## A293532.P10806392183581407320

`-(A033999(n+1)*A088009(n))`
-/

namespace A293532.P10806392183581407320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A088009 n)

end

end A293532.P10806392183581407320

/-! ## A293532.P13378097463714825415

`A088009(n)*A138034(3*n+1)`
-/

namespace A293532.P13378097463714825415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088009 n * A138034 (3 * n + 1)

end

end A293532.P13378097463714825415

/-! ## A293532.P2547650796361384829

`A033999(n)*A293525(∑[n+2]-1)`
-/

namespace A293532.P2547650796361384829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293525 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293532.P2547650796361384829

/-!
# A293533: E.g.f.: 1/Product_{m > 0, m mod 3 > 0} exp(x^m).

The programs for A293533, there is no canonical definition to state claims against.
-/

/-! ## A293533.P16659264867362451057

`A293530(∑[n+3])`
-/

namespace A293533.P16659264867362451057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293530 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293533.P16659264867362451057

/-! ## A293533.P16904657263162326106

`or(1, A293530(A027379(n+1)))`
-/

namespace A293533.P16904657263162326106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293530 (A027379 (n + 1)).toNat)

end

end A293533.P16904657263162326106

/-! ## A293533.P9152434984488046110

`Δ[A028391(n)]!*A293530(A027379(n+1))`
-/

namespace A293533.P9152434984488046110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) * A293530 (A027379 (n + 1)).toNat

end

end A293533.P9152434984488046110

/-! ## A293533.P16755933866037223091

`A133872((n+1)²)*A293530(A027379(n+1))`
-/

namespace A293533.P16755933866037223091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 ((n + 1) ^ 2) * A293530 (A027379 (n + 1)).toNat

end

end A293533.P16755933866037223091

/-! ## A293533.P11191814972749929179

`A033999(n+2)²*A293530(A027379(n+1))`
-/

namespace A293533.P11191814972749929179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 2) ^ 2 * A293530 (A027379 (n + 1)).toNat

end

end A293533.P11191814972749929179

/-! ## A293533.P9505456187578767601

`A056594(2*n)²*A293530(A027379(n+1))`
-/

namespace A293533.P9505456187578767601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * A293530 (A027379 (n + 1)).toNat

end

end A293533.P9505456187578767601

/-! ## A293533.P10224797450749238555

`A293530(A027379(n+1))+A000045(C(n, n+1))`
-/

namespace A293533.P10224797450749238555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293530 (A027379 (n + 1)).toNat + A000045 (Nat.choose n (n + 1))

end

end A293533.P10224797450749238555

/-! ## A293533.P8218840160858679586

`A037213(n²+1)!*A293530(A027379(n+1))`
-/

namespace A293533.P8218840160858679586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A037213 (n ^ 2 + 1)).toNat : ℤ) * A293530 (A027379 (n + 1)).toNat

end

end A293533.P8218840160858679586

/-! ## A293533.P1521002740167019362

`A054354(A054353(n+1))²*A293530(A027379(n+1))`
-/

namespace A293533.P1521002740167019362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (A054353 (n + 1)).toNat ^ 2 * A293530 (A027379 (n + 1)).toNat

end

end A293533.P1521002740167019362

/-!
# A293534: Numbers k such that 22*10^k + 3 is prime.

The programs for A293534, there is no canonical definition to state claims against.
-/

/-! ## A293534.P8717076808224462564

`A366567(A272919(n+1))-A366568(n+1)`
-/

namespace A293534.P8717076808224462564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366567 (A272919 (n + 1)).toNat - A366568 (n + 1)

end

end A293534.P8717076808224462564

/-!
# A293535: Numbers k such that 2*10^k + 63 is prime.

The programs for A293535, there is no canonical definition to state claims against.
-/

/-! ## A293535.P8465864987147166894

`A048793(n²)+A004043(n+8)`
-/

namespace A293535.P8465864987147166894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (n ^ 2) + A004043 (n + 8)

end

end A293535.P8465864987147166894

/-! ## A293535.P10523432444427168915

`∑[A300362(A205480(n))]`
-/

namespace A293535.P10523432444427168915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A205480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293535.P10523432444427168915

/-! ## A293535.P5451052216018763020

`∑[A282463(A274934(n))]`
-/

namespace A293535.P5451052216018763020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282463 (A274934 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293535.P5451052216018763020

/-! ## A293535.P8817645293837573792

`record[A204551(A366873(n))]`
-/

namespace A293535.P8817645293837573792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A366873 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293535.P8817645293837573792

/-! ## A293535.P11571475757991997037

`∩[A272948(n+1), A099627(n)]`
-/

namespace A293535.P11571475757991997037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293535.P11571475757991997037

/-!
# A293537: Numbers k such that (88*10^k - 1)/3 is prime.

The programs for A293537, there is no canonical definition to state claims against.
-/

/-! ## A293537.P15696160199578535416

`A054567(A343668(n+2))%A065851(n+1)`
-/

namespace A293537.P15696160199578535416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054567 (A343668 (n + 2)).toNat) (A065851 (n + 1))

end

end A293537.P15696160199578535416

/-! ## A293537.P6302434603621097930

`A173407(a(n-1))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=9`
-/

namespace A293537.P6302434603621097930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 9] fun n a =>
  A173407 (a (n - 1)).toNat

end

end A293537.P6302434603621097930

/-!
# A293538: Numbers k such that (8*10^k + 43)/3 is prime.

The programs for A293538, there is no canonical definition to state claims against.
-/

/-! ## A293538.P4925090554215028145

`eq[A011655(A062307(n+1)), A355335(n+1)]`
-/

namespace A293538.P4925090554215028145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A062307 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293538.P4925090554215028145

/-!
# A293539: Let P be the sequence of distinct lattice points defined by the following rules: P(1) = (0,0), P(2) = (1,0), and for any n > 2, P(n) is the closest lattice point to P(n-1) such that the angle of the vectors (P(n-2), P(n-1)) and (P(n-1), P(n)), say t, satisfies 0 < t <= Pi/2, and in case of a tie, minimize the angle t; a(n) = X-coordinate of P(n).

The programs for A293539, there is no canonical definition to state claims against.
-/

/-! ## A293539.P4329052512986944253

`A293680(n+1)+A102683(A062724(n))`
-/

namespace A293539.P4329052512986944253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293680 (n + 1) + A102683 (A062724 n).toNat

end

end A293539.P4329052512986944253

/-! ## A293539.P17335528169914919813

`A293772(n+1)+A102683(A062724(n))`
-/

namespace A293539.P17335528169914919813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293772 (n + 1) + A102683 (A062724 n).toNat

end

end A293539.P17335528169914919813

/-! ## A293539.P2492262824182473032

`A293680(n+1)+A185284(A000931(n))`
-/

namespace A293539.P2492262824182473032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293680 (n + 1) + A185284 (A000931 n).toNat

end

end A293539.P2492262824182473032

/-! ## A293539.P11061542224496950788

`A293772(n+1)+A185284(A000931(n))`
-/

namespace A293539.P11061542224496950788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293772 (n + 1) + A185284 (A000931 n).toNat

end

end A293539.P11061542224496950788

/-! ## A293539.P3291352672441435246

`A293680(n+1)+A102683(A085157(n))`
-/

namespace A293539.P3291352672441435246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293680 (n + 1) + A102683 (A085157 n).toNat

end

end A293539.P3291352672441435246

/-!
# A293540: Let P be the sequence of distinct lattice points defined by the following rules: P(1) = (0,0), P(2) = (1,0), and for any n > 2, P(n) is the closest lattice point to P(n-1) such that the angle of the vectors (P(n-2), P(n-1)) and (P(n-1), P(n)), say t, satisfies 0 < t <= Pi/2, and in case of a tie, minimize the angle t; a(n) = Y-coordinate of P(n).

The programs for A293540, there is no canonical definition to state claims against.
-/

/-! ## A293540.P15722264892980045243

`A292470(n+1)-A185284(2*n+1)`
-/

namespace A293540.P15722264892980045243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292470 (n + 1) - A185284 (2 * n + 1)

end

end A293540.P15722264892980045243

/-! ## A293540.P8747930995429896502

`A293681(n+1)-A185284(2*n+1)`
-/

namespace A293540.P8747930995429896502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293681 (n + 1) - A185284 (2 * n + 1)

end

end A293540.P8747930995429896502

/-! ## A293540.P9367734713684006671

`A293773(n+1)-A185284(2*n+1)`
-/

namespace A293540.P9367734713684006671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293773 (n + 1) - A185284 (2 * n + 1)

end

end A293540.P9367734713684006671

/-! ## A293540.P1207485281706605588

`A292470(xor(n+1, A185284(2*n+1)))`
-/

namespace A293540.P1207485281706605588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292470 (Int.xor (n + 1 : ℤ) (A185284 (2 * n + 1))).toNat

end

end A293540.P1207485281706605588

/-! ## A293540.P12090957459836240324

`xor(A185284(A001399(n)), A292470(n+1))`
-/

namespace A293540.P12090957459836240324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A001399 n).toNat) (A292470 (n + 1))

end

end A293540.P12090957459836240324

/-!
# A293543: a(n) = ceiling(Fibonacci(n)/3).

The programs for A293543, the canonical program `A293543.P12793580024818538781` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293543 has offset 0).

The definition of A293543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(A000045(n)/3)` (program `A293543.P12793580024818538781`, by `A293543.P12793580024818538781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293543.P12641558016570101953

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=3, a(7)=5, a(8)=7, a(9)=12`
-/

namespace A293543.P12641558016570101953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 2, 3, 5, 7, 12] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 8) - a (n - 9) - a (n - 10)

end

end A293543.P12641558016570101953

namespace A293543

/-- `a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` -/
def P12641558016570101953.Spec : Prop :=
  ∀ n, P12641558016570101953.a n = A293543 n

end A293543

/-! ## A293543.P12793580024818538781

`ceil(A000045(n)/3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293543

/-- `ceil(A000045(n)/3)` -/
def P12793580024818538781.Spec : Prop :=
  ∀ n, P12793580024818538781.a n = A293543 n

theorem P12793580024818538781.correct : P12793580024818538781.Spec := by
  intro n
  simp only [A293543]

end A293543

/-! ## A293543.P9671101831674665221

`A166486(n)+A004696(n)`
-/

namespace A293543.P9671101831674665221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + A004696 n

end

end A293543.P9671101831674665221

namespace A293543

/-- `A166486(n)+A004696(n)` -/
def P9671101831674665221.Spec : Prop :=
  ∀ n, P9671101831674665221.a n = A293543 n

end A293543

/-! ## A293543.P9963723331007899637

`A011655(A160079(n))+A004696(n)`
-/

namespace A293543.P9963723331007899637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A160079 n).toNat + A004696 n

end

end A293543.P9963723331007899637

namespace A293543

/-- `A011655(A160079(n))+A004696(n)` -/
def P9963723331007899637.Spec : Prop :=
  ∀ n, P9963723331007899637.a n = A293543 n

end A293543

/-! ## A293543.P6263066430976177440

`ceil(A293546(n)/2)`
-/

namespace A293543.P6263066430976177440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293546 n : ℚ) / 2⌉

end

end A293543.P6263066430976177440

namespace A293543

/-- `ceil(A293546(n)/2)` -/
def P6263066430976177440.Spec : Prop :=
  ∀ n, P6263066430976177440.a n = A293543 n

end A293543

/-! ## A293543.P8240050244304685908

`ceil(A293547(n)/2)`
-/

namespace A293543.P8240050244304685908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293547 n : ℚ) / 2⌉

end

end A293543.P8240050244304685908

namespace A293543

/-- `ceil(A293547(n)/2)` -/
def P8240050244304685908.Spec : Prop :=
  ∀ n, P8240050244304685908.a n = A293543 n

end A293543

/-! ## A293543.P2026076961228753674

`A293547(n)-A004696(n)`
-/

namespace A293543.P2026076961228753674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293547 n - A004696 n

end

end A293543.P2026076961228753674

namespace A293543

/-- `A293547(n)-A004696(n)` -/
def P2026076961228753674.Spec : Prop :=
  ∀ n, P2026076961228753674.a n = A293543 n

end A293543

/-! ## A293543.P15479859181358492308

`A293546(n)-A293544(n)`
-/

namespace A293543.P15479859181358492308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 n - A293544 n

end

end A293543.P15479859181358492308

namespace A293543

/-- `A293546(n)-A293544(n)` -/
def P15479859181358492308.Spec : Prop :=
  ∀ n, P15479859181358492308.a n = A293543 n

end A293543

/-! ## A293543.P6093122785725003247

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A293543.P6093122785725003247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A293543.P6093122785725003247

namespace A293543

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P6093122785725003247.Spec : Prop :=
  ∀ n, P6093122785725003247.a n = A293543 n

end A293543

/-! ## A293543.P8366074526797403137

`floor(A157725(n)/3)`
-/

namespace A293543.P8366074526797403137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157725 n : ℚ) / 3⌋

end

end A293543.P8366074526797403137

namespace A293543

/-- `floor(A157725(n)/3)` -/
def P8366074526797403137.Spec : Prop :=
  ∀ n, P8366074526797403137.a n = A293543 n

end A293543

/-! ## A293543.P12746154045699508278

`round(A001611(n)/3)`
-/

namespace A293543.P12746154045699508278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001611 n : ℚ) / 3)

end

end A293543.P12746154045699508278

namespace A293543

/-- `round(A001611(n)/3)` -/
def P12746154045699508278.Spec : Prop :=
  ∀ n, P12746154045699508278.a n = A293543 n

end A293543

/-! ## A293543.P11374165253205591529

`ceil(A212804(n+1)/3)`
-/

namespace A293543.P11374165253205591529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A212804 (n + 1) : ℚ) / 3⌉

end

end A293543.P11374165253205591529

namespace A293543

/-- `ceil(A212804(n+1)/3)` -/
def P11374165253205591529.Spec : Prop :=
  ∀ n, P11374165253205591529.a n = A293543 n

end A293543

/-! ## A293543.P8176996339248953376

`ceil(A103609(2*n)/3)`
-/

namespace A293543.P8176996339248953376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103609 (2 * n) : ℚ) / 3⌉

end

end A293543.P8176996339248953376

namespace A293543

/-- `ceil(A103609(2*n)/3)` -/
def P8176996339248953376.Spec : Prop :=
  ∀ n, P8176996339248953376.a n = A293543 n

end A293543

/-! ## A293543.P11317111678077527303

`A000045(n)-A293545(n)`
-/

namespace A293543.P11317111678077527303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293545 n

end

end A293543.P11317111678077527303

namespace A293543

/-- `A000045(n)-A293545(n)` -/
def P11317111678077527303.Spec : Prop :=
  ∀ n, P11317111678077527303.a n = A293543 n

end A293543

/-! ## A293543.P12433615604784085470

`ceil(A167816(n)/A167817(n))`
-/

namespace A293543.P12433615604784085470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A167816 n : ℚ) / (A167817 n : ℚ)⌉

end

end A293543.P12433615604784085470

namespace A293543

/-- `ceil(A167816(n)/A167817(n))` -/
def P12433615604784085470.Spec : Prop :=
  ∀ n, P12433615604784085470.a n = A293543 n

end A293543

/-! ## A293543.P8913914259920505566

`A001611(n)-(A293545(n)+1)`
-/

namespace A293543.P8913914259920505566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A293545 n + 1)

end

end A293543.P8913914259920505566

namespace A293543

/-- `A001611(n)-(A293545(n)+1)` -/
def P8913914259920505566.Spec : Prop :=
  ∀ n, P8913914259920505566.a n = A293543 n

end A293543

/-! ## A293543.P4226949901621117544

`A212804(n+1)-A293545(n)`
-/

namespace A293543.P4226949901621117544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293545 n

end

end A293543.P4226949901621117544

namespace A293543

/-- `A212804(n+1)-A293545(n)` -/
def P4226949901621117544.Spec : Prop :=
  ∀ n, P4226949901621117544.a n = A293543 n

end A293543

/-! ## A293543.P12015674853762421667

`A157725(n)-(A293545(n)+2)`
-/

namespace A293543.P12015674853762421667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - (A293545 n + 2)

end

end A293543.P12015674853762421667

namespace A293543

/-- `A157725(n)-(A293545(n)+2)` -/
def P12015674853762421667.Spec : Prop :=
  ∀ n, P12015674853762421667.a n = A293543 n

end A293543

/-! ## A293543.P15534602419630761166

`A103609(2*n)-A293545(n)`
-/

namespace A293543.P15534602419630761166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) - A293545 n

end

end A293543.P15534602419630761166

namespace A293543

/-- `A103609(2*n)-A293545(n)` -/
def P15534602419630761166.Spec : Prop :=
  ∀ n, P15534602419630761166.a n = A293543 n

end A293543

/-! ## A293543.P4197601793528248137

`ceil(lcm(A167808(n), A167816(n))/3)`
-/

namespace A293543.P4197601793528248137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (A167808 n) (A167816 n) : ℚ) / 3⌉

end

end A293543.P4197601793528248137

namespace A293543

/-- `ceil(lcm(A167808(n), A167816(n))/3)` -/
def P4197601793528248137.Spec : Prop :=
  ∀ n, P4197601793528248137.a n = A293543 n

end A293543

/-!
# A293544: a(n) = round(Fibonacci(n)/3).

The programs for A293544, the canonical program `A293544.P6679643900841193440` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293544 has offset 0).

The definition of A293544 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(A000045(n)/3)` (program `A293544.P6679643900841193440`, by `A293544.P6679643900841193440.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293544.P18187053484698964282

`a(n-1)+a(n-2)-a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A293544.P18187053484698964282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 2] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) + a (n - 5) + a (n - 6)

end

end A293544.P18187053484698964282

namespace A293544

/-- `a(n-1)+a(n-2)-a(n-4)+a(n-5)+a(n-6)` -/
def P18187053484698964282.Spec : Prop :=
  ∀ n, P18187053484698964282.a n = A293544 n

end A293544

/-! ## A293544.P6679643900841193440

`round(A000045(n)/3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293544

/-- `round(A000045(n)/3)` -/
def P6679643900841193440.Spec : Prop :=
  ∀ n, P6679643900841193440.a n = A293544 n

theorem P6679643900841193440.correct : P6679643900841193440.Spec := by
  intro n
  simp only [A293544]

end A293544

/-! ## A293544.P2750504333467681872

`A000045(n-2)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A293544.P2750504333467681872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A000045 (n - 2) - a (n - 4)

end

end A293544.P2750504333467681872

namespace A293544

/-- `A000045(n-2)-a(n-4)` -/
def P2750504333467681872.Spec : Prop :=
  ∀ n, P2750504333467681872.a n = A293544 n

end A293544

/-! ## A293544.P12212312459667633204

`floor(A293546(n)/2)`
-/

namespace A293544.P12212312459667633204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293546 n : ℚ) / 2⌋

end

end A293544.P12212312459667633204

namespace A293544

/-- `floor(A293546(n)/2)` -/
def P12212312459667633204.Spec : Prop :=
  ∀ n, P12212312459667633204.a n = A293544 n

end A293544

/-! ## A293544.P18143684210532950909

`ceil(A293545(n)/2)`
-/

namespace A293544.P18143684210532950909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293545 n : ℚ) / 2⌉

end

end A293544.P18143684210532950909

namespace A293544

/-- `ceil(A293545(n)/2)` -/
def P18143684210532950909.Spec : Prop :=
  ∀ n, P18143684210532950909.a n = A293544 n

end A293544

/-! ## A293544.P16240934962905716465

`A293545(n)-A004696(n)`
-/

namespace A293544.P16240934962905716465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n - A004696 n

end

end A293544.P16240934962905716465

namespace A293544

/-- `A293545(n)-A004696(n)` -/
def P16240934962905716465.Spec : Prop :=
  ∀ n, P16240934962905716465.a n = A293544 n

end A293544

/-! ## A293544.P11818571958071370314

`A293546(n)-A293543(n)`
-/

namespace A293544.P11818571958071370314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 n - A293543 n

end

end A293544.P11818571958071370314

namespace A293544

/-- `A293546(n)-A293543(n)` -/
def P11818571958071370314.Spec : Prop :=
  ∀ n, P11818571958071370314.a n = A293544 n

end A293544

/-! ## A293544.P16080687898214585107

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A293544.P16080687898214585107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A293544.P16080687898214585107

namespace A293544

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P16080687898214585107.Spec : Prop :=
  ∀ n, P16080687898214585107.a n = A293544 n

end A293544

/-! ## A293544.P3975810952215095443

`floor(A001611(n)/3)`
-/

namespace A293544.P3975810952215095443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n : ℚ) / 3⌋

end

end A293544.P3975810952215095443

namespace A293544

/-- `floor(A001611(n)/3)` -/
def P3975810952215095443.Spec : Prop :=
  ∀ n, P3975810952215095443.a n = A293544 n

end A293544

/-! ## A293544.P8699644714327453718

`round(A212804(n+1)/3)`
-/

namespace A293544.P8699644714327453718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A212804 (n + 1) : ℚ) / 3)

end

end A293544.P8699644714327453718

namespace A293544

/-- `round(A212804(n+1)/3)` -/
def P8699644714327453718.Spec : Prop :=
  ∀ n, P8699644714327453718.a n = A293544 n

end A293544

/-! ## A293544.P9841344007594900689

`round(A103609(2*n)/3)`
-/

namespace A293544.P9841344007594900689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103609 (2 * n) : ℚ) / 3)

end

end A293544.P9841344007594900689

namespace A293544

/-- `round(A103609(2*n)/3)` -/
def P9841344007594900689.Spec : Prop :=
  ∀ n, P9841344007594900689.a n = A293544 n

end A293544

/-! ## A293544.P146110368833181569

`A000045(n)-A293547(n)`
-/

namespace A293544.P146110368833181569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293547 n

end

end A293544.P146110368833181569

namespace A293544

/-- `A000045(n)-A293547(n)` -/
def P146110368833181569.Spec : Prop :=
  ∀ n, P146110368833181569.a n = A293544 n

end A293544

/-! ## A293544.P1787128287165079874

`round(lcm(A167808(n), A167816(n))/3)`
-/

namespace A293544.P1787128287165079874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lcm (A167808 n) (A167816 n) : ℚ) / 3)

end

end A293544.P1787128287165079874

namespace A293544

/-- `round(lcm(A167808(n), A167816(n))/3)` -/
def P1787128287165079874.Spec : Prop :=
  ∀ n, P1787128287165079874.a n = A293544 n

end A293544

/-! ## A293544.P14417657460854908703

`A000045(n)-(A293543(n)+A004696(n))`
-/

namespace A293544.P14417657460854908703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293543 n + A004696 n)

end

end A293544.P14417657460854908703

namespace A293544

/-- `A000045(n)-(A293543(n)+A004696(n))` -/
def P14417657460854908703.Spec : Prop :=
  ∀ n, P14417657460854908703.a n = A293544 n

end A293544

/-! ## A293544.P8221552822178894247

`A293545(n)+A293546(n)-A000045(n)`
-/

namespace A293544.P8221552822178894247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n + (A293546 n - A000045 n)

end

end A293544.P8221552822178894247

namespace A293544

/-- `A293545(n)+A293546(n)-A000045(n)` -/
def P8221552822178894247.Spec : Prop :=
  ∀ n, P8221552822178894247.a n = A293544 n

end A293544

/-! ## A293544.P15674069697038773133

`A212804(n+1)-(A293543(n)+A004696(n))`
-/

namespace A293544.P15674069697038773133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - (A293543 n + A004696 n)

end

end A293544.P15674069697038773133

namespace A293544

/-- `A212804(n+1)-(A293543(n)+A004696(n))` -/
def P15674069697038773133.Spec : Prop :=
  ∀ n, P15674069697038773133.a n = A293544 n

end A293544

/-! ## A293544.P3400191428719218406

`round(A053602(2*n)/3)`
-/

namespace A293544.P3400191428719218406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053602 (2 * n) : ℚ) / 3)

end

end A293544.P3400191428719218406

namespace A293544

/-- `round(A053602(2*n)/3)` -/
def P3400191428719218406.Spec : Prop :=
  ∀ n, P3400191428719218406.a n = A293544 n

end A293544

/-! ## A293544.P5525576694437734184

`round(A302126(2*n)/3)`
-/

namespace A293544.P5525576694437734184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A302126 (2 * n) : ℚ) / 3)

end

end A293544.P5525576694437734184

namespace A293544

/-- `round(A302126(2*n)/3)` -/
def P5525576694437734184.Spec : Prop :=
  ∀ n, P5525576694437734184.a n = A293544 n

end A293544

/-! ## A293544.P14682554880392956993

`round(A303427(2*n+1)/3)`
-/

namespace A293544.P14682554880392956993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A303427 (2 * n + 1) : ℚ) / 3)

end

end A293544.P14682554880392956993

namespace A293544

/-- `round(A303427(2*n+1)/3)` -/
def P14682554880392956993.Spec : Prop :=
  ∀ n, P14682554880392956993.a n = A293544 n

end A293544

/-! ## A293544.P2429371534761720078

`A000071(n+2)-(A293547(n)+A000071(n+1))`
-/

namespace A293544.P2429371534761720078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293547 n + A000071 (n + 1))

end

end A293544.P2429371534761720078

namespace A293544

/-- `A000071(n+2)-(A293547(n)+A000071(n+1))` -/
def P2429371534761720078.Spec : Prop :=
  ∀ n, P2429371534761720078.a n = A293544 n

end A293544

/-!
# A293545: a(n) is the greatest integer k such that k/Fibonacci(n) < 2/3.

The programs for A293545, the canonical program `A293545.P17599913452501897933` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293545 has offset 0).

The definition of A293545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293545.P17599913452501897933

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=3, a(6)=5, a(7)=8, a(8)=14, a(9)=22`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293545

/-- `a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` -/
def P17599913452501897933.Spec : Prop :=
  ∀ n, P17599913452501897933.a n = A293545 n

theorem P17599913452501897933.correct : P17599913452501897933.Spec := by
  intro n
  simp only [A293545]

end A293545

/-! ## A293545.P1278977640029625909

`floor(2*A000045(n)/3)`
-/

namespace A293545.P1278977640029625909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A000045 n : ℚ) / 3⌋

end

end A293545.P1278977640029625909

namespace A293545

/-- `floor(2*A000045(n)/3)` -/
def P1278977640029625909.Spec : Prop :=
  ∀ n, P1278977640029625909.a n = A293545 n

end A293545

/-! ## A293545.P8688243276032584864

`A293544(n)+A004696(n)`
-/

namespace A293545.P8688243276032584864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 n + A004696 n

end

end A293545.P8688243276032584864

namespace A293545

/-- `A293544(n)+A004696(n)` -/
def P8688243276032584864.Spec : Prop :=
  ∀ n, P8688243276032584864.a n = A293545 n

end A293545

/-! ## A293545.P15554753935457297071

`A293546(n)-A166486(n)`
-/

namespace A293545.P15554753935457297071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 n - A166486 n

end

end A293545.P15554753935457297071

namespace A293545

/-- `A293546(n)-A166486(n)` -/
def P15554753935457297071.Spec : Prop :=
  ∀ n, P15554753935457297071.a n = A293545 n

end A293545

/-! ## A293545.P7216941912786254900

`A000045(n)-A293543(n)`
-/

namespace A293545.P7216941912786254900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293543 n

end

end A293545.P7216941912786254900

namespace A293545

/-- `A000045(n)-A293543(n)` -/
def P7216941912786254900.Spec : Prop :=
  ∀ n, P7216941912786254900.a n = A293545 n

end A293545

/-! ## A293545.P1286215626016987293

`A212804(n+1)-A293543(n)`
-/

namespace A293545.P1286215626016987293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293543 n

end

end A293545.P1286215626016987293

namespace A293545

/-- `A212804(n+1)-A293543(n)` -/
def P1286215626016987293.Spec : Prop :=
  ∀ n, P1286215626016987293.a n = A293545 n

end A293545

/-! ## A293545.P16004917969426427329

`A157725(n)-(A293543(n)+2)`
-/

namespace A293545.P16004917969426427329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - (A293543 n + 2)

end

end A293545.P16004917969426427329

namespace A293545

/-- `A157725(n)-(A293543(n)+2)` -/
def P16004917969426427329.Spec : Prop :=
  ∀ n, P16004917969426427329.a n = A293545 n

end A293545

/-! ## A293545.P3524844954393325106

`floor(2*A167816(n)/A167817(n))`
-/

namespace A293545.P3524844954393325106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A167816 n : ℚ) / (A167817 n : ℚ))⌋

end

end A293545.P3524844954393325106

namespace A293545

/-- `floor(2*A167816(n)/A167817(n))` -/
def P3524844954393325106.Spec : Prop :=
  ∀ n, P3524844954393325106.a n = A293545 n

end A293545

/-! ## A293545.P13915391794040014679

`∑[A212804(abs(1-n))]-A293543(n)`
-/

namespace A293545.P13915391794040014679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A293543 n

end

end A293545.P13915391794040014679

namespace A293545

/-- `∑[A212804(abs(1-n))]-A293543(n)` -/
def P13915391794040014679.Spec : Prop :=
  ∀ n, P13915391794040014679.a n = A293545 n

end A293545

/-! ## A293545.P15843185726912287051

`floor(2*lcm(A167808(n), A167816(n))/3)`
-/

namespace A293545.P15843185726912287051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((Int.lcm (A167808 n) (A167816 n) : ℚ) / 3)⌋

end

end A293545.P15843185726912287051

namespace A293545

/-- `floor(2*lcm(A167808(n), A167816(n))/3)` -/
def P15843185726912287051.Spec : Prop :=
  ∀ n, P15843185726912287051.a n = A293545 n

end A293545

/-! ## A293545.P14432177598738303559

`A000045(n)-(A166486(n)+A004696(n))`
-/

namespace A293545.P14432177598738303559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A166486 n + A004696 n)

end

end A293545.P14432177598738303559

namespace A293545

/-- `A000045(n)-(A166486(n)+A004696(n))` -/
def P14432177598738303559.Spec : Prop :=
  ∀ n, P14432177598738303559.a n = A293545 n

end A293545

/-! ## A293545.P4574047108405746483

`lcm(A167808(n), A167816(n))-A293543(n)`
-/

namespace A293545.P4574047108405746483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A167808 n) (A167816 n) : ℤ) - A293543 n

end

end A293545.P4574047108405746483

namespace A293545

/-- `lcm(A167808(n), A167816(n))-A293543(n)` -/
def P4574047108405746483.Spec : Prop :=
  ∀ n, P4574047108405746483.a n = A293545 n

end A293545

/-! ## A293545.P16535713195940303328

`3*A167816(n)/A167817(n)-A293543(n)`
-/

namespace A293545.P16535713195940303328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A167816 n : ℚ) / (A167817 n : ℚ)) - (A293543 n : ℚ)

end

end A293545.P16535713195940303328

namespace A293545

/-- `3*A167816(n)/A167817(n)-A293543(n)` -/
def P16535713195940303328.Spec : Prop :=
  ∀ n, P16535713195940303328.a n = (A293545 n : ℚ)

end A293545

/-! ## A293545.P12307089659303597517

`floor(A000045(n+1)/(ϕ/2+ϕ))`
-/

namespace A293545.P12307089659303597517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 1) : ℝ) / (Real.goldenRatio / 2 + Real.goldenRatio)⌋

end

end A293545.P12307089659303597517

namespace A293545

/-- `floor(A000045(n+1)/(ϕ/2+ϕ))` -/
def P12307089659303597517.Spec : Prop :=
  ∀ n, P12307089659303597517.a n = A293545 n

end A293545

/-! ## A293545.P4760013767002744294

`∑[A212804(n)]-A212804(n)-A293543(n)`
-/

namespace A293545.P4760013767002744294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212804 n - A293543 n

end

end A293545.P4760013767002744294

namespace A293545

/-- `∑[A212804(n)]-A212804(n)-A293543(n)` -/
def P4760013767002744294.Spec : Prop :=
  ∀ n, P4760013767002744294.a n = A293545 n

end A293545

/-! ## A293545.P11735011931404005057

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A293545.P11735011931404005057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A293545.P11735011931404005057

namespace A293545

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P11735011931404005057.Spec : Prop :=
  ∀ n, P11735011931404005057.a n = A293545 n

end A293545

/-! ## A293545.P16036946635399453225

`floor(A055389(n)/3)`
-/

namespace A293545.P16036946635399453225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055389 n : ℚ) / 3⌋

end

end A293545.P16036946635399453225

namespace A293545

/-- `floor(A055389(n)/3)` -/
def P16036946635399453225.Spec : Prop :=
  ∀ n, P16036946635399453225.a n = A293545 n

end A293545

/-! ## A293545.P3891931948871502909

`floor(A062114(n)/3)`
-/

namespace A293545.P3891931948871502909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062114 n : ℚ) / 3⌋

end

end A293545.P3891931948871502909

namespace A293545

/-- `floor(A062114(n)/3)` -/
def P3891931948871502909.Spec : Prop :=
  ∀ n, P3891931948871502909.a n = A293545 n

end A293545

/-! ## A293545.P4261697866524038465

`floor(A006355(n+1)/3)`
-/

namespace A293545.P4261697866524038465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006355 (n + 1) : ℚ) / 3⌋

end

end A293545.P4261697866524038465

namespace A293545

/-- `floor(A006355(n+1)/3)` -/
def P4261697866524038465.Spec : Prop :=
  ∀ n, P4261697866524038465.a n = A293545 n

end A293545

/-! ## A293545.P10494506460345105594

`floor(A118658(n+1)/3)`
-/

namespace A293545.P10494506460345105594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A118658 (n + 1) : ℚ) / 3⌋

end

end A293545.P10494506460345105594

namespace A293545

/-- `floor(A118658(n+1)/3)` -/
def P10494506460345105594.Spec : Prop :=
  ∀ n, P10494506460345105594.a n = A293545 n

end A293545

/-!
# A293546: a(n) is the least integer k such that k/Fibonacci(n) > 2/3.

The programs for A293546, the canonical program `A293546.P1088660025506963075` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293546 has offset 0).

The definition of A293546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293546.P1088660025506963075

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=4, a(6)=6, a(7)=9, a(8)=14, a(9)=23`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293546

/-- `a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` -/
def P1088660025506963075.Spec : Prop :=
  ∀ n, P1088660025506963075.a n = A293546 n

theorem P1088660025506963075.correct : P1088660025506963075.Spec := by
  intro n
  simp only [A293546]

end A293546

/-! ## A293546.P1246879528687737365

`ceil(2*A000045(n)/3)`
-/

namespace A293546.P1246879528687737365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A000045 n : ℚ) / 3⌉

end

end A293546.P1246879528687737365

namespace A293546

/-- `ceil(2*A000045(n)/3)` -/
def P1246879528687737365.Spec : Prop :=
  ∀ n, P1246879528687737365.a n = A293546 n

end A293546

/-! ## A293546.P13718353916714092645

`A293545(n)+A166486(n)`
-/

namespace A293546.P13718353916714092645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n + A166486 n

end

end A293546.P13718353916714092645

namespace A293546

/-- `A293545(n)+A166486(n)` -/
def P13718353916714092645.Spec : Prop :=
  ∀ n, P13718353916714092645.a n = A293546 n

end A293546

/-! ## A293546.P1631898574999127265

`A293544(n)+A293543(n)`
-/

namespace A293546.P1631898574999127265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293544 n + A293543 n

end

end A293546.P1631898574999127265

namespace A293546

/-- `A293544(n)+A293543(n)` -/
def P1631898574999127265.Spec : Prop :=
  ∀ n, P1631898574999127265.a n = A293546 n

end A293546

/-! ## A293546.P13638931133822946283

`A082115(n)+2*A004696(n)`
-/

namespace A293546.P13638931133822946283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 n + 2 * A004696 n

end

end A293546.P13638931133822946283

namespace A293546

/-- `A082115(n)+2*A004696(n)` -/
def P13638931133822946283.Spec : Prop :=
  ∀ n, P13638931133822946283.a n = A293546 n

end A293546

/-! ## A293546.P6354813777672329069

`ceil(A293543(n)+A293545(n)/2)`
-/

namespace A293546.P6354813777672329069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A293543 n : ℚ) + (A293545 n : ℚ) / 2⌉

end

end A293546.P6354813777672329069

namespace A293546

/-- `ceil(A293543(n)+A293545(n)/2)` -/
def P6354813777672329069.Spec : Prop :=
  ∀ n, P6354813777672329069.a n = A293546 n

end A293546

/-! ## A293546.P10716193260132390155

`floor(2*A001611(n)/3)`
-/

namespace A293546.P10716193260132390155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A001611 n : ℚ) / 3)⌋

end

end A293546.P10716193260132390155

namespace A293546

/-- `floor(2*A001611(n)/3)` -/
def P10716193260132390155.Spec : Prop :=
  ∀ n, P10716193260132390155.a n = A293546 n

end A293546

/-! ## A293546.P8576141780763663233

`floor(4*(A000045(abs(n-2*n))+1)/6)`
-/

namespace A293546.P8576141780763663233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((A000045 |(n : ℤ) - (2 * n : ℤ)|.toNat + 1 : ℚ) / 6)⌋

end

end A293546.P8576141780763663233

namespace A293546

/-- `floor(4*(A000045(abs(n-2*n))+1)/6)` -/
def P8576141780763663233.Spec : Prop :=
  ∀ n, P8576141780763663233.a n = A293546 n

end A293546

/-! ## A293546.P8126338688248359949

`A000045(n)-A004696(n)`
-/

namespace A293546.P8126338688248359949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A004696 n

end

end A293546.P8126338688248359949

namespace A293546

/-- `A000045(n)-A004696(n)` -/
def P8126338688248359949.Spec : Prop :=
  ∀ n, P8126338688248359949.a n = A293546 n

end A293546

/-! ## A293546.P8754472427437975020

`A212804(n+1)-A004696(n)`
-/

namespace A293546.P8754472427437975020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A004696 n

end

end A293546.P8754472427437975020

namespace A293546

/-- `A212804(n+1)-A004696(n)` -/
def P8754472427437975020.Spec : Prop :=
  ∀ n, P8754472427437975020.a n = A293546 n

end A293546

/-! ## A293546.P3835906193706008001

`ceil(2*A167816(n)/A167817(n))`
-/

namespace A293546.P3835906193706008001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A167816 n : ℚ) / (A167817 n : ℚ))⌉

end

end A293546.P3835906193706008001

namespace A293546

/-- `ceil(2*A167816(n)/A167817(n))` -/
def P3835906193706008001.Spec : Prop :=
  ∀ n, P3835906193706008001.a n = A293546 n

end A293546

/-! ## A293546.P526754074052838134

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=2, a(1)=2, a(2)=0`
-/

namespace A293546.P526754074052838134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A293546.P526754074052838134

namespace A293546

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P526754074052838134.Spec : Prop :=
  ∀ n, P526754074052838134.a n = A293546 n

end A293546

/-! ## A293546.P17118331815632240225

`round(A001588(n)/3)`
-/

namespace A293546.P17118331815632240225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001588 n : ℚ) / 3)

end

end A293546.P17118331815632240225

namespace A293546

/-- `round(A001588(n)/3)` -/
def P17118331815632240225.Spec : Prop :=
  ∀ n, P17118331815632240225.a n = A293546 n

end A293546

/-! ## A293546.P357529374880011962

`ceil(A006355(n+1)/3)`
-/

namespace A293546.P357529374880011962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006355 (n + 1) : ℚ) / 3⌉

end

end A293546.P357529374880011962

namespace A293546

/-- `ceil(A006355(n+1)/3)` -/
def P357529374880011962.Spec : Prop :=
  ∀ n, P357529374880011962.a n = A293546 n

end A293546

/-! ## A293546.P17082090865806024184

`ceil(A118658(n+1)/3)`
-/

namespace A293546.P17082090865806024184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118658 (n + 1) : ℚ) / 3⌉

end

end A293546.P17082090865806024184

namespace A293546

/-- `ceil(A118658(n+1)/3)` -/
def P17082090865806024184.Spec : Prop :=
  ∀ n, P17082090865806024184.a n = A293546 n

end A293546

/-! ## A293546.P4416818910984048593

`A000071(n+2)-(A004696(n)+A000071(n+1))`
-/

namespace A293546.P4416818910984048593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A004696 n + A000071 (n + 1))

end

end A293546.P4416818910984048593

namespace A293546

/-- `A000071(n+2)-(A004696(n)+A000071(n+1))` -/
def P4416818910984048593.Spec : Prop :=
  ∀ n, P4416818910984048593.a n = A293546 n

end A293546

/-! ## A293546.P12376807017681229809

`ceil(A049673(n)/A049680(n))`
-/

namespace A293546.P12376807017681229809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049673 n : ℚ) / (A049680 n : ℚ)⌉

end

end A293546.P12376807017681229809

namespace A293546

/-- `ceil(A049673(n)/A049680(n))` -/
def P12376807017681229809.Spec : Prop :=
  ∀ n, P12376807017681229809.a n = A293546 n

end A293546

/-!
# A293547: a(n) is the integer k that minimizes |k/Fibonacci(n) - 2/3|.

The programs for A293547, the canonical program `A293547.P10654649192625321367` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293547 has offset 0).

The definition of A293547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293547.P10654649192625321367

`a(n-1)+a(n-2)-a(n-4)+a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293547

/-- `a(n-1)+a(n-2)-a(n-4)+a(n-5)+a(n-6)` -/
def P10654649192625321367.Spec : Prop :=
  ∀ n, P10654649192625321367.a n = A293547 n

theorem P10654649192625321367.correct : P10654649192625321367.Spec := by
  intro n
  simp only [A293547]

end A293547

/-! ## A293547.P17773273745999908424

`floor(1/2+2*A000045(n)/3)`
-/

namespace A293547.P17773273745999908424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 : ℚ) / 2 + (2 * A000045 n : ℚ) / 3⌋

end

end A293547.P17773273745999908424

namespace A293547

/-- `floor(1/2+2*A000045(n)/3)` -/
def P17773273745999908424.Spec : Prop :=
  ∀ n, P17773273745999908424.a n = A293547 n

end A293547

/-! ## A293547.P5408193499814101117

`A293543(n)+A004696(n)`
-/

namespace A293547.P5408193499814101117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 n + A004696 n

end

end A293547.P5408193499814101117

namespace A293547

/-- `A293543(n)+A004696(n)` -/
def P5408193499814101117.Spec : Prop :=
  ∀ n, P5408193499814101117.a n = A293547 n

end A293547

/-! ## A293547.P10514642060908778075

`A166486(n)+2*A004696(n)`
-/

namespace A293547.P10514642060908778075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + 2 * A004696 n

end

end A293547.P10514642060908778075

namespace A293547

/-- `A166486(n)+2*A004696(n)` -/
def P10514642060908778075.Spec : Prop :=
  ∀ n, P10514642060908778075.a n = A293547 n

end A293547

/-! ## A293547.P18392055120358313161

`2*A293543(n)-A166486(n)`
-/

namespace A293547.P18392055120358313161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293543 n - A166486 n

end

end A293547.P18392055120358313161

namespace A293547

/-- `2*A293543(n)-A166486(n)` -/
def P18392055120358313161.Spec : Prop :=
  ∀ n, P18392055120358313161.a n = A293547 n

end A293547

/-! ## A293547.P2737268960796564977

`floor(A293543(n)+A293545(n)/2)`
-/

namespace A293547.P2737268960796564977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293543 n : ℚ) + (A293545 n : ℚ) / 2⌋

end

end A293547.P2737268960796564977

namespace A293547

/-- `floor(A293543(n)+A293545(n)/2)` -/
def P2737268960796564977.Spec : Prop :=
  ∀ n, P2737268960796564977.a n = A293547 n

end A293547

/-! ## A293547.P9587666518239058668

`round(2/3*A000045(n))`
-/

namespace A293547.P9587666518239058668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) / 3 * (A000045 n : ℚ))

end

end A293547.P9587666518239058668

namespace A293547

/-- `round(2/3*A000045(n))` -/
def P9587666518239058668.Spec : Prop :=
  ∀ n, P9587666518239058668.a n = A293547 n

end A293547

/-! ## A293547.P16153821331467462604

`A000045(n)-A293544(n)`
-/

namespace A293547.P16153821331467462604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A293544 n

end

end A293547.P16153821331467462604

namespace A293547

/-- `A000045(n)-A293544(n)` -/
def P16153821331467462604.Spec : Prop :=
  ∀ n, P16153821331467462604.a n = A293547 n

end A293547

/-! ## A293547.P4559714095434837090

`A212804(n+1)-A293544(n)`
-/

namespace A293547.P4559714095434837090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) - A293544 n

end

end A293547.P4559714095434837090

namespace A293547

/-- `A212804(n+1)-A293544(n)` -/
def P4559714095434837090.Spec : Prop :=
  ∀ n, P4559714095434837090.a n = A293547 n

end A293547

/-! ## A293547.P2987805195333825392

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=1, a(1)=2, a(2)=0`
-/

namespace A293547.P2987805195333825392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A293547.P2987805195333825392

namespace A293547

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P2987805195333825392.Spec : Prop :=
  ∀ n, P2987805195333825392.a n = A293547 n

end A293547

/-! ## A293547.P10255857056168165582

`floor(A001588(n)/3)`
-/

namespace A293547.P10255857056168165582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001588 n : ℚ) / 3⌋

end

end A293547.P10255857056168165582

namespace A293547

/-- `floor(A001588(n)/3)` -/
def P10255857056168165582.Spec : Prop :=
  ∀ n, P10255857056168165582.a n = A293547 n

end A293547

/-! ## A293547.P6980082679009139953

`round(A055389(n)/3)`
-/

namespace A293547.P6980082679009139953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A055389 n : ℚ) / 3)

end

end A293547.P6980082679009139953

namespace A293547

/-- `round(A055389(n)/3)` -/
def P6980082679009139953.Spec : Prop :=
  ∀ n, P6980082679009139953.a n = A293547 n

end A293547

/-! ## A293547.P1986705830298300542

`round(A006355(n+1)/3)`
-/

namespace A293547.P1986705830298300542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006355 (n + 1) : ℚ) / 3)

end

end A293547.P1986705830298300542

namespace A293547

/-- `round(A006355(n+1)/3)` -/
def P1986705830298300542.Spec : Prop :=
  ∀ n, P1986705830298300542.a n = A293547 n

end A293547

/-! ## A293547.P2201589285829331757

`round(A118658(n+1)/3)`
-/

namespace A293547.P2201589285829331757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A118658 (n + 1) : ℚ) / 3)

end

end A293547.P2201589285829331757

namespace A293547

/-- `round(A118658(n+1)/3)` -/
def P2201589285829331757.Spec : Prop :=
  ∀ n, P2201589285829331757.a n = A293547 n

end A293547

/-! ## A293547.P9134945939059125711

`floor((A198834(n+2)+1)/3)`
-/

namespace A293547.P9134945939059125711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198834 (n + 2) + 1 : ℚ) / 3⌋

end

end A293547.P9134945939059125711

namespace A293547

/-- `floor((A198834(n+2)+1)/3)` -/
def P9134945939059125711.Spec : Prop :=
  ∀ n, P9134945939059125711.a n = A293547 n

end A293547

/-! ## A293547.P18030708877678074447

`floor((2*(A001611(n)-1)+1)/3)`
-/

namespace A293547.P18030708877678074447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A001611 n - 1) + 1 : ℚ) / 3⌋

end

end A293547.P18030708877678074447

namespace A293547

/-- `floor((2*(A001611(n)-1)+1)/3)` -/
def P18030708877678074447.Spec : Prop :=
  ∀ n, P18030708877678074447.a n = A293547 n

end A293547

/-! ## A293547.P102537352083645761

`A000071(n+2)-(A293544(n)+A000071(n+1))`
-/

namespace A293547.P102537352083645761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2) - (A293544 n + A000071 (n + 1))

end

end A293547.P102537352083645761

namespace A293547

/-- `A000071(n+2)-(A293544(n)+A000071(n+1))` -/
def P102537352083645761.Spec : Prop :=
  ∀ n, P102537352083645761.a n = A293547 n

end A293547

/-! ## A293547.P12795923193575664500

`round(A022087(n)/6)`
-/

namespace A293547.P12795923193575664500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022087 n : ℚ) / 6)

end

end A293547.P12795923193575664500

namespace A293547

/-- `round(A022087(n)/6)` -/
def P12795923193575664500.Spec : Prop :=
  ∀ n, P12795923193575664500.a n = A293547 n

end A293547

/-!
# A293548: Expansion of Product_{k>=2} 1/(1 - x^k)^omega(k), where omega(k) is the number of distinct primes dividing k (A001221).

The programs for A293548, there is no canonical definition to state claims against.
-/

/-! ## A293548.P2140103274997052977

`A001996(n)+Δ[A308997(A043320(n+1))]`
-/

namespace A293548.P2140103274997052977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308997 (A043320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n + (f1 (n + 1) - f1 n)

end

end A293548.P2140103274997052977

/-! ## A293548.P12925935107397465884

`A001996(n)+Δ[A308997(A044917(n+1))]`
-/

namespace A293548.P12925935107397465884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308997 (A044917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n + (f1 (n + 1) - f1 n)

end

end A293548.P12925935107397465884

/-! ## A293548.P16159981422360965336

`A060026(n)+Δ[A308998(A043320(n+1))]`
-/

namespace A293548.P16159981422360965336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A043320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060026 n + (f1 (n + 1) - f1 n)

end

end A293548.P16159981422360965336

/-! ## A293548.P13492320115979963744

`A060026(n)+Δ[A308998(A044917(n+1))]`
-/

namespace A293548.P13492320115979963744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308998 (A044917 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060026 n + (f1 (n + 1) - f1 n)

end

end A293548.P13492320115979963744

/-!
# A293550: a(n) = Sum_{k=0..n} k^3*binomial(2*n-k,n).

The programs for A293550, there is no canonical definition to state claims against.
-/

/-! ## A293550.P17908819712416606633

`A046902(A057427(n)*A090288(n))`
-/

namespace A293550.P17908819712416606633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A057427 n * A090288 n).toNat

end

end A293550.P17908819712416606633

/-! ## A293550.P10498076343105772551

`A046902(A090288(n)*A178334(n))`
-/

namespace A293550.P10498076343105772551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A090288 n * A178334 n).toNat

end

end A293550.P10498076343105772551

/-! ## A293550.P8612051903086934800

`A046902(A090288(n)%A102909(n))`
-/

namespace A293550.P8612051903086934800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (Int.tmod (A090288 n) (A102909 n)).toNat

end

end A293550.P8612051903086934800

/-! ## A293550.P8107558644842921631

`A046902(A090288(n))%A233328(n)`
-/

namespace A293550.P8107558644842921631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046902 (A090288 n).toNat) (A233328 n)

end

end A293550.P8107558644842921631

/-! ## A293550.P353511665138908788

`A046902(lcm(A090288(n), A178489(n)))`
-/

namespace A293550.P353511665138908788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (Int.lcm (A090288 n) (A178489 n))

end

end A293550.P353511665138908788

/-! ## A293550.P14973129668338621199

`A046902(A090288(n)*A178489(n))`
-/

namespace A293550.P14973129668338621199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046902 (A090288 n * A178489 n).toNat

end

end A293550.P14973129668338621199

/-!
# A293551: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of exp(Sum_{j>=1} x^j/(j*(1 - x^j)^k)).

The programs for A293551, there is no canonical definition to state claims against.
-/

/-! ## A293551.P9269869743789076566

`or(A010054(A375138(n+1)), A096751(n))`
-/

namespace A293551.P9269869743789076566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A375138 (n + 1)).toNat) (A096751 n)

end

end A293551.P9269869743789076566

/-! ## A293551.P17831937951189977474

`or(A010054(A065459(3*n)), A096751(n))`
-/

namespace A293551.P17831937951189977474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A065459 (3 * n)).toNat) (A096751 n)

end

end A293551.P17831937951189977474

/-!
# A293552: a(n) is the least integer k such that k/Fibonacci(n) > 1/4.

The programs for A293552, the canonical program `A293552.P15076016661121549983` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293552 has offset 0).

The definition of A293552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293552.P15076016661121549983

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=2, a(7)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293552

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P15076016661121549983.Spec : Prop :=
  ∀ n, P15076016661121549983.a n = A293552 n

theorem P15076016661121549983.correct : P15076016661121549983.Spec := by
  intro n
  simp only [A293552]

end A293552

/-! ## A293552.P13924736881833148768

`ceil(A000045(n)/4)`
-/

namespace A293552.P13924736881833148768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 n : ℚ) / 4⌉

end

end A293552.P13924736881833148768

namespace A293552

/-- `ceil(A000045(n)/4)` -/
def P13924736881833148768.Spec : Prop :=
  ∀ n, P13924736881833148768.a n = A293552 n

end A293552

/-! ## A293552.P3167174728611690941

`A097325(n)+A004697(n)`
-/

namespace A293552.P3167174728611690941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n + A004697 n

end

end A293552.P3167174728611690941

namespace A293552

/-- `A097325(n)+A004697(n)` -/
def P3167174728611690941.Spec : Prop :=
  ∀ n, P3167174728611690941.a n = A293552 n

end A293552

/-! ## A293552.P5919743076738110403

`ceil(A173173(n)/2)`
-/

namespace A293552.P5919743076738110403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173173 n : ℚ) / 2⌉

end

end A293552.P5919743076738110403

namespace A293552

/-- `ceil(A173173(n)/2)` -/
def P5919743076738110403.Spec : Prop :=
  ∀ n, P5919743076738110403.a n = A293552 n

end A293552

/-! ## A293552.P14610680964211660182

`ceil(A173673(2*n+1)/2)`
-/

namespace A293552.P14610680964211660182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173673 (2 * n + 1) : ℚ) / 2⌉

end

end A293552.P14610680964211660182

namespace A293552

/-- `ceil(A173673(2*n+1)/2)` -/
def P14610680964211660182.Spec : Prop :=
  ∀ n, P14610680964211660182.a n = A293552 n

end A293552

/-! ## A293552.P11884571036333073992

`A173173(n)-A293553(n)`
-/

namespace A293552.P11884571036333073992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n - A293553 n

end

end A293552.P11884571036333073992

namespace A293552

/-- `A173173(n)-A293553(n)` -/
def P11884571036333073992.Spec : Prop :=
  ∀ n, P11884571036333073992.a n = A293552 n

end A293552

/-! ## A293552.P13919193482969163966

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=3, a(1)=1, a(2)=0`
-/

namespace A293552.P13919193482969163966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A293552.P13919193482969163966

namespace A293552

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P13919193482969163966.Spec : Prop :=
  ∀ n, P13919193482969163966.a n = A293552 n

end A293552

/-! ## A293552.P7682121815365766168

`round(A001611(n)/4)`
-/

namespace A293552.P7682121815365766168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001611 n : ℚ) / 4)

end

end A293552.P7682121815365766168

namespace A293552

/-- `round(A001611(n)/4)` -/
def P7682121815365766168.Spec : Prop :=
  ∀ n, P7682121815365766168.a n = A293552 n

end A293552

/-! ## A293552.P2329964482953411039

`round(round(A212804(n+1)/2)/2)`
-/

namespace A293552.P2329964482953411039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A212804 (n + 1) : ℚ) / 2) : ℚ) / 2)

end

end A293552.P2329964482953411039

namespace A293552

/-- `round(round(A212804(n+1)/2)/2)` -/
def P2329964482953411039.Spec : Prop :=
  ∀ n, P2329964482953411039.a n = A293552 n

end A293552

/-! ## A293552.P11644481727730151688

`ceil(lcm(A167808(n), A167816(n))/4)`
-/

namespace A293552.P11644481727730151688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (A167808 n) (A167816 n) : ℚ) / 4⌉

end

end A293552.P11644481727730151688

namespace A293552

/-- `ceil(lcm(A167808(n), A167816(n))/4)` -/
def P11644481727730151688.Spec : Prop :=
  ∀ n, P11644481727730151688.a n = A293552 n

end A293552

/-! ## A293552.P8942505949645741784

`A000045(n)-(A293553(n)+A004695(n))`
-/

namespace A293552.P8942505949645741784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293553 n + A004695 n)

end

end A293552.P8942505949645741784

namespace A293552

/-- `A000045(n)-(A293553(n)+A004695(n))` -/
def P8942505949645741784.Spec : Prop :=
  ∀ n, P8942505949645741784.a n = A293552 n

end A293552

/-! ## A293552.P590038125597585835

`ceil(A286311(n)/6)`
-/

namespace A293552.P590038125597585835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286311 n : ℚ) / 6⌉

end

end A293552.P590038125597585835

namespace A293552

/-- `ceil(A286311(n)/6)` -/
def P590038125597585835.Spec : Prop :=
  ∀ n, P590038125597585835.a n = A293552 n

end A293552

/-! ## A293552.P845807860143226797

`round((A062114(n)+3)/8)`
-/

namespace A293552.P845807860143226797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062114 n + 3 : ℚ) / 8)

end

end A293552.P845807860143226797

namespace A293552

/-- `round((A062114(n)+3)/8)` -/
def P845807860143226797.Spec : Prop :=
  ∀ n, P845807860143226797.a n = A293552 n

end A293552

/-! ## A293552.P7914280652841992061

`abs(round((Δ[A000045(n+1)]+1)/4))`
-/

namespace A293552.P7914280652841992061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n + 1 : ℚ) / 4)|

end

end A293552.P7914280652841992061

namespace A293552

/-- `abs(round((Δ[A000045(n+1)]+1)/4))` -/
def P7914280652841992061.Spec : Prop :=
  ∀ n, P7914280652841992061.a n = A293552 n

end A293552

/-! ## A293552.P8534290758031023540

`ceil(gcd(A001654(2*n), A001654(n))/4)`
-/

namespace A293552.P8534290758031023540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd (A001654 (2 * n)) (A001654 n) : ℚ) / 4⌉

end

end A293552.P8534290758031023540

namespace A293552

/-- `ceil(gcd(A001654(2*n), A001654(n))/4)` -/
def P8534290758031023540.Spec : Prop :=
  ∀ n, P8534290758031023540.a n = A293552 n

end A293552

/-!
# A293553: a(n) is the integer k that minimizes |k/Fibonacci(n) - 1/4|.

The programs for A293553, the canonical program `A293553.P4957519182201626355` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293553 has offset 0).

The definition of A293553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293553.P4957519182201626355

`a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=2, a(7)=3`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293553

/-- `a(n-1)+a(n-2)+a(n-6)-a(n-7)-a(n-8)` -/
def P4957519182201626355.Spec : Prop :=
  ∀ n, P4957519182201626355.a n = A293553 n

theorem P4957519182201626355.correct : P4957519182201626355.Spec := by
  intro n
  simp only [A293553]

end A293553

/-! ## A293553.P7145473242766593537

`A293014(n)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293553.P7145473242766593537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A293014 n + a (n - 3)

end

end A293553.P7145473242766593537

namespace A293553

/-- `A293014(n)+a(n-3)` -/
def P7145473242766593537.Spec : Prop :=
  ∀ n, P7145473242766593537.a n = A293553 n

end A293553

/-! ## A293553.P18050596969054619723

`floor(A173173(n)/2)`
-/

namespace A293553.P18050596969054619723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173173 n : ℚ) / 2⌋

end

end A293553.P18050596969054619723

namespace A293553

/-- `floor(A173173(n)/2)` -/
def P18050596969054619723.Spec : Prop :=
  ∀ n, P18050596969054619723.a n = A293553 n

end A293553

/-! ## A293553.P3222348971818256695

`floor(A293505(n)/2)`
-/

namespace A293553.P3222348971818256695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293505 n : ℚ) / 2⌋

end

end A293553.P3222348971818256695

namespace A293553

/-- `floor(A293505(n)/2)` -/
def P3222348971818256695.Spec : Prop :=
  ∀ n, P3222348971818256695.a n = A293553 n

end A293553

/-! ## A293553.P6515162466956711583

`floor(A293014(n+2)/2)`
-/

namespace A293553.P6515162466956711583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293014 (n + 2) : ℚ) / 2⌋

end

end A293553.P6515162466956711583

namespace A293553

/-- `floor(A293014(n+2)/2)` -/
def P6515162466956711583.Spec : Prop :=
  ∀ n, P6515162466956711583.a n = A293553 n

end A293553

/-! ## A293553.P617542685025001736

`floor(A173673(2*n+1)/2)`
-/

namespace A293553.P617542685025001736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173673 (2 * n + 1) : ℚ) / 2⌋

end

end A293553.P617542685025001736

namespace A293553

/-- `floor(A173673(2*n+1)/2)` -/
def P617542685025001736.Spec : Prop :=
  ∀ n, P617542685025001736.a n = A293553 n

end A293553

/-! ## A293553.P14872293502950288993

`A173173(n)-A293552(n)`
-/

namespace A293553.P14872293502950288993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n - A293552 n

end

end A293553.P14872293502950288993

namespace A293553

/-- `A173173(n)-A293552(n)` -/
def P14872293502950288993.Spec : Prop :=
  ∀ n, P14872293502950288993.a n = A293553 n

end A293553

/-! ## A293553.P12656391614024857989

`floor(∑[a(n-1)+a(n-2)]/4)` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A293553.P12656391614024857989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4⌋

end

end A293553.P12656391614024857989

namespace A293553

/-- `floor(∑[a(n-1)+a(n-2)]/4)` -/
def P12656391614024857989.Spec : Prop :=
  ∀ n, P12656391614024857989.a n = A293553 n

end A293553

/-! ## A293553.P10538461263633981668

`floor(A001611(n)/4)`
-/

namespace A293553.P10538461263633981668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001611 n : ℚ) / 4⌋

end

end A293553.P10538461263633981668

namespace A293553

/-- `floor(A001611(n)/4)` -/
def P10538461263633981668.Spec : Prop :=
  ∀ n, P10538461263633981668.a n = A293553 n

end A293553

/-! ## A293553.P13910970681135856258

`floor(A008346(n)/4)`
-/

namespace A293553.P13910970681135856258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008346 n : ℚ) / 4⌋

end

end A293553.P13910970681135856258

namespace A293553

/-- `floor(A008346(n)/4)` -/
def P13910970681135856258.Spec : Prop :=
  ∀ n, P13910970681135856258.a n = A293553 n

end A293553

/-! ## A293553.P6957383963621635321

`floor((A000045(n)+1)/4)`
-/

namespace A293553.P6957383963621635321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n + 1 : ℚ) / 4⌋

end

end A293553.P6957383963621635321

namespace A293553

/-- `floor((A000045(n)+1)/4)` -/
def P6957383963621635321.Spec : Prop :=
  ∀ n, P6957383963621635321.a n = A293553 n

end A293553

/-! ## A293553.P589843303943858758

`floor((A212804(n+1)+1)/4)`
-/

namespace A293553.P589843303943858758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A212804 (n + 1) + 1 : ℚ) / 4⌋

end

end A293553.P589843303943858758

namespace A293553

/-- `floor((A212804(n+1)+1)/4)` -/
def P589843303943858758.Spec : Prop :=
  ∀ n, P589843303943858758.a n = A293553 n

end A293553

/-! ## A293553.P9381385798782365827

`floor(∑[A000045(abs(2-n))]/4)`
-/

namespace A293553.P9381385798782365827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A293553.P9381385798782365827

namespace A293553

/-- `floor(∑[A000045(abs(2-n))]/4)` -/
def P9381385798782365827.Spec : Prop :=
  ∀ n, P9381385798782365827.a n = A293553 n

end A293553

/-! ## A293553.P5662829988041032241

`floor(∑[A212804(A028310(n)-1)]/4)`
-/

namespace A293553.P5662829988041032241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A293553.P5662829988041032241

namespace A293553

/-- `floor(∑[A212804(A028310(n)-1)]/4)` -/
def P5662829988041032241.Spec : Prop :=
  ∀ n, P5662829988041032241.a n = A293553 n

end A293553

/-! ## A293553.P2636025761703103915

`floor((lcm(A167808(n), A167816(n))+1)/4)`
-/

namespace A293553.P2636025761703103915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (A167808 n) (A167816 n) + 1 : ℚ) / 4⌋

end

end A293553.P2636025761703103915

namespace A293553

/-- `floor((lcm(A167808(n), A167816(n))+1)/4)` -/
def P2636025761703103915.Spec : Prop :=
  ∀ n, P2636025761703103915.a n = A293553 n

end A293553

/-! ## A293553.P8528061094042273542

`floor((2-(n-A000045(n))-A024000(n))/4)`
-/

namespace A293553.P8528061094042273542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 - ((n : ℤ) - A000045 n) - A024000 n : ℚ) / 4⌋

end

end A293553.P8528061094042273542

namespace A293553

/-- `floor((2-(n-A000045(n))-A024000(n))/4)` -/
def P8528061094042273542.Spec : Prop :=
  ∀ n, P8528061094042273542.a n = A293553 n

end A293553

/-! ## A293553.P16406868319219559781

`A000045(n)-(A293552(n)+A004695(n))`
-/

namespace A293553.P16406868319219559781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - (A293552 n + A004695 n)

end

end A293553.P16406868319219559781

namespace A293553

/-- `A000045(n)-(A293552(n)+A004695(n))` -/
def P16406868319219559781.Spec : Prop :=
  ∀ n, P16406868319219559781.a n = A293553 n

end A293553

/-! ## A293553.P1191221764339432496

`round(A109541(n+3)/6)`
-/

namespace A293553.P1191221764339432496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109541 (n + 3) : ℚ) / 6)

end

end A293553.P1191221764339432496

namespace A293553

/-- `round(A109541(n+3)/6)` -/
def P1191221764339432496.Spec : Prop :=
  ∀ n, P1191221764339432496.a n = A293553 n

end A293553

/-! ## A293553.P10694975731255825090

`round(A062114(n)/8)`
-/

namespace A293553.P10694975731255825090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A062114 n : ℚ) / 8)

end

end A293553.P10694975731255825090

namespace A293553

/-- `round(A062114(n)/8)` -/
def P10694975731255825090.Spec : Prop :=
  ∀ n, P10694975731255825090.a n = A293553 n

end A293553

/-! ## A293553.P16795007076038238855

`round((Δ[A000045(n+1)]-1)/4)`
-/

namespace A293553.P16795007076038238855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n - 1 : ℚ) / 4)

end

end A293553.P16795007076038238855

namespace A293553

/-- `round((Δ[A000045(n+1)]-1)/4)` -/
def P16795007076038238855.Spec : Prop :=
  ∀ n, P16795007076038238855.a n = A293553 n

end A293553

/-!
# A293554: a(n) = [x^n] exp(Sum_{k>=1} x^k/(k*(1 - x^k)^n)).

The programs for A293554, there is no canonical definition to state claims against.
-/

/-! ## A293554.P13671414081173222500

`A293551(∑[4*n])`
-/

namespace A293554.P13671414081173222500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293554.P13671414081173222500

/-! ## A293554.P6590676452944509099

`or(A000007(n), A293551((n+1)*2*n))`
-/

namespace A293554.P6590676452944509099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293551 ((n + 1) * (2 * n)))

end

end A293554.P6590676452944509099

/-! ## A293554.P2669987687622444307

`gcd(A000038(n), A293551(A046092(n)))`
-/

namespace A293554.P2669987687622444307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293551 (A046092 n).toNat)

end

end A293554.P2669987687622444307

/-! ## A293554.P795019009547585391

`A093178(2*n)*A293551(A046092(n))`
-/

namespace A293554.P795019009547585391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A293551 (A046092 n).toNat

end

end A293554.P795019009547585391

/-! ## A293554.P12545791950826462084

`A007318(C(n, 2))*A293551(A046092(n))`
-/

namespace A293554.P12545791950826462084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A293551 (A046092 n).toNat

end

end A293554.P12545791950826462084

/-! ## A293554.P3823182422460879567

`A008836(n+1)²*A293551(A046092(n))`
-/

namespace A293554.P3823182422460879567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A293551 (A046092 n).toNat

end

end A293554.P3823182422460879567

/-! ## A293554.P11394192471623195843

`A309873(n+1)²*A293551(A046092(n))`
-/

namespace A293554.P11394192471623195843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (n + 1) ^ 2 * A293551 (A046092 n).toNat

end

end A293554.P11394192471623195843

/-! ## A293554.P14184532463869537754

`A010146(2*n+1)*A293551(A046092(n))`
-/

namespace A293554.P14184532463869537754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010146 (2 * n + 1) * A293551 (A046092 n).toNat

end

end A293554.P14184532463869537754

/-! ## A293554.P5880389250938926562

`A293551(A046092(n))+A005369(or(1, n+1))`
-/

namespace A293554.P5880389250938926562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (A046092 n).toNat + A005369 (Nat.lor 1 (n + 1))

end

end A293554.P5880389250938926562

/-! ## A293554.P12483486625442220549

`A120263(A006530(n+2))*A293551(A046092(n))`
-/

namespace A293554.P12483486625442220549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120263 (A006530 (n + 2)).toNat * A293551 (A046092 n).toNat

end

end A293554.P12483486625442220549

/-!
# A293556: Records in A243822.

The programs for A293556, there is no canonical definition to state claims against.
-/

/-! ## A293556.P743714851164626256

`record[A243822(n+1)]`
-/

namespace A293556.P743714851164626256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293556.P743714851164626256

/-! ## A293556.P13489805125536103989

`A243822(A293555(n+1))`
-/

namespace A293556.P13489805125536103989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (A293555 (n + 1)).toNat

end

end A293556.P13489805125536103989

/-! ## A293556.P7928680956968107921

`record[A299990(n+1)+A000005(n+1)]`
-/

namespace A293556.P7928680956968107921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (n + 1) + A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293556.P7928680956968107921

/-! ## A293556.P3150215608781814596

`record[A010846(n+1)-A000005(n+1)]`
-/

namespace A293556.P3150215608781814596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293556.P3150215608781814596

/-! ## A293556.P15490919669935867603

`record[A045763(n+1)-A243823(n+1)]`
-/

namespace A293556.P15490919669935867603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293556.P15490919669935867603

/-!
# A293558: Triangle T(n,k) read by rows: T(n,k) = A005867(k-1)*A002110(n)/A002110(k).

The programs for A293558, the canonical program `A293558.P3398353888254782623` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293558 has offset 1).

The definition of A293558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293558.P3398353888254782623

`A005867(col(n))*A002110(row(n)+1)/A002110(col(n)+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A293558

/-- `A005867(col(n))*A002110(row(n)+1)/A002110(col(n)+1)` -/
def P3398353888254782623.Spec : Prop :=
  ∀ n, P3398353888254782623.a n = (A293558 (n + 1) : ℚ)

end A293558

/-! ## A293558.P16738203281829406852

`A174909(∑[char[∑[n]]]²-n)`
-/

namespace A293558.P16738203281829406852
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174909 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A293558.P16738203281829406852

namespace A293558

/-- `A174909(∑[char[∑[n]]]²-n)` -/
def P16738203281829406852.Spec : Prop :=
  ∀ n, P16738203281829406852.a n = A293558 (n + 1)

end A293558

/-! ## A293558.P2241330604657214986

`A174909(A038722(n+1))%A198771(n)`
-/

namespace A293558.P2241330604657214986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174909 (A038722 (n + 1)).toNat) (A198771 n)

end

end A293558.P2241330604657214986

namespace A293558

/-- `A174909(A038722(n+1))%A198771(n)` -/
def P2241330604657214986.Spec : Prop :=
  ∀ n, P2241330604657214986.a n = A293558 (n + 1)

end A293558

/-! ## A293558.P6329762688585925752

`gcd(A000038(n), A174909(A038722(n+1)))`
-/

namespace A293558.P6329762688585925752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A174909 (A038722 (n + 1)).toNat)

end

end A293558.P6329762688585925752

namespace A293558

/-- `gcd(A000038(n), A174909(A038722(n+1)))` -/
def P6329762688585925752.Spec : Prop :=
  ∀ n, (P6329762688585925752.a n : ℤ) = A293558 (n + 1)

end A293558

/-! ## A293558.P14500902926079294684

`lcm(A033999(n), A174909(A038722(n+1)))`
-/

namespace A293558.P14500902926079294684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A174909 (A038722 (n + 1)).toNat)

end

end A293558.P14500902926079294684

namespace A293558

/-- `lcm(A033999(n), A174909(A038722(n+1)))` -/
def P14500902926079294684.Spec : Prop :=
  ∀ n, (P14500902926079294684.a n : ℤ) = A293558 (n + 1)

end A293558

/-!
# A293561: a(n) = Stirling2(n + 1, 3) - binomial(n, 2). Column 3 of A142249.

The programs for A293561, the canonical program `A293561.P18273237943727666565` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293561 has offset 0).

The definition of A293561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293561.P18273237943727666565

`a(n-1)+3^(n-1)-2^(n-1)-n+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293561

/-- `a(n-1)+3^(n-1)-2^(n-1)-n+1` -/
def P18273237943727666565.Spec : Prop :=
  ∀ n, P18273237943727666565.a n = (A293561 n : ℚ)

end A293561

/-! ## A293561.P4016710118046106394

`(3^n-2^(n+1)+1-n²+n)/2`
-/

namespace A293561.P4016710118046106394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) - (2 ^ (n + 1) : ℤ) + 1 - (n ^ 2 : ℤ) + (n : ℤ) : ℚ) / 2

end

end A293561.P4016710118046106394

namespace A293561

/-- `(3^n-2^(n+1)+1-n²+n)/2` -/
def P4016710118046106394.Spec : Prop :=
  ∀ n, P4016710118046106394.a n = (A293561 n : ℚ)

end A293561

/-! ## A293561.P14288592094017777460

`A000392(n+1)-C(n, 2)`
-/

namespace A293561.P14288592094017777460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - (Nat.choose n 2 : ℤ)

end

end A293561.P14288592094017777460

namespace A293561

/-- `A000392(n+1)-C(n, 2)` -/
def P14288592094017777460.Spec : Prop :=
  ∀ n, P14288592094017777460.a n = A293561 n

end A293561

/-! ## A293561.P16122475387791056709

`A233656(n)-A132109(n)`
-/

namespace A293561.P16122475387791056709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233656 n - A132109 n

end

end A293561.P16122475387791056709

namespace A293561

/-- `A233656(n)-A132109(n)` -/
def P16122475387791056709.Spec : Prop :=
  ∀ n, P16122475387791056709.a n = A293561 n

end A293561

/-! ## A293561.P5346896301349219380

`A134063(n)-A152947(n+1)`
-/

namespace A293561.P5346896301349219380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134063 n - A152947 (n + 1)

end

end A293561.P5346896301349219380

namespace A293561

/-- `A134063(n)-A152947(n+1)` -/
def P5346896301349219380.Spec : Prop :=
  ∀ n, P5346896301349219380.a n = A293561 n

end A293561

/-! ## A293561.P7276960266777423442

`A182453(n)-A094374(n)`
-/

namespace A293561.P7276960266777423442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182453 n - A094374 n

end

end A293561.P7276960266777423442

namespace A293561

/-- `A182453(n)-A094374(n)` -/
def P7276960266777423442.Spec : Prop :=
  ∀ n, P7276960266777423442.a n = A293561 n

end A293561

/-!
# A293562: Column 4 of A142249.

The programs for A293562, there is no canonical definition to state claims against.
-/

/-! ## A293562.P11252823187138808617

`A142249(A166136(n+2))`
-/

namespace A293562.P11252823187138808617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142249 (A166136 (n + 2)).toNat

end

end A293562.P11252823187138808617

/-! ## A293562.P14991277770168295829

`A142249(A141214(n)+9)`
-/

namespace A293562.P14991277770168295829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142249 (A141214 n + 9).toNat

end

end A293562.P14991277770168295829

/-!
# A293564: Starts of a record number of consecutive integers n such that n^2 + 1 is composite.

The programs for A293564, there is no canonical definition to state claims against.
-/

/-! ## A293564.P3082006761977747330

`A308988(n+2)+1`
-/

namespace A293564.P3082006761977747330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308988 (n + 2) + 1

end

end A293564.P3082006761977747330

/-! ## A293564.P8189744289260920514

`ceil(sqrt(A215233(n+1)))`
-/

namespace A293564.P8189744289260920514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A215233 (n + 1) : ℝ)⌉

end

end A293564.P8189744289260920514

/-! ## A293564.P15045241854459933648

`floor(A010130(2*n+1)+sqrt(A215233(n+1)))`
-/

namespace A293564.P15045241854459933648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010130 (2 * n + 1) : ℝ) + Real.sqrt (A215233 (n + 1) : ℝ)⌋

end

end A293564.P15045241854459933648

/-! ## A293564.P11039162275373892327

`2*A214519(n+1)+1`
-/

namespace A293564.P11039162275373892327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A214519 (n + 1) + 1

end

end A293564.P11039162275373892327

/-!
# A293565: Expansion of e.g.f. Product_{k>=0} exp(-x^(3*k+1)).

The programs for A293565, there is no canonical definition to state claims against.
-/

/-! ## A293565.P10066366343575468619

`A033999(n^5)*A351905(n)`
-/

namespace A293565.P10066366343575468619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n ^ 5) * A351905 n

end

end A293565.P10066366343575468619

/-! ## A293565.P16900757311390769082

`A008683(A002110(n))*A337751(n)`
-/

namespace A293565.P16900757311390769082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002110 n).toNat * A337751 n

end

end A293565.P16900757311390769082

/-! ## A293565.P7672101097327158972

`A008683(A002110(n))*A351905(n)`
-/

namespace A293565.P7672101097327158972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002110 n).toNat * A351905 n

end

end A293565.P7672101097327158972

/-!
# A293566: E.g.f.: Product_{m>=0} exp(-x^(4*m+1)).

The programs for A293566, there is no canonical definition to state claims against.
-/

/-! ## A293566.P6145082045680574342

`(-1)^n*A293507(n)`
-/

namespace A293566.P6145082045680574342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293507 n

end

end A293566.P6145082045680574342

/-! ## A293566.P15944783124901456344

`A293507(n)/A033999(n)`
-/

namespace A293566.P15944783124901456344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293507 n : ℚ) / (A033999 n : ℚ)

end

end A293566.P15944783124901456344

/-! ## A293566.P10444837467699851026

`A293507(n)/A087960(n²)`
-/

namespace A293566.P10444837467699851026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293507 n : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A293566.P10444837467699851026

/-! ## A293566.P736865489667702155

`A293507(n)/A009531(A005408(n))`
-/

namespace A293566.P736865489667702155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293507 n : ℚ) / (A009531 (A005408 n).toNat : ℚ)

end

end A293566.P736865489667702155

/-! ## A293566.P6451649127663340603

`A293507(n)*A353354(A000040(n+1))`
-/

namespace A293566.P6451649127663340603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293507 n * A353354 (A000040 (n + 1)).toNat

end

end A293566.P6451649127663340603

/-!
# A293567: Expansion of e.g.f.: exp(x^2/(x^3 - 1)).

The programs for A293567, there is no canonical definition to state claims against.
-/

/-! ## A293567.P18060879126753789099

`Δ[A005811(n)]*A158777(n*A277191(n))`
-/

namespace A293567.P18060879126753789099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A158777 ((n : ℤ) * A277191 n).toNat

end

end A293567.P18060879126753789099

/-! ## A293567.P13259899869935126177

`∏[A033999(n)]*A158777(n*A277191(n))`
-/

namespace A293567.P13259899869935126177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A158777 ((n : ℤ) * A277191 n).toNat

end

end A293567.P13259899869935126177

/-! ## A293567.P6039725971235498270

`A033999(A000217(n))*A158777(n*A277191(n))`
-/

namespace A293567.P6039725971235498270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000217 n).toNat * A158777 ((n : ℤ) * A277191 n).toNat

end

end A293567.P6039725971235498270

/-! ## A293567.P16247731156092836957

`A033999(A055998(n))*A158777(n*A277191(n))`
-/

namespace A293567.P16247731156092836957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A055998 n).toNat * A158777 ((n : ℤ) * A277191 n).toNat

end

end A293567.P16247731156092836957

/-!
# A293568: E.g.f.: exp(x^3/(x^4 - 1)).

The programs for A293568, there is no canonical definition to state claims against.
-/

/-! ## A293568.P2237881669895190608

`A033999(n)*A293526(n)`
-/

namespace A293568.P2237881669895190608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293526 n

end

end A293568.P2237881669895190608

/-! ## A293568.P16275266144401435690

`A293526(n)/A033999(n+2)`
-/

namespace A293568.P16275266144401435690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293526 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A293568.P16275266144401435690

/-! ## A293568.P15549861097683893966

`A056594(2*n)*A293526(n)`
-/

namespace A293568.P15549861097683893966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A293526 n

end

end A293568.P15549861097683893966

/-! ## A293568.P16334629702737948773

`A117569(2*n+1)*A293526(n)`
-/

namespace A293568.P16334629702737948773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (2 * n + 1) * A293526 n

end

end A293568.P16334629702737948773

/-! ## A293568.P3227724309347150027

`A293526(n)/A117569(A016921(n))`
-/

namespace A293568.P3227724309347150027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293526 n : ℚ) / (A117569 (A016921 n).toNat : ℚ)

end

end A293568.P3227724309347150027

/-! ## A293568.P6051867617489608351

`A191907(A000096(n+1))*A293526(n)`
-/

namespace A293568.P6051867617489608351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191907 (A000096 (n + 1)).toNat * A293526 n

end

end A293568.P6051867617489608351

/-! ## A293568.P14024743312166543810

`A057079(A007742(n))*A293526(n)`
-/

namespace A293568.P14024743312166543810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (A007742 n).toNat * A293526 n

end

end A293568.P14024743312166543810

/-!
# A293569: Partitions with designated summands in which no parts are multiples of 3.

The programs for A293569, there is no canonical definition to state claims against.
-/

/-! ## A293569.P18173648544428593216

`A206563(∑[n+3]+7)`
-/

namespace A293569.P18173648544428593216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206563 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A293569.P18173648544428593216

/-! ## A293569.P17514236288857837648

`∑[A207032(A052905(n)+9)]`
-/

namespace A293569.P17514236288857837648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207032 (A052905 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293569.P17514236288857837648

/-! ## A293569.P11179055331553688844

`∑[A207032(A055999(n)+10)]`
-/

namespace A293569.P11179055331553688844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207032 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293569.P11179055331553688844

/-! ## A293569.P17224221791485852636

`A133137(A070559(n))-A111133(n)²`
-/

namespace A293569.P17224221791485852636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A070559 n).toNat - A111133 n ^ 2

end

end A293569.P17224221791485852636

/-!
# A293570: a(-1)=4; thereafter a(n) is the least integer m such that the product of the divisors of m is m^n.

The programs for A293570, there is no canonical definition to state claims against.
-/

/-! ## A293570.P8822661825836384314

`A005179(floor(abs(2*n-1-ϕ))+1)`
-/

namespace A293570.P8822661825836384314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (⌊|((2 * n : ℤ) - 1 : ℝ) - Real.goldenRatio|⌋ + 1).toNat

end

end A293570.P8822661825836384314

/-!
# A293572: E.g.f.: exp(x/(1 + x + x^2 + x^3)).

The programs for A293572, there is no canonical definition to state claims against.
-/

/-! ## A293572.P8566454426880157881

`A362477(n*a(n-1))` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-5, a(4)=1`
-/

namespace A293572.P8566454426880157881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, -1, -5, 1] fun n a =>
  A362477 ((n : ℤ) * a (n - 1)).toNat

end

end A293572.P8566454426880157881

/-! ## A293572.P9548055641903133842

`A000720(A301521(n+1))-A061579(2*n)`
-/

namespace A293572.P9548055641903133842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A301521 (n + 1)).toNat - A061579 (2 * n)

end

end A293572.P9548055641903133842

/-!
# A293574: a(n) = Sum_{k=0..n} n^(n-k)*binomial(n+k-1,k).

The programs for A293574, there is no canonical definition to state claims against.
-/

/-! ## A293574.P17048849899202705972

`A000312(n)+A398478(n)-A000108(n)`
-/

namespace A293574.P17048849899202705972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + (A398478 n - A000108 n)

end

end A293574.P17048849899202705972

/-! ## A293574.P18400604639071841126

`A368506(∑[4*n])`
-/

namespace A293574.P18400604639071841126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293574.P18400604639071841126

/-!
# A293575: Difference between the number of proper divisors of n and the number of squares dividing n.

The programs for A293575, the canonical program `A293575.P9230853573519528425` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293575 has offset 1).

The definition of A293575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293575.P9230853573519528425

`A056595(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293575

/-- `A056595(n+1)-1` -/
def P9230853573519528425.Spec : Prop :=
  ∀ n, P9230853573519528425.a n = A293575 (n + 1)

theorem P9230853573519528425.correct : P9230853573519528425.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel]

end A293575

/-! ## A293575.P3759099163684498084

`A032741(n+1)-A046951(n+1)`
-/

namespace A293575.P3759099163684498084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A046951 (n + 1)

end

end A293575.P3759099163684498084

namespace A293575

/-- `A032741(n+1)-A046951(n+1)` -/
def P3759099163684498084.Spec : Prop :=
  ∀ n, P3759099163684498084.a n = A293575 (n + 1)

theorem P3759099163684498084.correct : P3759099163684498084.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel, A293575.P3759099163684498084.a, A293575.P9230853573519528425.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A046951, A046951.P12586408086602964063.a, A056595, A056595.P14242287842452137538.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293575

/-! ## A293575.P11137248620594416640

`val(A293514(n+1), 2)-1`
-/

namespace A293575.P11137248620594416640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A293514 (n + 1)).toNat 2 : ℤ) - 1

end

end A293575.P11137248620594416640

namespace A293575

/-- `val(A293514(n+1), 2)-1` -/
def P11137248620594416640.Spec : Prop :=
  ∀ n, P11137248620594416640.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P786226579298642057

`∑{d}[n+1, A267635(#)]-1`
-/

namespace A293575.P786226579298642057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267635 d - 1

end

end A293575.P786226579298642057

namespace A293575

/-- `∑{d}[n+1, A267635(#)]-1` -/
def P786226579298642057.Spec : Prop :=
  ∀ n, P786226579298642057.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P15203773004635056756

`A023443(A056595(n+1))`
-/

namespace A293575.P15203773004635056756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A056595 (n + 1)).toNat

end

end A293575.P15203773004635056756

namespace A293575

/-- `A023443(A056595(n+1))` -/
def P15203773004635056756.Spec : Prop :=
  ∀ n, P15203773004635056756.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P8412507978846893691

`A338228(n+1)-A062968(n+1)`
-/

namespace A293575.P8412507978846893691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) - A062968 (n + 1)

end

end A293575.P8412507978846893691

namespace A293575

/-- `A338228(n+1)-A062968(n+1)` -/
def P8412507978846893691.Spec : Prop :=
  ∀ n, P8412507978846893691.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P9882239413527410258

`A071325(n+1)-A347992(n+1)`
-/

namespace A293575.P9882239413527410258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) - A347992 (n + 1)

end

end A293575.P9882239413527410258

namespace A293575

/-- `A071325(n+1)-A347992(n+1)` -/
def P9882239413527410258.Spec : Prop :=
  ∀ n, P9882239413527410258.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P11565322909689246752

`Δ[A006218(n)]-(A046951(n+1)+1)`
-/

namespace A293575.P11565322909689246752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A046951 (n + 1) + 1)

end

end A293575.P11565322909689246752

namespace A293575

/-- `Δ[A006218(n)]-(A046951(n+1)+1)` -/
def P11565322909689246752.Spec : Prop :=
  ∀ n, P11565322909689246752.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P11770441571940202129

`A000005(n+1)-(A046951(n+1)+1)`
-/

namespace A293575.P11770441571940202129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A046951 (n + 1) + 1)

end

end A293575.P11770441571940202129

namespace A293575

/-- `A000005(n+1)-(A046951(n+1)+1)` -/
def P11770441571940202129.Spec : Prop :=
  ∀ n, P11770441571940202129.a n = A293575 (n + 1)

theorem P11770441571940202129.correct : P11770441571940202129.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel, A293575.P11770441571940202129.a, A293575.P9230853573519528425.a, A000005, A000005.P16091521709108585461.a, A046951, A046951.P12586408086602964063.a, A056595, A056595.P14242287842452137538.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293575

/-! ## A293575.P2416424908849375380

`A056924(n+1)+A262202(n+1)-1`
-/

namespace A293575.P2416424908849375380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + (A262202 (n + 1) - 1)

end

end A293575.P2416424908849375380

namespace A293575

/-- `A056924(n+1)+A262202(n+1)-1` -/
def P2416424908849375380.Spec : Prop :=
  ∀ n, P2416424908849375380.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P14330435002239280575

`A349330(n+1)-(A035316(n+1)+1)`
-/

namespace A293575.P14330435002239280575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349330 (n + 1) - (A035316 (n + 1) + 1)

end

end A293575.P14330435002239280575

namespace A293575

/-- `A349330(n+1)-(A035316(n+1)+1)` -/
def P14330435002239280575.Spec : Prop :=
  ∀ n, P14330435002239280575.a n = A293575 (n + 1)

theorem P14330435002239280575.correct : P14330435002239280575.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel, A293575.P14330435002239280575.a, A293575.P9230853573519528425.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A056595, A056595.P14242287842452137538.a, A349330, A349330.P17425887972492855764.a, A000005, A000005.P16091521709108585461.a, A037213, A037213.P7544062464691828526.a, A046951, A046951.P12586408086602964063.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293575

/-! ## A293575.P8724917656303578849

`A338228(n+1)-(A049820(n+1)+1)`
-/

namespace A293575.P8724917656303578849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338228 (n + 1) - (A049820 (n + 1) + 1)

end

end A293575.P8724917656303578849

namespace A293575

/-- `A338228(n+1)-(A049820(n+1)+1)` -/
def P8724917656303578849.Spec : Prop :=
  ∀ n, P8724917656303578849.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P11194952074615048372

`A046951(n+1)-(A347992(n+1)+1)`
-/

namespace A293575.P11194952074615048372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - (A347992 (n + 1) + 1)

end

end A293575.P11194952074615048372

namespace A293575

/-- `A046951(n+1)-(A347992(n+1)+1)` -/
def P11194952074615048372.Spec : Prop :=
  ∀ n, P11194952074615048372.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P13315621016290589404

`A332932(n+1)-(A086671(n+1)+1)`
-/

namespace A293575.P13315621016290589404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (n + 1) - (A086671 (n + 1) + 1)

end

end A293575.P13315621016290589404

namespace A293575

/-- `A332932(n+1)-(A086671(n+1)+1)` -/
def P13315621016290589404.Spec : Prop :=
  ∀ n, P13315621016290589404.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P5855108784847432567

`A332935(n+1)-(A332933(n+1)+1)`
-/

namespace A293575.P5855108784847432567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332935 (n + 1) - (A332933 (n + 1) + 1)

end

end A293575.P5855108784847432567

namespace A293575

/-- `A332935(n+1)-(A332933(n+1)+1)` -/
def P5855108784847432567.Spec : Prop :=
  ∀ n, P5855108784847432567.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P15588002226190406186

`A000005(n+1)-(A071325(n+1)+2)`
-/

namespace A293575.P15588002226190406186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A071325 (n + 1) + 2)

end

end A293575.P15588002226190406186

namespace A293575

/-- `A000005(n+1)-(A071325(n+1)+2)` -/
def P15588002226190406186.Spec : Prop :=
  ∀ n, P15588002226190406186.a n = A293575 (n + 1)

theorem P15588002226190406186.correct : P15588002226190406186.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel, A293575.P15588002226190406186.a, A293575.P9230853573519528425.a, A000005, A000005.P16091521709108585461.a, A056595, A056595.P14242287842452137538.a, A071325, A071325.P10142503002015730220.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A046951, A046951.P12586408086602964063.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293575

/-! ## A293575.P8191958818729068306

`n-(A049820(n+1)+A046951(n+1))`
-/

namespace A293575.P8191958818729068306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A049820 (n + 1) + A046951 (n + 1))

end

end A293575.P8191958818729068306

namespace A293575

/-- `n-(A049820(n+1)+A046951(n+1))` -/
def P8191958818729068306.Spec : Prop :=
  ∀ n, P8191958818729068306.a n = A293575 (n + 1)

theorem P8191958818729068306.correct : P8191958818729068306.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel, A293575.P8191958818729068306.a, A293575.P9230853573519528425.a, A046951, A046951.P12586408086602964063.a, A049820, A049820.P9428372222244335888.a, A056595, A056595.P14242287842452137538.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293575

/-! ## A293575.P6470157592670327813

`A000005(n+1)-(A000005(A000188(n+1))+1)`
-/

namespace A293575.P6470157592670327813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A000005 (A000188 (n + 1)).toNat + 1)

end

end A293575.P6470157592670327813

namespace A293575

/-- `A000005(n+1)-(A000005(A000188(n+1))+1)` -/
def P6470157592670327813.Spec : Prop :=
  ∀ n, P6470157592670327813.a n = A293575 (n + 1)

theorem P6470157592670327813.correct : P6470157592670327813.Spec := by
  intro n
  simp only [A293575, Nat.add_sub_cancel, A293575.P6470157592670327813.a, A293575.P9230853573519528425.a, A000005, A000005.P16091521709108585461.a, A000188, A000188.P18128357374562736993.f1, A000188.P18128357374562736993.a, A056595, A056595.P14242287842452137538.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A046951, A046951.P12586408086602964063.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293575

/-! ## A293575.P4027556844907209668

`Δ[eq[1, A275055(n+1)]]-(A046951(n+1)+1)`
-/

namespace A293575.P4027556844907209668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (A046951 (n + 1) + 1)

end

end A293575.P4027556844907209668

namespace A293575

/-- `Δ[eq[1, A275055(n+1)]]-(A046951(n+1)+1)` -/
def P4027556844907209668.Spec : Prop :=
  ∀ n, P4027556844907209668.a n = A293575 (n + 1)

end A293575

/-! ## A293575.P2998645255648129537

`Δ[lt[A027750(n+1), 2]]-(A046951(n+1)+1)`
-/

namespace A293575.P2998645255648129537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (A046951 (n + 1) + 1)

end

end A293575.P2998645255648129537

namespace A293575

/-- `Δ[lt[A027750(n+1), 2]]-(A046951(n+1)+1)` -/
def P2998645255648129537.Spec : Prop :=
  ∀ n, P2998645255648129537.a n = A293575 (n + 1)

end A293575

/-!
# A293576: Numbers n such that the set of exponents in expression for 2*n as a sum of distinct powers of 2 can be partitioned into two parts with equal sums.

The programs for A293576, there is no canonical definition to state claims against.
-/

/-! ## A293576.P4557659914544622537

`eq[0, A007814(A293664(n))]`
-/

namespace A293576.P4557659914544622537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P4557659914544622537

/-! ## A293576.P11741383549008002283

`eq[1, A003484(A293664(n)²)]`
-/

namespace A293576.P11741383549008002283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A293664 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P11741383549008002283

/-! ## A293576.P9175190283272047361

`eq[1, A009531(A293664(n)²)]`
-/

namespace A293576.P9175190283272047361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A293664 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P9175190283272047361

/-! ## A293576.P10765912524033245833

`eq[1, A073575(A293664(n)²)]`
-/

namespace A293576.P10765912524033245833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A293664 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P10765912524033245833

/-! ## A293576.P15715350475026552549

`lt[A007814(A293664(n)²), 1]`
-/

namespace A293576.P15715350475026552549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293664 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293576.P15715350475026552549

/-! ## A293576.P12128370311082403762

`eq[1, A003484(A293664(n)+2)]`
-/

namespace A293576.P12128370311082403762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A293664 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P12128370311082403762

/-! ## A293576.P9110915433085518737

`eq[1, A073575(A293664(n)+2)]`
-/

namespace A293576.P9110915433085518737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073575 (A293664 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P9110915433085518737

/-! ## A293576.P6234639882329643307

`lt[A135481(A293664(n)+1), 1]`
-/

namespace A293576.P6234639882329643307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A293664 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293576.P6234639882329643307

/-! ## A293576.P3360530531656511804

`lt[A007814(A293664(n)+2), 1]`
-/

namespace A293576.P3360530531656511804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293664 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293576.P3360530531656511804

/-! ## A293576.P4930523089278893926

`eq[2, A003484(2*A293664(n))]`
-/

namespace A293576.P4930523089278893926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (2 * A293664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P4930523089278893926

/-! ## A293576.P15696551352065673910

`eq[2, A118830(2*A293664(n))]`
-/

namespace A293576.P15696551352065673910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * A293664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P15696551352065673910

/-! ## A293576.P16311422554207756013

`eq[1, A118830(A293664(n)²)²]`
-/

namespace A293576.P16311422554207756013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A293664 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293576.P16311422554207756013

/-! ## A293576.P54433445293605087

`eq[A003484(A293664(n)), A267927(n)]`
-/

namespace A293576.P54433445293605087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A293664 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267927 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293576.P54433445293605087

/-! ## A293576.P5178659742474687193

`eq[A000035(A293664(n)), A293668(n)]`
-/

namespace A293576.P5178659742474687193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A293664 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293576.P5178659742474687193

/-! ## A293576.P1362590037472606696

`eq[A014681(A293664(n)+1), A293664(n)]`
-/

namespace A293576.P1362590037472606696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A293664 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293576.P1362590037472606696

/-! ## A293576.P5089970039002203850

`lt[A007814(A293664(n))*A267584(n), 1]`
-/

namespace A293576.P5089970039002203850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293664 n).toNat * A267584 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293576.P5089970039002203850

/-! ## A293576.P2132305467395767122

`lt[A135481(2*n), A135481(A293664(n))]`
-/

namespace A293576.P2132305467395767122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A293664 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293576.P2132305467395767122

/-! ## A293576.P6867653829278058260

`lt[A007814(A293664(n))*A208354(n), 1]`
-/

namespace A293576.P6867653829278058260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A293664 n).toNat * A208354 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293576.P6867653829278058260

/-!
# A293578: Triangular array read by rows. One form of sieve of Eratosthenes (see comments for construction).

The programs for A293578, there is no canonical definition to state claims against.
-/

/-! ## A293578.P6583720488777365176

`and(A005811(n+1), A119054(n+1))`
-/

namespace A293578.P6583720488777365176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005811 (n + 1)) (A119054 (n + 1))

end

end A293578.P6583720488777365176

/-! ## A293578.P1885762375572352890

`and(dr(A006829(2*n+1)), A006830(2*(n+5)))`
-/

namespace A293578.P1885762375572352890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.digitalRoot (A006829 (2 * n + 1)) : ℤ) (A006830 (2 * (n + 5)))

end

end A293578.P1885762375572352890

/-! ## A293578.P8821120857028474436

`and(A046951(A008574(n)), A119054(n+1))`
-/

namespace A293578.P8821120857028474436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046951 (A008574 n).toNat) (A119054 (n + 1))

end

end A293578.P8821120857028474436

/-! ## A293578.P11430704288166520158

`A055642(A284119(n+1))*A374045(n)`
-/

namespace A293578.P11430704288166520158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A284119 (n + 1)).toNat * A374045 n

end

end A293578.P11430704288166520158

/-! ## A293578.P7379166288999844381

`and(A088748(n), A098848(A210345(n+1)))`
-/

namespace A293578.P7379166288999844381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088748 n) (A098848 (A210345 (n + 1)).toNat)

end

end A293578.P7379166288999844381

/-!
# A293579: Number of compositions of n where each part i is marked with a word of length i over a binary alphabet whose letters appear in alphabetical order and both letters occur at least once in the composition.

The programs for A293579, the canonical program `A293579.P12218641878793603823` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293579 has offset 2).

The definition of A293579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293579.P12218641878793603823

`6*a(n-1)-10*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=16, a(2)=66`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293579

/-- `6*a(n-1)-10*a(n-2)+4*a(n-3)` -/
def P12218641878793603823.Spec : Prop :=
  ∀ n, P12218641878793603823.a n = A293579 (n + 2)

theorem P12218641878793603823.correct : P12218641878793603823.Spec := by
  intro n
  simp only [A293579, Nat.add_sub_cancel]

end A293579

/-! ## A293579.P1745364545386411400

`ogf((3-2x)/(1-6x+10x^2-4x^3))`
-/

namespace A293579.P1745364545386411400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2] [1, -6, 10, -4] n

end

end A293579.P1745364545386411400

namespace A293579

/-- `ogf((3-2x)/(1-6x+10x^2-4x^3))` -/
def P1745364545386411400.Spec : Prop :=
  ∀ n, P1745364545386411400.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P8836467784883448953

`∑[A005022(n+1)/2]`
-/

namespace A293579.P8836467784883448953
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005022 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293579.P8836467784883448953

namespace A293579

/-- `∑[A005022(n+1)/2]` -/
def P8836467784883448953.Spec : Prop :=
  ∀ n, P8836467784883448953.a n = (A293579 (n + 2) : ℚ)

end A293579

/-! ## A293579.P8095608585741163057

`A204090(n+2)/2-1`
-/

namespace A293579.P8095608585741163057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204090 (n + 2) : ℚ) / 2 - 1

end

end A293579.P8095608585741163057

namespace A293579

/-- `A204090(n+2)/2-1` -/
def P8095608585741163057.Spec : Prop :=
  ∀ n, P8095608585741163057.a n = (A293579 (n + 2) : ℚ)

end A293579

/-! ## A293579.P16987085654884091188

`A020727(n+1)-2^(n+2)`
-/

namespace A293579.P16987085654884091188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020727 (n + 1) - (2 ^ (n + 2) : ℤ)

end

end A293579.P16987085654884091188

namespace A293579

/-- `A020727(n+1)-2^(n+2)` -/
def P16987085654884091188.Spec : Prop :=
  ∀ n, P16987085654884091188.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P2918958540565948993

`A003480(n+2)-2^(n+2)`
-/

namespace A293579.P2918958540565948993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 2) - (2 ^ (n + 2) : ℤ)

end

end A293579.P2918958540565948993

namespace A293579

/-- `A003480(n+2)-2^(n+2)` -/
def P2918958540565948993.Spec : Prop :=
  ∀ n, P2918958540565948993.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P4849231136964237991

`A094806(n+3)-2^(n+1)`
-/

namespace A293579.P4849231136964237991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094806 (n + 3) - (2 ^ (n + 1) : ℤ)

end

end A293579.P4849231136964237991

namespace A293579

/-- `A094806(n+3)-2^(n+1)` -/
def P4849231136964237991.Spec : Prop :=
  ∀ n, P4849231136964237991.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P10722468974704681184

`a(n-1)+A048580(n)+a(n-1)` with `a(0)=3`
-/

namespace A293579.P10722468974704681184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (A048580 n + a (n - 1))

end

end A293579.P10722468974704681184

namespace A293579

/-- `a(n-1)+A048580(n)+a(n-1)` -/
def P10722468974704681184.Spec : Prop :=
  ∀ n, P10722468974704681184.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P3776474475207037771

`A005022(n+1)-A048580(n)`
-/

namespace A293579.P3776474475207037771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005022 (n + 1) - A048580 n

end

end A293579.P3776474475207037771

namespace A293579

/-- `A005022(n+1)-A048580(n)` -/
def P3776474475207037771.Spec : Prop :=
  ∀ n, P3776474475207037771.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P3150315500209062611

`A005022(n+1)-Δ[A007070(n)]`
-/

namespace A293579.P3150315500209062611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005022 (n + 1) - (f1 (n + 1) - f1 n)

end

end A293579.P3150315500209062611

namespace A293579

/-- `A005022(n+1)-Δ[A007070(n)]` -/
def P3150315500209062611.Spec : Prop :=
  ∀ n, P3150315500209062611.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P1418414506230785821

`A005022(n+1)-A007052(n+1)`
-/

namespace A293579.P1418414506230785821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005022 (n + 1) - A007052 (n + 1)

end

end A293579.P1418414506230785821

namespace A293579

/-- `A005022(n+1)-A007052(n+1)` -/
def P1418414506230785821.Spec : Prop :=
  ∀ n, P1418414506230785821.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P14940122423419948585

`∑[Δ[A003480(n+1)]-A000079(n+1)]`
-/

namespace A293579.P14940122423419948585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003480 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293579.P14940122423419948585

namespace A293579

/-- `∑[Δ[A003480(n+1)]-A000079(n+1)]` -/
def P14940122423419948585.Spec : Prop :=
  ∀ n, P14940122423419948585.a n = A293579 (n + 2)

end A293579

/-! ## A293579.P2058006849483023564

`A005022(n)+A007070(n)+A005022(n)`
-/

namespace A293579.P2058006849483023564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005022 n + (A007070 n + A005022 n)

end

end A293579.P2058006849483023564

namespace A293579

/-- `A005022(n)+A007070(n)+A005022(n)` -/
def P2058006849483023564.Spec : Prop :=
  ∀ n, P2058006849483023564.a n = A293579 (n + 2)

end A293579

/-!
# A293580: Number of compositions of n where each part i is marked with a word of length i over a ternary alphabet whose letters appear in alphabetical order and all three letters occur at least once in the composition.

The programs for A293580, there is no canonical definition to state claims against.
-/

/-! ## A293580.P7173009356703375661

`A261781(A167614(n+2))`
-/

namespace A293580.P7173009356703375661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A167614 (n + 2)).toNat

end

end A293580.P7173009356703375661

/-! ## A293580.P3831673657667432895

`A261781(A055999(n)+9)`
-/

namespace A293580.P3831673657667432895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A055999 n + 9).toNat

end

end A293580.P3831673657667432895

/-! ## A293580.P929144936466576079

`A261781(eq[3, A002262(n)])`
-/

namespace A293580.P929144936466576079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293580.P929144936466576079

/-! ## A293580.P15407472700490649621

`A261781(eq[3, A140207(n)])`
-/

namespace A293580.P15407472700490649621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293580.P15407472700490649621

/-! ## A293580.P4922221737365756326

`A261781(eq[8, A059268(n)])`
-/

namespace A293580.P4922221737365756326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293580.P4922221737365756326

/-! ## A293580.P4758116710269764162

`A261781(A000096(n+2)+4)`
-/

namespace A293580.P4758116710269764162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A000096 (n + 2) + 4).toNat

end

end A293580.P4758116710269764162

/-! ## A293580.P8730453934428643839

`A261781(A166136(n+2)-3)`
-/

namespace A293580.P8730453934428643839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A166136 (n + 2) - 3).toNat

end

end A293580.P8730453934428643839

/-! ## A293580.P15331151921423842400

`A261781(eq[4, A002260(n+1)])`
-/

namespace A293580.P15331151921423842400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293580.P15331151921423842400

/-! ## A293580.P2740652104925323412

`A261781(eq[1, A144328(n+1)-2])`
-/

namespace A293580.P2740652104925323412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293580.P2740652104925323412

/-! ## A293580.P1757333253056966206

`A261781(eq[2, A135223(n+1)-2])`
-/

namespace A293580.P1757333253056966206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293580.P1757333253056966206

/-!
# A293581: Number of compositions of n where each part i is marked with a word of length i over a quaternary alphabet whose letters appear in alphabetical order and all four letters occur at least once in the composition.

The programs for A293581, there is no canonical definition to state claims against.
-/

/-! ## A293581.P6532425851393819509

`A261781(A155212(n)+12)`
-/

namespace A293581.P6532425851393819509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A155212 n + 12).toNat

end

end A293581.P6532425851393819509

/-! ## A293581.P3220137096342391257

`A261781(A056000(n)+14)`
-/

namespace A293581.P3220137096342391257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (A056000 n + 14).toNat

end

end A293581.P3220137096342391257

/-! ## A293581.P2994240656238336154

`A261781(eq[4, A002262(n)])`
-/

namespace A293581.P2994240656238336154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293581.P2994240656238336154

/-! ## A293581.P10975590043300862645

`A261781(eq[16, A059268(n)])`
-/

namespace A293581.P10975590043300862645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293581.P10975590043300862645

/-! ## A293581.P7066096662942958618

`A261781(eq[24, A233543(n)])`
-/

namespace A293581.P7066096662942958618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293581.P7066096662942958618

/-! ## A293581.P5721513450453252666

`A261781(eq[5, A002260(n+1)])`
-/

namespace A293581.P5721513450453252666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293581.P5721513450453252666

/-! ## A293581.P17322544561292645969

`A261781(eq[2, A144328(n+1)-2])`
-/

namespace A293581.P17322544561292645969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293581.P17322544561292645969

/-! ## A293581.P17146179027395297212

`A261781(eq[2, A144328(n+1)/2])`
-/

namespace A293581.P17146179027395297212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A293581.P17146179027395297212

/-!
# A293582: Number of compositions of n where each part i is marked with a word of length i over a quinary alphabet whose letters appear in alphabetical order and all five letters occur at least once in the composition.

The programs for A293582, there is no canonical definition to state claims against.
-/

/-! ## A293582.P8895586101662975991

`A261781(eq[5, A002262(n)])`
-/

namespace A293582.P8895586101662975991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293582.P8895586101662975991

/-! ## A293582.P6918092298057430230

`A261781(eq[32, A059268(n)])`
-/

namespace A293582.P6918092298057430230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293582.P6918092298057430230

/-! ## A293582.P720658783486372242

`A261781(eq[5, A144328(n+1)])`
-/

namespace A293582.P720658783486372242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293582.P720658783486372242

/-! ## A293582.P15939592094932458254

`A261781(eq[6, A002260(n+1)])`
-/

namespace A293582.P15939592094932458254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293582.P15939592094932458254

/-! ## A293582.P15247083143686318003

`A261781(eq[5, A133233(n)])`
-/

namespace A293582.P15247083143686318003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293582.P15247083143686318003

/-!
# A293583: Number of compositions of n where each part i is marked with a word of length i over a senary alphabet whose letters appear in alphabetical order and all six letters occur at least once in the composition.

The programs for A293583, there is no canonical definition to state claims against.
-/

/-! ## A293583.P33757845685286431

`A261781(eq[6, A002262(n)])`
-/

namespace A293583.P33757845685286431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293583.P33757845685286431

/-! ## A293583.P14658887765406886991

`A261781(eq[11, A140207(n)])`
-/

namespace A293583.P14658887765406886991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293583.P14658887765406886991

/-! ## A293583.P17732205519814659589

`A261781(eq[64, A059268(n)])`
-/

namespace A293583.P17732205519814659589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293583.P17732205519814659589

/-! ## A293583.P976213542324091340

`A261781(eq[6, A144328(n+1)])`
-/

namespace A293583.P976213542324091340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293583.P976213542324091340

/-! ## A293583.P1785678165539683979

`A261781(eq[7, A002260(n+1)])`
-/

namespace A293583.P1785678165539683979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293583.P1785678165539683979

/-! ## A293583.P1928052591485217522

`A261781(eq[7, A135223(n+1)])`
-/

namespace A293583.P1928052591485217522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293583.P1928052591485217522

/-!
# A293584: Number of compositions of n where each part i is marked with a word of length i over a septenary alphabet whose letters appear in alphabetical order and all seven letters occur at least once in the composition.

The programs for A293584, there is no canonical definition to state claims against.
-/

/-! ## A293584.P18217538240173200595

`A261781(eq[7, A002262(n)])`
-/

namespace A293584.P18217538240173200595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293584.P18217538240173200595

/-! ## A293584.P6823389943277307993

`A261781(eq[7, A144328(n+1)])`
-/

namespace A293584.P6823389943277307993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293584.P6823389943277307993

/-! ## A293584.P7646787892889723587

`A261781(eq[8, A002260(n+1)])`
-/

namespace A293584.P7646787892889723587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293584.P7646787892889723587

/-! ## A293584.P4348952805552216219

`A261781(eq[8, A135223(n+1)])`
-/

namespace A293584.P4348952805552216219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293584.P4348952805552216219

/-! ## A293584.P7418953257804625790

`A261781(eq[7, A133233(n)])`
-/

namespace A293584.P7418953257804625790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293584.P7418953257804625790

/-!
# A293585: Number of compositions of n where each part i is marked with a word of length i over an octonary alphabet whose letters appear in alphabetical order and all eight letters occur at least once in the composition.

The programs for A293585, there is no canonical definition to state claims against.
-/

/-! ## A293585.P14773437750964400421

`A261781(eq[8, A002262(n)])`
-/

namespace A293585.P14773437750964400421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293585.P14773437750964400421

/-! ## A293585.P10266268400921387803

`A261781(eq[8, A130270(n+1)])`
-/

namespace A293585.P10266268400921387803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293585.P10266268400921387803

/-! ## A293585.P14675588375079778685

`A261781(eq[8, A144328(n+1)])`
-/

namespace A293585.P14675588375079778685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293585.P14675588375079778685

/-! ## A293585.P10714229339934726609

`A261781(eq[9, A002260(n+1)])`
-/

namespace A293585.P10714229339934726609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293585.P10714229339934726609

/-! ## A293585.P13640789601804708586

`A261781(eq[10, A131818(n+2)])`
-/

namespace A293585.P13640789601804708586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293585.P13640789601804708586

/-!
# A293586: Number of compositions of n where each part i is marked with a word of length i over a nonary alphabet whose letters appear in alphabetical order and all nine letters occur at least once in the composition.

The programs for A293586, there is no canonical definition to state claims against.
-/

/-! ## A293586.P10810635556466234040

`A261781(eq[9, A002262(n)])`
-/

namespace A293586.P10810635556466234040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293586.P10810635556466234040

/-! ## A293586.P4616594552257768342

`A261781(eq[9, A130270(n+1)])`
-/

namespace A293586.P4616594552257768342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293586.P4616594552257768342

/-! ## A293586.P17780683721228807137

`A261781(eq[9, A144328(n+1)])`
-/

namespace A293586.P17780683721228807137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293586.P17780683721228807137

/-! ## A293586.P16836667830302605784

`A261781(eq[10, A002260(n+1)])`
-/

namespace A293586.P16836667830302605784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293586.P16836667830302605784

/-! ## A293586.P15561138770369488684

`A261781(eq[9, A133233(n)])`
-/

namespace A293586.P15561138770369488684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293586.P15561138770369488684

/-!
# A293587: Number of compositions of n where each part i is marked with a word of length i over a denary alphabet whose letters appear in alphabetical order and all ten letters occur at least once in the composition.

The programs for A293587, there is no canonical definition to state claims against.
-/

/-! ## A293587.P11089880891885953262

`A261781(eq[11, A002260(n+1)])`
-/

namespace A293587.P11089880891885953262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293587.P11089880891885953262

/-!
# A293588: E.g.f.: exp(x + x^6/6).

The programs for A293588, the canonical program `A293588.P4038991744652709809` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293588 has offset 0).

The definition of A293588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293588.P4038991744652709809

`a(n-1)+(n-1)!/(n-6)!*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293588

/-- `a(n-1)+(n-1)!/(n-6)!*a(n-6)` -/
def P4038991744652709809.Spec : Prop :=
  ∀ n, P4038991744652709809.a n = (A293588 n : ℚ)

end A293588

/-!
# A293589: E.g.f.: exp(x^2/(1 + x + x^2)).

The programs for A293589, there is no canonical definition to state claims against.
-/

/-! ## A293589.P6436977042497642688

`A293122(n)*A343785(n!)`
-/

namespace A293589.P6436977042497642688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293122 n * A343785 (Nat.factorial n)

end

end A293589.P6436977042497642688

/-! ## A293589.P2246286865159631826

`(-1)^n*A293117(n)*A343785(n!)`
-/

namespace A293589.P2246286865159631826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A293117 n * A343785 (Nat.factorial n)

end

end A293589.P2246286865159631826

/-! ## A293589.P2525946371811546634

`A008683(A000262(n))*A293122(n)`
-/

namespace A293589.P2525946371811546634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000262 n).toNat * A293122 n

end

end A293589.P2525946371811546634

/-! ## A293589.P5046024551916643620

`A008683(A171478(n))*A293122(n)`
-/

namespace A293589.P5046024551916643620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A171478 n).toNat * A293122 n

end

end A293589.P5046024551916643620

/-!
# A293590: E.g.f.: exp(x^3/(1 + x + x^2 + x^3)).

The programs for A293590, there is no canonical definition to state claims against.
-/

/-! ## A293590.P6566398037822443477

`A353224(n)-A105570(A353227(n))`
-/

namespace A293590.P6566398037822443477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353224 n - A105570 (A353227 n).toNat

end

end A293590.P6566398037822443477

/-! ## A293590.P14453391555209062021

`A169758(A353227(n))*A376513(n)`
-/

namespace A293590.P14453391555209062021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169758 (A353227 n).toNat * A376513 n

end

end A293590.P14453391555209062021

/-! ## A293590.P17863788075448949127

`A376513(n)/A143621(A134954(n))`
-/

namespace A293590.P17863788075448949127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376513 n : ℚ) / (A143621 (A134954 n).toNat : ℚ)

end

end A293590.P17863788075448949127

/-!
# A293594: Numbers k such that (34*10^k - 403)/9 is prime.

The programs for A293594, there is no canonical definition to state claims against.
-/

/-! ## A293594.P815120199121792126

`A239958(A076716(n+1))+A007510(n+1)`
-/

namespace A293594.P815120199121792126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239958 (A076716 (n + 1)).toNat + A007510 (n + 1)

end

end A293594.P815120199121792126

/-!
# A293595: Triangle read by rows: T(n,k) = number of compositions of n into k parts such that no two cyclically adjacent parts are equal.

The programs for A293595, there is no canonical definition to state claims against.
-/

/-! ## A293595.P11022476649313204850

`A350251(A331562(n))+A072705(n+1)`
-/

namespace A293595.P11022476649313204850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (A331562 n).toNat + A072705 (n + 1)

end

end A293595.P11022476649313204850

/-! ## A293595.P17412523900143106327

`or(A072705(n+1), A210717(A271698(n)))`
-/

namespace A293595.P17412523900143106327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072705 (n + 1)) (A210717 (A271698 n).toNat)

end

end A293595.P17412523900143106327

/-! ## A293595.P5661180260743154268

`gcd(A025466(A000045(n)), A072574(n+1))`
-/

namespace A293595.P5661180260743154268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025466 (A000045 n).toNat) (A072574 (n + 1))

end

end A293595.P5661180260743154268

/-! ## A293595.P16428894593040077170

`A106351(n+1)-A007949(A294082(n+1))`
-/

namespace A293595.P16428894593040077170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106351 (n + 1) - A007949 (A294082 (n + 1)).toNat

end

end A293595.P16428894593040077170

/-! ## A293595.P15314691446206657483

`and(A258222(n)+A098852(n+1), A106351(n+1))`
-/

namespace A293595.P15314691446206657483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A258222 n + A098852 (n + 1)) (A106351 (n + 1))

end

end A293595.P15314691446206657483

/-!
# A293596: The number of vertices on successive convex layers of the positive quadrant of the two-dimensional integer grid.

The programs for A293596, there is no canonical definition to state claims against.
-/

/-! ## A293596.P3466039372829051558

`A246435(3*n)-A086017(A000225(n))`
-/

namespace A293596.P3466039372829051558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246435 (3 * n) - A086017 (A000225 n).toNat

end

end A293596.P3466039372829051558

/-! ## A293596.P14999078525750588256

`A001222(lcm(A049977(n+1), A239858(n+1)))`
-/

namespace A293596.P14999078525750588256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm (A049977 (n + 1)) (A239858 (n + 1)))

end

end A293596.P14999078525750588256

/-! ## A293596.P11401534275272062067

`A282701(A059268(n)+comp[A004760(n+2)]-n)`
-/

namespace A293596.P11401534275272062067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282701 (A059268 n + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))).toNat

end

end A293596.P11401534275272062067

/-! ## A293596.P16215742441328832592

`A374994((n+1)*A111528(n))`
-/

namespace A293596.P16215742441328832592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 ((n + 1 : ℤ) * A111528 n).toNat

end

end A293596.P16215742441328832592

/-! ## A293596.P8961499908725897644

`A001221(A003685(n+1))+A000700(n)`
-/

namespace A293596.P8961499908725897644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003685 (n + 1)).toNat + A000700 n

end

end A293596.P8961499908725897644

/-!
# A293597: L.g.f.: Sum_{n>=1} (x - x^(2*n-1))^(2*n-1) / (2*n-1).

The programs for A293597, there is no canonical definition to state claims against.
-/

/-! ## A293597.P14941354031703705839

`A293129(n+1)-A293598(n+1)`
-/

namespace A293597.P14941354031703705839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293129 (n + 1) - A293598 (n + 1)

end

end A293597.P14941354031703705839

/-! ## A293597.P10107708320300585987

`A293129(A082217(n+1))-A215457(n+1)*A226378(n)`
-/

namespace A293597.P10107708320300585987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293129 (A082217 (n + 1)).toNat - A215457 (n + 1) * A226378 n

end

end A293597.P10107708320300585987

/-! ## A293597.P2908789074701735764

`A293129(n+1)-A055089(A275867(n+1))*A057723(2*n+1)`
-/

namespace A293597.P2908789074701735764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293129 (n + 1) - A055089 (A275867 (n + 1)).toNat * A057723 (2 * n + 1)

end

end A293597.P2908789074701735764

/-!
# A293598: L.g.f.: Sum_{n>=1} x^((2*n-1)^2) / ( (2*n-1) * (1 - x^(2*n))^(2*n-1) ).

The programs for A293598, there is no canonical definition to state claims against.
-/

/-! ## A293598.P14568039699875714799

`A293129(n+1)-A293597(n+1)`
-/

namespace A293598.P14568039699875714799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293129 (n + 1) - A293597 (n + 1)

end

end A293598.P14568039699875714799

/-! ## A293598.P16141479235520514201

`A215457(A082217(n+1))*A226378(n)`
-/

namespace A293598.P16141479235520514201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215457 (A082217 (n + 1)).toNat * A226378 n

end

end A293598.P16141479235520514201

/-! ## A293598.P14549861773130310457

`A003968(2*n+1)*A329313(A128209(n))`
-/

namespace A293598.P14549861773130310457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (2 * n + 1) * A329313 (A128209 n).toNat

end

end A293598.P14549861773130310457

/-! ## A293598.P1243904915556797734

`A340774(2*n+1)*A347735(A347780(n))`
-/

namespace A293598.P1243904915556797734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340774 (2 * n + 1) * A347735 (A347780 n).toNat

end

end A293598.P1243904915556797734

/-! ## A293598.P669932267862531012

`A055089(A275867(n+1))*A057723(2*n+1)`
-/

namespace A293598.P669932267862531012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055089 (A275867 (n + 1)).toNat * A057723 (2 * n + 1)

end

end A293598.P669932267862531012

/-!
# A293599: The coefficient of x^(2^n+1)/(2^n+1) in the l.g.f. of A293598 for n>=1.

The programs for A293599, there is no canonical definition to state claims against.
-/

/-! ## A293599.P8126014711148463236

`A293598(2^n+1)`
-/

namespace A293599.P8126014711148463236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293598 (2 ^ n + 1)

end

end A293599.P8126014711148463236

/-! ## A293599.P7542694139495501523

`record[A293598(A001316(n)+1)]`
-/

namespace A293599.P7542694139495501523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293598 (A001316 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293599.P7542694139495501523

/-! ## A293599.P12695448221171885365

`A007318(∑[n])*A293598(A000051(n))`
-/

namespace A293599.P12695448221171885365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A293598 (A000051 n).toNat

end

end A293599.P12695448221171885365

/-! ## A293599.P11937827337151178741

`lcm(A174351(n+1), A293598(A000051(n)))`
-/

namespace A293599.P11937827337151178741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174351 (n + 1)) (A293598 (A000051 n).toNat)

end

end A293599.P11937827337151178741

/-! ## A293599.P9030785383170333005

`A000041(C(2, n+2))*A293598(A000051(n))`
-/

namespace A293599.P9030785383170333005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A293598 (A000051 n).toNat

end

end A293599.P9030785383170333005


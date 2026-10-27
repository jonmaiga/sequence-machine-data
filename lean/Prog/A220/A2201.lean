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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A220101: Number of ordered set partitions of {1,...,n} into n-1 blocks avoiding the pattern 123.

The programs for A220101, the canonical program `A220101.P13755942363765172959` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220101 has offset 1).

The definition of A220101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220101.P18442976750354380404

`n*Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A220101.P18442976750354380404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (f1 (n + 1) - f1 n)

end

end A220101.P18442976750354380404

namespace A220101

/-- `n*Δ[(4-6/(n+1))*a(n-1)]` -/
def P18442976750354380404.Spec : Prop :=
  ∀ n, P18442976750354380404.a n = (A220101 (n + 1) : ℚ)

end A220101

/-! ## A220101.P13755942363765172959

`n*A000245(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A220101

/-- `n*A000245(n)` -/
def P13755942363765172959.Spec : Prop :=
  ∀ n, P13755942363765172959.a n = A220101 (n + 1)

theorem P13755942363765172959.correct : P13755942363765172959.Spec := by
  intro n
  simp only [A220101, Nat.add_sub_cancel]

end A220101

/-! ## A220101.P18238226027709574906

`n*A071724(n)`
-/

namespace A220101.P18238226027709574906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A071724 n

end

end A220101.P18238226027709574906

namespace A220101

/-- `n*A071724(n)` -/
def P18238226027709574906.Spec : Prop :=
  ∀ n, P18238226027709574906.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P16098402421186291888

`n*Δ[A000108(n)]`
-/

namespace A220101.P16098402421186291888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P16098402421186291888

namespace A220101

/-- `n*Δ[A000108(n)]` -/
def P16098402421186291888.Spec : Prop :=
  ∀ n, P16098402421186291888.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P788121883340565261

`n*Δ[A120304(n)]`
-/

namespace A220101.P788121883340565261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P788121883340565261

namespace A220101

/-- `n*Δ[A120304(n)]` -/
def P788121883340565261.Spec : Prop :=
  ∀ n, P788121883340565261.a n = A220101 (n + 1)

theorem P788121883340565261.correct : P788121883340565261.Spec := by
  intro n
  simp only [A220101, Nat.add_sub_cancel, A220101.P788121883340565261.f1, A220101.P788121883340565261.a, A220101.P13755942363765172959.a, A000245, A000245.P15461013057778681831.a, A120304, A120304.P16195813583233364787.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220101

/-! ## A220101.P14573126507263898647

`n*Δ[A141351(n)]`
-/

namespace A220101.P14573126507263898647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P14573126507263898647

namespace A220101

/-- `n*Δ[A141351(n)]` -/
def P14573126507263898647.Spec : Prop :=
  ∀ n, P14573126507263898647.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P12506541915274678352

`n*Δ[A141364(n)]`
-/

namespace A220101.P12506541915274678352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P12506541915274678352

namespace A220101

/-- `n*Δ[A141364(n)]` -/
def P12506541915274678352.Spec : Prop :=
  ∀ n, P12506541915274678352.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P15275229200851250221

`n/2*A071721(n)`
-/

namespace A220101.P15275229200851250221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A071721 n : ℚ)

end

end A220101.P15275229200851250221

namespace A220101

/-- `n/2*A071721(n)` -/
def P15275229200851250221.Spec : Prop :=
  ∀ n, P15275229200851250221.a n = (A220101 (n + 1) : ℚ)

end A220101

/-! ## A220101.P13213512929140986922

`n*Δ[abs(A168491(n))]`
-/

namespace A220101.P13213512929140986922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P13213512929140986922

namespace A220101

/-- `n*Δ[abs(A168491(n))]` -/
def P13213512929140986922.Spec : Prop :=
  ∀ n, P13213512929140986922.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P12343488193539001361

`n*Δ[Δ[A155587(n)]]`
-/

namespace A220101.P12343488193539001361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P12343488193539001361

namespace A220101

/-- `n*Δ[Δ[A155587(n)]]` -/
def P12343488193539001361.Spec : Prop :=
  ∀ n, P12343488193539001361.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P15700703532989869959

`n*record[Δ[A208355(n)]]`
-/

namespace A220101.P15700703532989869959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220101.P15700703532989869959

namespace A220101

/-- `n*record[Δ[A208355(n)]]` -/
def P15700703532989869959.Spec : Prop :=
  ∀ n, P15700703532989869959.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P13009933333845919292

`n*Δ[record[A329696(n)]]`
-/

namespace A220101.P13009933333845919292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P13009933333845919292

namespace A220101

/-- `n*Δ[record[A329696(n)]]` -/
def P13009933333845919292.Spec : Prop :=
  ∀ n, P13009933333845919292.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P2972358297631772724

`n²/2*A007054(n)`
-/

namespace A220101.P2972358297631772724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) / 2 * (A007054 n : ℚ)

end

end A220101.P2972358297631772724

namespace A220101

/-- `n²/2*A007054(n)` -/
def P2972358297631772724.Spec : Prop :=
  ∀ n, P2972358297631772724.a n = (A220101 (n + 1) : ℚ)

end A220101

/-! ## A220101.P5623181315663197365

`n*Δ[A120588(n+1)]`
-/

namespace A220101.P5623181315663197365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P5623181315663197365

namespace A220101

/-- `n*Δ[A120588(n+1)]` -/
def P5623181315663197365.Spec : Prop :=
  ∀ n, P5623181315663197365.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P6455605100339101163

`n*(Δ[A246604(n)]+1)`
-/

namespace A220101.P6455605100339101163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n + 1)

end

end A220101.P6455605100339101163

namespace A220101

/-- `n*(Δ[A246604(n)]+1)` -/
def P6455605100339101163.Spec : Prop :=
  ∀ n, P6455605100339101163.a n = A220101 (n + 1)

theorem P6455605100339101163.correct : P6455605100339101163.Spec := by
  intro n
  simp only [A220101, Nat.add_sub_cancel, A220101.P6455605100339101163.f1, A220101.P6455605100339101163.a, A220101.P13755942363765172959.a, A000245, A000245.P15461013057778681831.a, A246604, A246604.P5603396420743086449.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220101

/-! ## A220101.P6049983297145315966

`n*Δ[A028303(2*n)]`
-/

namespace A220101.P6049983297145315966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P6049983297145315966

namespace A220101

/-- `n*Δ[A028303(2*n)]` -/
def P6049983297145315966.Spec : Prop :=
  ∀ n, P6049983297145315966.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P16190770049006224726

`n*Δ[A028304(2*n)]`
-/

namespace A220101.P16190770049006224726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P16190770049006224726

namespace A220101

/-- `n*Δ[A028304(2*n)]` -/
def P16190770049006224726.Spec : Prop :=
  ∀ n, P16190770049006224726.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P11135664792178259

`n*Δ[A057977(2*n)]`
-/

namespace A220101.P11135664792178259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P11135664792178259

namespace A220101

/-- `n*Δ[A057977(2*n)]` -/
def P11135664792178259.Spec : Prop :=
  ∀ n, P11135664792178259.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P2365630892878551785

`n*Δ[A099363(2*n)]`
-/

namespace A220101.P2365630892878551785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P2365630892878551785

namespace A220101

/-- `n*Δ[A099363(2*n)]` -/
def P2365630892878551785.Spec : Prop :=
  ∀ n, P2365630892878551785.a n = A220101 (n + 1)

end A220101

/-! ## A220101.P3706630395430564555

`n*Δ[A126120(2*n)]`
-/

namespace A220101.P3706630395430564555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A220101.P3706630395430564555

namespace A220101

/-- `n*Δ[A126120(2*n)]` -/
def P3706630395430564555.Spec : Prop :=
  ∀ n, P3706630395430564555.a n = A220101 (n + 1)

end A220101

/-!
# A220103: Triangular numbers that are also Jacobsthal numbers (A001045).

The programs for A220103, there is no canonical definition to state claims against.
-/

/-! ## A220103.P7916070301379342556

`C(round(∏[log2(n+2)]), 2)`
-/

namespace A220103.P7916070301379342556
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A220103.P7916070301379342556

/-!
# A220104: k appears k*(k+1) times.

The programs for A220104, the canonical program `A220104.P13357652405321892040` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220104 has offset 1).

The definition of A220104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220104.P6936724601944895305

`∑[char[2*C(n, 3)]]`
-/

namespace A220104.P6936724601944895305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220104.P6936724601944895305

namespace A220104

/-- `∑[char[2*C(n, 3)]]` -/
def P6936724601944895305.Spec : Prop :=
  ∀ n, (P6936724601944895305.a n : ℤ) = A220104 (n + 1)

end A220104

/-! ## A220104.P7962671430191045595

`∑[char[∑[∑[2*n]]]]`
-/

namespace A220104.P7962671430191045595
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220104.P7962671430191045595

namespace A220104

/-- `∑[char[∑[∑[2*n]]]]` -/
def P7962671430191045595.Spec : Prop :=
  ∀ n, (P7962671430191045595.a n : ℤ) = A220104 (n + 1)

end A220104

/-! ## A220104.P791752356899256934

`log2(∏[char[2*C(n, 3)]+1])`
-/

namespace A220104.P791752356899256934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A220104.P791752356899256934

namespace A220104

/-- `log2(∏[char[2*C(n, 3)]+1])` -/
def P791752356899256934.Spec : Prop :=
  ∀ n, P791752356899256934.a n = (A220104 (n + 1) : ℝ)

end A220104

/-! ## A220104.P3733387399941321975

`char[2*C(n, 3)]+a(n-1)` with `a(0)=1`
-/

namespace A220104.P3733387399941321975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A220104.P3733387399941321975

namespace A220104

/-- `char[2*C(n, 3)]+a(n-1)` -/
def P3733387399941321975.Spec : Prop :=
  ∀ n, (P3733387399941321975.a n : ℤ) = A220104 (n + 1)

end A220104

/-! ## A220104.P3750807606129668688

`comp[∑[lcm(n, n+1)+1]-1]-n`
-/

namespace A220104.P3750807606129668688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A220104.P3750807606129668688

namespace A220104

/-- `comp[∑[lcm(n, n+1)+1]-1]-n` -/
def P3750807606129668688.Spec : Prop :=
  ∀ n, P3750807606129668688.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P13584181423559761447

`A360010(∑[char[2*n]])`
-/

namespace A220104.P13584181423559761447
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220104.P13584181423559761447

namespace A220104

/-- `A360010(∑[char[2*n]])` -/
def P13584181423559761447.Spec : Prop :=
  ∀ n, P13584181423559761447.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P1908153694069073919

`lt[1, A116608(n+1)]-n`
-/

namespace A220104.P1908153694069073919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A220104.P1908153694069073919

namespace A220104

/-- `lt[1, A116608(n+1)]-n` -/
def P1908153694069073919.Spec : Prop :=
  ∀ n, P1908153694069073919.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P8549672621360377996

`comp[∑[∑[A004277(n)]]-1]-n`
-/

namespace A220104.P8549672621360377996
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A220104.P8549672621360377996

namespace A220104

/-- `comp[∑[∑[A004277(n)]]-1]-n` -/
def P8549672621360377996.Spec : Prop :=
  ∀ n, P8549672621360377996.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P362429638652659551

`∑[char[∑[A005563(n)+2+n]]]+1`
-/

namespace A220104.P362429638652659551
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220104.P362429638652659551

namespace A220104

/-- `∑[char[∑[A005563(n)+2+n]]]+1` -/
def P362429638652659551.Spec : Prop :=
  ∀ n, (P362429638652659551.a n : ℤ) = A220104 (n + 1)

end A220104

/-! ## A220104.P8104010488539455401

`∑[char[∑[A000027((n+1)²+1+n)]]]+1`
-/

namespace A220104.P8104010488539455401
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((n + 1) ^ 2 + 1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A220104.P8104010488539455401

namespace A220104

/-- `∑[char[∑[A000027((n+1)²+1+n)]]]+1` -/
def P8104010488539455401.Spec : Prop :=
  ∀ n, (P8104010488539455401.a n : ℤ) = A220104 (n + 1)

end A220104

/-! ## A220104.P13357652405321892040

`A056556(A004526(n))+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A220104

/-- `A056556(A004526(n))+1` -/
def P13357652405321892040.Spec : Prop :=
  ∀ n, P13357652405321892040.a n = A220104 (n + 1)

theorem P13357652405321892040.correct : P13357652405321892040.Spec := by
  intro n
  simp only [A220104, Nat.add_sub_cancel]

end A220104

/-! ## A220104.P18199220074038865018

`A003056(A255767(n+1)/A116608(n+1))`
-/

namespace A220104.P18199220074038865018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.roundAway ((A255767 (n + 1) : ℚ) / (A116608 (n + 1) : ℚ))).toNat

end

end A220104.P18199220074038865018

namespace A220104

/-- `A003056(A255767(n+1)/A116608(n+1))` -/
def P18199220074038865018.Spec : Prop :=
  ∀ n, P18199220074038865018.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P5978985359606453757

`A007412(A016777(n))-A016777(n)`
-/

namespace A220104.P5978985359606453757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (A016777 n).toNat - A016777 n

end

end A220104.P5978985359606453757

namespace A220104

/-- `A007412(A016777(n))-A016777(n)` -/
def P5978985359606453757.Spec : Prop :=
  ∀ n, P5978985359606453757.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P12431359885468557605

`A007412(3*n+2)-(3*n+2)`
-/

namespace A220104.P12431359885468557605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (3 * n + 2) - (3 * n + 2 : ℤ)

end

end A220104.P12431359885468557605

namespace A220104

/-- `A007412(3*n+2)-(3*n+2)` -/
def P12431359885468557605.Spec : Prop :=
  ∀ n, P12431359885468557605.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P6286852837170566087

`A048766(A007412(3*n+1))`
-/

namespace A220104.P6286852837170566087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A007412 (3 * n + 1)).toNat

end

end A220104.P6286852837170566087

namespace A220104

/-- `A048766(A007412(3*n+1))` -/
def P6286852837170566087.Spec : Prop :=
  ∀ n, P6286852837170566087.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P12935738986857307700

`A003056(A172471(∑[A237591(n+1)]))`
-/

namespace A220104.P12935738986857307700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A220104.P12935738986857307700

namespace A220104

/-- `A003056(A172471(∑[A237591(n+1)]))` -/
def P12935738986857307700.Spec : Prop :=
  ∀ n, P12935738986857307700.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P15615074839990894312

`A003056(A172471(∑[A237593(2*n+1)]))`
-/

namespace A220104.P15615074839990894312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A172471 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A220104.P15615074839990894312

namespace A220104

/-- `A003056(A172471(∑[A237593(2*n+1)]))` -/
def P15615074839990894312.Spec : Prop :=
  ∀ n, P15615074839990894312.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P8537545055945179592

`A003056(A002024(∑[A237593(2*n+1)]))`
-/

namespace A220104.P8537545055945179592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A220104.P8537545055945179592

namespace A220104

/-- `A003056(A002024(∑[A237593(2*n+1)]))` -/
def P8537545055945179592.Spec : Prop :=
  ∀ n, P8537545055945179592.a n = A220104 (n + 1)

end A220104

/-! ## A220104.P3084254762916333751

`A062153(2*A044995(n+1))-1`
-/

namespace A220104.P3084254762916333751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (2 * A044995 (n + 1)).toNat - 1

end

end A220104.P3084254762916333751

namespace A220104

/-- `A062153(2*A044995(n+1))-1` -/
def P3084254762916333751.Spec : Prop :=
  ∀ n, P3084254762916333751.a n = A220104 (n + 1)

end A220104

/-!
# A220105: 2^(n-1) mod n^2.

The programs for A220105, the canonical program `A220105.P855441196975184170` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220105 has offset 1).

The definition of A220105 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n)%(n+1)²` (program `A220105.P855441196975184170`, by `A220105.P855441196975184170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220105.P855441196975184170

`(2^n)%(n+1)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220105

/-- `(2^n)%(n+1)²` -/
def P855441196975184170.Spec : Prop :=
  ∀ n, (P855441196975184170.a n : ℤ) = A220105 (n + 1)

theorem P855441196975184170.correct : P855441196975184170.Spec := by
  intro n
  simp only [A220105, Nat.add_sub_cancel]

end A220105

/-! ## A220105.P16190149009653451354

`abs(A000079(n)%-(n+1)²)`
-/

namespace A220105.P16190149009653451354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A000079 n) (-((n + 1) ^ 2 : ℤ))|

end

end A220105.P16190149009653451354

namespace A220105

/-- `abs(A000079(n)%-(n+1)²)` -/
def P16190149009653451354.Spec : Prop :=
  ∀ n, P16190149009653451354.a n = A220105 (n + 1)

end A220105

/-! ## A220105.P14853022759119597165

`abs((1-A000051(n))%(n+1)²)`
-/

namespace A220105.P14853022759119597165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - A000051 n) ((n + 1) ^ 2 : ℤ)|

end

end A220105.P14853022759119597165

namespace A220105

/-- `abs((1-A000051(n))%(n+1)²)` -/
def P14853022759119597165.Spec : Prop :=
  ∀ n, P14853022759119597165.a n = A220105 (n + 1)

end A220105

/-! ## A220105.P717983239701690443

`-(-2^n%A000290(n+1))`
-/

namespace A220105.P717983239701690443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-(2 ^ n : ℤ)) (A000290 (n + 1))

end

end A220105.P717983239701690443

namespace A220105

/-- `-(-2^n%A000290(n+1))` -/
def P717983239701690443.Spec : Prop :=
  ∀ n, P717983239701690443.a n = A220105 (n + 1)

end A220105

/-! ## A220105.P6473919202038823748

`A254667(A000079(n)%(n+1)²)`
-/

namespace A220105.P6473919202038823748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (Int.tmod (A000079 n) ((n + 1) ^ 2 : ℤ)).toNat

end

end A220105.P6473919202038823748

namespace A220105

/-- `A254667(A000079(n)%(n+1)²)` -/
def P6473919202038823748.Spec : Prop :=
  ∀ n, P6473919202038823748.a n = A220105 (n + 1)

end A220105

/-!
# A220106: Number of nX1 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX1 array.

The programs for A220106, there is no canonical definition to state claims against.
-/

/-! ## A220106.P10483752928751706390

`A220109(∑[n]+1)`
-/

namespace A220106.P10483752928751706390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220109 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220106.P10483752928751706390

/-! ## A220106.P2907577037573297908

`lcm(2, A220109(A000124(n)))`
-/

namespace A220106.P2907577037573297908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220109 (A000124 n).toNat)

end

end A220106.P2907577037573297908

/-! ## A220106.P9365991278268971066

`record[A010054(n)*A220109(n+1)]`
-/

namespace A220106.P9365991278268971066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220106.P9365991278268971066

/-! ## A220106.P1941750885501192814

`record[A176263(n)*A220109(n+1)]`
-/

namespace A220106.P1941750885501192814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176263 n * A220109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220106.P1941750885501192814

/-!
# A220107: Number of nX2 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX2 array.

The programs for A220107, there is no canonical definition to state claims against.
-/

/-! ## A220107.P6740920066492710368

`A220109(∑[n+1]+2)`
-/

namespace A220107.P6740920066492710368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220109 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220107.P6740920066492710368

/-! ## A220107.P8142355993561414786

`record[A010054(n)*A220109(n+2)]`
-/

namespace A220107.P8142355993561414786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220109 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220107.P8142355993561414786

/-! ## A220107.P3224721914257199827

`record[gcd(A220109(n+3), A262795(n+1))]`
-/

namespace A220107.P3224721914257199827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220109 (n + 3)) (A262795 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220107.P3224721914257199827

/-!
# A220108: Number of nX3 arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nX3 array.

The programs for A220108, there is no canonical definition to state claims against.
-/

/-! ## A220108.P2172365832187313473

`A220109(∑[n+2]+4)`
-/

namespace A220108.P2172365832187313473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220109 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220108.P2172365832187313473

/-! ## A220108.P9047303962104444873

`lcm(2, A220109(A167614(n+1)))`
-/

namespace A220108.P9047303962104444873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220109 (A167614 (n + 1)).toNat)

end

end A220108.P9047303962104444873

/-!
# A220109: T(n,k)=Number of nXk arrays of the minimum or maximum value of corresponding elements and their horizontal and vertical neighbors in a random 0..3 nXk array.

The programs for A220109, there is no canonical definition to state claims against.
-/

/-! ## A220109.P12637413024179926501

`A347186(C(ceil(3*n/2), n)+val(n+1, 2)+1)`
-/

namespace A220109.P12637413024179926501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347186 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat n + (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A220109.P12637413024179926501

/-!
# A220111: Main diagonal of array T(k,n) = n-th number in which the number of distinct base 10 digits is k.

The programs for A220111, there is no canonical definition to state claims against.
-/

/-! ## A220111.P10375783750556002001

`A245092(A038378(n+1)+n)`
-/

namespace A220111.P10375783750556002001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A038378 (n + 1) + (n : ℤ)).toNat

end

end A220111.P10375783750556002001

/-!
# A220112: E.g.f. A(x) satisfies A(A(x)) = (1/4)*log(1/(1-4*x)).

The programs for A220112, there is no canonical definition to state claims against.
-/

/-! ## A220112.P15383679732439701402

`A069611(a(n-1))+3` with `a(0)=1, a(1)=2`
-/

namespace A220112.P15383679732439701402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A069611 (a (n - 1)).toNat + 3

end

end A220112.P15383679732439701402

/-!
# A220113: E.g.f. A(x)=sum{n>0, a(n)x^(2*n-1)/(2*n-1)!} satisfies A(A(x))=sin(2*x)/2.

The programs for A220113, there is no canonical definition to state claims against.
-/

/-! ## A220113.P7682353447264126369

`2^n*A098932(n+1)`
-/

namespace A220113.P7682353447264126369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098932 (n + 1)

end

end A220113.P7682353447264126369

/-! ## A220113.P7258684548859119892

`A098932(n+1)*A000079(n)`
-/

namespace A220113.P7258684548859119892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098932 (n + 1) * A000079 n

end

end A220113.P7258684548859119892

/-! ## A220113.P17647062483014023047

`A098932(n+1)*A130321(A000217(n))`
-/

namespace A220113.P17647062483014023047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098932 (n + 1) * A130321 (A000217 n).toNat

end

end A220113.P17647062483014023047

/-! ## A220113.P3822181292944857554

`A098932(n+1)*A199335(A000096(n))`
-/

namespace A220113.P3822181292944857554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098932 (n + 1) * A199335 (A000096 n).toNat

end

end A220113.P3822181292944857554

/-! ## A220113.P209793058688966397

`A098932(n+1)*A317004(A000124(n))`
-/

namespace A220113.P209793058688966397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098932 (n + 1) * A317004 (A000124 n).toNat

end

end A220113.P209793058688966397

/-!
# A220114: Largest k >= 0 such that k = n - x - y where n = x*y, x > 0, y > 0, or -1 if no such k exists.

The programs for A220114, there is no canonical definition to state claims against.
-/

/-! ## A220114.P9957428551320485147

`n+1-A063655(n+1)`
-/

namespace A220114.P9957428551320485147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A063655 (n + 1)

end

end A220114.P9957428551320485147

/-! ## A220114.P11140576188854313027

`A385454(n+1)-1`
-/

namespace A220114.P11140576188854313027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385454 (n + 1) - 1

end

end A220114.P11140576188854313027

/-! ## A220114.P763959011912385907

`n-(A387830(n+1)+1)`
-/

namespace A220114.P763959011912385907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A387830 (n + 1) + 1)

end

end A220114.P763959011912385907

/-! ## A220114.P16594999944214068559

`1-A262767(n+1)/2+n`
-/

namespace A220114.P16594999944214068559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A262767 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A220114.P16594999944214068559

/-! ## A220114.P7379481661375235521

`2*n+3-A163520(n+1)`
-/

namespace A220114.P7379481661375235521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A163520 (n + 1)

end

end A220114.P7379481661375235521

/-! ## A220114.P11111765157841725045

`1-(A063655(Δ[n²]-n)-n)`
-/

namespace A220114.P11111765157841725045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A063655 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A220114.P11111765157841725045

/-! ## A220114.P16385744728348710913

`A023443(A385454(n+1))`
-/

namespace A220114.P16385744728348710913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A385454 (n + 1)).toNat

end

end A220114.P16385744728348710913

/-! ## A220114.P10377386975655040286

`A024000(A063655(n+1))+n`
-/

namespace A220114.P10377386975655040286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A063655 (n + 1)).toNat + (n : ℤ)

end

end A220114.P10377386975655040286

/-! ## A220114.P4298981561753221658

`A023443(n)-A387830(n+1)`
-/

namespace A220114.P4298981561753221658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n - A387830 (n + 1)

end

end A220114.P4298981561753221658

/-! ## A220114.P1132681516719243498

`A075255(n+1)-A092510(n+1)`
-/

namespace A220114.P1132681516719243498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) - A092510 (n + 1)

end

end A220114.P1132681516719243498

/-! ## A220114.P17652995184550814580

`-(A063655(n+1)+A001478(n+1))`
-/

namespace A220114.P17652995184550814580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A063655 (n + 1) + A001478 (n + 1))

end

end A220114.P17652995184550814580

/-! ## A220114.P7048337937359754600

`A101322(n+1)-2*A033676(n+1)`
-/

namespace A220114.P7048337937359754600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (n + 1) - 2 * A033676 (n + 1)

end

end A220114.P7048337937359754600

/-! ## A220114.P8275810243603584450

`A001489(A063655(n+1))+A000027(n+1)`
-/

namespace A220114.P8275810243603584450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A063655 (n + 1)).toNat + A000027 (n + 1)

end

end A220114.P8275810243603584450

/-! ## A220114.P7081669083785787812

`n-A078898(A262767(n+1)-2)`
-/

namespace A220114.P7081669083785787812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A078898 (A262767 (n + 1) - 2).toNat

end

end A220114.P7081669083785787812

/-! ## A220114.P10816799978634505226

`A092510(A053024(n+1))-A092510(n+1)`
-/

namespace A220114.P10816799978634505226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092510 (A053024 (n + 1)).toNat - A092510 (n + 1)

end

end A220114.P10816799978634505226

/-!
# A220115: a(n) = A000120(n) - A007895(n), the number of 1's in binary expansion of n minus the number of terms in Zeckendorf representation of n.

The programs for A220115, the canonical program `A220115.P11390568708152913507` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220115 has offset 0).

The definition of A220115 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A220115.P11390568708152913507

`A000120(n)-A007895(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A220115

/-- `A000120(n)-A007895(n)` -/
def P11390568708152913507.Spec : Prop :=
  ∀ n, P11390568708152913507.a n = A220115 n

theorem P11390568708152913507.correct : P11390568708152913507.Spec := by
  intro n
  simp only [A220115]

end A220115

/-! ## A220115.P15228898528176596351

`A219641(n)-A011371(n)`
-/

namespace A220115.P15228898528176596351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n - A011371 n

end

end A220115.P15228898528176596351

namespace A220115

/-- `A219641(n)-A011371(n)` -/
def P15228898528176596351.Spec : Prop :=
  ∀ n, P15228898528176596351.a n = A220115 n

end A220115

/-! ## A220115.P15780301606965498803

`∑[A088705(n)]-A007895(n)`
-/

namespace A220115.P15780301606965498803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007895 n

end

end A220115.P15780301606965498803

namespace A220115

/-- `∑[A088705(n)]-A007895(n)` -/
def P15780301606965498803.Spec : Prop :=
  ∀ n, P15780301606965498803.a n = A220115 n

end A220115

/-! ## A220115.P17998449219201172944

`A000120(n)+A219641(n)-n`
-/

namespace A220115.P17998449219201172944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A219641 n - (n : ℤ))

end

end A220115.P17998449219201172944

namespace A220115

/-- `A000120(n)+A219641(n)-n` -/
def P17998449219201172944.Spec : Prop :=
  ∀ n, P17998449219201172944.a n = A220115 n

theorem P17998449219201172944.correct : P17998449219201172944.Spec := by
  intro n
  simp only [A220115, Nat.add_sub_cancel, A220115.P17998449219201172944.a, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A007895, A007895.P13159574906702943091.a, A219641, A219641.P1602393212941527080.a, A005187, A005187.P3874015513960485494.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220115

/-! ## A220115.P11407765475403637420

`A219641(n)+n-A005187(n)`
-/

namespace A220115.P11407765475403637420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + ((n : ℤ) - A005187 n)

end

end A220115.P11407765475403637420

namespace A220115

/-- `A219641(n)+n-A005187(n)` -/
def P11407765475403637420.Spec : Prop :=
  ∀ n, P11407765475403637420.a n = A220115 n

theorem P11407765475403637420.correct : P11407765475403637420.Spec := by
  intro n
  simp only [A220115, Nat.add_sub_cancel, A220115.P11407765475403637420.a, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A007895, A007895.P13159574906702943091.a, A219641, A219641.P1602393212941527080.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220115

/-! ## A220115.P13428281618213247577

`A000120(n)-∑{digits}[A014417(n), #]`
-/

namespace A220115.P13428281618213247577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A220115.P13428281618213247577

namespace A220115

/-- `A000120(n)-∑{digits}[A014417(n), #]` -/
def P13428281618213247577.Spec : Prop :=
  ∀ n, P13428281618213247577.a n = A220115 n

end A220115

/-! ## A220115.P10193879352909370405

`A063787(n+1)-A143299(n+1)`
-/

namespace A220115.P10193879352909370405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1) - A143299 (n + 1)

end

end A220115.P10193879352909370405

namespace A220115

/-- `A063787(n+1)-A143299(n+1)` -/
def P10193879352909370405.Spec : Prop :=
  ∀ n, P10193879352909370405.a n = A220115 n

theorem P10193879352909370405.correct : P10193879352909370405.Spec := by
  intro n
  simp only [A220115, Nat.add_sub_cancel, A220115.P10193879352909370405.a, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A007895, A007895.P13159574906702943091.a, A063787, A063787.P13236937262237871159.a, A143299, A143299.P15563677956109418683.a, A005187, A005187.P3874015513960485494.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220115

/-! ## A220115.P3461089399459649908

`A288625(n+1)-(A005187(n)+2)`
-/

namespace A220115.P3461089399459649908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - (A005187 n + 2)

end

end A220115.P3461089399459649908

namespace A220115

/-- `A288625(n+1)-(A005187(n)+2)` -/
def P3461089399459649908.Spec : Prop :=
  ∀ n, P3461089399459649908.a n = A220115 n

theorem P3461089399459649908.correct : P3461089399459649908.Spec := by
  intro n
  simp only [A220115, Nat.add_sub_cancel, A220115.P3461089399459649908.a, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, A007895, A007895.P13159574906702943091.a, A288625, A288625.P5745602300368746224.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220115

/-! ## A220115.P3092527846277743225

`A000005(A001316(n))-(A007895(n)+1)`
-/

namespace A220115.P3092527846277743225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat - (A007895 n + 1)

end

end A220115.P3092527846277743225

namespace A220115

/-- `A000005(A001316(n))-(A007895(n)+1)` -/
def P3092527846277743225.Spec : Prop :=
  ∀ n, P3092527846277743225.a n = A220115 n

end A220115

/-! ## A220115.P12638629079614700993

`A000120(n)-(A213911(n)+A003849(n))`
-/

namespace A220115.P12638629079614700993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - (A213911 n + A003849 n)

end

end A220115.P12638629079614700993

namespace A220115

/-- `A000120(n)-(A213911(n)+A003849(n))` -/
def P12638629079614700993.Spec : Prop :=
  ∀ n, P12638629079614700993.a n = A220115 n

theorem P12638629079614700993.correct : P12638629079614700993.Spec := by
  intro n
  simp only [A220115, Nat.add_sub_cancel, A220115.P12638629079614700993.a, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A005187, A005187.P3874015513960485494.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220115

/-! ## A220115.P1258959781526589906

`A000120(n)+A213911(n)-A104324(n)`
-/

namespace A220115.P1258959781526589906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A213911 n - A104324 n)

end

end A220115.P1258959781526589906

namespace A220115

/-- `A000120(n)+A213911(n)-A104324(n)` -/
def P1258959781526589906.Spec : Prop :=
  ∀ n, P1258959781526589906.a n = A220115 n

theorem P1258959781526589906.correct : P1258959781526589906.Spec := by
  intro n
  simp only [A220115, Nat.add_sub_cancel, A220115.P1258959781526589906.a, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A007895, A007895.P13159574906702943091.a, A104324, A104324.P1859779613873930843.a, A213911, A213911.P10704289243874186372.a, A003849, A003849.P15070805603138295355.a, A005187, A005187.P3874015513960485494.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A220115

/-! ## A220115.P12840637621793424995

`A219637(n+1)-(A022342(n+1)+A011371(n))`
-/

namespace A220115.P12840637621793424995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1) - (A022342 (n + 1) + A011371 n)

end

end A220115.P12840637621793424995

namespace A220115

/-- `A219637(n+1)-(A022342(n+1)+A011371(n))` -/
def P12840637621793424995.Spec : Prop :=
  ∀ n, P12840637621793424995.a n = A220115 n

end A220115

/-! ## A220115.P17471048635561328101

`A265745(A197911(n))-A007895(n)`
-/

namespace A220115.P17471048635561328101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A197911 n).toNat - A007895 n

end

end A220115.P17471048635561328101

namespace A220115

/-- `A265745(A197911(n))-A007895(n)` -/
def P17471048635561328101.Spec : Prop :=
  ∀ n, P17471048635561328101.a n = A220115 n

end A220115

/-! ## A220115.P1527683757843495943

`A000120(n)-dr(record[A130310(n)])`
-/

namespace A220115.P1527683757843495943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - (SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℤ)

end

end A220115.P1527683757843495943

namespace A220115

/-- `A000120(n)-dr(record[A130310(n)])` -/
def P1527683757843495943.Spec : Prop :=
  ∀ n, P1527683757843495943.a n = A220115 n

end A220115

/-! ## A220115.P13070415632663397604

`A007895(A048680(n))-A007895(n)`
-/

namespace A220115.P13070415632663397604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A048680 n).toNat - A007895 n

end

end A220115.P13070415632663397604

namespace A220115

/-- `A007895(A048680(n))-A007895(n)` -/
def P13070415632663397604.Spec : Prop :=
  ∀ n, P13070415632663397604.a n = A220115 n

end A220115

/-! ## A220115.P12264501808909016881

`A000120(n)-A000120(A048679(n))`
-/

namespace A220115.P12264501808909016881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A048679 n).toNat

end

end A220115.P12264501808909016881

namespace A220115

/-- `A000120(n)-A000120(A048679(n))` -/
def P12264501808909016881.Spec : Prop :=
  ∀ n, P12264501808909016881.a n = A220115 n

end A220115

/-! ## A220115.P740149807314370420

`A000120(n)-A000120(record[xor(n, 2*n)/3])`
-/

namespace A220115.P740149807314370420
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A220115.P740149807314370420

namespace A220115

/-- `A000120(n)-A000120(record[xor(n, 2*n)/3])` -/
def P740149807314370420.Spec : Prop :=
  ∀ n, P740149807314370420.a n = A220115 n

end A220115

/-! ## A220115.P8686952179220985783

`A000120(n)-A000120(A003714(n))`
-/

namespace A220115.P8686952179220985783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A003714 n).toNat

end

end A220115.P8686952179220985783

namespace A220115

/-- `A000120(n)-A000120(A003714(n))` -/
def P8686952179220985783.Spec : Prop :=
  ∀ n, P8686952179220985783.a n = A220115 n

end A220115

/-! ## A220115.P4796980930828805235

`A000120(n)-A000120(A022340(n)/2)`
-/

namespace A220115.P4796980930828805235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (SequenceMachineLib.roundAway ((A022340 n : ℚ) / 2)).toNat

end

end A220115.P4796980930828805235

namespace A220115

/-- `A000120(n)-A000120(A022340(n)/2)` -/
def P4796980930828805235.Spec : Prop :=
  ∀ n, P4796980930828805235.a n = A220115 n

end A220115

/-! ## A220115.P15811401405270547953

`A000120(n)-A000120(eq[n, A184617(n)])`
-/

namespace A220115.P15811401405270547953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220115.P15811401405270547953

namespace A220115

/-- `A000120(n)-A000120(eq[n, A184617(n)])` -/
def P15811401405270547953.Spec : Prop :=
  ∀ n, P15811401405270547953.a n = A220115 n

end A220115

/-!
# A220116: Numbers k such that the number of 1's in binary expansion of k equals the number of terms in Zeckendorf representation of k.

The programs for A220116, the canonical program `A220116.P3171378606926799839` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220116 has offset 1).

The definition of A220116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220116.P4885106283030960526

`eq[0, A220115(n)]`
-/

namespace A220116.P4885106283030960526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220116.P4885106283030960526

namespace A220116

/-- `eq[0, A220115(n)]` -/
def P4885106283030960526.Spec : Prop :=
  ∀ n, (P4885106283030960526.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P5850056650189610620

`eq[a(and(n, n-1))+1, A007895(n)]` with `a(0)=0`
-/

namespace A220116.P5850056650189610620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220116.P5850056650189610620

namespace A220116

/-- `eq[a(and(n, n-1))+1, A007895(n)]` -/
def P5850056650189610620.Spec : Prop :=
  ∀ n, (P5850056650189610620.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P13819472096917908406

`eq[A000120(n), A007895(n)]`
-/

namespace A220116.P13819472096917908406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P13819472096917908406

namespace A220116

/-- `eq[A000120(n), A007895(n)]` -/
def P13819472096917908406.Spec : Prop :=
  ∀ n, (P13819472096917908406.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P17560283460923486919

`lt[abs(A220115(n)), A054977(n)]`
-/

namespace A220116.P17560283460923486919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A220115 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A220116.P17560283460923486919

namespace A220116

/-- `lt[abs(A220115(n)), A054977(n)]` -/
def P17560283460923486919.Spec : Prop :=
  ∀ n, (P17560283460923486919.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P10026493907906876635

`eq[n, A219641(n)+A000120(n)]`
-/

namespace A220116.P10026493907906876635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220116.P10026493907906876635

namespace A220116

/-- `eq[n, A219641(n)+A000120(n)]` -/
def P10026493907906876635.Spec : Prop :=
  ∀ n, (P10026493907906876635.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P16343785483684818055

`eq[n, A005187(n)-A219641(n)]`
-/

namespace A220116.P16343785483684818055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A219641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220116.P16343785483684818055

namespace A220116

/-- `eq[n, A005187(n)-A219641(n)]` -/
def P16343785483684818055.Spec : Prop :=
  ∀ n, (P16343785483684818055.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P3171378606926799839

`eq[A063787(n+1), A143299(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A220116

/-- `eq[A063787(n+1), A143299(n+1)]` -/
def P3171378606926799839.Spec : Prop :=
  ∀ n, (P3171378606926799839.a n : ℤ) = A220116 (n + 1)

theorem P3171378606926799839.correct : P3171378606926799839.Spec := by
  intro n
  simp only [A220116, Nat.add_sub_cancel]

end A220116

/-! ## A220116.P10375954508905667458

`eq[2, A288625(n+1)-A005187(n)]`
-/

namespace A220116.P10375954508905667458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - A005187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220116.P10375954508905667458

namespace A220116

/-- `eq[2, A288625(n+1)-A005187(n)]` -/
def P10375954508905667458.Spec : Prop :=
  ∀ n, (P10375954508905667458.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P12239340667528801694

`eq[A007895(n)+1, A000005(A001316(n))]`
-/

namespace A220116.P12239340667528801694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P12239340667528801694

namespace A220116

/-- `eq[A007895(n)+1, A000005(A001316(n))]` -/
def P12239340667528801694.Spec : Prop :=
  ∀ n, (P12239340667528801694.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P15417236000650680447

`eq[A001316(n), A001316(A003714(n))]`
-/

namespace A220116.P15417236000650680447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P15417236000650680447

namespace A220116

/-- `eq[A001316(n), A001316(A003714(n))]` -/
def P15417236000650680447.Spec : Prop :=
  ∀ n, (P15417236000650680447.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P6985628242883092700

`eq[A001316(n), A001316(A022340(n))]`
-/

namespace A220116.P6985628242883092700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A022340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P6985628242883092700

namespace A220116

/-- `eq[A001316(n), A001316(A022340(n))]` -/
def P6985628242883092700.Spec : Prop :=
  ∀ n, (P6985628242883092700.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P11965777423593123198

`eq[A000120(n), A000120(A048679(n))]`
-/

namespace A220116.P11965777423593123198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A048679 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P11965777423593123198

namespace A220116

/-- `eq[A000120(n), A000120(A048679(n))]` -/
def P11965777423593123198.Spec : Prop :=
  ∀ n, (P11965777423593123198.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P3002278094304758623

`eq[A007895(n), A007895(A048680(n))]`
-/

namespace A220116.P3002278094304758623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A048680 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P3002278094304758623

namespace A220116

/-- `eq[A007895(n), A007895(A048680(n))]` -/
def P3002278094304758623.Spec : Prop :=
  ∀ n, (P3002278094304758623.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P5779235535331500203

`eq[A000120(n), A000120(A003714(n))]`
-/

namespace A220116.P5779235535331500203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P5779235535331500203

namespace A220116

/-- `eq[A000120(n), A000120(A003714(n))]` -/
def P5779235535331500203.Spec : Prop :=
  ∀ n, (P5779235535331500203.a n : ℤ) = A220116 (n + 1)

end A220116

/-! ## A220116.P14427720576024133674

`eq[A000120(n), A000120(A022340(n))]`
-/

namespace A220116.P14427720576024133674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A022340 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220116.P14427720576024133674

namespace A220116

/-- `eq[A000120(n), A000120(A022340(n))]` -/
def P14427720576024133674.Spec : Prop :=
  ∀ n, (P14427720576024133674.a n : ℤ) = A220116 (n + 1)

end A220116

/-!
# A220118: First occurrence of -n in A220115.

The programs for A220118, there is no canonical definition to state claims against.
-/

/-! ## A220118.P6638841336450632314

`and(A236383(2*(n+2)), A236399(A236413(n+1)))`
-/

namespace A220118.P6638841336450632314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A236383 (2 * (n + 2))) (A236399 (A236413 (n + 1)).toNat)

end

end A220118.P6638841336450632314

/-!
# A220121: Corresponding to the bases in A220120, the smallest primes such that there are two smaller that juxtaposed with it all 6 ways produces primes.

The programs for A220121, there is no canonical definition to state claims against.
-/

/-! ## A220121.P18308610885259872282

`A299791(A054864(n+1))`
-/

namespace A220121.P18308610885259872282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299791 (A054864 (n + 1)).toNat

end

end A220121.P18308610885259872282

/-!
# A220122: Number A(n,k) of tilings of a k X n rectangle using integer-sided rectangular tiles of area k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A220122, there is no canonical definition to state claims against.
-/

/-! ## A220122.P8663223454938675029

`A332288(A370030(n+1)+A098220(n+1))`
-/

namespace A220122.P8663223454938675029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332288 (A370030 (n + 1) + A098220 (n + 1)).toNat

end

end A220122.P8663223454938675029

/-! ## A220122.P16347365558461491859

`gcd(A053618(2*n+3), A317073(A371417(n+1)))`
-/

namespace A220122.P16347365558461491859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053618 (2 * n + 3)) (A317073 (A371417 (n + 1)).toNat)

end

end A220122.P16347365558461491859

/-! ## A220122.P2377514576920699449

`gcd(7*C(n, 2)+n, A003238(A219727(n)))`
-/

namespace A220122.P2377514576920699449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * Nat.choose n 2 + n : ℤ) (A003238 (A219727 n).toNat)

end

end A220122.P2377514576920699449

/-! ## A220122.P789162716909450376

`gcd(A008284(A229142(n)), A168036(n))`
-/

namespace A220122.P789162716909450376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008284 (A229142 n).toNat) (A168036 n)

end

end A220122.P789162716909450376

/-! ## A220122.P1222873361769125663

`gcd(A095310(n+1), A171848(A171848(2*n+1)))`
-/

namespace A220122.P1222873361769125663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095310 (n + 1)) (A171848 (A171848 (2 * n + 1)).toNat)

end

end A220122.P1222873361769125663

/-!
# A220123: Number of tilings of a 4 X n rectangle using integer-sided rectangular tiles of area 4.

The programs for A220123, the canonical program `A220123.P10863010559685402126` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220123 has offset 0).

The definition of A220123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220123.P10863010559685402126

`a(n-1)+a(n-2)+5*a(n-4)-a(n-5)+a(n-6)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=9, a(5)=16, a(6)=35, a(7)=65`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220123

/-- `a(n-1)+a(n-2)+5*a(n-4)-a(n-5)+a(n-6)-a(n-8)` -/
def P10863010559685402126.Spec : Prop :=
  ∀ n, P10863010559685402126.a n = A220123 n

theorem P10863010559685402126.correct : P10863010559685402126.Spec := by
  intro n
  simp only [A220123]

end A220123

/-! ## A220123.P6265361702874841784

`A220122(∑[n+5]+5)`
-/

namespace A220123.P6265361702874841784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A220123.P6265361702874841784

namespace A220123

/-- `A220122(∑[n+5]+5)` -/
def P6265361702874841784.Spec : Prop :=
  ∀ n, P6265361702874841784.a n = A220123 n

end A220123

/-! ## A220123.P15020897541509160737

`A220122(A052905(n+2))+A126120(2*n+3)`
-/

namespace A220123.P15020897541509160737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A052905 (n + 2)).toNat + A126120 (2 * n + 3)

end

end A220123.P15020897541509160737

namespace A220123

/-- `A220122(A052905(n+2))+A126120(2*n+3)` -/
def P15020897541509160737.Spec : Prop :=
  ∀ n, P15020897541509160737.a n = A220123 n

end A220123

/-! ## A220123.P17440693773248028898

`A278169(3*n+2)+A220122(A052905(n+2))`
-/

namespace A220123.P17440693773248028898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278169 (3 * n + 2) + A220122 (A052905 (n + 2)).toNat

end

end A220123.P17440693773248028898

namespace A220123

/-- `A278169(3*n+2)+A220122(A052905(n+2))` -/
def P17440693773248028898.Spec : Prop :=
  ∀ n, P17440693773248028898.a n = A220123 n

end A220123

/-! ## A220123.P16653176810204920756

`A014963(20*(n+1))*A220122(A052905(n+2))`
-/

namespace A220123.P16653176810204920756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A220122 (A052905 (n + 2)).toNat

end

end A220123.P16653176810204920756

namespace A220123

/-- `A014963(20*(n+1))*A220122(A052905(n+2))` -/
def P16653176810204920756.Spec : Prop :=
  ∀ n, P16653176810204920756.a n = A220123 n

end A220123

/-!
# A220124: Number of tilings of a 6 X n rectangle using integer-sided rectangular tiles of area 6.

The programs for A220124, there is no canonical definition to state claims against.
-/

/-! ## A220124.P17215336222860010375

`A220122(eq[6, A025581(n)])`
-/

namespace A220124.P17215336222860010375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220124.P17215336222860010375

/-! ## A220124.P13623393497660571183

`A220122(eq[7, A193739(n)])`
-/

namespace A220124.P13623393497660571183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220124.P13623393497660571183

/-! ## A220124.P14383650277431781449

`A220122(A055999(n+4)-1)`
-/

namespace A220124.P14383650277431781449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A055999 (n + 4) - 1).toNat

end

end A220124.P14383650277431781449

/-! ## A220124.P17563176777262161821

`A220122(A052905(n+4)-2)`
-/

namespace A220124.P17563176777262161821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A052905 (n + 4) - 2).toNat

end

end A220124.P17563176777262161821

/-! ## A220124.P9760150573662968647

`A220122(A000217(n+7)-7)`
-/

namespace A220124.P9760150573662968647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A000217 (n + 7) - 7).toNat

end

end A220124.P9760150573662968647

/-!
# A220125: Number of tilings of an 8 X n rectangle using integer-sided rectangular tiles of area 8.

The programs for A220125, there is no canonical definition to state claims against.
-/

/-! ## A220125.P16935114646137035566

`A220122(A051936(n+9))`
-/

namespace A220125.P16935114646137035566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A051936 (n + 9)).toNat

end

end A220125.P16935114646137035566

/-! ## A220125.P10854501283650381573

`A220122(eq[8, A025581(n)])`
-/

namespace A220125.P10854501283650381573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220125.P10854501283650381573

/-! ## A220125.P2111230383101805644

`A220122(eq[9, A193739(n)])`
-/

namespace A220125.P2111230383101805644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220125.P2111230383101805644

/-! ## A220125.P2756505552572271322

`A220122(eq[16, A116949(n)])`
-/

namespace A220125.P2756505552572271322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220125.P2756505552572271322

/-! ## A220125.P4856461918783125762

`A220122(A056000(n+5)+1)`
-/

namespace A220125.P4856461918783125762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A056000 (n + 5) + 1).toNat

end

end A220125.P4856461918783125762

/-!
# A220126: Number of tilings of a 9 X n rectangle using integer-sided rectangular tiles of area 9.

The programs for A220126, there is no canonical definition to state claims against.
-/

/-! ## A220126.P2666851928811136115

`A220122(A056000(n+6))`
-/

namespace A220126.P2666851928811136115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A056000 (n + 6)).toNat

end

end A220126.P2666851928811136115

/-! ## A220126.P16129035579536088172

`A220122(eq[8, A116949(n)])`
-/

namespace A220126.P16129035579536088172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220126.P16129035579536088172

/-! ## A220126.P15289848288662384273

`A220122(eq[9, A025581(n)])`
-/

namespace A220126.P15289848288662384273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220126.P15289848288662384273

/-! ## A220126.P4409173852389927737

`A220122(eq[10, A193739(n)])`
-/

namespace A220126.P4409173852389927737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220126.P4409173852389927737

/-! ## A220126.P16484956938817876556

`A220122(eq[10, A195663(n)])`
-/

namespace A220126.P16484956938817876556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220126.P16484956938817876556

/-!
# A220127: Number of tilings of a 10 X n rectangle using integer-sided rectangular tiles of area 10.

The programs for A220127, there is no canonical definition to state claims against.
-/

/-! ## A220127.P11083786602661325491

`A220122(eq[10, A025581(n)])`
-/

namespace A220127.P11083786602661325491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220127.P11083786602661325491

/-! ## A220127.P17167820950771962973

`A220122(eq[21, A099375(n)])`
-/

namespace A220127.P17167820950771962973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220127.P17167820950771962973

/-! ## A220127.P4363105307140764707

`A220122(A055999(n+8)-5)`
-/

namespace A220127.P4363105307140764707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A055999 (n + 8) - 5).toNat

end

end A220127.P4363105307140764707

/-! ## A220127.P11369308829622343845

`A220122(A000217(n+11)-11)`
-/

namespace A220127.P11369308829622343845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A000217 (n + 11) - 11).toNat

end

end A220127.P11369308829622343845

/-! ## A220127.P17316174124922911169

`A220122(eq[11, A004736(n+1)])`
-/

namespace A220127.P17316174124922911169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220127.P17316174124922911169

/-!
# A220128: 1 followed by period 6: (1, 3, 2, 3, 1, 4) repeated; offset 0.

The programs for A220128, the canonical program `A220128.P18402137957079386081` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220128 has offset 0).

The definition of A220128 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220128.P18402137957079386081

`∑{p}[n, floor(4/#)]+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220128

/-- `∑{p}[n, floor(4/#)]+1` -/
def P18402137957079386081.Spec : Prop :=
  ∀ n, P18402137957079386081.a n = A220128 n

theorem P18402137957079386081.correct : P18402137957079386081.Spec := by
  intro n
  simp only [A220128]

end A220128

/-!
# A220129: 1 followed by period 12: (1, 5, 3, 9, 1, 7, 1, 9, 3, 5, 1, 11) repeated; offset 0.

The programs for A220129, there is no canonical definition to state claims against.
-/

/-! ## A220129.P3933502650830776295

`or(1, round(A220130(n)/2))`
-/

namespace A220129.P3933502650830776295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((A220130 n : ℚ) / 2))

end

end A220129.P3933502650830776295

/-!
# A220130: Number of tilings of an n X 5 rectangle using integer-sided rectangular tiles of area n.

The programs for A220130, there is no canonical definition to state claims against.
-/

/-! ## A220130.P9932420149125941110

`A220122(∑[n+5]+15)`
-/

namespace A220130.P9932420149125941110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A220130.P9932420149125941110

/-!
# A220131: Number of tilings of an n X 6 rectangle using integer-sided rectangular tiles of area n.

The programs for A220131, there is no canonical definition to state claims against.
-/

/-! ## A220131.P12160917618677325413

`A220122(eq[6, A002262(n)])`
-/

namespace A220131.P12160917618677325413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220131.P12160917618677325413

/-!
# A220132: Number of tilings of an n X 7 rectangle using integer-sided rectangular tiles of area n.

The programs for A220132, there is no canonical definition to state claims against.
-/

/-! ## A220132.P8585407016432011131

`A220122(A167487(n+6))`
-/

namespace A220132.P8585407016432011131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A167487 (n + 6)).toNat

end

end A220132.P8585407016432011131

/-!
# A220133: Number of tilings of an n X 8 rectangle using integer-sided rectangular tiles of area n.

The programs for A220133, there is no canonical definition to state claims against.
-/

/-! ## A220133.P1299018010156480937

`A220122(eq[8, A002262(n)])`
-/

namespace A220133.P1299018010156480937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220133.P1299018010156480937

/-!
# A220134: Number of tilings of an n X 9 rectangle using integer-sided rectangular tiles of area n.

The programs for A220134, there is no canonical definition to state claims against.
-/

/-! ## A220134.P16118605958259528006

`A220122(eq[9, A002262(n)])`
-/

namespace A220134.P16118605958259528006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220134.P16118605958259528006

/-! ## A220134.P1397973882998962268

`A220122(eq[10, A193738(n)])`
-/

namespace A220134.P1397973882998962268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220134.P1397973882998962268

/-! ## A220134.P7510073982572794240

`A220122(A167499(n+8)+4)`
-/

namespace A220134.P7510073982572794240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A167499 (n + 8) + 4).toNat

end

end A220134.P7510073982572794240

/-! ## A220134.P15101522309970130224

`A220122(A133263(n+9)+7)`
-/

namespace A220134.P15101522309970130224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A133263 (n + 9) + 7).toNat

end

end A220134.P15101522309970130224

/-! ## A220134.P12499332234169444170

`A220122(eq[10, A002260(n+1)])`
-/

namespace A220134.P12499332234169444170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220134.P12499332234169444170

/-!
# A220135: Number of tilings of an n X 10 rectangle using integer-sided rectangular tiles of area n.

The programs for A220135, there is no canonical definition to state claims against.
-/

/-! ## A220135.P10689788923102889139

`A220122(eq[10, A002262(n)])`
-/

namespace A220135.P10689788923102889139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220135.P10689788923102889139

/-! ## A220135.P18315507633858506080

`A220122(eq[11, A193738(n)])`
-/

namespace A220135.P18315507633858506080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220135.P18315507633858506080

/-! ## A220135.P4186151567009963144

`A220122(eq[10, A144328(n+1)])`
-/

namespace A220135.P4186151567009963144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220135.P4186151567009963144

/-! ## A220135.P15839966493060191807

`A220122(eq[11, A002260(n+1)])`
-/

namespace A220135.P15839966493060191807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220135.P15839966493060191807

/-! ## A220135.P2501558911186041518

`A220122(A161680(n+11)+11-A185115(n+4))`
-/

namespace A220135.P2501558911186041518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (A161680 (n + 11) + 11 - A185115 (n + 4)).toNat

end

end A220135.P2501558911186041518

/-!
# A220136: Number of ways that a number n can be written as ddd...d where d is a digit in base b with 1 < b < n-1.

The programs for A220136, there is no canonical definition to state claims against.
-/

/-! ## A220136.P47768825787962589

`A005089(or(A000045(n), A300506(n+1)))`
-/

namespace A220136.P47768825787962589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (Int.lor (A000045 n) (A300506 (n + 1))).toNat

end

end A220136.P47768825787962589

/-! ## A220136.P16161603826061188983

`and(A109699(n+2), A136735(3*(n+1)))`
-/

namespace A220136.P16161603826061188983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A109699 (n + 2)) (A136735 (3 * (n + 1)))

end

end A220136.P16161603826061188983

/-! ## A220136.P18151802152935334335

`A124766(A245559(n+1)*A340795(n+1))`
-/

namespace A220136.P18151802152935334335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A245559 (n + 1) * A340795 (n + 1)).toNat

end

end A220136.P18151802152935334335

/-! ## A220136.P4946758531632451573

`A333382(A199973(2*n+1)%A092311(n+1))`
-/

namespace A220136.P4946758531632451573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (Int.tmod (A199973 (2 * n + 1)) (A092311 (n + 1))).toNat

end

end A220136.P4946758531632451573

/-! ## A220136.P10269345534554219590

`A352514(A352544(n)-A352493(n+3))`
-/

namespace A220136.P10269345534554219590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A352544 n - A352493 (n + 3)).toNat

end

end A220136.P10269345534554219590

/-!
# A220139: The highest value of the Collatz iteration (3x+1) starting at a(n-1) + 1, with a(1) = 1.

The programs for A220139, there is no canonical definition to state claims against.
-/

/-! ## A220139.P10630826481178808381

`record[A025586(∑[A290776(n)])]`
-/

namespace A220139.P10630826481178808381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290776 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220139.P10630826481178808381

/-! ## A220139.P16228742747124293228

`A087251(A328314(a(n-1)+1))` with `a(0)=1`
-/

namespace A220139.P16228742747124293228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087251 (A328314 (a (n - 1) + 1).toNat).toNat

end

end A220139.P16228742747124293228

/-! ## A220139.P10727719985095615427

`A025586(a(n-1)+1)` with `a(0)=1`
-/

namespace A220139.P10727719985095615427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025586 (a (n - 1) + 1).toNat

end

end A220139.P10727719985095615427

/-!
# A220141: Prime numbers p that yield a new record for the least number k such that p*k + 1 and p*k - 1 are twin primes.

The programs for A220141, there is no canonical definition to state claims against.
-/

/-! ## A220141.P17251916388848397058

`record[A006530(A071256(n+1)*A220143(n+1))]`
-/

namespace A220141.P17251916388848397058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071256 (n + 1) * A220143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220141.P17251916388848397058

/-! ## A220141.P14862666016443142518

`record[A006530(A220143(n+1)*A238849(n+1))]`
-/

namespace A220141.P14862666016443142518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A220143 (n + 1) * A238849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220141.P14862666016443142518

/-!
# A220142: The values of k in A220141.

The programs for A220142, there is no canonical definition to state claims against.
-/

/-! ## A220142.P1314871479449278380

`record[A071407(n+1)]`
-/

namespace A220142.P1314871479449278380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220142.P1314871479449278380

/-! ## A220142.P5036160215063399273

`record[A071558(p?[2*n+1])]`
-/

namespace A220142.P5036160215063399273
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220142.P5036160215063399273

/-! ## A220142.P12588770179841224224

`A071558(A220141(n+1))`
-/

namespace A220142.P12588770179841224224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A220141 (n + 1)).toNat

end

end A220142.P12588770179841224224

/-! ## A220142.P8661427785755385557

`record[A071558(A000040(n+1))]`
-/

namespace A220142.P8661427785755385557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220142.P8661427785755385557

/-! ## A220142.P1606639481207353615

`record[A071558(A093074(n+1))]`
-/

namespace A220142.P1606639481207353615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A093074 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220142.P1606639481207353615

/-!
# A220143: Numbers n that yield a new record for k such that n*k+1 and n*k-1 are twin primes.

The programs for A220143, there is no canonical definition to state claims against.
-/

/-! ## A220143.P16322832044260206905

`A257771(A052383(n+1)+1)`
-/

namespace A220143.P16322832044260206905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257771 (A052383 (n + 1) + 1).toNat

end

end A220143.P16322832044260206905

/-! ## A220143.P11950808502473755107

`lt[A317492(n+1), A071558(n+1)]+1`
-/

namespace A220143.P11950808502473755107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A220143.P11950808502473755107

/-!
# A220144: The values of k in A220143.

The programs for A220144, there is no canonical definition to state claims against.
-/

/-! ## A220144.P4936591407992036423

`record[A071558(n+1)]`
-/

namespace A220144.P4936591407992036423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220144.P4936591407992036423

/-! ## A220144.P1820152363214139443

`record[A071256(n+1)/(n+1)]`
-/

namespace A220144.P1820152363214139443
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220144.P1820152363214139443

/-! ## A220144.P4616814787641814160

`A071558(A220143(n+1))`
-/

namespace A220144.P4616814787641814160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (A220143 (n + 1)).toNat

end

end A220144.P4616814787641814160

/-! ## A220144.P3856625545069805917

`record[(6*A071256(n+1))%A016969(n)]`
-/

namespace A220144.P3856625545069805917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A071256 (n + 1)) (A016969 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220144.P3856625545069805917

/-! ## A220144.P6156467700688257847

`record[(11*A071256(n+1))%A017509(n)]`
-/

namespace A220144.P6156467700688257847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * A071256 (n + 1)) (A017509 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220144.P6156467700688257847

/-!
# A220145: The Collatz (3x+1) iteration mod 2 with bits combined.

The programs for A220145, there is no canonical definition to state claims against.
-/

/-! ## A220145.P6613070126426951378

`A007088(A221468(n+1))`
-/

namespace A220145.P6613070126426951378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A221468 (n + 1)).toNat

end

end A220145.P6613070126426951378

/-!
# A220146: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A220146, there is no canonical definition to state claims against.
-/

/-! ## A220146.P3224651775911562262

`A220153(∑[4*n]+1)`
-/

namespace A220146.P3224651775911562262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220146.P3224651775911562262

/-! ## A220146.P2331997451999165085

`record[A220153(A330613(n+1))]`
-/

namespace A220146.P2331997451999165085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220146.P2331997451999165085

/-! ## A220146.P10416285981734438121

`record[A220153(A284254(n²+1))]`
-/

namespace A220146.P10416285981734438121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A284254 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220146.P10416285981734438121

/-!
# A220147: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 2 array.

The programs for A220147, the canonical program `A220147.P10870564139224795462` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220147 has offset 1).

The definition of A220147 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220147.P17113728542957724267

`∑[∑[n²+5-n]-2]`
-/

namespace A220147.P17113728542957724267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (5 - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220147.P17113728542957724267

namespace A220147

/-- `∑[∑[n²+5-n]-2]` -/
def P17113728542957724267.Spec : Prop :=
  ∀ n, P17113728542957724267.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P7922673821287433848

`floor(∑[∑[∑[a(n-1)+2]]])` with `a(0)=3, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A220147.P7922673821287433848
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220147.P7922673821287433848

namespace A220147

/-- `floor(∑[∑[∑[a(n-1)+2]]])` -/
def P7922673821287433848.Spec : Prop :=
  ∀ n, (P7922673821287433848.a n : ℤ) = A220147 (n + 1)

end A220147

/-! ## A220147.P10870564139224795462

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=11, a(2)=26, a(3)=52, a(4)=95`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220147

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P10870564139224795462.Spec : Prop :=
  ∀ n, P10870564139224795462.a n = A220147 (n + 1)

theorem P10870564139224795462.correct : P10870564139224795462.Spec := by
  intro n
  simp only [A220147, Nat.add_sub_cancel]

end A220147

/-! ## A220147.P13789413949986264010

`A006007(n)+∑[4*n+3]`
-/

namespace A220147.P13789413949986264010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A220147.P13789413949986264010

namespace A220147

/-- `A006007(n)+∑[4*n+3]` -/
def P13789413949986264010.Spec : Prop :=
  ∀ n, P13789413949986264010.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P17736247159267649154

`∑[∑[A002061(n)]]+2*(n+1)²`
-/

namespace A220147.P17736247159267649154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * (n + 1) ^ 2 : ℤ)

end

end A220147.P17736247159267649154

namespace A220147

/-- `∑[∑[A002061(n)]]+2*(n+1)²` -/
def P17736247159267649154.Spec : Prop :=
  ∀ n, P17736247159267649154.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P4996063789399083754

`A005701(n)-A162147(n)`
-/

namespace A220147.P4996063789399083754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A162147 n

end

end A220147.P4996063789399083754

namespace A220147

/-- `A005701(n)-A162147(n)` -/
def P4996063789399083754.Spec : Prop :=
  ∀ n, P4996063789399083754.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P6747736424806777414

`A005701(n)-∑[A005475(n)]`
-/

namespace A220147.P6747736424806777414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220147.P6747736424806777414

namespace A220147

/-- `A005701(n)-∑[A005475(n)]` -/
def P6747736424806777414.Spec : Prop :=
  ∀ n, P6747736424806777414.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P3631819021362550627

`A014105(n+1)+A006007(n)`
-/

namespace A220147.P3631819021362550627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1) + A006007 n

end

end A220147.P3631819021362550627

namespace A220147

/-- `A014105(n+1)+A006007(n)` -/
def P3631819021362550627.Spec : Prop :=
  ∀ n, P3631819021362550627.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P17252595233367581779

`A166830(n+1)+A136396(n)`
-/

namespace A220147.P17252595233367581779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) + A136396 n

end

end A220147.P17252595233367581779

namespace A220147

/-- `A166830(n+1)+A136396(n)` -/
def P17252595233367581779.Spec : Prop :=
  ∀ n, P17252595233367581779.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P16023786462249227913

`A299120(n)+A080663(n+1)`
-/

namespace A220147.P16023786462249227913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299120 n + A080663 (n + 1)

end

end A220147.P16023786462249227913

namespace A220147

/-- `A299120(n)+A080663(n+1)` -/
def P16023786462249227913.Spec : Prop :=
  ∀ n, P16023786462249227913.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P7842753407504339736

`A395260(n+1)-A100119(n)`
-/

namespace A220147.P7842753407504339736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395260 (n + 1) - A100119 n

end

end A220147.P7842753407504339736

namespace A220147

/-- `A395260(n+1)-A100119(n)` -/
def P7842753407504339736.Spec : Prop :=
  ∀ n, P7842753407504339736.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P18286526506705017592

`∑[∑[A087475(n)]]-A000125(n)`
-/

namespace A220147.P18286526506705017592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000125 n

end

end A220147.P18286526506705017592

namespace A220147

/-- `∑[∑[A087475(n)]]-A000125(n)` -/
def P18286526506705017592.Spec : Prop :=
  ∀ n, P18286526506705017592.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P14144965661762409486

`A000217(2*(n+1))+∑[A006527(n)]`
-/

namespace A220147.P14144965661762409486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220147.P14144965661762409486

namespace A220147

/-- `A000217(2*(n+1))+∑[A006527(n)]` -/
def P14144965661762409486.Spec : Prop :=
  ∀ n, P14144965661762409486.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P14837136268690691432

`A219810(n+2)-(2*n+3)`
-/

namespace A220147.P14837136268690691432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219810 (n + 2) - (2 * n + 3 : ℤ)

end

end A220147.P14837136268690691432

namespace A220147

/-- `A219810(n+2)-(2*n+3)` -/
def P14837136268690691432.Spec : Prop :=
  ∀ n, P14837136268690691432.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P1298194024831318451

`∑[5*n+3]+∑[A007290(n+1)]`
-/

namespace A220147.P1298194024831318451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A220147.P1298194024831318451

namespace A220147

/-- `∑[5*n+3]+∑[A007290(n+1)]` -/
def P1298194024831318451.Spec : Prop :=
  ∀ n, P1298194024831318451.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P14508449191661967814

`A005701(n)-Δ[A212415(n)]`
-/

namespace A220147.P14508449191661967814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - (f1 (n + 1) - f1 n)

end

end A220147.P14508449191661967814

namespace A220147

/-- `A005701(n)-Δ[A212415(n)]` -/
def P14508449191661967814.Spec : Prop :=
  ∀ n, P14508449191661967814.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P9736245589514049112

`A055998(n+1)+2*A318054(n)`
-/

namespace A220147.P9736245589514049112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 1) + 2 * A318054 n

end

end A220147.P9736245589514049112

namespace A220147

/-- `A055998(n+1)+2*A318054(n)` -/
def P9736245589514049112.Spec : Prop :=
  ∀ n, P9736245589514049112.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P821026840370860267

`A001105(n+1)+∑[∑[A002061(n)]]`
-/

namespace A220147.P821026840370860267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220147.P821026840370860267

namespace A220147

/-- `A001105(n+1)+∑[∑[A002061(n)]]` -/
def P821026840370860267.Spec : Prop :=
  ∀ n, P821026840370860267.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P12343499733405099548

`A006503(n+1)+A002415(n)+A000217(n)`
-/

namespace A220147.P12343499733405099548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1) + (A002415 n + A000217 n)

end

end A220147.P12343499733405099548

namespace A220147

/-- `A006503(n+1)+A002415(n)+A000217(n)` -/
def P12343499733405099548.Spec : Prop :=
  ∀ n, P12343499733405099548.a n = A220147 (n + 1)

end A220147

/-! ## A220147.P1827603053072180160

`A034827(n+2)+A005475(n+1)`
-/

namespace A220147.P1827603053072180160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 (n + 2) + A005475 (n + 1)

end

end A220147.P1827603053072180160

namespace A220147

/-- `A034827(n+2)+A005475(n+1)` -/
def P1827603053072180160.Spec : Prop :=
  ∀ n, P1827603053072180160.a n = A220147 (n + 1)

end A220147

/-!
# A220148: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 3 array.

The programs for A220148, there is no canonical definition to state claims against.
-/

/-! ## A220148.P9328020673710612697

`A220153(∑[n+3]+1)`
-/

namespace A220148.P9328020673710612697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220148.P9328020673710612697

/-! ## A220148.P3217450628948911833

`A220153(Δ[A008778(n)])+(2^(n+3))%8`
-/

namespace A220148.P3217450628948911833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (f1 (n + 1) - f1 n).toNat + ((2 ^ (n + 3) % 8 : ℕ) : ℤ)

end

end A220148.P3217450628948911833

/-! ## A220148.P15461960517352549073

`A028920(2*n)*A220153(Δ[A008778(n)])`
-/

namespace A220148.P15461960517352549073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) * A220153 (f1 (n + 1) - f1 n).toNat

end

end A220148.P15461960517352549073

/-! ## A220148.P6372875475028858351

`A220153(A101881(2*(n+1)))%A045477(n)`
-/

namespace A220148.P6372875475028858351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220153 (A101881 (2 * (n + 1))).toNat) (A045477 n)

end

end A220148.P6372875475028858351

/-! ## A220148.P930867824883190219

`A235358(n+1)+A220153(A101881(2*(n+1)))`
-/

namespace A220148.P930867824883190219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235358 (n + 1) + A220153 (A101881 (2 * (n + 1))).toNat

end

end A220148.P930867824883190219

/-!
# A220149: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX4 array.

The programs for A220149, there is no canonical definition to state claims against.
-/

/-! ## A220149.P14284492432203567545

`A220153(∑[n+4]+3)`
-/

namespace A220149.P14284492432203567545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A220149.P14284492432203567545

/-!
# A220150: Number of n X 5 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 5 array.

The programs for A220150, there is no canonical definition to state claims against.
-/

/-! ## A220150.P2372533893257214181

`A220153(Δ[A264443(n)])`
-/

namespace A220150.P2372533893257214181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (f1 (n + 1) - f1 n).toNat

end

end A220150.P2372533893257214181

/-! ## A220150.P14622157808018343328

`A220153(A046691(n+3))`
-/

namespace A220150.P14622157808018343328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A046691 (n + 3)).toNat

end

end A220150.P14622157808018343328

/-! ## A220150.P15166556825224053507

`A220153(A056115(n)+11)`
-/

namespace A220150.P15166556825224053507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A056115 n + 11).toNat

end

end A220150.P15166556825224053507

/-! ## A220150.P4163688643586870435

`A220153(eq[2, A092921(n)])`
-/

namespace A220150.P4163688643586870435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220150.P4163688643586870435

/-! ## A220150.P3142555424184453449

`A220153(eq[3, A152157(n)])`
-/

namespace A220150.P3142555424184453449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220150.P3142555424184453449

/-!
# A220151: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX6 array.

The programs for A220151, there is no canonical definition to state claims against.
-/

/-! ## A220151.P17630476168731689161

`A220153(∑[n+6]+10)`
-/

namespace A220151.P17630476168731689161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A220151.P17630476168731689161

/-!
# A220152: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX7 array.

The programs for A220152, there is no canonical definition to state claims against.
-/

/-! ## A220152.P17871636493050042038

`A220153(A055999(n+4))`
-/

namespace A220152.P17871636493050042038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A055999 (n + 4)).toNat

end

end A220152.P17871636493050042038

/-! ## A220152.P13570285557633129

`A220153(eq[4, A219347(n)])`
-/

namespace A220152.P13570285557633129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220152.P13570285557633129

/-! ## A220152.P11883413319337891797

`A220153(eq[5, A332954(n)])`
-/

namespace A220152.P11883413319337891797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220152.P11883413319337891797

/-! ## A220152.P14699563476179532920

`A220153(eq[6, A193592(n)])`
-/

namespace A220152.P14699563476179532920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220152.P14699563476179532920

/-!
# A220154: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 2 X n array.

The programs for A220154, the canonical program `A220154.P3287903527583354397` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220154 has offset 1).

The definition of A220154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A220154.P3287903527583354397

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=6, a(1)=11, a(2)=23, a(3)=50, a(4)=88`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220154

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3287903527583354397.Spec : Prop :=
  ∀ n, P3287903527583354397.a n = A220154 (n + 1)

theorem P3287903527583354397.correct : P3287903527583354397.Spec := by
  intro n
  simp only [A220154, Nat.add_sub_cancel]

end A220154

/-! ## A220154.P10768706100866545254

`A005899(n)+A000326(round(acot(n)+n))`
-/

namespace A220154.P10768706100866545254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + A000326 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A220154.P10768706100866545254

namespace A220154

/-- `A005899(n)+A000326(round(acot(n)+n))` -/
def P10768706100866545254.Spec : Prop :=
  ∀ n, P10768706100866545254.a n = A220154 (n + 1)

end A220154

/-! ## A220154.P14601541640123263124

`A141056(A151800(n))+A022268(n)`
-/

namespace A220154.P14601541640123263124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A151800 n).toNat + A022268 n

end

end A220154.P14601541640123263124

namespace A220154

/-- `A141056(A151800(n))+A022268(n)` -/
def P14601541640123263124.Spec : Prop :=
  ∀ n, P14601541640123263124.a n = A220154 (n + 1)

end A220154

/-! ## A220154.P2704765173880601678

`A143689(n)+A080335(record[A029579(n)])`
-/

namespace A220154.P2704765173880601678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n + A080335 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A220154.P2704765173880601678

namespace A220154

/-- `A143689(n)+A080335(record[A029579(n)])` -/
def P2704765173880601678.Spec : Prop :=
  ∀ n, P2704765173880601678.a n = A220154 (n + 1)

end A220154

/-! ## A220154.P5402632811264332599

`A005899(n)+A000326(A233583(n+1))`
-/

namespace A220154.P5402632811264332599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + A000326 (A233583 (n + 1)).toNat

end

end A220154.P5402632811264332599

namespace A220154

/-- `A005899(n)+A000326(A233583(n+1))` -/
def P5402632811264332599.Spec : Prop :=
  ∀ n, P5402632811264332599.a n = A220154 (n + 1)

end A220154

/-! ## A220154.P10549808546046481790

`A016825(record[A000463(n+1)])+A000326(n)`
-/

namespace A220154.P10549808546046481790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000326 n

end

end A220154.P10549808546046481790

namespace A220154

/-- `A016825(record[A000463(n+1)])+A000326(n)` -/
def P10549808546046481790.Spec : Prop :=
  ∀ n, P10549808546046481790.a n = A220154 (n + 1)

end A220154

/-!
# A220155: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3Xn array.

The programs for A220155, there is no canonical definition to state claims against.
-/

/-! ## A220155.P14290665874825343078

`A220153(∑[n+2]+4)`
-/

namespace A220155.P14290665874825343078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220155.P14290665874825343078

/-! ## A220155.P3815331136324136604

`lcm(ceil(acot(n)), A220153(A167614(n+1)))`
-/

namespace A220155.P3815331136324136604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈SequenceMachineLib.acot (n : ℝ)⌉ (A220153 (A167614 (n + 1)).toNat)

end

end A220155.P3815331136324136604

/-! ## A220155.P7915874740499686452

`record[A220153(A167614(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A220155.P7915874740499686452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167614 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220155.P7915874740499686452

/-! ## A220155.P15343191763297247788

`A220153(A167614(n+1))+A011731(n)`
-/

namespace A220155.P15343191763297247788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167614 (n + 1)).toNat + A011731 n

end

end A220155.P15343191763297247788

/-! ## A220155.P9154460421597428054

`A220153(A167614(n+1))+A011734(n)`
-/

namespace A220155.P9154460421597428054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167614 (n + 1)).toNat + A011734 n

end

end A220155.P9154460421597428054

/-!
# A220156: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A220156, there is no canonical definition to state claims against.
-/

/-! ## A220156.P10444901974283177956

`A220153(∑[n+3]+7)`
-/

namespace A220156.P10444901974283177956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A220156.P10444901974283177956

/-!
# A220157: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5Xn array.

The programs for A220157, there is no canonical definition to state claims against.
-/

/-! ## A220157.P14086236048579733836

`A220153(C(n+6, 2)-n)`
-/

namespace A220157.P14086236048579733836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (Nat.choose (n + 6) 2 - n)

end

end A220157.P14086236048579733836

/-! ## A220157.P184743744750401015

`A220153(A167499(n+3))`
-/

namespace A220157.P184743744750401015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167499 (n + 3)).toNat

end

end A220157.P184743744750401015

/-! ## A220157.P14390815058137506034

`A220153(A155212(n)+13)`
-/

namespace A220157.P14390815058137506034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A155212 n + 13).toNat

end

end A220157.P14390815058137506034

/-! ## A220157.P8173691068636563211

`A220153(A056000(n)+15)`
-/

namespace A220157.P8173691068636563211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A056000 n + 15).toNat

end

end A220157.P8173691068636563211

/-! ## A220157.P1520090178401773105

`A220153(eq[7, A066657(n)])`
-/

namespace A220157.P1520090178401773105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220157.P1520090178401773105

/-!
# A220158: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A220158, there is no canonical definition to state claims against.
-/

/-! ## A220158.P7568302344021708583

`A220153(A056115(n)+21)`
-/

namespace A220158.P7568302344021708583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A056115 n + 21).toNat

end

end A220158.P7568302344021708583

/-! ## A220158.P2135867506299614083

`A220153(Δ[A264443(n)]+10)`
-/

namespace A220158.P2135867506299614083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (f1 (n + 1) - f1 n + 10).toNat

end

end A220158.P2135867506299614083

/-! ## A220158.P7383827825952011346

`A220153(A167499(n+4)+1)`
-/

namespace A220158.P7383827825952011346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167499 (n + 4) + 1).toNat

end

end A220158.P7383827825952011346

/-! ## A220158.P5403420398059071445

`A220153(A167614(n+4)+3)`
-/

namespace A220158.P5403420398059071445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167614 (n + 4) + 3).toNat

end

end A220158.P5403420398059071445

/-! ## A220158.P7945263065950548754

`A220153(A000124(n+5)+5)`
-/

namespace A220158.P7945263065950548754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A000124 (n + 5) + 5).toNat

end

end A220158.P7945263065950548754

/-!
# A220159: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7Xn array.

The programs for A220159, there is no canonical definition to state claims against.
-/

/-! ## A220159.P4555322166678733113

`A220153(A056119(n)+28)`
-/

namespace A220159.P4555322166678733113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A056119 n + 28).toNat

end

end A220159.P4555322166678733113

/-! ## A220159.P6259601769925901260

`A220153(eq[11, A066657(n)])`
-/

namespace A220159.P6259601769925901260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220159.P6259601769925901260

/-! ## A220159.P130181084137021508

`A220153(A166136(n+5)+1)`
-/

namespace A220159.P130181084137021508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A166136 (n + 5) + 1).toNat

end

end A220159.P130181084137021508

/-! ## A220159.P1718429869883646181

`A220153(A167499(n+5)+2)`
-/

namespace A220159.P1718429869883646181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220153 (A167499 (n + 5) + 2).toNat

end

end A220159.P1718429869883646181

/-!
# A220160: Numbers n for which phi(n) = phi(n-1) - phi(n+1).

The programs for A220160, there is no canonical definition to state claims against.
-/

/-! ## A220160.P9043173368575714192

`A197112(n+1)+1`
-/

namespace A220160.P9043173368575714192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197112 (n + 1) + 1

end

end A220160.P9043173368575714192

/-! ## A220160.P3485329617335867120

`A066232(n+1)-1`
-/

namespace A220160.P3485329617335867120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066232 (n + 1) - 1

end

end A220160.P3485329617335867120

/-! ## A220160.P2907190865623061467

`xor(1, A066232(n-log2(1/2)))`
-/

namespace A220160.P2907190865623061467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A066232 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat)

end

end A220160.P2907190865623061467

/-! ## A220160.P12354354973930977558

`xor(A066232(n+1), A361338(n))`
-/

namespace A220160.P12354354973930977558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066232 (n + 1)) (A361338 n)

end

end A220160.P12354354973930977558

/-! ## A220160.P18321235975960364717

`A153881(n+2)+A066232(n+1)`
-/

namespace A220160.P18321235975960364717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A066232 (n + 1)

end

end A220160.P18321235975960364717

/-! ## A220160.P13503459615083742452

`and(A066232(n+1), A113679(n+2))`
-/

namespace A220160.P13503459615083742452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066232 (n + 1)) (A113679 (n + 2))

end

end A220160.P13503459615083742452

/-! ## A220160.P6944271746005345486

`xor(A066232(n+1), A178334(n+2))`
-/

namespace A220160.P6944271746005345486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066232 (n + 1)) (A178334 (n + 2))

end

end A220160.P6944271746005345486

/-! ## A220160.P5673544309178215076

`xor(A066232(n+1), A152271(2*n))`
-/

namespace A220160.P5673544309178215076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066232 (n + 1)) (A152271 (2 * n))

end

end A220160.P5673544309178215076

/-! ## A220160.P5385969135617797468

`A321800(∑{e}[n, #])+A066232(n+1)`
-/

namespace A220160.P5385969135617797468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A066232 (n + 1)

end

end A220160.P5385969135617797468

/-! ## A220160.P8162826868495770998

`xor(A066232(n+1), A227277(n*char[2^n]))`
-/

namespace A220160.P8162826868495770998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066232 (n + 1)) (A227277 (n * (if ∃ j, f1 j = n then 1 else 0)))

end

end A220160.P8162826868495770998

/-! ## A220160.P8990419888215958616

`A082551(A001316(n))+A066232(n+1)`
-/

namespace A220160.P8990419888215958616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A001316 n).toNat + A066232 (n + 1)

end

end A220160.P8990419888215958616

/-! ## A220160.P9575708138577664017

`A082551(A005408(n))+A066232(n+1)`
-/

namespace A220160.P9575708138577664017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A005408 n).toNat + A066232 (n + 1)

end

end A220160.P9575708138577664017

/-! ## A220160.P6521501929601815882

`A082551(A005728(n))+A066232(n+1)`
-/

namespace A220160.P6521501929601815882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A005728 n).toNat + A066232 (n + 1)

end

end A220160.P6521501929601815882

/-! ## A220160.P16214714363707151830

`A321804(A000196(n))+A066232(n+1)`
-/

namespace A220160.P16214714363707151830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (A000196 n).toNat + A066232 (n + 1)

end

end A220160.P16214714363707151830

/-! ## A220160.P1606992444844524481

`A325142(A112316(n))+A066232(n+1)`
-/

namespace A220160.P1606992444844524481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A112316 n).toNat + A066232 (n + 1)

end

end A220160.P1606992444844524481

/-! ## A220160.P18243831160435440298

`and(A066232(n+1), A280560(A131843(n)))`
-/

namespace A220160.P18243831160435440298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066232 (n + 1)) (A280560 (A131843 n).toNat)

end

end A220160.P18243831160435440298

/-! ## A220160.P3095394339101896415

`and(A066232(n+1), A280560(A267872(n)))`
-/

namespace A220160.P3095394339101896415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066232 (n + 1)) (A280560 (A267872 n).toNat)

end

end A220160.P3095394339101896415

/-! ## A220160.P939149916778364769

`xor(A066232(n+1), A158388(A049697(n)))`
-/

namespace A220160.P939149916778364769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066232 (n + 1)) (A158388 (A049697 n).toNat)

end

end A220160.P939149916778364769

/-! ## A220160.P16079306970649343483

`xor(A066232(n+1), A158388(A000010(n+1)))`
-/

namespace A220160.P16079306970649343483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A066232 (n + 1)) (A158388 (A000010 (n + 1)).toNat)

end

end A220160.P16079306970649343483

/-!
# A220161: a(n) = 1 + 2^(2^n) + 2^(2^(n+1)).

The programs for A220161, the canonical program `A220161.P16072184001693440708` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220161 has offset 0).

The definition of A220161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+2^2^n+2^2^(n+1)` (program `A220161.P16072184001693440708`, by `A220161.P16072184001693440708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A220161.P16072184001693440708

`1+2^2^n+2^2^(n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220161

/-- `1+2^2^n+2^2^(n+1)` -/
def P16072184001693440708.Spec : Prop :=
  ∀ n, (P16072184001693440708.a n : ℤ) = A220161 n

theorem P16072184001693440708.correct : P16072184001693440708.Spec := by
  intro n
  simp only [A220161]

end A220161

/-! ## A220161.P14639778649746871854

`7*A198411(n)`
-/

namespace A220161.P14639778649746871854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A198411 n

end

end A220161.P14639778649746871854

namespace A220161

/-- `7*A198411(n)` -/
def P14639778649746871854.Spec : Prop :=
  ∀ n, P14639778649746871854.a n = A220161 n

end A220161

/-! ## A220161.P13931950368680666372

`A001576(2^n)`
-/

namespace A220161.P13931950368680666372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 (2 ^ n)

end

end A220161.P13931950368680666372

namespace A220161

/-- `A001576(2^n)` -/
def P13931950368680666372.Spec : Prop :=
  ∀ n, P13931950368680666372.a n = A220161 n

end A220161

/-! ## A220161.P7720264765773177576

`A038184(2^n)`
-/

namespace A220161.P7720264765773177576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038184 (2 ^ n)

end

end A220161.P7720264765773177576

namespace A220161

/-- `A038184(2^n)` -/
def P7720264765773177576.Spec : Prop :=
  ∀ n, P7720264765773177576.a n = A220161 n

end A220161

/-!
# A220162: Smallest prime expressible as 2p + 3q (p, q primes) exactly in n ways.

The programs for A220162, there is no canonical definition to state claims against.
-/

/-! ## A220162.P12980468588716632452

`A161850(A340112(n+1)+A115319(n+1))`
-/

namespace A220162.P12980468588716632452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161850 (A340112 (n + 1) + A115319 (n + 1)).toNat

end

end A220162.P12980468588716632452

/-!
# A220163: Triangle read by rows: N_s(n,k) of spt-crank coefficients, n >= 1, k >= 0.

The programs for A220163, there is no canonical definition to state claims against.
-/

/-! ## A220163.P6626219118577101833

`A195011(comp[∑[n-1]])`
-/

namespace A220163.P6626219118577101833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195011 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A220163.P6626219118577101833

/-! ## A220163.P5843668239588558293

`A195011(A007401(n+1))%18`
-/

namespace A220163.P5843668239588558293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195011 (A007401 (n + 1)).toNat) 18

end

end A220163.P5843668239588558293

/-! ## A220163.P14870653063581758799

`gcd(A000038(n), A195011(A007401(n+1)))`
-/

namespace A220163.P14870653063581758799
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A195011 (A007401 (n + 1)).toNat)

end

end A220163.P14870653063581758799

/-! ## A220163.P6121969599059813552

`lcm(A033999(n), A195011(A007401(n+1)))`
-/

namespace A220163.P6121969599059813552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A195011 (A007401 (n + 1)).toNat)

end

end A220163.P6121969599059813552

/-! ## A220163.P8583339789806163537

`A158388(n)²*A195011(A007401(n+1))`
-/

namespace A220163.P8583339789806163537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n ^ 2 * A195011 (A007401 (n + 1)).toNat

end

end A220163.P8583339789806163537

/-! ## A220163.P2157092226324220288

`A195011(A007401(n+1))+A000038(n+1)`
-/

namespace A220163.P2157092226324220288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195011 (A007401 (n + 1)).toNat + A000038 (n + 1)

end

end A220163.P2157092226324220288

/-! ## A220163.P7055352476609336248

`A256974(∑{digits}[n, #])+A195011(A007401(n+1))`
-/

namespace A220163.P7055352476609336248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + A195011 (A007401 (n + 1)).toNat

end

end A220163.P7055352476609336248

/-! ## A220163.P13866574390182393567

`A195011(A007401(n+1))+A008683(4*(n+1))`
-/

namespace A220163.P13866574390182393567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195011 (A007401 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A220163.P13866574390182393567

/-! ## A220163.P2085940860578661761

`A195011(A007401(n+1))+C(A008683(n+1)², 2)`
-/

namespace A220163.P2085940860578661761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195011 (A007401 (n + 1)).toNat + (Nat.choose (A008683 (n + 1) ^ 2).toNat 2 : ℤ)

end

end A220163.P2085940860578661761

/-! ## A220163.P16234518519675505333

`A010155((n+1)²+n)*A195011(A007401(n+1))`
-/

namespace A220163.P16234518519675505333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010155 ((n + 1) ^ 2 + n) * A195011 (A007401 (n + 1)).toNat

end

end A220163.P16234518519675505333

/-!
# A220164: Number of simple squared squares of order n up to symmetry.

The programs for A220164, there is no canonical definition to state claims against.
-/

/-! ## A220164.P2850399958422896630

`A006983(n+1)+A002962(n+1)`
-/

namespace A220164.P2850399958422896630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1) + A002962 (n + 1)

end

end A220164.P2850399958422896630

/-! ## A220164.P15603879324736944830

`A002962(n+1)+A181735(n+1)-A181340(n+1)`
-/

namespace A220164.P15603879324736944830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002962 (n + 1) + (A181735 (n + 1) - A181340 (n + 1))

end

end A220164.P15603879324736944830

/-! ## A220164.P9832212529652530414

`A002962(n+1)+A217156(n+1)-A217155(n+1)`
-/

namespace A220164.P9832212529652530414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002962 (n + 1) + (A217156 (n + 1) - A217155 (n + 1))

end

end A220164.P9832212529652530414

/-! ## A220164.P15890264339301580245

`A002839(n+1)+A002962(n+1)-A219766(n+1)`
-/

namespace A220164.P15890264339301580245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + (A002962 (n + 1) - A219766 (n + 1))

end

end A220164.P15890264339301580245

/-! ## A220164.P5754825570024237055

`A002881(n+1)+A006983(n+1)-A220165(n+1)`
-/

namespace A220164.P5754825570024237055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) + (A006983 (n + 1) - A220165 (n + 1))

end

end A220164.P5754825570024237055

/-!
# A220165: Number of nonsquare simple imperfect squared rectangles of order n up to symmetry.

The programs for A220165, there is no canonical definition to state claims against.
-/

/-! ## A220165.P9547517558956174612

`A002881(n+1)-A002962(n+1)`
-/

namespace A220165.P9547517558956174612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) - A002962 (n + 1)

end

end A220165.P9547517558956174612

/-! ## A220165.P12194886618321300649

`A002881(n+1)+A002962(n+1)*A057428(n)`
-/

namespace A220165.P12194886618321300649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) + A002962 (n + 1) * A057428 n

end

end A220165.P12194886618321300649

/-! ## A220165.P8754200407850608366

`A002881(n+1)-(A220164(n+1)-A006983(n+1))`
-/

namespace A220165.P8754200407850608366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) - (A220164 (n + 1) - A006983 (n + 1))

end

end A220165.P8754200407850608366

/-! ## A220165.P13212169410156759906

`A220166(n+1)-A219766(n+1)`
-/

namespace A220165.P13212169410156759906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220166 (n + 1) - A219766 (n + 1)

end

end A220165.P13212169410156759906

/-! ## A220165.P11748354110989796319

`A006983(n+1)+A220166(n+1)-A002839(n+1)`
-/

namespace A220165.P11748354110989796319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1) + (A220166 (n + 1) - A002839 (n + 1))

end

end A220165.P11748354110989796319

/-!
# A220166: Number of nonsquare simple squared rectangles of order n up to symmetry.

The programs for A220166, there is no canonical definition to state claims against.
-/

/-! ## A220166.P707142725623778639

`A220165(n+1)+A219766(n+1)`
-/

namespace A220166.P707142725623778639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220165 (n + 1) + A219766 (n + 1)

end

end A220166.P707142725623778639

/-! ## A220166.P9403336009898543887

`A002881(n+1)+A219766(n+1)-A002962(n+1)`
-/

namespace A220166.P9403336009898543887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) + (A219766 (n + 1) - A002962 (n + 1))

end

end A220166.P9403336009898543887

/-! ## A220166.P5425070093904057077

`A002839(n+1)+A002881(n+1)-A220164(n+1)`
-/

namespace A220166.P5425070093904057077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + (A002881 (n + 1) - A220164 (n + 1))

end

end A220166.P5425070093904057077

/-! ## A220166.P14703921451764255454

`A002839(n+1)+A220165(n+1)-A006983(n+1)`
-/

namespace A220166.P14703921451764255454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (n + 1) + (A220165 (n + 1) - A006983 (n + 1))

end

end A220166.P14703921451764255454

/-! ## A220166.P3868019038651213853

`A220165(n+1)+A002839(n+1)+1-A178688(n+1)`
-/

namespace A220166.P3868019038651213853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220165 (n + 1) + (A002839 (n + 1) + (1 - A178688 (n + 1)))

end

end A220166.P3868019038651213853

/-!
# A220167: Number of simple squared rectangles of order n up to symmetry.

The programs for A220167, there is no canonical definition to state claims against.
-/

/-! ## A220167.P11294433364070683315

`∑[A061358(∑[A268804(n+1)])]`
-/

namespace A220167.P11294433364070683315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268804 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A220167.P11294433364070683315

/-!
# A220168: Numbers k that divide Fibonacci(k+2).

The programs for A220168, there is no canonical definition to state claims against.
-/

/-! ## A220168.P9907853231216366881

`eq[n, gcd(n, A000045(n+2))]`
-/

namespace A220168.P9907853231216366881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000045 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A220168.P9907853231216366881

/-!
# A220169: Numbers k for which phi(k^2) = phi(k-1) * phi(k+1).

The programs for A220169, there is no canonical definition to state claims against.
-/

/-! ## A220169.P12541925444658547606

`A256510(n+1)-1`
-/

namespace A220169.P12541925444658547606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256510 (n + 1) - 1

end

end A220169.P12541925444658547606

/-! ## A220169.P10996626781261171353

`xor(1, A256510(Δ[n²]-n))`
-/

namespace A220169.P10996626781261171353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A256510 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A220169.P10996626781261171353

/-! ## A220169.P13653495941367360010

`record[A256510(A328399(n))-1]`
-/

namespace A220169.P13653495941367360010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256510 (A328399 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220169.P13653495941367360010

/-! ## A220169.P11202715467873597891

`xor(A256510(n+1), A262681(n))`
-/

namespace A220169.P11202715467873597891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256510 (n + 1)) (A262681 n)

end

end A220169.P11202715467873597891

/-! ## A220169.P7000745208866162608

`xor(A256510(n+1), A291168(n))`
-/

namespace A220169.P7000745208866162608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A256510 (n + 1)) (A291168 n)

end

end A220169.P7000745208866162608

/-!
# A220171: An ordered subset of primitive values of x^2 + x*y + y^2 where at least two ordered pairs (x1,y1) and (x2,y2) with x1 != x2, y1 != y2 and gcd(x1,y1) = gcd(x2,y2) = 1 yield identical primitive values.

The programs for A220171, there is no canonical definition to state claims against.
-/

/-! ## A220171.P6911244781937940700

`lt[2, A000086(A028310(n))]`
-/

namespace A220171.P6911244781937940700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A220171.P6911244781937940700

/-! ## A220171.P6386540760836996409

`eq[4, A092575(A008574(n))]`
-/

namespace A220171.P6386540760836996409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092575 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220171.P6386540760836996409

/-! ## A220171.P6691040465906477398

`eq[4, A000086(A257088(n))]`
-/

namespace A220171.P6691040465906477398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A220171.P6691040465906477398

/-! ## A220171.P9662485314067994515

`A004442(lt[2, A000086(n+1)])`
-/

namespace A220171.P9662485314067994515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A220171.P9662485314067994515

/-! ## A220171.P3601443377231811835

`A011760(eq[4, A000086(n+1)])`
-/

namespace A220171.P3601443377231811835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A220171.P3601443377231811835

/-!
# A220172: Sum of neighbor maps: number of n X 1 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, vertical and antidiagonal neighbors in a random 0..2 n X 1 array.

The programs for A220172, there is no canonical definition to state claims against.
-/

/-! ## A220172.P17944147651216432536

`A221072(∑[n]+1)`
-/

namespace A220172.P17944147651216432536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220172.P17944147651216432536

/-! ## A220172.P9715500467038767982

`A222386(∑[n]+1)`
-/

namespace A220172.P9715500467038767982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220172.P9715500467038767982

/-! ## A220172.P5585341096308355215

`A222935(∑[n]+1)`
-/

namespace A220172.P5585341096308355215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220172.P5585341096308355215

/-! ## A220172.P18374649748868591581

`lcm(2, A221072(A000124(n)))`
-/

namespace A220172.P18374649748868591581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221072 (A000124 n).toNat)

end

end A220172.P18374649748868591581

/-! ## A220172.P2980768111874863605

`A221072(A000124(n))+A011731(n)`
-/

namespace A220172.P2980768111874863605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A000124 n).toNat + A011731 n

end

end A220172.P2980768111874863605

/-!
# A220173: Sum of neighbor maps: number of nX2 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX2 array.

The programs for A220173, there is no canonical definition to state claims against.
-/

/-! ## A220173.P15670082797359886922

`A220177(∑[n+1]+2)`
-/

namespace A220173.P15670082797359886922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220177 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220173.P15670082797359886922

/-! ## A220173.P18445934789130116845

`record[A010054(n)*A220177(n+2)]`
-/

namespace A220173.P18445934789130116845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A220177 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220173.P18445934789130116845

/-! ## A220173.P3018726011344239686

`record[A220177(n+1)/A036073(n)]`
-/

namespace A220173.P3018726011344239686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220177 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220173.P3018726011344239686

/-! ## A220173.P4151085001726219885

`record[root(A220177(n+1), A156366(n))]`
-/

namespace A220173.P4151085001726219885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220177 (n + 1) : ℝ) ^ (1 / (A156366 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220173.P4151085001726219885

/-! ## A220173.P8283828365122998663

`record[gcd(A002262(n), A220177(n+2))]`
-/

namespace A220173.P8283828365122998663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A220177 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220173.P8283828365122998663

/-!
# A220174: Sum of neighbor maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX3 array.

The programs for A220174, there is no canonical definition to state claims against.
-/

/-! ## A220174.P6422043691315666280

`A220177(∑[n+2]+4)`
-/

namespace A220174.P6422043691315666280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220177 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220174.P6422043691315666280

/-! ## A220174.P10890631638369559940

`lcm(2, A220177(A167614(n+1)))`
-/

namespace A220174.P10890631638369559940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A220177 (A167614 (n + 1)).toNat)

end

end A220174.P10890631638369559940

/-! ## A220174.P17015522839560733937

`record[A220177(n+4)/A286781(n)]`
-/

namespace A220174.P17015522839560733937
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220177 (n + 4) : ℚ) / (A286781 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220174.P17015522839560733937

/-! ## A220174.P5111715301532543819

`record[root(A220177(n+4), A126791(n))]`
-/

namespace A220174.P5111715301532543819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220177 (n + 4) : ℝ) ^ (1 / (A126791 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220174.P5111715301532543819

/-! ## A220174.P18027002755634674694

`A220177(A167614(n+1))+A011731(n)`
-/

namespace A220174.P18027002755634674694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220177 (A167614 (n + 1)).toNat + A011731 n

end

end A220174.P18027002755634674694

/-!
# A220175: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A220175, there is no canonical definition to state claims against.
-/

/-! ## A220175.P12589804129895621597

`16^∑[and(8, n)!]`
-/

namespace A220175.P12589804129895621597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 8 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220175.P12589804129895621597

/-! ## A220175.P3576815086989942522

`∑{e}[5^(n+1), (4^#)²]`
-/

namespace A220175.P3576815086989942522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (4 ^ Nat.factorization (f1 n) p) ^ 2

end

end A220175.P3576815086989942522

/-! ## A220175.P12754215301139201520

`∏{e}[5^(n+1), (4^#)²]`
-/

namespace A220175.P12754215301139201520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 ^ Nat.factorization (f1 n) p) ^ 2

end

end A220175.P12754215301139201520

/-! ## A220175.P13194250152398809465

`4^A267654(n²)`
-/

namespace A220175.P13194250152398809465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A267654 (n ^ 2) : ℤ)

end

end A220175.P13194250152398809465

/-!
# A220176: Sum of neighbor maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A220176, there is no canonical definition to state claims against.
-/

/-! ## A220176.P6125339317183270879

`A220177(A374005(n+1))`
-/

namespace A220176.P6125339317183270879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220177 (A374005 (n + 1)).toNat

end

end A220176.P6125339317183270879

/-! ## A220176.P326700793997020358

`A220177(A167499(n+3))`
-/

namespace A220176.P326700793997020358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220177 (A167499 (n + 3)).toNat

end

end A220176.P326700793997020358

/-! ## A220176.P15203887761128156873

`A220177(A155212(n)+13)`
-/

namespace A220176.P15203887761128156873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220177 (A155212 n + 13).toNat

end

end A220176.P15203887761128156873

/-!
# A220177: T(n,k)=Sum of neighbor maps: number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal, vertical and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A220177, there is no canonical definition to state claims against.
-/

/-! ## A220177.P9372469048857245796

`A220254(A084192(∑[n]))`
-/

namespace A220177.P9372469048857245796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A220177.P9372469048857245796

/-! ## A220177.P6782005379999677561

`A033862(A220254(n+1))`
-/

namespace A220177.P6782005379999677561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A220254 (n + 1)).toNat

end

end A220177.P6782005379999677561

/-! ## A220177.P10370757301141911756

`A220254(A043317(n+1))`
-/

namespace A220177.P10370757301141911756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A043317 (n + 1)).toNat

end

end A220177.P10370757301141911756

/-! ## A220177.P15769493604740967050

`A220254(A044914(n+1))`
-/

namespace A220177.P15769493604740967050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220254 (A044914 (n + 1)).toNat

end

end A220177.P15769493604740967050

/-!
# A220178: Triangle where the g.f. for row n equals d^n/dx^n (1+x+x^2)^n / n! for n>=0, as read by rows.

The programs for A220178, there is no canonical definition to state claims against.
-/

/-! ## A220178.P11707166294473283135

`A046899(n)*A094531(n)`
-/

namespace A220178.P11707166294473283135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A094531 n

end

end A220178.P11707166294473283135

/-! ## A220178.P15386565259119927981

`A046899(n)*A111808(A038722(n+1))`
-/

namespace A220178.P15386565259119927981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A111808 (A038722 (n + 1)).toNat

end

end A220178.P15386565259119927981

/-! ## A220178.P14558628828167757281

`A046899(n)*A111808(A061579(n)+1)`
-/

namespace A220178.P14558628828167757281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A111808 (A061579 n + 1).toNat

end

end A220178.P14558628828167757281

/-! ## A220178.P9538003311973490760

`A027907(A061885(n))*A046899(n)`
-/

namespace A220178.P9538003311973490760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A061885 n).toNat * A046899 n

end

end A220178.P9538003311973490760

/-! ## A220178.P3966463663463780897

`A027907(eq[1, A118175(n)])*A046899(n)`
-/

namespace A220178.P3966463663463780897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A046899 n

end

end A220178.P3966463663463780897

/-! ## A220178.P5662844736476677788

`A027907(A004201(n+1)-1)*A046899(n)`
-/

namespace A220178.P5662844736476677788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A004201 (n + 1) - 1).toNat * A046899 n

end

end A220178.P5662844736476677788

/-! ## A220178.P8182248147536246068

`A007318(A245300(n))*A094531(n)`
-/

namespace A220178.P8182248147536246068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A245300 n).toNat * A094531 n

end

end A220178.P8182248147536246068

/-!
# A220179: E.g.f.: Sum_{n>=1} (1 - exp(-n^2*x))^n / n.

The programs for A220179, there is no canonical definition to state claims against.
-/

/-! ## A220179.P1149339528845685774

`A136126(A064226(n))`
-/

namespace A220179.P1149339528845685774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A064226 n).toNat

end

end A220179.P1149339528845685774

/-! ## A220179.P1218675492116397632

`A136126(A117625(n+1))`
-/

namespace A220179.P1218675492116397632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A117625 (n + 1)).toNat

end

end A220179.P1218675492116397632

/-! ## A220179.P3934195372645479168

`A136126(A140064(n+1))`
-/

namespace A220179.P3934195372645479168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A140064 (n + 1)).toNat

end

end A220179.P3934195372645479168

/-! ## A220179.P6642498220549198670

`A136126(A051682(n+1)+1)`
-/

namespace A220179.P6642498220549198670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A051682 (n + 1) + 1).toNat

end

end A220179.P6642498220549198670

/-! ## A220179.P967201527242202886

`A136126(A062708(n+1)+1)`
-/

namespace A220179.P967201527242202886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A062708 (n + 1) + 1).toNat

end

end A220179.P967201527242202886

/-!
# A220180: E.g.f.: exp( Sum_{n>=1} (n+1)^(n-1) * x^n / n ).

The programs for A220180, there is no canonical definition to state claims against.
-/

/-! ## A220180.P16919145671051497927

`A218656(∑[n]^n)`
-/

namespace A220180.P16919145671051497927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218656 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A220180.P16919145671051497927

/-!
# A220181: E.g.f.: Sum_{n>=0} (1 - exp(-n*x))^n.

The programs for A220181, there is no canonical definition to state claims against.
-/

/-! ## A220181.P5675109849800373456

`ceil(A048163(n+1)/2)`
-/

namespace A220181.P5675109849800373456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048163 (n + 1) : ℚ) / 2⌉

end

end A220181.P5675109849800373456

/-! ## A220181.P16010977184939469615

`A136126(A058331(n))`
-/

namespace A220181.P16010977184939469615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A058331 n).toNat

end

end A220181.P16010977184939469615

/-! ## A220181.P12923013832528816884

`A266695(2*A028310(n))/2`
-/

namespace A220181.P12923013832528816884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266695 (2 * A028310 n).toNat : ℚ) / 2

end

end A220181.P12923013832528816884

/-! ## A220181.P1870161478696953581

`A136126(A000124(2*n)-n)`
-/

namespace A220181.P1870161478696953581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A000124 (2 * n) - (n : ℤ)).toNat

end

end A220181.P1870161478696953581

/-!
# A220182: Number of changes of parity in the Collatz trajectory of n.

The programs for A220182, there is no canonical definition to state claims against.
-/

/-! ## A220182.P7588227687458817915

`2*A006667(n+1)+1-(n+1)%2`
-/

namespace A220182.P7588227687458817915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006667 (n + 1) + 1 - (((n + 1) % 2 : ℕ) : ℤ)

end

end A220182.P7588227687458817915

/-! ## A220182.P725693007447340378

`2*(A006667(n+1)+1)-gcd(2, n)`
-/

namespace A220182.P725693007447340378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006667 (n + 1) + 1) - (Nat.gcd 2 n : ℤ)

end

end A220182.P725693007447340378

/-! ## A220182.P14427937532918550475

`A286380(n+1)+A006667(n+1)`
-/

namespace A220182.P14427937532918550475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) + A006667 (n + 1)

end

end A220182.P14427937532918550475

/-! ## A220182.P18068500075019907574

`A000035(n)+2*A006667(n+1)`
-/

namespace A220182.P18068500075019907574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 2 * A006667 (n + 1)

end

end A220182.P18068500075019907574

/-! ## A220182.P17060201437029836351

`2*A286380(n+1)-A000035(n)`
-/

namespace A220182.P17060201437029836351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A286380 (n + 1) - A000035 n

end

end A220182.P17060201437029836351

/-! ## A220182.P14242551955121572329

`char[A005408(n)]+2*A006667(n+1)`
-/

namespace A220182.P14242551955121572329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + 2 * A006667 (n + 1)

end

end A220182.P14242551955121572329

/-! ## A220182.P1720421030287765172

`A078719(n+1)+A286380(n+1)-1`
-/

namespace A220182.P1720421030287765172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) + (A286380 (n + 1) - 1)

end

end A220182.P1720421030287765172

/-! ## A220182.P9571657332797266718

`A286380(A000265(n+1))+A286380(n+1)`
-/

namespace A220182.P9571657332797266718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A000265 (n + 1)).toNat + A286380 (n + 1)

end

end A220182.P9571657332797266718

/-! ## A220182.P101143691662024438

`A006667(n+1)+A213209(n+1)+A213181(n+1)`
-/

namespace A220182.P101143691662024438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (A213209 (n + 1) + A213181 (n + 1))

end

end A220182.P101143691662024438

/-! ## A220182.P17916828801331424598

`A059841(n+1)+2*A006667(n+1)`
-/

namespace A220182.P17916828801331424598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + 2 * A006667 (n + 1)

end

end A220182.P17916828801331424598

/-! ## A220182.P16801549052592452987

`2*A078719(n+1)-A000034(n+1)`
-/

namespace A220182.P16801549052592452987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078719 (n + 1) - A000034 (n + 1)

end

end A220182.P16801549052592452987

/-! ## A220182.P8781280911569170146

`A076182(A092892(n))+2*A006667(n+1)`
-/

namespace A220182.P8781280911569170146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076182 (A092892 n).toNat + 2 * A006667 (n + 1)

end

end A220182.P8781280911569170146

/-!
# A220183: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} having k triple descents (n>=0,0<=k<=n-3). We say that i is a triple descent of a permutation p if p(i) > p(i+1) > p(i+2) > p(i+3).

The programs for A220183, there is no canonical definition to state claims against.
-/

/-! ## A220183.P12418668763103304409

`A342840(n)+A299214(n!)`
-/

namespace A220183.P12418668763103304409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342840 n + A299214 (Nat.factorial n)

end

end A220183.P12418668763103304409

/-! ## A220183.P13383416080959688541

`or(A139352(n!*∑[1/n!]), A350273(n))`
-/

namespace A220183.P13383416080959688541
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139352 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat) (A350273 n)

end

end A220183.P13383416080959688541

/-! ## A220183.P11171961961713200798

`or(A139352(n!*∑[1/n!]), A350274(n))`
-/

namespace A220183.P11171961961713200798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139352 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat) (A350274 n)

end

end A220183.P11171961961713200798

/-!
# A220185: Numbers n such that n^2 + n(n+1) is an oblong number (A002378).

The programs for A220185, the canonical program `A220185.P16979615577951138036` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220185 has offset 1).

The definition of A220185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220185.P16979615577951138036

`35*(a(n-1)-a(n-2))+a(n-3)` with `a(0)=0, a(1)=10, a(2)=348`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220185

/-- `35*(a(n-1)-a(n-2))+a(n-3)` -/
def P16979615577951138036.Spec : Prop :=
  ∀ n, P16979615577951138036.a n = A220185 (n + 1)

theorem P16979615577951138036.correct : P16979615577951138036.Spec := by
  intro n
  simp only [A220185, Nat.add_sub_cancel]

end A220185

/-! ## A220185.P17086329663201185019

`A251867(n+1)-A001542(n)²`
-/

namespace A220185.P17086329663201185019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251867 (n + 1) - A001542 n ^ 2

end

end A220185.P17086329663201185019

namespace A220185

/-- `A251867(n+1)-A001542(n)²` -/
def P17086329663201185019.Spec : Prop :=
  ∀ n, P17086329663201185019.a n = A220185 (n + 1)

end A220185

/-! ## A220185.P6566227599669474944

`A114620(2*n)`
-/

namespace A220185.P6566227599669474944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114620 (2 * n)

end

end A220185.P6566227599669474944

namespace A220185

/-- `A114620(2*n)` -/
def P6566227599669474944.Spec : Prop :=
  ∀ n, P6566227599669474944.a n = A220185 (n + 1)

end A220185

/-! ## A220185.P6480311493980996125

`2*A084158(2*n)`
-/

namespace A220185.P6480311493980996125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084158 (2 * n)

end

end A220185.P6480311493980996125

namespace A220185

/-- `2*A084158(2*n)` -/
def P6480311493980996125.Spec : Prop :=
  ∀ n, P6480311493980996125.a n = A220185 (n + 1)

end A220185

/-! ## A220185.P16282879984848508723

`A001652(2*n)/2`
-/

namespace A220185.P16282879984848508723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001652 (2 * n) : ℚ) / 2

end

end A220185.P16282879984848508723

namespace A220185

/-- `A001652(2*n)/2` -/
def P16282879984848508723.Spec : Prop :=
  ∀ n, P16282879984848508723.a n = (A220185 (n + 1) : ℚ)

end A220185

/-! ## A220185.P16624813895739806992

`A046729(2*n)/2`
-/

namespace A220185.P16624813895739806992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046729 (2 * n) : ℚ) / 2

end

end A220185.P16624813895739806992

namespace A220185

/-- `A046729(2*n)/2` -/
def P16624813895739806992.Spec : Prop :=
  ∀ n, P16624813895739806992.a n = (A220185 (n + 1) : ℚ)

end A220185

/-! ## A220185.P5229129659219569746

`floor(A046090(2*n)/2)`
-/

namespace A220185.P5229129659219569746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046090 (2 * n) : ℚ) / 2⌋

end

end A220185.P5229129659219569746

namespace A220185

/-- `floor(A046090(2*n)/2)` -/
def P5229129659219569746.Spec : Prop :=
  ∀ n, P5229129659219569746.a n = A220185 (n + 1)

end A220185

/-! ## A220185.P13853825172695923821

`floor(A084159(2*n)/2)`
-/

namespace A220185.P13853825172695923821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084159 (2 * n) : ℚ) / 2⌋

end

end A220185.P13853825172695923821

namespace A220185

/-- `floor(A084159(2*n)/2)` -/
def P13853825172695923821.Spec : Prop :=
  ∀ n, P13853825172695923821.a n = A220185 (n + 1)

end A220185

/-! ## A220185.P10396554732238278407

`floor(A002315(2*n)/4)`
-/

namespace A220185.P10396554732238278407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002315 (2 * n) : ℚ) / 4⌋

end

end A220185.P10396554732238278407

namespace A220185

/-- `floor(A002315(2*n)/4)` -/
def P10396554732238278407.Spec : Prop :=
  ∀ n, P10396554732238278407.a n = A220185 (n + 1)

end A220185

/-! ## A220185.P12325180610987063143

`A241976(2*n+1)/6`
-/

namespace A220185.P12325180610987063143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241976 (2 * n + 1) : ℚ) / 6

end

end A220185.P12325180610987063143

namespace A220185

/-- `A241976(2*n+1)/6` -/
def P12325180610987063143.Spec : Prop :=
  ∀ n, P12325180610987063143.a n = (A220185 (n + 1) : ℚ)

end A220185

/-!
# A220186: Numbers n >= 0 such that n^2 + n*(n+1)/2 is a square.

The programs for A220186, the canonical program `A220186.P18380314458229327017` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A220186 has offset 1).

The definition of A220186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A220186.P9265729930093603888

`floor(1/12*(49+20*sqrt(6))^n)`
-/

namespace A220186.P9265729930093603888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 12 : ℝ) * (49 + 20 * Real.sqrt (6 : ℝ)) ^ n⌋

end

end A220186.P9265729930093603888

namespace A220186

/-- `floor(1/12*(49+20*sqrt(6))^n)` -/
def P9265729930093603888.Spec : Prop :=
  ∀ n, P9265729930093603888.a n = A220186 (n + 1)

end A220186

/-! ## A220186.P18380314458229327017

`99*a(n-1)-99*a(n-2)+a(n-3)` with `a(0)=0, a(1)=8, a(2)=800`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A220186

/-- `99*a(n-1)-99*a(n-2)+a(n-3)` -/
def P18380314458229327017.Spec : Prop :=
  ∀ n, P18380314458229327017.a n = A220186 (n + 1)

theorem P18380314458229327017.correct : P18380314458229327017.Spec := by
  intro n
  simp only [A220186, Nat.add_sub_cancel]

end A220186

/-! ## A220186.P17376532559751363220

`A098308(2*n)`
-/

namespace A220186.P17376532559751363220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098308 (2 * n)

end

end A220186.P17376532559751363220

namespace A220186

/-- `A098308(2*n)` -/
def P17376532559751363220.Spec : Prop :=
  ∀ n, P17376532559751363220.a n = A220186 (n + 1)

end A220186

/-! ## A220186.P15119007254790850905

`8*A108741(n)`
-/

namespace A220186.P15119007254790850905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A108741 n

end

end A220186.P15119007254790850905

namespace A220186

/-- `8*A108741(n)` -/
def P15119007254790850905.Spec : Prop :=
  ∀ n, P15119007254790850905.a n = A220186 (n + 1)

end A220186

/-! ## A220186.P347135518029598497

`A173115(n)/3`
-/

namespace A220186.P347135518029598497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173115 n : ℚ) / 3

end

end A220186.P347135518029598497

namespace A220186

/-- `A173115(n)/3` -/
def P347135518029598497.Spec : Prop :=
  ∀ n, P347135518029598497.a n = (A220186 (n + 1) : ℚ)

end A220186

/-! ## A220186.P17070122629557922771

`2*A001078(n)²`
-/

namespace A220186.P17070122629557922771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001078 n ^ 2

end

end A220186.P17070122629557922771

namespace A220186

/-- `2*A001078(n)²` -/
def P17070122629557922771.Spec : Prop :=
  ∀ n, P17070122629557922771.a n = A220186 (n + 1)

end A220186

/-! ## A220186.P9061468479935353613

`A122652(n)²/2`
-/

namespace A220186.P9061468479935353613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122652 n ^ 2 : ℚ) / 2

end

end A220186.P9061468479935353613

namespace A220186

/-- `A122652(n)²/2` -/
def P9061468479935353613.Spec : Prop :=
  ∀ n, P9061468479935353613.a n = (A220186 (n + 1) : ℚ)

end A220186

/-! ## A220186.P8459310081419479826

`8*A004189(n)²`
-/

namespace A220186.P8459310081419479826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A004189 n ^ 2

end

end A220186.P8459310081419479826

namespace A220186

/-- `8*A004189(n)²` -/
def P8459310081419479826.Spec : Prop :=
  ∀ n, P8459310081419479826.a n = A220186 (n + 1)

end A220186

/-! ## A220186.P6487824136125189164

`A132596(2*n)/3`
-/

namespace A220186.P6487824136125189164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132596 (2 * n) : ℚ) / 3

end

end A220186.P6487824136125189164

namespace A220186

/-- `A132596(2*n)/3` -/
def P6487824136125189164.Spec : Prop :=
  ∀ n, P6487824136125189164.a n = (A220186 (n + 1) : ℚ)

end A220186

/-! ## A220186.P3721745538953720221

`2*A204573(3*n+2)`
-/

namespace A220186.P3721745538953720221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204573 (3 * n + 2)

end

end A220186.P3721745538953720221

namespace A220186

/-- `2*A204573(3*n+2)` -/
def P3721745538953720221.Spec : Prop :=
  ∀ n, P3721745538953720221.a n = A220186 (n + 1)

end A220186

/-!
# A220188: Number of representations of n-th prime as 2p + 3q (p, q primes not necessarily distinct).

The programs for A220188, there is no canonical definition to state claims against.
-/

/-! ## A220188.P9767845684615838793

`A001221(A350191(n+1))-char[4]`
-/

namespace A220188.P9767845684615838793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350191 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A220188.P9767845684615838793

/-! ## A220188.P2703145745944283087

`A116374(3*n+5)%A069169(A139398(n))`
-/

namespace A220188.P2703145745944283087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116374 (3 * n + 5)) (A069169 (A139398 n).toNat)

end

end A220188.P2703145745944283087

/-!
# A220191: Majority value maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..2 n X 2 array.

The programs for A220191, there is no canonical definition to state claims against.
-/

/-! ## A220191.P11827537083680739996

`A220194(∑[n+1]+2)`
-/

namespace A220191.P11827537083680739996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A220191.P11827537083680739996

/-! ## A220191.P10360255555760910068

`record[root(A220194(n+2), A303696(n))]`
-/

namespace A220191.P10360255555760910068
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A220194 (n + 2) : ℝ) ^ (1 / (A303696 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220191.P10360255555760910068

/-! ## A220191.P17074680660070985247

`record[A220194(A133263(val(n+1, 2)+1))]`
-/

namespace A220191.P17074680660070985247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220191.P17074680660070985247

/-! ## A220191.P15411395124400488645

`record[A220194(n+3)/A058876(n+2)]`
-/

namespace A220191.P15411395124400488645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220194 (n + 3) : ℚ) / (A058876 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220191.P15411395124400488645

/-! ## A220191.P15203661657876747214

`A220194(A167499(n)-3)+A025443(n)`
-/

namespace A220191.P15203661657876747214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A167499 n - 3).toNat + A025443 n

end

end A220191.P15203661657876747214

/-!
# A220192: Majority value maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..2 n X 3 array.

The programs for A220192, there is no canonical definition to state claims against.
-/

/-! ## A220192.P7777458257877381909

`A220194(∑[n+2]+4)`
-/

namespace A220192.P7777458257877381909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A220192.P7777458257877381909

/-! ## A220192.P13330129902660360644

`lcm(1-and(2, n), A220194(A167614(n+1)))`
-/

namespace A220192.P13330129902660360644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A220194 (A167614 (n + 1)).toNat)

end

end A220192.P13330129902660360644

/-! ## A220192.P1591874249807417003

`A220194(A167614(n+1))+A009694(n)`
-/

namespace A220192.P1591874249807417003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A167614 (n + 1)).toNat + A009694 n

end

end A220192.P1591874249807417003

/-! ## A220192.P6011212665912465579

`A220194(A167614(n+1))+A011731(n)`
-/

namespace A220192.P6011212665912465579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A167614 (n + 1)).toNat + A011731 n

end

end A220192.P6011212665912465579

/-!
# A220193: Majority value maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..2 nX4 array.

The programs for A220193, there is no canonical definition to state claims against.
-/

/-! ## A220193.P13971355141209013286

`A220194(A141214(n)+7)`
-/

namespace A220193.P13971355141209013286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A141214 n + 7).toNat

end

end A220193.P13971355141209013286

/-! ## A220193.P731955872238883693

`A220194(A052905(n)+9)`
-/

namespace A220193.P731955872238883693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A052905 n + 9).toNat

end

end A220193.P731955872238883693

/-! ## A220193.P11580735109072411659

`A220194(A055999(n)+10)`
-/

namespace A220193.P11580735109072411659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220194 (A055999 n + 10).toNat

end

end A220193.P11580735109072411659

/-!
# A220194: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their king-move neighbors in a random 0..2 nXk array.

The programs for A220194, there is no canonical definition to state claims against.
-/

/-! ## A220194.P2849581207560048932

`A220358(A328617(n+1))`
-/

namespace A220194.P2849581207560048932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (A328617 (n + 1)).toNat

end

end A220194.P2849581207560048932

/-! ## A220194.P12308470439002586937

`A220358(A351831(n+2))`
-/

namespace A220194.P12308470439002586937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (A351831 (n + 2)).toNat

end

end A220194.P12308470439002586937

/-! ## A220194.P13219638888387305713

`A302042(2*A220358(n+1))`
-/

namespace A220194.P13219638888387305713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (2 * A220358 (n + 1)).toNat

end

end A220194.P13219638888387305713

/-! ## A220194.P6870422037870978291

`A220358(n+1)%A135926(n)`
-/

namespace A220194.P6870422037870978291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220358 (n + 1)) (A135926 n)

end

end A220194.P6870422037870978291

/-! ## A220194.P17564748246003213214

`A220358(n+1)+A000007(A255494(n))`
-/

namespace A220194.P17564748246003213214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220358 (n + 1) + A000007 (A255494 n).toNat

end

end A220194.P17564748246003213214

/-!
# A220195: Sum of neighbor maps: log base 2 of the number of n X n binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal and vertical neighbors in a random 0..1 n X n array.

The programs for A220195, there is no canonical definition to state claims against.
-/

/-! ## A220195.P2141737789968687905

`(n+1)²-A159257(n+1)`
-/

namespace A220195.P2141737789968687905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A159257 (n + 1)

end

end A220195.P2141737789968687905

/-! ## A220195.P5553651902103129885

`(n+1)²-log2(A075462(n+1))`
-/

namespace A220195.P5553651902103129885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) - Real.logb 2 (A075462 (n + 1) : ℝ)

end

end A220195.P5553651902103129885

/-! ## A220195.P12879764373037773285

`A005563(n)+1-A159257(n+1)`
-/

namespace A220195.P12879764373037773285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A159257 (n + 1))

end

end A220195.P12879764373037773285

/-! ## A220195.P5557465766111868055

`abs(A000290(n+1)-A159257(n+1))`
-/

namespace A220195.P5557465766111868055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) - A159257 (n + 1)|

end

end A220195.P5557465766111868055

/-! ## A220195.P2967429882477525543

`∑[A005408(n)]-val(A075462(n+1), 2)`
-/

namespace A220195.P2967429882477525543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.valuation (A075462 (n + 1)).toNat 2 : ℤ)

end

end A220195.P2967429882477525543

/-! ## A220195.P14823711033564223873

`A000027(n+1)²-val(A075462(n+1), 2)`
-/

namespace A220195.P14823711033564223873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) ^ 2 - (SequenceMachineLib.valuation (A075462 (n + 1)).toNat 2 : ℤ)

end

end A220195.P14823711033564223873

/-! ## A220195.P10144006458446007336

`(n+1)²-A005843(val(A075462(n+1), 4))`
-/

namespace A220195.P10144006458446007336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A005843 (SequenceMachineLib.valuation (A075462 (n + 1)).toNat 4)

end

end A220195.P10144006458446007336

/-! ## A220195.P10737855659027033557

`∑[A004442(2*n)]-val(A075462(n+1), 2)`
-/

namespace A220195.P10737855659027033557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (SequenceMachineLib.valuation (A075462 (n + 1)).toNat 2 : ℤ)

end

end A220195.P10737855659027033557

/-! ## A220195.P17252346411856705930

`∑[n+1]+A000217(n)-A159257(n+1)`
-/

namespace A220195.P17252346411856705930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A000217 n - A159257 (n + 1))

end

end A220195.P17252346411856705930

/-! ## A220195.P5037163217377199365

`(n+1)²-2*A001222(sqrt(A075462(n+1)))`
-/

namespace A220195.P5037163217377199365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - 2 * A001222 (SequenceMachineLib.roundAway (Real.sqrt (A075462 (n + 1) : ℝ))).toNat

end

end A220195.P5037163217377199365

/-!
# A220196: T(n,k) = Sum of neighbor maps: log base 2 of the number of n X k binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal and vertical neighbors in a random 0..1 n X k array.

The programs for A220196, there is no canonical definition to state claims against.
-/

/-! ## A220196.P14678295958098890124

`A199570(A208001(n+1))`
-/

namespace A220196.P14678295958098890124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199570 (A208001 (n + 1)).toNat

end

end A220196.P14678295958098890124

/-! ## A220196.P3808066067044748338

`A087117(11*A220805(n+1))`
-/

namespace A220196.P3808066067044748338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (11 * A220805 (n + 1)).toNat

end

end A220196.P3808066067044748338

/-! ## A220196.P17659973543463672456

`A087117(lcm(11, A220805(n+1)))`
-/

namespace A220196.P17659973543463672456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.lcm 11 (A220805 (n + 1)))

end

end A220196.P17659973543463672456

/-!
# A220197: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X n array.

The programs for A220197, there is no canonical definition to state claims against.
-/

/-! ## A220197.P17426809941203448493

`A220204(∑[4*n]+1)`
-/

namespace A220197.P17426809941203448493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220197.P17426809941203448493

/-!
# A220198: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 n X 2 array.

The programs for A220198, there is no canonical definition to state claims against.
-/

/-! ## A220198.P8864784143723576057

`A220204(∑[n+2])`
-/

namespace A220198.P8864784143723576057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A220198.P8864784143723576057

/-! ## A220198.P8904891741084776461

`record[A220204(∑[A152271(n)])]`
-/

namespace A220198.P8904891741084776461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220198.P8904891741084776461

/-! ## A220198.P4295190725492876676

`record[A220204(A117142(n+1))]`
-/

namespace A220198.P4295190725492876676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220198.P4295190725492876676

/-! ## A220198.P15876465691098092909

`record[A220204(gcd(n, A238125(n)))]`
-/

namespace A220198.P15876465691098092909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (Int.gcd (n : ℤ) (A238125 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220198.P15876465691098092909

/-! ## A220198.P17201254502804225371

`record[A220204(record[A316669(n+1)])]`
-/

namespace A220198.P17201254502804225371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A220198.P17201254502804225371

/-!
# A220199: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or diagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..3 nX3 array.

The programs for A220199, there is no canonical definition to state claims against.
-/

/-! ## A220199.P17863796490672080818

`A220204(∑[n+3]+1)`
-/

namespace A220199.P17863796490672080818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A220199.P17863796490672080818

/-! ## A220199.P16983911450586723838

`Δ[A072088(n)]*A220204(A034856(n+2))`
-/

namespace A220199.P16983911450586723838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A220204 (A034856 (n + 2)).toNat

end

end A220199.P16983911450586723838

/-! ## A220199.P10488683460939035932

`Δ[A072089(n)]*A220204(A034856(n+2))`
-/

namespace A220199.P10488683460939035932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A220204 (A034856 (n + 2)).toNat

end

end A220199.P10488683460939035932

/-! ## A220199.P17389919856702019549

`A220204(A034856(n+2))+A161304(n+1)`
-/

namespace A220199.P17389919856702019549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220204 (A034856 (n + 2)).toNat + A161304 (n + 1)

end

end A220199.P17389919856702019549

/-! ## A220199.P18388090595059123630

`lcm(A009001(2*n), A220204(A034856(n+2)))`
-/

namespace A220199.P18388090595059123630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 (2 * n)) (A220204 (A034856 (n + 2)).toNat)

end

end A220199.P18388090595059123630

